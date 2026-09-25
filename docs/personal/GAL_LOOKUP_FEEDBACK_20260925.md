# 游戏内查词优化：本轮问题清单与交接

更新：2026-09-25。当前阶段：查词改动已推送到 hajisensai/Fushi#1625 并改为可审查（见文末「PR #1625 更新结果」）；本分支另有审查后的修复提交，**未合入 `custom`**（需用户单独同意）。第 13 条（BUG-2680）暂缓。

## 基线

- 候选工作区 `.worktrees/gal-lookup-optimize-20260925`，分支 `codex/gal-lookup-optimize-20260925`，起点 `custom` 的 `47396e2a2c`（已含 2026-09-24 采用的查词校准，见 [交接单](GAL_LOOKUP_HANDOFF.md)）。
- 最终目标：把查词改动更新到作者仓库的草稿 PR hajisensai/Fushi#1625（头分支 `origin/codex/attached-lookup-author-pr-20260923`，基于 `upstream/develop` 的 `bc11e91117`）。
- PR 分支与 `custom` 不同：`custom` 另含个人 Hook、漫画 OCR、Anki 查重等内容，同名文件也有差异。本轮查词改动与个人内容分开提交；搬运时只挑查词提交，在 PR 分支上单独核对编译与定向测试。
- 推送 PR 分支、合入 `custom` 各自需要用户单独同意。

## 第一轮（候选 `254c741d7b`）

| # | 现象 | 处理 | 提交 | 状态 |
| --- | --- | --- | --- | --- |
| 1 | 校准界面不好看（截图 `.codex-test/gal-lookup-feedback-20260925/1.webp`、`2.webp`） | 对话/旁白切换移到顶栏；右侧按「① 框选 → ② 自动对齐」排列；删掉画布下方重复说明；提示改成信息条；空状态加采集按钮 | `71e6ddcd72` | 用户已看过新界面，未提出反对；文案在第二轮继续修改 |
| 2 | 去掉「只用「」内台词」开关 | 查词层本来就使用经过作者文本处理的台词，开关和文案已删除；重新校准并应用后清掉旧设置 | `c4f030386a` | 已写代码，定向测试通过 |
| 3 | 关闭查词窗口后点击时灵时不灵（[BUG-2674](../bugs/BUG-2674-gal-lookup-click-after-popup-ignored.md)） | 握手等待期间改为每 16 ms 检查一次，并记录每次等待 | `5c24144040` | 复测日志显示关窗后恢复从 0.3～2.9 s 降到 0.05～0.12 s；仍有点击丢失，见第二轮 |
| 4 | 快速翻页后新台词暂时没有查词（[BUG-2675](../bugs/BUG-2675-gal-lookup-hidden-after-fast-advance.md)） | 同第 3 条 | `5c24144040` | 待复测确认 |
| 5 | 自带换行的游戏，长句超出校准宽度后对不上（[BUG-2676](../bugs/BUG-2676-gal-lookup-hook-linebreak-width.md)） | 校准证明游戏靠 Hook 换行时记入档案；运行时只按 Hook 换行，行宽和行数放宽到画面边缘 | `fb69c2588b`、`c6499c08b3` | 未实机验证；需在这类游戏重新校准 |

## 第二轮（候选 `254c741d7b` 复测反馈）

