#ifndef FUSHI_LUNA_VERSION_H_
#define FUSHI_LUNA_VERSION_H_

#include <cstdint>

namespace fushi_voice_hook {
constexpr uint32_t kLunaBridgeAbiVersion = 1;
constexpr uint32_t kLunaVendoredVersion = 0x0A100102;  // 10.16.1.2
inline constexpr char kLunaVendoredVersionString[] = "10.16.1.2";

// These hashes identify the exact release artifacts whose ABI was audited for
// luna_bridge.h.  They are dependency identity, not game/version or address
// matching.  Discovery must refuse to call Luna_FindHooks when either the
// loaded Host or the remotely loaded Hook does not match this pair.
inline constexpr char kLunaHost32Sha256[] =
    "532eaf37d20a0db0b96da9fe97314f6a0bbfb9f3f4ede69ad8f6be5115e2bfe3";
inline constexpr char kLunaHook32Sha256[] =
    "78580d5108a7e47b955508f1181deb0ea76ff80c240f693feeaa06711e41406c";
inline constexpr char kLunaHost64Sha256[] =
    "a159b93d15dd91a756b9a48324ae0f68a9b1a010673e9a48d2ced8723c02c7a6";
inline constexpr char kLunaHook64Sha256[] =
    "5415a8da6ab7f0b0a17310b1b46b9601bbeca8100161d516cbde64452bcaf10b";
}  // namespace fushi_voice_hook

#endif  // FUSHI_LUNA_VERSION_H_
