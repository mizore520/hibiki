// CI 走 `--config Release`，MSVC 在该配置下定义 NDEBUG，裸 assert 会被整条编译掉，
// 于是这个测试无论断言对不对都恒绿——与 BUG-1157「零测试执行伪装成通过」同一族。
// 必须在任何 include 之前撤销它。守卫：tests/assert_liveness_guard_test.py
#undef NDEBUG

#include <type_traits>

#include "luna_bridge.h"

int main() {
  static_assert(fushi_voice_hook::kLunaBridgeAbiVersion == 1);
  static_assert(fushi_voice_hook::kLunaVendoredVersion == 0x0A100102);
  static_assert(sizeof(fushi_voice_hook::LunaThreadParam) == 32);
  static_assert(sizeof(fushi_voice_hook::LunaSearchParam) == 0x300);
#if defined(_M_IX86)
  static_assert(sizeof(void*) == 4);
  static_assert(alignof(fushi_voice_hook::LunaSearchParam) == 8);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, pattern) == 0x000);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, address_method) == 0x020);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, search_method) == 0x024);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, length) == 0x028);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, offset) == 0x02c);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, searchTime) == 0x030);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, maxRecords) == 0x034);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, codepage) == 0x038);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, padding) == 0x040);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, minAddress) == 0x048);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, maxAddress) == 0x050);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, boundaryModule) == 0x058);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, exportModule) == 0x148);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, text) == 0x238);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, isjithook) == 0x274);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, sharememname) == 0x276);
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, sharememsize) == 0x2f8);
#endif
  static_assert(offsetof(fushi_voice_hook::LunaSearchParam, search_method) ==
                0x024);
  static_assert(std::is_same_v<fushi_voice_hook::PFN_Luna_ConnectProcess,
                               void (*)(DWORD)>);
  static_assert(std::is_same_v<fushi_voice_hook::PFN_Luna_InsertHookCode,
                               bool (*)(DWORD, const wchar_t*)>);
  static_assert(std::is_same_v<fushi_voice_hook::PFN_Luna_RemoveHook,
                               void (*)(DWORD, uint64_t)>);
  static_assert(std::is_same_v<fushi_voice_hook::LunaFindHooksCallback,
                               void (__cdecl *)(wchar_t*, const wchar_t*)>);
  static_assert(std::is_same_v<fushi_voice_hook::PFN_Luna_FindHooks,
                               void (__cdecl *)(
                                   DWORD, fushi_voice_hook::LunaSearchParam,
                                   fushi_voice_hook::LunaFindHooksCallback,
                                   const wchar_t*)>);
  static_assert(fushi_voice_hook::kLunaRequiredExports.size() == 4);
  return 0;
}
