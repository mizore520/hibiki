#undef NDEBUG

#include <cassert>
#include <cstdint>
#include <cstring>
#include <vector>

#include "luca_no_speaker_text_resolver.h"

int main() {
  using namespace fushi_voice_hook;
  constexpr uint64_t base = 0x10000000;
  constexpr size_t call_offset = 0x20;
  constexpr uint64_t source = base + 0x200;

  std::vector<uint8_t> bytes(0x100, 0xcc);
  bytes[call_offset] = 0xe8;
  const int64_t next = static_cast<int64_t>(base + call_offset + 5);
  const int32_t displacement = static_cast<int32_t>(
      static_cast<int64_t>(source) - next);
  std::memcpy(bytes.data() + call_offset + 1, &displacement,
              sizeof(displacement));
  std::memcpy(bytes.data() + call_offset + 5, kLucaNoSpeakerTextSuffix,
              sizeof(kLucaNoSpeakerTextSuffix));

  LucaNoSpeakerTextMatches matches;
  ScanLucaNoSpeakerTextCall(bytes.data(), bytes.size(), base, source,
                            &matches);
  assert(matches.count == 1);
  assert(matches.call_address == base + call_offset);

  bytes[call_offset + 5 + 12] ^= 1;
  matches = {};
  ScanLucaNoSpeakerTextCall(bytes.data(), bytes.size(), base, source,
                            &matches);
  assert(matches.count == 0);

  bytes[call_offset + 5 + 12] ^= 1;
  const int32_t wrong_displacement = displacement + 1;
  std::memcpy(bytes.data() + call_offset + 1, &wrong_displacement,
              sizeof(wrong_displacement));
  matches = {};
  ScanLucaNoSpeakerTextCall(bytes.data(), bytes.size(), base, source,
                            &matches);
  assert(matches.count == 0);
  return 0;
}
