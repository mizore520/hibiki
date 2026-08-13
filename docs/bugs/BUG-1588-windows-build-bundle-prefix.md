## BUG-1588 · Windows 构建 bundle 安装目标误指向 Program Files
- **报告**：2026-08-08（用户：）
- **真实性**：✅ 真 bug；新 worktree 的 `fushi/build/windows/x64/CMakeCache.txt` 把 `CMAKE_INSTALL_PREFIX` 固定为 `C:/Program Files/hibiki`，而 `fushi/windows/CMakeLists.txt:77-86` 原先只在 `CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT` 时回退到 EXE 同目录，导致 INSTALL 阶段写入 Program Files 并在普通权限下失败。
- **[x] ① 已修复** — `fushi/windows/CMakeLists.txt:80-86` 将 Windows 默认 `Program Files/<应用名>` 缓存值也视为未初始化，恢复到 `$<TARGET_FILE_DIR:fushi>`；非默认的显式安装前缀仍保留。提交：`0e1bc6d1d`。
- **[x] ② 已加自动化测试** — `fushi/test/build/windows_bundle_install_prefix_guard_test.dart`；另以现有 CMake cache 重新 configure，确认 `CMakeCache.txt` 与 `cmake_install.cmake` 均改为 `$<TARGET_FILE_DIR:fushi>`。
- **备注**：完整 `flutter build windows --release --no-pub` 在原生 MSBuild 阶段超过 10 分钟未结束，已停止本轮验证进程；这次未出现 C 盘权限错误。主 checkout 与用户数据未触碰。
