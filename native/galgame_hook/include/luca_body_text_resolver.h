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

// The Luca body source is located relative to the parser's speaker/delimiter
// branch, not by an executable hash or an installation-specific RVA.  The
// historical runtime observation identified the parser anchor by this
// instruction sequence and found the body pointer at anchor + 0x42.  The
// anchor is deliberately not treated as a function entry: the unpacked Luca
// routine can be entered from several preceding blocks.
inline constexpr size_t kLucaBodyParserHookOffset = 0x42;

// The fixed bytes below describe the English Edition Luca body-parser branch:
// it tests the current speaker state, checks the 0x40 delimiter, walks UTF-16
// units, and then prepares EAX as the body source.  Relative branch/call
// operands and their destinations are intentionally wildcarded.
inline constexpr size_t kLucaBodyParserSignatureSpan = 0x70;

inline bool LucaBodyParserMatchFixed(const uint8_t* bytes, size_t size,
                                     size_t offset, const uint8_t* expected,
                                     size_t expected_size) {
  return bytes != nullptr && expected != nullptr && offset <= size &&
         expected_size <= size - offset &&
         std::memcmp(bytes + offset, expected, expected_size) == 0;
}

struct LucaBodyParserMatches {
  size_t count = 0;
  uint64_t hook_address = 0;
  // Historical field name retained for the small scanner/test API.  This is
  // the structural parser anchor, not an assumed function entry.
  uint64_t function_address = 0;
};

inline bool LucaBodyParserSignatureAt(const uint8_t* bytes, size_t size,
                                      size_t offset) {
  if (bytes == nullptr || offset > size ||
      kLucaBodyParserSignatureSpan > size - offset) {
    return false;
  }

  constexpr uint8_t kPrefix[] = {0x84, 0xdb, 0x0f, 0x84};
  constexpr uint8_t kDelimiterCheck[] = {0x83, 0xf8, 0x40, 0x75};
  constexpr uint8_t kPrepareTextA[] = {0x6a, 0x01, 0x8d, 0x4c,
                                        0x24, 0x18, 0xe8};
  constexpr uint8_t kPrepareTextB[] = {0x8d, 0x4c, 0x24, 0x14, 0xe8};
  constexpr uint8_t kWalkText[] = {
      0x8b, 0x44, 0x24, 0x24, 0xb9, 0x01, 0x00, 0x00, 0x00, 0x8d,
      0x9b, 0x00, 0x00, 0x00, 0x00, 0x49, 0x66, 0x83, 0x38, 0x00, 0x74,
  };
  constexpr uint8_t kAdvanceText[] = {
      0x83, 0xc0, 0x02, 0x89, 0x44, 0x24, 0x24, 0x85, 0xc9, 0x75,
  };
  constexpr uint8_t kBodySource[] = {
      0x80, 0xbf, 0xdf, 0x01, 0x00, 0x00, 0x00, 0x89, 0x44, 0x24,
      0x28, 0x74,
  };
  constexpr uint8_t kEmitJapanese[] = {
      0x68, 0x84, 0x46, 0xb7, 0x00, 0x8d, 0x4c, 0x24, 0x18, 0xe8,
  };
  constexpr uint8_t kEmitEnglish[] = {
      0x68, 0xb8, 0x46, 0xb7, 0x00, 0x8d, 0x4c, 0x24, 0x18, 0xe8,
  };
  constexpr uint8_t kStateCheck[] = {0x83, 0x7f, 0x44, 0x00, 0x74};

  // The four-byte relative branch/call operands are skipped between these
  // fixed instruction chunks.  Keeping the offsets explicit makes the
  // derived +0x42 body entry auditable in the unit test and in a live dump.
  return LucaBodyParserMatchFixed(bytes, size, offset + 0x00, kPrefix,
                                  sizeof(kPrefix)) &&
         LucaBodyParserMatchFixed(bytes, size, offset + 0x08,
                                  kDelimiterCheck, sizeof(kDelimiterCheck)) &&
         LucaBodyParserMatchFixed(bytes, size, offset + 0x0d, kPrepareTextA,
                                  sizeof(kPrepareTextA)) &&
         LucaBodyParserMatchFixed(bytes, size, offset + 0x18, kPrepareTextB,
                                  sizeof(kPrepareTextB)) &&
         LucaBodyParserMatchFixed(bytes, size, offset + 0x21, kWalkText,
                                  sizeof(kWalkText)) &&
         LucaBodyParserMatchFixed(bytes, size, offset + 0x37, kAdvanceText,
                                  sizeof(kAdvanceText)) &&
         LucaBodyParserMatchFixed(bytes, size, offset + 0x42, kBodySource,
                                  sizeof(kBodySource)) &&
         LucaBodyParserMatchFixed(bytes, size, offset + 0x4f, kEmitJapanese,
                                  sizeof(kEmitJapanese)) &&
         LucaBodyParserMatchFixed(bytes, size, offset + 0x5d, kEmitEnglish,
                                  sizeof(kEmitEnglish)) &&
         LucaBodyParserMatchFixed(bytes, size, offset + 0x6b, kStateCheck,
                                  sizeof(kStateCheck));
}

inline void ScanLucaBodyParser(const uint8_t* bytes, size_t size,
                               uint64_t base,
                               LucaBodyParserMatches* matches) {
  if (bytes == nullptr || matches == nullptr ||
      UINT64_MAX - base < size ||
      size < kLucaBodyParserSignatureSpan ||
      kLucaBodyParserHookOffset >= kLucaBodyParserSignatureSpan) {
    return;
  }
  for (size_t offset = 0;
       offset <= size - kLucaBodyParserSignatureSpan; ++offset) {
    if (!LucaBodyParserSignatureAt(bytes, size, offset)) continue;
    ++matches->count;
    const uint64_t function_address = base + offset;
    matches->function_address = function_address;
    matches->hook_address = function_address + kLucaBodyParserHookOffset;
  }
}

// Resolve the body-only source hook from the target's loaded x86 image.  The
// caller must already have admitted the named SCRIPT.PAK contract.  A unique
// signature is required across every executable section; ambiguity or a
// packed/unexpected image fails closed and never falls back to an old address.
inline bool ResolveLucaBodyTextHookCode(HANDLE process, DWORD pid,
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
  uint64_t hook_address = 0;
  for (const IMAGE_SECTION_HEADER& section : sections) {
    if ((section.Characteristics & IMAGE_SCN_MEM_EXECUTE) == 0) continue;
    const size_t size = section.Misc.VirtualSize;
    if (size < kLucaBodyParserSignatureSpan ||
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
    LucaBodyParserMatches matches;
    ScanLucaBodyParser(bytes.data(), bytes.size(), address, &matches);
    total_matches += matches.count;
    if (matches.count == 1) hook_address = matches.hook_address;
  }
  if (total_matches != 1 || hook_address < base ||
      hook_address - base > UINT32_MAX) {
    return false;
  }

  std::wstringstream code;
  code << L"HQFN-4:-20@" << std::uppercase << std::hex
       << static_cast<uint32_t>(hook_address - base) << L":" << module.szModule;
  *hook_code = code.str();
  return !hook_code->empty();
}

}  // namespace fushi_voice_hook
