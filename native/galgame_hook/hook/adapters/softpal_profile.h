#pragma once

#include <array>
#include <cstdint>

namespace fushi_voice_hook {

// Measured totsulover.exe (2026-09-26). Other Softpal builds fail closed.
inline constexpr std::array<uint8_t, 32> kTotsuloverSha256 = {
    0xa2, 0xd1, 0x48, 0x20, 0xe5, 0xc6, 0x35, 0x20,
    0x08, 0x45, 0x65, 0x76, 0x8a, 0xb8, 0xf1, 0x4f,
    0x7c, 0x35, 0x6a, 0xad, 0x62, 0x3d, 0xe2, 0xe3,
    0x13, 0xb1, 0x2c, 0x14, 0xba, 0xe8, 0x36, 0x88};
inline constexpr std::array<uint8_t, 32> kTotsuloverDataPacSha256 = {
    0x24, 0xde, 0xde, 0x3a, 0x31, 0x8a, 0x49, 0xd4,
    0xf5, 0x01, 0x35, 0x29, 0x15, 0x5d, 0x5e, 0x52,
    0x83, 0xa5, 0xa7, 0x9d, 0x06, 0xf7, 0xd2, 0x4a,
    0x77, 0xb9, 0x8d, 0x11, 0x5a, 0x81, 0xa7, 0x57};
inline constexpr std::array<uint8_t, 32> kTotsuloverPalDllSha256 = {
    0xbd, 0x93, 0x60, 0xc1, 0x30, 0xe3, 0x66, 0x75,
    0x9b, 0x1b, 0x5b, 0x7d, 0x37, 0xc1, 0x03, 0xdc,
    0x0d, 0x06, 0x4f, 0x0c, 0xde, 0xd2, 0x54, 0x52,
    0x52, 0xf5, 0x04, 0xc1, 0x8d, 0x9f, 0xf2, 0x35};
inline constexpr uint32_t kTotsuloverTextShowRva = 0x6fb90;
inline constexpr std::array<uint8_t, 12> kTotsuloverTextShowPrologue = {
    0x55, 0x8b, 0xec, 0x83, 0xec, 0x14, 0x53, 0x8b, 0x5d, 0x08, 0x56, 0x8b};
inline constexpr uint32_t kTotsuloverTextShow15Rva = 0x6e6d0;
inline constexpr std::array<uint8_t, 12> kTotsuloverTextShow15Prologue = {
    0x55, 0x8b, 0xec, 0x83, 0xec, 0x10, 0x53, 0x8b, 0x5d, 0x08, 0x56, 0x8b};
inline constexpr uint32_t kSoftpalNoVoice = 0x0fffffffu;

struct SoftpalTextShowOperands {
  uint32_t body_offset = 0;
  uint32_t speaker_offset = 0;
  uint32_t voice_key = 0;
};

// Script calls 2 and 15 share the last three operands. Call 2 also has a
// leading mode (zero for dialogue); call 15 has exactly the three operands.
inline bool ReadSoftpalTextShowOperands(const uint32_t* values, uint32_t count,
                                        bool has_mode, uint32_t text_bytes,
                                        uint32_t file_count,
                                        SoftpalTextShowOperands* out) {
  const uint32_t required = has_mode ? 4u : 3u;
  if (!values || !out || count < required || count > 4096) return false;
  const uint32_t* args = values + count - 3;
  if ((has_mode && args[-1] != 0) || args[0] < 16 ||
      args[0] >= text_bytes ||
      (args[2] != kSoftpalNoVoice && args[2] >= file_count)) return false;
  *out = {args[0], args[1], args[2]};
  return true;
}

inline bool MatchesSoftpalProfile(const std::array<uint8_t, 32>& digest) {
  return digest == kTotsuloverSha256;
}

}  // namespace fushi_voice_hook
