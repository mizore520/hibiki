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
  auto wrong = kTotsuloverSha256;
  wrong[0] ^= 1;
  assert(!MatchesSoftpalProfile(wrong));

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
