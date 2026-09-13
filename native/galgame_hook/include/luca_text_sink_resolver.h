#pragma once

#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#include <tlhelp32.h>

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iomanip>
#include <sstream>
#include <string>
#include <vector>

namespace fushi_voice_hook {

// This is the runtime Luca text-sink contract behind the historical HQ24
// observation.  The disk image is not a usable source for this sample: the
// game unpacks/relocates its executable code before the text path runs.  The
// resolver therefore scans the loaded x86 image and admits the sink only when
// this complete state-reset/argument-loop fragment has one match.
inline constexpr uint8_t kLucaTextSinkSignature[] = {
    0x8b, 0xf9, 0x83, 0xbf, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x8b,
    0x75, 0x08, 0x7e, 0x10, 0xff, 0x87, 0xec, 0x00, 0x00, 0x00,
    0xc7, 0x87, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xc7, 0x06, 0x01, 0x00, 0x01, 0x00};
inline constexpr size_t kLucaTextSinkEntryOffset = 0x31;

inline bool LucaTextSinkSignatureAt(const uint8_t* bytes, size_t size,
                                    size_t offset) {
  constexpr uint8_t kEntryPrologue[] = {0x55, 0x8b, 0xec, 0x6a, 0xff};
  return bytes != nullptr && offset >= kLucaTextSinkEntryOffset &&
         offset <= size && sizeof(kLucaTextSinkSignature) <= size - offset &&
         std::memcmp(bytes + offset, kLucaTextSinkSignature,
                     sizeof(kLucaTextSinkSignature)) == 0 &&
         std::memcmp(bytes + offset - kLucaTextSinkEntryOffset,
                     kEntryPrologue, sizeof(kEntryPrologue)) == 0;
}

struct LucaTextSinkMatches {
  size_t count = 0;
  uint64_t entry_address = 0;
  uint64_t signature_address = 0;
};

inline void ScanLucaTextSink(const uint8_t* bytes, size_t size, uint64_t base,
                             LucaTextSinkMatches* matches) {
  if (bytes == nullptr || matches == nullptr ||
      UINT64_MAX - base < size ||
      size < kLucaTextSinkEntryOffset + sizeof(kLucaTextSinkSignature)) {
    return;
  }
  for (size_t offset = kLucaTextSinkEntryOffset;
       offset <= size - sizeof(kLucaTextSinkSignature); ++offset) {
    if (!LucaTextSinkSignatureAt(bytes, size, offset)) continue;
    ++matches->count;
    matches->signature_address = base + offset;
    matches->entry_address = base + offset - kLucaTextSinkEntryOffset;
  }
}

// Resolve the historical generic Luca text-sink hook from the target's loaded
// x86 image.  The generated HQ24 code is a runtime structural result; it does
// not contain the English Edition's old observed RVA as an admission rule.
inline bool ResolveLucaTextSinkHookCode(HANDLE process, DWORD pid,
                                        std::wstring* hook_code) {
  if (process == nullptr || process == INVALID_HANDLE_VALUE || pid == 0 ||
      hook_code == nullptr) {
    return false;
  }
  hook_code->clear();

  HANDLE snapshot = CreateToolhelp32Snapshot(
      TH32CS_SNAPMODULE | TH32CS_SNAPMODULE32, pid);
  if (snapshot == INVALID_HANDLE_VALUE) return false;
  MODULEENTRY32W module = {};
  module.dwSize = sizeof(module);
  const bool have_module = Module32FirstW(snapshot, &module) != FALSE;
  CloseHandle(snapshot);
  if (!have_module || module.modBaseAddr == nullptr ||
      module.modBaseSize == 0 || module.modBaseSize > 128u * 1024u * 1024u) {
    return false;
  }

  const uintptr_t base = reinterpret_cast<uintptr_t>(module.modBaseAddr);
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
  uint64_t entry_address = 0;
  for (const IMAGE_SECTION_HEADER& section : sections) {
    if ((section.Characteristics & IMAGE_SCN_MEM_EXECUTE) == 0) continue;
    const size_t size = section.Misc.VirtualSize;
    if (size < kLucaTextSinkEntryOffset + sizeof(kLucaTextSinkSignature) ||
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
    LucaTextSinkMatches matches;
    ScanLucaTextSink(bytes.data(), bytes.size(), address, &matches);
    total_matches += matches.count;
    if (matches.count == 1) entry_address = matches.entry_address;
  }
  if (total_matches != 1 || entry_address < base ||
      entry_address - base > UINT32_MAX) {
    return false;
  }

  std::wstringstream code;
  code << L"HQ24@" << std::uppercase << std::hex
       << static_cast<uint32_t>(entry_address - base) << L":"
       << module.szModule;
  *hook_code = code.str();
  return !hook_code->empty();
}

}  // namespace fushi_voice_hook
