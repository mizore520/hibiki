#pragma once

#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#include <tlhelp32.h>

#include <cstddef>
#include <cstdint>
#include <cwchar>
#include <cstring>
#include <iomanip>
#include <sstream>
#include <string>
#include <vector>

namespace fushi_voice_hook {

// The no-speaker Luca path calls the shared UTF-16 copy routine and then
// immediately walks the temporary buffer.  The call target is resolved from
// the live source-copy contract; this suffix is only the corroborating
// post-call parser contract.  A different layout or an ambiguous match fails
// closed rather than reusing the old trial address.
inline constexpr uint8_t kLucaNoSpeakerTextSuffix[] = {
    0x8b, 0x4c, 0x24, 0x24, 0xb8, 0x01, 0x00, 0x00, 0x00, 0x48,
    0x66, 0x83, 0x39, 0x00, 0x74, 0x0b, 0x83, 0xc1, 0x02, 0x89,
    0x4c, 0x24, 0x24, 0x85, 0xc0, 0x75, 0xee};

inline bool LucaNoSpeakerTextSuffixAt(const uint8_t* bytes, size_t size,
                                      size_t offset) {
  return bytes != nullptr && offset <= size &&
         sizeof(kLucaNoSpeakerTextSuffix) <= size - offset &&
         std::memcmp(bytes + offset, kLucaNoSpeakerTextSuffix,
                     sizeof(kLucaNoSpeakerTextSuffix)) == 0;
}

struct LucaNoSpeakerTextMatches {
  size_t count = 0;
  uint64_t call_address = 0;
};

inline void ScanLucaNoSpeakerTextCall(const uint8_t* bytes, size_t size,
                                      uint64_t base,
                                      uint64_t source_address,
                                      LucaNoSpeakerTextMatches* matches) {
  if (bytes == nullptr || matches == nullptr || source_address == 0 ||
      UINT64_MAX - base < size ||
      size < 5 + sizeof(kLucaNoSpeakerTextSuffix)) {
    return;
  }
  for (size_t offset = 0;
       offset <= size - 5 - sizeof(kLucaNoSpeakerTextSuffix); ++offset) {
    if (bytes[offset] != 0xe8 ||
        !LucaNoSpeakerTextSuffixAt(bytes, size, offset + 5)) {
      continue;
    }
    int32_t displacement = 0;
    std::memcpy(&displacement, bytes + offset + 1, sizeof(displacement));
    const int64_t next_instruction =
        static_cast<int64_t>(base + offset + 5);
    const uint64_t target = static_cast<uint64_t>(
        next_instruction + static_cast<int64_t>(displacement));
    if (target != source_address) continue;
    ++matches->count;
    matches->call_address = base + offset;
  }
}

// Resolve the no-speaker source callsite from the currently loaded x86 main
// image.  `source_hook_code` must be the result of the live UTF-16 source
// resolver, e.g. HQFN-8*14@...:<module>; its RVA is used only to bind the CALL
// target, never as an executable-version lookup.
inline bool ResolveLucaNoSpeakerTextHookCode(
    HANDLE process, DWORD pid, const std::wstring& source_hook_code,
    std::wstring* hook_code) {
  if (process == nullptr || process == INVALID_HANDLE_VALUE || pid == 0 ||
      hook_code == nullptr) {
    return false;
  }
  hook_code->clear();

  constexpr wchar_t kSourcePrefix[] = L"HQFN-8*14@";
  if (source_hook_code.rfind(kSourcePrefix, 0) != 0) return false;
  const size_t rva_start = std::wcslen(kSourcePrefix);
  const size_t module_separator = source_hook_code.find(L':', rva_start);
  if (module_separator == std::wstring::npos || module_separator == rva_start)
    return false;
  wchar_t* end = nullptr;
  const unsigned long source_rva = std::wcstoul(
      source_hook_code.substr(rva_start, module_separator - rva_start).c_str(),
      &end, 16);
  if (end == nullptr || *end != L'\0' || source_rva > UINT32_MAX) return false;

  HANDLE snapshot = CreateToolhelp32Snapshot(
      TH32CS_SNAPMODULE | TH32CS_SNAPMODULE32, pid);
  if (snapshot == INVALID_HANDLE_VALUE) return false;
  MODULEENTRY32W module = {};
  module.dwSize = sizeof(module);
  const bool have_module = Module32FirstW(snapshot, &module) != FALSE;
  CloseHandle(snapshot);
  if (!have_module || module.modBaseAddr == nullptr ||
      module.modBaseSize == 0 || module.modBaseSize > 128u * 1024u * 1024u ||
      source_rva >= module.modBaseSize) {
    return false;
  }

  const uintptr_t base = reinterpret_cast<uintptr_t>(module.modBaseAddr);
  const uint64_t source_address = base + source_rva;
  IMAGE_DOS_HEADER dos = {};
  IMAGE_NT_HEADERS32 nt = {};
  SIZE_T read = 0;
  if (!ReadProcessMemory(process, reinterpret_cast<const void*>(base), &dos,
                         sizeof(dos), &read) ||
      read != sizeof(dos) || dos.e_magic != IMAGE_DOS_SIGNATURE ||
      dos.e_lfanew < static_cast<LONG>(sizeof(dos)) ||
      static_cast<uint64_t>(dos.e_lfanew) + sizeof(nt) > module.modBaseSize ||
      !ReadProcessMemory(process,
                         reinterpret_cast<const void*>(base + dos.e_lfanew),
                         &nt, sizeof(nt), &read) ||
      read != sizeof(nt) || nt.Signature != IMAGE_NT_SIGNATURE ||
      nt.FileHeader.Machine != IMAGE_FILE_MACHINE_I386 ||
      nt.OptionalHeader.Magic != IMAGE_NT_OPTIONAL_HDR32_MAGIC ||
      nt.OptionalHeader.SizeOfImage != module.modBaseSize ||
      nt.FileHeader.SizeOfOptionalHeader != sizeof(IMAGE_OPTIONAL_HEADER32) ||
      nt.FileHeader.NumberOfSections == 0 ||
      nt.FileHeader.NumberOfSections > 96) {
    return false;
  }

  const size_t section_table = static_cast<size_t>(dos.e_lfanew) + sizeof(nt);
  const size_t section_bytes =
      static_cast<size_t>(nt.FileHeader.NumberOfSections) *
      sizeof(IMAGE_SECTION_HEADER);
  if (section_table > module.modBaseSize ||
      section_bytes > module.modBaseSize - section_table) {
    return false;
  }
  std::vector<IMAGE_SECTION_HEADER> sections(nt.FileHeader.NumberOfSections);
  if (!ReadProcessMemory(
          process, reinterpret_cast<const void*>(base + section_table),
          sections.data(), section_bytes, &read) ||
      read != section_bytes) {
    return false;
  }

  size_t total_matches = 0;
  uint64_t call_address = 0;
  for (const IMAGE_SECTION_HEADER& section : sections) {
    if ((section.Characteristics & IMAGE_SCN_MEM_EXECUTE) == 0) continue;
    const size_t size = section.Misc.VirtualSize;
    if (size < 5 + sizeof(kLucaNoSpeakerTextSuffix) ||
        size > 64u * 1024u * 1024u ||
        section.VirtualAddress > module.modBaseSize ||
        size > module.modBaseSize - section.VirtualAddress) {
      continue;
    }
    const uintptr_t address = base + section.VirtualAddress;
    std::vector<uint8_t> bytes(size);
    if (!ReadProcessMemory(process, reinterpret_cast<const void*>(address),
                           bytes.data(), size, &read) ||
        read != size) {
      return false;
    }
    LucaNoSpeakerTextMatches matches;
    ScanLucaNoSpeakerTextCall(bytes.data(), bytes.size(), address,
                               source_address, &matches);
    total_matches += matches.count;
    if (matches.count == 1) call_address = matches.call_address;
  }
  if (total_matches != 1 || call_address < base ||
      call_address - base > UINT32_MAX) {
    return false;
  }

  std::wstringstream code;
  code << L"HQFN-8*14@" << std::uppercase << std::hex
       << static_cast<uint32_t>(call_address - base) << L":" << module.szModule;
  *hook_code = code.str();
  return !hook_code->empty();
}

}  // namespace fushi_voice_hook
