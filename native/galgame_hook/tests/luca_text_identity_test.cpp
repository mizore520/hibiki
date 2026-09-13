// Keep assertions live in Release builds; this contract must not become a
// no-op under MSVC's NDEBUG.
#undef NDEBUG

#include <cassert>
#include <cwchar>

#include "luca_text_identity.h"

using namespace fushi_voice_hook;

int wmain() {
  const wchar_t* japanese_role = L"「ついにこの時がきたか…」";
  const wchar_t* japanese_narration = L"遠くから声がして僕は呼び覚まされる。";
  const wchar_t* mixed_role = L"声@「ついにこの時がきたか…」";
  const wchar_t* english = L"❝Finally, the time has come...❞";
  const wchar_t* bilingual =
      L"「ついにこの時がきたか…」\n❝Finally, the time has come...❞\n";
  assert(IsLucaJapaneseTextHookCode(L"HQF-8*14@7E850:LITBUS_WIN32.exe"));
  assert(IsLucaJapaneseTextHookCode(L"HQFN-8*14@7E850:LITBUS_WIN32.exe"));
  assert(IsLucaJapaneseTextHookCode(L"HQFN-4:-20@750C2:LITBUS_WIN32.exe"));
  assert(IsLucaJapaneseTextHookCode(L"HQFN-8@75124:LITBUS_WIN32.exe"));
  assert(IsLucaJapaneseTextHookCode(L"HQ24@91DB0:LITBUS_WIN32.exe"));
  assert(!IsLucaJapaneseTextHookCode(L"HQXN-8@75124:LITBUS_WIN32.exe"));
  assert(IsLucaPureJapaneseText(japanese_role, std::wcslen(japanese_role)));
  assert(IsLucaPureJapaneseText(japanese_narration,
                                std::wcslen(japanese_narration)));
  assert(!IsLucaPureJapaneseText(mixed_role, std::wcslen(mixed_role)));
  assert(!IsLucaPureJapaneseText(english, std::wcslen(english)));
  assert(LucaFilterEnglishRecords(bilingual, std::wcslen(bilingual)) ==
         L"「ついにこの時がきたか…」");
  assert(LucaFilterEnglishRecords(english, std::wcslen(english)).empty());
  assert(LucaFilterEnglishRecords(mixed_role, std::wcslen(mixed_role)).empty());
  return 0;
}
