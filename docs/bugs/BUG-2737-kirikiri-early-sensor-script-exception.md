## BUG-2737 · KiriKiri 启动并捕获时游戏弹出未处理脚本异常 CS_Timer
- **报告**：2026-09-27（用户：《王様恋愛》Ver1.00 / KiriKiri Z，从 Fushi「启动并捕获」一打开一两秒就弹 `Script exception raised / Member "CS_Timer" does not exist`，点确定游戏退出；先开游戏再附着大多正常，也有人反馈附着后同样报错。多人遇到）
- **真实性**：⚠️ 根因未确认。用户对照实验：同一启动路径关闭内嵌查词不报错、打开后一两秒报错，故与 KiriKiri 查词传感器（`kirikiri_adapter.inc` bootstrap）有关，与语音流 hook 无关。崩溃会话的 `fushi_galhook.log` 只到 mouseMove 触发的 `wrapper.identity: state=1`（无 TextRender，走经典分支），说明 bootstrap 已完整装上、崩溃发生在其后。同社《フタマタ恋愛》曾出现同一报错（[BUG-2116](BUG-2116-gal-classic-kag3-class-patch-invisible-to-instances.md)「失败的修复尝试」③），当时也未定位。候选（均未证实）：安装时机早于游戏启动脚本完成；`kag.addPlugin` 注册的裸 Dictionary 插件被游戏自有的插件广播调用。
- **[ ] ① 未修复（本轮只加诊断）** — `kirikiri_adapter.inc`：bootstrap 接管 `System.exceptionHandler` 做只读观察，未处理异常时把 `message` / `trace` / 传感器阶段同步写入 `%TEMP%/fushi-kirikiri-exception-<pid>.txt`，然后交还前任处理器或返回 false，引擎照常弹框；安装完成时记 `bootstrap.context`（`kag.inStable`、conductor 状态、插件数、`KAGPlugin` 是否存在、接缝与经典分支位）。
- **[ ] ② 未加自动化测试** — 待根因确认后按修复层补。
- **备注**：下一步由用户以原始路径复现一次，按 trace 定位第一个失败边界再修；修复须为 KiriKiri/KAG 引擎级判据，不写单游戏特判。
