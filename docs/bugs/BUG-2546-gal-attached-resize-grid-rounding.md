## BUG-2546 · 缩小游戏窗口后字格取整误报越界使高亮与查词消失
- **报告**：2026-09-19（用户：调整窗口大小后高亮消失，也无法查词）
- **真实性**：✅ 根因已由代码与合成回归确认。`fushi/windows/runner/attached_text_layout.h:299` 的 `ResolveBodyRect` 将两端分别四舍五入；OCR 校准保存的一个像素余量缩小后不足一像素，可能把实际能容纳 288.48 像素字格的区域压成 288 像素。`BuildCellGrid` 随即返回 `grid_overflow_body_rect`，贴附层清空命中；已有现场记录中 provider 认领仍在。
- **[x] ① 已实现候选** — body 左上向下、右下向上取整，保持归一化区域的外接整数矩形；原始列容量、续行缩进与换行规则不变。排版在取整前继续检查 double 边界，不能靠四舍五入掩盖真实越界。尺寸/几何变化沿已有 `SyncToTarget` 路径重新标记布局，不新增定时重试。源码提交见本批交接。
- **[x] ② 已加自动化测试** — `fushi/windows/runner/tests/attached_text_layout_test.cpp` 覆盖同一 profile 的 1000×600 → 500×300 → 655×393 → 750×450 → 原尺寸、字符索引/行号/缩进稳定，以及水平/垂直亚像素真越界拒绝。MSVC `/W4 /WX` 编译通过，最终 34 cases passed，日志 `.codex-test/round13-resize-native-final.log`。
- **备注**：源码与离线验证不代表实际游戏已验收。游戏改变排版方式、内容宽高比或真正放不下时不能强行沿用；用户需在本轮一次编译后检查原窗口和超分开关。