| # | 现象 | 根因与处理 | 提交 | 状态 |
| --- | --- | --- | --- | --- |
| 3 补 | 点字仍会时灵时不灵；用户怀疑是「后端还没查到词」 | 日志否定：查词本身只要 8～50 ms。真正原因：点击后游戏那边约 200 ms 才确认，这段时间里的例行状态检查把「等确认」误判为握手丢失，隐藏查词层并取消进行中的点击，点击被吞掉却没有查词。现在自己的点击等确认时保持原样；同一个字上按下、松开即算点击，拖动判定用完整的 DPI 拖动距离；每次丢弃都写明原因（`gal-click: dropped reason=…`） | `662a27d4f2` | 已编译、源码守卫测试通过；未实机验证 |
| 6 | 自动模式下采集报「没有可采集的台词」（[BUG-2677](../bugs/BUG-2677-gal-calibration-capture-refused-auto-mode.md)，截图 `4.webp`） | 既有问题：采集和应用都要求「仅校准层」模式，与工作台入口矛盾。现在截图校准在自动和仅校准层模式都可用，实时点击校准仍只在仅校准层模式；查词层未就绪时改报真实原因 | `39aad348ea` | 定向测试通过；未实机验证 |
| 7、8 | 格宽滑条太灵敏；拉大后格子消失、拉回位置对不上（[BUG-2678](../bugs/BUG-2678-gal-grid-width-slider-drift.md)，截图 `5.png`） | 蓝框宽度改为按「基准 + 格宽变化」直接计算；滑条范围为基准上下 15 个百分点，并以截图边缘为限；步长 0.1%，显示一位小数，加 − / + 按钮 | `69b73ceba2` | 定向测试通过；待用户试手感 |
| 9、10 | 文案看不懂、与界面不符（截图 `6.png`、`7.png`） | 通查查词与校准文案：删掉旧的多样本说法，改为提示选两行以上的台词；控件名与界面一致；失败提示写明原因和下一步；去掉「探针 / 字形 / 拟合」等术语；「游戏校准」改为「应用到游戏」。只改文案值，不改 key；其他语言只替换仍为英文占位的条目，繁体另写 | `4265b9fa64` | 已完成；40 条已无代码引用的旧文案未动 |
| 11 | 查词窗口里第一次点制卡失败（[BUG-2679](../bugs/BUG-2679-gal-first-mine-capture-refused.md)） | 既有问题（9-19、9-24 也出现过）：点制卡本身会让拦截进入短暂过渡状态，制卡截图只接受两种状态，撞上过渡状态就被拒。现在这两种过渡状态也允许截图，真实故障仍拒绝 | `8bea7d01a0` | 定向测试通过；未实机验证 |
| 附 | Dart 比 native 晚约 1.5 s 记为可用 | Dart 收到 native 的「可见」事件后会立即更新状态；该日志行由另一条同步流程打印，时间偏晚，属于记录时机，不是查词闸门。新的 `(host)` 丢弃日志会在 Dart 真因状态拒绝点击时写出原因，复测可验证 | — | 判断为日志时机，待复测日志确认 |

## 第二个候选 `0fb9519824` 复测反馈（第三轮）

