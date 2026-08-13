## BUG-1589 · 本地 Windows 构建成功但未打包 galgame helper

- **报告**：2026-08-08（用户：昨晚尚可正常使用 galgame 捕获，今日重编译后提示「这个版本没有随包附带 galgame 钩子 helper」）
- **真实性**：✅ 真 bug。`tool/package_windows_runtime.ps1:53` 原先只补齐 ffmpeg/ffprobe/VC++ CRT，没有执行发布流程已在用的 `native/galgame_hook/tools/build_distribution.ps1` 和 `install_into_bundle.ps1`。`fushi/windows/CMakeLists.txt:161` 又把 helper 安装声明为 `OPTIONAL`：本地 `flutter build windows --release` 因而在 `native/galgame_hook/dist` 不存在时仍成功，但实测 `Release/galgame_helper` 为空且 `Release/voice_hook` 缺席，运行时必然中止捕获。
- **[x] ① 已修复** — 修复提交 `6542fbd7d`。个人本地 Windows runtime 组包脚本现在会先从 Visual Studio 安装目录自动补齐 `cmake`/`ctest` PATH，再构建并运行 x86/x64 helper 测试，最后通过作者共用安装脚本校验并解压到 `Release/voice_hook/<arch>`。工具/脚本缺失、native 构建/测试失败或安装失败都会使启动 BAT 停止，不再记录成功标记并启动残缺 EXE。
- **[x] ② 已加自动化测试** — 测试同在 `6542fbd7d`；`fushi/test/mining/galgame_helper_installer_test.dart` 新增 BUG-1589 静态契约：钉住个人本地组包必须以 `-RunTests` 先调用 helper 构建，再调用共用安装脚本。
- **备注**：已在独立 worktree 实际构建 Windows Release 并执行完整 runtime 组包；x86/x64 CTest 各 26 项全绿，安装后分别有 7/19 个必需文件加 `installed.sha256`，标记内容与本轮归档 SHA-256 一致。仍需用户在原始游戏/捕获路径验收候选 EXE。
