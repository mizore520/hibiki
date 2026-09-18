# 仓库地图与模块索引

按目标模块查阅。路径用于定位，版本、表数及依赖事实以当前源码和配置为准；本页不是每次修改的必读清单。技术约束见 [根规则](../../CLAUDE.md)。

- 仓库根以 `git rev-parse --show-toplevel` 为准（Melos workspace，名 `fushi_workspace`）。Flutter app：`fushi/`；Android 工程：`fushi/android/`。
- **无头引擎与服务端（2026-09-08 起）**：`packages/fushi_engine/`（纯 Dart，app 与服务端共用的互联 host / OCR / ASR 任务 / 下载管线 / 库服务；**禁 import `package:flutter`、`dart:ui`、任何插件、`package:fushi`**，守卫 `fushi/test/build/fushi_engine_purity_guard_test.dart`；平台边界全走全局装配点 `engineLog` / `enginePaths` / `PrefStore` / `ffmpegPlatformBackendProvider` / `ocrSessionFactoryBuilder` 等，app 在 `fushi/lib/src/engine_bindings.dart` 的 `installEngineHostBindings()` 一次接线）；`packages/fushi_server/`（CLI `fushi_server`：互联 host + WebUI/admin API + 分块上传 + 内置 torrent/qBittorrent 代下载 + ASR/OCR 任务；`dart build cli` 出 bundle，**`dart compile exe` 缺 sqlite3 native asset 会运行时崩**；随包原生库按 `bin/../lib/<裸名>` 定位；Linux 的内置 torrent 引擎是 `native/fushi_torrent/build_linux_so.sh` 静态链出的 `.so`；发布走独立仓 `hajisensai/fushi-server` 的 `release.yml`，它 `workflow_call` 回调本仓 `release-server.yml`（Release 落那边、本仓禁发，版本取该包 pubspec；见 docs/agent/build.md）；用法见 [packages/fushi_server/README.md](../../packages/fushi_server/README.md)，设计见 `docs/specs/2026-09-08-fushi-server-headless-design.md`）。**引擎文件不放 `src/`**（`implementation_imports` 在 CI 致命），import 形如 `package:fushi_engine/sync/fushi_sync_server.dart`。互联 host 的实现只有引擎这一份，app 侧 `FushiSyncServerController` 只是装配。
- 阅读器页面：`fushi/lib/src/pages/implementations/reader_fushi_page.dart`（`ReaderFushiPage`）。
- 视频页面：`fushi/lib/src/pages/implementations/video_fushi_page.dart`；视频首页 `home_video_page.dart`。
- 书架页面：`fushi/lib/src/pages/implementations/reader_fushi_history_page.dart`；首页 dashboard：`pages/implementations/home_dashboard_page.dart`。
- reader source：`fushi/lib/src/media/sources/reader_fushi_source.dart`（`ReaderFushiSource`）。
- 阅读器 JS/CSS：`fushi/lib/src/reader/`（17 个 JS/CSS 注入封装，`reader_pagination_scripts.dart` 等）；JS 桥接全局是 `window.fushiReader`（2026-08 终局清算已改名；`hoshiCaret`/`__hoshi*` 等其余 hoshi 前缀运行时符号待后续批次）。
- 全局状态：`fushi/lib/src/models/app_model.dart`（`AppModel`，初始化流程与子系统委托核心）。
- Drift 数据库：`packages/fushi_core/lib/src/database/database.dart` 和 `tables.dart`（schema 以源码为准，WAL）。
- 词典：Dart 封装 `packages/fushi_dictionary/lib/src/engine/fushidicts.dart` + FFI 绑定 `lib/src/ffi/fushidicts_ffi_bindings.dart`；C++ 引擎源码全在 `native/fushidicts/`（包内已无 C++），`fushidicts_external/` 是 vendored 第三方，上游同步基线见 `native/fushidicts/UPSTREAM.md`。
- 有声书：`packages/fushi_audio/` + `fushi/lib/src/media/audiobook/`（导入入口 `book_import_dialog.dart` / `audiobook_import_dialog.dart`）。设备端语音转录生成字幕的**算法层已抽成独立仓库** [`hajisensai/fushi-subtitles`](https://github.com/hajisensai/fushi-subtitles)（GPL-3.0，纯 Dart，包 `fushi_asr_core` / `fushi_asr_align` / `fushi_asr_subtitles` / `fushi_asr_onnx_ffi`）。**六处 git 依赖钉同一个 sha**：`fushi/pubspec.yaml` 两条（`fushi_asr_core` / `fushi_asr_subtitles`）、`packages/fushi_engine/pubspec.yaml` 一条、`packages/fushi_server/pubspec.yaml` 两条（多一个 `fushi_asr_onnx_ffi`）、根 `pubspec.yaml` 的 `dependency_overrides` 一条；**任一处不一致同一份算法会被解析成两个副本**。app 侧 ONNX 走 Flutter 插件后端，只有无头服务端用纯 Dart 的 `fushi_asr_onnx_ffi`——它把 `archive` 钉成 `^4.0.0` 而本仓钉 `^3.6.1`（升 4 实测要动 76 个文件，`archive_io` 在 4.x 已移除），所以根 `pubspec.yaml` 一条 `archive` override 钉回本仓版本，外加 `ci/patches/git/fushi-subtitles-<sha>/` 一行兼容补丁把上游唯一的 4.x 专有调用 `entry.readBytes()` 换成 `entry.content`——**两者是一套，缺一个就编译不过**；上游放宽约束后一起删。本仓只留三样：Flutter 插件后端 `fushi/lib/src/onnx/onnx_inference_ort.dart`（method channel → `flutter_onnxruntime`）、装配层 `fushi/lib/src/asr_host/asr_host.dart`、UI （`media/audiobook/asr_transcribe_sheet.dart` 等）。**改 ASR 算法一律去那个仓库改，本仓只改装配与 UI。**
  - 装配点（都在 `asr_host.dart`，两个生产实例化点共用 `createAsrTranscriptionService()`）：数据根 `asrSupportRootResolver`、出站 `asrHttpClientFactory`（必须经 `createAppHttpClient`，否则模型下载绕过全应用代理装配）、日志 `asrLogSink`、ffmpeg `FushiAsrFfmpegBackend`（**五端一律注入本仓后端**，包自带的裸 CLI 后端会丢掉子进程登记表、`FUSHI_FFMPEG` 覆盖与捆绑损坏回退；移动端更没有 ffmpeg CLI），以及后台 isolate 的 `AsrIsolateBackend`（顶层函数 `buildFushiOnnxFactory` + `BackgroundIsolateBinaryMessenger` 引导——**根 isolate 的全局装配点一个都带不过 isolate 边界**，那边只认这条）。
  - `installAsrHostBindings()` 在 `main()` 里调一次，**不放 `AppModel.initialise()`**：弹窗词典与悬浮词典是另外两个 entry point，不经 `initialise()`。
  - 转录产物是单时间轴 SRT 喂既有匹配链路，旁边同序写逐 token 时间 sidecar `transcript.tokens.jsonl`；`attachAsrCueTokenTiming`（`audiobook_alignment_service.dart`）把它挂到 `AudioCue.tokenTiming` 上，**行数与 cue 数不符时一条都不挂**（行号错位比没有更糟，下游照样跑完、照样落库，只是跳播全偏）。
  - OCR 也经 `fushi/lib/src/ocr/ocr_inference.dart` 复用同一套 ONNX 抽象（那层的 re-export 是**窄的 show 清单**，整份 re-export 会和本仓同名符号撞成 ambiguous import）。
- 互联/同步：`fushi/lib/src/sync/`（`interconnect_*.dart`、`aggregate_sync_service.dart`、`backup_*`）。
- galgame 制卡：Flutter 侧 `fushi/lib/src/lookup/`（overlay 浮窗）+ `fushi/lib/src/mining/galgame_*`；C++ hook（injector + hook DLL + vendored LunaHook）在本仓 `native/galgame_hook/`。`tools/build_distribution.ps1` 单独构建两架构 helper zip，再由 `tools/install_into_bundle.ps1` 在**构建期**解压进 `fushi.exe` 同级 `voice_hook/<arch>/`（BUG-1449），与本体同一次构建产出、同一个安装包落地，运行期不下载任何组件。helper **不链接进 `fushi.exe`**，运行时仍是隔离子进程/DLL。
- 浏览器扩展：`tools/browser-extension/`（注意是根级 `tools/`，与 `tool/` 不同目录）。
- 动画刮削上游参考：`references/ShokoServer/`（官方 ShokoServer git submodule，只作只读架构参考，不参与本仓构建/运行）。
- 工具脚本归属：根 `tool/` = `setup_worktree.ps1` / `bootstrap.ps1` / `bug.dart` / `check_release_policy.ps1`；`fushi/tool/` = `i18n_sync.dart` / `run_windows_itest.ps1` / `comprehensive_test_runner.dart`。
- 审查报告：`docs/reviews/YYYY-MM-DD-project-review.md`；已复现回归：`docs/REGRESSION_BUGS.md`（本地，不入库）；测试证据：`.codex-test/`（不入库）。

## 当前技术事实

- Flutter 版本分两处：本地钉 `.fvmrc` = `3.41.6`（pubspec `flutter: "^3.41.6"`），CI workflows 用 `3.44.0`；Dart SDK 约束 `>=3.5.0 <4.0.0`。最低 Android API 24，`compileSdk 36` / `targetSdk 35`。
- 状态管理 Riverpod；音频 just_audio（桌面经 just_audio_media_kit）；录音 record 6.0.0；视频播放走 **media_kit**（third_party vendored 全套）+ youtube_explode_dart。
- torrent 走内部包 `packages/fushi_torrent`（libtorrent 2.x C ABI FFI，native 在 `native/fushi_torrent/`；Windows 预编译 DLL / Android arm64 `.so` 随包，缺失时回退外接 qBittorrent；iOS 无内置引擎）。
- 主存储是 Drift SQLite（`FushiDatabase`，版本以源码为准），偏好落 Drift `preferences` 表 + `profile_settings` 每 Profile 快照。**已无 Isar/Hive 依赖**；旧注释里的 Isar/Hive 不代表当前事实，先查代码再判断。
- EPUB 阅读器走 reader_fushi 实现（见仓库地图）。`reader_ttu` key、`setTtu*` 方法、`ttu_*` i18n 只是旧数据兼容残留，不代表还有 TTU 阅读器；没有迁移方案别随手改这些持久化 key。（旧文档提过的 `ttuBookId` 列在当前 schema 已不存在，只活在迁移阶梯里。）
- 旧 TTU 迁移代码已移除（develop `90c37b472`：`TtuMigrationServer` / `TtuIdbReader` / `assets/ttu-ebook-reader` 均已删除）；只剩上述命名残留作旧数据兼容。阅读器渲染/交互问题按 reader_fushi 路径修，不要去上游 ttu fork 仓库改。
- 词典导入/查询核心走 `fushidicts` C++ FFI；格式 UI 或旧 Dart format 类不一定是真实导入路径。
- 国际化用 Slang，源文件 `fushi/lib/i18n/*.i18n.json`（17 种语言），生成文件 `strings.g.dart`。
- 5 平台均出包（Android/iOS/macOS/Windows/Linux）：`auto` 下五个平台统一走 Material Design 3；Cupertino / macOS renderer 仅保留为隐藏内部能力。桌面端依赖 fork 的 `flutter_inappwebview_windows` 渲染 EPUB。
- **iOS 版按 App Store 合规少三类能力**，其余四平台不受影响：① 内置外部发现源与书/漫画/视频三个库页的「发现」视图（含用户自配 OPDS、视频域资源索引器与在线发现 provider）；② 在线漫画源宿主（Aidoku 仓库 / Mihon 扩展 / mokuro.moe 卷下载）；③ 下载中心（torrent / 磁力 / 直链队列，含外接 qBittorrent）。理由都不是「iOS 做不到」而是审核指南不允许，所以判据**只在 `fushi/lib/src/models/store_compliance.dart` 的 `StoreRestrictedCapability` 写一次**，`ModuleId.downloads` 的 `availableOn` 委托到它，消费端一律问这两处、不各自写 `Platform.isIOS`。Aidoku 的 iOS 宿主（内嵌 Rust 静态库 + Swift 桥 + Xcode build phase + CI rust target）已整条移除，**macOS 宿主不受影响**；漫画/视频/书的本地库与阅读播放能力一概保留。守卫 `fushi/test/build/ios_store_compliance_guard_test.dart`——这条边界失效是静默的（本地与 CI 全绿、上架才被拒），改动这三块前先读它。

## 模块索引

| 模块 | 语言 | 职责 / 接入方式 | 文档 |
|---|---|---|---|
| `fushi/` | Dart | Flutter 主应用：UI/阅读器/视频/导入/设置 | [fushi/CLAUDE.md](../../fushi/CLAUDE.md) |
| `packages/fushi_core/` | Dart | DB schema/偏好/语言配置 | [CLAUDE.md](../../packages/fushi_core/CLAUDE.md) |
| `packages/fushi_dictionary/` | Dart | 词典引擎 Dart 侧/FFI 绑定/多格式导入（C++ 在 `native/fushidicts/`） | [CLAUDE.md](../../packages/fushi_dictionary/CLAUDE.md) |
| `packages/fushi_anki/` | Dart | Anki 集成（AnkiDroid + AnkiConnect） | [CLAUDE.md](../../packages/fushi_anki/CLAUDE.md) |
| `packages/fushi_audio/` | Dart | 字幕解析/有声书播放/音频匹配 | [CLAUDE.md](../../packages/fushi_audio/CLAUDE.md) |
| `packages/fushi_platform/` | Dart | TTS/平台集成/存储路径抽象 | [CLAUDE.md](../../packages/fushi_platform/CLAUDE.md) |
| `packages/flutter_inappwebview_windows/` | Dart+C++ | inappwebview Windows fork | [CLAUDE.md](../../packages/flutter_inappwebview_windows/CLAUDE.md) |
| `packages/fushi_torrent/` | Dart | 内置 torrent 引擎 FFI 绑定 + `EmbeddedTorrentEngine`（path 依赖） | — |
| `packages/fushi_engine/` | Dart | 无 Flutter 的共享引擎：互联 host / 库服务 / OCR / ASR 任务 / 下载管线 / EPUB 导入 / 视频元数据（app 与服务端共用；纯度守卫在 fushi/test/build） | 设计 `docs/specs/2026-09-08-fushi-server-headless-design.md` |
| `packages/fushi_server/` | Dart | 无头服务端 CLI + WebUI（Linux/Windows/macOS）；`dart build cli` 出 bundle，CI linux job 随包 torrent bridge `.so` + onnxruntime | [README.md](../../packages/fushi_server/README.md) |
| `packages/gamepads_windows/` | Dart+C++ | gamepads Windows vendored fork（BUG-116 崩溃修复，path override） | — |
| `packages/gamepads_android_stub/` | Dart | `gamepads_android` no-op stub（防启动 ClassCastException，path override） | — |
| `native/fushidicts/` | C++ | 词典查询/导入引擎（上游深度 fork；`fushidicts_external/` 为 vendored 第三方）；FFI/JNI 编入 app | [UPSTREAM.md](../../native/fushidicts/UPSTREAM.md) |
| `native/fushi_torrent/` | C++ | libtorrent 2.x C ABI bridge；FFI，Windows 预编译 DLL / Android arm64 `.so` 随包 | [README.md](../../native/fushi_torrent/README.md) |
| `services/log-backend/log-collector/` | Go | 报错日志接收端（自有服务器 + EdgeOne 版）；独立部署（原 `server/`，改名消与同步层 `fushi_sync_server.dart`/`SyncBackendType.hibikiServer` 的三义撞词） | [README.md](../../services/log-backend/log-collector/README.md) |
| `services/log-backend/cf-worker/` | JS | 报错日志接收端（Cloudflare Worker + D1 版，与 Go 版择一）；独立部署 | [README.md](../../services/log-backend/cf-worker/README.md) |
| `tools/browser-extension/` | JS | 浏览器查词扩展（根级 `tools/`，非 `tool/`） | — |
| `third_party/` | — | 11 个 path-override vendored 补丁包 + 1 个 CI 自编二进制（ffmpeg-min，Windows 最小化 ffmpeg.exe）：carousel_slider、desktop_drop、fading_edge_scrollview、ffmpeg_kit_flutter、flutter_inappwebview_android、media_kit_libs_{android,ios,macos,windows}_video、media_kit_video、network_to_file_image；vendor 原因见 `fushi/pubspec.yaml` dependency_overrides 逐包注释。另有 `m_extension_server/`（**不是** pub 包）：Mihon 桌面 sidecar 的 Kotlin 源码，上游 GitHub 仓库已删除，按 MPL-2.0 整树 vendored 在 `upstream_src/`（pristine）+ `overlay/`（Hibiki 安全边界）+ `server-build.gradle.patch`，构建走 `tool/mihon/build_desktop_runtime.{sh,ps1}`，规则见该目录 `UPSTREAM` | — |
| `references/ReinaManager` | — | git submodule：galgame 库信息架构参考（AGPL-3.0，不参与构建） | — |
| `references/ShokoServer` | C# | git submodule：哈希、协议与缓存分层的只读参考；资料源边界见根规则（MIT，不参与构建） | [上游仓库](https://github.com/ShokoAnime/ShokoServer) |

> 完整架构、技术栈、构建命令、致谢见 [README.md](../../README.md)。`file_picker` 用 pub.dev 版（**不是** fork）。依赖补丁机制（vendored vs apply-patches）见 [docs/agent/build.md](../../docs/agent/build.md)。
