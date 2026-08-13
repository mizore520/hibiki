## BUG-1590 · Luna 当前句制卡提前截断录音导致卡片无音频
- **报告**：2026-08-09（用户：Luna 模式在当前句仍播放时点制卡，进入下一句后卡片没有音频）
- **真实性**：✅ 真 bug。`fushi/lib/src/mining/gal_hook_session_controller.dart:2620-2659` 的制卡入口原先直接进入 `_captureAudioBytesNow`，后者会对仍处于 30 秒定时窗口内的 Luna 当前句调用 `_flushLoopbackFreeze`，把“点击制卡时刻”误当成语音终点；卡片随即以这份过早、可能为空的切片落地，下一条文本到达后也无法回填已生成的卡。
- **[x] ① 已修复** — `f2154b7d9`：Luna 当前句的制卡请求在音频队列外等待下一条原文、30 秒安全上限或停止捕获；只有边界切片真正写入缓存后才继续编码写卡。普通 Hook、资源语音与引擎 PCM 路径不变。
- **[x] ② 已加自动化测试** — `fushi/test/mining/gal_hook_session_controller_test.dart:318`：真实控制器链路验证点击制卡不会提前抓音；下一句到达后仍等待受控的 `grabRecent` 完成；缓存完成后才结束制卡，且只复用一次边界切片。
- **备注**：静态分析通过；相关音频控制器测试 54 项通过。仍需用真实游戏 + LunaTranslator + Anki 按原始失败操作肉眼验收音频起止与卡片媒体。
