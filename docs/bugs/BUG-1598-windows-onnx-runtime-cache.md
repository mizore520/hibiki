## BUG-1598 · Windows 一键构建 ONNX Runtime 下载失败且 clean 重复下载
- **报告**：2026-08-12（用户：双击 `启动Hibiki最新版.bat` 后 ONNX Runtime extraction directory 不存在）
- **真实性**：✅ 真 bug。`third_party/flutter_onnxruntime/windows/CMakeLists.txt` 的 `file(DOWNLOAD)` 未读取 `STATUS`，`execute_process` 未读取 `RESULT_VARIABLE`；失败后仍删除 ZIP，直到检查目录时才报末级症状。依赖还位于 `fushi/build/`，`flutter clean` 后必然重复下载。
- **[x] ① 已修复** — 启动脚本在编译前准备 `.build-cache/onnxruntime` 持久缓存，优先复用 Git 主 checkout 的已验证共享缓存或迁移旧构建产物，否则最多三次断点续传；连接失败保留 `.partial`，下次启动继续下载。三个关键文件固定 SHA-256。CMake 直接复用该缓存，并对手动/CI 下载和解压结果显式 fail-fast。同时移除两处 `add_custom_command(TARGET)` 不合法的 `DEPENDS` 参数。
- **[x] ② 已加自动化测试** — `fushi/test/tools/windows_onnxruntime_cache_guard_test.dart` 固定启动顺序、跨 worktree 缓存复用、断点续传、持久缓存、哈希校验、下载/解压结果检查及 CMP0175 警告回归。
- **备注**：个人启动器仍沿用历史文件名，实际应用和构建目录均为 Fushi。
