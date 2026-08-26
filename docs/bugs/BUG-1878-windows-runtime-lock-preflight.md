## BUG-1878 · Windows 完整打包未提前检查运行组件占用
- **报告**：2026-08-11（用户：helper 双架构编译及测试全部完成后，最后安装阶段才因旧 injector 文件被占用而整轮失败）
- **真实性**：✅ 真 bug。`启动Hibiki最新版.bat` 在依赖准备、Flutter 编译和两架构 helper 构建之后才调用 `native/galgame_hook/tools/install_into_bundle.ps1`；该脚本直接递归删除 `voice_hook/<arch>`，没有只读占用预检。因此一个开工前即可发现的文件锁，会浪费整轮构建后才暴露。
- **[x] ① 已修复** — `tool/check_windows_runtime_unlocked.ps1:44` 只读检查 `fushi.exe` 与 `voice_hook` 下 exe/DLL 是否可独占打开，绝不杀进程；`启动Hibiki最新版.bat:72` 在 clean/bootstrap/compile 前执行，`tool/package_windows_runtime.ps1:18` 也独立执行同一检查。
- **[x] ② 已加自动化测试** — `fushi/test/tools/gal_injector_lifecycle_and_build_lock_test.dart` 在 Windows 真实持有 helper 独占文件句柄，断言预检拒绝；释放后断言通过，并用源码守卫固定 BAT 调用顺序与“不得 Stop-Process”。
- **修复提交**：`fe439c32d`
- **备注**：预检只能防止开工时已存在的占用；构建过程中用户重新启动 Fushi/游戏仍可能产生竞争，安装阶段保留第二次预检作为纵深防御。
