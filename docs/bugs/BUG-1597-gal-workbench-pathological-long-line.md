## BUG-1597 · 工作台单条超长文本导致卡顿
- **报告**：2026-08-13（用户：快进或翻历史文本后，许多台词会压成一条，工作台与切屏明显卡顿）
- **真实性**：✅ 真 bug。`texthooker_page.dart` 对每条可见行先同步调用
  `JapaneseLanguage.textToWords`，再为每个字生成 `InkWell + Text`；外部 Luna WebSocket
  没有 native 2 KiB 行槽上限，历史回放可一次送入数千字，单行即制造数千 widget。
- **[x] ① 已修复** — `texthookerLinePresentation` 按 UI 成本分三档：300 字以内
  保留逐字查词；301–800 字改为单个 `Text`；超过 800 字或 8 个换行默认折叠为
  4 行预览，可展开、可复制完整原文。轻量档完全绕过分词缓存和逐字 widget 路径，
  不改变 500 条 buffer、原文、音频或制卡状态。
- **[x] ② 已加自动化测试** — `texthooker_service_test.dart` 覆盖三档边界与多行判定；
  `texthooker_page_test.dart` 以 1000 字真实行断言轻量 widget、4 行折叠与展开恢复全文。
- **备注**：这是呈现层保险丝，不猜测文本语义，也不按标点硬拆句，避免破坏音频边界。
