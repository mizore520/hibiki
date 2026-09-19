# 内嵌查词当前交接

更新：2026-09-19，第十三轮。历史反馈与证据见 [样本记录](LOOKUP_CALIBRATION_SAMPLES.md)，本文件只保留当前状态。

## 基线与阶段

- 唯一工作区 `.worktrees/lookup-calibration-samples-20260917`，分支 `codex/lookup-calibration-samples-20260917`。本轮起点 `e89380522d`，固定源码候选 **`cdfaa019cf`**，已本地提交，未合入 `custom`、未推送、未创建 PR；用户明确要求等他说提才提。
- 已完成源码、定向验证和 Luna max 独立审查。状态仍为 `implemented_unverified`，进入一次集中构建/游戏验收；完整 Windows x64 BAT 构建及游戏/Magpie 操作由用户负责，尚未交付本批 EXE。
- 用户禁止控制电脑。本批只使用此前保存的日志、截图与源码，未切窗口、开关游戏/超分或新采集桌面。常规辅助优先 Luna max，root 负责根因判断、整合与串行 Flutter 验证。

## 本批实现与已确认事实

1. **超分几何**：原跨 DPI 端点换算把物理宽 2326 算为 2324，导致 `magpie_source_viewport_invalid`。捕获元数据、贴附层和 DWM 裁剪共用 `GetWindowInfo.rcClient` 物理矩形；源/目标视口仍严格检查。已知映射错误单独提示，不误称没有台词。见 [BUG-2541](../bugs/BUG-2541-gal-magpie-upscaler-breaks-calibration.md)。
2. **窗口缩放**：归一化 body 的两端各自四舍五入会吃掉不足一像素的余量。改为外接整数矩形，保持列容量、行号和缩进；布局继续拒绝真实越界。沿已有几何变化事件恢复，不新增轮询忙重试。见 [BUG-2546](../bugs/BUG-2546-gal-attached-resize-grid-rounding.md)。
3. **词典弹窗**：真实路径是 attached → desktop lookup，旧逻辑把游戏 DPI 归一化后的坐标又乘主窗口 DPR。现在随命中传入物理字框与呈现视口，直接用于原生定位，再按呈现屏 DPR 转为根卡 anchor，复用现有上下避让。普通桌面查词不继承 galCard 残留的尺寸/视口限制。旧逻辑字段兼容，不改直接引擎查词路径。见 [BUG-2547](../bugs/BUG-2547-gal-attached-popup-coordinate-space.md)。
4. **空格与首尾框**：允许为当前游戏/类别保存 ASCII 空格的实测推进，空格无点击框；首行空格在共同原点、整格缩进约束下唯一可解时才推断。保留普通字符与括号共同格高/默认宽度。所有 aligned 非空白源字符都检查 native 索引、长度和行号，避免仅正文正确却漏掉首尾括号；可靠普通字再验证位置。

## 最新括号反馈及未确认项

- 用户指出 `1ca61a58/0` 叠框中首尾括号与正文之间有窄缝，担心把首行/续行缩进误认为独立布局。真实 Hook 在开括号后、闭括号前各有 ASCII 空格，拟合值约 0.22 格；因此断口本身不证明错误，也不是两套括号格子。用户随后表示可能误以为这部分识别有问题。
- 这张图直接约束的是前缀总推进；全角括号一格、共同原点和整格缩进仍是模型假设。不能把正文对齐或新增索引检查当作括号笔画精确位置的证据；未强行删空格、移动括号或改变格高。实机检查首尾悬停位置仍有价值。
- `5e941496/0` 旧样本图文不对应。独立审查确认捕获前后有 occurrence、序号、正文、线程、HWND/PID/session 比较，未找到可证明的竞态。`capturedAtTickMs` 只是收帧时间，不能证明属于某个 Hook 事件。旧根因未确认，需要重新采集一致样本，不改写文本、猜帧或加延迟来伪装修复。
- 用户此前明确只保留七张失败图中的第2、第4张为优化目标；单行和其余特殊换行案例不继续扩展。稳定横排仍是范围，任意脚本排版不纳入。