| # | 现象 | 已核实 | 状态 |
| --- | --- | --- | --- |
| 12 | anemoi（SiglusEngine）在「自动」模式下采集，提示「查词层正在切换状态……请重新附着游戏」（截图 `8.webp`、`9.webp`） | 日志 13:56:17～13:56:25 三次 `calibration_sample failed category=surfaceNotReady … surfaceStatus=activeNative`：自动模式下这款游戏使用引擎原生字位置（`activeNative`），`canCaptureCalibrationSample` 不接受该状态，于是被归为 `surfaceNotReady`，套用了本轮新加的「正在切换状态」文案，是误导。用户此前在「仅校准层」模式下已成功采集和校准（档案 3 份）。这不是故障，而是第二轮新文案覆盖不全，以及复测说明没有区分引擎原生游戏。修改方向（倾向 1）：① `activeNative` 时也允许采集和应用，结果作为引擎位置不可用时的备用，窗口里说明这一点；② 或者不允许，但如实提示「由引擎提供字位置，无需校准；如需校准请切到仅校准层」。**用户选择方案 ①**：允许采集和应用，作为备用；用户确认切到「仅校准层」后能正常采集和校准。`3b43205060`：`activeNative` 时允许采集和应用，窗口加注备用说明（记在 [BUG-2677](../bugs/BUG-2677-gal-calibration-capture-refused-auto-mode.md)） | 已写代码，定向测试通过；未实机验证 |
| 13 | ディメンション凸ラバース!!（Pal）里点制卡仍报 `the attached glyph surface is no longer current`，制卡不了（截图 `10.webp`） | 日志：14:49:26 校准采集进入 `captureSuppressed`；14:51:15、14:51:19 两次制卡失败；14:52:14 同样状态下成功。三次制卡前的 Dart 状态相同，都是 `suspended/low_level_mouse_arm_failed:singleton_owned_by_other_hwnd`，这个状态第二轮已经放行，所以拒绝来自 `acquireMiningCaptureLease` 的其他条件：`_activeCaptureLease != null`、`_sentSourceText != _latestSourceText`、`_activeVariant == null`、`!_attachedProviderClaimed`、`generation <= 0`，或 native `suspendForCapture` 返回失败后释放；这些条件都不写原因。最可疑的是校准采集的租约没有及时释放：`_releaseMiningCaptureLeaseOnce` 要先循环 `_pushText` 把最新台词送到查词层，Fushi 在前台（目标在后台）时，这一步可能要等状态变化才完成，期间 `_activeCaptureLease` 一直非空。旁证：14:51:47 新加的 host 日志记录 `dropped reason=status_suspended/state_event_layout_pending`，说明应用新档案后，变体切换也有一段未就绪期。修改方向：先给租约拒绝和释放写原因日志，再查清租约为何没释放、变体未就绪期是否影响截图，从根上修 | 已缩小范围，具体原因待日志确认。**用户决定本轮先不修**，登记为 [BUG-2680](../bugs/BUG-2680-gal-mine-lease-refused-after-calibration.md)；租约释放未完成的猜测已排除（校准采集成功，说明租约已释放） | 暂缓 |

## 验证证据

- native（MSVC /W4 /WX）：`attached_text_surface_window.cpp`、`global_lookup_window.cpp`、`flutter_window.cpp` 编译通过；`attached_text_layout_test` 40 cases、glyph latch、bitmap bounds、mouse hook / overlayability / shield policy 源码守卫全部通过。
- Dart：查词、校准、OCR、texthooker、Hook 会话、i18n 相关 1288 项中 1285 项通过（`.codex-test/lookup-round2-20260925-tests.log`）。失败的 3 项（`gal_attached_popup_placement_test`、`global_lookup_hotkey_guard_test` 的整句横幅用例、`texthooker_char_level_lookup_guard_test`）在基线 `custom@47396e2a2c` 上同样失败，与本轮无关。`bugs_per_file_guard_test` 报历史撞号 BUG-2257，也是既有问题。
- 第三轮（`3b43205060`）：改动 Dart 文件静态分析无问题；查词、校准窗口、工作台、i18n 相关测试 1060 项中 1058 项通过，失败的 2 项即上面列出的基线既有失败。
- 界面只有测试环境渲染截图（位于会话临时目录），不等于实机观感。
- 三轮都没有做独立审查：用户此前要求不再使用子代理。点击拦截时序、Dart↔native 档案字段、截图租约条件都属于第 7 节要求审查的范围，合入前需要用户决定是否补审查。

## 复测清单（第三个候选）

1. 点击：在一句台词里连续点不同的字，点完关窗马上再点；看是否每次都弹。
2. 快速翻页：连续快速翻页，看新台词的高亮是否马上出现。
3. 制卡：在查词窗口里直接点制卡（刚校准完的情况属于暂缓的 BUG-2680，可先绕开）。
4. 校准：模式保持「自动」，在リトルバスターズ（校准层）和 anemoi（引擎位置，会显示「备用」说明）里都采集并应用一次。
5. 格宽：在手动微调里试滑条和 − / + 按钮；拉到最大再拉回原值，蓝框应回到原位。
6. 文案：浏览校准窗口里的提示，看是否好懂。
7. 自带换行的游戏（如超时空恋人）：用两行、靠 Hook 换行的截图重新校准，看长句和三行以上的台词能否对上。
8. 遇到问题记个大概时间。日志 `%TEMP%\hibiki_glookup.log` 里的 `gal-click: dropped` 行会写明每次点击被丢弃的原因，`gal-shield:` 行会写明握手等了多久。

