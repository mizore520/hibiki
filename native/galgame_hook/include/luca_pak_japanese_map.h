#pragma once

#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>

#include <cstddef>
#include <cstdint>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "luca_pak_text_contract.h"

namespace fushi_voice_hook {

// The diagnostic Luca multilingual-script sample puts the Japanese record
// before its English counterpart. Bytes between records are VM metadata, so
// parsing works on NUL-delimited UTF-16 records and ignores metadata that
// cannot be text. It never embeds or ships game dialogue and is not used to
// rewrite the live sink payload.
inline bool LucaJapaneseUnit(uint32_t unit) {
  return (unit >= 0x3040u && unit <= 0x30ffu) ||
         (unit >= 0x3400u && unit <= 0x9fffu);
}

inline bool LucaEnglishUnit(uint32_t unit) {
  return (unit >= 0x20u && unit <= 0x7eu) || unit == 0x2018u ||
         unit == 0x2019u || unit == 0x201cu || unit == 0x201du ||
         unit == 0x2026u || unit == 0x275bu || unit == 0x275cu ||
         unit == 0x275du || unit == 0x275eu || unit == 0x2014u;
}

inline bool LucaEnglishLetter(uint32_t unit) {
  return (unit >= static_cast<uint32_t>('A') &&
          unit <= static_cast<uint32_t>('Z')) ||
         (unit >= static_cast<uint32_t>('a') &&
          unit <= static_cast<uint32_t>('z'));
}

inline std::wstring LucaNormalizeJapaneseRecord(const std::wstring& record) {
  size_t start = record.find(L'`');
  if (start == std::wstring::npos) {
    for (size_t i = 0; i < record.size(); ++i) {
      if (LucaJapaneseUnit(static_cast<uint32_t>(record[i])) ||
          record[i] == L'\u2026') {
        start = i;
        break;
      }
    }
  }
  if (start == std::wstring::npos) return {};
  std::wstring candidate = record.substr(start);
  bool has_japanese = false;
  for (wchar_t c : candidate) {
    if (LucaJapaneseUnit(static_cast<uint32_t>(c))) {
      has_japanese = true;
      break;
    }
  }
  return has_japanese ? candidate : std::wstring();
}

inline std::wstring LucaNormalizeEnglishRecord(const std::wstring& record) {
  for (size_t start = 0; start < record.size(); ++start) {
    if (record[start] != L'`' &&
        !LucaEnglishLetter(static_cast<uint32_t>(record[start]))) {
      continue;
    }
    const std::wstring candidate = record.substr(start);
    size_t letters = 0;
    bool printable = true;
    for (wchar_t c : candidate) {
      const uint32_t unit = static_cast<uint32_t>(c);
      if (!LucaEnglishUnit(unit)) {
        printable = false;
        break;
      }
      if (LucaEnglishLetter(unit)) ++letters;
    }
    if (printable && letters >= 2) return candidate;
  }
  return {};
}

struct LucaJapaneseTextMap {
  std::unordered_map<std::wstring, std::wstring> english_to_japanese;
  std::unordered_set<std::wstring> ambiguous_english;
  size_t pair_count = 0;

  void Clear() {
    english_to_japanese.clear();
    ambiguous_english.clear();
    pair_count = 0;
  }

  void AddPair(const std::wstring& english, const std::wstring& japanese) {
    if (english.empty() || japanese.empty() ||
        ambiguous_english.find(english) != ambiguous_english.end()) {
      return;
    }
    ++pair_count;
    const auto found = english_to_japanese.find(english);
    if (found == english_to_japanese.end()) {
      english_to_japanese.emplace(english, japanese);
      return;
    }
    if (found->second != japanese) {
      english_to_japanese.erase(found);
      ambiguous_english.insert(english);
    }
  }

  bool AddUtf16Payload(const uint8_t* payload, size_t size) {
    if (payload == nullptr || size < 4 || (size & 1u) != 0) return false;
    const size_t units = size / sizeof(uint16_t);
    std::wstring pending_japanese;
    size_t start = 0;
    bool saw_record = false;
    for (size_t i = 0; i <= units; ++i) {
      if (i != units) {
        const uint16_t unit = static_cast<uint16_t>(payload[i * 2]) |
                              (static_cast<uint16_t>(payload[i * 2 + 1]) << 8);
        if (unit != 0) continue;
      }
      std::wstring record;
      record.reserve(i - start);
      for (size_t j = start; j < i; ++j) {
        const uint16_t unit = static_cast<uint16_t>(payload[j * 2]) |
                              (static_cast<uint16_t>(payload[j * 2 + 1]) << 8);
        record.push_back(static_cast<wchar_t>(unit));
      }
      start = i + 1;
      if (record.empty()) continue;
      const std::wstring japanese = LucaNormalizeJapaneseRecord(record);
      if (!japanese.empty()) {
        pending_japanese = japanese;
        saw_record = true;
        continue;
      }
      const std::wstring english = LucaNormalizeEnglishRecord(record);
      if (!english.empty()) {
        if (!pending_japanese.empty()) AddPair(english, pending_japanese);
        pending_japanese.clear();
        saw_record = true;
      }
      // Non-text records are VM metadata. Keep a pending Japanese record
      // across them because Luca places metadata between language records.
    }
    return saw_record;
  }

