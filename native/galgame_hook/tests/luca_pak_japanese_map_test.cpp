// Keep assertions live in Release builds; this parser contract must not become
// a no-op under MSVC's NDEBUG.
#undef NDEBUG

#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

#include "luca_pak_japanese_map.h"

namespace {
void AppendRecord(const std::wstring& record, std::vector<uint8_t>* bytes) {
  for (wchar_t character : record) {
    const uint16_t unit = static_cast<uint16_t>(character);
    bytes->push_back(static_cast<uint8_t>(unit & 0xffu));
    bytes->push_back(static_cast<uint8_t>(unit >> 8));
  }
  bytes->push_back(0);
  bytes->push_back(0);
}

bool Expect(bool condition, const char* message) {
  if (condition) return true;
  std::fprintf(stderr, "%s\n", message);
  return false;
}
}  // namespace

int wmain() {
  const std::wstring japanese_line =
      L"\u0060\u8a66\u9a13@\u300c\u3053\u308c\u306f\u30c6\u30b9\u30c8\u3067\u3059\u300d";
  const std::wstring english_line =
      L"\u0060Aki@\u275dThis is a synthetic line.\u275e";
  const std::wstring japanese_narration =
      L"\u0005\u0100\u30c6\u30b9\u30c8\u306e\u8a18\u9332\u3002";
  const std::wstring english_narration_text = L"A synthetic narration.";
  const std::wstring english_narration =
      L"\u0005\u0100A synthetic narration.";
  const std::wstring japanese_single_quote_narration =
      L"\u304a\u304b\u3048\u308a\u30fc\u3001\u304a\u3064\u304b\u308c\u30fc\u3002";
  const std::wstring english_single_quote_narration =
      L"\u275bWelcome back\u275c, \u275bGood work\u275c, the girls.";

  std::vector<uint8_t> payload;
  AppendRecord(japanese_line, &payload);
  AppendRecord(L"\u0005\u0100\u0001", &payload);
  AppendRecord(english_line, &payload);
  AppendRecord(japanese_narration, &payload);
  AppendRecord(L"\u0007\u0200\u0002", &payload);
  AppendRecord(english_narration, &payload);
  AppendRecord(japanese_single_quote_narration, &payload);
  AppendRecord(english_single_quote_narration, &payload);

  fushi_voice_hook::LucaJapaneseTextMap map;
  if (!Expect(map.AddUtf16Payload(payload.data(), payload.size()),
              "synthetic Luca payload was not parsed")) {
    return 1;
  }
  if (!Expect(map.pair_count == 3, "unexpected synthetic Luca pair count") ||
      !Expect(map.english_to_japanese.size() == 3,
              "metadata was incorrectly treated as a text pair") ||
      !Expect(map.Lookup(english_line.c_str(), english_line.size()) ==
                  japanese_line,
              "speaker line did not map to its Japanese record") ||
      !Expect(map.Lookup(english_narration_text.c_str(),
                         english_narration_text.size()) ==
                  L"\u30c6\u30b9\u30c8\u306e\u8a18\u9332\u3002",
              "narration did not strip VM metadata before mapping") ||
      !Expect(map.Lookup(english_single_quote_narration.c_str(),
                         english_single_quote_narration.size()) ==
                  japanese_single_quote_narration,
              "single-quote narration did not normalize and map")) {
    return 2;
  }

  const std::wstring joined_payload =
      japanese_line + L"\n" + english_line + L"\n" + english_line;
  if (!Expect(map.LookupMixedPayload(joined_payload.c_str(),
                                     joined_payload.size()) == japanese_line,
              "joined bilingual payload did not resolve its unique Japanese pair")) {
    return 5;
  }
  const std::wstring ambiguous_payload =
      english_line + L"\n" + english_narration_text;
  if (!Expect(map.LookupMixedPayload(ambiguous_payload.c_str(),
                                     ambiguous_payload.size()).empty(),
              "joined payload with multiple Japanese pairs was guessed")) {
    return 6;
  }

  map.AddPair(english_line,
              L"\u8a66\u9a13@\u300c\u53e6\u4e00\u6761\u5408\u6210\u53f0\u8bcd\u300d");
  if (!Expect(map.ambiguous_english.find(english_line) !=
                  map.ambiguous_english.end(),
              "conflicting English records were not marked ambiguous") ||
      !Expect(map.Lookup(english_line.c_str(), english_line.size()).empty(),
              "ambiguous English record was still published")) {
    return 3;
  }
  return 0;
}
