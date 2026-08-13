## BUG-1595 · 附着模式游戏退出后 injector 不结束
- **报告**：2026-08-11（用户：主线完整打包覆盖 `voice_hook/x86/fushi_voice_injector.exe` 时被拒绝访问；现场有 3 个相同 helper 残留）
- **真实性**：✅ 真 bug。现场 3 个 injector 的 `--pid 29636 --hold` 目标和父进程均已不存在；修复前 `native/galgame_hook/injector/injector_main.cpp:2585` 的普通 attach 路径向 `hold_process` 传 `nullptr`，`RunInjection` 随即进入无退出条件的 `for (;;)`，而 launch/Steam 路径会传目标进程句柄。Fushi 未正常执行 Dart `stop()` 时，helper 永久存活并锁住自身文件。
- **[x] ① 已修复** — `native/galgame_hook/injector/injector_main.cpp:2558` 的 attach 打开目标进程时补 `SYNCHRONIZE` 权限，`:2585` 与 launch/Steam 一样把目标句柄作为 hold 生命周期；`:1320` 拒绝缺少生命周期句柄的 `--hold`，`:1624` 等待目标游戏退出后自行收尾。
- **[x] ② 已加自动化测试** — `native/galgame_hook/tests/hold_process_lifecycle_test.cpp` 覆盖“目标运行/目标退出/null 句柄”；`fushi/test/tools/gal_injector_lifecycle_and_build_lock_test.dart` 固定 attach 调用必须传目标句柄且源码不得恢复无限循环。
- **修复提交**：`fe439c32d`
- **备注**：构建阶段不得自动结束仍附着真实游戏的 helper；仍在玩的游戏必须由用户主动停止捕获/退出。
