#undef NDEBUG
#include <cassert>
#include <cstring>
#include <vector>
#include "../hook/adapters/softpal_profile.h"
#include "../hook/adapters/softpal_pac.h"

void Put32(std::vector<uint8_t>& b, size_t at, uint32_t v) {
  b[at] = static_cast<uint8_t>(v);
  b[at + 1] = static_cast<uint8_t>(v >> 8);
  b[at + 2] = static_cast<uint8_t>(v >> 16);
  b[at + 3] = static_cast<uint8_t>(v >> 24);
}

int main() {
  using namespace fushi_voice_hook;
  assert(MatchesSoftpalProfile(kTotsuloverSha256));
  assert(MatchesSoftpalProfileHex(
      "a2d14820e5c63520084565768ab8f14f7c356aad623de2e313b12c14bae83688"));
  assert(!MatchesSoftpalProfileHex(
      "b2d14820e5c63520084565768ab8f14f7c356aad623de2e313b12c14bae83688"));
  auto wrong = kTotsuloverSha256;
  wrong[0] ^= 1;
  assert(!MatchesSoftpalProfile(wrong));

  SoftpalTextShowOperands operands;
  const uint32_t regular[] = {0, 54435, kSoftpalNoVoice, kSoftpalNoVoice};
  assert(ReadSoftpalTextShowOperands(regular, 4, 2150000, 28426,
                                      &operands));
  assert(operands.body_offset == 54435 &&
         operands.voice_key == kSoftpalNoVoice);
  const uint32_t alternate[] = {0, 54490, 54533, 16558};
  assert(ReadSoftpalTextShowOperands(alternate, 4, 2150000, 28426,
                                      &operands));
  assert(operands.body_offset == 54490 && operands.speaker_offset == 54533 &&
         operands.voice_key == 16558);
  assert(!ReadSoftpalTextShowOperands(alternate, 3, 2150000, 28426,
                                       &operands));
  const uint32_t missed_line[] = {0, 55409, 55444, 10506};
  assert(ReadSoftpalTextShowOperands(missed_line, 4, 2150000, 28426,
                                      &operands));
  assert(operands.body_offset == 55409 && operands.voice_key == 10506);
  const uint32_t wrong_mode[] = {1, 54435, kSoftpalNoVoice,
                                 kSoftpalNoVoice};
  assert(!ReadSoftpalTextShowOperands(wrong_mode, 4, 2150000, 28426,
                                       &operands));
  const uint32_t wrong_voice[] = {0, 54490, 54533, 28426};
  assert(!ReadSoftpalTextShowOperands(wrong_voice, 4, 2150000, 28426,
                                       &operands));

  std::vector<uint8_t> pac(0x804 + 40);
  std::memcpy(pac.data(), "PAC ", 4);
  Put32(pac, 8, 1);
  std::memcpy(pac.data() + 0x804, "VO05_0115.OGG", 13);
  Put32(pac, 0x804 + 32, 40);
  Put32(pac, 0x804 + 36, static_cast<uint32_t>(pac.size()));
  std::vector<SoftpalPacEntry> entries;
  assert(ParseSoftpalPacIndex(pac.data(), pac.size(), pac.size() + 40, &entries));
  assert(FindSoftpalPacMember(entries, "VO05_0115.OGG"));
  assert(!FindSoftpalPacMember(entries, "VO05_0116.OGG"));
  Put32(pac, 0x804 + 36, static_cast<uint32_t>(pac.size() + 1));
  assert(!ParseSoftpalPacIndex(pac.data(), pac.size(), pac.size() + 40, &entries));

  std::vector<uint8_t> files(16 + 32 * 2);
  std::memcpy(files.data(), "_FILE_LIST__", 12);
  Put32(files, 12, 2);
  std::memcpy(files.data() + 16 + 32, "VO05_0115", 9);
  char name[33] = {};
  assert(SoftpalVoiceMemberName(files.data(), files.size(), 1, name));
  assert(std::strcmp(name, "VO05_0115.OGG") == 0);
  assert(!SoftpalVoiceMemberName(files.data(), files.size(), 2, name));

  std::vector<uint8_t> text(64);
  std::memcpy(text.data(), "_TEXT_LIST__", 12);
  std::memcpy(text.data() + 20, "A<br>B<rtest>C</r>", 19);
  char body[64] = {};
  size_t length = 0;
  assert(SoftpalDialogueBytes(text.data(), text.size(), 16,
                              body, sizeof(body), &length));
  assert(std::strcmp(body, "A\nBC") == 0);
  assert(length == 4);
  assert(!SoftpalDialogueBytes(text.data(), text.size(), 16,
                               body, 2, &length));

  std::vector<uint8_t> records(29);
  std::memcpy(records.data(), "_TEXT_LIST__", 12);
  Put32(records, 12, 2);
  records[20] = 'A';
  Put32(records, 22, 1);
  records[26] = 'B'; records[27] = 'C';
  std::vector<uint32_t> offsets;
  assert(ParseSoftpalTextRecordOffsets(
      records.data(), records.size(), &offsets));
  assert(offsets.size() == 2 && offsets[0] == 16 && offsets[1] == 22);
  Put32(records, 22, 3);
  assert(!ParseSoftpalTextRecordOffsets(
      records.data(), records.size(), &offsets));
  return 0;
}
