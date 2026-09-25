## BUG-2681 · 王様恋愛导出的 Opus 语音未进入资源索引

- **报告**：2026-09-25（用户：游戏台词 Hook 和内嵌查词正常，Fushi 没有语音；用户确认游戏内该句有配音）
- **真实性**：✅ 真 bug。当前《王様恋愛》Ver1.00 是 x86 KiriKiri Z 1.3.3.7；Hook 已从 `voice.xp3` 导出本会话 5 个 `.opus` 和 1 个 `.ogg`，其中 2 个 `.opus` 带文本事件 ID。`fushi/lib/src/mining/gal_voice_dump_index.dart:852` 的文件分类漏掉 `.opus`，使其无法进入语音索引；`fushi/lib/src/mining/galgame_audio_source.dart:2604` 的资源 ID 回查也拒绝 `.opus`，导致试听和制卡取不到已导出的原声。
- **[x] ① 已修复** — 候选提交 `cb3db68f33`：将 `.opus` 纳入 Ogg 类资源索引与资源 ID 回查，不改 Hook、台词选择和现有配对判据。
- **[x] ② 已加自动化测试** — `fushi/test/mining/galgame_multi_voice_resources_test.dart` 覆盖实际目录扫描、事件 ID 与无标记资源、BGM/其他事件隔离、试听路径与制卡转码调用；连同 `gal_voice_dump_index_test.dart` 共 38 个定向测试通过，改动文件 `flutter analyze --no-pub` 通过。
- **备注**：已用随包 FFprobe 确认现场 `.opus` 是 Ogg/Opus（48 kHz、单声道），随包 FFmpeg 解码和编码为 AAC 均退出 0；这些只证明资源可消费。当前候选尚未在原始游戏路径完成“显示台词 → 听到对应语音 → Fushi 试听 → 真卡写入”的实机验收，也不升级引擎支持状态。游戏 EXE SHA-256：`E8491038F517D84709DFC59D4A65FC5CF0FA922F701E0D5688A314EC0D6BEAE5`。
