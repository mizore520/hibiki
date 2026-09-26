# totsulover Pal 文本与语音适配交接

- 基线：`custom` 的 `6db30f3d5d373f291735d8d10e33ece201c17a53`；任务分支 `codex/totsulover-pal-20260926`，前一候选提交 `d1e1c9be454b33add0b6f725da257733956dc438`。
- 阶段：前一候选的专用线程和部分资源语音有用户实机截图；本批修复已完成 x86/x64 Hook DLL 定向编译与 Softpal 参数测试，编号 15 的实机覆盖待验。尚未采用到 `custom`，未推送。
- 已确认事实：游戏 `TEXT.DAT` 记录 2136、2140 对应 `SCRIPT.SRC` 调用编号 15；相邻已捕获记录 2134、2139 对应编号 2。EXE 分发表编号 15 指向 RVA `0x6e6d0`，处理器按语音、人物名、正文顺序弹出三项。编号 2 使用 RVA `0x6fb90`，多一个前导模式。两个 RVA 的序言均与本机锁定 EXE 相符。记录 2136、2140 分别引用 `VO12_0003.OGG`、`VO04_0036.OGG`，两者均在 `voice.pac` 索引中。
- 本批修改：双入口原子安装并汇入同一个 `Softpal TextShow` 线程与现有 OGG worker；短暂队列锁竞争不再直接丢弃正文。只有两个 Hook 全部安装成功后才允许入队，避免失败重试留下旧事件。只接游戏文本处理器，不扩大到通用渲染 Hook。实现及证据见 `native/galgame_hook/hook/adapters/softpal_adapter.inc`、`softpal_profile.h`、`tests/softpal_adapter_test.cpp`、`engine-support.yaml` 和 `docs/bugs/BUG-2683-softpal-totsulover-text-voice.md`。独立只读审查未发现剩余阻断项。
- 未解决：新 DLL 还未在游戏中复测；极端快进下队列满仍可能丢弃事件，未观察到这一情况；无制卡端到端证据，不升级 `engine-support.yaml` 的支持状态。该清单的生成器 `--check` 仍被已有的 Little Busters geometry provider manifest 绑定缺口拦下，本批只修正 Softpal 文字说明，不改无关引擎。
- 下一步：提交后由用户运行本 worktree 的 `启动Hibiki最新版.bat`，按个人规则重启 Fushi 和游戏并重新附着；同一剧情处确认两条编号 15 正文进入专用线程，人物名仍不单独混入，语音分别就绪并可播放。若文本仍缺失，先核对实际加载的 Hook DLL 与时间线，再诊断队列或其他脚本路径。
