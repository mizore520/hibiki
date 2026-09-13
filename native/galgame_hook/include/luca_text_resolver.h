#pragma once

#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#include <tlhelp32.h>

#include <cstdint>
#include <cstring>
#include <iomanip>
#include <sstream>
#include <string>
#include <utility>
#include <vector>

#include "luca_pak_text_contract.h"

namespace fushi_voice_hook {

// Resolve the Luca UTF-16 source hook from the target's loaded x86 image. This
// is the preferred native Japanese-source lane for a matched Luca runtime
// profile; the generic HQ24 sink is only a fallback when this proof fails. The
// only address used in the generated H-code comes from a unique
// executable-section scan in this live process; no executable hash or install
// path supplies an RVA.
inline bool ResolveLucaTextSourceHookCode(HANDLE process, DWORD pid,
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
  uintptr_t contract_start = 0;
  std::vector<uint8_t> contract_section;
  uintptr_t contract_section_base = 0;
  for (const IMAGE_SECTION_HEADER& section : sections) {
    if ((section.Characteristics & IMAGE_SCN_MEM_EXECUTE) == 0) continue;
    const size_t size = section.Misc.VirtualSize;
    if (size < sizeof(kLucaTextCopyContract) ||
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
    LucaTextMatches matches;
    ScanLucaTextContract(bytes.data(), bytes.size(), address, &matches);
    if (matches.count == 0) continue;
    total_matches += matches.count;
    if (matches.count == 1) {
      contract_start = static_cast<uintptr_t>(matches.address) -
                       kLucaTextReadOffset;
      contract_section = std::move(bytes);
      contract_section_base = address;
    }
  }
  if (total_matches != 1 || contract_section.empty() ||
      contract_start < contract_section_base) {
    return false;
  }

  const size_t contract_offset =
      static_cast<size_t>(contract_start - contract_section_base);
  // The admitted Luca copy routine begins with `push esi; mov esi, ecx`.
  // Require exactly one nearby prologue so the dynamic code points at the
  // object-level function entry, not at the middle of the copy loop.
  constexpr size_t kMaxBackwardSearch = 128;
  constexpr uint8_t kPrologue[] = {0x56, 0x8b, 0xf1};
  size_t prologue_count = 0;
  size_t prologue_offset = 0;
  for (size_t distance = 1;
       distance <= kMaxBackwardSearch && distance <= contract_offset;
       ++distance) {
    const size_t candidate = contract_offset - distance;
    if (candidate + sizeof(kPrologue) <= contract_section.size() &&
        std::memcmp(contract_section.data() + candidate, kPrologue,
                    sizeof(kPrologue)) == 0) {
      ++prologue_count;
      prologue_offset = candidate;
    }
  }
  if (prologue_count != 1) return false;

  const uintptr_t entry = contract_section_base + prologue_offset;
  if (entry < base || entry - base > UINT32_MAX) return false;
  std::wstringstream code;
  // Keep the source routine's native context boundary.  The runtime probe
  // showed that the no-`N` variant splits this shared copy routine into
  // several call-path faces and exposes Japanese, English, and speaker-prefixed
  // pushes together.  `N` is the historically verified Luca form for this
  // source: it keeps the game's complete Japanese record on one stable text
  // lane without reconstructing or filtering the payload.
  code << L"HQFN-8*14@" << std::uppercase << std::hex
       << static_cast<uint32_t>(entry - base) << L":" << module.szModule;
  *hook_code = code.str();
  return !hook_code->empty();
}

}  // namespace fushi_voice_hook
