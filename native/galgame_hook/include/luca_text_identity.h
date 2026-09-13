#pragma once

#include <cstddef>
#include <cstdint>
#include <cwchar>
#include <string>

#include "luca_pak_japanese_map.h"

namespace fushi_voice_hook {

// These are the structural Luca text lanes used by the English Edition
// resolver. HQFN-8*14 is the preferred native UTF-16 source; HQ24 is the
// single-sink fallback, and the other prefixes are diagnostic/legacy lanes.
// The address part is intentionally ignored; the resolver that produced the
// code has already established the current-process address from executable
// bytes.
inline bool IsLucaJapaneseTextHookCode(const wchar_t* hook_code) {
  if (hook_code == nullptr) return false;
  const wchar_t* const prefixes[] = {
      // Legacy no-N candidate: keep recognizable for diagnostics, but never
      // classify it as the current authoritative source in the consumer.
      L"HQF-8*14@",
      L"HQFN-8*14@",
      L"HQFN-4:-20@",
      L"HQFN-8@",
      L"HQ24@",
  };
  for (const wchar_t* prefix : prefixes) {
    const size_t prefix_length = std::wcslen(prefix);
    bool matches = true;
    for (size_t i = 0; i < prefix_length; ++i) {
      if (hook_code[i] != prefix[i]) {
        matches = false;
        break;
      }
    }
    if (matches) return true;
  }
  return false;
}

// Return true only for a payload that is already a Japanese正文 record.  This
// is deliberately a classifier, not a sanitizer: it never removes a speaker
// prefix or rewrites a mixed payload.  `声@「...」`, backtick-prefixed Luca
// records, and unresolved English records therefore stay out of the logical
// Japanese producer thread instead of being silently edited into looking
// clean.
inline bool IsLucaPureJapaneseText(const wchar_t* text, size_t length) {
  if (text == nullptr || length == 0) return false;
  bool has_japanese = false;
  for (size_t i = 0; i < length; ++i) {
    const uint32_t unit = static_cast<uint32_t>(text[i]);
    if (LucaJapaneseUnit(unit)) {
      has_japanese = true;
      continue;
    }
    if (text[i] == L'@' || text[i] == L'`' ||
        LucaEnglishLetter(unit) || (unit >= L'0' && unit <= L'9')) {
      return false;
    }
    if (unit < 0x20u && unit != L'\r' && unit != L'\n' && unit != L'\t') {
      return false;
    }
  }
  return has_japanese;
}

// Optional presentation helper for the Little Busters! English Edition
// bilingual lane. The live Luca source sometimes flushes one Japanese record
// followed by its English record, separated by newlines. This helper can
// retain records that are already pure Japanese, but it must not be used as a
// capture-admission gate: the coverage-first fallback keeps the raw payload
// so English, names, and inline-mixed records cannot cause missing lines.
inline std::wstring LucaFilterEnglishRecords(const wchar_t* text,
                                             size_t length) {
  if (text == nullptr || length == 0) return {};
  std::wstring filtered;
  size_t start = 0;
  while (start <= length) {
    size_t end = start;
    while (end < length && text[end] != L'\n') ++end;
    size_t line_length = end - start;
    if (line_length > 0 && text[start + line_length - 1] == L'\r') {
      --line_length;
    }
    if (line_length > 0 &&
        IsLucaPureJapaneseText(text + start, line_length)) {
      if (!filtered.empty()) filtered.push_back(L'\n');
      filtered.append(text + start, line_length);
    }
    if (end == length) break;
    start = end + 1;
  }
  return filtered;
}

}  // namespace fushi_voice_hook
