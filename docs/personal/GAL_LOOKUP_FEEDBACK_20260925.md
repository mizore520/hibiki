# 游戏内查词优化：本轮问题清单与交接

更新：2026-09-25。当前阶段：五条问题已统一修改并完成定向验证，候选等待用户编译复测；未合入 `custom`，未推送。

## 基线

- 候选工作区 `.worktrees/gal-lookup-optimize-20260925`，分支 `codex/gal-lookup-optimize-20260925`，起点 `custom` 的 `47396e2a2c`（已含 2026-09-24 采用的查词校准，见 [交接单](GAL_LOOKUP_HANDOFF.md)）。
- 最终目标：把查词改动更新到作者仓库的草稿 PR hajisensai/Fushi#1625（头分支 `origin/codex/attached-lookup-author-pr-20260923`，基于 `upstream/develop` 的 `bc11e91117`）。
- PR 分支与 `custom` 不同：`custom` 另含个人 Hook、漫画 OCR、Anki 查重等内容，同名文件也有差异。本轮查词改动与个人内容分开提交；搬运时只挑查词提交，在 PR 分支上单独核对编译与定向测试。
- 推送 PR 分支、合入 `custom` 各自需要用户单独同意。

## 问题与处理

| # | 现象 | 处理 | 提交 | 状态 |
| --- | --- | --- | --- | --- |
| 1 | 校准界面不好看（截图 `.codex-test/gal-lookup-feedback-20260925/1.webp`、`2.webp`） | 对话/旁白切换移到顶栏；右侧按「① 框选 → ② 自动对齐」排列，说明文字改为小号灰字；删掉画布下方重复的说明块，改为一行状态；提示改成信息条；「游戏校准」改为实心按钮；空状态加图标和「采集当前台词」按钮；修正提示里把橙框写成「黄框」的错误 | `71e6ddcd72` | 已写代码，测试截图自查；待用户看实际效果 |
| 2 | 去掉「只用「」内台词」开关 | 查词层本来就使用经过作者文本处理后的台词，所以作者的「只保留「」内的文本」和正则替换可以替代这个开关。开关和文案已删除；校准页打开时一律关闭该设置，重新校准并应用后清掉；已保存档案在重新校准前保持原样 | `c4f030386a` | 已写代码，定向测试通过 |
| 3 | 关闭查词窗口后点击时灵时不灵（[BUG-2674](../bugs/BUG-2674-gal-lookup-click-after-popup-ignored.md)） | 日志显示关闭窗口后要 0.3～2.9 秒才能重新点击，卡在输入拦截的重新握手上。握手原来只靠 500 ms 定时器推进，改为等待期间每 16 ms 检查一次，并记录每次等待的时长和原因 | `5c24144040` | 已编译，未实机验证 |
| 4 | 快速翻页后新台词暂时没有查词（[BUG-2675](../bugs/BUG-2675-gal-lookup-hidden-after-fast-advance.md)） | 日志里有一次没有弹窗、同样卡在握手上的 2 秒等待，很可能与第 3 条同源，同一处修改覆盖；根因未完全确认 | `5c24144040` | 待复测确认 |
| 5 | 自带换行的游戏，长句超出校准宽度后对不上（[BUG-2676](../bugs/BUG-2676-gal-lookup-hook-linebreak-width.md)） | 校准时如果证明游戏的换行都来自 Hook 文本，就在档案里记下；运行时所有句子只按 Hook 换行，行宽和行数放宽到游戏画面边缘。旧档案行为不变，需要重新校准一次 | `fb69c2588b`、`c6499c08b3` | 已写代码，native 与 Dart 定向测试通过；未实机验证 |

## 候选 `254c741d7b` 复测反馈（收集中）

