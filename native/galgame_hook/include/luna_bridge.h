#ifndef FUSHI_LUNA_BRIDGE_H_
#define FUSHI_LUNA_BRIDGE_H_

#include <windows.h>

#include <array>
#include <cstddef>
#include <cstdint>
#include <type_traits>

#include "luna_version.h"

namespace fushi_voice_hook {

// Hibiki-owned boundary around the vendored LunaTranslator v10.16.1.2 ABI.
// Only this header may describe LunaHost callback layouts or exported functions.
#pragma pack(push, 8)
struct LunaThreadParam {
  uint32_t processId;
  uint64_t addr;
  uint64_t ctx;
  uint64_t ctx2;
};

// v10.16.1.2 SearchParam.  Luna_FindHooks receives this structure by value on
// the x86 ABI.  Do not replace this with a pointer or with the newer
// Luna_Settings/SearchParam declarations from another LunaTranslator tag.
// The fixed-width fields below mirror the v10.16 ABI contract; the assertions
// make an accidental packing/compiler-layout drift fail at build time.
struct LunaSearchParam {
  char pattern[30];
  int32_t address_method;
  int32_t search_method;
  int32_t length;
  int32_t offset;
  int32_t searchTime;
  int32_t maxRecords;
  int32_t codepage;
  int64_t padding;
  uint64_t minAddress;
  uint64_t maxAddress;
  wchar_t boundaryModule[120];
  wchar_t exportModule[120];
  wchar_t text[30];
  bool isjithook;
  wchar_t sharememname[64];
  uint64_t sharememsize;
};
#pragma pack(pop)
static_assert(sizeof(LunaThreadParam) == 32,
              "LunaThreadParam must match LunaHost ABI");
static_assert(sizeof(wchar_t) == 2,
              "LunaHost ABI requires Windows two-byte wchar_t");
static_assert(alignof(LunaSearchParam) == 8,
              "LunaSearchParam must retain the v10.16 x64-field alignment");
static_assert(sizeof(LunaSearchParam) == 0x300,
              "LunaSearchParam must be exactly 768 bytes in v10.16");
static_assert(std::is_standard_layout_v<LunaSearchParam>,
              "LunaSearchParam must remain standard-layout for by-value ABI");
static_assert(std::is_trivially_copyable_v<LunaSearchParam>,
              "LunaSearchParam must remain trivially copyable for by-value ABI");
static_assert(offsetof(LunaSearchParam, pattern) == 0x000);
static_assert(offsetof(LunaSearchParam, address_method) == 0x020);
static_assert(offsetof(LunaSearchParam, search_method) == 0x024);
static_assert(offsetof(LunaSearchParam, length) == 0x028);
static_assert(offsetof(LunaSearchParam, offset) == 0x02c);
static_assert(offsetof(LunaSearchParam, searchTime) == 0x030);
static_assert(offsetof(LunaSearchParam, maxRecords) == 0x034);
static_assert(offsetof(LunaSearchParam, codepage) == 0x038);
static_assert(offsetof(LunaSearchParam, padding) == 0x040);
static_assert(offsetof(LunaSearchParam, minAddress) == 0x048);
static_assert(offsetof(LunaSearchParam, maxAddress) == 0x050);
static_assert(offsetof(LunaSearchParam, boundaryModule) == 0x058);
static_assert(offsetof(LunaSearchParam, exportModule) == 0x148);
static_assert(offsetof(LunaSearchParam, text) == 0x238);
static_assert(offsetof(LunaSearchParam, isjithook) == 0x274);
// MSVC keeps wchar_t's two-byte alignment after the one-byte isjithook flag;
// the padding byte at 0x275 is part of the by-value ABI.
static_assert(offsetof(LunaSearchParam, sharememname) == 0x276);
static_assert(offsetof(LunaSearchParam, sharememsize) == 0x2f8);

using LunaProcessEvent = void (*)(DWORD);
using LunaThreadEventMaybeEmbed = void (*)(const wchar_t*, const char*,
                                            LunaThreadParam, bool);
using LunaThreadEvent = void (*)(const wchar_t*, const char*, LunaThreadParam);
using LunaOutputCallback = void (*)(const wchar_t*, const char*,
                                    LunaThreadParam, const wchar_t*);
using LunaHostInfoHandler = void (*)(int, const wchar_t*);
using LunaHookInsertHandler = void (*)(DWORD, uint64_t, const wchar_t*);
using LunaEmbedCallback = void (*)(const wchar_t*, LunaThreadParam);
using LunaI18nQueryCallback = wchar_t* (*)(const wchar_t*);
using LunaEmuGameInfoCallback = void (*)(const wchar_t*, const wchar_t*,
                                         const wchar_t*);
using PFN_Luna_Start = void (*)(
    LunaProcessEvent, LunaProcessEvent, LunaThreadEventMaybeEmbed,
    LunaThreadEvent, LunaOutputCallback, LunaHostInfoHandler,
    LunaHookInsertHandler, LunaEmbedCallback, LunaI18nQueryCallback,
    LunaEmuGameInfoCallback);
using PFN_Luna_ConnectProcess = void (*)(DWORD);
using PFN_Luna_CheckIfNeedInject = bool (*)(DWORD);
using PFN_Luna_DetachProcess = void (*)(DWORD);
using PFN_Luna_Settings = void (*)(int, bool, int, int, int, bool);
using PFN_Luna_InsertPCHooks = void (*)(DWORD, int);
using PFN_Luna_InsertHookCode = bool (*)(DWORD, const wchar_t*);
using PFN_Luna_RemoveHook = void (*)(DWORD, uint64_t);
using LunaFindHooksCallback = void(__cdecl*)(wchar_t*, const wchar_t*);
using PFN_Luna_FindHooks = void(__cdecl*)(DWORD, LunaSearchParam,
                                           LunaFindHooksCallback,
                                           const wchar_t*);

inline constexpr std::array<const char*, 4> kLunaRequiredExports = {
    "Luna_Start", "Luna_ConnectProcess", "Luna_CheckIfNeedInject",
    "Luna_DetachProcess"};
inline constexpr std::array<const char*, 13> kLunaOptionalExports = {
    "Luna_Settings",          "Luna_InsertPCHooks",
    "Luna_SettingsEx",        "Luna_ResetLang",
    "Luna_AllocString",       "Luna_InsertHookCode",
    "Luna_QueryThreadHistory", "Luna_RemoveHook",
    "Luna_FindHooks",         "Luna_SyncThread",
    "Luna_CheckIsUsingEmbed", "Luna_UseEmbed",
    "Luna_EmbedCallback"};

struct LunaBridgeExports {
  PFN_Luna_Start start = nullptr;
  PFN_Luna_ConnectProcess connect = nullptr;
  PFN_Luna_CheckIfNeedInject need_inject = nullptr;
  PFN_Luna_DetachProcess detach = nullptr;
  PFN_Luna_Settings settings = nullptr;
  PFN_Luna_InsertPCHooks insert_pc = nullptr;
  PFN_Luna_InsertHookCode insert_hook = nullptr;
  PFN_Luna_RemoveHook remove_hook = nullptr;
  PFN_Luna_FindHooks find_hooks = nullptr;

