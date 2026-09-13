// Keep assertions live under Release, where MSVC defines NDEBUG.
#undef NDEBUG

#include <cassert>
#include <cwchar>
#include <string>

#include "luca_token_decoder.h"

namespace {

std::wstring Decode(const wchar_t* input, bool* decoded = nullptr) {
  std::wstring output;
  const bool changed = fushi_voice_hook::DecodeLucaRoleToken(
      input, input == nullptr ? 0 : std::wcslen(input), &output);
  if (decoded != nullptr) *decoded = changed;
  return output;
}

std::wstring Normalize(const wchar_t* input, bool* normalized = nullptr) {
  std::wstring output;
  const bool changed = fushi_voice_hook::NormalizeLucaText(
      input, input == nullptr ? 0 : std::wcslen(input), &output);
  if (normalized != nullptr) *normalized = changed;
  return output;
}

}  // namespace

int main() {
  bool decoded = false;
  assert(Decode(L"`クド@「直枝さんは二人部屋でしたよね」", &decoded) ==
         L"「直枝さんは二人部屋でしたよね」");
  assert(decoded);

  assert(Decode(L"`Voice@「こんにちは」", &decoded) == L"「こんにちは」");
  assert(decoded);

  assert(Decode(L"クドは考え込んだ。", &decoded) == L"クドは考え込んだ。");
  assert(!decoded);
  assert(Decode(L"部屋@にはベッドがある。", &decoded) ==
         L"部屋@にはベッドがある。");
  assert(!decoded);

  const wchar_t* with_controls = L"`クド@本文$K24布団$K0$t";
  assert(Decode(with_controls, &decoded) == L"本文$K24布団$K0$t");
  assert(decoded);

  assert(Decode(L"`@本文", &decoded) == L"`@本文");
  assert(!decoded);
  assert(Decode(L"`クド@", &decoded) == L"`クド@");
  assert(!decoded);
  assert(Decode(L"`クド\n@本文", &decoded) == L"`クド\n@本文");
  assert(!decoded);
  assert(Decode(L"", &decoded).empty());
  assert(!decoded);
  assert(Decode(nullptr, &decoded).empty());
  assert(!decoded);

  assert(Decode(L"`クド@本文@後", &decoded) == L"本文@後");
  assert(decoded);

  // The observed save-load artifact is one Luca role token duplicated
  // adjacently. Both the raw second-token form and the concatenated form are
  // accepted on every role Output, but only under the exact validated
  // role-token structure.
  bool normalized = false;
  const wchar_t* duplicated = L"`クド@「直枝さんは二人部屋でしたよね」`クド@「直枝さんは二人部屋でしたよね」";
  assert(Normalize(duplicated, &normalized) ==
         L"「直枝さんは二人部屋でしたよね」");
  assert(normalized);
  const wchar_t* concatenated = L"`クド@「直枝さんは二人部屋でしたよね」クド@「直枝さんは二人部屋でしたよね」";
  assert(Normalize(concatenated, &normalized) ==
         L"「直枝さんは二人部屋でしたよね」");
  assert(normalized);
  assert(Normalize(L"`神北@「お茶とチョコパイもありますよ〜」神北@「お茶とチョコパイもありますよ〜」",
                   &normalized) == L"「お茶とチョコパイもありますよ〜」");
  assert(normalized);

  // A normal role line, narration, and ordinary '@' text remain distinct.
  assert(Normalize(L"`クド@「本文」", &normalized) == L"「本文」");
  assert(normalized);
  assert(Normalize(L"クドは考え込んだ。", &normalized) ==
         L"クドは考え込んだ。");
  assert(!normalized);
  assert(Normalize(L"本文@クド@本文", &normalized) ==
         L"本文@クド@本文");
  assert(!normalized);
  assert(Normalize(L"`クド@本文`クド@別の本文", &normalized) ==
         L"本文`クド@別の本文");
  assert(normalized);
  assert(Normalize(L"`クド@同じ文同じ文", &normalized) == L"同じ文同じ文");
  assert(normalized);

  // Only the evidenced numeric Luca K markers are removed. The surrounding
  // Japanese text and the unclassified $t marker are retained.
  assert(Normalize(L"部屋に備え付けのベッド。備え付けだからマットレスと$K24布団$K0もある。",
                   &normalized) ==
         L"部屋に備え付けのベッド。備え付けだからマットレスと布団もある。");
  assert(normalized);
  assert(Normalize(L"`クド@本文$K24布団$K0$t", &normalized) ==
         L"本文布団$t");
  assert(normalized);
  assert(Normalize(L"布団$K24用語$K0$t", &normalized) == L"布団用語$t");
  assert(normalized);
  assert(Normalize(L"文字$Kxと$K24abc$K0", &normalized) ==
         L"文字$Kxとabc");
  assert(normalized);
  assert(Normalize(L"`@本文", &normalized) == L"`@本文");
  assert(!normalized);
  assert(Normalize(L"`クド@", &normalized) == L"`クド@");
  assert(!normalized);
  assert(Normalize(L"", &normalized).empty());
  assert(!normalized);
  assert(Normalize(nullptr, &normalized).empty());
  assert(!normalized);

  return 0;
}