| # | 现象 | 已核实 | 状态 |
| --- | --- | --- | --- |
| 6 | 游戏已附着、台词正常获取，但在对话校准里采集样本报「当前没有可采集的台词」（截图 `.codex-test/gal-lookup-feedback-20260925/4.webp`） | 既有问题，不是本轮引入。日志显示档案模式是 `auto`；采集前提 `canCaptureCalibrationSample` 和 `_calibrationCaptureSnapshot` 都要求 `calibrationManuallyEnabled`（只有「仅校准层」模式才成立，`gal_attached_text_controller.dart:363`、`:387`），而工作台在 `auto` 模式下也显示校准入口（`gal_attached_lookup_workbench.dart` 注释写明自动模式也要能准备样本）。两处规则互相矛盾；被拒绝时统一显示成 sourceNotReady 的文案，把真正原因藏住了。另需一起查：Fushi 在前台时，如果状态停在 `shieldHandshakePending`，而不是 `targetBackground`，也会被同一条件拒绝 | 已定位，待统一修改；临时绕过：模式切到「仅校准层」再采集 |
| 7 | 手动排版里的「调整格宽」滑条太灵敏，稍微一动数值就变很多；希望可调范围小一点、调得更精细（截图 `5.png`） | 滑条两端是 15%～200%（`GalLookupCharacterAdvanceV1.minAdvanceRatio` / `maxAdvanceRatio`，`gal_lookup_samples_dialog.dart` `_gridAdvanceControl`）。内部步长虽然是 0.05%，但约 185% 的范围摊在三百来像素宽的滑条上，鼠标移动一像素就差零点几个百分点；界面又只显示整数百分比，看不出细调的结果。修改方向：滑条范围收窄到当前值附近，显示一位小数，另加可逐步微调的加减按钮或方向键 | 待统一修改 |
| 8 | 「调整格宽」往大拉到一定程度后格子消失，再往小拉也不回来；拉大再拉回同一个显示数值，框的位置和原来对不上 | 源码确认（`gal_lookup_samples_dialog.dart` `_setGridAdvanceRatio`）：每次调整都按格宽的增量去改蓝框右边缘，而右边缘被截在截图边缘（`clamp(..., 1.0)`）。到边缘后格宽继续变大，字格超出蓝框，原生预览拒绝（越界），格子消失。往回拉时，蓝框从被截住的宽度按增量回缩，被截掉的那段不会补回来，所以数值相同但蓝框更窄，格子仍然越界或位置偏移。界面只显示整数百分比，也会掩盖内部数值已经不同。修改方向：蓝框宽度每次都由格宽和每行格数直接算出，不再累加增量；格宽上限按截图边缘限制，拉不出画面；与第 7 条一起改 | 已定位，待统一修改 |
| 9 | 顶部提示「大致框住正文，自动测量字距、行距和换行。已有训练样本会共同参与，验证样本用于检查结果。」让人看不懂（截图 `6.png`） | 后半句来自旧的多句样本设计。现在对话 / 旁白校准每类只存 1 张截图（`GalLookupCalibrationDraft.maxSamplesPerSlot = 1`），界面上也没有标记训练 / 验证的入口，这半句描述的是用户看不到的功能（`game_lookup_samples_auto_hint`）。修改方向：改成符合当前单图流程的说明，并排查同一界面里其他「训练 / 验证 / 多样本」的旧说法（如 `auto_all_hint`、`fit_all` 等在单图模式下是否还会出现） | 待统一修改 |
| 附 | 复测日志新线索 | `gal-shield:` 记录显示握手等待中 `ack_wait` 稳定在约 219 ms，`neutral_wait` 为 281～953 ms。native 在 12:14:16.5 左右已恢复 `visible`，但 Dart 端直到 12:14:18.09 才记为 `activeAttached`，两边相差约 1.5 秒，这可能是第 3/4 条剩下的另一段延迟，需在统一修改时核对 Dart 何时收到 native 状态 | 待查 |

## 验证证据

- native（MSVC /W4 /WX）：`attached_text_surface_window.cpp`、`global_lookup_window.cpp`、`flutter_window.cpp` 编译通过；`attached_text_layout_test` 40 cases、glyph latch、bitmap bounds、mouse hook / overlayability / shield policy 源码守卫全部通过。
- Dart：查词、校准、OCR、texthooker、Hook 会话相关 1250 项中 1247 项通过（`.codex-test/lookup-round-20260925-tests.log`）。失败的 3 项（`gal_attached_popup_placement_test`、`global_lookup_hotkey_guard_test` 的整句横幅用例、`texthooker_char_level_lookup_guard_test`）在基线 `custom@47396e2a2c` 上同样失败，与本轮无关。`bugs_per_file_guard_test` 报历史撞号 BUG-2257，也是既有问题。
- 界面效果只有测试环境渲染截图（位于会话临时目录），不等于实机观感。
- 本轮没有做独立审查：上一轮用户要求不再使用子代理。握手检查频率、Dart↔native 档案字段属于第 7 节要求审查的范围，合入前需要用户决定是否补审查。

## 复测清单（用户编译后）

1. 校准界面：打开对话校准，看整体布局、对话/旁白切换、空状态和按钮是否顺眼好用。
2. 去掉开关后：如果 Hook 文本里带人名等多余内容，用台词工作台的文本处理规则（正则替换）去掉，并保留游戏画面上显示的「」，然后重新校准。
3. 点击：连续点不同的词、关闭再点，看是否每次都能弹出。
4. 快速翻页：连续快速点击翻页，看新台词的高亮是否马上出现。
5. 自带换行的游戏（如超时空恋人）：用一张两行、靠 Hook 换行的截图重新校准，再看更长的台词和三行以上的台词能否对上。
6. 遇到问题时记个大概时间。日志 `%TEMP%\hibiki_glookup.log` 里新增的 `gal-shield:` 行会记录每次握手等了多久、卡在哪一步。
