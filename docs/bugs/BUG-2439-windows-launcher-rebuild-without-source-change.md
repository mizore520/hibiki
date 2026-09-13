## BUG-2439 · Windows 智能启动器在无源码变化时重复编译
- **报告**：2026-09-13（用户：编译后未改源码，退出 Fushi 再打开
  `启动Hibiki最新版.bat`，疑似再次要求编译）
- **真实性**：✅ 真 bug。旧版 `tool/get_windows_build_state.ps1:41-48` 把整个
  worktree 的 tracked diff 与所有 untracked 文件写进构建指纹；`docs/BUGS.md` 或
  `docs/bugs/*.md` 这类不进入 Windows bundle 的文档变化也会让
  `启动Hibiki最新版.bat:95-112` 误走 `:build`。本轮登记 bug 时实际复现：EXE
  未变化，旧状态戳仍为 `cd77f192b2f61a046ac27e3d225f8fcd2a3d6b9cc5a263f001ac56b18e3f2440`，
  仅加入 bug 文档并重建索引后，旧脚本指纹变为另一值。
- **[x] ① 已修复** — `tool/get_windows_build_state.ps1` 新增
  `Test-IsBuildInputPath`，在生成 diff 与收集 untracked 文件前排除 root `docs/`、
  agent/test 工作目录和规则文档；真正的应用、native、package、tool 源文件仍按内容
  参与指纹。修复提交：本轮按用户边界未提交，改动留在当前隔离 worktree。
- **[x] ② 已加自动化测试** — `fushi/test/tools/windows_launcher_build_state_test.dart`
  现在同时覆盖 tracked docs、untracked docs、gitignored build product 不改变状态，
  以及 tracked source/untracked source 会改变状态。定向 Flutter 测试最终通过
  `2/2 tests`；第一次未提升权限的尝试因本机 Pub 缓存访问受限而长时间无输出，未计入
  结果，后续仅为读取依赖完成了提升权限的同一条定向测试命令。
- **备注**：修复本身改变了指纹定义；经检查旧状态戳之后没有任何纳入新指纹的生产
  输入被改写，因此已把被 `.gitignore` 忽略的 `fushi/build/.last_built_state` 从旧值
  迁移到新指纹 `56d94ab5137a7757e930f4726d82ca8786c8fa243cd1a5cf72ba591781f4faef`，
  没有编译或改写 EXE。之后仅改文档、测试或启动器状态脚本不会触发编译。
  `tool/check_windows_runtime_unlocked.ps1` 仍在状态比较前执行；Fushi/helper/DLL
  仍被占用时走 `:runtime_locked`，明确表示 “Build was not started”，不应与编译混淆。
- **[x] ③ 已补竞态守卫** — 启动器在依赖准备完成、昂贵的 Galgame helper 构建开始前
  重新读取 state/stamp；若另一实例已经完成同一源码状态，则直接进入 launch，避免
  使用早先的 stale build decision 再编一次。此次复核的 `11:51:34` stamp 与
  `11:51:56` helper 日志符合该竞态形态。
- **[x] ④ 已修正非 ASCII 路径解析** — 竞态守卫使中文名的 BAT 成为 modified tracked
  path 后，Git 默认的八进制路径转义会被旧脚本原样传回 `git diff`，触发
  `fatal: Invalid path '/345'` 并使 state 为空。现在 name-only 查询显式使用
  `core.quotePath=false`，并由回归测试覆盖中文 BAT 文件名；state 读取失败不会再
  被误认为正常 hash。
