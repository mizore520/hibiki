# 定向验证与故障诊断

验证范围和停止条件以 [个人工作规则](../personal/PERSONAL_FORK_RULES.md#5-验证) 与 [技术规则](../../CLAUDE.md#验证) 为准。本页只在挑选测试、诊断失败、修改测试基础设施或核对集成结果时查阅；没有固定耗时目标、委派数量或自动 push/PR 流程。

## 选择验证

- 从受影响的行为与依赖选定向测试，覆盖修复根因和重要相邻契约。先复用已有用例，只有覆盖缺口才补测试。
- 文档/规则改动做内容、引用与差异检查；代码改动格式化所改文件，做适用的分析与测试。代码 push 前完成含 test 的全量 `flutter analyze`，本地不跑全量 Flutter 测试。
- 已授权合入 `develop` 且触及源码/测试扫描面时，执行 [目录枚举型守卫](merge-guards.md)。候选迭代不自动触发此门。
- 同一输入状态下通过的结果可复用；新变化、失败或未解决疑点才要求重跑或扩大。长命令运行期间可推进独立工作，不为“不能空等”制造无关调查。

## 按触发条件加跑

`fushi/tool/tests_for_changes.dart` 能从测试源码中的路径、目录引用和声明的 glob 找到候选守卫，适合定位跨功能域影响。在 `fushi/` 下使用显式改动路径，例如：

```powershell
dart run tool/tests_for_changes.dart --include-dart --explain fushi/lib/src/models/app_model.dart
dart run tool/tests_for_changes.dart --explain fushi/windows/runner/flutter_window.cpp
```

`--include-dart` 用于 Dart 路径；使用 `--base` 时应选本任务真实基线，不固定套 `origin/develop`。

输出是偏向多报的候选：工具保留注释引用，并可能退到较宽祖先目录。核对实际读取/调用关系后，执行确实受影响的守卫及明确强制检查；不要把数百个候选无条件当作队列，也不要仅按功能目录名排除相关测试。运行时计算扫描面的守卫可在测试内用 `// tests-for-changes: **/*.ps1` 等声明补足索引。

将选定目标显式传给 `flutter test <目标> --no-pub` 或 `tool/flutter_test_failures.dart`。**空清单就不调用入口**：后者无目标时会跑全量，禁止直接将未经核对的命令替换结果串进去。

## 判读结果与失败

- 保留真实退出码、实际执行数量和目标 suite 是否完成；管道末端的退出码、进程启动、零输出均不能证明通过。用例总数不是源码里 `test(` 的字面量数量；只在异常或覆盖疑点时对账，不为历史数字漂移逐条追提交。
- 同一工作区一次只跑一个 Flutter 测试任务，输出目录区分任务/批次。分批时核对每批结果，不能只信最后一批退出码。
- 断言失败沿被测行为排查；编译、suite 装载、IPC、文件锁或服务失败先查对应日志。未经证明不得归为“并发伪红”，未完成的检查如实标记。
- `sqlite3.dll` 被锁时按当前 worktree、进程路径/命令行、创建时间确认残留。只处理明确由本任务创建的残留进程，不按名称结束所有 Dart/Flutter 或用户应用。
- `Missing definition of main` 常是把 helper 误列为 suite；`Connection closed before test suite loaded` 要核对宿主日志。仅在有故障依据和可验证的修复措施时重跑受影响目标。
- 工程验证不替代原始设备/游戏体验；需要运行应用时再查 [集成测试](integration-testing.md) 或相关能力 SOP。

## 修改守卫或共享测试原语

这些要求只在修改判据/测试基础设施时触发：

- 扫描器要证明实际扫描了非空且适当的范围；禁止型判据用独立合成违规语料证明能识别违规。不要只靠“健康仓库全绿”，或让被测枚举器与验证器在同一缺陷处一起失明。
- 修改 `fushi/test/helpers/source_guard.dart` 时，按 import 反查使用者，覆盖共享方法的影响面；不能只跑默认合并清单。签名解析需覆盖参数花括号、箭头体、async/generator、泛型与构造器等实际边界。
- 列表只收可运行的 suite；Windows 大清单分批传参并分别保留退出码/日志。行为变异配行为测试，源码判据配合成源码，编译失败或零执行不算有效反例。

## 集成与外部状态

- 已授权推送后核对目标远端 ref 与预期 SHA；若输出含糊，查询实际状态。工作流问题核对该 run 的 `headSha` 及其携带的 workflow，不把旧队列结果当新实现。
- 判断某变更是否已采用，要检查当前行为与对应差异；rebase/解冲突后 `git cherry`、patch-id 或新增行覆盖率只能辅助定位，不能独立证明完成。
- 已授权多任务集成由 owner 串行收口，不并发改同一目标分支。不得机械 rebase 个人正式线或恢复本地全量测试；Git 与正式采用边界见个人规则。
