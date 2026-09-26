## BUG-2547 · 贴附查词弹窗混用游戏和主窗口DPI导致偏移与遮挡
- **报告**：2026-09-19（用户：校准层查词弹窗位置不合理，希望复用已有内嵌定位）
- **真实性**：✅ `AttachedTextSurfaceWindow::EmitLookupEvent` 提供呈现画面的物理屏幕矩形，旧 `FlutterWindow::RegisterGalHookTextChannel` 按目标窗口 DPI 转成逻辑单位；DPI-unaware 游戏可返回 96，而 `GlobalLookupController._lookupExternal` 又乘主窗口 DPR。已有日志中 `(1401,1374,44×39)` 被乘 1.75 后将落点算到 `(2452,2480)`。同时 attached 使用 desktop route，旧根卡没有 word anchor，也未将游戏呈现视口传给既有避让算法。
- **[x] ① 已实现候选** — native 随当前命中冻结物理字框与 `destination_viewport_screen`，沿 typed hit → attached controller → 现有 global lookup 传递不可变参数。物理坐标直接进入 `showAt`，用该显示器回报的 DPR 转换根卡 CSS anchor；视口大小与相对原点传入已有 `computeFrameRect`，复用上下避让和边缘约束。旧浮窗逻辑矩形兼容，普通桌面查词不继承 galCard 的尺寸上限或视口。源码提交和最终验证见本批交接。
- **[x] ② 已加自动化测试** — channel 测试验证负屏幕坐标、逻辑/物理矩形分离与无效几何拒绝；跨语言守卫覆盖 native 呈现视口到实际 attached 查词入口的接线。popup/controller 与相邻点击/尺寸套件 45 项通过，追加旧浮窗兼容及接线守卫 14 项通过；不将交叉套件相加。三个 runner 对象 `/W4 /WX` 定向编译通过。
- **备注**：新增 `gal_attached_popup_placement_test.dart` 走真实 controller 的 start/lookup/render 路径，mock 原生通道；覆盖主窗 DPR 1.75、呈现屏 DPR 1.5、负屏幕原点、根卡避让与后续普通查词不继承残留尺寸限制。本批独立审查未发现明确 P0–P2 回归，最终验证见 [当前交接](../personal/archive/GAL_LOOKUP_HANDOFF.md)。完整应用构建、原游戏显示器上的避让/点击以及 Magpie 实机验收由用户集中执行；未以离线结果宣称上屏已验收。
