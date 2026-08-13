## BUG-1586 · Gal 捕获工作台句子选择被旧音轨请求阻塞
- **报告**：2026-08-12（用户：长时间捕获后点击句子偶尔不响应，切回工作台卡顿）
- **真实性**：✅ 真 bug。`texthooker_page.dart:_LineTracksCardState._syncTracks` 在旧请求进行中以 `_loading` 直接早退，因此快速选择下一句会丢掉新请求；旧请求完成后又无当前行校验，会把旧句音轨写回右栏。页面同时监听文本服务与会话控制器，两条相邻通知各自整页 `setState`，放大长列表切回时的重建开销。
- **[x] ① 已修复** — 改为最后一次选择优先的有界缓存；旧请求可完成但不得覆盖新句，返回最近句使用缓存；文本/会话通知按帧合并整页刷新。线程候选只做展示分组，零文本线程不从 native 观察集合删除。
- **[x] ② 已加自动化测试** — `fushi/test/utils/latest_request_cache_test.dart` 覆盖乱序完成与缓存；`fushi/test/pages/texthooker_page_test.dart` 覆盖零文本折叠和活跃线程上浮；`fushi/test/sync/texthooker_service_test.dart` 覆盖候选排序。
- **备注**：候选提交哈希待候选验收后回填。
