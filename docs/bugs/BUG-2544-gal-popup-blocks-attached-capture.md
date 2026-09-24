## BUG-2544 · 词典占用鼠标时贴附层拒绝制卡截图

- **报告**：2026-09-19，用户在普通贴附查词弹窗中制卡时出现 `the attached glyph surface is no longer current`。
- **根因确认**：现场日志在失败前记录 `mouseHookBusy / low_level_mouse_arm_failed:singleton_owned_by_other_hwnd`。`attached_text_surface_window.cpp` 在词典窗口持有单例鼠标 Hook 时隐藏字框、保留当前配置与正文；`GalAttachedTextController.acquireMiningCaptureLease` 却只接受 activeAttached（另有后台校准例外），错误地把输入准入与截图隐藏屏障绑定。
- **[x] ① 修复** — 只为有有效 profile、已认领、已隐藏、非实时校准的上述确切状态允许发起截图屏障。仍要求当前目标、正文 generation 已同步，且 native 确认相同 epoch/generation/token；随后由既有 composite lease 隐藏词典卡片。其他 Hook 错误、最小化、窗口失效、并发采集及未同步的新句仍拒绝。
- **[x] ② 自动化测试** — `fushi/test/lookup/gal_attached_text_controller_test.dart` 验证词典占用时可获取并释放精确 token，重复采集拒绝，其他 Hook 错误及换句未同步拒绝。该套件 65 项通过。原有 `gal_attached_capture_suppression_contract_test.dart` 与样本/工作台/overlay 的 49 项定向套件通过（无重叠）。

**候选提交**：`cc923a9f55`，独立审查完成。

**证据边界**：源码根因和合成回归已确认；没有操作真实游戏或写入 Anki 卡片，用户原始制卡路径仍待本批候选一次实机验收。实际 EXE 提交未从截图推断。没有改变点击吞吐、输入准入或引擎支持状态。
