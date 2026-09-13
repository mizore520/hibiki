#pragma once

#include <cstddef>
#include <string>

namespace fushi_voice_hook {

// Decode the role-token form emitted by the verified Little Busters Luca
// source. The caller supplies the callback length so the function never scans
// past the payload already admitted by the Luna callback.
//
// A role token is deliberately narrow: a leading backtick, a non-empty
// speaker before the first '@', and a non-empty body after it. Anything else
// is returned unchanged. This is not a general '@' sanitizer.
//
// A Luca callback can contain the same role token twice, with or without the
// second token's leading backtick. When that exact adjacent shape is present,
// retain only the first body. This check is tied to the already-validated
// role-token grammar; it is not a general duplicate or repeated-text filter.
inline bool FoldAdjacentSameRoleDuplicate(std::wstring* body,
                                           const std::wstring& speaker) {
  if (body == nullptr || body->empty() || speaker.empty()) return false;

  const std::wstring marker_with_tick = L"`" + speaker + L"@";
  const std::wstring marker_without_tick = speaker + L"@";
  const std::wstring markers[] = {marker_with_tick, marker_without_tick};
  for (const std::wstring& marker : markers) {
    size_t position = body->find(marker, 1);
    while (position != std::wstring::npos) {
      const size_t first_body_length = position;
      const size_t second_body_start = position + marker.size();
      if (first_body_length > 0 &&
          body->size() - second_body_start == first_body_length &&
          body->compare(0, first_body_length, *body, second_body_start,
                        first_body_length) == 0) {
        body->resize(first_body_length);
        return true;
      }
      position = body->find(marker, position + 1);
    }
  }
  return false;
}

inline bool DecodeLucaRoleToken(const wchar_t* input, size_t length,
                                std::wstring* output) {
  if (output == nullptr) return false;
  output->clear();
  if (input == nullptr) return false;

  output->assign(input, length);
  if (length < 3 || input[0] != L'`') return false;

  size_t at = 1;
  while (at < length && input[at] != L'@') ++at;
  if (at >= length || at <= 1 || at + 1 >= length) {
    return false;
  }
  for (size_t i = 1; i < at; ++i) {
    const unsigned int unit = static_cast<unsigned int>(input[i]);
    if (unit < 0x20u || unit == 0x7fu) return false;
  }

  output->assign(input + at + 1, length - at - 1);
  const std::wstring speaker(input + 1, at - 1);
  FoldAdjacentSameRoleDuplicate(output, speaker);
  return true;
}

// Normalize only the Luca presentation marker proven by the live payload:
// numeric $K markers such as $K24 and $K0. The marker itself is not display
// text, while the UTF-16 text around it is retained byte-for-code-unit.
// Unknown forms, including the observed-but-unclassified "$t", remain
// unchanged so this helper cannot erase ordinary game text speculatively.
inline bool StripLucaNumericKControls(std::wstring* text) {
  if (text == nullptr || text->empty()) return false;

  const std::wstring source = *text;
  std::wstring normalized;
  normalized.reserve(source.size());
  bool changed = false;
  size_t index = 0;
  while (index < source.size()) {
    if (source[index] == L'$' && index + 2 < source.size() &&
        source[index + 1] == L'K' &&
        source[index + 2] >= L'0' && source[index + 2] <= L'9') {
      size_t end = index + 3;
      while (end < source.size() && source[end] >= L'0' &&
             source[end] <= L'9') {
        ++end;
      }
      changed = true;
      index = end;
      continue;
    }
    normalized.push_back(source[index]);
    ++index;
  }

  if (changed) *text = normalized;
  return changed;
}

// Apply the engine-specific formal-output normalization. Diagnostic callers
// must record the original callback payload before invoking this helper.
inline bool NormalizeLucaText(const wchar_t* input, size_t length,
                              std::wstring* output) {
  if (output == nullptr) return false;
  output->clear();
  if (input == nullptr) return false;

  bool changed = DecodeLucaRoleToken(input, length, output);
  if (StripLucaNumericKControls(output)) changed = true;
  return changed;
}

}  // namespace fushi_voice_hook
