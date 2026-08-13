## BUG-1594 · Galgame文字悬浮窗切换窗口后丢失置顶
- **报告**：2026-08-11（用户：Galgame 文字悬浮窗起初正常置顶，切换一次窗口后不再位于游戏上方）
- **真实性**：✅ 真 bug。`fushi/windows/runner/floating_lyric_window.cpp:277` 只在首次 `Show`、手动切换图钉和窗口自身移动/缩放时调用 `SetWindowPos(HWND_TOPMOST)`。窗口保留 `WS_EX_TOPMOST` 只代表它仍在 topmost band，不能保证它排在后来重新进入前台并把自身插到同一 band 头部的无边框/全屏游戏上方；现有实现完全没有监听 `EVENT_SYSTEM_FOREGROUND`，所以切回游戏后不会重新确认 Z 序。
- **[x] ① 已修复** — Galgame 浮窗显示期间注册 `EVENT_SYSTEM_FOREGROUND` WinEvent；回调只向浮窗平台线程投递私有消息，由消息处理器在“浮窗可见且用户仍开启图钉”时以 `SWP_NOACTIVATE` 重新插入 topmost band 顶部。隐藏/析构立即注销监听；手动关闭图钉后前台切换不会擅自拉回置顶。`WM_DISPLAYCHANGE` 同样重新确认置顶，覆盖分辨率/显示器切换。修复提交：`ba6c431ef`。
- **[x] ② 已加自动化测试** — `fushi/test/tools/gal_overlay_topmost_foreground_guard_test.dart` 守住事件驱动（非轮询）、平台线程投递、可见/图钉门控、`SWP_NOACTIVATE` 和显示/隐藏生命周期。测试提交：`ba6c431ef`。
- **备注**：Windows 的真实 topmost band / 全屏合成顺序无法由 Flutter 单测模拟，仍需候选 EXE 在用户原游戏中执行“浮窗出现 → Alt+Tab 切走 → 切回游戏”验收。
