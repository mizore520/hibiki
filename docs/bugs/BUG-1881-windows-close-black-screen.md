## BUG-1881 · Windows关闭时主窗口黑屏延迟
- **报告**：2026-08-16（用户报告，作者更新合入后出现）
- **真实性**：✅ 真 bug（`fushi/windows/runner/flutter_window.cpp:2573`、
  `fushi/lib/main.dart:705`）。Windows runner 启用了
  `windowManager.setPreventClose(true)`，所以关闭时 `WM_CLOSE` 不会马上销毁
  顶层 HWND，而是进入 Dart 的异步 flush、关库、`exit(0)` 链。原有
  `FlutterWindow::MessageHandler` 在把消息交给 Flutter/window_manager 前没有隐藏
  HWND；退出期 Flutter/WebView2/DComp 客户区先变黑时，原生标题栏仍可见，用户就会
  看到黑屏停留数秒。作者更新的媒体/ANGLE 原生资源生命周期使这个可见窗口阶段更容易
  暴露，但没有改变 Dart 关闭链本身。
- **[x] ① 已修复** — 在 `WM_CLOSE` 进入 Flutter/window_manager 之前调用
  `ShowWindow(hwnd, SW_HIDE)`。它只隐藏主 HWND，不销毁、不最小化、不激活其它窗口，
  随后仍完整交给原有 `setPreventClose`、flush、关库和 `exit(0)` 路径。
- **[x] ② 已加自动化测试** —
  `fushi/test/platform/windows_close_visibility_guard_test.dart` 守住隐藏发生在
  `HandleTopLevelWindowProc` 之前、消息继续分发、`setPreventClose` 与数据耐久性闸门
  仍存在，并检查隐藏代码不提前 return。自动化测试不能模拟真实 Flutter/DComp 关闭
  时序；候选 EXE 仍需在用户机器上确认黑屏窗口不再可见。
- **备注**：这是通用 Windows 关闭生命周期修复，不是 Magpie 专属逻辑；不改 Hook、
  Luna 安全附着、浮窗置顶、游戏输入焦点或真实用户数据。当前分支尚未合并到
  `custom`，也尚未推送。
