## BUG-2531 · 游戏实时校准探针绕过点击屏蔽导致台词推进
- **报告**：2026-09-18。用户应用样本草稿后，游戏上能看到实时校准框，但点击探针直接推进下一句。
- **真实性**：✅ 真 bug（`source-confirmed`，游戏现象由用户报告）。基线 `b59b9546c9` 的 `fushi/windows/runner/attached_text_surface_window.cpp:1530` 跳过校准模式的 shield handshake，`:1631` 单独显示校准窗口；`SetVisible` / `PublishInteractiveSnapshot` / LL down handler 只接 configured 模式。`:2690` 起校准走普通 `WM_LBUTTONDOWN/UP`，没有在游戏输入之前取得完整 down/up/tail 所有权。可见 HWND 与 `SetCapture` 不能证明屏蔽游戏采样输入。
- **[x] ① 根因修复** — 实时校准复用正式查词的 provider、握手、字簇快照、LL arm 和 down/up 事务；仅有效同簇 release 记录探针，不打开词典。任何必要门未就绪时隐藏输入面。取消/提交先撤销快照，物理尾部继续由既有 LL latch 收尾。取消游戏上的普通鼠标拖框入口，区域编辑保留在样本截图页；游戏层显示真实命中字框及已记录探针。
- **[x] ② 自动化验证** — 原生对象编译和 4 个相关测试通过（`.codex-test/calibration-click-native.log`）；Dart 控制器/通道/Workbench/桌面点击契约共 74 + 5 项通过（`.codex-test/calibration-dart-focused.log`、`.codex-test/calibration-workbench-final.log`）。定向 Dart analyze 未形成结果：分析服务器清理本机 `C:\Users\mizore\AppData\Local\Dart\perf\32052` 时崩溃（`.codex-test/calibration-dart-analyze.log`）。
- **伴随状态问题**：Dart 原来用 `status == calibrating` 表示会话存活；Alt+Tab 的 `targetBackground` 会把状态变为 suspended，参数更新/取消判断随之失效。校准会话与当前可见/就绪状态需独立管理。
- **证据边界**：本轮不更换游戏 Hook/helper、不改变引擎支持矩阵、不声称真实字形精确。输入链仍沿用原有风险降级；即使源码/纯测试/原生编译通过，也必须由用户确认新版点击后游戏不推进，才记 `real-game-tested`。完整 Windows x64 构建由用户执行；未合并、未推送。
