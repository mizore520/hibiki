## BUG-2545 · 停止监听与重新附着重叠时旧清理覆盖新会话
- **报告**：2026-09-19（用户：附着有时无反应，停止监听后重新附着有时恢复）。
- **真实性**：源码确认生命周期竞态。`fushi/lib/src/mining/gal_hook_session_controller.dart` 的 `stopCapture`、`_stopSources` 在等待播放统计结算/补录回收期间允许新 `attach` 开始，旧停止流程随后可能清除新音源、重置状态为 idle。此缺陷有受控复现，但尚未证明它是用户 anemoi 现场唯一原因。
- **[x] ① 已修复（待实机）** — 停止操作在异步边界核对 operation generation；重叠的来源清理共享同一 Future，新附着须等旧清理完成，旧停止不能在新会话开始后发布 idle。旧retry不得取消或重排新计时器；旧poll/重绑不能清掉新任务在途标记，复用同一个engine也须校验poll generation。晚到资源/PCM升格同样校验代次。源码随第十二轮候选提交，见 [当前交接](../personal/GAL_LOOKUP_HANDOFF.md)。
- **[x] ② 已增加定向回归** — `fushi/test/mining/gal_hook_session_controller_test.dart` 以可控补录清理暂停制造停止/附着重叠，并检查新引擎与状态保留；另覆盖旧poll/重绑释放期间新任务仍在途、同一engine复用时丢弃旧结果及已有引擎重试恢复。最终13个定向用例与相邻资源晚就绪1项均通过，静态分析无问题；证据 `round12-session-final.log`、`round12-session-resource-final.log`、`round12-session-analyze-final.log`，不把整份session测试宣称通过。
- **备注**：未操作真实游戏或升级 Hook 引擎支持声明。附着、线程到达和正文就绪仍需在原启动路径复测；不能以这处竞态修正宣称所有“附着没反应”都已解决。