## 交给新会话：更新草稿 PR hajisensai/Fushi#1625

用户 2026-09-25 表示候选 `8df25a14c2` 可以了，要在新会话里把查词改动提交到草稿 PR。推送 PR 分支、把 PR 从草稿改为可审查、合入 `custom`，都属于第 6 节需要逐项确认的动作；新会话动手前先向用户确认这三件事分别要不要做。

**要搬的查词提交**（按顺序；都来自本分支，均不含个人文档）：
`5c24144040` 握手等待按帧检查 → `fb69c2588b` Hook 换行档案 → `c6499c08b3` projection 小重构 → `c4f030386a` 去掉「」开关 → `71e6ddcd72` 校准界面 → `662a27d4f2` 点击在确认期不被取消 → `8bea7d01a0` 制卡截图过渡状态 → `39aad348ea` 自动模式可校准 → `69b73ceba2` 格宽滑条 → `4265b9fa64` 文案 → `3b43205060` 引擎位置时的备用校准。
bug 记录提交 `e219c18dad`、`d3b8592472`、`3c927113f4` 是否随 PR 提交由用户决定；带上的话，先在 PR 分支上跑 `dart run tool/bug.dart check`，检查与上游是否撞号。

**已做的试搬**（2026-09-25，临时工作区，未推送，已删除）：从 `origin/codex/attached-lookup-author-pr-20260923` 依次 cherry-pick。前 3 个直接成功；从 `c4f030386a` 起，只有 `fushi/lib/i18n/` 下的语言 json 和生成的 `.g.dart` 冲突，其余代码文件全部干净应用。多语言冲突不要逐行合并，按下面的操作在 PR 分支上重做：
1. 代码部分照常 cherry-pick；遇到多语言冲突时，把 `fushi/lib/i18n` 恢复为 PR 分支的版本再继续。
2. 在 PR 分支上执行等价的 key 操作：`dart tool/i18n_sync.dart --remove game_lookup_samples_quoted_text_only --remove game_lookup_samples_quoted_text_only_hint --remove game_lookup_samples_current`；然后 `--add` 新增 `game_lookup_samples_capture_surface_not_ready`、`game_lookup_samples_grid_advance_decrease`、`game_lookup_samples_grid_advance_increase`、`game_lookup_samples_native_fallback_hint`（英文和中文文本取本分支 `strings.i18n.json` / `strings_zh-CN.i18n.json` 的值），最后 `--sort`。
3. 文案改写：运行 `.codex-test/gal-lookup-feedback-20260925/copy_update.dart <fushi/lib/i18n 目录>`，再对繁体文件运行 `copy_hk.dart`，并把 `native_fallback_hint` 的繁体手动补上（与本分支 `strings_zh-HK.i18n.json` 一致）；把「黄框 / yellow frame」改成「橙框 / orange frame」，把「Align from this screenshot」改成「Align current screenshot」（见 `4265b9fa64`、`71e6ddcd72`）。
4. `dart run slang`。生成文件不要跑 `dart format`：仓库里的生成文件本来就没格式化，格式化会产生几十万行无关差异。完成后对比本分支，确认这些 key 的值一致。

