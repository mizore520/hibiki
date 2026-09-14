#pragma once

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <limits>

namespace fushi_voice_hook::little_busters {

inline constexpr uint32_t kLittleBustersPakBlockBytes = 0x800u;
inline constexpr uint32_t kLittleBustersPakHeaderBytes = 0x2cu;
inline constexpr uint32_t kLittleBustersPakEntryBytes = 8u;
inline constexpr uint32_t kLittleBustersPakFormatTag = 0x02010001u;
inline constexpr uint32_t kLittleBustersVoice0ArchiveIndex = 0u;
inline constexpr uint32_t kLittleBustersVoice2ArchiveIndex = 1u;
inline constexpr uint32_t kLittleBustersVoice0IdStart = 1u;
inline constexpr uint32_t kLittleBustersVoice2IdStart = 65000u;
inline constexpr uint32_t kLittleBustersMaxMemberBytes = 32u * 1024u * 1024u;
inline constexpr uint32_t kLittleBustersMaxMemberCount = 1u << 20;

struct VoicePakArchiveInfo {
  uint32_t data_start = 0;
  uint32_t count = 0;
  uint32_t id_start = 0;
  uint32_t block_bytes = 0;
  uint32_t index_bytes = 0;
};

struct VoicePakEntry {
  uint64_t offset = 0;
  uint32_t length = 0;
  uint32_t index = 0;
  uint32_t member_id = 0;
};

// ReadFile observes the physical allocation span of a Luca member, while the
// index length is the logical member length.  Keep this bound tied to the
// validated pinned archive block size and fail closed for malformed inputs.
inline bool IsLittleBustersVoiceReadWithinPhysicalSpan(
    const VoicePakEntry& entry, uint32_t block_bytes, uint32_t read_bytes) {
  if (entry.length == 0u || entry.length > kLittleBustersMaxMemberBytes ||
      block_bytes != kLittleBustersPakBlockBytes || read_bytes == 0u) {
    return false;
  }
  const uint64_t length = static_cast<uint64_t>(entry.length);
  const uint64_t block = static_cast<uint64_t>(block_bytes);
  const uint64_t rounded = length + block - 1u;
  if (rounded < length) return false;
  const uint64_t block_count = rounded / block;
  if (block_count == 0u ||
      block_count > std::numeric_limits<uint64_t>::max() / block) {
    return false;
  }
  const uint64_t physical_span = block_count * block;
  return physical_span >= length &&
         static_cast<uint64_t>(read_bytes) <= physical_span;
}

struct VoicePakOggVariant {
  uint32_t sample_rate = 0;
  uint32_t offset = 0;
  uint32_t length = 0;
};

struct VoicePakMember {
  VoicePakEntry entry;
  VoicePakOggVariant variants[2] = {};
  uint32_t variant_count = 0;
};

// VOICE2 is the CacheSystemVoice/high-ID range.  The shared ReadFile seam has
// no caller-role proof, so only VOICE0 may become event-owned dialogue.  Keep
// VOICE2 indexed for provenance and diagnostics, but fail closed for line
// binding rather than allowing a system voice to claim the next TextSlot.
inline constexpr bool IsLittleBustersLineVoiceArchive(
    uint32_t archive_index) {
  return archive_index == kLittleBustersVoice0ArchiveIndex;
}

inline uint32_t ReadLittleBustersLe32(const uint8_t* data) {
  return static_cast<uint32_t>(data[0]) |
         (static_cast<uint32_t>(data[1]) << 8) |
         (static_cast<uint32_t>(data[2]) << 16) |
         (static_cast<uint32_t>(data[3]) << 24);
}

inline uint32_t CompleteLittleBustersOggBytes(const uint8_t* data,
                                               uint32_t bytes) {
  if (data == nullptr || bytes < 27u ||
      bytes > kLittleBustersMaxMemberBytes ||
      std::memcmp(data, "OggS", 4) != 0 || data[4] != 0u) {
    return 0u;
  }
  uint32_t at = 0u;
  uint32_t serial = 0u;
  bool have_serial = false;
  while (at < bytes) {
    if (bytes - at < 27u || std::memcmp(data + at, "OggS", 4) != 0 ||
        data[at + 4u] != 0u) {
      return 0u;
    }
    const uint32_t page_serial = ReadLittleBustersLe32(data + at + 14u);
    if (!have_serial) {
      serial = page_serial;
      have_serial = true;
    } else if (page_serial != serial) {
      return 0u;
    }
    const uint8_t flags = data[at + 5u];
    const uint32_t segment_count = data[at + 26u];
    const uint32_t page_header_bytes = 27u + segment_count;
    if (page_header_bytes > bytes - at) return 0u;
    uint32_t payload_bytes = 0u;
    for (uint32_t segment = 0u; segment < segment_count; ++segment) {
      payload_bytes += data[at + 27u + segment];
    }
    const uint64_t page_bytes =
        static_cast<uint64_t>(page_header_bytes) + payload_bytes;
    if (page_bytes > bytes - at) return 0u;
    at += static_cast<uint32_t>(page_bytes);
    if ((flags & 0x04u) != 0u) return at;
  }
  return 0u;
}

// The 0x2c-byte Luca header contains the first data offset at 0x00, the
// member count at 0x04, the numeric ID base at 0x08, the allocation block at
// 0x0c, a format tag at 0x20, and the exact index length at 0x24.
inline bool ReadLittleBustersPakHeader(const uint8_t* header,
                                       size_t header_bytes,
                                       uint64_t file_bytes,
                                       uint32_t expected_id_start,
                                       VoicePakArchiveInfo* out) {
  if (header == nullptr || out == nullptr ||
      header_bytes < kLittleBustersPakHeaderBytes ||
      file_bytes < kLittleBustersPakHeaderBytes ||
      ReadLittleBustersLe32(header + 0x20u) != kLittleBustersPakFormatTag) {
    return false;
  }
  const uint32_t data_start = ReadLittleBustersLe32(header + 0x00u);
  const uint32_t count = ReadLittleBustersLe32(header + 0x04u);
  const uint32_t id_start = ReadLittleBustersLe32(header + 0x08u);
  const uint32_t block_bytes = ReadLittleBustersLe32(header + 0x0cu);
  const uint32_t index_bytes = ReadLittleBustersLe32(header + 0x24u);
  const uint64_t calculated_index_bytes =
      static_cast<uint64_t>(kLittleBustersPakHeaderBytes) +
      static_cast<uint64_t>(count) * kLittleBustersPakEntryBytes;
  if (data_start == 0u || count == 0u ||
      count > kLittleBustersMaxMemberCount ||
      (expected_id_start != 0u && id_start != expected_id_start) ||
      block_bytes != kLittleBustersPakBlockBytes ||
      calculated_index_bytes != index_bytes ||
      index_bytes > file_bytes || data_start < index_bytes ||
      data_start >= file_bytes || calculated_index_bytes > UINT32_MAX) {
    return false;
  }
  out->data_start = data_start;
  out->count = count;
  out->id_start = id_start;
  out->block_bytes = block_bytes;
  out->index_bytes = index_bytes;
  return true;
}

inline bool ReadLittleBustersPakEntry(const uint8_t* index,
                                      const VoicePakArchiveInfo& info,
                                      uint64_t file_bytes, uint32_t index_id,
                                      VoicePakEntry* out) {
  if (index == nullptr || out == nullptr || index_id >= info.count) {
    return false;
  }
  const size_t at = static_cast<size_t>(kLittleBustersPakHeaderBytes) +
                    static_cast<size_t>(index_id) *
                        kLittleBustersPakEntryBytes;
  if (at + kLittleBustersPakEntryBytes > info.index_bytes) return false;
  const uint32_t block = ReadLittleBustersLe32(index + at);
  const uint32_t length = ReadLittleBustersLe32(index + at + 4u);
  const uint64_t offset = static_cast<uint64_t>(block) * info.block_bytes;
  const uint64_t end = offset + length;
  if (length == 0u || length > kLittleBustersMaxMemberBytes ||
      offset < info.index_bytes || offset >= file_bytes || end > file_bytes) {
    return false;
  }
  VoicePakEntry entry;
  entry.offset = offset;
  entry.length = length;
  entry.index = index_id;
  entry.member_id = info.id_start + index_id;
  *out = entry;
  return true;
}

// Validates the complete numeric-member table. Gaps between the index and the
// first member, and between members, are allowed; member starts must be
// ordered and non-overlapping. If [entries] is supplied, it receives the
// immutable runtime lookup table.
inline bool ParseLittleBustersPakIndex(const uint8_t* index,
                                       size_t index_bytes,
                                       uint64_t file_bytes,
                                       uint32_t expected_id_start,
                                       VoicePakArchiveInfo* out,
                                       VoicePakEntry* entries = nullptr,
                                       uint32_t entry_capacity = 0u) {
  VoicePakArchiveInfo info;
  if (!ReadLittleBustersPakHeader(index, index_bytes, file_bytes,
                                  expected_id_start, &info) ||
      index_bytes != info.index_bytes ||
      (entries != nullptr && entry_capacity < info.count)) {
    return false;
  }
  uint64_t previous_offset = 0u;
  uint64_t previous_end = info.index_bytes;
  for (uint32_t id = 0u; id < info.count; ++id) {
    VoicePakEntry entry;
    if (!ReadLittleBustersPakEntry(index, info, file_bytes, id, &entry) ||
        (id == 0u && entry.offset != info.data_start) ||
        (id != 0u && entry.offset < previous_offset) ||
        entry.offset < previous_end) {
      return false;
    }
    if (entries != nullptr) entries[id] = entry;
    previous_offset = entry.offset;
    previous_end = entry.offset + entry.length;
  }
  *out = info;
  return true;
}

inline bool FindLittleBustersPakEntryAtOffset(const VoicePakEntry* entries,
                                              uint32_t count,
                                              uint64_t offset,
                                              VoicePakEntry* out) {
  if (entries == nullptr || out == nullptr || count == 0u) return false;
  uint32_t first = 0u;
  uint32_t last = count;
  while (first < last) {
    const uint32_t middle = first + (last - first) / 2u;
    if (offset < entries[middle].offset) {
      last = middle;
    } else if (offset > entries[middle].offset) {
      first = middle + 1u;
    } else {
      *out = entries[middle];
      return true;
    }
  }
  return false;
}

// Luca's VOICE archives use a direct numeric namespace: the entry at index N
// owns member id (id_start + N).  Keep this lookup tied to the validated
// index/table fields so a caller cannot accidentally treat an arbitrary
// request number as a member id or walk outside the immutable table.
inline bool FindLittleBustersPakEntryByMemberId(
    const VoicePakArchiveInfo& info, const VoicePakEntry* entries,
    uint32_t member_id, VoicePakEntry* out) {
  if (entries == nullptr || out == nullptr || info.count == 0u ||
      info.block_bytes != kLittleBustersPakBlockBytes ||
      member_id < info.id_start) {
    return false;
  }
  const uint64_t relative = static_cast<uint64_t>(member_id) - info.id_start;
  if (relative >= info.count || relative > UINT32_MAX) return false;
  const uint32_t index = static_cast<uint32_t>(relative);
  const VoicePakEntry& entry = entries[index];
  if (entry.index != index || entry.member_id != member_id ||
      entry.length == 0u || entry.offset == 0u ||
      (entry.offset % info.block_bytes) != 0u) {
    return false;
  }
  *out = entry;
  return true;
}

inline bool ParseLittleBustersVoiceMember(const VoicePakEntry& entry,
                                           const uint8_t* member,
                                           size_t member_bytes,
                                           VoicePakMember* out) {
  if (member == nullptr || out == nullptr || entry.length == 0u ||
      member_bytes != entry.length || member_bytes < 7u ||
      std::memcmp(member, "OGGPAK\0", 7u) != 0) {
    return false;
  }
  VoicePakMember parsed;
  parsed.entry = entry;
  size_t at = 7u;
  while (parsed.variant_count < 2u) {
    if (member_bytes - at < 8u) return false;
    const uint32_t rate = ReadLittleBustersLe32(member + at);
    const uint32_t length = ReadLittleBustersLe32(member + at + 4u);
    at += 8u;
    if ((rate != 44100u && rate != 48000u) || length == 0u ||
        length > kLittleBustersMaxMemberBytes || length > member_bytes - at ||
        CompleteLittleBustersOggBytes(member + at, length) != length) {
      return false;
    }
    for (uint32_t i = 0u; i < parsed.variant_count; ++i) {
      if (parsed.variants[i].sample_rate == rate) return false;
    }
    parsed.variants[parsed.variant_count++] = {rate,
                                                static_cast<uint32_t>(at),
                                                length};
    at += length;
  }
  if (at != member_bytes) return false;
  *out = parsed;
  return true;
}

inline const VoicePakOggVariant* SelectLittleBustersVoiceVariant(
    const VoicePakMember& member, uint32_t preferred_rate) {
  if (preferred_rate == 44100u || preferred_rate == 48000u) {
    for (uint32_t index = 0u; index < member.variant_count; ++index) {
      if (member.variants[index].sample_rate == preferred_rate) {
        return &member.variants[index];
      }
    }
  }
  for (uint32_t index = 0u; index < member.variant_count; ++index) {
    if (member.variants[index].sample_rate == 44100u) {
      return &member.variants[index];
    }
  }
  return member.variant_count == 0u ? nullptr : &member.variants[0];
}

}  // namespace fushi_voice_hook::little_busters
