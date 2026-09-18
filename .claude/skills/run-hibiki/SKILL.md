---
name: run-hibiki
description: Run a Fushi Windows integration scenario and inspect real rendered output. Use for app interaction or screenshot verification, not unit tests or build-only work.
---

# Fushi 真应用验证

适用于任务需要操作真实应用并检查渲染结果时。默认使用 Windows 离屏 runner，避免抢用户焦点；平台范围与操作授权沿用 [个人工作规则](../../../docs/personal/PERSONAL_FORK_RULES.md)，加载此技能不扩大授权。

## 选择场景与环境

- 优先复用能覆盖原始问题的 `fushi/integration_test/` 场景；缺少行为覆盖时才新增驱动。脚本、确定性开页钩子和焦点操作见 [集成测试](../../../docs/agent/integration-testing.md)，按所选场景阅读相关章节。
- 使用当前 worktree 的 SDK、依赖与本机配置，不套用他人 SDK 路径或代理端口。runner 支持 `FLUTTER_ROOT`；具体参数查脚本头部。
- 核对测试数据隔离；Windows runner 隔离数据根和 WebView2 profile，但外部文件与显式真实目录参数仍需单独核对。涉及现有偏好时在 `finally` 还原；不结束用户已有 Fushi、游戏或其他任务的进程。

## 运行与判定

在 `fushi/` 下运行选定的目标，例如：

```powershell
.\tool\run_windows_itest.ps1 integration_test/desktop_settings_smoke_test.dart
```

- 操作真应用的测试使用 `FocusDriver` / `tester.sendKeyEvent`：Tab 导航，按钮和开关用 Enter，数值/分段控件用方向键；禁止 `tester.tap` 或坐标点击。断言实际可见或确实滚动到的控件及真实写入结果。
- 离屏 WebView 抓图为空时才考虑 `-Visible`。需要确定性开页或原生纹理抓图时查 [画面证据](../../../docs/agent/computer-use-testing.md)；阅读器恢复/分页问题再查 [阅读器调试](../../../docs/agent/reader-debugging.md)。
- 证据位于 `fushi/.codex-test/windows-itest/<runId>/`：检查 `command.log`、`exit-code.txt` 和实际执行数量。当前 runner 会传播测试退出码；启动成功、零执行或仅窗口存在不能算场景通过。
- 视觉结论必须查看 `observe-*.png`；`shot-NN.png` 的黑帧通常只能证明窗口存在。Flutter 帧抓不到 WebView 原生纹理，正文需 `captureReaderWebView` 等对应抓图路径。
- 不最大化 `FushiGlobalLookupWindow`；它是停驻在屏外的查词窗口，并非待操作的主应用。

只报告本次场景证明的结果和缺口。同一输入状态下有效的证据可复用；完整 Release 构建或真实游戏验收按个人规则交接，不由技能自动触发。
