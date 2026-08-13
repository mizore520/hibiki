## BUG-1600 · Windows SQLite 原生资产缓存目录不稳定导致重复下载失败
- **报告**：2026-08-12（用户：Windows 一键启动构建失败，`Target dart_build failed`）
- **真实性**：✅ 真 bug。`sqlite3 3.3.3` 的 `PrebuiltSqliteLibrary.dirname` 使用进程随机化的 `Object.hash`，同一 x64 Windows DLL 在两次构建中分别落入 `download-8785a5` 与 `download-12317756`；后一次未命中已有正确 DLL，重新访问 GitHub 并因网络超时失败。
- **[x] ① 已修复** — `ci/apply-patches.sh` 只把 sqlite3 hook 的缓存目录键改为稳定的“类型/架构/系统/版本”，不改变作者原有的各平台资产选择。`tool/prepare_windows_sqlite3.ps1` 在构建前准备仓库级持久缓存，固定校验官方 SHA-256，优先复用主 checkout/当前构建已有 DLL，必要下载时支持跨重试断点续传，并预填 x64 Windows hook 的固定目录。
- **[x] ② 已加自动化测试** — `fushi/test/tools/windows_onnxruntime_cache_guard_test.dart` 守卫启动器调用顺序、固定缓存位置、哈希校验、断点续传及 hook 配置。
- **备注**：CMake CMP0175 与 fushidicts C4244/C4996/C4267 均为非致命警告；本次失败的原始异常记录在 `.dart_tool/hooks_runner/sqlite3/*/stderr.txt`。
