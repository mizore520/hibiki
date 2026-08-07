## BUG-1459 · 查词窗口 Alt+滚轮词条定位与顶部回退
- **报告**：2026-08-07（用户：）
- **真实性**：✅ 真 bug；`hibiki/assets/popup/popup.js:3202-3210` 原先使用 `scrollIntoView({ block: 'nearest' })`，词条标题已经滚出视口时只做最小滚动，长词条会停在释义中段。`hibiki/assets/popup/popup.js:3250-3271` 原先在首条继续向上直接返回 `blocked`，无法回到包含搜索框等内容的页面真正顶部。
- **[x] ① 已修复** — `applyCurrent` 改为以词条开头为目标的 `block: 'start'`，并保留浏览器对正常最大 `scrollTop` 的夹紧；首条继续向上时清除当前词条状态并将实际滚动面滚到 `(0, 0)`。提交：`1244e4030`。
- **[x] ② 已加自动化测试** — `hibiki/test/reader/popup_entry_navigation_behavior_test.js` 及其 Dart 包装测试覆盖词条开头对齐、首条回到真正顶部、顶部向下重新进入首条，以及末条不制造额外底部滚动范围；同时运行了现有 Alt+滚轮相关测试和 popup.js parity guard。
- **备注**：共享的三个 `popup.js` 镜像保持同步。静态检查与相关 Flutter 测试已通过；本机 Windows release 构建在原生 CMake/MSBuild 阶段超时，尚未生成候选 EXE，因此仍需在 Windows 实际 UI 中重点确认长词条、底部夹紧、首条回顶后再向下、以及手动滚动后继续 Alt 导航。
