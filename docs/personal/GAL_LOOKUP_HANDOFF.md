# 内嵌查词当前交接

更新：2026-09-19。历史反馈与证据解释见 [样本记录](LOOKUP_CALIBRATION_SAMPLES.md)。

## 基线与阶段

- 唯一工作区：`.worktrees/lookup-calibration-samples-20260917`；分支 `codex/lookup-calibration-samples-20260917`。不新建分区、不合入 `custom`、不推送。
- 本批起点 `bd63fc2794`，捕获子提交 `ee990dd066`，固定源码候选 `cc923a9f55`。统一实现、定向验证和独立审查已完成，等待用户一次完整构建和实机验收。不要把旧的 WGC 重试/诊断提交视为功能修复。
- 用户授权统一修复。范围：制卡截图屏障、普通窗口采集兼容、Magpie 裁剪映射及恢复、浅蓝悬停、小标点视觉框、校准界面精简。稳定横排是目标；任意脚本换行、比例字体和特殊不规则排版不在本批。
- 完整 BAT 构建、转区启动、游戏操作由用户负责。源码状态 `implemented_unverified`；历史闪退用户已报告不再发生，本批仍保留边界保护。

## 当前行为与关键契约

1. Hook 是正文真相，PP-OCRv6 small 只用于校准截图的位置提示。OCR 严格读取用户框内，像素校正后拟合规则字格；默认仅使用当前一张图，直接应用，无需逐字点中心。运行期按保存的规则排版，不持续 OCR。
2. 搜索框与拟合正文区独立。拟合时冻结对应截图尺寸和坐标来源；切换/删除样本不会改变已拟合参数。不同源裁剪范围的图片不能联合拟合。手动、联合样本保留高级入口；透明度滑条与重复状态已移除。
3. 词典持有单例鼠标 Hook 时，精确 `mouseHookBusy / singleton_owned_by_other_hwnd` 不再阻止制卡截图。仍要求目标与正文已同步，native 确认 epoch/generation/token，并由既有 composite lease 隐藏词典卡片。其他失效状态仍拒绝。
4. WGC 创建窗口项失败后可尝试目标窗口的 PrintWindow：可见、未最小化/隐藏、未受保护、身份/客户区稳定；拒绝未绘制、部分像素和全黑帧。不可取消的系统调用隔离到同EXE的专用helper入口，先于Flutter/单实例初始化；最多一个helper，匿名共享内存只传有界像素和元数据，超时由Job/进程终止回收。Flutter reply由UI持有，关闭窗口先取消请求，晚回结果不触碰已关闭的界面。撤去盲重试，不读取桌面；失败保留 HRESULT。
5. Magpie 始终先在源客户区排版，再按 SrcRect → DestRect 分别变换 x/y，并裁掉不可见区域。源 DPI 用于 profile，呈现 DPI 用于屏幕锚点。截图保留真实捕获 HWND/PID及源客户区/视口，应用时将 PNG 上的拟合反投影回源坐标。窗口生命周期触发恢复；映射不完整时隐藏命中层、保留认领。
6. 悬停采用 KiriKiri `fushiLookupPaintHighlight` 的浅蓝半透明填充，无描边。像素证据充分的小标点按游戏保存 visual bounds，只缩显示框，hit/advance/换行保持原格。单图可采用，噪点、贴边、不一致证据保留整格；非 BMP 字符不进入视觉覆盖。
7. 旧普通档案继续可读。缺少源裁剪坐标的旧超分截图保留，但不能猜测位置应用，应重新采集；已保存的普通源窗口校准可继续用于新映射。

## 本批验证

- Dart 分批通过：controller 65；早期样本/工作台/overlay/屏障 49；截图/投影/channel/草稿/样本/工作台 99；profile/preview/OCR 64；追加真实位图标点及 profile 18。套件有交叉，不能相加当独立用例总数。
- 相邻输入/采集源码守卫已核对，旧换行格式和旧高亮颜色断言已更新；点击、Shift、词典屏障约束保留。
- Luna max独立审查发现的两项阻塞问题均已修复并复核关闭：PrintWindow永久阻塞改为可回收helper；截图回传改为UI持有请求、worker只发布结果，关闭窗口在messenger销毁前取消请求。`batch-reply-native.log`的最终对象编译及5个生命周期场景通过，两套生命周期测试已接入CMake gate。
- 定向 analyze 最终 `No issues found`。默认 Dart/perf 缓存清理报 errno 1920，仅为分析进程将 LOCALAPPDATA 定到 `.codex-test/analysis-local` 后完成；未改系统环境。
- MSVC x64 `/W4 /WX`：`window_capture.cpp`、`attached_text_surface_window.cpp`、`flutter_window.cpp` 三对象共同通过；审查收尾后分别重编受影响的capture/flutter_window与新增入口main。main沿用工程的`/wd4100 /D_HAS_EXCEPTIONS=0`（忽略Windows入口未使用参数）。原生排版23 cases、Magpie裁剪/负屏幕坐标/异向缩放测试通过。
- PrintWindow：`.codex-test/printwindow_capture_probe.cpp`的普通/超时后两次真实调用使用完整生产flags，返回624×381、1878字节PNG，未覆盖返回值或真实像素。持久helper gate使用明确的填色shim验证IPC与超时生命周期，另保留进程句柄断言helper已终止并验证下次成功；与真实捕获证据分开。黑帧/partial为早期shim校验。原游戏PID已退出，没有该游戏实际后端成功证据。
- 收尾的启动/客户区/屏障守卫通过；helper改造后的Magpie采集守卫10项通过，单文件analyze通过。旧`worker retained capture DC`断言已改为进程终止契约，不复用包含旧断言失败的整批退出码。
- 私有 OCR 回放当前15个非空草稿共42图（另1空），9本可联合拟合。旧成功仍成功，旧复杂拒绝保留；输入已较旧22图变化，不能称同输入 A/B 或42图全部通过。旧 native preview 只检查 hit 网格，不证明新的 visual 框或实机效果。
- 临时证据：`.codex-test/batch-*.log`、`.codex-test/batch-replay/`。不提交截图、对白或用户草稿。Bug reindex通过；check因基线15组重复号（2257–2270、2439）退出1，另有58个跨旧分支警告，本批新2544未报冲突。未改动无关旧编号。

## 一次集中实机验收

用户在本工作区运行 `启动Hibiki最新版.bat` 构建 Windows x64 一次，保留已有草稿；新标点视觉需要对原截图重新自动识别并应用，不必逐字手调。

1. 在此前不能采集的《ひこうき雲の向こう側》采集规则两行/三行图，确认取得完整正文并能自动拟合。
2. 正常查词后在词典中制一张卡，检查词、句、画面/音频对应且游戏不推进。
3. 同一运行中不开超分 → 开 Magpie → 关 Magpie，各试一次采集与查词；已有普通校准应随映射恢复，不靠重启程序。
4. 看浅蓝悬停是否符合参考图；选有小标点的图重新识别，检查小框不挤动后字，换一条规则台词再查词。

失败时保留提示、发生时间和 `%TEMP%/hibiki_glookup.log`；若点击推进台词或闪退，停止该项并统一反馈，不删除草稿或反复编译。真实游戏未验收前不升级引擎支持状态。
