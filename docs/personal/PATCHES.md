# 个人补丁清单

这份清单记录个人版（`custom`）比作者（`upstream/develop`）多了哪些功能和改动、各自是什么状态，以及同步作者更新遇到冲突时怎么处理。它不求一次登记完整：先登记已知的条目，每次同步作者更新或做个人功能时，把碰到的改动补登进来。

- `pwsh -File tool/personal/flow.ps1 patches`：统计已登记条目各覆盖了多少个人改动，并按目录列出还没登记的改动（`-All` 列出全部文件）。
- `flow sync-upstream`：遇到冲突时，按这里的「同步冲突时」一栏提示处理方法；作者改到已登记条目时，会在同步报告里列出来。
- 给作者的 PR 里不许出现的个人专属路径，另见 [personal-paths.txt](../../tool/personal/githooks/personal-paths.txt)。那份清单由推送钩子检查，这里的条目只用于统计和提示。

**格式**：

- 路径列里每个模式用反引号括起来。以 `/` 结尾表示目录前缀；`*` 匹配同一层目录里的任意字符，`**` 可以跨目录；其余为精确路径。
- 状态只用这几种：`仅个人`、`已提 PR`、`已被作者收录-待退役`、`已退役`、`待核实`。
- 「同步冲突时」写清楚按什么原则处理，拿不准时写「问用户」。

## 补丁条目

| 名称 | 类型 | 状态 | 同步冲突时 | 路径 |
|---|---|---|---|---|
| 个人规则与流程 | 规则 | 仅个人 | 保留个人版，只吸收作者新增的技术事实 | `docs/personal/` `tool/personal/` `CLAUDE.md` `AGENTS.md` `docs/agent/merge-guards.md` `docs/agent/naming.md` `docs/agent/repository-map.md` `docs/agent/video-scrape.md` |
| Windows 启动器与候选构建 | 构建 | 仅个人 | 保留个人版；作者改了构建步骤时同步到启动器 | `启动Hibiki最新版.bat` `tool/build_windows_candidate.ps1` `tool/check_windows_runtime_unlocked.ps1` `tool/get_windows_build_state.ps1` `tool/get_windows_flutter_cache_state.ps1` `tool/invoke_windows_build_step.ps1` `tool/package_windows_runtime.ps1` `tool/prepare_windows_gal_helper.ps1` `tool/prepare_windows_onnxruntime.ps1` `tool/prepare_windows_sqlite3.ps1` `tool/prepare_windows_torrent_runtime.ps1` `tool/promote_windows_candidate_build.ps1` `tool/resolve_windows_build_root.ps1` `tool/verify_windows_candidate.ps1` `tool/windows_build_inputs.ps1` |
| bug 登记（与作者共用目录） | 记录 | 仅个人 | 用 tool/bug.dart check / renumber / reindex 处理编号冲突，不手改索引 | `docs/BUGS.md` `docs/bugs/` |
| 游戏内查词与校准（PR #1625） | 功能 | 已被作者收录-待退役 | 以作者版为基础，保留作者还没有的个人改进；拿不准问用户 | `fushi/lib/src/lookup/gal_*` `fushi/lib/src/ocr/gal_*` `fushi/lib/src/pages/implementations/gal_*` `fushi/windows/runner/attached_*` `fushi/test/lookup/gal_*` `fushi/test/ocr/` `fushi/test/pages/gal_*` |
| 王様 Opus 语音索引（PR #1644） | 修复 | 已被作者收录-待退役 | 以作者版为准，退役个人重复实现 | `fushi/lib/src/mining/gal_voice_dump_index.dart` `fushi/lib/src/mining/galgame_audio_source.dart` `fushi/test/mining/galgame_multi_voice_resources_test.dart` |
| hibiki/ 改名遗留目录 | 待核实 | 待核实 | 问用户 | `hibiki/` |

## 待核实事项

- `hibiki/` 下有 50 多个文件是 `custom` 独有的，其中包括 `flutter/ephemeral/.plugin_symlinks` 这类 Flutter 构建时生成的文件，看起来像应用从 Hibiki 改名为 Fushi 时误提交的遗留。在清理前要先向用户确认。
