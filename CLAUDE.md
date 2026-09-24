# Fushi 技术规则

本文件维护技术、数据与平台约束；协作、验证范围和正式采用授权见 [个人工作规则](docs/personal/PERSONAL_FORK_RULES.md)。根入口和本文件不要求每次操作重读，专项文档按任务触发。

@docs/personal/PERSONAL_FORK_RULES.md

## 基本规则

- 所有修改在独立 worktree 中完成，不覆盖用户或其他任务的改动。已授权的实现、定向验证和本地提交持续完成；合并/推送边界遵守个人规则。
- 需要应用依赖时运行 `tool/bootstrap.ps1`（pub get + 依赖补丁）；需要主 checkout 的本机真值时使用 `tool/setup_worktree.ps1`，仅同步真值可加 `-SkipBootstrap`。占位值足够普通分析/测试，不为文档任务复制密钥或下载依赖，不手工搬密钥桩。
- 并发 ownership、委派与模型选择统一见个人规则，不按疑点数量或固定时间线强制派发。
- 沿真实代码路径定位根因，修复状态、生命周期与契约；不得靠延迟、盲重试、吞异常或特例掩盖问题。不可控外部限制确需兼容时说明范围和清理条件。复用现有功能，新增 Dart 函数/helper 使用明确类型签名。
- 合并 PR 的作者门保留：`hajisensai`、`W1ght` 可在常规审查后进入合并流程，其他作者须有用户许可及可追溯的 `merge-approved` 标签；“全部合并”不覆盖后来出现的第三方 PR。修改白名单需用户授权。此门不替代 `custom` 的采用许可，也不代表远端已设置分支保护。
- Bug 登记按 [docs/BUGS.md](docs/BUGS.md) 文件头执行：一 bug 一文件，使用 `tool/bug.dart` 的 `new` / `reindex` / `renumber`，不手改自动索引或仅改文件名。记录真实根因和有效回归证据，未复现如实标注；新编号在开 PR 和 rebase 后用 `check` 复核跨分支/工作区冲突。用户集中体验期间先按个人规则统一收集。

## 仓库地图

- 应用 `fushi/`；共享包 `packages/`；词典与 Hook 原生实现 `native/`；构建维护脚本 `tool/`；浏览器扩展在 `tools/browser-extension/`。
- 需要定位模块时查 [仓库地图](docs/agent/repository-map.md)，不按旧文档中的固定行数或他人绝对路径定位。
- 修改共享引擎/服务端、ASR/OCR、存储迁移或平台装配前，读取地图中的对应技术边界与模块文档；共享引擎保持纯 Dart，持久化标识的改名必须有迁移方案。

## 命名

- 新代码、新 UI 文案或新 i18n key 前查 [命名术语表](docs/agent/naming.md)：同概念一词，存量持久化名冻结不追改。常用几条：配图叫 `cover`；时刻列 `<名>At`（int 毫秒，不加 `Ms`）；用户可见搜索用 `matchesMediaSearch`；i18n key 为 `<域>_<子域名词>_<动作/状态>`。

## Galgame Hook 硬规则

- Galgame 文本/语音 Hook、LunaHook、helper、adapter、引擎适配和制卡 E2E 默认**只做 Windows 端**。允许范围是 Windows Hibiki、Windows x86/x64 注入器/helper/hook，以及 Windows 链路必需的共享代码和平台无关测试；禁止修改、构建、运行、打包、发布或宣称支持 Android、iOS、macOS、Linux 的 galgame 实现。只有用户明确变更平台范围时才能越过此边界，通用的多平台构建或集成测试说明不得自动扩大 galgame 任务范围。
- 任何 galgame 文本/语音 Hook、LunaHook、helper、adapter、引擎适配或支持声明，先读取 [Hook 流程](docs/agent/galgame-hooking.md) 中相关能力的契约；实现/支持升级须覆盖该能力全部适用门槛，已读未变不重读；一引擎一任务、一独立 worktree。native 与消费端现在同仓，IPC 契约变更必须在同一个 PR 内同步两侧。
- 运行时诊断或支持验收前，按用户原始安装与启动路径建立身份/时序台账；静态调查、离线修复和文档改动可先推进，未验证能力保持 `implemented_unverified`。台账包括：启动器与真实游戏 PID/父子关系、架构、exe/module/helper/DLL 实际路径与 SHA-256、注入/附着策略，以及进程出现、模块加载、首次资源访问和首次音频的时间。imports、模块名、DLL 已加载或 Hook installed 只算候选证据。
- 能力阶段必须分开记录：`process_found → helper_ready → ipc_ready → text_ready → resource/pcm_ready → paired → e2e_verified`；不得用前一阶段推断后一阶段，也不得把 ready、捕获、纯人声分类、哈希一致和端到端混成一个“成功”。
- 每轮只修原始路径上第一个未通过边界。引擎/保护壳/加载时序特例必须收进 profile/adapter；共享中间件不得仅凭 DLL 名启用，且须有跨引擎负向测试。
- Loopback 只是显式降级，不能证明引擎 Hook、逐句配对或纯人声已验证；任何必需测试、双架构构建、replay 或真机门被跳过/阻塞，只能标 `implemented_unverified`，不得宣称“已支持/已修好”。
- 支持升级必须回到原始启动路径完成“当前文本 → 对应语音 → 当前画面 → 真卡写入”E2E；宣称原始逐句资源时还须记录与源 entry 的字节哈希一致性，并只通过 `native/galgame_hook/engine-support.yaml` 真相源更新支持状态。

