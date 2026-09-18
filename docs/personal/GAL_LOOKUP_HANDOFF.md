# 内嵌查词当前交接

更新：2026-09-19。历史反馈见 [样本记录](LOOKUP_CALIBRATION_SAMPLES.md)。

## 基线与范围

- 唯一候选工作区：`.worktrees/lookup-calibration-samples-20260917`，分支 `codex/lookup-calibration-samples-20260917`；本轮不新建分区、不合入 `custom`、不推送。
- 本批统一处理：OCR 识别容错与复杂背景候选、单图自动拟合后直接应用、样本/手动三点收高级、KiriKiri 风格悬停高亮，以及 Magpie 源/目标视口采集与恢复。稳定横排规则排版是范围；竖排、比例字体、任意硬换行等特殊排版不保证。
- 用户已确认历史校准后的闪退目前不再发生；源码保留边界裁剪和生命周期保护。完整 BAT 构建和真实游戏操作由用户负责，当前源码仍是 `implemented_unverified`。

## 已落地行为

1. OCR 只读取用户框内的截图，边缘复制只作为模型上下文，不扩大扫描范围；搜索框 `searchRect` 与生成的排版区 `rect` 分开保存。
2. Hook 文本是最终字符串。PP-OCRv6 small 只提供行和字符的近似位置，像素笔画校正和规则网格共同决定字格；不会要求用户逐字点击中心。短续行、标点、重复假名和框内按钮会被尽量识别，明显不确定时才拒绝。
3. 行匹配允许跳过选区内的非正文检测，避免姓名、按钮或三角附件吞掉短续行。自动拟合默认只用当前选中完整截图；联合多样本、数值和手动标记仍在高级入口。应用时保存实际拟合所用的参考 client，validation-only 样本不会阻断单图应用。
4. 自动拟合结果经正常 controller 保存并启用；三点探针流程仍保留在高级菜单。悬停时当前字簇显示青色半透明高亮，移开清除。
5. Magpie 采集读取并核对 `SrcHWND` 与 Src/Dest viewport；只在身份、客户区、尺寸和 WGC 帧一致时裁取 DestRect。映射暂时不可用时隐藏命中层、保留 provider claim，恢复后重新同步；超大帧在 native 分配前拒绝。

## 当前证据

- 受影响控制器、采集、样本 UI、workbench、OCR 和守卫定向套件：最后一批 `164` 项通过，另有最新控制器/OCR 聚焦回归 `103` 项通过；Dart 定向分析 `No issues found`。
- MSVC x64 `/W4 /WX`：`window_capture.cpp`、`attached_text_surface_window.cpp`、`flutter_window.cpp` 三对象通过；viewport 日志在 `.codex-test/viewport-native-final.log`。
- 生产 Dart OCR 重放保存的 22 张样本（9 个非空 notebook）：新版与同基线结果一致地保留已通过样本；其中旧的复杂案例仍会因 `ocr_geometry_inconsistent` 拒绝，未把既有失败伪装成修好。用户 NEKOPARA 附件用实际生产预处理、PP-OCR、像素校正和 native preview 在三种不同选框下均生成两行候选；对白为人工转写且没有 Hook 样本，只作算法诊断。
- 真实应用内 ONNX session 装配、当前游戏新句点击、高亮视觉效果和 Magpie 开/关实机仍未验收；离线重放不等于跨游戏保证。

## 未闭合事项

- 新候选集中体验中用户报告制卡截图失败：`GalHookCaptureSuppressionException: the attached glyph surface is no longer current`。当前阶段仅记录，详见样本记录末尾；未确认实际 EXE 提交、超分状态及根因，等待集中处理。
- BUG-2535：用户最新报告不再闪退，保留历史记录，仍需跨游戏实机回归。
- BUG-2541：Magpie 开启期间的实机采集/查词恢复仍待用户验证；退出超分恢复的历史现象与本批诊断分开记录。
- BUG-2542/2543：其他游戏和部分完整画面采集仍需现场日志；本批目标是降低常见横排的拒绝率，不承诺所有游戏。

## 交给用户的一次验收

由用户在同一工作区运行 `启动Hibiki最新版.bat`，不需因每个小改动反复编译。验收顺序：

1. 保留或重新采集一张两行/三行规则台词，稍微改变搜索框边缘后再自动拟合；预期不要求逐字点中心，应用后可查词。
2. 换一条未用于拟合的规则台词，鼠标移入字格看高亮，移出后消失；连续查词、关闭词典后再次查词不推进游戏。
3. 在同一运行中分别测试 Magpie 开启、关闭和重启 Fushi 后的采集/查词。失败时保留提示和 `%TEMP%/hibiki_glookup.log`，不要删除草稿或反复重编。
