#pragma once

#include <array>
#include <cstddef>
#include <cstdint>

namespace fushi_voice_hook::little_busters {

inline constexpr uint16_t kLittleBustersPeMachineI386 = 0x014cu;
inline constexpr std::array<uint8_t, 32> kLittleBustersExecutableSha256 = {
    0x04, 0x77, 0x48, 0xc4, 0x7a, 0xb6, 0x36, 0xb5,
    0xa9, 0x79, 0x54, 0x68, 0x8c, 0x9c, 0xb3, 0xd0,
    0xee, 0x68, 0xde, 0x79, 0x60, 0x16, 0x6e, 0xb4,
    0x27, 0xc4, 0xe0, 0x0f, 0x6b, 0x3f, 0x17, 0x2d,
};

// The text profile is already admitted by LunaHook.  The resource adapter
// repeats the exact tag locally so it cannot claim a different Luca build.
inline constexpr wchar_t kLittleBustersExecutableName[] = L"LITBUS_WIN32.exe";
inline constexpr wchar_t kLittleBustersTextHookCode[] =
    L"HQFN1C:-18*-3244@8BA37:LITBUS_WIN32.exe";

// The pinned Luca MESSAGE case stores its uint16 voiceId in the caller's
// [EBP-0x3244]. LunaHook's x86 `:-18` split operand resolves to the saved EBP
// and `*-3244` performs the one guarded dereference, so ctx2 carries the
// message-owned voiceId while the data operand remains the original text.
// These helpers are deliberately exact-hook-only; other split hooks retain
// their raw ctx2 semantics.
inline bool IsLittleBustersVoiceSplitHookCode(const wchar_t* hook_code) {
  if (hook_code == nullptr) return false;
  constexpr size_t kExpectedLength =
      sizeof(kLittleBustersTextHookCode) / sizeof(wchar_t) - 1u;
  size_t index = 0u;
  while (index < 127u && hook_code[index] != L'\0') {
    if (index >= kExpectedLength ||
        hook_code[index] != kLittleBustersTextHookCode[index]) {
      return false;
    }
    ++index;
  }
  return index < 127u && hook_code[index] == L'\0' &&
         index == kExpectedLength;
}

inline uint64_t CanonicalLittleBustersTextContext2(
    const wchar_t* hook_code, uint64_t raw_context2) {
  return IsLittleBustersVoiceSplitHookCode(hook_code) ? 0u : raw_context2;
}

// The ABI is 64-bit wide, but the pinned MESSAGE field is a uint16. Zero is
// valid and is the explicit no-voice sentinel; it is never converted to a
// VOICE member id by this diagnostic bridge.
inline bool DecodeLittleBustersVoiceId(uint64_t raw_context2,
                                       uint32_t* voice_id) {
  if (voice_id == nullptr || raw_context2 > 0xffffu) return false;
  *voice_id = static_cast<uint32_t>(raw_context2);
  return true;
}

// ReadFile -> forward-text publication remains disabled permanently for this
// profile. Production ownership is the selected exact MESSAGE TextSlot below.
inline constexpr bool kLittleBustersAutomaticVoiceBindingEnabled = false;
inline constexpr bool kLittleBustersDirectMessageVoiceBindingEnabled = true;

inline bool MatchesLittleBustersProfile(const uint8_t* digest,
                                        size_t digest_bytes,
                                        uint16_t pe_machine) {
  if (digest == nullptr || digest_bytes != kLittleBustersExecutableSha256.size() ||
      pe_machine != kLittleBustersPeMachineI386) {
    return false;
  }
  uint8_t difference = 0;
  for (size_t index = 0; index < digest_bytes; ++index) {
    difference |= static_cast<uint8_t>(
        digest[index] ^ kLittleBustersExecutableSha256[index]);
  }
  return difference == 0;
}

}  // namespace fushi_voice_hook::little_busters
