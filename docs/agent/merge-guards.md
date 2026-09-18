# develop 合并守卫

仅在已授权合入 `develop`，且变更触及下表扫描的源码/测试路径时，由 integration owner 执行本批守卫；文档、规则调整不触发。候选分支日常迭代按 [定向验证流程](fast-workflow.md) 选测试。

目录枚举型守卫能扫描新文件，功能域定向测试容易漏掉它们，因此保留此合并门。以下是已有清单；维护清单时按实际扫描根、共享枚举 helper 与当前源码检查，不按文件名猜，也不因一次搜索未命中就删已有项。版本变化可能改变 suite/用例数量，历史数字不是通过门槛。

| 测试 | 扫描根 | 守什么 |
|---|---|---|
| `test/tools/source_guard_adoption_test.dart` | `test/` 全树 | 禁手写注释剥离，一律走 `helpers/source_guard.dart` |
| `test/settings/md3_design_system_static_test.dart` | `lib/src` 全树（仅其中 1 个 test） | 页面 chrome 不得重开本地 MD3 决策（裸 `Card(`/`ListTile(`/`fontSize:`/`BorderRadius.circular(`…） |
| `test/tools/dart_source_no_raw_nul_guard_test.dart` | `fushi/{lib,test}` + `packages/<非 vendored>/{lib,test}`（**磁盘枚举**，BUG-2378） | `.dart` 不得含裸 NUL（git 判 binary 会静默丢改动） |
| `test/tools/duplicate_policy_naming_guard_test.dart` | `lib` + `test` 全树 | 7 个淘汰命名不得复活 |
| `test/tools/media_kind_persistence_guard_test.dart` | 6 个生产 `lib` 根 | MediaKind 持久化只经 `dbValue`/`compositeKey` |
| `test/tools/book_format_discipline_guard_test.dart` | `lib`+`test`+`fushi_core/lib` | `BookFormat` 只经枚举落库/比较 |
| `test/tools/file_picker_discipline_guard_test.dart` | `lib` 全树 | 选择器走统一入口，裸调须登记 |
| `test/tools/image_picker_usage_guard_test.dart` | `lib` 全树 | 桌面可达代码不得直接用 `image_picker` |
| `test/tools/safe_file_name_guard_test.dart` | `lib` 全树 | Windows 非法文件名字符集单一真相源 |
| `test/tools/integration_test_no_tester_tap_guard_test.dart` | `integration_test/` 全树 | 集成测试禁坐标点击 |
| `test/tools/itest_focus_navigation_prerequisite_guard_test.dart` | `integration_test/` 全树 | 起真 app 的 itest 必须先开焦点导航 |
| `test/database/package_schema_version_literal_guard_test.dart` | `packages/*/test` 全树 | package 测试禁 `schemaVersion` 等值断言 |
| `test/sync/no_hardcoded_google_secret_test.dart` | `lib` 全树 | 源码不得出现 OAuth secret 明文 |
| `test/sync/mime_types_test.dart` | 6 个 `lib` 根 | 禁新增「扩展名 → image MIME」switch 副本 |
| `test/sync/desktop_lookup_foreground_guard_static_test.dart` | `lib/src` 全树 | 抢前台/任务栏闪烁只能走单一封装 |
| `test/storage/documents_whitelist_guard_test.dart` | `lib` 全树 | 新增 documents 子目录必须进迁移白名单 |
| `test/storage/path_rebase_coverage_guard_test.dart` | `lib` 全树（pref 扫描） | 新增路径形 pref / DB 列必须双向登记 |
| `test/focus/focus_architecture_static_test.dart` | `lib/src` 全树 | 焦点滚动必须走 `FushiFocusScroll` |
| `test/lookup/auto_read_surface_coverage_guard_test.dart` | `lib` 全树 | 每个 `searchDictionary(` 调用点须声明接不接自动朗读 |
| `test/pages/lookup_overlay_dialog_gate_guard_test.dart` | `lib` 全树 | 查词浮层每个子项都能走到对话框隐藏计数 |
| `test/shortcuts/shortcut_channel_wiring_guard_test.dart` | `lib` 全树 | 开放的输入通道必须真有解析入口 |
| `test/webview/webview_render_process_gone_guard_test.dart` | `lib` 全树 | 每处 WebView 构造必须传 `onRenderProcessGone` |
| `test/widgets/horizontal_drag_scroll_guard_test.dart` | `lib` 全树 | 横向滚动区必须包 `HorizontalDragScrollable` |
| `test/widgets/reorderable_scale_safety_guard_test.dart` | `lib` 全树 | 禁用 SDK `ReorderableListView`/`GridView` |
| `test/media/collections/collection_asset_reclaim_test.dart` | `lib` 全树 | 禁裸调 DAO 删合集（须回收磁盘资产） |
| `test/media/drag_drop/drag_drop_platform_guard_test.dart` | `lib` 全树 | `desktop_drop` 只能被平台门控 wrapper 导入 |
| `test/media/media_cover_write_guard_test.dart` | `lib` 全树 | 封面写盘 → 驱逐缓存收口在 `MediaCoverService` |
| `test/media/sources/book_history_split_guard_test.dart` | `lib` 全树 | 书族源恒 `implementsHistory: false` |
| `test/media/video/real_path_directory_picker_test.dart` | `lib` 全树 | 生产代码不得用 iOS `FileType.audio` |
| `test/ios/info_plist_media_permission_guard_test.dart` | `lib` 全树（作谓词） | 用了相机/相册/音频就必须有 `Info.plist` 声明 |
| `test/i18n/i18n_completeness_test.dart` | `lib/i18n` 全部 17 份 | 17 语言 key 完整、无孤儿、插值一致 |
| `test/pages/reader_fushi_page_source_corpus_test.dart` | `reader_fushi/` part 目录枚举 | 合并语料覆盖每个 part（漏登记会让 90+ 条守卫真空通过） |
| `test/pages/reader_history_source_corpus_test.dart` | `reader_history/` part 目录枚举 | 同上，书架页语料 |
| `test/pages/video_fushi_page_source_corpus_test.dart` | `video_fushi/` part 目录枚举 | 同上，视频页语料 |
| `test/sync/sync_settings_schema_source_corpus_test.dart` | `sync_settings_schema/` part 目录枚举 | 同上，同步设置 schema 语料 |
| `test/tools/outbound_http_discipline_guard_test.dart` | `fushi/lib` + 6 个 `packages/*/lib` | 裸 `HttpClient(`/`http.Client(`/`IOClient(`/`Dio(` 必须经统一装配点，例外须登记（BUG-1498） |
| `test/utils/share_entry_point_guard_test.dart` | `lib` 全树 | 系统分享只能走 `FushiShare` 入口，裸 `Share.share`/`SharePlus*` 会丢 iOS popover 锚点（BUG-2064） |
| `test/dictionary/parked_realm_host_registration_guard_test.dart` | `lib` 全树 | 每个建 `DictionaryPopupController` 的宿主都要登记停驻 realm（自带 `hosts >= 7` 哨兵） |
| `test/lookup/popup_static_revision_dedup_guard_test.dart` | `lib` 全树 | 每个 `buildStackRenderScript` 调用方必须 commit 版本并接 `staticSettingsRequired` 回补 |
| `test/models/preference_keys_guard_test.dart` | `lib` + `../packages/*/lib` | `getPref*`/`setPref*` 的字面量键必须在 `kKnownPreferenceKeys` 里 |
| `test/pages/legacy_video_scrape_surface_guard_test.dart` | `lib` 全树 | legacy 在线刮削（TMDB 直连 / 候选链 / 弹窗）不得复活 |
| `test/pages/library_view_labels_unique_test.dart` | `lib` 全树 | 库页壳的视图标签全仓唯一（新壳自动入网） |
| `test/pages/open_in_anki_wiring_static_test.dart` | `lib` 全树 + `packages/fushi_anki/lib` | 「按词打开 Anki」只有登记的三条车道，禁第二处自制反查拼装（BUG-2051） |
| `test/shortcuts/video_pointer_channel_reachability_test.dart` | `lib` 全树 | 视频指针通道的每条腿都得有真宿主接住（两处 `expectScanScale`） |
| `test/stats/study_char_caliber_guard_test.dart` | `lib` + `../packages/*/lib` | 裸 `.runes/.characters.length` 计字口径必须登记 |
| `test/tools/epub_chapter_parse_entry_guard_test.dart` | `lib` + `../packages/*/lib` | EPUB 章节解析只有单一入口 |
| `test/tools/fushi_rename_guard_test.dart` | `lib` + 6 个 `packages/*/lib`（另加路径形态扫描根） | 旧代号 `Hibiki` 在代码位零残留 + 白名单无过期豁免 |
| `test/tools/outbound_user_agent_guard_test.dart` | `lib` 全树 | 对外 UA 不得再报旧名（本次补入 `expectScanScale`） |
| `test/tools/statistics_write_convergence_guard_test.dart` | `lib` 全树 | 统计写入口收敛，legacy 四表禁直写 |
| `test/tools/tests_for_changes_guard_test.dart` | `test/` 全树 + 全仓路径索引 | 「按触发条件加跑」的推导规则本身：索引规模 + 逐树下界 + 声明 glob 有效 |
| `test/torrent/download_http_client_proxy_test.dart` | `lib` + 4 个 `packages/*/lib` | 下载链路的 HttpClient 必须走统一代理装配 |
| `test/utils/net/network_image_proxy_guard_test.dart` | `lib` 全树 | 远端图片必须走 `AppHttpImage`/`AppCachedHttpImage`，裸 provider 会绕过全应用代理装配（自带 `expectScanScale` 哨兵） |

