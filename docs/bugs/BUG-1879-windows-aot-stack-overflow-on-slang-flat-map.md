## BUG-1879 · Windows AOT 编译 Slang 巨型动态映射时栈溢出
- **报告**：2026-08-13（同步作者最新版并保留个人文案后的 Release 候选构建）
- **真实性**：✅ 真 bug。`gen_snapshot.exe` 以 Windows 状态码 `-1073741571`
  （stack overflow）退出；Slang 默认单文件并生成 57,766 项动态键 flat map，生成的
  `strings_map.g.dart` 约 4.8 MB。项目没有使用 `t['dynamic.key']`，但 AOT 仍递归处理
  该常量图并耗尽 snapshotter 的 1 MB PE 栈。
- **[x] ① 已修复** — 使用 Slang 官方 `multiple_files` 输出，并设置
  `flat_map: false`。17 种语言的全部 JSON、类型化 `t.xxx` API 与运行时切换不变；只
  移除项目未使用的动态键查找表。直接复跑 Flutter assemble 后 AOT 成功。
- **[x] ② 已加自动化测试** — i18n 测试守住多文件配置、主入口引用分语言 part，
  且不得重新生成 `strings_map.g.dart`；同时继续验证真实中文文案访问。
- **备注**：这是编译期生成结构优化，不提高应用线程栈，也不改变运行时性能语义。
