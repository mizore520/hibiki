## BUG-1599 · Windows 本地构建旧归档将新版捕获组件降级
- **报告**：2026-08-12。游戏库启动游戏时报 `protocol_mismatch shm=13/want 14 helper=x64`。
- **真实性**：✅ 真 bug。`fushi/windows/CMakeLists.txt` 仍把 `native/galgame_hook/dist` 的 zip 安装到 `Release/galgame_helper`，而 `package_windows_runtime.ps1` 随后才把同次构建的普通文件装进 `voice_hook`。若 dist 在本次 helper 构建前已被 CMake 复制，运行时 `GalgameHelperInstaller` 会把旧 zip 当权威版本，再把刚装好的协议 14 普通文件降回协议 13。
- **[x] ① 已修复** — 删除 Windows CMake 的旧归档安装规则；`install_into_bundle.ps1` 在安装普通文件前安全清除 bundle 内残留的 `galgame_helper`，覆盖增量构建和历史残留。
- **[x] ② 已加自动化测试** — `fushi/test/mining/gal_helper_bundled_as_plain_files_test.dart` 固定“CMake 不再复制 zip、打包脚本必须清理旧归档”两条边界。
- **备注**：helper 仍由同仓源码构建并作为 `voice_hook/<arch>` 普通文件随包；没有恢复运行时下载。