以下是 Bash 调用示例；Windows 可将同一目标清单传给 PowerShell 中的 Dart。每次使用独立输出目录，检查整批退出码及各 suite 是否执行；不要把空目标列表传给测试入口。

```bash
cd fushi && dart run tool/flutter_test_failures.dart --no-pub \
  --output-dir=../.codex-test/flutter-test-guards-task \
  test/tools/source_guard_adoption_test.dart test/settings/md3_design_system_static_test.dart \
  test/tools/dart_source_no_raw_nul_guard_test.dart test/tools/duplicate_policy_naming_guard_test.dart \
  test/tools/media_kind_persistence_guard_test.dart test/tools/book_format_discipline_guard_test.dart \
  test/tools/file_picker_discipline_guard_test.dart test/tools/image_picker_usage_guard_test.dart \
  test/tools/safe_file_name_guard_test.dart test/tools/integration_test_no_tester_tap_guard_test.dart \
  test/tools/itest_focus_navigation_prerequisite_guard_test.dart \
  test/database/package_schema_version_literal_guard_test.dart \
  test/sync/no_hardcoded_google_secret_test.dart test/sync/mime_types_test.dart \
  test/sync/desktop_lookup_foreground_guard_static_test.dart \
  test/storage/documents_whitelist_guard_test.dart test/storage/path_rebase_coverage_guard_test.dart \
  test/focus/focus_architecture_static_test.dart test/lookup/auto_read_surface_coverage_guard_test.dart \
  test/pages/lookup_overlay_dialog_gate_guard_test.dart test/shortcuts/shortcut_channel_wiring_guard_test.dart \
  test/webview/webview_render_process_gone_guard_test.dart test/widgets/horizontal_drag_scroll_guard_test.dart \
  test/widgets/reorderable_scale_safety_guard_test.dart test/media/collections/collection_asset_reclaim_test.dart \
  test/media/drag_drop/drag_drop_platform_guard_test.dart test/media/media_cover_write_guard_test.dart \
  test/media/sources/book_history_split_guard_test.dart test/media/video/real_path_directory_picker_test.dart \
  test/ios/info_plist_media_permission_guard_test.dart test/i18n/i18n_completeness_test.dart \
  test/pages/reader_fushi_page_source_corpus_test.dart \
  test/pages/reader_history_source_corpus_test.dart \
  test/pages/video_fushi_page_source_corpus_test.dart \
  test/sync/sync_settings_schema_source_corpus_test.dart \
  test/tools/outbound_http_discipline_guard_test.dart \
  test/utils/share_entry_point_guard_test.dart \
  test/dictionary/parked_realm_host_registration_guard_test.dart \
  test/lookup/popup_static_revision_dedup_guard_test.dart \
  test/models/preference_keys_guard_test.dart \
  test/pages/legacy_video_scrape_surface_guard_test.dart \
  test/pages/library_view_labels_unique_test.dart \
  test/pages/open_in_anki_wiring_static_test.dart \
  test/shortcuts/video_pointer_channel_reachability_test.dart \
  test/stats/study_char_caliber_guard_test.dart \
  test/tools/epub_chapter_parse_entry_guard_test.dart \
  test/tools/fushi_rename_guard_test.dart \
  test/tools/outbound_user_agent_guard_test.dart \
  test/tools/statistics_write_convergence_guard_test.dart \
  test/tools/tests_for_changes_guard_test.dart \
  test/torrent/download_http_client_proxy_test.dart \
  test/utils/net/network_image_proxy_guard_test.dart
```

新增目录枚举型守卫须有非空/扫描规模检查；禁止型判据需用独立合成违规语料自校验。修改扫描器/共享原语时再做相应验证，不能用现有仓库全绿证明判据本身有效。编译失败或零执行不算有效的行为变异。
