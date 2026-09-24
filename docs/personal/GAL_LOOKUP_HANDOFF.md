# 内嵌查词当前交接

更新：2026-09-24，用户已确认校准候选可采用，并授权本地合入 `custom`。以下工程验证记录仍对应候选阶段；完整历史见 [样本记录](LOOKUP_CALIBRATION_SAMPLES.md)。

## 基线与范围

- 已采用源码来自 `.worktrees/lookup-calibration-samples-20260917` 的 `codex/lookup-calibration-samples-20260917`，候选提交为 `69d2d599d3`。本次只合入本地 `custom`；未授权推送、正式构建或发布。原候选工作区及未跟踪的测试程序保留。
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
- 改动 Dart 文件定向分析完成，两条样式提示已修正并复查无问题。native 37 项通过；`flutter_window.cpp` 独立对象编译通过（`grid-schema-native.cmd`，退出码0）。完整应用尚未构建。
- 原有未跟踪 `fushi/tool/gal_lookup_image_lab/` 保留，不提交。独立测试程序、Python 环境和样本不进入产品。

- 本批由主代理直接处理。

## 用户下一步

本地 `custom` 已采用源码；`origin/custom` 仍需单独授权推送。后续从 `custom` 构建时，重新识别并应用才使用新算法，旧校准不自动改变。候选阶段的工程验证和用户本次“可以了”分别记录；未留证据的游戏、窗口尺寸及超分场景不扩展为已验证。
