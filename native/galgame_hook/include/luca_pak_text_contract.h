#pragma once

#include <cstddef>
#include <cstdint>
#include <cstring>

namespace fushi_voice_hook {

// Luca named-script PAK layout, independently validated against the local
// sample. This validator reads only the bounded index/name region, never
// script or audio payloads; it is diagnostic/fallback evidence, not the live
// text producer.
inline uint32_t LucaRead32(const uint8_t* data) {
  return uint32_t(data[0]) | (uint32_t(data[1]) << 8) |
         (uint32_t(data[2]) << 16) | (uint32_t(data[3]) << 24);
}

inline bool LucaNamedScriptIndexValid(const uint8_t* header, size_t size,
                                     uint64_t file_size) {
  if (header == nullptr || size < 40 || size > 4 * 1024 * 1024) return false;
  const uint32_t header_size = LucaRead32(header);
  const uint32_t count = LucaRead32(header + 4);
  const uint32_t block = LucaRead32(header + 12);
  if (header_size != size || header_size > file_size || count == 0 ||
      count > 65536 || block != 4 || header_size % block != 0 ||
      LucaRead32(header + 8) != 1 || LucaRead32(header + 32) != 512) {
    return false;
  }
  for (size_t offset = 16; offset < 32; offset += 4) {
    if (LucaRead32(header + offset) != 0) return false;
  }
  const uint64_t table_end = 40ull + uint64_t(count) * 8;
  const uint32_t names = LucaRead32(header + 36);
  if (table_end > size || names != table_end) return false;
  uint64_t previous_end = size;
  for (uint32_t index = 0; index < count; ++index) {
    const uint8_t* entry = header + 40 + size_t(index) * 8;
    const uint64_t offset = uint64_t(LucaRead32(entry)) * block;
    const uint32_t length = LucaRead32(entry + 4);
    if (length == 0 || offset < previous_end || offset > file_size ||
        length > file_size - offset || (index == 0 && offset != size)) {
      return false;
    }
    previous_end = offset + length;
  }
  size_t position = names;
  for (uint32_t index = 0; index < count; ++index) {
    const size_t start = position;
    while (position < size && header[position] != 0) {
      // The admitted named-script variant uses bounded printable ASCII names.
      if (header[position] < 0x20 || header[position] > 0x7e ||
          position - start >= 255) {
        return false;
      }
      ++position;
    }
    if (position == start || position == size) return false;
    ++position;
  }
  while (position < size) {
    if (header[position++] != 0) return false;
  }
  return true;
}

// UTF-16 copy contract: source/end at ESI+14/+10; destination at ESI+1c;
// increment both by two, loop to the source/end comparison, then terminate.
// A match alone is not engine identity: the caller also requires the named PAK
// contract and complete, unique coverage of the x86 main image's executable
// sections before creating a dynamic hook code.
inline constexpr uint8_t kLucaTextCopyContract[] = {
    0x8b, 0x46, 0x10, 0x3b, 0x46, 0x14, 0x74, 0x21, 0xeb, 0x03, 0x8d, 0x49,
    0x00, 0x8b, 0x46, 0x14, 0x8b, 0x4e, 0x1c, 0x66, 0x8b, 0x00, 0x66, 0x89,
    0x01, 0x83, 0x46, 0x14, 0x02, 0x83, 0x46, 0x1c, 0x02, 0x8b, 0x46, 0x14,
    0x39, 0x46, 0x10, 0x75, 0xe4, 0x8b, 0x46, 0x1c, 0x33, 0xc9, 0x5e, 0x66,
    0x89, 0x08, 0xc3};
inline constexpr size_t kLucaTextReadOffset = 19;

struct LucaTextMatches {
  size_t count = 0;
  uint64_t address = 0;
};

inline void ScanLucaTextContract(const uint8_t* bytes, size_t size,
                                 uint64_t base, LucaTextMatches* matches) {
  if (bytes == nullptr || matches == nullptr ||
      size < sizeof(kLucaTextCopyContract) || UINT64_MAX - base < size) {
    return;
  }
  for (size_t offset = 0; offset <= size - sizeof(kLucaTextCopyContract);
       ++offset) {
    if (std::memcmp(bytes + offset, kLucaTextCopyContract,
                    sizeof(kLucaTextCopyContract)) == 0) {
      ++matches->count;
      matches->address = base + offset + kLucaTextReadOffset;
    }
  }
}

}  // namespace fushi_voice_hook