  std::wstring Lookup(const wchar_t* text, size_t length) const {
    if (text == nullptr || length == 0) return {};
    const std::wstring raw(text, length);
    auto found = english_to_japanese.find(raw);
    if (found != english_to_japanese.end()) return found->second;

    // Narration records in the English Edition use U+275B/U+275C
    // (the single quotation pair).  The archive normalizer intentionally removes a leading
    // decoration before indexing the English record, so apply the same
    // record-identity normalization to a runtime payload before giving up.
    const std::wstring normalized = LucaNormalizeEnglishRecord(raw);
    if (normalized.empty() || normalized == raw) return {};
    found = english_to_japanese.find(normalized);
    return found == english_to_japanese.end() ? std::wstring() : found->second;
  }

  // A bilingual Steam flush can contain newline-delimited Japanese and English
  // records plus repeated full-string pushes. Replace only when all complete
  // English records in that payload resolve to one unambiguous Japanese pair.
  // This is a record identity check, not a character-set filter or an ASCII
  // role-name stripping rule.
  std::wstring LookupMixedPayload(const wchar_t* text, size_t length) const {
    if (text == nullptr || length == 0) return {};
    std::unordered_set<std::wstring> candidates;
    size_t start = 0;
    while (start <= length) {
      size_t end = start;
      while (end < length && text[end] != L'\n') ++end;
      size_t line_length = end - start;
      if (line_length > 0 && text[start + line_length - 1] == L'\r') {
        --line_length;
      }
      if (line_length > 0) {
        const std::wstring japanese = Lookup(text + start, line_length);
        if (!japanese.empty()) candidates.insert(japanese);
      }
      if (end == length) break;
      start = end + 1;
    }
    return candidates.size() == 1 ? *candidates.begin() : std::wstring();
  }

  bool LoadFromExecutable(const std::wstring& executable) {
    Clear();
    const size_t slash = executable.find_last_of(L"\\/");
    if (slash == std::wstring::npos) return false;
    const std::wstring script = executable.substr(0, slash) +
                                L"\\files\\SCRIPT.PAK";
    HANDLE file = CreateFileW(script.c_str(), GENERIC_READ,
                              FILE_SHARE_READ | FILE_SHARE_WRITE |
                                  FILE_SHARE_DELETE,
                              nullptr, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,
                              nullptr);
    if (file == INVALID_HANDLE_VALUE) return false;
    LARGE_INTEGER length = {};
    bool ok = GetFileSizeEx(file, &length) && length.QuadPart >= 40 &&
              length.QuadPart <= 64ll * 1024ll * 1024ll;
    std::vector<uint8_t> bytes;
    if (ok) {
      bytes.resize(static_cast<size_t>(length.QuadPart));
      DWORD read = 0;
      ok = ReadFile(file, bytes.data(), static_cast<DWORD>(bytes.size()),
                    &read, nullptr) &&
           read == bytes.size();
    }
    CloseHandle(file);
    if (!ok || bytes.size() < 40) {
      Clear();
      return false;
    }
    const uint32_t header_size = LucaRead32(bytes.data());
    const uint32_t count = LucaRead32(bytes.data() + 4);
    const uint32_t block = LucaRead32(bytes.data() + 12);
    if (header_size > bytes.size() || count == 0 || block == 0 ||
        !LucaNamedScriptIndexValid(bytes.data(), header_size, bytes.size())) {
      Clear();
      return false;
    }
    for (uint32_t i = 0; i < count; ++i) {
      const uint8_t* entry = bytes.data() + 40 + size_t(i) * 8;
      const uint64_t offset = uint64_t(LucaRead32(entry)) * block;
      const uint32_t payload_size = LucaRead32(entry + 4);
      if (offset > bytes.size() || payload_size > bytes.size() - offset) {
        Clear();
        return false;
      }
      AddUtf16Payload(bytes.data() + offset, payload_size);
    }
    return !english_to_japanese.empty();
  }
};

}  // namespace fushi_voice_hook
