// 宿主浮窗判定：与 lookup_overlay_window.inc 的「游戏主窗」是不同概念，故单独成文件。
// 由 dll_main.cpp 在 lookup_overlay_window.inc 之后、各适配器与通用输入护盾之前包含，
// 两个架构都编译（通用护盾 x86/x64 共用，KiriKiri 泵只在 x86）。

// %TEMP%\fushi_galhook.log 的单行追加。原在 KiriKiri 适配器的 x86 区段里；通用输入护盾
// 的滚轮诊断在两个架构都要写同一份日志，故移到这里共用。
void HookLogLine(const wchar_t* text) {
  if (text == nullptr || *text == L'\0') return;
  wchar_t dir[MAX_PATH] = {};
  const DWORD n = GetTempPathW(MAX_PATH, dir);
  if (n == 0 || n >= MAX_PATH) return;
  std::wstring path = dir;
  path += L"fushi_galhook.log";
  HANDLE file = CreateFileW(path.c_str(), FILE_APPEND_DATA, FILE_SHARE_READ,
                            nullptr, OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, nullptr);
  if (file == INVALID_HANDLE_VALUE) return;
  SYSTEMTIME st = {};
  GetLocalTime(&st);
  wchar_t stamp[64] = {};
  _snwprintf_s(stamp, _TRUNCATE, L"%02u:%02u:%02u.%03u pid=%lu ", st.wHour,
               st.wMinute, st.wSecond, st.wMilliseconds, GetCurrentProcessId());
  std::wstring line = stamp;
  line += text;
  line += L"\r\n";
  const int bytes = WideCharToMultiByte(CP_UTF8, 0, line.c_str(), -1, nullptr, 0,
                                        nullptr, nullptr);
  if (bytes > 1) {
    std::string utf8(static_cast<size_t>(bytes - 1), '\0');
    WideCharToMultiByte(CP_UTF8, 0, line.c_str(), -1, utf8.data(), bytes, nullptr,
                        nullptr);
    DWORD written = 0;
    WriteFile(file, utf8.data(), static_cast<DWORD>(utf8.size()), &written,
              nullptr);
  }
  CloseHandle(file);
}

// 光标下是否压着宿主贴在本游戏上的浮窗：别的进程的可见顶层窗，其 owner 是本进程的窗口
// （查词直连卡片、Hook 工具条、悬浮歌词都以游戏窗为 owner）。引擎经 DirectInput 读滚轮时
// （KiriKiri `-wheel` 缺省 dinput），宿主 WH_MOUSE_LL 吞掉的只是窗口消息，同一格滚轮
// 仍会翻到下一句（BUG-2738）。通用输入护盾与 KiriKiri 接缝共用这一个判据。这里只回答 Win32
// 语义「这格滚轮本该属于光标下那个窗口」，不认任何游戏或宿主私有标识。
// 候选浮窗：别的进程的顶层窗，其 owner 属于本进程。宿主会复用同一个 HWND 反复显隐，
// 所以每 500 ms 用 EnumWindows 刷新一次候选，每帧只对这几扇窗做可见性与区域命中。
// 不用 WindowFromPoint：光标落在游戏自己的窗上时它会向同线程窗口同步发 WM_NCHITTEST，
// 等于每帧在 TJS continuous 回调里重入一次游戏 WndProc。这里的调用都不发窗口消息。
constexpr size_t kHostOverlayCandidateCap = 16;
constexpr ULONGLONG kHostOverlayRefreshMs = 500;
struct HostOverlayCandidates {
  HWND windows[kHostOverlayCandidateCap] = {};
  size_t count = 0;
  ULONGLONG refreshed_at = 0;
  bool refreshed = false;
};
HostOverlayCandidates g_host_overlay_candidates;
// KiriKiri 泵在引擎主线程、DirectInput detour 在游戏自己的输入线程调用同一判据。
SRWLOCK g_host_overlay_candidates_lock = SRWLOCK_INIT;

BOOL CALLBACK CollectHostOverlayCandidate(HWND window, LPARAM param) {
  auto* out = reinterpret_cast<HostOverlayCandidates*>(param);
  if (out->count >= kHostOverlayCandidateCap) return FALSE;
  const HWND owner = GetWindow(window, GW_OWNER);
  if (owner == nullptr) return TRUE;
  const DWORD self = GetCurrentProcessId();
  DWORD owner_pid = 0;
  DWORD window_pid = 0;
  GetWindowThreadProcessId(owner, &owner_pid);
  GetWindowThreadProcessId(window, &window_pid);
  if (owner_pid == self && window_pid != 0 && window_pid != self) {
    out->windows[out->count++] = window;
  }
  return TRUE;
}

bool HostOverlayWindowContains(HWND window, POINT cursor) {
  if (!IsWindow(window) || !IsWindowVisible(window) || IsIconic(window)) return false;
  // 点击穿透的浮窗（悬浮歌词等）本来就不接收鼠标，滚轮归下面的游戏。
  if ((GetWindowLongPtrW(window, GWL_EXSTYLE) & WS_EX_TRANSPARENT) != 0) return false;
  RECT rect{};
  if (!GetWindowRect(window, &rect) || !PtInRect(&rect, cursor)) return false;
  // 级联卡片用 SetWindowRgn 裁成圆角 shell，包围矩形里的缝隙不属于它。区域句柄按调用
  // 创建：两条调用线程不能共写一个 HRGN，而走到这里已经是光标落进浮窗矩形的少数情况。
  HRGN region = CreateRectRgn(0, 0, 0, 0);
  if (region == nullptr) return true;
  const int kind = GetWindowRgn(window, region);
  const bool inside =
      kind == ERROR || kind == NULLREGION ||  // 无窗口区域 = 整个矩形
      PtInRegion(region, cursor.x - rect.left, cursor.y - rect.top) != FALSE;
  DeleteObject(region);
  return inside;
}

bool HostOverlayUnderCursor() {
  POINT cursor{};
  if (!GetCursorPos(&cursor)) return false;
  const ULONGLONG now = GetTickCount64();
  HostOverlayCandidates snapshot;
  AcquireSRWLockExclusive(&g_host_overlay_candidates_lock);
  HostOverlayCandidates& cache = g_host_overlay_candidates;
  if (!cache.refreshed || now - cache.refreshed_at >= kHostOverlayRefreshMs) {
    HostOverlayCandidates fresh;
    EnumWindows(&CollectHostOverlayCandidate, reinterpret_cast<LPARAM>(&fresh));
    fresh.refreshed_at = now;
    fresh.refreshed = true;
    cache = fresh;
  }
  snapshot = cache;
  ReleaseSRWLockExclusive(&g_host_overlay_candidates_lock);
  for (size_t i = 0; i < snapshot.count; ++i) {
    if (HostOverlayWindowContains(snapshot.windows[i], cursor)) return true;
  }
  return false;
}