## 动画刮削

- 改视频元数据刮削、文件识别或 provider 前完整阅读 [刮削边界](docs/agent/video-scrape.md)。硬线：主源只在 AniDB / MAL / TMDB 中选（默认 AniDB）；不装配 Bangumi、Douban、AniList、Fanart.tv；只有真实 ED2K 哈希匹配才叫哈希识别，AniDB 请求遵守客户端注册与限流；`references/ShokoServer` 只读参考，不改、不入构建。

## i18n 纪律

- 增删/改名 key 使用 `fushi/tool/i18n_sync.dart` 的 `--add` / `--remove` / `--rename`，不可逐语言手改。改名不能用 remove + add，否则会丢既有翻译。
- 批量删 key 按带引号的精确键名核对，避免同前缀子串假命中。
- 变更后 `dart run slang` 并格式化生成文件，不手改 `strings.g.dart`。

## 验证

- 选择范围、复用结果与停止条件见个人规则第 5 节；测试选择和故障诊断按需查 [验证流程](docs/agent/fast-workflow.md)。
- Dart 改动格式化所改文件并做定向分析/测试；代码分支 push 前完成含 test 的全量 `flutter analyze`。本地不跑裸 `flutter test` 或无目标的 `flutter_test_failures.dart`；全量套件由 CI 兜底。
- 合入 `develop` 且改动落入源码/测试扫描面时，integration owner 执行 [合并守卫](docs/agent/merge-guards.md)；纯文档不触发。这不授予合并权限。
- 已授权的 Android 资源、manifest、Gradle、权限、通知或打包变更，在交付该平台产物前加 `gradlew :app:assembleRelease`；通用说明不扩大 Windows 个人任务范围。
- 阅读器/导入/播放/布局修复，声明用户路径已修好前需设备复测；尚无证据时交付待验候选。完整应用构建与游戏操作按个人规则交接，不因此阻塞已授权的源码与定向验证。
- 操作真 app 的集成测试使用 `FocusDriver` / `tester.sendKeyEvent`，禁止 `tester.tap` 或坐标点击；按钮/开关用 Enter，数值控件用方向键，验证真实写入并还原。详情仅在运行场景时查 [集成测试](docs/agent/integration-testing.md)。

## 提交与发布

- 本地提交、正式采用、推送与交付说明统一见个人规则第 6 节。
- 版本号、发布通道（push 只进 debug/prerelease，正式与测试版只能手动触发）和 release 序列只在准备发布时按 [构建规则](docs/agent/build.md) 执行。

## 详细操作流程（docs/agent/）

| 要做的事 | 看这里 |
|---|---|
| 选择定向测试、诊断测试失败、修改共享测试原语或核对集成结果 | [docs/agent/fast-workflow.md](docs/agent/fast-workflow.md) |
| 5 平台构建 / Melos / bootstrap + 依赖补丁机制 / 发布通道与版本号规则 / galgame helper Windows 离线随包 | [docs/agent/build.md](docs/agent/build.md) |
| Apple 签名：iOS TestFlight / macOS Developer ID 公证 / 仓库 secrets 清单 / 证书轮换 / 签名排障 | [docs/agent/apple-signing.md](docs/agent/apple-signing.md) |
| 模拟器集成测试三层架构 / 焦点驱动（禁坐标点击）/ AnkiDroid provisioning / ADB 降级 / DB 查询 / 测试素材 | [docs/agent/integration-testing.md](docs/agent/integration-testing.md) |
| 持续审查模式 / docs/reviews 报告格式 / 回归记录 | [docs/agent/review-process.md](docs/agent/review-process.md) |
| 丢快捷键 / 丢鼠标事件：媒体页焦点所有权、`FocusReclaimCause` 分流、WebView 键盘桥 | [docs/agent/focus-ownership.md](docs/agent/focus-ownership.md) |
| reader_fushi 构成 / TTU 残留辨析 / WebView / 恢复 / 分页 / 有声书遮挡调试 | [docs/agent/reader-debugging.md](docs/agent/reader-debugging.md) |
| Computer Use 可见巡检 / 离屏、非焦点抓真实像素 / 确定性开页 debug 钩子 / 证据留存 | [docs/agent/computer-use-testing.md](docs/agent/computer-use-testing.md) |
| Windows app 外打开视频（文件关联 / argv / 拖拽）数据流 / single-instance WM_COPYDATA 转发 | [docs/agent/external-video-open.md](docs/agent/external-video-open.md) |
| 全量快捷键 / 手柄 / 鼠标绑定盘点快照（2026-06-11） | [docs/agent/shortcuts-inventory.md](docs/agent/shortcuts-inventory.md) |
| 学习统计域（v90）：唯一事实表 `study_segments` / `StudyClock` / `loadStatFacts` / `StatWindow` / 同步 wire v2 / legacy 冻结规则 | [docs/agent/statistics.md](docs/agent/statistics.md) |
| Galgame 用户报告 / 脱敏 probe / adapter 骨架 / 离线 replay / 双架构验证 / 真机证据 | [docs/agent/galgame-hooking.md](docs/agent/galgame-hooking.md) |
| 视频元数据刮削：主源选择 / AniDB 哈希与 anime XML / 跨站映射 / NFO / Shoko 参考边界 | [docs/agent/video-scrape.md](docs/agent/video-scrape.md) |
| 新代码 / 新 UI / 新 i18n key 的命名术语表与淘汰词 | [docs/agent/naming.md](docs/agent/naming.md) |
