#pragma once

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <utility>
#include <vector>

namespace fushi_voice_hook {

struct SoftpalPacEntry {
  char name[33] = {};
  uint32_t offset = 0;
  uint32_t size = 0;
};

inline uint32_t SoftpalLe32(const uint8_t* p) {
  return uint32_t(p[0]) | (uint32_t(p[1]) << 8) |
         (uint32_t(p[2]) << 16) | (uint32_t(p[3]) << 24);
}

// PAC index is at 0x804, with 40-byte records: 32-byte ASCII member,
// little-endian size and absolute archive offset.
inline bool ParseSoftpalPacIndex(const uint8_t* data, size_t bytes,
                                uint64_t archive_bytes,
                                std::vector<SoftpalPacEntry>* entries) {
  if (!data || !entries || bytes < 0x804 ||
      std::memcmp(data, "PAC ", 4) != 0) return false;
  const uint32_t count = SoftpalLe32(data + 8);
  if (count == 0 || count > 30000 ||
      bytes != 0x804ull + uint64_t(count) * 40ull ||
      archive_bytes < bytes) return false;
  std::vector<SoftpalPacEntry> parsed;
  parsed.reserve(count);
  for (uint32_t i = 0; i < count; ++i) {
    const uint8_t* record = data + 0x804 + size_t(i) * 40;
    SoftpalPacEntry entry;
    size_t n = 0;
    while (n < 32 && record[n] != 0) {
      if (record[n] < 0x20 || record[n] > 0x7e) return false;
      entry.name[n] = static_cast<char>(record[n]);
      ++n;
    }
    if (n == 0) return false;
    entry.offset = SoftpalLe32(record + 36);
    entry.size = SoftpalLe32(record + 32);
    if (entry.size == 0 || entry.offset < bytes ||
        uint64_t(entry.offset) + entry.size > archive_bytes) return false;
    parsed.push_back(entry);
  }
  *entries = std::move(parsed);
  return true;
}

inline const SoftpalPacEntry* FindSoftpalPacMember(
    const std::vector<SoftpalPacEntry>& entries, const char* name) {
  if (!name) return nullptr;
  for (const auto& entry : entries) {
    if (_stricmp(entry.name, name) == 0) return &entry;
  }
  return nullptr;
}

// FILE.DAT is a 16-byte header followed by 32-byte NUL-padded names.
// The TextShow voice operand indexes this list directly.
inline bool SoftpalVoiceMemberName(const uint8_t* data, size_t bytes,
                                   uint32_t key, char out[33]) {
  if (!data || !out || bytes < 16 ||
      std::memcmp(data, "_FILE_LIST__", 12) != 0) return false;
  const uint32_t count = SoftpalLe32(data + 12);
  if (count > 30000 || bytes != 16ull + uint64_t(count) * 32ull ||
      key >= count) return false;
  const uint8_t* p = data + 16 + size_t(key) * 32;
  size_t n = 0;
  while (n < 28 && p[n] != 0) {
    const uint8_t c = p[n];
    if (!(c >= 'A' && c <= 'Z') &&
        !(c >= '0' && c <= '9') && c != '_') return false;
    out[n] = static_cast<char>(c);
    ++n;
  }
  if (n < 3 || out[0] != 'V' || out[1] != 'O' ||
      n + 4 >= 33 || (n == 28 && p[n] != 0)) return false;
  std::memcpy(out + n, ".OGG", 5);
  return true;
}

inline bool ParseSoftpalTextRecordOffsets(const uint8_t* data, size_t bytes,
                                          std::vector<uint32_t>* offsets) {
  if (!data || !offsets || bytes < 16 || bytes > UINT32_MAX ||
      std::memcmp(data, "_TEXT_LIST__", 12) != 0) return false;
  const uint32_t count = SoftpalLe32(data + 12);
  if (count == 0 || count > 100000) return false;
  std::vector<uint32_t> parsed;
  parsed.reserve(count);
  size_t cursor = 16;
  for (uint32_t i = 0; i < count; ++i) {
    if (cursor + 5 > bytes || SoftpalLe32(data + cursor) != i)
      return false;
    parsed.push_back(static_cast<uint32_t>(cursor));
    const void* end = std::memchr(data + cursor + 4, 0, bytes - cursor - 4);
    if (!end) return false;
    cursor = static_cast<const uint8_t*>(end) - data + 1;
  }
  if (cursor != bytes) return false;
  *offsets = std::move(parsed);
  return true;
}

// TEXT.DAT offsets point to a 4-byte ID followed by CP932 and NUL.
// Keep only rendered base text: line breaks survive, ruby/style tags do not.
inline bool SoftpalDialogueBytes(const uint8_t* data, size_t bytes,
                                 uint32_t offset, char* out,
                                 size_t capacity, size_t* length) {
  if (!data || !out || !length || capacity < 2 || bytes < 16 ||
      std::memcmp(data, "_TEXT_LIST__", 12) != 0 ||
      offset < 16 || uint64_t(offset) + 5 > bytes) return false;
  size_t i = size_t(offset) + 4, n = 0;
  bool terminated = false;
  while (i < bytes && i < size_t(offset) + 4096) {
    const uint8_t c = data[i++];
    if (c == 0) { terminated = true; break; }
    if (c == '<') {
      const size_t tag_start = i;
      while (i < bytes && i < tag_start + 80 && data[i] != '>' &&
             data[i] != 0) ++i;
      if (i >= bytes || data[i] != '>') return false;
      if (i - tag_start == 2 &&
          (data[tag_start] == 'b' || data[tag_start] == 'B') &&
          (data[tag_start + 1] == 'r' || data[tag_start + 1] == 'R')) {
        if (n + 1 >= capacity) return false;
        out[n++] = '\n';
      }
      ++i;
      continue;
    }
    if (n + 1 >= capacity) return false;
    out[n++] = static_cast<char>(c);
  }
  if (!terminated || n == 0) return false;
  out[n] = 0;
  *length = n;
  return true;
}

}  // namespace fushi_voice_hook
