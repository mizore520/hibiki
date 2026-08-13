## BUG-1602 · Windows SQLite CMake 忽略本地缓存并卡在 sqlite.org
- **报告**：2026-08-13（同步作者 `sqlite3_flutter_libs 0.5.42` 后的候选构建）
- **真实性**：✅ 真 bug。Dart native asset 使用的 SQLite DLL 已由本地缓存提供，
  但新插件的 Windows CMake 另用 `FetchContent` 下载 3.52.0 源码；全新 worktree
  配置时仍会连接 `sqlite.org`，断流后 CMake 长时间不退出。
- **[x] ① 已修复** — 构建前缓存脚本另外保存并以 `sqlite3.c/sqlite3.h` 固定
  SHA-256 验证插件所需的 3.52.0 源码；优先复用主 checkout 的已验证源码，缺失时
  才下载。启动 BAT 只传入缓存路径，项目 CMake 用标准
  `FETCHCONTENT_SOURCE_DIR_SQLITE3` 让作者插件继续负责目标与编译参数。
- **[x] ② 已加自动化测试** — 构建链守卫同时检查源码版本、固定摘要、BAT 环境
  传递和 CMake FetchContent 覆盖，防止以后再次退回隐式联网。
- **备注**：只改变依赖来源，不替换作者的 SQLite 构建逻辑或运行时数据库实现。
