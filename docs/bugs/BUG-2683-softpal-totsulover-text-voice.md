## BUG-2683 · ディメンション凸ラバース!! 的线程夹人名且缺少语音资源

- **报告**：2026-09-26（用户截图：所选 Pal 渲染线程穿插单独人名；音频来源 0、engine_pcm_unavailable_fallback_disabled、line_has_no_voice）
- **真实性**：✅ 真实现象；截图与本机游戏资产静态结构一致。Luna Pal 渲染层只能观察绘字，PalSpriteCreateTextEx 同时接收人名和正文；Fushi 没有该游戏的资源语音适配，且用户当前禁用混音兜底。
- **[x] ① 候选实现** — 精确 EXE SHA-256 和 TextShow 函数序言双重准入；从同一脚本调用的参数栈捕获正文偏移与语音编号；worker 从 TEXT.DAT 仅发正文，从 FILE.DAT 找 OGG 名，按 patch.pac→voice.pac 读原生 OGG，使用正文事件 ID 导出。完整 OGG、PAC 越界、文件身份均做封闭检查。仅限 2026-09-26 实测 x86 构建。
- **[x] ② 定向自动化测试** — x86 Hook DLL 构建通过；Softpal PAC/正文/编号测试通过；Fushi galgame_audio_test.dart 81 项通过，其中新增精确事件配对断言。
- **备注**：静态全量扫描 39,831 条字面 TextShow 指令，全部正文 CP932 可解码且 <=500 字；22,127 条带语音编号，其中 14 个编号在全部 PAC 索引中缺少对应 OGG。当前已运行游戏仍加载旧 DLL；候选没有注入、选线程、实际配音匹配、截图或制卡 E2E，支持状态为 implemented_unverified。本机主分支的支持文档生成器原已有 Little Busters geometry manifest 缺项，本分支未扩大范围修复。
