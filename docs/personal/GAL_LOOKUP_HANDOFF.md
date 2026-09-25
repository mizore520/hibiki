# 内嵌查词当前交接

更新：2026-09-24，作者源码已整合进原候选；用户报告修复后完整编译及测试未见问题，并授权合入、推送 `custom`。完整历史见 [样本记录](LOOKUP_CALIBRATION_SAMPLES.md)。

## 2026-09-25 优化轮（进行中）

新候选在 `.worktrees/gal-lookup-optimize-20260925`，分支 `codex/gal-lookup-optimize-20260925`，基于 `custom@47396e2a2c`。修改了校准界面，去掉「只用「」内台词」开关，修复关闭查词窗口后点击迟钝（BUG-2674/2675）和 Hook 自带换行的长句错位（BUG-2676）。目标是更新到草稿 PR hajisensai/Fushi#1625。第二轮修复后等待用户编译复测；未合入、未推送。问题、提交、证据和复测清单见 [本轮清单](GAL_LOOKUP_FEEDBACK_20260925.md)。下面各节是 2026-09-24 已采用候选的记录。

## 2026-09-24 作者更新与正式采用

- 本工作区在原候选 `69d2d599d3288f9acbb0ce873da56186c37c2c6b` 上整合作者 `upstream/develop` 固定提交 `3d5d1608ed24c12ed74d869067e51ed24f42a578`；合并前检查点为 `codex/checkpoint/lookup-calibration-before-upstream-20260924`。此前只更新此候选；原校准提交 `69d2d599d3` 已单独合入本地 `custom`，本次采用候选为 `d5ff54ede4`。
- 保留个人查词校准、Hook、漫画 OCR 和 Anki 批量查重，并接入作者的数据库 v112、视频及游戏流能力。Anki 批量查重采用作者的 `canAddNotesWithErrorDetail` 判据，只把明确重复的错误当作已制卡。
- 已通过应用、core、Anki 的静态分析，Anki 定向 110 项；x64 / Win32 原生 IPC 契约、loopback 策略测试及 Hook 构建通过。engine 包静态分析仍有 17 条原有 lint，均非编译错误。应用数据库迁移、漫画、视频、Hook、查词校准定向 405 项通过（`.codex-test/merge-final-flutter-tests.log`）；之前 54 张样本对照是在作者更新之前完成，不当作新提交的实机验收。
- 用户首次完整构建在 `flutter_webrtc_plugin` 编译 `window_capture.cpp` 时遇到 Windows `min/max` 宏冲突（C4003/C2220）；四处 `numeric_limits<LONG>::min/max()` 已改为括号调用。该插件的 Release 目标增量构建通过；主程序 runner 目标本来定义 `NOMINMAX`。修复后用户报告已完成完整编译，测试未发现问题；具体游戏场景未逐项记录。
- 旧 v104 EXE 仍不能打开 v112 数据库；这次采用的是包含 v112 的新源码。代理未操作本机数据库，完整编译与使用检查来自用户反馈。
- 集成时自动重建 `docs/BUGS.md`，索引 2487 条；本次新增的 4 个编号碰撞已重编为 BUG-2670～2673，只改问题记录及其引用。`dart run tool/bug.dart check --no-scan` 仍报告 28 个候选既有的历史同号，未扩大到本轮清理；本次集成的功能代码与已验收候选逐文件一致。

## 基线与范围

- 唯一工作区 `.worktrees/lookup-calibration-samples-20260917`，唯一分支 `codex/lookup-calibration-samples-20260917`，查词移植起点 `22bab6ce6c`。本轮候选由提交 `d5ff54ede4` 定位；保留原候选工作区，不提 PR。
- 用户授权等价迁回调好的 OCR + 字格算法；完整 Windows 构建和游戏操作由用户负责，禁止控制电脑。
- 冻结版本 `anchors-v24-uniform-grid-virtual-normal-boundary`；源 SHA-256 `304C3F1FE9FFCA830294D2C526F93232288AC54F8FF6B2744BE0049F07E092A7`，已重新核验一致。本机来源与重放脚本在 `.codex-test/v24-parity/`；不提交游戏图片、私人路径或台词归档。
- Hook 文本权威，OCR 提供位置证据。最终格宽、格高统一，续行起点一致，首行与续行差 -1/0/+1 格；不再推断特殊字符宽度。旧档案兼容读取，不自动重写。

## 实现与审查

- 文本对应、Unicode 标准化、可靠行选择、联合起点、虚拟普通边界及附近几何候选搜索已迁入 Dart parts。生产校准不再用旧像素校正覆盖 v24 结果；运行期查词仍无 OCR。
- 生成规则档案前，逐字核对 preview 的 UTF-16 身份、位置和尺寸。支持负缩进，区分显式换行与自然折行；仅有实际证据时启用 `trimWrapWhitespace`，防止未显示的折行边界空格挤占下一行首格。该开关默认 false，保留旧档案行为，并经超分坐标投影透传。
- 保留六类算法失败代码；不能由固定排版重现时用 detail 说明，不更改冻结几何来伪装成功。Unicode combining cluster 沿用 native UTF-16 契约，不宣称所有 Unicode 序列与 Python codepoint 切分完全相同。
- Luna max 独立审查确认并修复两项移植差异：零面积 token 不丢文字/顺序；补充平面标点符号按 Unicode 分类排除出主要格距锚点。显式换行、Python ties-to-even 权重取整和拟合 reference 元数据也已补齐。新增换行空格接入再次独立审查未发现实质问题。

## 验证证据

- 当前最新样本清单 99 张：active 54、deleted 44、shelved 1。54 张最新文本、框选与缓存结果一一对应，无缺失或过期选区；805 份历史结果不重复计数。清单 `sample-inventory-latest-055423.json`。
- 冻结 Python + 同一份缓存 OCR 重算 54 张，与原保存结果 54/54 一致：`real-fixtures-all54-compare.json`。Git `sourceRevision` 和 Python 文件 SHA 是不同概念，不混为源码不一致。
- Dart 纯算法对照 54/54 通过，比较全部字符身份和每个字格 xywh（1e-6）；生产档案 adapter 54/54 通过独立 Dart preview 模拟核对：`all54-dart.log`、`real-adapter-all54.json`。这不是 54 次真实游戏验收，也不是用 C++ 实机重新 OCR。
- 定向测试 142 项通过：OCR/Profile/界面 87，engine/lifecycle/无运行期OCR/projection 15，冻结合成对照及旧像素工具 40。日志为 `final-adapter-ui-tests.log`、`final-neighbor-tests.log`、`final-oracle-ink-tests.log`、`final-parity28.log`。合成28项中一项非法选区按生产入口先拒绝，其余按冻结 oracle 比较。
- 改动 Dart 文件定向分析完成，两条样式提示已修正并复查无问题。native 37 项通过；`flutter_window.cpp` 独立对象编译通过（`grid-schema-native.cmd`，退出码0）。本条是旧候选阶段的工程验证记录；完整应用后由用户编译并报告测试未见问题。
- 原有未跟踪 `fushi/tool/gal_lookup_image_lab/` 保留，不提交。独立测试程序、Python 环境和样本不进入产品。

- 用户最新要求不再使用子代理；已停止仍在运行的代理，后续由主代理直接处理。

## 采用状态

用户已按候选工作区完成编译并报告测试未发现问题，授权本地 `custom` 合并及 `origin/custom` 推送。旧校准档案不自动改变；新算法需重新识别并应用。真实游戏具体覆盖范围以用户实际检查为准。
