## BUG-1601 · Windows 缓存校验依赖 Get-FileHash 导致启动构建失败
- **报告**：2026-08-13（候选构建：ONNX Runtime 预检报 `Get-FileHash` 无法识别）
- **真实性**：✅ 真 bug。根启动 BAT 为 MSBuild 规范化环境并追加 Git Bash 路径后，
  新开的 Windows PowerShell 未能自动加载 `Microsoft.PowerShell.Utility`；ONNX 与 SQLite
  缓存脚本与后续 helper 打包脚本都把模块型 `Get-FileHash` 当成构建硬依赖。
- **[x] ① 已修复** — 缓存及 helper 打包/安装脚本统一使用 .NET `SHA256` + `File.OpenRead` 计算固定
  小写十六进制摘要，不再依赖 PowerShell 模块自动加载，Windows PowerShell 5.1 与
  PowerShell 7 都可用；校验清单、下载与缓存布局不变。
- **[x] ② 已加自动化测试** — `windows_onnxruntime_cache_guard_test.dart` 同时守住
  ONNX/SQLite 与 helper 构建脚本必须使用框架 SHA256 且不得重新引入 `Get-FileHash`；并以启动 BAT
  真实路径重新执行候选构建。
- **备注**：这是本地一键构建链修复，不改变应用运行时或游戏注入逻辑。