## 验证证据（本机 `.codex-test/`）

- 最终 OCR suite **42 项通过**：`round13-ocr-endpoints.log`。此前 OCR/profile 合计53项中的 profile 结果仍适用；不重复累计交叉套件。
- 最终同输入回放 **42 张，基线30成功、当前36成功、0回退**，包含新增首尾索引/行号检查；日志 `round13-replay-popup-final.log`，图与无正文结果在 `round13-replay/`。同命令的弹窗行为 suite 也通过，覆盖不同 DPR、负屏幕原点、避让及残留 cap。截图集与上一轮39张不同，不将计数当跨游戏准确率。
- 捕获40项：`round13-capture-final.log`；相邻捕获守卫13项：`round13-capture-guards.log`；popup/channel/controller/尺寸相关45项：`round13-popup-channel-controller.log`；旧浮窗兼容及接线守卫14项：`round13-popup-wire-final.log`。这些套件有交叉，不相加宣传总数。
- 原生排版 **34 cases passed**：`round13-resize-native-final.log`，包含同一 profile 的 1000×600 → 500×300 → 655×393 → 750×450 → 原尺寸及真越界反例。Magpie几何测试已通过；`window_capture.cpp`、`attached_text_surface_window.cpp`、`flutter_window.cpp` 三对象 `/W4 /WX` 编译通过：`round13-native-objects-final.log`。
- 已变 OCR/capture/UI 文件及测试定向分析通过：`round13-ocr-capture-analyze.log`；收尾 OCR、global popup 与测试再次分析 `No issues found`：`round13-tail-analyze-final.log`。独立审查未发现明确 P0–P2 回归；没有全量 Flutter 测试或完整应用构建。
- `bug.dart check` 未通过：基线已存在15个重复编号（2257–2270、2439），已用基线树核对，非本批新增；2546/2547未冲突。日志 `round13-bug-record-check.log`。未顺手重编他人历史编号；若获准准备 PR，须按真实 PR base 复核整理，不能称全库检查通过。

## 保留行为及上批待验

- Hook 提供正文，PP-OCRv6 small 只在校准时提供位置；严格读取用户搜索框，识别结果不覆盖搜索框。运行期沿保存规则排版，不逐句 OCR。
- 对话/旁白两个可选槽，各一图；只完成任意一套即可共用，两套才按首尾成对 `「」` / `『』` 选择。特殊字符推进按游戏/类别隔离，字格高度统一，不再按标点笔画缩矮。旧草稿和档案保留，未改写用户样本。
- 浅蓝半透明无描边悬停、附着旧会话回收竞态修复、词典制卡截图屏障、受限 PrintWindow 捕获兼容和 Magpie 源裁剪映射沿用已实现候选；用户历史报告闪退已不再发生。这些仍须原始案例实机验收，不升级引擎支持状态。

## 下一步：一次集中实机验收

用户从本工作区运行 `启动Hibiki最新版.bat`，构建 `cdfaa019cf` 或其文档后继，启动新 Fushi 后按原方式附着；无需为纯应用侧改动默认重启游戏或重做所有校准。

1. 普通窗口查词：悬停浅蓝框、点击不推进游戏；弹窗靠近所点词并避开它，关闭弹窗后能继续查词；试一次词典制卡。
2. 同一句/同档案缩小、放大、恢复窗口：高亮和查词应恢复，字框保持对应；保持游戏画面比例，不用改成另一套排版验证固定规则。
3. 同次运行普通窗口 → Magpie → 退出 Magpie，各试采集与查词，检查退出后无需重启 Fushi 即恢复。
4. 重新识别第2张样本，检查首尾括号和新句的框；只校准任意一类确认可用，确有两类差异才补另一套。若重采第4张，先确认画面与 Hook 正文一致。
5. 顺带检查此前偶发附着无反应和不能截图的游戏；集中反馈，不逐项要求重编。

点击推进或闪退时停止该项，记时间/提示；日志 `%TEMP%/hibiki_glookup.log` 按需读尾部，不全量导出。用户完成原案例验收后再讨论采用与 PR。
