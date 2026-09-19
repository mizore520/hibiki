## BUG-2548 · 启动器遇到未跟踪中文路径时无法计算源码状态
- **报告**：2026-09-19，用户运行原工作区 BAT 后提示 Cannot compute the source state，尚未进入编译。
- **真实性**：✅ 真 bug。`tool/get_windows_build_state.ps1` 的 untracked `ls-files` 未关闭 Git 路径转义，中文文件名变成带引号的八进制字符串，传入 `GetFullPath` 报 Illegal characters in path。实际触发文件是本机独立识别工具的未跟踪中文 BAT。关闭转义后，定向测试进一步复现 Windows PowerShell 按传统控制台编码误解码 Git UTF-8 路径的问题。
- **[x] ① 已修复** — untracked 路径查询和 tracked 查询统一使用 `core.quotePath=false`；显式以 UTF-8 解码 Git 输出，脚本保存 UTF-8 BOM 以保证 Windows PowerShell 5.1 正确读取中文排除规则。启动 BAT 的三个状态查询不再隐藏 stderr。修复提交见本文件 Git 历史。
- **[x] ② 已加自动化测试** — `fushi/test/tools/windows_launcher_build_state_test.dart` 在开启 Git 路径转义的临时仓库中覆盖未跟踪中文文件的新增、修改、删除，同时保留文档/测试忽略及真正源码变化检测。顺带修正该既有测试漏写 raw-string 导致 PowerShell `$Force` / `$RunTests` 被 Dart 插值的装载错误。最终 2/2 测试通过，定向分析 No issues found。
- **备注**：在原工作区用 CMD code page 936 执行原 BAT 的状态读取语句，得到有效 64 位十六进制状态，退出码 0。未运行完整构建或启动应用，未改写已有 EXE、构建状态戳、用户样本或校准档案。