**推送前的验证**（第 5 节「合并、推送」档）：
- `upstream/develop` 已比 PR 基线 `bc11e91117` 新 6 个提交；由用户决定是否先 rebase。
- 含测试的全量 `flutter analyze`；本表列出的定向测试（lookup、ocr、校准窗口、工作台、texthooker、Hook 会话、i18n、`bugs_per_file_guard`），以及 native 的 `attached_text_layout_test` 和源码守卫测试。在 `custom` 上有 3 项既有失败（`gal_attached_popup_placement_test`、`global_lookup_hotkey_guard_test` 整句横幅、`texthooker_char_level_lookup_guard_test`），在 PR 分支上要分别核对：它们是 PR 分支本来就有的，还是 custom 特有的。
- 用户最好在 PR 分支上完整编译一次再推送；本分支的实机复测只覆盖 `custom` 候选。
- 第 7 节要求的独立审查三轮都没做（用户此前要求不用子代理）；推送前让用户决定是否补。

**PR 描述要点**：说明每项改动的原因和证据（BUG-2674～2679）；已知未解决 BUG-2680（校准后制卡截图租约被拒，用户决定暂缓）；实机验收状态如实写「用户在 custom 候选上复测，未在 PR 分支上实机验证」。PR 描述结尾按会话要求加署名行。

**遗留**：`.worktrees/_tmp-pr-dryrun` 是试搬留下的空文件夹，已从 git worktree 注销；本会话结束后可以直接删除。

## PR #1625 更新结果（2026-09-25）

- 已推送 `origin/codex/attached-lookup-author-pr-20260923` = `2049f5a922`（用户同意 rebase 后 force-push），PR 已由草稿改为可审查，描述已更新。基线 `upstream/develop` `3d5d1608ed`，共 21 个提交。工作区 `.worktrees/gal-lookup-pr1625`。
- 搬运方式：i18n 逐提交按 key 重放（`i18n_sync` 增删 + 逐语言值复制），不 `--sort`，生成文件格式化——上游 json 不按字母排序、`strings.g.dart` 是格式化过的单文件，交接单原先的"--sort / 不格式化"做法在上游会产生几十万行无关差异。试搬漏掉的 `game_lookup_samples_hint`、`game_lookup_samples_auto_align` 已补。本批 608 个（语言, key）值与本分支一致。
- 独立审查两轮（opus）。第一轮确认 2 个代码问题并已修：等确认时保持查词层要核对 LL 事务仍存活（且先读 LL、再读共享内存）；实时校准蹭到相邻字时记按下的字。本分支对应 `f8bad47844`、`2f9e056587`，文档 `294cf7f7f0`、`ade2ed734d`。其余建议写进 PR 描述"已知边界"（Hook 换行判定偏宽、旧「」设置被静默清除、自动模式开放校准、旧版本不能读新档案字段）。
- PR 独有提交：更新首批提交后没同步的两条守卫测试（`ce04f2f2e5`）；bug 记录改用 PR 分支提交号并删个人流程用语（`3bc0299fa0`）。
- 验证：全量 `flutter analyze`；定向测试 1863 项（2 项守卫已修）；native 13 测试 + 4 个 TU `/W4 /WX`；helper 双架构 ctest 113/117；用户在 PR 分支 Release 本地包上试用"没啥问题"。
- 本地 Release 构建要点（仅本机，未提交）：`gen_snapshot` 在上游单文件 `strings.g.dart` 上栈溢出，需临时在 `fushi/slang.yaml` 加 `output_format: multiple_files` / `flat_map: false` 后 `dart run slang` 再编，编完还原；cmake 用 VS 自带路径；需 `tools/build_magpie_slim.ps1`、`native/galgame_hook/tools/build_distribution.ps1 -RunTests`，并从主 checkout 复制 `native/fushi_torrent/prebuilt/windows-x64`；ffmpeg/ffprobe/VC++ CRT 从 custom 包复制。
- 用户数据备份：`date/backup-before-pr1625-20260925`（fushi.db、42 个校准文件、shared_preferences.json）。
- 待用户决定：本分支 4 个新提交是否合入 `custom`；清理 `.worktrees/gal-lookup-pr1625`（含构建产物）、空文件夹 `.worktrees/attached-lookup-author-pr-20260923`、上述备份。
