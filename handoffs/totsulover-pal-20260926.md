# totsulover Pal 文本与语音适配交接

- 基线：`custom` 的 `6db30f3d5d373f291735d8d10e33ece201c17a53`；任务分支 `codex/totsulover-pal-20260926`，误接编号 16 的上一候选提交 `f065272bba9c0a5c4ae16b9c7b04da02137595da`；当前提交见 claim。
- 阶段：上一候选的专用线程和部分资源语音有用户实机截图；本批修复已完成 x86/x64 Hook DLL、injector 定向编译和测试，Flutter 游戏捕获相关 150 项测试与定向静态分析通过，独立只读审查无剩余代码阻断项。编号 15 的实机覆盖待验。尚未采用到 `custom`，未推送。
- 已确认事实：游戏 `TEXT.DAT` 记录 2136、2140、2167 对应 `SCRIPT.SRC` 调用编号 15；相邻已捕获记录 2134、2139 对应编号 2。EXE 注册代码明确把编号 15 指向 RVA `0x6ea60`，编号 16 才是 `0x6e6d0`；前一候选误接 16。编号 2 使用 RVA `0x6fb90`。两个真实处理器均弹出四项（前导模式、正文、人物名、语音）。现场加载的前一候选 DLL 与构建一致，并确实在错误 RVA 安装了跳转；Luna Pal 渲染流已看到缺失的 2167 句，专用流没有。记录 2136、2140、2167 的语音编号均指向游戏资源。
- 本批修改：将第二入口由误认的编号 16 改为注册表确认的编号 15，按四项读取；精确 SHA 构建的适配器就绪时跳过 Luna 通用 Hook、抑制 GDI，并在 Fushi 选择器仅展示专用线程。旧 Pal 选择和延迟完成的旧记忆均不能覆盖专用线程，首条专用正文在非阻塞 poll 中放行。未就绪时保留通用兜底；1.5 秒内若报告未到，Luna 仍可能安装，但适配器后来就绪时界面会过滤其线程。实现及证据见 `native/galgame_hook/hook/adapters/softpal_adapter.inc`、`softpal_profile.h`、`injector/injector_main.cpp`、`fushi/lib/src/mining/gal_hook_session_controller.dart`、`tests/softpal_adapter_test.cpp` 和 `docs/bugs/BUG-2694-softpal-totsulover-text-voice.md`。独立只读审查本批无剩余代码阻断项。
- 未解决：新 DLL 还未在游戏中复测；极端快进下队列满仍可能丢弃事件，未观察到这一情况；无制卡端到端证据，不升级 `engine-support.yaml` 的支持状态。该清单的生成器 `--check` 仍被已有的 Little Busters geometry provider manifest 绑定缺口拦下，本批只修正 Softpal 文字说明，不改无关引擎。
- 下一步：提交后由用户运行本 worktree 的 `启动Hibiki最新版.bat`，按个人规则重启 Fushi 和游戏并重新附着；同一剧情处确认编号 15 正文（尤其记录 2167「おにーさん、動かないでね%0」）进入唯一专用线程，人物名仍不单独混入，语音就绪并可播放。若文本仍缺失，先核对实际加载的 Hook DLL 与时间线，再诊断队列或其他脚本路径。