  bool Resolve(HMODULE host) {
    start = reinterpret_cast<PFN_Luna_Start>(GetProcAddress(host, "Luna_Start"));
    connect = reinterpret_cast<PFN_Luna_ConnectProcess>(
        GetProcAddress(host, "Luna_ConnectProcess"));
    need_inject = reinterpret_cast<PFN_Luna_CheckIfNeedInject>(
        GetProcAddress(host, "Luna_CheckIfNeedInject"));
    detach = reinterpret_cast<PFN_Luna_DetachProcess>(
        GetProcAddress(host, "Luna_DetachProcess"));
    settings = reinterpret_cast<PFN_Luna_Settings>(
        GetProcAddress(host, "Luna_Settings"));
    insert_pc = reinterpret_cast<PFN_Luna_InsertPCHooks>(
        GetProcAddress(host, "Luna_InsertPCHooks"));
    insert_hook = reinterpret_cast<PFN_Luna_InsertHookCode>(
        GetProcAddress(host, "Luna_InsertHookCode"));
    remove_hook = reinterpret_cast<PFN_Luna_RemoveHook>(
        GetProcAddress(host, "Luna_RemoveHook"));
    find_hooks = reinterpret_cast<PFN_Luna_FindHooks>(
        GetProcAddress(host, "Luna_FindHooks"));
    return start != nullptr && connect != nullptr && need_inject != nullptr &&
           detach != nullptr;
  }
};

}  // namespace fushi_voice_hook

#endif  // FUSHI_LUNA_BRIDGE_H_
