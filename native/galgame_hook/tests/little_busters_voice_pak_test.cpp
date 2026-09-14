#undef NDEBUG

#include <cassert>
#include <cstdint>
#include <cstring>
#include <vector>

#include "little_busters_voice_pak.h"

namespace lb = fushi_voice_hook::little_busters;

void PutLe32(std::vector<uint8_t>* bytes, size_t at, uint32_t value) {
  assert(bytes != nullptr && at + 4u <= bytes->size());
  (*bytes)[at] = static_cast<uint8_t>(value);
  (*bytes)[at + 1u] = static_cast<uint8_t>(value >> 8);
  (*bytes)[at + 2u] = static_cast<uint8_t>(value >> 16);
  (*bytes)[at + 3u] = static_cast<uint8_t>(value >> 24);
}

std::vector<uint8_t> MinimalOgg() {
  std::vector<uint8_t> ogg(27u, 0u);
  std::memcpy(ogg.data(), "OggS", 4u);
  ogg[5] = 0x04u;  // one EOS page with an empty payload
  ogg[14] = 1u;    // stable stream serial for CompleteLittleBustersOggBytes
  return ogg;
}

std::vector<uint8_t> DualVariantMember() {
  const std::vector<uint8_t> ogg = MinimalOgg();
  std::vector<uint8_t> member;
  member.insert(member.end(), {'O', 'G', 'G', 'P', 'A', 'K', '\0'});
  const uint32_t rates[] = {44100u, 48000u};
  for (const uint32_t rate : rates) {
    const size_t old_size = member.size();
    member.resize(old_size + 8u);
    PutLe32(&member, old_size, rate);
    PutLe32(&member, old_size + 4u, static_cast<uint32_t>(ogg.size()));
    member.insert(member.end(), ogg.begin(), ogg.end());
  }
  return member;
}

int main() {
  const std::vector<uint8_t> member = DualVariantMember();
  const uint32_t index_bytes = lb::kLittleBustersPakHeaderBytes + 2u *
                               lb::kLittleBustersPakEntryBytes;
  std::vector<uint8_t> index(index_bytes, 0u);
  PutLe32(&index, 0x00u, 0x800u);
  PutLe32(&index, 0x04u, 2u);
  PutLe32(&index, 0x08u, lb::kLittleBustersVoice0IdStart);
  PutLe32(&index, 0x0cu, lb::kLittleBustersPakBlockBytes);
  PutLe32(&index, 0x20u, lb::kLittleBustersPakFormatTag);
  PutLe32(&index, 0x24u, index_bytes);
  PutLe32(&index, 0x2cu, 1u);
  PutLe32(&index, 0x30u, static_cast<uint32_t>(member.size()));
  PutLe32(&index, 0x34u, 2u);
  PutLe32(&index, 0x38u, static_cast<uint32_t>(member.size()));

  lb::VoicePakArchiveInfo archive;
  lb::VoicePakEntry entries[2] = {};
  assert(lb::ParseLittleBustersPakIndex(
      index.data(), index.size(), 0x2000u, lb::kLittleBustersVoice0IdStart,
      &archive, entries, 2u));
  assert(archive.count == 2u);
  assert(entries[0].offset == 0x800u);
  assert(entries[0].member_id == 1u);
  assert(entries[1].offset == 0x1000u);
  assert(entries[1].member_id == 2u);

  lb::VoicePakEntry found;
  assert(lb::FindLittleBustersPakEntryAtOffset(entries, 2u, 0x800u,
                                               &found));
  assert(found.member_id == 1u && found.length == member.size());
  assert(lb::FindLittleBustersPakEntryByMemberId(archive, entries, 1u,
                                                 &found));
  assert(found.index == 0u && found.offset == 0x800u);
  assert(lb::FindLittleBustersPakEntryByMemberId(archive, entries, 2u,
                                                 &found));
  assert(found.index == 1u && found.offset == 0x1000u);
  assert(!lb::FindLittleBustersPakEntryByMemberId(archive, entries, 0u,
                                                  &found));
  assert(!lb::FindLittleBustersPakEntryByMemberId(archive, entries, 3u,
                                                  &found));
  lb::VoicePakArchiveInfo invalid_archive = archive;
  invalid_archive.block_bytes = 0u;
  assert(!lb::FindLittleBustersPakEntryByMemberId(invalid_archive, entries, 1u,
                                                  &found));

  const lb::VoicePakEntry entry_one = entries[0];
  lb::VoicePakMember parsed;
  assert(lb::ParseLittleBustersVoiceMember(
      entry_one, member.data(), member.size(), &parsed));
  assert(parsed.entry.member_id == 1u);
  assert(parsed.variant_count == 2u);
  assert(parsed.variants[0].sample_rate == 44100u);
  assert(parsed.variants[1].sample_rate == 48000u);
  // The two sample-rate payloads are variants of one archive member, not two
  // semantic resources.
  assert(lb::SelectLittleBustersVoiceVariant(parsed, 48000u)->sample_rate ==
         48000u);
  assert(lb::SelectLittleBustersVoiceVariant(parsed, 32000u)->sample_rate ==
         44100u);

  // ReadFile reports the member's physical 0x800-byte allocation span, not
  // its logical index length.  A 85793-byte member therefore legitimately
  // arrives as a 42-block (86016-byte) read.
  lb::VoicePakEntry padded_entry = found;
  padded_entry.length = 85793u;
  assert(lb::IsLittleBustersVoiceReadWithinPhysicalSpan(
      padded_entry, lb::kLittleBustersPakBlockBytes, 85793u));
  assert(lb::IsLittleBustersVoiceReadWithinPhysicalSpan(
      padded_entry, lb::kLittleBustersPakBlockBytes, 86016u));
  assert(!lb::IsLittleBustersVoiceReadWithinPhysicalSpan(
      padded_entry, lb::kLittleBustersPakBlockBytes, 86017u));
  assert(lb::IsLittleBustersVoiceReadWithinPhysicalSpan(
      padded_entry, lb::kLittleBustersPakBlockBytes, 0x800u));
  assert(!lb::IsLittleBustersVoiceReadWithinPhysicalSpan(
      padded_entry, 0u, 86016u));
  assert(!lb::IsLittleBustersVoiceReadWithinPhysicalSpan(
      padded_entry, 0x400u, 86016u));
  lb::VoicePakEntry invalid_entry = padded_entry;
  invalid_entry.length = 0u;
  assert(!lb::IsLittleBustersVoiceReadWithinPhysicalSpan(
      invalid_entry, lb::kLittleBustersPakBlockBytes, 0x800u));
  assert(!lb::IsLittleBustersVoiceReadWithinPhysicalSpan(
      padded_entry, lb::kLittleBustersPakBlockBytes, 0u));

  // VOICE2 is indexed for stable identity but is the high-ID system-voice
  // range; it cannot become an event-owned dialogue resource at ReadFile.
  assert(lb::IsLittleBustersLineVoiceArchive(
      lb::kLittleBustersVoice0ArchiveIndex));
  assert(!lb::IsLittleBustersLineVoiceArchive(
      lb::kLittleBustersVoice2ArchiveIndex));

  std::vector<uint8_t> bad = member;
  bad.push_back(0u);
  assert(!lb::ParseLittleBustersVoiceMember(found, bad.data(), bad.size(),
                                            &parsed));
  return 0;
}
