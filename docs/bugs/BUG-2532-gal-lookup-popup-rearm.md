## BUG-2532 · 贴附查词在词典关闭后等待定时器恢复，期间点击透传
- **报告**：2026-09-18（用户：普通查词连续成功后偶发点击推进台词，稍后又能查词）
- **真实性**：✅ 源码确认存在恢复窗口；尚不能证明用户每次失败都来自此窗口。`fushi/windows/runner/global_lookup_window.cpp:1002` 的 `ReleaseDismissHooks` 释放 popup 的 singleton hook；旧实现没有在释放完成后唤醒 attached，依靠 `attached_text_surface_window.cpp:31` 的 500 ms health timer 恢复，期间点击可透传。错位 miss 是独立可能原因。
- **[x] ① 已修复** — 本地候选提交 `88bf7d6d93`：保留被 popup 暂占的 attached HWND 候选；popup 关闭、匹配 up 和 sampled tail 真正中性后投递 rearm 消息，attached 重走原 admission/握手/快照发布。snapshot 临时撤销不丢候选；窗口销毁退役候选；自身 Hide 不触发自唤醒。
- **[x] ② 已加自动化测试** — `attached_glyph_transaction_latch_test.cpp` 增加恢复 predicate 行为；`attached_mouse_hook_nonblocking_source_test.cpp` 检查关闭/up/ACK 与消息接线。4 个相关 native 测试通过；`low_level_mouse_hook.cpp`、`attached_text_surface_window.cpp` 单对象编译通过。
- **备注**：保留 miss 透传和完整 down/up/tail；没有增加 delay 或整块截获。纯测试与源码证据不代替游戏复测，候选仍为 `implemented_unverified`。完整 EXE 由用户构建，本轮不更新引擎支持声明。
