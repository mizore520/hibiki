## BUG-1593 · 词条逐个 findNotes 查重导致已制卡标记延迟
- **报告**：2026-08-10（用户：点开单词后，已制卡的勾有时要慢一两秒才出现，希望提高查重速度）
- **真实性**：✅ 真 bug。弹窗对每个词条分别调用 `AnkiConnectRepository.isDuplicate`，修复前该方法逐条进入 `findNotes` 字段搜索。用户当前 `deckRoot` 配置下，本机只读实测单次 `findNotes` 约 0.61-0.64s；10 个并发请求被 Anki 顺次处理，最后一个约 5.57s 才结束。相同配置改用 AnkiConnect 原生、按首字段校验和索引的 `canAddNotes` 后，单条及 10 条批量均约 27-30ms。弹窗本身不等它，但 ✓/+ 徽章会明显晚出现。
- **[x] ① 已修复** — `packages/fushi_anki/lib/src/ankiconnect/ankiconnect_service.dart:395-443` 新增批量 `canAddNotes` 查重并反转其「可添加」结果为「已重复」语义；`packages/fushi_anki/lib/src/ankiconnect/ankiconnect_repository.dart:999-1071,1074-1139` 用 8ms 汇合窗跨全新 repository 实例收集同一弹窗的查询，相同词只查一次、整批只发一个 HTTP。卡组 / 根卡组 / 全收藏集范围和跨笔记类型语义沿用 `addNote` 的同一组选项；查不到或断线仍按原逻辑 fail-soft 并保留 30s 不可达冷却。
- **[x] ② 已加自动化测试** — `packages/fushi_anki/test/ankiconnect_service_test.dart:300-379` 验证批量请求形状、范围、布尔方向、空批次和畸形响应；`packages/fushi_anki/test/ankiconnect_duplicate_batch_test.dart:46-95` 验证三个独立 repository 调用（含重复词）只产生一次 HTTP、两条 note，并得到逐词正确结果；既有断线冷却 5 项继续通过。
- **备注**：需要真实 Fushi 弹窗验收 ✓ 出现速度；自动化测试证明请求从 N 次 `findNotes` 变为 1 次 `canAddNotes`，但不能替代用户当前 Anki 收藏集与 WebView 桥的端到端体感。
