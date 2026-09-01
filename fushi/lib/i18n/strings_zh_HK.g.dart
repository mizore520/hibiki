part of 'strings.g.dart';

// Path: <root>
class _StringsZhHk extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsZhHk.build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.zhHk,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super.build(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <zh-HK>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  @override
  late final _StringsZhHk _root = this; // ignore: unused_field

  // Translations
  @override
  String get action_exit => '結束';
  @override
  String get action_favorite => '收藏';
  @override
  String activity_days_ago({required Object n}) => '${n} 天前';
  @override
  String activity_hours_ago({required Object n}) => '${n} 小時前';
  @override
  String get activity_just_now => '剛剛';
  @override
  String activity_minutes_ago({required Object n}) => '${n} 分鐘前';
  @override
  String get add_to_collection => '加入合集';
  @override
  String get anime_download_back => '返回';
  @override
  String get anime_download_batch => '合集';
  @override
  String get anime_download_category_all => '全部';
  @override
  String get anime_download_category_english => '英譯';
  @override
  String get anime_download_category_non_english => '非英譯';
  @override
  String get anime_download_category_raw => '生肉';
  @override
  String get anime_download_delete => '刪除';
  @override
  String anime_download_episode_count({required Object count}) => '${count} 集';
  @override
  String get anime_download_generic_download => '下載';
  @override
  String get anime_download_generic_hint => '磁力連結';
  @override
  String get anime_download_generic_title => '貼上連結下載（書、影片等）';
  @override
  String get anime_download_include_subs => '附帶字幕';
  @override
  String get anime_download_kind_auto => '自動';
  @override
  String get anime_download_kind_book => '書';
  @override
  String get anime_download_kind_video => '影片';
  @override
  String get anime_download_magnet_invalid => '磁力連結無效';
  @override
  String get anime_download_no_results => '無結果';
  @override
  String get anime_download_no_subs => '無字幕';
  @override
  String get anime_download_no_tasks => '暫無下載任務';
  @override
  String get anime_download_nyaa_query => 'Nyaa 查詢詞';
  @override
  String get anime_download_play_now => '邊下邊播';
  @override
  String get anime_download_play_now_fail => '暫不可提前入庫（元數據未就緒或連接失敗），稍後再試';
  @override
  String get anime_download_play_now_ok => '已入庫，可從影片庫打開邊下邊播';
  @override
  String get anime_download_push => '推送下載';
  @override
  String get anime_download_push_failed => '推送到 qBittorrent 失敗';
  @override
  String get anime_download_pushed => '已推送，下載完成後自動入庫';
  @override
  String get anime_download_refresh => '重新整理';
  @override
  String get anime_download_relocate => '重命名 / 移動';
  @override
  String anime_download_relocate_engine_failed({required Object reason}) =>
      '失敗，磁碟與庫都未改動：${reason}';
  @override
  String get anime_download_relocate_hint =>
      'Fushi 通過下載引擎改名/移動，因此不會掐斷做種。在資源管理器裡改名則永遠無法挽回。';
  @override
  String anime_download_relocate_library_failed({required Object reason}) =>
      '檔案已移動，但庫仍指向舊路徑：${reason}';
  @override
  String get anime_download_relocate_move_title => '移動到資料夾';
  @override
  String get anime_download_relocate_no_files => '該任務還沒有可改名的檔案（元數據未就緒）';
  @override
  String anime_download_relocate_ok({required Object rows}) =>
      '已改名 / 移動，同步更新 ${rows} 個庫條目';
  @override
  String get anime_download_relocate_pick_folder => '選擇目標資料夾';
  @override
  String get anime_download_relocate_rename_title => '重命名檔案';
  @override
  String get anime_download_retry => '重試';
  @override
  String get anime_download_search => '搜索';
  @override
  String get anime_download_search_error_proxy_hint => '站點無法直連時，可在下載設定中配置網路代理。';
  @override
  String get anime_download_search_failed => '搜索失敗或超時，請點重試';
  @override
  String get anime_download_search_hint => '番劇名';
  @override
  String get anime_download_search_start_hint =>
      '在上方搜索作品名，自動匹配種子與字幕。下載不限影片：書籍、漫畫、有聲書、遊戲也會自動入庫。';
  @override
  String get anime_download_sort_date => '發布時間';
  @override
  String get anime_download_sort_seeders => '做種數';
  @override
  String get anime_download_sort_size => '體積';
  @override
  String get anime_download_store_unavailable => '下載計劃存儲不可用';
  @override
  String get anime_download_subs_badge => '字幕';
  @override
  String get anime_download_subs_failed => '字幕搜索失敗，請點重試';
  @override
  String get anime_download_subs_need_key => '在上方填寫 Jimaku API key 後可搜字幕';
  @override
  String get anime_download_tasks => '下載任務';
  @override
  String get anime_download_title => '番劇下載';
  @override
  String get anime_download_trusted => 'Trusted';
  @override
  String get anime_download_trusted_only => '僅 Trusted';
  @override
  String get anki_allow_duplicates => '允許重複';
  @override
  String get anki_allow_duplicates_hint => '新增卡片時跳過重複檢查';
  @override
  String get anki_card_action_failed => '卡片操作失敗，請重試。';
  @override
  String get anki_compact_glossaries => '精簡釋義';
  @override
  String get anki_compact_glossaries_hint => '使用精簡格式顯示釋義';
  @override
  String get anki_connect_api_key => 'API 金鑰';
  @override
  String get anki_connect_host => '主機';
  @override
  String get anki_connect_port => '連接埠';
  @override
  String get anki_create_lapis => '建立 Lapis 卡組';
  @override
  String get anki_create_lapis_exists => 'Lapis 筆記類型與卡組已存在，已為你選取。';
  @override
  String anki_create_lapis_failed({required Object error}) =>
      '無法建立 Lapis 卡組：${error}';
  @override
  String get anki_create_lapis_hint => '向 Anki 加入 Lapis 筆記類型與 Lapis 卡組並自動選取。';
  @override
  String get anki_create_lapis_success => '已建立 Lapis 筆記類型與卡組。';
  @override
  String get anki_deck => '牌組';
  @override
  String get anki_duplicate_scope => '查重範圍';
  @override
  String get anki_duplicate_scope_collection => '整個收藏集';
  @override
  String get anki_duplicate_scope_deck => '所選卡組（含子卡組）';
  @override
  String get anki_duplicate_scope_deck_root => '根卡組（含全部子卡組）';
  @override
  String get anki_duplicate_scope_hint =>
      '查詢「這個詞是否已經有卡」時搜索哪些卡組。僅 AnkiConnect（桌面 Anki）生效；AnkiDroid 始終整庫查重。';
  @override
  String get anki_error_collection_unavailable =>
      'AnkiDroid 的資料庫目前不可用。請先開啟 AnkiDroid 至少一次，確認它沒有在同步且已啟用 API，然後再試一次。';
  @override
  String get anki_error_connection_refused =>
      '無法連接 Anki：連接被拒絕。請確認 Anki 桌面版正在執行，且已安裝 AnkiConnect 外掛程式。';
  @override
  String get anki_error_connection_timeout => '無法連接 Anki：連接逾時。請檢查主機、連接埠和防火牆設定。';
  @override
  String get anki_error_connection_unknown => '無法匯出到 Anki：發生未知的連接錯誤。詳情見錯誤記錄檔。';
  @override
  String get anki_error_http => '無法匯出到 Anki：連接 AnkiConnect 時發生 HTTP 錯誤。';
  @override
  String get anki_error_permission_denied =>
      'AnkiDroid 尚未授予卡片訪問權限。請在剛彈出的系統授權對話框中允許，然後再次點擊按鈕製卡。';
  @override
  String get anki_fetch => '重新整理牌組與筆記類型';
  @override
  String get anki_fetching => '擷取中…';
  @override
  String get anki_field_mappings => '欄位對應';
  @override
  String get anki_field_not_mapped => '未對應';
  @override
  String get anki_mine_to_server => '製卡到已配對設備';
  @override
  String get anki_mine_to_server_hint =>
      '把製卡發送到已配對主機的 Anki（用該設備的牌組與設定），而非本機。需先在互聯/同步裡完成配對。';
  @override
  String get anki_mined_action_add_duplicate => '新增為重復卡';
  @override
  String get anki_mined_action_overwrite => '覆寫這張卡';
  @override
  String get anki_mined_action_view => '查看 / 在 Anki 中打開';
  @override
  String get anki_mined_card_subtitle => '選擇對這張已存在的卡片做什麼。';
  @override
  String get anki_mined_card_title => '卡片已在 Anki 中';
  @override
  String anki_mined_multiple_matches({required Object count}) =>
      '${count} 張匹配的卡片';
  @override
  String get anki_not_configured => '點按「重新整理」載入你的 Anki 牌組與筆記類型。';
  @override
  String get anki_note_open_failed => '無法在 Anki 中打開這張卡片。';
  @override
  String get anki_note_type => '筆記類型';
  @override
  String get anki_note_viewer_empty => '這張卡片沒有可讀取的字段。';
  @override
  String get anki_note_viewer_open_in_anki => '在 Anki 中打開';
  @override
  String get anki_note_viewer_title => '已存在的卡片';
  @override
  String get anki_open_no_card => '在 Anki 中沒有找到這個詞的卡片。';
  @override
  String get anki_overwrite_scope => '覆寫範圍';
  @override
  String get anki_overwrite_scope_all => '全部相符的卡片';
  @override
  String get anki_overwrite_scope_hint => '綠色 ✓ 可覆寫哪些已製作的卡片';
  @override
  String get anki_overwrite_scope_latest => '僅最近一張';
  @override
  String get anki_refresh_hint => '在 Anki 中新建或重新命名牌組、筆記類型後，點此重新整理。';
  @override
  String anki_select_handlebar({required Object field}) => '選擇 ${field} 的值';
  @override
  String get anki_settings_label => 'Anki 設定';
  @override
  String get anki_tag_default_section => '預設標籤';
  @override
  String get anki_tag_include_category => '加入來源分類標籤';
  @override
  String get anki_tag_include_category_hint => '書籍標「book」、影片標「video」、遊戲標「game」';
  @override
  String get anki_tag_include_fushi => '加入「fushi」標籤';
  @override
  String get anki_tag_include_fushi_hint => '為每張由 Fushi 製作的卡片打上標記';
  @override
  String get anki_tags => '標籤';
  @override
  String get anki_tags_hint => '以空格分隔，每張卡片都會加入';
  @override
  String get app_icon_label => '應用程式圖示';
  @override
  String get app_icon_presets => '預設';
  @override
  String get app_ui_scale => '介面大小';
  @override
  String get app_ui_scale_hint =>
      'Scales app text and spacing. Lower it on large screens if controls feel oversized.';
  @override
  String get app_version => 'App 版本';
  @override
  String get apply_theme => '套用主題';
  @override
  String get audio_clip_failed => '無法擷取音訊片段 — 音訊來源可能缺失或無法讀取';
  @override
  String get audio_import => '匯入音訊';
  @override
  String get audio_panel_add_audio => '新增音訊';
  @override
  String get audio_panel_auto => '自動';
  @override
  String get audio_panel_pick_new_subtitle => '選擇新字幕檔';
  @override
  String get audio_source_added => '已新增音訊來源';
  @override
  String audio_source_dns_error({required Object host}) =>
      '音頻來源連線失敗：無法解析 "${host}" — 請檢查網絡，或在設定中移除此來源';
  @override
  String get audio_source_edit_target_gone => '該音頻來源已不存在，編輯已丟棄';
  @override
  String get audio_source_edit_url => '編輯音頻來源連結';
  @override
  String audio_source_error({required Object detail}) => '音頻來源錯誤：${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi 互聯';
  @override
  String get audio_source_loopback_warning => '指向本機地址，換機後需重新指向';
  @override
  String audio_source_request_error({required Object detail}) =>
      '音頻來源請求失敗：${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      '音頻來源逾時："${host}" — 伺服器無回應，請稍後再試或更換來源';
  @override
  String get audio_source_updated => '已更新音頻來源';
  @override
  String get audio_source_url_invalid => '連結須為 http(s) 並含 term／reading 預留位置';
  @override
  String get audio_unavailable => '未找到音訊。';
  @override
  String get audio_volume => '音量';
  @override
  String get audiobook_attached => '已附加有聲書';
  @override
  String get audiobook_audio_missing => '音頻檔案丟失';
  @override
  String get audiobook_background_play => '離開後繼續播放';
  @override
  String get audiobook_background_play_hint =>
      '關閉時，離開閱讀頁即停止有聲書播放；開啟後離開仍在背景繼續播放。';
  @override
  String get audiobook_export_clip => '導出片段影片';
  @override
  String get audiobook_export_clip_failed => '片段導出失敗';
  @override
  String get audiobook_export_clip_in_progress => '正在導出片段…';
  @override
  String get audiobook_export_clip_no_selection => '請先選中文本再導出片段';
  @override
  String get audiobook_export_clip_no_text => '該選區沒有可渲染的文本';
  @override
  String get audiobook_export_clip_saved => '片段已保存';
  @override
  String get audiobook_export_clip_unsupported_range => '該選區暫不支持導出（跨章或跨音頻檔案）';
  @override
  String get audiobook_import => '匯入有聲書';
  @override
  String get audiobook_import_error => '匯入失敗';
  @override
  String audiobook_import_error_copy_failed({required Object name}) =>
      '檔案複製失敗：${name}';
  @override
  String audiobook_import_error_disk_full({required Object size}) =>
      '磁碟空間不足。所需空間：${size}';
  @override
  String get audiobook_import_success => '有聲書匯入成功';
  @override
  String get audiobook_load_error => '載入有聲書失敗。';
  @override
  String get audiobook_pick_alignment => '選擇對齊檔案';
  @override
  String get audiobook_reference_original => '引用原檔案（不復製）';
  @override
  String get audiobook_reference_original_desc =>
      '音頻保留在原位置、按原路徑播放；原檔案被移動或刪除後這本書會失效。';
  @override
  String get audiobook_relocate => '重新定位檔案';
  @override
  String get audiobook_relocate_done => '音頻已重新定位';
  @override
  String get auto_add_book_name_to_tags => '自動將書名加入標籤';
  @override
  String auto_chapter({required Object n}) => '第 ${n} 章';
  @override
  String get auto_read_on_lookup => '查詞時自動朗讀';
  @override
  String get auto_search => '自動搜尋';
  @override
  String get auto_search_debounce_delay => '自動搜尋防抖延遲';
  @override
  String get auto_select_search_window => '自動選擇搜尋視窗';
  @override
  String get auto_select_search_window_hint => '匯入時探測多檔視窗，取命中率最高的那檔';
  @override
  String get av_sync => '影音同步';
  @override
  String get av_sync_reset => '歸零';
  @override
  String get back => '返回';
  @override
  String get background_color => '背景顏色';
  @override
  String get background_color_desc => '閱讀器頁面背景';
  @override
  String get backup_category_audiobooks => '有聲書音訊';
  @override
  String get backup_category_audiobooks_desc => '有聲書音頻與對齊數據';
  @override
  String get backup_category_books => '書籍內容';
  @override
  String get backup_category_books_desc => '書籍檔案（EPUB 及解壓內容）';
  @override
  String get backup_category_dictionary => '詞典';
  @override
  String get backup_category_dictionary_desc => '已導入的詞典及其檔案';
  @override
  String get backup_category_fonts => '自訂字型';
  @override
  String get backup_category_fonts_desc => '已導入的自定義字體檔案';
  @override
  String get backup_category_local_audio => '本地音頻資料庫';
  @override
  String get backup_category_local_audio_desc => '本地發音音頻庫';
  @override
  String get backup_category_profiles => '配置方案';
  @override
  String get backup_category_profiles_desc => '配置方案';
  @override
  String get backup_category_progress => '閱讀進度';
  @override
  String get backup_category_progress_desc => '閱讀進度與書簽';
  @override
  String get backup_category_settings => '設定';
  @override
  String get backup_category_settings_desc => '應用與閱讀器設定';
  @override
  String get backup_category_statistics => '統計數據';
  @override
  String get backup_category_statistics_desc => '閱讀、影片與製卡統計';
  @override
  String get backup_category_videos => '影片';
  @override
  String get backup_category_videos_desc => '本地影片檔案';
  @override
  String get backup_export => '匯出備份';
  @override
  String get backup_export_books_all => '全部書籍';
  @override
  String backup_export_books_selected({required Object count}) =>
      '已選 ${count} 本書';
  @override
  String get backup_export_categories_hint =>
      '勾選要打包進備份的內容。取消勾選「書籍」會連同這些書的正文和記錄一併移除。';
  @override
  String get backup_export_categories_title => '選擇要匯出的內容';
  @override
  String get backup_export_choose_books => '選擇書籍';
  @override
  String get backup_export_choose_videos => '選擇影片';
  @override
  String backup_export_failed({required Object message}) => '備份匯出失敗：${message}';
  @override
  String get backup_export_hint =>
      '勾選要包含的內容；資料庫（書籍、進度、統計）一律包含。取消大型項目（本地音訊、影片）可縮小備份體積。';
  @override
  String get backup_export_no_books => '沒有可選的書籍';
  @override
  String get backup_export_no_videos => '沒有可選的影片';
  @override
  String get backup_export_select_all => '全選';
  @override
  String get backup_export_select_none => '全不選';
  @override
  String get backup_export_success => '備份匯出成功';
  @override
  String get backup_export_videos_all => '全部影片';
  @override
  String backup_export_videos_selected({required Object count}) =>
      '已選 ${count} 個影片';
  @override
  String get backup_exporting => '正在建立備份…';
  @override
  String get backup_import => '匯入備份';
  @override
  String backup_import_confirm({
    required Object date,
    required Object bookCount,
    required Object statsCount,
  }) =>
      '此操作會用 ${date} 的備份取代所有目前資料。\n\n共 ${bookCount} 本書、${statsCount} 條統計記錄。\n\n還原後 App 將會重新啟動。';
  @override
  String get backup_import_confirm_title => '還原備份？';
  @override
  String get backup_import_contents_hint => '取消勾選某項即可跳過它。';
  @override
  String get backup_import_contents_title => '此備份包含';
  @override
  String backup_import_failed({required Object message}) => '備份匯入失敗：${message}';
  @override
  String get backup_import_hint => '從備份檔案還原。App 將會重新啟動。';
  @override
  String get backup_import_invalid => '無效的備份檔案';
  @override
  String backup_import_merge_preview({
    required Object bookCount,
    required Object progressCount,
  }) => '合併將新增 ${bookCount} 本書、更新 ${progressCount} 條閱讀進度。';
  @override
  String get backup_import_mode_label => '導入方式';
  @override
  String get backup_import_mode_merge => '合併到現有庫';
  @override
  String get backup_import_mode_overwrite => '覆蓋整庫';
  @override
  String get backup_import_overlay_title => '正在導入備份';
  @override
  String get backup_import_overlay_warning => '正在恢復數據，請勿關閉應用。';
  @override
  String get backup_import_preserve_sync_note => '本裝置的同步設定（帳戶與憑證）將會保留。';
  @override
  String get backup_import_restart_button => '立即重啟';
  @override
  String get backup_import_settings_off_hint => '保留本機字型／外觀／Profile，只還原書籍與閱讀資料。';
  @override
  String get backup_import_settings_on_hint => '完整還原：字型、外觀及 Profile 均來自備份。';
  @override
  String get backup_import_settings_toggle => '匯入設定與 Profile';
  @override
  String get backup_import_success => '備份已還原。正在重新啟動…';
  @override
  String get backup_import_validating_hint => '正在校驗並預覽備份內容，請稍候。';
  @override
  String get backup_import_validating_title => '正在讀取備份…';
  @override
  String backup_schema_newer({required Object version}) =>
      '此備份需要較新版本的 App（schema ${version}）。請先更新。';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      '已把 ${n} 項加入合集。';
  @override
  String batch_delete_confirm({required Object n}) => '確定刪除 ${n} 本書？此操作不可撤銷。';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      '確定刪除 ${n} 個影片？此操作不可撤銷。';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      '刪除 ${n} 個媒體、解散 ${m} 個合集？此操作無法撤銷。';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      '已刪除 ${n} 個媒體、解散 ${m} 個合集。';
  @override
  String batch_delete_success({required Object n}) => '已刪除 ${n} 本書。';
  @override
  String batch_delete_success_video({required Object n}) => '已刪除 ${n} 個影片。';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      '解散 ${m} 個合集？只解除分組，不刪除媒體本體。';
  @override
  String batch_dissolve_success({required Object m}) => '已解散 ${m} 個合集。';
  @override
  String get batch_invert_selection => '反選';
  @override
  String get batch_select => '選擇';
  @override
  String get batch_select_all => '全選';
  @override
  String batch_selected_count({required Object n}) => '已選 ${n} 項';
  @override
  String get batch_tag_add => '添加';
  @override
  String batch_tag_added({required Object n, required Object name}) =>
      '已為 ${n} 本書添加標籤「${name}」。';
  @override
  String batch_tag_added_video({required Object n, required Object name}) =>
      '已為 ${n} 個影片添加標籤「${name}」。';
  @override
  String get batch_tag_apply => '套用';
  @override
  String get batch_tag_keep => '保留';
  @override
  String get batch_tag_remove => '移除';
  @override
  String batch_tag_removed({required Object n, required Object name}) =>
      '已從 ${n} 本書移除標籤「${name}」。';
  @override
  String batch_tag_removed_video({required Object n, required Object name}) =>
      '已從 ${n} 個影片移除標籤「${name}」。';
  @override
  String get batch_tag_title => '批量管理標籤';
  @override
  String get book_continue_reading => 'Continue Reading';
  @override
  String get book_css_editor_cancel => '取消';
  @override
  String get book_css_editor_confirm_reset => '將此檔案的 CSS 重設為預設值？';
  @override
  String get book_css_editor_confirm_reset_all => '將所有檔案的 CSS 重設為預設值？';
  @override
  String get book_css_editor_discard => '捨棄';
  @override
  String get book_css_editor_edit_css => '編輯書籍 CSS';
  @override
  String get book_css_editor_no_css_files => '此書中未找到 CSS 檔案。';
  @override
  String get book_css_editor_no_extract_dir => '未找到書籍目錄。請重新匯入書籍以編輯 CSS。';
  @override
  String get book_css_editor_reset_all => '全部重設';
  @override
  String get book_css_editor_reset_current => '重設目前';
  @override
  String get book_css_editor_reset_done => 'CSS 已重設。';
  @override
  String get book_css_editor_save => '儲存';
  @override
  String get book_css_editor_saved => 'CSS 已儲存。';
  @override
  String get book_css_editor_title => '書籍 CSS 編輯器';
  @override
  String get book_css_editor_unsaved_changes => '未儲存的變更';
  @override
  String get book_css_editor_unsaved_changes_message => '有未儲存的變更。是否捨棄？';
  @override
  String get book_directory_not_found => '未找到書籍目錄。';
  @override
  String get book_edit_author => '作者';
  @override
  String get book_file_not_found => '找不到書籍檔案';
  @override
  String get book_import_duplicate_cancel => '否，取消';
  @override
  String get book_import_duplicate_cancelled => '已取消匯入';
  @override
  String get book_import_duplicate_keep => '是，加上後綴';
  @override
  String book_import_duplicate_message({required Object name}) =>
      '書架中已有名為「${name}」的書籍。仍要匯入嗎？「是」會加上編號後綴匯入，「否」則取消。';
  @override
  String get book_import_duplicate_title => '同名書籍';
  @override
  String get book_mark_completed_action => '標記為已讀完';
  @override
  String get book_mark_uncompleted_action => '取消已讀完';
  @override
  String get book_marked_completed => '已標記為讀完';
  @override
  String get book_marked_uncompleted => '已取消完成標記';
  @override
  String get book_mode => '書籍模式';
  @override
  String book_read_progress({required Object percent}) => '已讀 ${percent}%';
  @override
  String get book_scrape_cover => '在線刮削封面';
  @override
  String get book_scrape_empty => '無匹配封面';
  @override
  String get book_scrape_failed => '封面獲取失敗';
  @override
  String get book_scrape_hint => '書名 / 作者';
  @override
  String get book_scrape_search => '搜索';
  @override
  String get book_scrape_search_failed => '搜索失敗，請點擊「搜索」重試';
  @override
  String get book_scrape_title => '在線匹配封面';
  @override
  String get book_scrape_use => '使用';
  @override
  String get book_search => '書內搜尋';
  @override
  String get book_search_hint => '輸入搜尋內容…';
  @override
  String get book_search_no_results => '未找到結果';
  @override
  String book_search_results({required Object n}) => '${n} 項結果';
  @override
  String get books => '書架';
  @override
  String get browser_extension_enable_server_first =>
      '提示：請先在上方開啟「Yomitan API 伺服器」並設定 API 密鑰，擴展才能被自動配置為可用連接。';
  @override
  String get browser_extension_mobile_unsupported =>
      '手機瀏覽器無法載入此擴充功能，請直接在 app 內閱讀器／影片中查詞。';
  @override
  String get browser_extension_page_intro =>
      '在電腦的 Chrome / Edge 裡直接劃詞查詞、解析字幕、一鍵製卡。先在下面準備擴展檔案，再按步驟加載到瀏覽器。';
  @override
  String get browser_extension_prepare_button => '準備擴展檔案';
  @override
  String get browser_extension_prepare_hint =>
      '會自動開啟查詞服務並把擴展解壓到本機，擴展資料夾路徑已復製到剪貼板。';
  @override
  String get browser_extension_reinstall_button => '重新準備 / 重新整理檔案';
  @override
  String get browser_extension_server_off => '查詞服務未開啟';
  @override
  String get browser_extension_server_on => '查詞服務已開啟';
  @override
  String get browser_extension_status_connected => '插件已連接';
  @override
  String get browser_extension_status_never => '尚未檢測到插件';
  @override
  String get browser_extension_step_dev_mode => '打開右上角的「開發者模式」開關。';
  @override
  String get browser_extension_step_done_auto =>
      '完成。擴充功能已自動設定好，裝好後會直接連上本應用查詞，你無需手動填寫任何設定。';
  @override
  String get browser_extension_step_load_unpacked => '點擊「加載已解壓的擴展程式」。';
  @override
  String get browser_extension_step_open_page => '打開瀏覽器擴展管理頁：';
  @override
  String get browser_extension_step_pick_folder => '選擇下方的擴展資料夾（其路徑已復製到剪貼板）。';
  @override
  String get browser_extension_step_verify => '驗證插件已加載並連上本機';
  @override
  String get browser_extension_verify_button => '檢測連接';
  @override
  String get browser_extension_verify_checking => '檢測中…';
  @override
  String get browser_extension_verify_connected => '已檢測到插件已連接，一切正常。';
  @override
  String get browser_extension_verify_not_detected =>
      '還沒檢測到插件。請確認已在瀏覽器裡加載並啟用擴展後再檢測。';
  @override
  String get browser_extension_version_app => 'App 內置';
  @override
  String get browser_extension_version_browser => '瀏覽器中加載';
  @override
  String get browser_extension_version_label => '擴展版本';
  @override
  String get browser_extension_version_mismatch =>
      '瀏覽器中加載的擴展不是最新版本：如有需要先重新準備擴展，再到瀏覽器擴展管理頁（chrome://extensions）點「重新加載」。';
  @override
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      '端口 ${port} 正被其他進程佔用（通常是瀏覽器拉起的 yomitan-api 組件，即一個 Python 進程）。可直接結束該進程，或在 Yomitan 高級設定中關閉 Yomitan API，然後重新開啟 Fushi 的 Yomitan API 伺服器。';
  @override
  String get cancel => '取消';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      '卡片封面已降級為靜態幀（動圖不可用）：${reason}';
  @override
  String get card_duplicate => '重複卡片 — 未匯出。';
  @override
  String get card_export_failed => '卡片匯出失敗。';
  @override
  String card_export_failed_detail({required Object reason}) =>
      '匯出卡片失敗：${reason}';
  @override
  String get card_export_not_configured => 'Anki 尚未設定。請開啟 Anki 設定並點擊「擷取」。';
  @override
  String card_exported({required Object deck}) => '卡片已匯出到『${deck}』。';
  @override
  String card_exported_audio_failed({required Object reason}) =>
      '卡片已匯出，但音訊下載失敗（${reason}）。';
  @override
  String get card_mined_no_sentence_captured =>
      '卡片已創建，但未捕獲到句子（請重新選詞，或該處內容無法識別句子）。';
  @override
  String get card_mined_unmapped_sentence_audio_field =>
      '卡片已創建並含句子音頻，但當前 Anki 卡片模板沒有字段映射到它。請把某字段映射到 {sentence-audio}。';
  @override
  String get card_mined_unmapped_sentence_field =>
      '卡片已創建，但當前 Anki 卡片模板沒有任何字段映射到句子。請用設定頁『一鍵創建 Lapis 卡組』，或把某字段映射到 {sentence}。';
  @override
  String get card_mined_without_sentence_audio => '已製卡，但今次選取範圍找不到例句音訊。';
  @override
  String get card_mining_pending => '製卡中…';
  @override
  String card_overwritten({required Object deck}) => '卡片已覆寫至『${deck}』。';
  @override
  String get change_source => '切換來源';
  @override
  String get changelog_empty => '未獲取到更新日志，請檢查網路或代理設定。';
  @override
  String get changelog_open_releases => '打開發布頁';
  @override
  String get changelog_prerelease => '預發布';
  @override
  String chapter_progress({
    required Object idx,
    required Object total,
    required Object suffix,
    required Object pct,
  }) => '第 ${idx} / ${total} 章${suffix} · ${pct}%';
  @override
  String get clear => '清除';
  @override
  String get clear_dictionary_description => '此操作將清除所有歷史辭典搜尋結果。確定嗎？';
  @override
  String get clear_dictionary_title => '清除辭典搜尋歷史';
  @override
  String get lookup_block_capture => '防截屏 / 防錄屏';
  @override
  String get lookup_block_capture_hint =>
      '把查詞懸浮窗從截圖、錄屏、直播串流中排除（Windows）。關閉後，截圖、錄屏和串流即可拍到查詞懸浮窗。';
  @override
  String get collapse_dictionaries => '折疊辭典顯示';
  @override
  String get collection_bookmark => '書籤';
  @override
  String get collection_clear_confirm => '確定清空所選收藏？此操作不可撤銷。';
  @override
  String get collection_clear_scope => '清空範圍';
  @override
  String get collection_collapse => '折疊';
  @override
  String collection_continue_progress({required Object n}) => '繼續看 第${n}集';
  @override
  String get collection_empty => '合集為空';
  @override
  String get collection_expand => '展開';
  @override
  String get collection_export_all_books => '全部書籍';
  @override
  String get collection_export_all_mined => '全部製卡句';
  @override
  String get collection_export_all_words => '全部收藏詞';
  @override
  String get collection_export_dedupe => '按句去重';
  @override
  String get collection_export_failed => '導出失敗';
  @override
  String get collection_export_favorites_scope => '收藏句';
  @override
  String get collection_export_format => '格式';
  @override
  String get collection_export_mined_title => 'Mined Sentences';
  @override
  String get collection_export_no_items => '沒有可導出的內容';
  @override
  String get collection_export_pick_book => '選擇書籍';
  @override
  String get collection_export_save => 'Save Export';
  @override
  String get collection_export_saved => '已保存導出';
  @override
  String get collection_export_scope => '導出範圍';
  @override
  String get collection_export_sentences_title => 'Favorite Sentences';
  @override
  String get collection_export_words_title => 'Favorite Words';
  @override
  String get collection_loading_hint => '正在加載收藏並匹配音頻檔案…';
  @override
  String get collection_member_removed => '已移出合集';
  @override
  String get collection_merge_title => '合併合集';
  @override
  String get collection_merged => '已合併合集。';
  @override
  String get collection_mined => '製卡句';
  @override
  String get collection_open => '打開';
  @override
  String get collection_play => '播放';
  @override
  String get collection_remove_member => '移出合集';
  @override
  String get collection_remove_member_confirm => '將該條目移出合集？條目本身保留。';
  @override
  String get collection_sentence => '句子';
  @override
  String get collection_sort_by_imported => '按導入時間排序';
  @override
  String get collection_sort_by_title => '按名稱排序';
  @override
  String get collection_view_all => '查看全部';
  @override
  String collection_watched_progress({
    required Object done,
    required Object total,
  }) => '已看完 ${done}/${total}';
  @override
  String get collection_word => '單詞';
  @override
  String get collections => '收藏';
  @override
  String get color_container => '容器色';
  @override
  String get color_container_desc => '開關滑軌、播放列背景';
  @override
  String get color_link => '連結顏色';
  @override
  String get color_link_desc => '閱讀器超連結顏色';
  @override
  String get color_primary => '主色';
  @override
  String get color_primary_desc => '音訊醒目標示、按鈕、開關';
  @override
  String get color_sentence_audio_highlight => '音訊醒目標示';
  @override
  String get color_sentence_audio_highlight_desc => '有聲書播放時跟隨當前句的醒目標示顏色';
  @override
  String get color_secondary => '輔色';
  @override
  String get color_secondary_desc => '辭典條目、書架徽章';
  @override
  String get color_tertiary => '第三色';
  @override
  String get color_tertiary_desc => '收藏、閱讀統計';
  @override
  String get columns_per_page => '每頁列數';
  @override
  String get combine_into_series => '組合成系列';
  @override
  String get copied => '已復製';
  @override
  String get copied_to_clipboard => '已複製到剪貼簿。';
  @override
  String get copy => '複製';
  @override
  String get copy_error => '複製錯誤';
  @override
  String get crash_dump_empty => '暫無當機傾印';
  @override
  String crash_dump_label({required Object n}) => '當機傾印 (${n})';
  @override
  String get crash_dump_open_folder => '開啟傾印資料夾';
  @override
  String get crash_dump_privacy_notice =>
      '當機傾印檔案（.dmp）含程序記憶體快照，可能包含你正在閱讀的文字、查過的字詞或其他 App 內資料。請只分享給你信任的開發者。';
  @override
  String get crash_dump_share => '分享傾印';
  @override
  String get crash_dump_share_subject => 'Fushi 當機傾印';
  @override
  String get create_series => '新建系列';
  @override
  String get creator_action_add_to_stash => '加入暫存';
  @override
  String get creator_action_copy_to_clipboard => '複製到剪貼簿';
  @override
  String get creator_action_play_audio => '播放音頻';
  @override
  String get creator_action_share => '分享';
  @override
  String get creator_enhancement_audio_recorder => '錄音';
  @override
  String get creator_enhancement_camera => '相機';
  @override
  String get creator_enhancement_clear_field => '清空欄位';
  @override
  String get creator_enhancement_crop_image => '裁剪圖片';
  @override
  String get creator_enhancement_local_audio => '本地音頻';
  @override
  String get creator_enhancement_open_stash => '打開暫存';
  @override
  String get creator_enhancement_pick_audio => '選擇音頻';
  @override
  String get creator_enhancement_pick_image => '選擇圖片';
  @override
  String get creator_enhancement_pop_from_stash => '從暫存取出';
  @override
  String get creator_enhancement_save_tags => '儲存標籤';
  @override
  String get creator_enhancement_search_dictionary => '查詞典';
  @override
  String get creator_enhancement_sentence_picker => '選句';
  @override
  String get creator_enhancement_text_segmentation => '分詞';
  @override
  String get creator_export_card => '建立卡片';
  @override
  String get creator_field_audio => '詞條音頻';
  @override
  String get creator_field_audio_sentence => '例句音頻';
  @override
  String get creator_field_cloze_after => '填空後文';
  @override
  String get creator_field_cloze_before => '填空前文';
  @override
  String get creator_field_cloze_inside => '填空內容';
  @override
  String get creator_field_collapsed_meaning => '摺疊釋義';
  @override
  String get creator_field_context => '上下文';
  @override
  String get creator_field_cue_sentence => '字幕例句';
  @override
  String get creator_field_expanded_meaning => '展開釋義';
  @override
  String get creator_field_frequency => '詞頻';
  @override
  String get creator_field_furigana => '振假名';
  @override
  String get creator_field_hidden_meaning => '隱藏釋義';
  @override
  String get creator_field_image => '圖片';
  @override
  String get creator_field_meaning => '釋義';
  @override
  String get creator_field_notes => '筆記';
  @override
  String get creator_field_pitch_accent => '聲調';
  @override
  String get creator_field_reading => '讀音';
  @override
  String get creator_field_sentence => '例句';
  @override
  String get creator_field_tags => '標籤';
  @override
  String get creator_field_term => '詞條';
  @override
  String get custom_dict_css => '自訂 CSS';
  @override
  String get custom_dict_css_global => '全域（所有辭典）';
  @override
  String get custom_fonts => '自訂字型';
  @override
  String get custom_fonts_add_system => '添加系統字型';
  @override
  String get custom_fonts_archive_error => '解壓失敗';
  @override
  String get custom_fonts_catalog_title => '字型庫';
  @override
  String get custom_fonts_download_failed => '下載失敗';
  @override
  String get custom_fonts_downloading => '正在下載…';
  @override
  String get custom_fonts_drag_hint => '拖曳以調整字型優先順序';
  @override
  String get custom_fonts_empty => '未添加自訂字型';
  @override
  String get custom_fonts_font_roles => '字體用途';
  @override
  String get custom_fonts_import_file => '匯入字型檔案';
  @override
  String get custom_fonts_import_url => '從 URL 匯入';
  @override
  String custom_fonts_imported_count({required Object count}) =>
      '已匯入 ${count} 個字型';
  @override
  String get custom_fonts_manage => '管理字型';
  @override
  String get custom_fonts_no_fonts_in_archive => '壓縮檔中未找到字型檔案';
  @override
  String get custom_fonts_recommended => '推薦字型';
  @override
  String get custom_fonts_removed => '已移除字型';
  @override
  String get custom_fonts_search_hint => '搜尋字型';
  @override
  String get custom_theme => '自訂主題';
  @override
  String custom_theme_default_name({required Object n}) => '自定義 ${n}';
  @override
  String get custom_theme_long_press_hint => '點擊切換 · 長按編輯';
  @override
  String get custom_theme_name => '名稱';
  @override
  String get dark_mode => '深色模式';
  @override
  String get dark_mode_dark => '深色';
  @override
  String get dark_mode_light => '淺色';
  @override
  String get dark_mode_system => '跟隨系統';
  @override
  String data_root_unavailable_message({required Object path}) =>
      '你設定的數據位置 ${path} 暫時讀不到（盤可能在休眠、被佔用或未連接）。你的數據是安全的、原封不動留在那裡——沒有丟失。請點「重試」,等盤就緒即可用回你的數據；或選擇用預設位置臨時啟動（不會改動你原來的數據）。';
  @override
  String get data_root_unavailable_title => '數據位置未響應';
  @override
  String get data_root_use_default_button => '仍用預設位置啟動';
  @override
  String get data_storage_change_button => '更改位置';
  @override
  String get data_storage_change_confirm_body =>
      'Fushi 會把所有數據遷移到新資料夾，然後自動重啟。遷移過程中請勿關閉應用。';
  @override
  String get data_storage_change_confirm_title => '更改數據存儲位置？';
  @override
  String get data_storage_location_default => '預設位置';
  @override
  String get data_storage_location_hint => 'Fushi 存放媒體庫、有聲書和資料庫的位置（僅桌面）。';
  @override
  String get data_storage_location_title => '數據存儲位置';
  @override
  String data_storage_migrate_failed({required Object message}) =>
      '數據遷移失敗：${message}';
  @override
  String get data_storage_migrate_failed_restart => '重啟';
  @override
  String get data_storage_migrate_failed_suggestions =>
      '請改選一個空目錄後重試。不要選擇應用安裝目錄，並確保目標位置沒有檔案正在被佔用。';
  @override
  String get data_storage_migrate_failed_title => '數據遷移失敗';
  @override
  String data_storage_migrate_overlay_progress({
    required Object copied,
    required Object total,
  }) => '正在復製檔案：${copied} / ${total}';
  @override
  String get data_storage_migrate_overlay_title => '正在遷移數據';
  @override
  String get data_storage_migrate_overlay_warning =>
      '正在遷移數據，請勿關閉應用或電腦，遷移完成後會自動重啟。';
  @override
  String get data_storage_migrate_success => '數據已遷移，正在重啟…';
  @override
  String get data_storage_migrating => '正在遷移數據…';
  @override
  String get data_storage_reject_install_dir =>
      '所選目錄是應用的安裝位置，不能用來存放數據。請另選一個空目錄。';
  @override
  String get data_storage_restart_failed => '數據已遷移，但自動重啟失敗，請手動重新打開 Fushi。';
  @override
  String db_downgrade_message({
    required Object dbVersion,
    required Object appVersion,
  }) =>
      '此資料庫由較新版本的 Fushi 建立（schema v${dbVersion}）。目前 App 版本過舊（v${appVersion}）。為保護你的資料已阻止開啟。請更新 App 後再試一次。';
  @override
  String get db_downgrade_title => '請更新 Fushi';
  @override
  String get db_unrecoverable_message =>
      '自動修復後仍無法打開資料庫，檔案可能已損壞。可在設定中恢復備份，或清除應用數據重新開始。';
  @override
  String get db_unrecoverable_title => '資料庫已損壞';
  @override
  String get debug_log_share_subject => 'Fushi 偵錯記錄';
  @override
  String debug_log_title({required Object count}) => '偵錯日誌 (${count})';
  @override
  String get debug_log_toggle => '啟用偵錯日誌';
  @override
  String get decrease => '減少';
  @override
  String get deduplicate_pitch_accents => '音調重複去除';
  @override
  String get delete_collection => '刪除合集';
  @override
  String get delete_collection_also_books => '同時刪除其中的書';
  @override
  String get delete_collection_also_videos => '同時刪除其中的影片（保留你的原始影片檔案）';
  @override
  String get delete_custom_theme => '刪除主題';
  @override
  String get delete_custom_theme_confirm => '刪除這個自定義主題？此操作不可撤銷。';
  @override
  String get delete_in_progress => '刪除中';
  @override
  String get delete_prompt_delete_selected => '刪除選中';
  @override
  String get delete_prompt_message => '以下內容已在其他設備刪除，也從本機刪除嗎？';
  @override
  String get delete_prompt_select_all => '全選';
  @override
  String get delete_prompt_title => '其他設備已刪除';
  @override
  String get delete_scope_keep_local_desc => '其他設備保留';
  @override
  String get delete_scope_sync_everywhere => '從所有設備刪除';
  @override
  String get delete_scope_sync_everywhere_desc => '其他設備下次同步時會確認刪除';
  @override
  String get design_system_auto => '自動';
  @override
  String get design_system_hint => '切換應用程式的視覺風格';
  @override
  String get design_system_label => '設計系統';
  @override
  String get dialog_add => '添加';
  @override
  String get dialog_append => '附加';
  @override
  String get dialog_cancel => '取消';
  @override
  String get dialog_clear => '清除';
  @override
  String get dialog_clear_all_dictionaries => '刪除所有辭典';
  @override
  String get dialog_close => '關閉';
  @override
  String get dialog_connect => '連線';
  @override
  String get dialog_content_dictionary_clear => '清空辭典資料庫會同時清除所有歷史搜尋結果。';
  @override
  String get dialog_content_dictionary_delete =>
      '單獨刪除辭典可能比清空整個資料庫耗時更長，且會清除所有歷史搜尋結果。';
  @override
  String get dialog_create => '新建';
  @override
  String get dialog_crop => '裁剪';
  @override
  String get dialog_delete => '刪除';
  @override
  String get dialog_done => '完成';
  @override
  String get dialog_edit => '編輯';
  @override
  String get dialog_edit_info => '編輯資訊';
  @override
  String get dialog_exit => '結束';
  @override
  String get dialog_export => '匯出';
  @override
  String get dialog_import => '匯入';
  @override
  String get dialog_import_dictionary => '匯入辭典';
  @override
  String get dialog_import_folder => '匯入資料夾辭典';
  @override
  String get dialog_importing => '正在匯入…';
  @override
  String get dialog_launch_ankidroid => '啟動 ANKIDROID';
  @override
  String get dialog_ok => '確定';
  @override
  String get dialog_play => '播放';
  @override
  String get dialog_read => '閱讀';
  @override
  String get dialog_record => '錄製';
  @override
  String get dialog_replace => '替換';
  @override
  String get dialog_save => '儲存';
  @override
  String get dialog_search => '搜尋';
  @override
  String get dialog_select => '選擇';
  @override
  String get dialog_share => '分享';
  @override
  String get dialog_stash => '暫存';
  @override
  String get dialog_stop => '停止';
  @override
  String get dialog_title_dictionary_clear => '清除所有辭典？';
  @override
  String dialog_title_dictionary_delete({required Object name}) =>
      '刪除『${name}』？';
  @override
  String get dict_auto_update => '自動更新';
  @override
  String get dict_auto_update_hint => '啟動時檢查詞典更新';
  @override
  String dict_auto_update_last({required Object time}) => '上次成功檢查：${time}';
  @override
  String get dict_auto_update_never => '從未';
  @override
  String get dict_category_frequency => '詞頻';
  @override
  String get dict_category_grammar => '語法';
  @override
  String get dict_category_ja_en => '日英';
  @override
  String get dict_category_ja_ja => '日日';
  @override
  String get dict_category_ja_other => '其他日語';
  @override
  String get dict_category_kanji => '漢字';
  @override
  String get dict_category_names => '人名';
  @override
  String get dict_category_supplementary => '補充';
  @override
  String get dict_download_browse => '下載推薦辭典';
  @override
  String dict_download_button({required Object count}) => '下載 (${count})';
  @override
  String get dict_download_complete => '下載完成。';
  @override
  String dict_download_failed({required Object error}) => '下載失敗：${error}';
  @override
  String get dict_download_installed => '已安裝';
  @override
  String get dict_download_language => '你的語言';
  @override
  String dict_download_partial({
    required Object success,
    required Object total,
    required Object error,
  }) => '成功 ${success} / ${total}。失敗：${error}';
  @override
  String get dict_download_select_title => '選擇辭典';
  @override
  String dict_downloading({required Object name}) => '正在下載 ${name}…';
  @override
  String dict_import_failed_summary({required Object n}) => '匯入 ${n} 個詞典失敗';
  @override
  String get dict_import_started => '正在背景匯入詞典…';
  @override
  String dict_import_success_summary({required Object n}) => '已匯入 ${n} 本詞典';
  @override
  String get dict_update_check => '檢查更新';
  @override
  String get dict_update_checking => '正在檢查更新…';
  @override
  String dict_update_done({required Object name}) => '${name} 已更新。';
  @override
  String dict_update_failed({required Object error}) => '更新失敗：${error}';
  @override
  String get dict_update_interval_daily => '每日';
  @override
  String get dict_update_interval_monthly => '每月';
  @override
  String get dict_update_interval_weekly => '每週';
  @override
  String get dict_update_latest => '已是最新。';
  @override
  String dict_update_name_mismatch_body({
    required Object incoming,
    required Object existing,
  }) => '所選檔案是「${incoming}」，但你正在更新「${existing}」。仍要替換嗎？';
  @override
  String get dict_update_name_mismatch_title => '詞典名稱不一致';
  @override
  String get dict_update_none => '所有詞典均為最新。';
  @override
  String dict_update_summary({
    required Object updated,
    required Object current,
    required Object failed,
  }) => '${updated} 個已更新，${current} 個最新，${failed} 個失敗。';
  @override
  String get dict_update_tooltip => '更新詞典';
  @override
  String dict_update_updating({required Object name}) => '正在更新 ${name}…';
  @override
  String get dictionaries => '辭典管理';
  @override
  String get dictionaries_delete_failed => '刪除全部詞典失敗';
  @override
  String get dictionaries_deleting_data => '正在刪除辭典資料…';
  @override
  String get dictionaries_menu_empty => '請先匯入辭典以便使用';
  @override
  String get dictionary_delete_failed => '刪除詞典失敗';
  @override
  String get dictionary_font_size => '辭典字級';
  @override
  String get dictionary_font_size_zoom_hint => 'Ctrl+滾輪可直接縮放查詞彈窗內容';
  @override
  String get dictionary_section_frequency => '詞頻辭典';
  @override
  String get dictionary_section_kanji => '漢字辭典';
  @override
  String get dictionary_section_pitch => '音調辭典';
  @override
  String get dictionary_section_term => '釋義辭典';
  @override
  String get dictionary_settings => '辭典設定';
  @override
  String get dictionary_type_frequency => '詞頻';
  @override
  String get dictionary_type_pitch => '音調';
  @override
  String get dictionary_type_term => '釋義';
  @override
  String get dictionary_unrecognized_format => '無法識別的詞典格式';
  @override
  String get dismiss_swipe_sensitivity => '滑動關閉靈敏度';
  @override
  String get display_settings => '排版設定';
  @override
  String get download_backend_not_configured => '請先配置下載後端。';
  @override
  String get download_clear_finished => '清除已完成';
  @override
  String get download_detail_backend_offline =>
      '原下載後端當前離線。這裡仍顯示已保存的任務資訊，但實時參數暫不可用。';
  @override
  String get download_open_settings => '去設定';
  @override
  String get download_save_root_change => '更改目錄';
  @override
  String get download_save_root_create_failed => '無法創建該目錄，請檢查磁碟與權限。';
  @override
  String get download_save_root_fallback_warning => '配置的下載目錄當前不可用，已回退到預設目錄。';
  @override
  String get download_save_root_hint => '新的下載任務保存到這裡；已有任務仍留在原目錄，不會被移動。';
  @override
  String get download_save_root_not_absolute => '請選擇一個絕對路徑的目錄。';
  @override
  String get download_save_root_not_writable => '該目錄不可寫入。';
  @override
  String get download_save_root_reset => '恢復預設';
  @override
  String get download_save_root_title => '下載目錄';
  @override
  String get download_settings => '下載設定';
  @override
  String get download_status_cancelled => '已取消';
  @override
  String get download_status_queued => '排隊中';
  @override
  String download_subscription_after_episode({required Object episode}) =>
      '第 ${episode} 集之後';
  @override
  String get download_subscription_check_all => '全部檢查';
  @override
  String get download_subscription_check_now => '立即檢查';
  @override
  String download_subscription_choice_hint({
    required Object group,
    required Object resolution,
  }) => '將追蹤 ${group} · ${resolution}，有新的單集發布時自動加入下載。';
  @override
  String get download_subscription_created => '已加入下載並創建訂閱';
  @override
  String get download_subscription_delete => '刪除訂閱';
  @override
  String download_subscription_delete_confirm({required Object title}) =>
      '刪除“${title}”的訂閱嗎？已創建的下載任務會保留。';
  @override
  String get download_subscription_download_and_create => '下載並訂閱';
  @override
  String get download_subscription_empty_body => '在“發現”中選擇一個單集發布，然後使用“下載並訂閱”。';
  @override
  String get download_subscription_empty_title => '還沒有訂閱';
  @override
  String download_subscription_last_checked({required Object time}) =>
      '上次檢查：${time}';
  @override
  String download_subscription_latest_episode({required Object episode}) =>
      '最近加入：第 ${episode} 集';
  @override
  String get download_subscription_never_checked => '尚未檢查';
  @override
  String get download_subscription_running_hint =>
      'Fushi 運行期間每 15 分鐘檢查一次已啟用的訂閱。';
  @override
  String get download_subscription_unavailable_hint =>
      '請選擇能識別字幕組的單集發布後再訂閱；合集仍可單次下載。';
  @override
  String get download_subscriptions_tab => '訂閱';
  @override
  String download_task_action_failed({required Object error}) =>
      '任務操作失敗：${error}';
  @override
  String get download_task_delete => '刪除任務';
  @override
  String download_task_delete_confirm({required Object title}) =>
      '刪除“${title}”的下載任務嗎？';
  @override
  String get download_task_delete_files => '同時刪除已下載檔案';
  @override
  String get download_task_details => '查看詳情';
  @override
  String get download_tasks_tab => '任務';
  @override
  String get download_test_connection => '測試連接';
  @override
  String get download_test_connection_failed => '連接失敗，請檢查地址與賬號密碼。';
  @override
  String download_test_connection_ok({required Object version}) =>
      '連接成功（版本：${version}）';
  @override
  String get drag_drop_need_card_target => '請把字幕或音訊拖到某本書或某段影片上';
  @override
  String get drag_drop_unsupported_on_books => '請把書籍檔案拖到這裡。視頻或詞典檔案請切換到對應頁面。';
  @override
  String get drag_drop_unsupported_on_dictionary =>
      '請把 .zip、.dsl 或 .mdx 詞典檔案拖到這裡。CSS 檔案只能連同詞典包一起匯入。';
  @override
  String get drag_drop_unsupported_on_video =>
      '請把影片、播放清單或字幕拖到這裡。書籍或詞典檔案請切換到對應頁面。';
  @override
  String get edit_custom_theme => '編輯自定義主題';
  @override
  String get eink_mode => '墨水屏模式';
  @override
  String get eink_mode_hint => '純黑白主題、無動畫、線式高亮，適合墨水屏設備';
  @override
  String get enable_swipe_to_close => '滑動關閉彈窗';
  @override
  String get epub_delete_error => '刪除書籍失敗';
  @override
  String get epub_delete_title => '刪除書籍';
  @override
  String get epub_parse_fallback => '已從資料庫修復書籍中繼資料';
  @override
  String get error_ankidroid_api => 'AnkiDroid 錯誤';
  @override
  String get error_ankidroid_api_content =>
      '與 AnkiDroid 通訊時發生錯誤。\n\n請確認 AnkiDroid 的背景服務已啟用，並已授予所需權限。';
  @override
  String get error_copied => '錯誤已複製到剪貼簿';
  @override
  String get error_load_failed => '加載出錯';
  @override
  String get error_log_diagnostics_section => '診斷/取證資訊（非應用錯誤）';
  @override
  String get error_log_empty => '暫無錯誤日誌';
  @override
  String error_log_label({required Object n}) => '錯誤記錄 (${n})';
  @override
  String get error_log_previous_run => '歷史日誌（上次運行前）';
  @override
  String get error_log_share_subject => 'Fushi 錯誤記錄';
  @override
  String get extension_popup_independent_size => '瀏覽器擴展獨立尺寸';
  @override
  String get extension_popup_independent_size_hint =>
      '讓瀏覽器擴展查詞彈窗使用獨立最大尺寸，而非跟隨 app 內查詞彈窗';
  @override
  String get extension_popup_max_height => '擴展彈窗最大高度';
  @override
  String get extension_popup_max_width => '擴展彈窗最大寬度';
  @override
  String get external_window_capture_failed => '視窗截圖失敗';
  @override
  String get external_window_current_game => '當前遊戲';
  @override
  String get external_window_mining => '外部視窗挖礦';
  @override
  String get external_window_no_windows => '未找到可捕獲的視窗';
  @override
  String get external_window_none => '未綁定視窗（點此選擇）';
  @override
  String get external_window_refresh => '重新整理視窗列表';
  @override
  String get external_window_select => '選擇目標視窗';
  @override
  String get external_window_unbind => '解除視窗綁定';
  @override
  String get external_window_unsupported => '外部視窗挖礦僅支持 Windows';
  @override
  String get failed_online_service => '與線上服務通訊失敗';
  @override
  String get favorite_added => '句子已收藏';
  @override
  String get favorite_removed => '句子已取消收藏。';
  @override
  String favorites({required Object n}) => '收藏 (${n})';
  @override
  String field_fallback_used({
    required Object field,
    required Object secondField,
  }) => '${field} 欄位使用 ${secondField} 作為備選搜尋詞。';
  @override
  String file_count({required Object count}) => '${count} 個檔案';
  @override
  String get floating_dict_close => '關閉';
  @override
  String get floating_dict_title => '辭典';
  @override
  String get floating_lyric_bg_opacity => '懸浮字幕背景不透明度';
  @override
  String get floating_lyric_button_bg_opacity => '懸浮字幕按鈕底色不透明度';
  @override
  String get floating_lyric_click_lookup => '點按懸浮字幕即可查詞';
  @override
  String get floating_lyric_click_lookup_hint => '鎖定懸浮字幕位置時若仍想查詞，請保持開啟。';
  @override
  String get floating_lyric_close => '關閉';
  @override
  String get floating_lyric_context_lines => '懸浮字幕上下文行數';
  @override
  String get floating_lyric_context_lines_hint =>
      '0 只顯示當前行(單行,與今天一致);設 1-3 在當前行上下各顯示這麼多行上下文';
  @override
  String get floating_lyric_corner_radius => '懸浮字幕圓角';
  @override
  String get floating_lyric_corner_radius_hint => '0 = 各平台預設圓角；調大讓字幕條與按鈕更圓';
  @override
  String get floating_lyric_font_size => '懸浮字幕字號';
  @override
  String get floating_lyric_hint => '在其他應用程式上方顯示目前句子。';
  @override
  String get floating_lyric_lock => '鎖定';
  @override
  String get floating_lyric_next => '下句';
  @override
  String get floating_lyric_no_audio => '這本書沒有可聽的音訊';
  @override
  String get floating_lyric_permission_hint => '顯示懸浮歌詞需要懸浮視窗權限。';
  @override
  String get floating_lyric_permission_hint_coloros =>
      '系統拒絕授予懸浮窗權限時：請用檔案管理器找到安裝包覆蓋安裝一次，或在開發者選項中關閉權限監控後重試。';
  @override
  String get floating_lyric_play_pause => '播放';
  @override
  String get floating_lyric_previous => '上句';
  @override
  String get floating_lyric_text_opacity => '懸浮字幕文字不透明度';
  @override
  String get floating_lyric_toggle_action => '懸浮字幕';
  @override
  String get floating_lyric_unavailable_hint => '無法顯示懸浮字幕視窗。';
  @override
  String get floating_lyric_unlock => '解鎖';
  @override
  String get floating_lyric_width => '懸浮字幕寬度';
  @override
  String get floating_lyric_width_hint => '0 = 平台預設寬度；設定數值讓字幕條固定寬';
  @override
  String get focus_navigation_enabled => '鍵盤／手掣焦點導覽';
  @override
  String get focus_navigation_enabled_hint => '以方向鍵或手掣移動焦點並顯示焦點環。';
  @override
  String get folder_picker_permission_required => '瀏覽資料夾需要存儲權限';
  @override
  String get follow_audio_off_tooltip => '音頻跟隨：關閉';
  @override
  String get follow_audio_on_tooltip => '音頻跟隨：開啟';
  @override
  String get font_color => '字體顏色';
  @override
  String get font_color_desc => '閱讀器文字顏色';
  @override
  String get font_desc_hina_mincho => '柔和裝飾性明朝體 · 建議搭配 Noto Sans JP 回退';
  @override
  String get font_desc_klee_one => '手寫教科書體 · 清晰易讀 · 建議搭配 Noto Sans JP 回退';
  @override
  String get font_desc_mplus_rounded_1c =>
      '圓角可愛風格 · 適合輕小說 · 建議搭配 Noto Sans JP 回退';
  @override
  String get font_desc_noto_sans_jp => 'Google/Adobe 黑體 · 日語字形優先 · 可變字重';
  @override
  String get font_desc_noto_sans_sc => 'Google/Adobe 黑體 · 簡中字形優先 · 搭配日文字體做回退';
  @override
  String get font_desc_noto_sans_tc => 'Google/Adobe 黑體 · 繁中字形優先';
  @override
  String get font_desc_noto_serif_jp => 'Google/Adobe 宋體 · 日語字形優先 · 適合豎排閱讀';
  @override
  String get font_desc_noto_serif_sc => 'Google/Adobe 宋體 · 簡中字形優先 · 搭配日文字體做回退';
  @override
  String get font_desc_noto_serif_tc => 'Google/Adobe 宋體 · 繁中字形優先 · 適合豎排閱讀';
  @override
  String get font_desc_shippori_mincho =>
      '優雅明朝體 · 文學作品推薦 · 建議搭配 Noto Sans JP 回退';
  @override
  String get font_desc_zen_kaku_gothic_new =>
      '現代角黑體 · 通用閱讀 · 建議搭配 Noto Sans JP 回退';
  @override
  String get font_desc_zen_maru_gothic => '柔和圓潤黑體 · 建議搭配 Noto Sans JP 回退';
  @override
  String get font_desc_zen_old_mincho =>
      '復古明朝體 · 古典文學風格 · 建議搭配 Noto Sans JP 回退';
  @override
  String get font_source_file => '檔案';
  @override
  String get font_source_system => '系統';
  @override
  String get font_target_app_ui => '軟件系統字體';
  @override
  String get font_target_body => '小說正文字體';
  @override
  String get font_target_dictionary => '詞典字體';
  @override
  String get font_target_video_subtitle => '視頻字幕字體';
  @override
  String get gal_hook_text_font_size => 'Galgame 台詞浮窗字號';
  @override
  String get gal_hook_text_font_size_hint =>
      '拖動浮窗右下角只改視窗大小（換來更多可見行），字號在這裡單獨設定。';
  @override
  String get game_add => '添加遊戲';
  @override
  String get game_already_added => '該遊戲已在庫中';
  @override
  String get game_audio_backend_engine => '引擎 PCM';
  @override
  String get game_audio_backend_loopback => '系統 Loopback（混音）';
  @override
  String get game_audio_backend_none => '無音頻源';
  @override
  String get game_audio_backend_resource => '遊戲資源音頻';
  @override
  String get game_audio_duration => '音頻時長';
  @override
  String get game_audio_fallback_disabled_missing =>
      '未找到與該句匹配的遊戲資源音頻；已關閉降級，未制卡';
  @override
  String get game_audio_resource_id => '音頻資源 ID';
  @override
  String get game_audio_tracks => '活躍音軌';
  @override
  String get game_auto_cover => '自動獲取封面';
  @override
  String get game_back_to_capture => '返回捕獲工作台';
  @override
  String get game_back_to_library => '返回遊戲庫';
  @override
  String get game_capture_active => '正在捕獲';
  @override
  String get game_capture_degraded_loopback =>
      '遊戲已在運行，但引擎注入失敗，改用整機混音兜底，可能混入 BGM 和音效。';
  @override
  String get game_capture_description => '啟動或綁定遊戲，並監控文本、語音、畫面與 Anki 出卡。';
  @override
  String get game_capture_empty_body => '啟動或綁定遊戲後，文本與句音狀態會顯示在這裡。';
  @override
  String get game_capture_empty_title => '尚未收到台詞';
  @override
  String get game_capture_launch_failed => '遊戲啟動或捕獲失敗';
  @override
  String get game_capture_launching => '正在啟動遊戲並開始捕獲…';
  @override
  String get game_capture_running => '捕獲會話已運行';
  @override
  String get game_capture_window_missing =>
      '遊戲進程已啟動，但視窗一直沒有出現，遊戲可能沒能真正啟動。可以再啟動一次試試。';
  @override
  String get game_capture_workbench => '捕獲工作台';
  @override
  String get game_captured_lines => '已捕獲台詞';
  @override
  String get game_card_mapping_missing => 'Anki 字段映射缺少遊戲卡片字段';
  @override
  String get game_card_sentence_audio_missing => '卡片已創建，但沒有句子音頻；未借用其他台詞的音頻。';
  @override
  String get game_clear_events => '清空事件';
  @override
  String get game_cover_not_found => '遊戲目錄和程式圖標裡都沒找到可用封面';
  @override
  String get game_cover_searching => '正在查找封面...';
  @override
  String get game_cover_updated => '封面已更新';
  @override
  String get game_dashboard => '首頁';
  @override
  String get game_detail_missing => '該遊戲已不在庫中';
  @override
  String get game_detail_tab_edit => '編輯';
  @override
  String get game_detail_tab_stats => '統計';
  @override
  String get game_detail_tab_summary => '簡介';
  @override
  String get game_diagnostics => '兼容性診斷';
  @override
  String get game_diagnostics_subtitle => '會話階段、端點、音軌與結構化事件';
  @override
  String game_drop_imported({required Object count}) => '已添加 ${count} 個遊戲';
  @override
  String get game_drop_no_exe => '拖入的檔案裡沒有新的遊戲 .exe';
  @override
  String get game_edit_developer => '開發商';
  @override
  String get game_edit_display_name => '顯示名';
  @override
  String get game_edit_exe_path => '可執行檔案路徑';
  @override
  String get game_edit_invalid_date => '發行日必須是 YYYY-MM-DD 格式';
  @override
  String get game_edit_launch_args => '啟動參數';
  @override
  String get game_edit_launch_args_hint => '啟動時傳給遊戲，例如 -windowed';
  @override
  String get game_edit_nsfw => '成人向';
  @override
  String get game_edit_release_date => '發行日（YYYY-MM-DD）';
  @override
  String get game_edit_save => '保存';
  @override
  String get game_edit_saved => '已保存';
  @override
  String get game_edit_summary => '簡介';
  @override
  String get game_edit_tags => '標簽（逗號分隔）';
  @override
  String get game_edit_user_rating => '我的評分（0-10）';
  @override
  String get game_edit_user_review => '我的評價';
  @override
  String get game_edit_workdir => '工作目錄';
  @override
  String get game_empty => '還沒有添加遊戲';
  @override
  String get game_endpoint_phase_connected => '已連接';
  @override
  String get game_endpoint_phase_connecting => '連接中';
  @override
  String get game_endpoint_phase_retrying => '重試中';
  @override
  String get game_endpoint_phase_stopped => '已停止';
  @override
  String get game_endpoints_engine_active => '當前文本來自引擎 Hook，這些端點無需連接';
  @override
  String get game_endpoints_hint =>
      '供 Textractor / LunaTranslator 等外部文本工具接入的端口；未使用這些工具可忽略';
  @override
  String get game_event_all => '全部事件';
  @override
  String get game_event_warnings => '警告及錯誤';
  @override
  String get game_exe_missing => '找不到遊戲可執行檔案';
  @override
  String get game_filter => '篩選';
  @override
  String get game_filter_all => '全部';
  @override
  String get game_filter_favorited => '已收藏';
  @override
  String get game_filter_hide_nsfw => '隱藏成人向';
  @override
  String get game_filter_local_only => '有本地 exe';
  @override
  String get game_filter_metadata_only => '僅元數據';
  @override
  String get game_filter_mined => '已製卡';
  @override
  String get game_filter_reset => '清除篩選';
  @override
  String get game_filter_source => '條目來源';
  @override
  String get game_filter_status => '遊玩狀態';
  @override
  String get game_filter_tags => '標簽';
  @override
  String get game_filter_with_audio => '有音頻';
  @override
  String get game_focus_continue => '繼續遊戲';
  @override
  String get game_follow_live => '跟隨實時';
  @override
  String get game_health => '健康狀態';
  @override
  String get game_health_anki => 'Anki 出卡';
  @override
  String get game_health_audio => '音頻來源';
  @override
  String get game_health_helper => 'Hook Helper';
  @override
  String get game_health_process => '遊戲進程';
  @override
  String get game_health_text => '文本來源';
  @override
  String get game_health_upscaling => '視窗超分';
  @override
  String get game_health_window => '遊戲視窗';
  @override
  String get game_helper_download => '下載';
  @override
  String game_helper_download_failed({required Object error}) =>
      '引擎組件下載失敗：${error}';
  @override
  String get game_helper_downloading => '正在下載引擎組件…';
  @override
  String get game_helper_install_incomplete => '引擎組件安裝不完整，請重試';
  @override
  String game_helper_needed_body({required Object size}) =>
      '啟動 galgame 需要引擎-hook 注入器組件（約 ${size}）。它含進程注入代碼，與主程式分離分發以避免殺軟誤報。現在下載嗎？';
  @override
  String get game_helper_needed_title => '需要下載 galgame 引擎組件';
  @override
  String get game_helper_size_unknown => '大小未知';
  @override
  String get game_helper_verification_failed =>
      '引擎組件已被拒絕安裝：無法校驗其完整性（GitHub 上的 .sha256 校驗檔案不可達、缺失或與下載內容不符）。為避免裝入被篡改的注入器代碼，本次安裝已終止。';
  @override
  String get game_home_subtitle => '遊戲庫與捕獲監控';
  @override
  String get game_hook_fallback_all_audio_sources_failed =>
      '引擎語音鉤子和系統回環都啟動失敗，當前無法採集任何音頻。';
  @override
  String get game_hook_fallback_engine_attach_failed =>
      '附着引擎語音鉤子到正在運行的遊戲失敗，改用系統混音。';
  @override
  String get game_hook_fallback_engine_pcm_unavailable =>
      '引擎語音鉤子已裝好，但遊戲還沒播放過語音。暫時用系統混音，出現第一句語音後會自動切回引擎語音。';
  @override
  String get game_hook_fallback_launch_injection_failed =>
      '遊戲已經啟動，但早期注入引擎鉤子失敗，改用系統混音。';
  @override
  String get game_hook_fallback_window_not_found =>
      '音頻採集正常，但遊戲視窗還沒出現，暫時無法截圖。視窗出現後會自動綁定。';
  @override
  String get game_hook_line_unavailable => '這條捕獲台詞已不可用，未使用其他台詞替代。';
  @override
  String get game_hook_reason_access_denied => '遊戲以更高權限運行，請以管理員身份啟動 Fushi 後重試。';
  @override
  String get game_hook_reason_bitness_mismatch =>
      '鉤子組件位數與遊戲不匹配（32 位 / 64 位），請重新安裝組件。';
  @override
  String get game_hook_reason_create_process_failed =>
      'Fushi 無法啟動該遊戲，請檢查可執行檔案路徑。';
  @override
  String get game_hook_reason_elevation_required =>
      '該遊戲需要管理員權限，請以管理員身份啟動 Fushi 後再啟動遊戲。';
  @override
  String get game_hook_reason_game_exe_missing => '保存的遊戲可執行檔案路徑已不存在。';
  @override
  String get game_hook_reason_guarded_hook_failed => '受保護的鉤子未能在超時內安裝，正在自動重試。';
  @override
  String get game_hook_reason_handshake_timeout =>
      '已注入遊戲，但超時內沒有文本或音頻，該引擎可能尚未支持。';
  @override
  String get game_hook_reason_helper_missing => '未安裝與該遊戲位數匹配的語音鉤子組件，請先安裝後重試。';
  @override
  String get game_hook_reason_hook_dll_missing => '鉤子組件不完整（缺少 hook 庫），請重新安裝。';
  @override
  String get game_hook_reason_injection_failed =>
      '注入遊戲被攔截，請把 Fushi 與該遊戲加入殺毒軟體白名單。';
  @override
  String get game_hook_reason_ready_timeout => '鉤子庫未能在超時內加載完成，殺毒軟體掃描可能是原因。';
  @override
  String get game_hook_reason_resume_failed => '已啟動的遊戲無法恢復運行並被結束，請重新啟動。';
  @override
  String get game_hook_reason_shared_memory_unavailable =>
      '捕獲通道無法打開，請重啟 Fushi。';
  @override
  String get game_hook_reason_spawn_failed => '語音鉤子組件無法啟動，請檢查是否被殺毒軟體刪除或攔截。';
  @override
  String get game_hook_reason_resident_hook_mismatch =>
      '遊戲裡還殘留上一次的捕獲會話，請重啟一次遊戲。';
  @override
  String get game_hook_reason_steam_timeout => 'Steam 已接受啟動請求，但始終沒有出現遊戲進程。';
  @override
  String get game_hook_reason_target_missing => '沒有可捕獲的遊戲進程或可執行檔案。';
  @override
  String get game_hook_recapture_empty => '補錄視窗內沒有錄到聲音';
  @override
  String get game_hook_recapture_saved => '補錄語音已綁定到這句';
  @override
  String get game_hook_recapture_started => '錄音中——請在遊戲裡重播這句語音';
  @override
  String get game_hook_recapture_unavailable => '補錄需要系統聲音採集可用';
  @override
  String get game_kpi_total_games => '遊戲總數';
  @override
  String get game_kpi_week => '本周';
  @override
  String get game_latest_line => '最新台詞';
  @override
  String get game_launch => '啟動遊戲';
  @override
  String get game_launch_and_capture => '啟動並捕獲';
  @override
  String get game_launch_unsupported => '啟動遊戲僅支持 Windows 桌面';
  @override
  String get game_library => '遊戲庫';
  @override
  String get game_line_audio_encoded => '音頻已提取';
  @override
  String get game_line_audio_fallback => '已降級';
  @override
  String get game_line_audio_matched => '音頻就緒';
  @override
  String get game_line_audio_missing => '無音頻';
  @override
  String get game_line_audio_pending => '匹配中';
  @override
  String get game_line_audio_unavailable => '僅文本';
  @override
  String get game_line_favorite_tooltip => '收藏台詞';
  @override
  String get game_line_mined => '已製卡';
  @override
  String get game_line_preview_failed => '這句還沒有可播放的音頻';
  @override
  String get game_line_preview_tooltip => '播放這句音頻';
  @override
  String get game_line_track_applied => '已把該軌的語音綁定到這句';
  @override
  String get game_line_track_dialog_title => '這句台詞的語音軌';
  @override
  String get game_line_track_failed => '這條軌在該句附近沒有取到語音';
  @override
  String get game_line_track_tooltip => '為這句選擇語音軌';
  @override
  String get game_line_unfavorite_tooltip => '取消收藏';
  @override
  String get game_live_lines => '實時台詞';
  @override
  String get game_manage_tracks => '管理音軌';
  @override
  String get game_meta_added => '添加時間';
  @override
  String get game_meta_ranking => '遊戲排行';
  @override
  String get game_meta_source => '數據來源';
  @override
  String get game_never_played => '未遊玩';
  @override
  String get game_no_active_line => '選擇一條台詞查看句音狀態。';
  @override
  String get game_no_events => '尚無會話事件';
  @override
  String get game_no_match => '沒有符合當前篩選的遊戲';
  @override
  String get game_no_tracks => '尚無音軌數據';
  @override
  String get game_open_capture_workspace => '打開捕獲工作台';
  @override
  String get game_phase_attaching => '附着中';
  @override
  String get game_phase_degraded => '降級運行';
  @override
  String get game_phase_error => '出錯';
  @override
  String get game_phase_idle => '空閒';
  @override
  String get game_phase_injecting => '注入中';
  @override
  String get game_phase_launching => '啟動中';
  @override
  String get game_phase_resolving => '解析中';
  @override
  String get game_phase_running => '運行中';
  @override
  String get game_phase_stopping => '停止中';
  @override
  String get game_phase_waiting_signals => '等待信號';
  @override
  String get game_pipeline => '會話管線';
  @override
  String get game_play_status => '遊玩狀態';
  @override
  String get game_random_reroll => '換一個';
  @override
  String get game_random_title => '隨機推薦';
  @override
  String get game_recently_played => '最近玩過';
  @override
  String get game_refresh_tracks => '重新整理音軌';
  @override
  String get game_remove => '移除';
  @override
  String get game_rename => '重命名';
  @override
  String get game_rename_label => '遊戲名稱';
  @override
  String get game_scrape => '刮削元數據';
  @override
  String get game_scrape_applied => '元數據已更新';
  @override
  String get game_scrape_failed => '元數據獲取失敗';
  @override
  String get game_scrape_no_result => '沒有找到匹配條目';
  @override
  String get game_scrape_query => '標題或源 ID';
  @override
  String get game_search => '搜索遊戲';
  @override
  String get game_session_events => '會話事件';
  @override
  String get game_session_idle => '尚未開始捕獲';
  @override
  String get game_session_listening => '正在監聽';
  @override
  String get game_set_cover => '設定封面';
  @override
  String get game_show_hook_text_window => '顯示 Hook 文本浮窗';
  @override
  String get game_site_score => '站點評分';
  @override
  String get game_sort => '排序';
  @override
  String get game_sort_added => '添加時間';
  @override
  String get game_sort_last_played => '最後遊玩';
  @override
  String get game_sort_name => '名稱';
  @override
  String get game_sort_release => '發行日';
  @override
  String get game_sort_site_score => '站點評分';
  @override
  String get game_sort_user_rating => '我的評分';
  @override
  String get game_stat_daily => '每日時長';
  @override
  String get game_stat_delete_session => '刪除這次記錄';
  @override
  String get game_stat_last_played => '最後遊玩';
  @override
  String get game_stat_no_sessions => '還沒有遊玩記錄';
  @override
  String get game_stat_session_list => '會話流水';
  @override
  String get game_stat_sessions => '遊玩次數';
  @override
  String get game_stat_today => '今日時長';
  @override
  String get game_stat_total_time => '累計時長';
  @override
  String get game_status_dropped => '棄坑';
  @override
  String get game_status_not_configured => '待驗證';
  @override
  String get game_status_on_hold => '擱置';
  @override
  String get game_status_played => '玩過';
  @override
  String get game_status_playing => '在玩';
  @override
  String get game_status_ready => '可用';
  @override
  String get game_status_unset => '未設定';
  @override
  String get game_status_waiting => '等待';
  @override
  String get game_status_want_to_play => '想玩';
  @override
  String get game_stop_listening => '停止監聽';
  @override
  String get game_summary_aliases => '別名';
  @override
  String get game_summary_all_titles => '全部標題';
  @override
  String get game_summary_average_hours => '預計通關時長';
  @override
  String get game_summary_none => '還沒有簡介，刮削元數據後自動填充。';
  @override
  String get game_summary_release_date => '發行日';
  @override
  String get game_tags_clear => '清空所選';
  @override
  String get game_tags_title => '遊戲標簽';
  @override
  String get game_text_endpoints => '文本端點';
  @override
  String get game_text_gaps => '序號缺口';
  @override
  String get game_text_gaps_hint => '序號缺口 = Hook 文本環丟行計數，0 為正常';
  @override
  String get game_text_source_engine => '引擎 Hook';
  @override
  String get game_text_source_unknown => '未知來源';
  @override
  String get game_text_source_websocket => 'WebSocket';
  @override
  String get game_text_thread => '文本線程';
  @override
  String game_text_thread_audio_count({required Object count}) =>
      '${count} 行有音頻';
  @override
  String get game_text_thread_hint => '像 Luna Translator 一樣選擇乾淨的台詞線程';
  @override
  String get game_track_auto => '自動選擇';
  @override
  String get game_track_clips => '音頻段';
  @override
  String get game_track_energy => '能量';
  @override
  String get game_track_exclude_bgm => '標記為 BGM';
  @override
  String get game_track_exclusion_hint =>
      '把 BGM/環境音軌標記為排除，自動選源便不會把它當成語音——沒有語音的台詞也不會再讀到 BGM。';
  @override
  String get game_track_exclusion_title => '排除音軌';
  @override
  String get game_track_preview => '試聽該音軌';
  @override
  String get game_track_preview_failed => '未能從該音軌抓到最近的音頻片段';
  @override
  String get game_track_preview_stop => '停止試聽';
  @override
  String get game_track_restore => '恢復音軌';
  @override
  String get game_track_select_as_voice => '設為語音軌';
  @override
  String get game_track_select_requires_engine => '選擇語音軌需要引擎 Hook 會話處於活動狀態';
  @override
  String get game_track_voice => '語音';
  @override
  String get game_tracks_loopback_hint => '系統回環捕獲的是整機混音單流，無法枚舉獨立音軌。';
  @override
  String get game_tracks_pcm_only_hint =>
      '只有當前音頻後端是「引擎 PCM」時，選軌/排除才會真正影響取音。當前後端下方列表只讀。';
  @override
  String get game_tracks_resource_mode_hint =>
      '遊戲資源音頻模式按句直接提取原始語音檔案，不經過 PCM 音軌環，因此這裡不會出現音軌列表；自動/手動選軌僅對引擎 PCM 模式有意義。';
  @override
  String get game_unread_lines => '未讀';
  @override
  String get game_upscaling => '遊戲視窗超分';
  @override
  String get game_upscaling_auto => '自動';
  @override
  String get game_upscaling_hint_external =>
      '你的電腦上已經開着一個 Magpie，Fushi 沒有去動它。按 Win+Shift+A 就能放大遊戲視窗。';
  @override
  String get game_upscaling_hint_first_run =>
      '這次 Magpie 還在做首次初始化。現在按 Win+Shift+A 就能放大；下次啟動遊戲會自動放大。';
  @override
  String get game_upscaling_hint_manual => '按 Win+Shift+A 放大遊戲視窗。';
  @override
  String get game_upscaling_installed_only => '僅用已裝';
  @override
  String get game_upscaling_off => '關閉';
  @override
  String get game_upscaling_status_active => '視窗超分已開啟';
  @override
  String get game_upscaling_status_failed => '視窗超分沒能啟動';
  @override
  String get game_upscaling_status_manual => '視窗超分已就緒，但沒有自動開始';
  @override
  String get game_upscaling_status_unavailable => '視窗超分暫時用不了';
  @override
  String get game_user_rating => '我的評分';
  @override
  String get game_view_detail => '查看詳情';
  @override
  String get game_waiting_for_text => '等待文本';
  @override
  String game_waveform_range_label({
    required Object start,
    required Object end,
    required Object duration,
    required Object total,
  }) => '${start} - ${end}（時長 ${duration} / 共 ${total}）';
  @override
  String get game_waveform_select_title => '選擇音頻範圍';
  @override
  String get game_window_bound => '已綁定';
  @override
  String get game_window_missing => '未綁定';
  @override
  String get games => '遊戲';
  @override
  String get global_context_capture => '抓取選中文本上下文';
  @override
  String get global_context_capture_hint =>
      '從前台應用讀取選區周圍文本，在查詞彈窗顯示當前句（僅 Windows）';
  @override
  String go_to_chapter({required Object n}) => '第 ${n} 章';
  @override
  String get handlebar_audio => '音訊';
  @override
  String get handlebar_book_cover => '書籍封面';
  @override
  String get handlebar_card_image => 'Card Image (Cover / GIF)';
  @override
  String get handlebar_cue_sentence => '字幕例句';
  @override
  String handlebar_deprecated_label({required Object label}) => '${label}（已棄用）';
  @override
  String get handlebar_document_title => '文件標題';
  @override
  String get handlebar_expression => '詞條';
  @override
  String get handlebar_frequencies => '詞頻（HTML）';
  @override
  String get handlebar_frequency_harmonic_rank => '詞頻（排名）';
  @override
  String get handlebar_furigana_plain => '振假名';
  @override
  String get handlebar_glossary => '釋義';
  @override
  String get handlebar_glossary_first => '釋義（首條）';
  @override
  String get handlebar_pitch_accent_categories => '音高類型';
  @override
  String get handlebar_pitch_accent_positions => '音高位置';
  @override
  String get handlebar_popup_selection_text => '彈窗選中文字';
  @override
  String get handlebar_reading => '讀音';
  @override
  String get handlebar_selected_glossary => '已選釋義';
  @override
  String get handlebar_sentence => '例句';
  @override
  String get handlebar_sentence_audio => 'Sentence Audio';
  @override
  String get handlebar_video_clip => 'Video Clip (GIF)';
  @override
  String get harmonic_frequency => '詞頻聚合';
  @override
  String health_match_summary({required Object pct}) => '匹配 ${pct}%';
  @override
  String get highlight_on_tap => '點擊時醒目標示文字';
  @override
  String get home_activity => '活動';
  @override
  String get home_activity_empty => '暫無活動記錄';
  @override
  String get home_continue => '繼續';
  @override
  String get home_filter_added => '導入';
  @override
  String get home_filter_all => '全部';
  @override
  String get home_filter_game => '遊戲';
  @override
  String get home_filter_read => '閱讀';
  @override
  String get home_filter_watch => '觀看';
  @override
  String get home_recently_added => '最近添加';
  @override
  String get home_remote_source => '遠端';
  @override
  String home_session_count({required Object n}) => '${n} 次';
  @override
  String get home_today => '今天';
  @override
  String get home_yesterday => '昨天';
  @override
  String get hover_auto_lookup => '停留即查詞';
  @override
  String get hover_auto_lookup_hint =>
      '滑鼠停留在文字上即自動查詞，無需點擊或按住 Shift；最多觸發一層彈窗。僅桌面版。';
  @override
  String get icon_custom => '自訂';
  @override
  String get icon_custom_confirm_body => '將使用所選圖片建立主畫面捷徑。是否繼續？';
  @override
  String get icon_custom_confirm_title => '自訂圖示';
  @override
  String get icon_custom_hint => '點擊圖示切換，或在下方選擇自訂圖片。';
  @override
  String get icon_default => '預設';
  @override
  String get icon_full => '完整';
  @override
  String get icon_shortcut_created => '已建立主畫面捷徑。';
  @override
  String get icon_shortcut_unsupported => '此裝置不支援捷徑。';
  @override
  String get icon_switch_success => '應用程式圖示已變更。';
  @override
  String get icon_transparent => '透明';
  @override
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  @override
  String get image_pause => '圖片暫停';
  @override
  String get image_pause_hint => '播放時遇到圖片自動暫停。';
  @override
  String get image_pause_off => '關閉';
  @override
  String get image_search_label_after => '張，關鍵字：';
  @override
  String get image_search_label_before => '正在選擇圖片 ';
  @override
  String get image_search_label_middle => '共 ';
  @override
  String get image_search_label_none_before => '正在選擇 ';
  @override
  String get image_search_label_none_middle => '無圖片 ';
  @override
  String get import_complete => '辭典匯入完成。';
  @override
  String import_duplicate({required Object name}) => '名為『${name}』的辭典已匯入。';
  @override
  String get import_extract => '正在解壓檔案…';
  @override
  String get import_failed => '辭典匯入失敗。';
  @override
  String get import_in_progress => '匯入中';
  @override
  String import_name({required Object name}) => '正在匯入『${name}』…';
  @override
  String import_sidecar_audio({required Object count}) =>
      '已自動掛載 ${count} 個音訊檔案';
  @override
  String import_sidecar_subtitle({required Object name}) => '已自動掛載字幕：${name}';
  @override
  String get import_start => '準備匯入…';
  @override
  String get import_step_building_epub => '產生 EPUB…';
  @override
  String get import_step_converting_epub => '轉換為 EPUB…';
  @override
  String import_step_copying_file({required Object name}) => '正在複製 ${name}…';
  @override
  String get import_step_done => '完成';
  @override
  String get import_step_importing_epub => '匯入 EPUB…';
  @override
  String get import_step_matching => '音訊對齊…';
  @override
  String get import_step_parsing => '解析字幕…';
  @override
  String get import_step_persisting => '儲存檔案…';
  @override
  String get import_step_reading => '讀取檔案…';
  @override
  String get import_step_reading_idb => '讀取書籍資訊…';
  @override
  String get import_step_saving => '儲存記錄…';
  @override
  String get import_theme => '匯入主題';
  @override
  String get import_theme_hint => '貼上主題代碼';
  @override
  String get import_theme_invalid => '無效的主題代碼';
  @override
  String get import_theme_success => '主題已匯入';
  @override
  String import_unsupported_file_format({required Object ext}) =>
      '不支援的檔案格式: ${ext}';
  @override
  String get increase => '增加';
  @override
  String get info_empty_home_tab => '歷史記錄為空';
  @override
  String init_error_message({required Object error}) => '初始化失敗：${error}';
  @override
  String get initialization_failed => '初始化失敗';
  @override
  String get interconnect_backup_backend => '用互聯做備份後端';
  @override
  String get interconnect_backup_backend_active =>
      '備份已寫到已配對設備。要換回雲盤，去「同步與備份」裡改後端。';
  @override
  String get interconnect_backup_backend_apply => '設為備份後端';
  @override
  String interconnect_backup_backend_current({required Object backend}) =>
      '當前備份後端：${backend}';
  @override
  String get interconnect_backup_backend_hint =>
      '備份與同步寫到已配對設備，而不是雲盤。寫過去的內容由上面「上傳到互聯對端」的幾個開關決定。';
  @override
  String get interconnect_backup_backend_needs_pairing => '請先在上面連接一台設備。';
  @override
  String get interconnect_enable => '啟用互聯';
  @override
  String get interconnect_enable_hint => '通過局域網連接你的其他設備。與雲備份後端並存，互不沖突。';
  @override
  String get interconnect_moved_note => '互聯連接與本機伺服器設定在「Fushi 互聯」分類';
  @override
  String get interconnect_section_client => '連接到其他設備';
  @override
  String get interconnect_section_delegate => '交給已配對設備';
  @override
  String get interconnect_section_related => '遠端內容與查詞';
  @override
  String get interconnect_summary => '設備間直連同步與本機作為伺服器';
  @override
  String get interconnect_upload_audiobook_files => '上傳有聲書檔案';
  @override
  String get interconnect_upload_audiobook_files_hint =>
      '把本設備的有聲書音頻+字幕包上傳同步到互聯對端（體積較大）。';
  @override
  String get interconnect_upload_content => '上傳書籍檔案';
  @override
  String get interconnect_upload_content_hint => '把本設備的書籍/閱讀內容上傳同步到互聯對端。';
  @override
  String get interconnect_upload_dictionary => '上傳詞典';
  @override
  String get interconnect_upload_dictionary_hint => '把本設備的詞典上傳同步到互聯對端。';
  @override
  String get interconnect_upload_section => '上傳到互聯對端';
  @override
  String get interconnect_upload_video_files => '上傳影片檔案';
  @override
  String get interconnect_upload_video_files_hint =>
      '把本設備的本地影片檔案上傳同步到互聯對端（體積較大）。';
  @override
  String get invert_audiobook_skip_direction => '反轉底欄前進後退按鈕';
  @override
  String get invert_swipe_direction => '反轉滑動翻頁方向';
  @override
  String get invert_volume_buttons => '反轉音量鍵方向';
  @override
  String get jump_to_char => '按字數跳轉';
  @override
  String jump_to_char_current({
    required Object current,
    required Object total,
  }) => '當前: ${current} / ${total}';
  @override
  String get jump_to_char_hint => '輸入字符位置…';
  @override
  String get keep_screen_awake => '閱讀時防止螢幕關閉';
  @override
  String get library_search => '搜索庫';
  @override
  String get loading_illustrations => '正在載入插圖…';
  @override
  String get loading_slow_message =>
      '如果你把數據存儲位置設在了當前未連接的網路盤 / 移動盤上，啟動可能卡住。點「重試」即可用預設存儲位置啟動本次會話；你的數據仍保留在原位置不動。';
  @override
  String get loading_slow_message_mobile =>
      '啟動比平常慢，可能在加載較大的媒體庫或詞典。請稍候，或點「重試」重新加載——你的數據是安全的，不會丟失。';
  @override
  String get loading_slow_title => '啟動耗時超出預期';
  @override
  String get local_audio => '本地音頻';
  @override
  String get local_audio_add_db => '新增本機音訊資料庫';
  @override
  String get local_audio_edit_sources => '編輯來源';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      '導入音頻資料庫失敗：${reason}';
  @override
  String get local_audio_imported => '已新增音訊資料庫';
  @override
  String get local_audio_invalid_db => '該檔案不是可用的音頻資料庫（不是本地音頻源資料庫，或其中沒有任何音頻）。';
  @override
  String get local_audio_no_sources => '此資料庫沒有可用的來源';
  @override
  String get local_audio_reference_original => '引用原檔案（不復製）';
  @override
  String get local_audio_reference_original_desc =>
      '資料庫保留在原位置、按原路徑讀取；原檔案被移動或刪除後該來源會失效。';
  @override
  String get local_audio_source_order_title => '來源優先順序';
  @override
  String get log_copy_all => '全部複製';
  @override
  String get log_export_failed => '匯出失敗';
  @override
  String get log_export_file => '匯出至檔案';
  @override
  String get log_export_saved => '記錄已儲存';
  @override
  String get log_upload_action => '上載到伺服器';
  @override
  String get log_upload_consent_agree => '同意並上載';
  @override
  String get log_upload_consent_body =>
      '記錄正文（可能包含錯誤訊息、檔案路徑及書名）連同 App 版本、平台與裝置型號，會上載到開發者的伺服器以協助診斷問題。此操作只在你點按上載時發生，不會自動傳送。';
  @override
  String get log_upload_consent_title => '上載記錄到伺服器？';
  @override
  String get log_upload_failed => '上載失敗';
  @override
  String get log_upload_in_progress => '正在上載記錄…';
  @override
  String get log_upload_success => '記錄已上載';
  @override
  String get log_upload_too_large => '記錄過大，無法上載';
  @override
  String get login => '登入';
  @override
  String get lookup_audio_volume => '查詞音量';
  @override
  String get low_memory_mode => '低記憶體模式';
  @override
  String get low_memory_mode_hint => '減少快取和記憶體使用，適合低階裝置。部分變更需重啟後生效。';
  @override
  String get low_memory_mode_suggestion => '可嘗試在 設定 → 其他設定 中開啟低記憶體模式。';
  @override
  String get lyrics_artist => '演出者';
  @override
  String get lyrics_blur => '模糊歌詞';
  @override
  String get lyrics_blur_hint => '聽力沉浸：模糊當前句，懸停或點擊顯形';
  @override
  String get lyrics_font_size => '歌詞字體大小';
  @override
  String get lyrics_font_size_hint => '歌詞字體大小獨立於書籍模式';
  @override
  String get lyrics_mode => '歌詞模式';
  @override
  String get lyrics_mode_hint_body => '歌詞模式有自己的字體大小設定。你可以在 ⚙ 設定 → 排版 中調整。';
  @override
  String get lyrics_mode_hint_title => '歌詞模式';
  @override
  String get lyrics_text_color => '歌詞字幕顏色';
  @override
  String get lyrics_text_color_hint => '歌詞字幕使用自訂顏色（不跟隨主題）';
  @override
  String get lyrics_title => '標題';
  @override
  String get lyrics_vertical_writing => '豎排歌詞';
  @override
  String get lyrics_vertical_writing_hint => '歌詞豎排顯示，從右到左（獨立於書本模式）';
  @override
  String get manage_audio_sources => '管理音訊來源';
  @override
  String get manager => '詞典與來源';
  @override
  String get manga_mode_toggle => 'Reading Mode';
  @override
  String get manga_ocr_delete => '刪除模型';
  @override
  String get manga_ocr_delete_confirm_message => '這將釋放磁碟空間，之後可再次下載。';
  @override
  String get manga_ocr_delete_confirm_title => '刪除 OCR 模型？';
  @override
  String get manga_ocr_delete_done => '模型已刪除';
  @override
  String get manga_ocr_download => '下載模型';
  @override
  String get manga_ocr_download_done => '模型下載完成';
  @override
  String get manga_ocr_download_failed => '模型下載失敗';
  @override
  String manga_ocr_downloading_file({required Object file}) => '正在下載 ${file}…';
  @override
  String get manga_ocr_engine_builtin => '內置';
  @override
  String get manga_ocr_engine_external => '外部 mokuro';
  @override
  String get manga_ocr_engine_none =>
      '沒有可用的 OCR 引擎。請在設定中下載內置模型或配置 mokuro 命令行路徑。';
  @override
  String get manga_ocr_external_cli_hint => '留空則自動探測（FUSHI_MOKURO / PATH）';
  @override
  String get manga_ocr_external_cli_label => '外部 mokuro 命令行路徑';
  @override
  String get manga_ocr_external_detect => '檢測';
  @override
  String manga_ocr_external_detected({required Object version}) =>
      '已檢測到：${version}';
  @override
  String get manga_ocr_external_not_found => '未找到 mokuro';
  @override
  String get manga_ocr_model_status_missing => 'OCR 模型未下載';
  @override
  String get manga_ocr_model_status_ready => 'OCR 模型已就緒';
  @override
  String get manga_ocr_section => '漫畫 OCR';
  @override
  String get manga_ocr_section_summary => '內置 OCR 模型與外部 mokuro 命令行';
  @override
  String get manga_ocr_unsupported => '內置漫畫 OCR 暫不支持當前平台。';
  @override
  String get manga_ocr_wizard_done => '漫畫已導入';
  @override
  String get manga_ocr_wizard_failed => 'OCR 失敗';
  @override
  String get manga_ocr_wizard_has_mokuro => '此資料夾已有 .mokuro 檔案，請直接用普通導入。';
  @override
  String get manga_ocr_wizard_importing => '正在導入…';
  @override
  String get manga_ocr_wizard_no_images => '此資料夾中沒有找到圖片。';
  @override
  String manga_ocr_wizard_page_progress({
    required Object done,
    required Object total,
  }) => '第 ${done} / ${total} 頁';
  @override
  String get manga_ocr_wizard_pick_folder => '選擇圖片資料夾';
  @override
  String get manga_ocr_wizard_run => '開始 OCR';
  @override
  String get manga_ocr_wizard_running => '正在識別…';
  @override
  String get manga_ocr_wizard_title => 'OCR 導入漫畫';
  @override
  String get manga_ocr_wizard_title_label => '標題（可選）';
  @override
  String get manga_online_base_url_label => '在線目錄地址';
  @override
  String get manga_online_catalog_title => '在線目錄';
  @override
  String get manga_online_download_selected => '下載所選';
  @override
  String get manga_online_downloaded => '已入庫';
  @override
  String get manga_online_failed => '下載失敗';
  @override
  String get manga_online_load_failed => '目錄加載失敗';
  @override
  String get manga_online_queue_added => '已加入下載隊列';
  @override
  String manga_online_queue_progress({
    required Object done,
    required Object total,
  }) => '第 ${done} / ${total} 卷';
  @override
  String get manga_online_queue_section => '漫畫目錄下載';
  @override
  String get manga_online_search_hint => '搜索系列';
  @override
  String get manga_online_stage_cbz => '下載卷包…';
  @override
  String get manga_online_stage_extract => '解包中…';
  @override
  String get manga_online_stage_mokuro => '下載 OCR 數據…';
  @override
  String get manga_reading_mode_spread => '翻頁';
  @override
  String get manga_reading_mode_webtoon => '條漫';
  @override
  String get manga_remote_ocr_cancelled => '主機側已取消遠程 OCR。';
  @override
  String get manga_remote_ocr_engine => '已配對主機';
  @override
  String get manga_remote_ocr_failed => '遠程 OCR 失敗';
  @override
  String get manga_remote_ocr_no_host => '沒有可用的支持漫畫 OCR 的已配對主機。';
  @override
  String get manga_remote_ocr_not_ready => '已配對主機的 OCR 模型未下載，請先在主機上下載模型。';
  @override
  String get manga_remote_ocr_running => '已配對主機正在識別…';
  @override
  String get manga_remote_ocr_unsupported => '已配對主機不支持漫畫 OCR。';
  @override
  String manga_remote_ocr_uploading({
    required Object done,
    required Object total,
  }) => '正在上傳頁面 ${done} / ${total}…';
  @override
  String get margin_bottom => '下邊距';
  @override
  String get margin_left => '左邊距';
  @override
  String get margin_right => '右邊距';
  @override
  String get margin_top => '上邊距';
  @override
  String get maximum_terms => '結果中的詞頭數量上限';
  @override
  String get media_source_add => 'Add Source';
  @override
  String get media_source_add_local_folder => 'Local Folder';
  @override
  String get media_source_add_network => '網路';
  @override
  String media_source_count_book({required Object n}) => '${n} 本書';
  @override
  String media_source_count_video({required Object n}) => '${n} 個影片';
  @override
  String media_source_last_scan({required Object time}) => '上次掃描 ${time}';
  @override
  String get media_source_manage_title => 'Manage Sources';
  @override
  String get media_source_network_label_optional => '顯示名（可選）';
  @override
  String get media_source_network_missing_fields => '請填寫主機、用戶名、遠端路徑，以及密碼或私鑰';
  @override
  String get media_source_network_remote_path => '遠端路徑';
  @override
  String get media_source_network_subtitle => 'SFTP / FTP / WebDAV 遠端書架';
  @override
  String get media_source_no_sources => '暫無來源';
  @override
  String get media_source_open_folder => 'Open Folder';
  @override
  String get media_source_remove => 'Remove Source';
  @override
  String get media_source_remove_keeps_media => '移除來源不會刪除已導入的媒體。';
  @override
  String get media_source_rescan => '重新掃描';
  @override
  String get media_source_scan_error => '掃描失敗';
  @override
  String get media_tracking_access_token => '訪問令牌';
  @override
  String get media_tracking_access_token_hint => '創建具有寫入權限的個人訪問令牌';
  @override
  String get media_tracking_account => 'Bangumi 賬號';
  @override
  String get media_tracking_add_mapping => '添加映射';
  @override
  String get media_tracking_anime => '番劇';
  @override
  String get media_tracking_chapter => '話';
  @override
  String get media_tracking_connect => '連接並驗證';
  @override
  String get media_tracking_connected_as => '已連接賬號';
  @override
  String get media_tracking_delete_mapping => '移除映射';
  @override
  String get media_tracking_episode => '集';
  @override
  String get media_tracking_kind => '分類';
  @override
  String get media_tracking_local_item => '本地條目';
  @override
  String get media_tracking_manga => '漫畫';
  @override
  String get media_tracking_mappings => '條目映射';
  @override
  String get media_tracking_no_mappings =>
      '暫無手動映射。首次看完一集或產生閱讀進度時會自動匹配；歧義條目可在此手動添加。';
  @override
  String get media_tracking_novel => '小說';
  @override
  String get media_tracking_pending => '待同步記錄';
  @override
  String get media_tracking_progress_mode => '進度單位';
  @override
  String get media_tracking_progress_offset => '起始編號';
  @override
  String get media_tracking_saved => '映射已保存';
  @override
  String get media_tracking_search => '搜索 Bangumi';
  @override
  String get media_tracking_search_results => 'Bangumi 搜索結果';
  @override
  String get media_tracking_summary => '自動將番劇、小說和漫畫進度記錄到 Bangumi';
  @override
  String get media_tracking_sync_failed => '同步失敗，記錄已保留在隊列中。';
  @override
  String get media_tracking_sync_now => '立即同步';
  @override
  String get media_tracking_sync_success => '同步完成';
  @override
  String get media_tracking_token_required => '請先輸入並驗證訪問令牌';
  @override
  String get media_tracking_volume => '卷';
  @override
  String get microphone_permission_denied => '錄音需要麥克風權限。';
  @override
  String get mining_audio_quality => '音頻質量';
  @override
  String get mining_audio_quality_high => '高音質';
  @override
  String get mining_audio_quality_hint => '比特率越高越清晰，卡片體積也越大。';
  @override
  String get mining_audio_quality_max => '最高';
  @override
  String get mining_audio_quality_standard => '標準';
  @override
  String get mining_image_quality => '圖片 / GIF 清晰度';
  @override
  String get mining_image_quality_hd => '高清';
  @override
  String get mining_image_quality_hint =>
      '越高越清晰，卡片體積也越大。最高檔的截圖保留源分辨率；動圖有上限，避免卡片大到不可用。';
  @override
  String get mining_image_quality_max => '最高';
  @override
  String get mining_image_quality_standard => '標準';
  @override
  String get mining_image_quality_thrift => '省流';
  @override
  String get move_down => '下移';
  @override
  String get move_up => '上移';
  @override
  String get name => '名稱';
  @override
  String get nav_browser_extension => '瀏覽器擴展';
  @override
  String get nav_downloads => '下載';
  @override
  String get nav_game => '遊戲';
  @override
  String get nav_home => '首頁';
  @override
  String get nav_lookup => '查詞';
  @override
  String get nav_video => '影片';
  @override
  String get next_sentence => '下一句';
  @override
  String get no_audio_file => '沒有可儲存的音訊。';
  @override
  String get no_collections => '沒有書籤或保存的句子';
  @override
  String get no_debug_logs => '無偵錯日誌。';
  @override
  String get no_illustrations_found => '未找到插圖';
  @override
  String get no_results_found => '未找到結果。';
  @override
  String get no_search_results => '未找到搜尋結果。';
  @override
  String get no_sentence_selected => '未選擇句子';
  @override
  String get no_sentences_found => '未找到句子';
  @override
  String get no_text => '無文字。';
  @override
  String get no_text_to_search => '沒有可搜尋的文字。';
  @override
  String get now_listening_label => '正在聽書';
  @override
  String get on_screen_keyboard => '螢幕鍵盤';
  @override
  String get options_collapse => '查詞時摺疊';
  @override
  String get options_delete => '刪除';
  @override
  String get options_edit => '編輯';
  @override
  String get options_expand => '查詞時展開';
  @override
  String get options_github => '在 GitHub 檢視儲存庫';
  @override
  String get options_hide => '查詞時隱藏';
  @override
  String get options_language => '語言設定';
  @override
  String get options_show => '查詞時顯示';
  @override
  String get overlay_lookup_independent_size => '彈出查詞窗獨立尺寸';
  @override
  String get overlay_lookup_independent_size_hint =>
      '讓 app 外彈出查詞窗使用獨立最大尺寸，而非跟隨 app 內查詞彈窗';
  @override
  String get overlay_lookup_max_height => '彈出查詞窗最大高度';
  @override
  String get overlay_lookup_max_width => '彈出查詞窗最大寬度';
  @override
  String page_progress({required Object current, required Object total}) =>
      '第 ${current} / ${total} 頁';
  @override
  String get paste => '貼上';
  @override
  String get pause => '暫停';
  @override
  String get pause_on_lookup => '查詞時暫停';
  @override
  String get pdf_bookmark_added => '已添加書簽';
  @override
  String get pdf_bookmarks => '書簽';
  @override
  String get pdf_bookmarks_empty => '還沒有書簽。';
  @override
  String get pdf_no_text_layer => '此 PDF 沒有文本層（掃描圖），無法查詞。';
  @override
  String get pdf_outline => '目錄';
  @override
  String get pdf_outline_empty => '此 PDF 沒有目錄。';
  @override
  String get pick_image => '選擇圖片';
  @override
  String get play => '播放';
  @override
  String get play_from_cue => '從本句播放';
  @override
  String get playback_auto_pause => '字幕暫停播放模式';
  @override
  String get playback_speed => '倍速';
  @override
  String get popup_append_sentence_tooltip => '把此句加入卡片';
  @override
  String get popup_auto_expand_dictionaries => '自動展開行數';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      '即使開啟「折疊詞典」，也保持前 N 行詞典方框展開。展開數跟隨列數設定：行數 x 詞典列數（0 = 全部折疊）';
  @override
  String get popup_bottom_docked => '底部停靠查詞彈窗';
  @override
  String get popup_bottom_docked_hint => '將查詞彈窗固定為螢幕底部一條整寬面板，而非跟隨被查的字詞。';
  @override
  String get popup_clear_sentence_draft_tooltip => '清空已加入的句子';
  @override
  String get popup_ctx_adjust_button => '調整上下文';
  @override
  String get popup_ctx_box_current => 'Current';
  @override
  String get popup_ctx_box_empty => '（無）';
  @override
  String get popup_ctx_box_next => 'After';
  @override
  String get popup_ctx_box_prev => 'Before';
  @override
  String get popup_ctx_cancel => '取消';
  @override
  String get popup_ctx_confirm => 'Confirm';
  @override
  String get popup_ctx_modal_count => 'Selected %d';
  @override
  String get popup_ctx_modal_eyebrow => 'Before mining';
  @override
  String get popup_ctx_modal_title => '選擇句子上下文';
  @override
  String get popup_ctx_next_minus => 'Remove after';
  @override
  String get popup_ctx_next_plus => 'Add after';
  @override
  String get popup_ctx_prev_minus => 'Remove before';
  @override
  String get popup_ctx_prev_plus => 'Add before';
  @override
  String get popup_dictionary_max_columns => '詞典最多列數（自動填充）';
  @override
  String get popup_dictionary_max_columns_hint => '每行自動填充詞典，最多不超過此列數；窄屏會自動減少';
  @override
  String get popup_font_size_decrease => '縮小查詞字號';
  @override
  String get popup_font_size_increase => '放大查詞字號';
  @override
  String get popup_instant_scroll => '查詞彈窗即時捲動';
  @override
  String get popup_instant_scroll_hint => '供電子墨水屏使用：查詞彈窗按固定距離即時跳動，不播放捲動動畫。';
  @override
  String get popup_max_height => '查詞視窗最大高度';
  @override
  String get popup_max_width => '查詞視窗最大寬度';
  @override
  String get popup_no_audio_available => '暫無發音';
  @override
  String get popup_sentence_context_next_label => '下';
  @override
  String get popup_sentence_context_prev_label => '上';
  @override
  String get popup_wheel_speed => '彈窗滾輪速度';
  @override
  String get popup_wheel_speed_hint => '查詞彈窗的滑鼠滾輪滾動速度（瀏覽器擴展彈窗同樣生效）。';
  @override
  String get prev_sentence => '上一句';
  @override
  String get preview => '預覽';
  @override
  String get preview_badge => '徽章';
  @override
  String get preview_switch => '開關';
  @override
  String get processing_in_progress => '正在準備圖片';
  @override
  String get profile_book_profile => '指定設定檔';
  @override
  String profile_confirm_delete({required Object name}) => '刪除設定檔「${name}」？';
  @override
  String get profile_copy => '複製';
  @override
  String get profile_copy_suffix => '（副本）';
  @override
  String get profile_create => '建立設定檔';
  @override
  String get profile_delete => '刪除';
  @override
  String get profile_export => '導出';
  @override
  String get profile_export_failed => '導出失敗';
  @override
  String profile_follow_default_current({required Object name}) =>
      '跟隨預設（${name}）';
  @override
  String get profile_import => '導入';
  @override
  String get profile_import_failed => '導入失敗';
  @override
  String get profile_import_invalid => '配置方案檔案無效';
  @override
  String get profile_import_success => '配置方案已導入';
  @override
  String get profile_label => '設定檔';
  @override
  String get profile_management => '設定檔管理';
  @override
  String get profile_media_audiobook => '有聲書';
  @override
  String get profile_media_epub => '普通書';
  @override
  String get profile_media_lyrics => '歌詞模式';
  @override
  String get profile_media_none => '無';
  @override
  String get profile_media_srtbook => '字幕書';
  @override
  String get profile_media_type_bindings => '媒體類型繫結';
  @override
  String get profile_media_video => '影片';
  @override
  String get profile_name_hint => '設定檔名稱';
  @override
  String get profile_rename => '重新命名';
  @override
  String get reader_auto_hide_chrome_duration => '懸浮控件自動隱藏延時';
  @override
  String get reader_content_timeout => '內容載入逾時，如顯示異常請重新開啟';
  @override
  String get reader_copy_image => '複製圖片';
  @override
  String get reader_gallery => '插圖';
  @override
  String get reader_gallery_current => '正在閱讀';
  @override
  String get reader_gallery_empty => '本書沒有插圖';
  @override
  String get reader_gallery_jump => '跳轉到此插圖';
  @override
  String get reader_gallery_tooltip => '瀏覽插圖';
  @override
  String reader_image_copy_failed({required Object error}) => '複製圖片失敗：${error}';
  @override
  String get reader_image_file_unavailable => '圖片檔案不可用。';
  @override
  String reader_image_share_failed({required Object error}) =>
      '分享圖片失敗：${error}';
  @override
  String get reader_open_failed => '打開書籍失敗';
  @override
  String get reader_settings_section => '閱讀設定';
  @override
  String get reader_theme_black => '純黑';
  @override
  String get reader_theme_dark => '深暗';
  @override
  String get reader_theme_ecru => '米黃';
  @override
  String get reader_theme_eyecare => '護眼';
  @override
  String get reader_theme_gray => '灰暗';
  @override
  String get reader_theme_light => '白色';
  @override
  String get reader_theme_water => '水藍';
  @override
  String get reader_top_progress_floating => '懸浮閱讀進度';
  @override
  String get reader_unsupported_platform => '此平台暫不支援閱讀器。';
  @override
  String get reading_activity => '學習活動';
  @override
  String get reading_progress => '閱讀進度';
  @override
  String get reading_section_mode => '模式與排版方向';
  @override
  String get reading_statistics => '閱讀統計';
  @override
  String get record => '錄製';
  @override
  String get refresh => '重新整理';
  @override
  String get rematch_adjust_window => '調整搜尋視窗重新比對';
  @override
  String get rematch_run => '重跑比對';
  @override
  String get remote_audio_source => '遠端音訊';
  @override
  String get remote_book_audiobook_download_failed => '無法下載這本書的有聲書';
  @override
  String get remote_book_download => '下載到本機';
  @override
  String get remote_book_download_failed => '無法下載遠端書籍';
  @override
  String get remote_book_downloaded => '已下載對端書籍';
  @override
  String get remote_book_downloading => '正在下載…';
  @override
  String get remote_book_info => '資訊';
  @override
  String get remote_book_info_has_audiobook => '包含有聲書';
  @override
  String get remote_book_unavailable => '配對裝置不可用';
  @override
  String get remote_dict_lookup => '遠端詞典查詢';
  @override
  String get remote_dict_lookup_hint => '本機詞典查不到時，向已設定的 Fushi 伺服器查詢';
  @override
  String get remote_video_download => '下載到本機';
  @override
  String get remote_video_download_failed => '無法下載遠端影片';
  @override
  String get remote_video_downloaded => '已下載對端影片';
  @override
  String get remote_video_downloading => '正在下載…';
  @override
  String get remote_video_info => '資訊';
  @override
  String get remote_video_info_has_subtitle => '包含字幕';
  @override
  String get remote_video_info_no_subtitle => '不含字幕';
  @override
  String remote_video_info_size({required Object size}) => '大小：${size}';
  @override
  String get remote_video_list_failed => '無法加載遠端影片，請確認對端設備在線並與本機處於同一網路後重試';
  @override
  String get remote_video_unavailable => '配對裝置不可用';
  @override
  String get rename_collection => '重命名合集';
  @override
  String get render_restart_required => '重啟 App 後生效';
  @override
  String get repeat_cue => '重複本句';
  @override
  String get reset => '重設';
  @override
  String get retry => '重試';
  @override
  String get reverse_arrow_page_turn => '反轉鍵盤左右鍵翻頁方向';
  @override
  String get reverse_navigation_bar => '反轉底欄方向';
  @override
  String get reverse_reader_bottom_bar => '反轉閱讀器底欄';
  @override
  String get audiobook_rematch_all_zero => '所有視窗命中率都是 0，請手動調整';
  @override
  String audiobook_rematch_auto_failed({required Object error}) =>
      '自動比對失敗：${error}';
  @override
  String get audiobook_rematch_auto_match => '自動比對';
  @override
  String audiobook_rematch_auto_picked({
    required Object window,
    required Object pct,
  }) => '自動選定 ${window}（命中 ${pct}%）';
  @override
  String audiobook_rematch_default_value({required Object n}) => '預設 ${n}';
  @override
  String audiobook_rematch_health_label({
    required Object pct,
    required Object detail,
  }) => '${pct} 比對 — ${detail}';
  @override
  String get audiobook_rematch_matching => '比對中…';
  @override
  String get audiobook_rematch_no_chapters => 'EPUB 沒有章節文字';
  @override
  String get audiobook_rematch_no_cues_to_match => '沒有字幕條目可供比對';
  @override
  String get audiobook_rematch_no_sections => '未讀到章節文字，無法自動比對';
  @override
  String get audiobook_rematch_no_stored_cues => '沒有已存字幕條目，無法重跑';
  @override
  String audiobook_rematch_failed({required Object error}) => '重跑失敗：${error}';
  @override
  String audiobook_rematch_result({
    required Object pct,
    required Object window,
  }) => '重新比對：${pct}%（視窗：${window}）';
  @override
  String get audiobook_rematch_search_window => '搜尋視窗';
  @override
  String get audiobook_rematch_similarity_threshold => '相似度閾值';
  @override
  String get audiobook_rematch_threshold_hint =>
      '模糊比對的最低相似度（Dice 係數）。降低可容忍更多文字差異，但太低會誤比對。';
  @override
  String get audiobook_rematch_window_hint =>
      '每條字幕在正文裡向前找的字元數。命中率低時可左右調整，過大容易被短雜訊字幕拉偏遊標。';
  @override
  String get saved_tags => '標籤已儲存。';
  @override
  String get scan_non_japanese_text => '掃描非日文文本';
  @override
  String get scan_non_japanese_text_hint => '關閉後選區遇非日文字符即停止';
  @override
  String get search => '搜尋';
  @override
  String get search_ellipsis => '搜尋…';
  @override
  String get searching_in_progress => '正在搜尋 ';
  @override
  String get section_advanced_colors => '進階';
  @override
  String get section_advanced_typography => '進階選項';
  @override
  String get section_audiobook => '有聲書';
  @override
  String get section_audiobook_lyrics => '有聲書與歌詞';
  @override
  String get section_epub => 'EPUB 書架';
  @override
  String get section_floating_lyric => '懸浮歌詞';
  @override
  String get section_interface => '介面';
  @override
  String get section_layout => '版面顯示';
  @override
  String get section_navigation => '導覽';
  @override
  String get section_page_turn_direction => '翻頁方向';
  @override
  String get section_reader_colors => '閱讀器顏色';
  @override
  String get section_system_theme => '系統主題色';
  @override
  String get section_typography => '排版';
  @override
  String get section_update => '更新設定';
  @override
  String get section_video_danmaku => '彈幕';
  @override
  String get section_video_library => '媒體庫';
  @override
  String get section_video_playback => '播放';
  @override
  String get section_video_subtitles => '字幕';
  @override
  String get seed_color => '種子色';
  @override
  String get seed_color_desc => '自動產生下方所有預設顏色';
  @override
  String get selection_color => '選中高亮色';
  @override
  String get selection_color_desc => '閱讀器文字選取醒目標示';
  @override
  String get send => '傳送';
  @override
  String get series => '系列';
  @override
  String get series_created => '已創建系列';
  @override
  String get series_default_name => '新系列';
  @override
  String series_item_count({required Object n}) => '${n} 項';
  @override
  String get series_name_hint => '系列名稱';
  @override
  String get server_address => '伺服器位址';
  @override
  String get settings => '設定';
  @override
  String get settings_check_update_now => '檢查更新';
  @override
  String get settings_destination_appearance => '外觀';
  @override
  String get settings_destination_card_creation => '製卡';
  @override
  String get settings_destination_diagnostics => '診斷';
  @override
  String get settings_destination_interconnect => 'Fushi 互聯';
  @override
  String get settings_destination_listening => '聽書';
  @override
  String get settings_destination_lookup => '查詞';
  @override
  String get settings_destination_profiles => '配置方案';
  @override
  String get settings_destination_reading => '閱讀';
  @override
  String get settings_destination_reading_controls => '閱讀操作';
  @override
  String get settings_destination_sync_backup => '同步與備份';
  @override
  String get settings_destination_system => '系統';
  @override
  String get settings_destination_system_summary => '通用、更新與診斷';
  @override
  String get settings_destination_tracking => '媒體記錄';
  @override
  String get settings_destination_video => '影片';
  @override
  String get settings_search_hint => '搜索設定';
  @override
  String get settings_search_no_results => '沒有匹配的設定項';
  @override
  String get settings_secret_hide => '隱藏內容';
  @override
  String get settings_secret_show => '顯示內容';
  @override
  String get settings_section_app_shell => '應用';
  @override
  String get settings_section_data_storage => '數據存儲位置';
  @override
  String get settings_section_gal_hook_overlay => 'Galgame 台詞浮窗';
  @override
  String get settings_section_general => '通用';
  @override
  String get settings_section_lookup_audio => '朗讀與反饋';
  @override
  String get settings_section_lookup_content => '詞條內容';
  @override
  String get settings_section_lookup_integrations => '外部集成';
  @override
  String get settings_section_lookup_popup_window => '彈窗視窗';
  @override
  String get settings_section_lookup_trigger => '查詞觸發';
  @override
  String get settings_section_page_turn_input => '翻頁與交互';
  @override
  String get settings_section_reader_chrome => '閱讀界面';
  @override
  String get settings_section_update_channel => '更新頻道';
  @override
  String get settings_view_changelog => '查看更新日志';
  @override
  String get share => '分享';
  @override
  String get share_theme => '分享主題';
  @override
  String get shortcut_action_audiobook_next_sentence => '下一句';
  @override
  String get shortcut_action_audiobook_play_pause => '播放／暫停';
  @override
  String get shortcut_action_audiobook_prev_sentence => '上一句';
  @override
  String get shortcut_action_audiobook_seek_clicked => '將音訊跳轉到所點選的句子';
  @override
  String get shortcut_action_dpad_down => '方向鍵 下';
  @override
  String get shortcut_action_dpad_left => '方向鍵 左';
  @override
  String get shortcut_action_dpad_right => '方向鍵 右';
  @override
  String get shortcut_action_dpad_up => '方向鍵 上';
  @override
  String get shortcut_action_global_back => '返回上一層';
  @override
  String get shortcut_action_global_external_lookup => '應用外查詞快捷鍵';
  @override
  String get shortcut_action_global_scroll_page_down => '向下捲動一頁';
  @override
  String get shortcut_action_global_scroll_page_up => '向上捲動一頁';
  @override
  String get shortcut_action_global_toggle_fullscreen => '全屏切換';
  @override
  String get shortcut_action_home_focus_search => '聚焦搜尋';
  @override
  String get shortcut_action_home_tab_books => '書架分頁';
  @override
  String get shortcut_action_home_tab_dict => '詞典分頁';
  @override
  String get shortcut_action_home_tab_next => '下一個分頁';
  @override
  String get shortcut_action_home_tab_prev => '上一個分頁';
  @override
  String get shortcut_action_home_tab_settings => '設定分頁';
  @override
  String get shortcut_action_popup_next_entry => '下一個詞條';
  @override
  String get shortcut_action_popup_prev_entry => '上一個詞條';
  @override
  String get shortcut_action_reader_create_card_from_popup => '由彈窗製卡';
  @override
  String get shortcut_action_reader_dismiss_dict => '關閉詞典';
  @override
  String get shortcut_action_reader_enter_caret => '進入選字查詞遊標';
  @override
  String get shortcut_action_reader_lookup_at_cursor => '查詞／啟用遊標';
  @override
  String get shortcut_action_reader_open_menu => 'Open Settings Menu';
  @override
  String get shortcut_action_reader_open_navigation => 'Open Navigation';
  @override
  String get shortcut_action_reader_page_backward => '上一頁';
  @override
  String get shortcut_action_reader_page_forward => '下一頁';
  @override
  String get shortcut_action_reader_shift_lookup => '遊標處查詞';
  @override
  String get shortcut_action_reader_toggle_chrome => '顯示／隱藏控制欄';
  @override
  String get shortcut_action_reader_toggle_furigana => '切換振假名';
  @override
  String get shortcut_action_video_align_subtitle_to_next => '下一句字幕對齊到當前時間';
  @override
  String get shortcut_action_video_align_subtitle_to_prev => '上一句字幕對齊到當前時間';
  @override
  String get shortcut_action_video_cycle_secondary_subtitle_obscure =>
      'Cycle Secondary Subtitle Obscure';
  @override
  String get shortcut_action_video_cycle_subtitle_obscure =>
      'Cycle Subtitle Obscure Mode';
  @override
  String get shortcut_action_video_next_chapter => '下一章';
  @override
  String get shortcut_action_video_next_frame => '下一幀';
  @override
  String get shortcut_action_video_next_subtitle => '下一句字幕';
  @override
  String get shortcut_action_video_open_subtitle_align => '打開字幕波形對軸';
  @override
  String get shortcut_action_video_pause => '暫停';
  @override
  String get shortcut_action_video_play => '播放';
  @override
  String get shortcut_action_video_previous_chapter => '上一章';
  @override
  String get shortcut_action_video_previous_frame => '上一幀';
  @override
  String get shortcut_action_video_previous_subtitle => '上一句字幕';
  @override
  String get shortcut_action_video_replay_current_subtitle => '重播目前句子';
  @override
  String get shortcut_action_video_replay_previous_subtitle => '重播上一句';
  @override
  String get shortcut_action_video_reset_speed => '速度復位';
  @override
  String get shortcut_action_video_screenshot => '截圖';
  @override
  String get shortcut_action_video_seek_backward => '快退';
  @override
  String get shortcut_action_video_seek_forward => '快進';
  @override
  String get shortcut_action_video_speed_down => '減速';
  @override
  String get shortcut_action_video_speed_up => '加速';
  @override
  String get shortcut_action_video_subtitle_delay_decrease => '字幕延遲減小';
  @override
  String get shortcut_action_video_subtitle_delay_increase => '字幕延遲增大';
  @override
  String get shortcut_action_video_toggle_favorite_sentence => '收藏目前句子';
  @override
  String get shortcut_action_video_toggle_fullscreen => '切換全螢幕';
  @override
  String get shortcut_action_video_toggle_immersive_lock => '切換沉浸鎖定';
  @override
  String get shortcut_action_video_toggle_mute => '切換靜音';
  @override
  String get shortcut_action_video_toggle_play_pause => '播放／暫停';
  @override
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle Hide Secondary Subtitle';
  @override
  String get shortcut_action_video_toggle_shader_compare => '切換着色器對比';
  @override
  String get shortcut_action_video_toggle_subtitle_blur => '切換字幕模糊';
  @override
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle Hide Subtitles';
  @override
  String get shortcut_action_video_toggle_subtitle_list => '切換字幕清單';
  @override
  String get shortcut_action_video_volume_down => '音量－';
  @override
  String get shortcut_action_video_volume_up => '音量＋';
  @override
  String get shortcut_assign_pick_action => '分配到動作…';
  @override
  String get shortcut_clear => '清除';
  @override
  String shortcut_conflict({required Object s}) => '已被佔用：${s}';
  @override
  String shortcut_conflict_replace_confirm({required Object s}) =>
      '該快捷鍵已被「${s}」佔用。要移到目前動作嗎？';
  @override
  String get shortcut_gamepad => '手掣';
  @override
  String get shortcut_gamepad_brand_label => '手柄按鈕樣式';
  @override
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  @override
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  @override
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  @override
  String get shortcut_gamepad_pick_list => '從列表選擇';
  @override
  String get shortcut_gamepad_unavailable_hint =>
      '未檢測到 GameInput 組件，手柄功能不可用。可安裝 Windows「遊戲服務(Gaming Services)」以啟用手柄支持。';
  @override
  String get shortcut_keyboard => '鍵盤';
  @override
  String get shortcut_mouse_back => '滑鼠側鍵(後退)';
  @override
  String get shortcut_mouse_button => '滑鼠按鍵';
  @override
  String get shortcut_mouse_forward => '滑鼠側鍵(前進)';
  @override
  String get shortcut_mouse_left => '滑鼠左鍵';
  @override
  String get shortcut_mouse_middle => '滑鼠中鍵';
  @override
  String get shortcut_mouse_right => '滑鼠右鍵';
  @override
  String get shortcut_press_gamepad => '按下手柄按鈕…';
  @override
  String get shortcut_press_key => '請按下快捷鍵組合…';
  @override
  String get shortcut_press_mouse_button => '按下滑鼠鍵……';
  @override
  String get shortcut_press_wheel => '按住修飾鍵在此滾動滾輪';
  @override
  String get shortcut_reset_confirm => '確定要將此部分的所有快捷鍵還原為預設值嗎？';
  @override
  String get shortcut_reset_defaults => '還原預設';
  @override
  String get shortcut_scope_audiobook => '有聲書';
  @override
  String get shortcut_scope_dictionary_popup => '查詞彈窗';
  @override
  String get shortcut_scope_dictionary_popup_note => '滑鼠位於查詞彈窗上時生效';
  @override
  String get shortcut_scope_gamepad => '手掣';
  @override
  String get shortcut_scope_global => '全域';
  @override
  String get shortcut_scope_global_external => '全局（應用外）';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      '由系統觸發（選中文本菜單、分享、懸浮球），系統不允許應用自定義此快捷鍵。';
  @override
  String get shortcut_scope_home => '首頁';
  @override
  String get shortcut_scope_reader => '閱讀器';
  @override
  String get shortcut_scope_video => '影片';
  @override
  String get shortcut_settings_title => '鍵盤快捷鍵';
  @override
  String get shortcut_stop_capture => '停止擷取';
  @override
  String get shortcut_tap_to_assign => '未設定 · 點擊設定';
  @override
  String get shortcut_view_list => '列表視圖';
  @override
  String get shortcut_view_visual => '手柄可視化圖';
  @override
  String get shortcut_wheel => '滑鼠滾輪';
  @override
  String get shortcut_wheel_down => '滾輪向下';
  @override
  String get shortcut_wheel_needs_modifier =>
      '裸滾輪用於滾動彈窗內容，請按住 Alt / Ctrl / Shift 再滾';
  @override
  String get shortcut_wheel_up => '滾輪向上';
  @override
  String get show_bottom_bar_cue => '顯示當前句子';
  @override
  String get show_expression_tags => '顯示表達標籤';
  @override
  String get show_floating_lyric => '懸浮字幕';
  @override
  String get show_media_notification => '顯示媒體通知';
  @override
  String get show_options => '顯示選項';
  @override
  String get show_top_progress_bar => '頂部閱讀進度';
  @override
  String get skip_action => '略過操作';
  @override
  String skip_action_seconds({required Object n}) => '${n} 秒';
  @override
  String get skip_action_sentence => '1 句';
  @override
  String get sort_by => '排序方式';
  @override
  String get sort_imported => '導入時間';
  @override
  String get sort_recent_read => '最近閱讀';
  @override
  String get sort_recent_watched => '最近觀看';
  @override
  String get sort_title => '名稱';
  @override
  String get source_description_epub => 'EPUB 閱讀與辭典查詢';
  @override
  String get source_name_bookshelf => '書架';
  @override
  String get spread_auto => '自動';
  @override
  String get spread_direction => '跨頁方向';
  @override
  String get spread_direction_ltr => '由左至右';
  @override
  String get spread_direction_rtl => '由右至左';
  @override
  String get spread_mode => '跨頁模式';
  @override
  String get spread_off => '關閉';
  @override
  String get spread_on => '開啟';
  @override
  String get srt_audio_unresolved => '未找到音訊檔案 — 請重新附加';
  @override
  String get srt_books_section => '字幕有聲書';
  @override
  String srt_delete_confirm({required Object title}) => '刪除『${title}』？此操作無法復原。';
  @override
  String get srt_delete_title => '刪除字幕書籍';
  @override
  String get srt_epub_not_ready => '書籍尚未就緒 — 請重新匯入';
  @override
  String get srt_import => '匯入書';
  @override
  String get srt_import_audio_needs_subtitle =>
      '音訊需要搭配字幕使用（給現有 EPUB 附加音訊請在書架長按該書）';
  @override
  String get srt_import_author_hint => '作者（選填）';
  @override
  String get srt_import_error => '匯入失敗';
  @override
  String srt_import_files_selected({required Object n}) => '已選擇 ${n} 個檔案';
  @override
  String get srt_import_hint_epub_or_srt => '選擇 EPUB 或字幕檔進行匯入。';
  @override
  String get srt_import_missing_input => '請至少選擇 EPUB 或字幕檔';
  @override
  String get srt_import_missing_title => '請輸入書名';
  @override
  String get srt_import_pick_audio_dir => '選擇音訊目錄';
  @override
  String get srt_import_pick_audio_files => '選擇音訊檔案';
  @override
  String get srt_import_pick_cover => '選擇封面圖片';
  @override
  String get srt_import_pick_epub => '選擇 EPUB';
  @override
  String get srt_import_pick_subtitle_files => '選擇字幕檔';
  @override
  String get srt_import_success => '匯入成功';
  @override
  String get srt_import_title_hint => '書名';
  @override
  String get startup_default_dictionary_tab => '啟動時開啟查詞';
  @override
  String get startup_default_dictionary_tab_hint =>
      'App 開啟後直接顯示查詞分頁，而非目前的預設首頁。';
  @override
  String get stash => '暫存';
  @override
  String get stash_added_multiple => '多項已新增到暫存區。';
  @override
  String stash_added_single({required Object term}) => '『${term}』已新增到暫存區。';
  @override
  String get stash_clear_description => '所有內容將被清除。確定嗎？';
  @override
  String stash_clear_single({required Object term}) => '『${term}』已從暫存區移除。';
  @override
  String get stash_clear_title => '清空暫存區';
  @override
  String get stash_nothing_to_pop => '暫存區沒有可彈出的項目。';
  @override
  String get stash_placeholder => '暫存區為空';
  @override
  String get stat_all_time => '全部';
  @override
  String get stat_bookshelf_compare => '書架對比';
  @override
  String get stat_clear_all => '清空統計';
  @override
  String get stat_clear_all_confirm => '清空';
  @override
  String get stat_clear_all_reading_message =>
      '確定清空全部閱讀統計嗎？將刪除所有閱讀時長、字數以及查詞 / 製卡計數。你收藏的詞、句子和已製卡片不受影響。此操作不可撤銷。';
  @override
  String get stat_clear_all_title => '清空全部統計';
  @override
  String get stat_clear_all_video_message =>
      '確定清空全部影片統計嗎？將刪除所有觀看時長、字幕字數以及查詞 / 製卡計數。你收藏的詞、句子和已製卡片不受影響。此操作不可撤銷。';
  @override
  String get stat_daily_average => '日均';
  @override
  String get stat_delete_message => '刪除該項的時長、字數與查詞/製卡統計？你收藏的單詞和句子不受影響。';
  @override
  String get stat_delete_title => '刪除統計數據';
  @override
  String get stat_fastest_day => 'Fastest Day';
  @override
  String get stat_favorited => '收藏';
  @override
  String get stat_favorited_sentence => '收藏的句子';
  @override
  String stat_format_chars({required Object n}) => '${n} 字';
  @override
  String stat_format_chars_wan({required Object n}) => '${n} 萬字';
  @override
  String stat_format_days({required Object n}) => '${n} 天';
  @override
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h} 小時 ${m} 分鐘';
  @override
  String stat_format_minutes({required Object n}) => '${n} 分鐘';
  @override
  String get stat_goal => 'Daily Goal';
  @override
  String get stat_goal_daily => 'Daily Goal';
  @override
  String get stat_goal_presets => '快捷預設';
  @override
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} 字';
  @override
  String get stat_goal_reached => '已達成';
  @override
  String stat_goal_recent_average({required Object n}) => '近 7 日日均 ${n} 字';
  @override
  String get stat_goal_set => 'Set Goal';
  @override
  String get stat_goal_unit_chars => '字';
  @override
  String get stat_goal_weekly => 'Weekly Goal';
  @override
  String get stat_last_30_days => '近 30 天';
  @override
  String get stat_lookup => '查詞';
  @override
  String get stat_metric_chars => '字數';
  @override
  String get stat_metric_speed => '速度';
  @override
  String get stat_metric_time => '時長';
  @override
  String get stat_mined => '製卡';
  @override
  String get stat_no_data => '暫無閱讀資料';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => '近 7 日活躍';
  @override
  String get stat_refresh => '重新整理';
  @override
  String get stat_slowest_day => 'Slowest Day';
  @override
  String get stat_sort_by_chars => '按字數';
  @override
  String get stat_sort_by_speed => '按速度';
  @override
  String get stat_sort_by_time => '按時長';
  @override
  String get stat_speed_anomaly => '異常日';
  @override
  String get stat_speed_avg => '移動平均';
  @override
  String stat_speed_cph({required Object n}) => '${n} 字／小時';
  @override
  String get stat_speed_summary => 'Speed Summary';
  @override
  String get stat_streak => '連續天數';
  @override
  String get stat_this_month => '本月';
  @override
  String get stat_this_week => '本週';
  @override
  String get stat_today => '今日';
  @override
  String get stat_today_hourly => '今日按時段';
  @override
  String get stat_trend_daily => '日';
  @override
  String get stat_trend_monthly => '月';
  @override
  String get stat_trend_weekly => '週';
  @override
  String get stat_typical_day => 'Typical Day';
  @override
  String get stat_vs_prev => '較前 14 天';
  @override
  String get stat_weighted_avg_speed => 'Weighted Avg';
  @override
  String get stop => '停止';
  @override
  String get storage_permissions => '請授予以下權限以便匯出到 AnkiDroid。';
  @override
  String get stream => '串流';
  @override
  String get swipe_page_turn_sensitivity => '滑動翻頁靈敏度';
  @override
  String get sync_account => '帳戶';
  @override
  String get sync_audiobook => '同步有聲書位置';
  @override
  String get sync_audiobook_files => '同步有聲書文件';
  @override
  String get sync_audiobook_files_warning => '音訊與字幕可能很大。';
  @override
  String sync_auth_error({required Object message}) => '認證失敗：${message}';
  @override
  String get sync_auto_sync => '自動同步';
  @override
  String get sync_backend => '儲存後端';
  @override
  String get sync_backend_dropbox => 'Dropbox';
  @override
  String get sync_backend_ftp => 'FTP';
  @override
  String get sync_backend_google_drive => 'Google Drive';
  @override
  String get sync_backend_fushi_server => 'Fushi 互聯';
  @override
  String get sync_backend_onedrive => 'OneDrive';
  @override
  String get sync_backend_sftp => 'SFTP';
  @override
  String get sync_backend_webdav => 'WebDAV';
  @override
  String get sync_checking_account => '正在檢查帳戶…';
  @override
  String get sync_client_connected => '已連接';
  @override
  String get sync_client_token => '對端訪問令牌';
  @override
  String get sync_client_token_manual => '手動填寫令牌';
  @override
  String get sync_compare => '比對資料';
  @override
  String get sync_compare_all_books => '全部書籍';
  @override
  String get sync_compare_all_local => '全部 → 本機';
  @override
  String get sync_compare_all_remote => '全部 → 遠端';
  @override
  String get sync_compare_all_skip => '全部 → 略過';
  @override
  String sync_compare_applied({required Object count}) => '已套用 ${count} 項變更';
  @override
  String sync_compare_apply({required Object count}) => '立即同步（${count}）';
  @override
  String get sync_compare_close => '關閉';
  @override
  String get sync_compare_conflicts => '衝突';
  @override
  String get sync_compare_days => '天';
  @override
  String get sync_compare_delete_audiobook => '刪除遠端有聲書';
  @override
  String get sync_compare_delete_book => '刪除遠端書籍';
  @override
  String sync_compare_delete_confirm({required Object name}) =>
      '確定要從遠端刪除「${name}」嗎？本機資料會保留，此操作無法復原。';
  @override
  String get sync_compare_delete_dict => '刪除遠端詞典';
  @override
  String get sync_compare_deleted => '已從遠端刪除';
  @override
  String get sync_compare_dictionaries => '詞典';
  @override
  String get sync_compare_download => '下載';
  @override
  String get sync_compare_empty => '找不到書籍';
  @override
  String get sync_compare_local => '本機';
  @override
  String get sync_compare_no_content => '僅雲端資料，沒有可下載的書籍';
  @override
  String get sync_compare_no_data => '無資料';
  @override
  String get sync_compare_remote => '遠端';
  @override
  String get sync_compare_select_all => '全選';
  @override
  String get sync_compare_skip => '略過';
  @override
  String get sync_compare_title => '本機 vs 遠端';
  @override
  String get sync_compare_unavailable => '請先設定同步後端';
  @override
  String get sync_compare_use_local => '本機';
  @override
  String get sync_compare_use_remote => '遠端';
  @override
  String get sync_connection_failed => '連線失敗';
  @override
  String get sync_connection_success => '連線成功';
  @override
  String get sync_content => '上傳書籍文件';
  @override
  String get sync_content_warning => '大檔案會佔用儲存空間及數據';
  @override
  String get sync_err_auth_expired => '登入已過期，請重新登入。';
  @override
  String get sync_err_invalid_client => '此版本的客戶端憑證無效，請更新 App。';
  @override
  String get sync_err_network => '無法連接伺服器——請檢查網絡或代理設定。';
  @override
  String get sync_err_not_configured => '此版本未設定 Google sync 憑證。';
  @override
  String get sync_err_quota => '雲端儲存空間已滿（已達配額上限）。';
  @override
  String get sync_err_scope_upgrade => '同步權限已更新，請重新登錄 Google 賬號以繼續同步。';
  @override
  String get sync_err_timeout => '連線逾時——伺服器未能及時回應。';
  @override
  String sync_error({required Object message}) => '同步錯誤：${message}';
  @override
  String get sync_exit_warning => '同步尚未完成，現在退出可能會遺失資料。';
  @override
  String get sync_exit_warning_title => '同步進行中';
  @override
  String get sync_host => '主機';
  @override
  String get sync_lan_discovery => '區域網絡裝置';
  @override
  String get sync_lan_no_devices => '找不到裝置';
  @override
  String get sync_lan_scan_failed => '掃描失敗——請檢查網絡權限或防火牆。';
  @override
  String get sync_not_signed_in => '未登入';
  @override
  String get sync_now => '立即同步';
  @override
  String sync_now_audio_in({required Object count}) => '↓${count} 本有聲書';
  @override
  String sync_now_audio_out({required Object count}) => '↑${count} 本有聲書';
  @override
  String sync_now_books_in({required Object count}) => '↓${count} 本書';
  @override
  String get sync_now_busy => '已有同步進行中，請稍候';
  @override
  String sync_now_dicts_in({required Object count}) => '↓${count} 個詞典';
  @override
  String sync_now_dicts_out({required Object count}) => '↑${count} 個詞典';
  @override
  String sync_now_done({required Object detail}) => '已同步 · ${detail}';
  @override
  String sync_now_failed_suffix({required Object count}) => ' · ${count} 項失敗';
  @override
  String get sync_now_hint => '立即與雲端進行一次完整雙向同步';
  @override
  String sync_now_local_audio_in({required Object count}) => '↓${count} 個本機音訊';
  @override
  String sync_now_local_audio_out({required Object count}) => '↑${count} 個本機音訊';
  @override
  String get sync_now_no_changes => '無變更';
  @override
  String get sync_pair_allow => '允許';
  @override
  String sync_pair_confirm_identity_body({required Object device}) =>
      '你正在與 ${device} 配對。繼續前請確認這是你預期的設備。';
  @override
  String get sync_pair_confirm_identity_title => '確認設備';
  @override
  String get sync_pair_continue => '繼續';
  @override
  String get sync_pair_denied => '對方拒絕了配對要求';
  @override
  String get sync_pair_deny => '拒絕';
  @override
  String get sync_pair_enter_pin_body => '輸入另一台設備螢幕上顯示的 6 位 PIN。';
  @override
  String get sync_pair_enter_pin_title => '輸入 PIN';
  @override
  String get sync_pair_failed => '配對失敗';
  @override
  String get sync_pair_fingerprint_changed => '證書已變更，為安全起見已中止配對（可能存在中間人攻擊）。';
  @override
  String get sync_pair_fingerprint_label => '證書指紋';
  @override
  String get sync_pair_not_fushi => '此地址未找到 Fushi 設備，已保存該地址。';
  @override
  String get sync_pair_pairing => '正在配對…';
  @override
  String get sync_pair_pin_label => '在另一台設備上輸入此 PIN';
  @override
  String get sync_pair_pin_waiting => '等待對方設備輸入此 PIN…';
  @override
  String get sync_pair_pin_wrong => 'PIN 錯誤，請重試';
  @override
  String get sync_pair_repair => '重新配對';
  @override
  String get sync_pair_request_body => '有裝置要求配對，是否允許它與本機同步？';
  @override
  String get sync_pair_request_title => '配對要求';
  @override
  String get sync_pair_success => '配對成功，已自動填入 token';
  @override
  String get sync_pair_unavailable => '對方裝置尚未就緒或版本過舊。請確認對方已更新並啟用同步後再試一次。';
  @override
  String get sync_pair_unknown_device => '未知裝置';
  @override
  String get sync_paired_peer_remove => '移除';
  @override
  String get sync_paired_peer_removed => '已移除配對設備';
  @override
  String get sync_paired_peer_unknown => '未知設備';
  @override
  String get sync_paired_peers_empty => '尚無已配對設備';
  @override
  String get sync_paired_peers_title => '已配對設備';
  @override
  String get sync_password => '密碼';
  @override
  String get sync_port => '連接埠';
  @override
  String get sync_private_key => '私密金鑰';
  @override
  String get sync_progress_audiobooks => '正在同步有聲書';
  @override
  String get sync_progress_books => '正在匯入書籍';
  @override
  String get sync_progress_dictionaries => '正在同步詞典';
  @override
  String get sync_progress_local_audio => '正在同步本機音訊';
  @override
  String get sync_progress_reading => '正在同步閱讀資料';
  @override
  String get sync_progress_videos => '同步影片';
  @override
  String get sync_role_locked_by_client => '已連接其他裝置。作為伺服器前請先移除連線。';
  @override
  String get sync_role_locked_by_server => '本機正以伺服器身分執行。連接其他裝置前請先關閉伺服器。';
  @override
  String get sync_section_actions => '同步操作';
  @override
  String get sync_section_backup => '本機備份';
  @override
  String get sync_section_content => '同步內容';
  @override
  String get sync_section_host_server => '本機作為同步伺服器';
  @override
  String get sync_section_host_server_footer => '讓其他裝置從本機同步，與上方所選的同步後端互不影響。';
  @override
  String get sync_section_method => '同步方式';
  @override
  String get sync_server_copy_token => '複製權杖';
  @override
  String get sync_server_enable => '啟用同步伺服器';
  @override
  String get sync_server_mode_active => '本機作為同步伺服器';
  @override
  String get sync_server_mode_clients_drive => '由已連接的客戶端發起同步，本機無需手動同步。';
  @override
  String get sync_server_port => '伺服器連接埠';
  @override
  String sync_server_port_in_use({required Object port}) =>
      '連接埠 ${port} 已被佔用，請改用其他連接埠。';
  @override
  String get sync_server_regenerate_token => '重新產生權杖';
  @override
  String get sync_server_running => '伺服器執行中';
  @override
  String get sync_server_stopped => '伺服器已停止';
  @override
  String get sync_server_tls_enable => '互聯加密（HTTPS/TLS）';
  @override
  String get sync_server_tls_repair_hint => '切換後已配對設備需重新配對';
  @override
  String get sync_server_token => '存取權杖';
  @override
  String get sync_show_remote_entries => '顯示遠端條目';
  @override
  String get sync_show_remote_entries_warning =>
      '把配對設備或雲端有、本機沒有的書籍和影片顯示為可下載/流播的佔位卡。';
  @override
  String get sync_sign_in => '登入';
  @override
  String get sync_sign_out => '登出';
  @override
  String get sync_signed_in => '已登入';
  @override
  String get sync_statistics => '同步統計';
  @override
  String get sync_summary => '雲端、區域網與本機備份';
  @override
  String get sync_test_connection => '測試連線';
  @override
  String get sync_use_tls => '使用 TLS';
  @override
  String get sync_username => '用戶名稱';
  @override
  String get sync_video_files => '上傳影片檔案';
  @override
  String get sync_video_files_warning => '影片檔案可能非常大。';
  @override
  String get sync_webdav_missing_fields => '缺少欄位';
  @override
  String sync_webdav_test_failed({required Object message}) =>
      '連線失敗：${message}';
  @override
  String get sync_webdav_url => '伺服器網址';
  @override
  String tag_added_to_book({required Object name}) => '標籤「${name}」已新增至書籍。';
  @override
  String tag_added_to_collection({required Object name}) =>
      '標簽「${name}」已添加到合集。';
  @override
  String tag_added_to_video({required Object name}) => '標籤「${name}」已加入影片。';
  @override
  String tag_already_on_book({required Object name}) => '標籤「${name}」已存在於此書。';
  @override
  String tag_already_on_collection({required Object name}) =>
      '標簽「${name}」已在此合集上。';
  @override
  String tag_book_count({required Object count}) => '${count} 本';
  @override
  String get tag_clear_filter => '清除篩選';
  @override
  String get tag_color => '顏色';
  @override
  String tag_delete_confirm({required Object name}) => '刪除標籤「${name}」？';
  @override
  String get tag_filter_title => '按標籤篩選';
  @override
  String get tag_label => '標籤';
  @override
  String get tag_manage => '管理標籤';
  @override
  String get tag_manage_title => '標籤管理';
  @override
  String get tag_name_duplicate => '同名標籤已存在。';
  @override
  String get tag_name_empty => '標籤名稱不能為空。';
  @override
  String get tag_name_hint => '標籤名稱';
  @override
  String get tag_new => '新增標籤';
  @override
  String get tag_no_books_for_filter => '沒有書籍符合所選標籤。';
  @override
  String get tag_no_tags_hint => '還沒有標籤。建立一個開始吧。';
  @override
  String get tag_seed_stars => '新增星級標籤';
  @override
  String get tag_seed_stars_added => '已新增星級標籤';
  @override
  String get tag_seed_stars_exists => '星級標籤已存在';
  @override
  String get tap_empty_hide_chrome => '懸浮控製欄';
  @override
  String get text_segmentation => '文字分詞';
  @override
  String get texthooker => '文本鉤子';
  @override
  String get texthooker_enabled => 'Texthooker（接收文字）';
  @override
  String get texthooker_enabled_hint => '連接 Textractor/mpv/agent 並查詢收到的文字';
  @override
  String get theme_black => '純黑';
  @override
  String get theme_code_copied => '主題代碼已複製到剪貼簿';
  @override
  String get theme_dark => '深暗';
  @override
  String get theme_ecru => '米黃';
  @override
  String get theme_eyecare => '護眼';
  @override
  String get theme_gray => '灰暗';
  @override
  String get theme_light => '白色';
  @override
  String get theme_seed_preview_hint =>
      '下方色板預覽由種子色實際產生的顏色。若想固定以某個顏色作為主要強調色，請開啟「主色」開關並明確指定。';
  @override
  String get theme_water => '水藍';
  @override
  String toc_section({required Object n}) => '章節列表（${n}）';
  @override
  String get top_progress_pos_center => '居中';
  @override
  String get top_progress_pos_left => '左上';
  @override
  String get top_progress_pos_right => '右上';
  @override
  String get top_progress_position => '進度位置';
  @override
  String get torrent_upload_intro_body =>
      '上傳（做種）預設關閉。開啟後會把下載內容回傳給網路，會佔用你的上傳帶寬。可隨時在「設定」裡修改。';
  @override
  String get torrent_upload_intro_confirm => '保存';
  @override
  String get torrent_upload_intro_enable => '啟用上傳 / 做種';
  @override
  String get torrent_upload_intro_keep_off => '保持關閉';
  @override
  String get torrent_upload_intro_title => '上傳 / 做種';
  @override
  String get reader_blur_images => '圖片模糊（防劇透）';
  @override
  String get reader_font_size => '字型大小';
  @override
  String get reader_font_vpal => 'VPAL 直排替代';
  @override
  String get reader_furigana_hide => '隱藏';
  @override
  String get reader_furigana_mode => '振假名';
  @override
  String get reader_furigana_mode_hint => '';
  @override
  String get reader_furigana_partial => '部分';
  @override
  String get reader_furigana_show => '顯示';
  @override
  String get reader_furigana_toggle => '切換';
  @override
  String get reader_horizontal => '橫排';
  @override
  String get reader_line_height => '行高';
  @override
  String get reader_merge_image_pages => '將插圖頁併入正文';
  @override
  String get reader_merge_image_pages_subtitle =>
      '把只含一張圖的獨立章節併入相鄰正文章連續顯示，不再單獨佔一頁';
  @override
  String get reader_no_books_added => '書架中尚未有任何書籍';
  @override
  String get reader_not_bound_cannot_rematch => '有聲書未繫結書籍，無法重跑比對';
  @override
  String get reader_orient_mixed => '混合';
  @override
  String get reader_orient_upright => '豎直';
  @override
  String get reader_page_columns_auto => '自動';
  @override
  String get reader_paginated => '翻頁';
  @override
  String get reader_paragraph_spacing => '段落間距';
  @override
  String get reader_reader_styles => '優先書籍樣式';
  @override
  String get reader_scroll => '捲動';
  @override
  String get reader_text_indentation => '段落縮排';
  @override
  String get reader_text_justify => '兩端對齊';
  @override
  String get reader_theme => '主題';
  @override
  String get reader_vert_kerning => '字偶間距（直排）';
  @override
  String get reader_vert_text_orient => '文字方向';
  @override
  String get reader_vertical => '直排';
  @override
  String get reader_view_mode_label => '翻頁 / 捲動';
  @override
  String get reader_vn => 'Visual Novel';
  @override
  String get reader_writing_direction => '排版方向';
  @override
  String get undo => '復原';
  @override
  String get unit_milliseconds => '毫秒';
  @override
  String get unit_pixels => '像素';
  @override
  String untitled_book({required Object id}) => '書籍 ${id}';
  @override
  String get untitled_chapter => '（無標題）';
  @override
  String get update_already_latest => '已是最新版本';
  @override
  String get update_auto_install => '自動安裝更新';
  @override
  String get update_available => '發現新版本';
  @override
  String update_cached_newer({required Object version}) =>
      '發現新版 ${version}（校驗中…）';
  @override
  String update_cached_up_to_date({required Object version}) =>
      '已是最新已知版本 ${version}（校驗中…）';
  @override
  String get update_cancel => '取消';
  @override
  String get update_cancelled => '已取消下載';
  @override
  String get update_cancelling => '正在取消…';
  @override
  String get update_channel_beta => '測試版';
  @override
  String get update_channel_debug => '除錯版';
  @override
  String get update_channel_stable => '穩定版';
  @override
  String get update_check_failed => '檢查更新失敗';
  @override
  String get update_checking_now => '正在檢查更新…';
  @override
  String get update_connecting => '正在連接更新來源…';
  @override
  String get update_debug_channel => '偵錯更新頻道';
  @override
  String get update_debug_channel_warning => '偵錯頻道的建置版本可能不穩定。使用風險自負。';
  @override
  String get update_download => '下載';
  @override
  String get update_download_failed => '下載失敗';
  @override
  String get update_download_restarted_from_zero => '已從頭重下';
  @override
  String update_download_resume_status({required Object status}) =>
      '續傳：${status}';
  @override
  String get update_download_resumed => '已續傳';
  @override
  String update_download_size({
    required Object received,
    required Object total,
  }) => '已下載：${received} / ${total}';
  @override
  String update_download_source({required Object source}) => '來源：${source}';
  @override
  String update_download_speed({required Object speed}) => '速度：${speed}';
  @override
  String get update_downloading => '正在下載更新…';
  @override
  String get update_hide => '隱藏';
  @override
  String update_install_current_executable({required Object path}) =>
      '目前執行的程式：${path}';
  @override
  String update_install_deletefile_failure({
    required Object path,
    required Object code,
  }) => '安裝程式無法取代 ${path}（代碼 ${code}）';
  @override
  String update_install_detected_location({
    required Object source,
    required Object path,
  }) => '偵測到的安裝位置（${source}）：${path}';
  @override
  String update_install_failure_summary({required Object summary}) =>
      '原因：${summary}';
  @override
  String get update_install_incomplete_message =>
      '安裝程式已啟動，但 Fushi 仍是舊版本。請查看下方的安裝記錄。';
  @override
  String get update_install_incomplete_title => '更新未完成';
  @override
  String update_install_installer_pid({required Object pid}) =>
      '安裝程式 PID：${pid}';
  @override
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi 未能啟動 ${version} 版本的安裝程式。請查看下方的記錄路徑。';
  @override
  String get update_install_launch_failed_title => '更新安裝程式未啟動';
  @override
  String update_install_launcher_pid({required Object pid}) =>
      '更新啟動器 PID：${pid}';
  @override
  String update_install_libmpv_holder({
    required Object pid,
    required Object path,
  }) => 'libmpv 持有程序：PID ${pid} - ${path}';
  @override
  String get update_install_log_not_observed => '啟動後檢查時未建立安裝記錄。';
  @override
  String get update_install_log_observed => '啟動後檢查時已建立安裝記錄。';
  @override
  String update_install_log_path({required Object path}) => '安裝記錄：${path}';
  @override
  String get update_install_manual_close_retry =>
      '請依上方 PID／路徑手動關閉 Fushi，然後重試更新或重新執行安裝程式。';
  @override
  String get update_install_parent_exit_not_observed =>
      '更新啟動器未確認 Fushi 在安裝程式啟動前已退出。';
  @override
  String get update_install_parent_exit_observed => '啟動安裝程式前已確認 Fushi 退出。';
  @override
  String update_install_path_mismatch({required Object warning}) =>
      '安裝目錄不一致：${warning}';
  @override
  String get update_install_permission_cancel => '取消';
  @override
  String get update_install_permission_message =>
      '請在系統設定中允許 Fushi 安裝應用程式，然後重試安裝。';
  @override
  String get update_install_permission_retry => '重試安裝';
  @override
  String get update_install_permission_title => '允許安裝更新';
  @override
  String get update_install_restart_windows_hint =>
      '如果上方程序已關閉但 libmpv-2.dll 仍被佔用，請重新啟動 Windows 後再安裝。';
  @override
  String update_install_running_process({
    required Object pid,
    required Object path,
  }) => '仍在執行的 Fushi 程序：PID ${pid} - ${path}';
  @override
  String update_install_success_message({required Object version}) =>
      'Fushi 已更新到 ${version} 版本。';
  @override
  String get update_install_success_title => '更新已安裝';
  @override
  String update_install_target_dir({required Object path}) => '安裝目標：${path}';
  @override
  String get update_installing => '正在安裝…';
  @override
  String get update_mac_install_incomplete_message =>
      '更新未能應用，Fushi 仍是舊版本。你可以重試更新，或手動下載最新版本。';
  @override
  String update_message({required Object version}) => '${version} 版本可用。';
  @override
  String update_network_failure({
    required Object host,
    required Object reason,
  }) => '無法連接 ${host}：${reason}';
  @override
  String get update_never_remind => '不再提醒';
  @override
  String get update_skip => '略過';
  @override
  String get url => '網址';
  @override
  String get video_audio_track => '音軌';
  @override
  String get video_audio_track_empty => '沒有可切換的音頻軌';
  @override
  String video_audio_track_switched({required Object label}) => '音軌：${label}';
  @override
  String get video_auto_play_next_cancel => '取消';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      '${seconds} 秒後播放下一集';
  @override
  String get video_black_flash_notice_action => '查看建議';
  @override
  String get video_black_flash_notice_dont_show_again => '不再提示';
  @override
  String get video_bottom_next_cue => '下一句字幕（無字幕則前進一段）';
  @override
  String get video_bottom_play_pause => '播放／暫停';
  @override
  String get video_bottom_prev_cue => '上一句字幕（無字幕則後退一段）';
  @override
  String get video_bottom_seek_back => '後退 10 秒';
  @override
  String get video_bottom_seek_back_label => '−10s';
  @override
  String get video_bottom_seek_forward => '前進 10 秒';
  @override
  String get video_bottom_seek_forward_label => '+10s';
  @override
  String video_chapter_n({required Object n}) => '章節 ${n}';
  @override
  String get video_chapters => '章節';
  @override
  String get video_chapters_empty => '無章節';
  @override
  String get video_clip_export => '片段匯出';
  @override
  String get video_clip_export_cancelled => '已取消片段導出';
  @override
  String video_clip_export_failed({required Object reason}) =>
      '片段匯出失敗：${reason}';
  @override
  String get video_clip_export_ffmpeg_failed => 'ffmpeg 執行失敗';
  @override
  String get video_clip_export_ffmpeg_unavailable => 'ffmpeg 不可用';
  @override
  String get video_clip_export_input_missing => '來源影片不可用';
  @override
  String get video_clip_export_invalid_range => '沒有有效的片段範圍';
  @override
  String get video_clip_export_output_missing => '沒有產生匯出檔案';
  @override
  String get video_clip_export_remote_download_required => '請先把遠端影片下載到本機，再匯出片段';
  @override
  String get video_clip_export_source_changed => '影片來源已切換，已取消片段匯出';
  @override
  String get video_clip_export_start => '開始片段匯出';
  @override
  String get video_clip_export_stop => '停止並匯出片段';
  @override
  String video_clip_exported({required Object path}) => '片段已匯出：${path}';
  @override
  String video_clip_exported_with_subtitles({required Object path}) =>
      '片段已導出（含字幕）：${path}';
  @override
  String get video_clip_exporting => '正在匯出片段…';
  @override
  String get video_continue_watching => 'Continue Watching';
  @override
  String get video_control_audio_track => '音軌';
  @override
  String get video_control_customize_hint => '為每個按鈕選擇在播放器上的位置，或將其移出。';
  @override
  String get video_control_episode_list => '劇集清單';
  @override
  String get video_control_favorite_sentence => '收藏目前句子';
  @override
  String get video_control_fullscreen => '全螢幕';
  @override
  String get video_control_next_cue => '下一句字幕';
  @override
  String get video_control_palette_hint => '把按鈕拖入某個位置即可加入；同一按鈕可放在多個位置。';
  @override
  String get video_control_palette_title => '全部按鈕';
  @override
  String get video_control_play_pause => '播放／暫停';
  @override
  String get video_control_previous_cue => '上一句字幕';
  @override
  String get video_control_reject_required => '必選控制必須保留在播放器上。';
  @override
  String get video_control_reject_unavailable => '此控制不能放在這裡。';
  @override
  String get video_control_reject_volume_bottom => '音量只能放在底欄。';
  @override
  String get video_control_remove_from_slot => '移出';
  @override
  String get video_control_reset_layout => '還原預設播放器按鈕版面';
  @override
  String get video_control_screenshot => '截圖';
  @override
  String get video_control_seek_backward => '後退 10 秒';
  @override
  String get video_control_seek_forward => '前進 10 秒';
  @override
  String get video_control_settings => '播放器設定';
  @override
  String get video_control_slot_bottom_center => '底欄（中間）';
  @override
  String get video_control_slot_bottom_left => '底欄（左）';
  @override
  String get video_control_slot_bottom_right => '底欄（右）';
  @override
  String get video_control_slot_drop_hint => '拖動按鈕到這裡';
  @override
  String get video_control_slot_hidden => '已移出播放器';
  @override
  String get video_control_slot_screen_left => '螢幕左側';
  @override
  String get video_control_slot_screen_right => '螢幕右側';
  @override
  String get video_control_slot_top_center => '頂欄（中間）';
  @override
  String get video_control_slot_top_left => '頂欄（左）';
  @override
  String get video_control_slot_top_right => '頂欄（右）';
  @override
  String get video_control_speed => '倍速';
  @override
  String get video_control_subtitle_list => '字幕清單';
  @override
  String get video_control_subtitle_track => '字幕軌';
  @override
  String get video_control_title => '影片名稱';
  @override
  String get video_control_volume => '音量';
  @override
  String get video_danmaku_manual_bind_empty => '這一集還沒有彈幕';
  @override
  String get video_danmaku_manual_bind_failed => '彈幕加載失敗，請稍後重試';
  @override
  String get video_danmaku_manual_bind_server_error => '彈幕伺服器拒絕了請求，請稍後重試';
  @override
  String get video_danmaku_manual_match_title => '匹配彈幕';
  @override
  String get video_danmaku_manual_network_error => '網路錯誤，請檢查連接後重試。';
  @override
  String get video_danmaku_manual_no_result => '未找到匹配的番劇。';
  @override
  String get video_danmaku_manual_search_action => '搜索';
  @override
  String get video_danmaku_manual_search_hint => '番劇名';
  @override
  String get video_danmaku_manual_search_prompt => '按番劇名搜索彈彈play，再選擇分集。';
  @override
  String get video_danmaku_manual_server_error => '搜索失敗，請稍後重試。';
  @override
  String video_delete_confirm({required Object title}) =>
      '刪除『${title}』？此操作無法復原。';
  @override
  String get video_delete_title => '刪除影片';
  @override
  String get video_double_tap_next_cue => '下一句';
  @override
  String get video_double_tap_prev_cue => '上一句';
  @override
  String get video_drop_audio_unsupported => '請把字幕檔案拖到目前的影片上。音訊檔案不能在此關聯。';
  @override
  String get video_drop_subtitle_only => '請把字幕檔案拖到目前的影片上。';
  @override
  String get video_episode_list => '選集';
  @override
  String get video_episode_list_empty => '無劇集';
  @override
  String video_favorite_count({required Object count}) => '收藏 ${count} 句';
  @override
  String get video_file_error_content => '無法載入影片檔案。請確認該檔案存在並位於應用程式可存取的目錄中。';
  @override
  String get video_file_not_found => '找不到影片檔案';
  @override
  String get video_immersive_locked => '已進入沉浸模式';
  @override
  String get video_immersive_mode_full => '全部功能';
  @override
  String get video_immersive_mode_lookup_only => '僅查詞';
  @override
  String get video_immersive_mode_seek_lookup => '快捷鍵＋查詞';
  @override
  String get video_immersive_mode_unlock_only => '僅解鎖';
  @override
  String get video_immersive_unlock => '解鎖';
  @override
  String get video_immersive_unlocked => '已退出沉浸模式';
  @override
  String get video_import_action => '匯入影片';
  @override
  String get video_import_confirm => '匯入';
  @override
  String get video_import_pick_subtitle => '選擇字幕';
  @override
  String get video_import_pick_video => '選擇影片檔案';
  @override
  String get video_import_stream_advanced => '高級（防盜鏈請求頭）';
  @override
  String get video_import_stream_referer => 'Referer（可選）';
  @override
  String get video_import_stream_subtitle_url_field => '外掛字幕 URL（可選）';
  @override
  String get video_import_stream_url_field => '影片流 URL';
  @override
  String get video_import_stream_url_hint =>
      '播放 HLS/m3u8/mp4 直鏈（可選外掛字幕 URL 與防盜鏈 Referer/User-Agent）';
  @override
  String get video_import_stream_user_agent => 'User-Agent（可選）';
  @override
  String get video_import_subtitle_optional => '可選的外掛字幕（播放時可隨時在內嵌／外掛字幕間切換）';
  @override
  String get video_import_title => '匯入影片';
  @override
  String get video_jimaku_anime_match => '番劇匹配';
  @override
  String get video_jimaku_api_key => 'Jimaku API key';
  @override
  String get video_jimaku_api_key_hint => '在 jimaku.cc/account 免費取得 API key';
  @override
  String get video_jimaku_api_key_set => 'API key 已設定';
  @override
  String video_jimaku_batch_done({
    required Object done,
    required Object total,
  }) => '字幕已獲取：${done}/${total}';
  @override
  String get video_jimaku_batch_download => '下載全部';
  @override
  String get video_jimaku_batch_title => '為合集獲取字幕';
  @override
  String get video_jimaku_download_failed => '下載失敗';
  @override
  String get video_jimaku_downloaded => '字幕已下載並套用';
  @override
  String get video_jimaku_episode => '集數（可選）';
  @override
  String get video_jimaku_episode_hint => '留空列出全部';
  @override
  String get video_jimaku_fetch => '取得字幕（Jimaku）';
  @override
  String get video_jimaku_filter => '篩選結果（如 WEBRip、BD）';
  @override
  String get video_jimaku_find_sources => '查找字幕';
  @override
  String get video_jimaku_language => '語言';
  @override
  String get video_jimaku_language_all => '全部';
  @override
  String get video_jimaku_no_key => '請先填寫 Jimaku API key';
  @override
  String get video_jimaku_no_results => '找不到字幕';
  @override
  String get video_jimaku_query => '番劇名稱';
  @override
  String get video_jimaku_search => '搜尋';
  @override
  String get video_jimaku_series => '系列';
  @override
  String get video_jimaku_show_all_episodes => '顯示全部集';
  @override
  String get video_jimaku_source => '字幕來源';
  @override
  String get video_jimaku_source_hint => '選擇一個 Jimaku 條目；合集字幕會按集號自動匹配。';
  @override
  String video_last_watched({required Object date}) => '上次觀看 ${date}';
  @override
  String get video_library_empty => '尚未匯入任何影片';
  @override
  String get video_load_failed_back => '返回';
  @override
  String get video_load_failed_generic => '無法加載該影片。';
  @override
  String get video_load_failed_network => '網路錯誤，請檢查網路連接後重試。';
  @override
  String get video_load_failed_not_found => '在媒體庫中找不到該條目。';
  @override
  String get video_load_failed_retry => '重試';
  @override
  String get video_load_failed_timeout => '連接超時，網路較慢或影片源暫時限流，請稍後重試。';
  @override
  String get video_load_failed_title => '影片加載失敗';
  @override
  String get video_load_failed_unavailable =>
      '無法獲取影片流，影片可能不可用、受地區或年齡限製，或來源已變更。';
  @override
  String get video_loading_buffering => '正在緩沖…';
  @override
  String get video_loading_connecting => '正在連接影片流…';
  @override
  String get video_loading_preparing => '正在準備…';
  @override
  String get video_loading_subtitle => '正在下載字幕…';
  @override
  String get video_menu_fullscreen => '切換全螢幕';
  @override
  String get video_menu_lock => '沉浸／鎖定模式';
  @override
  String get video_menu_play_pause => '播放／暫停';
  @override
  String get video_menu_subtitle_track => '字幕軌';
  @override
  String get video_mining_image_mode => '影片卡片圖片';
  @override
  String get video_mining_image_mode_current_frame => '製卡時截圖';
  @override
  String get video_mining_image_mode_gif => '動圖 GIF（字幕片段）';
  @override
  String get video_mining_image_mode_hint =>
      '影片卡片封面用字幕區間動圖，還是某一幀靜態截圖（取哪一幀也在這裡選）';
  @override
  String get video_mining_image_mode_subtitle_start => '字幕開頭截圖';
  @override
  String get video_next_episode => '下一集';
  @override
  String video_playlist_episodes({required Object count}) => '${count} 集';
  @override
  String get video_prev_episode => '上一集';
  @override
  String get video_quality => '畫質';
  @override
  String get video_quality_auto => '自動';
  @override
  String get video_quality_empty => '本影片沒有可切換的畫質';
  @override
  String get video_quality_enhancement_hint =>
      '開啟後用 mpv 內建高畫質縮放讓畫面更清晰，動畫、真人影視/電視劇都適用。想用 Anime4K 等著色器進一步增強，請在播放影片時的「畫質增強」裡選擇檔位。';
  @override
  String get video_quality_load_failed => '無法獲取該影片的畫質檔。';
  @override
  String get video_quality_loading => '正在獲取可選畫質…';
  @override
  String video_quality_switched({required Object label}) => '畫質：${label}';
  @override
  String get video_rename => '重新命名';
  @override
  String get video_rename_hint => '標題';
  @override
  String get video_render_skia_fix_confirm_action => '重啟';
  @override
  String get video_render_skia_fix_confirm_body => '將關閉 Impeller 渲染器並重啟應用使其生效。';
  @override
  String get video_render_skia_fix_confirm_title => '切換到 Skia 並重啟？';
  @override
  String get video_render_skia_fix_hint => '有聲音但畫面全黑時用。關閉 Impeller，重啟後生效。';
  @override
  String get video_render_skia_fix_title => '畫面全黑？切換渲染器（Skia）';
  @override
  String video_resource_missing_message({required Object title}) =>
      '找不到『${title}』的影片檔案。資源位置可能已變化，或所在磁碟未連接。你可以重新導入，或刪除此條目。';
  @override
  String get video_resource_missing_reimport => '重新導入';
  @override
  String get video_resource_missing_title => '影片無法訪問';
  @override
  String get video_resource_relink_success => '已重新連結影片檔案';
  @override
  String get video_scrape_episodes => '話數';
  @override
  String get video_scrape_info => '條目資訊';
  @override
  String video_scrape_rating_votes({required Object count}) => '${count} 人評分';
  @override
  String get video_screenshot => '截圖';
  @override
  String video_screenshot_failed_reason({required Object reason}) =>
      '截圖失敗：${reason}';
  @override
  String video_screenshot_ready({required Object file}) => '截圖已準備好：${file}';
  @override
  String video_screenshot_saved_to({required Object path}) => '截圖已儲存：${path}';
  @override
  String get video_secondary_subtitle_hint => '由播放器渲染（不可查詞）';
  @override
  String get video_secondary_subtitle_sources => '副字幕';
  @override
  String get video_setting_auto_play_next => '自動連播下一集';
  @override
  String get video_setting_auto_scrape => '自動刮削條目資料';
  @override
  String get video_setting_av_delay => '字幕調軸';
  @override
  String get video_setting_av_delay_hint =>
      '正數 = 字幕延後（字幕整體往後撥）；負數 = 字幕提前。可拖滑桿、按 ± 或直接輸入數值。';
  @override
  String get video_setting_danmaku_area => '顯示區域';
  @override
  String get video_setting_danmaku_area_hint => '彈幕可佔用的畫面高度比例（從頂部起）。';
  @override
  String get video_setting_danmaku_block_rules => '屏蔽詞 / 正則';
  @override
  String get video_setting_danmaku_block_rules_hint =>
      '每行一條規則。用斜槓包裹（如 /pattern/）視為正則，否則按忽略大小寫的文本子串匹配。';
  @override
  String get video_setting_danmaku_block_rules_placeholder =>
      '例如 劇透 或 /pattern/';
  @override
  String get video_setting_danmaku_enabled => '顯示彈幕';
  @override
  String get video_setting_danmaku_enabled_hint =>
      '在影片上算繪本機或線上配對的彈幕，且不阻擋播放器操作。';
  @override
  String get video_setting_danmaku_font_scale => '字號';
  @override
  String get video_setting_danmaku_font_scale_hint => '縮放彈幕文字大小。';
  @override
  String get video_setting_danmaku_manual_match => '手動匹配';
  @override
  String get video_setting_danmaku_manual_match_hint =>
      '自動匹配失敗或匹配錯集時，按標題搜索彈彈play 並手動選集。';
  @override
  String get video_setting_danmaku_max_active => '同時顯示上限';
  @override
  String get video_setting_danmaku_max_active_hint => '限制每幀算繪的彈幕數量，避免大檔案拖慢播放。';
  @override
  String get video_setting_danmaku_online => '線上配對 Dandanplay';
  @override
  String get video_setting_danmaku_online_hint =>
      '沒有可用的本機 sidecar 時，以 Dandanplay 配對目前影片並抓取相關彈幕。';
  @override
  String get video_setting_danmaku_opacity => '不透明度';
  @override
  String get video_setting_danmaku_opacity_hint => '彈幕整體透明度。';
  @override
  String get video_setting_danmaku_server_url => '彈幕伺服器網址';
  @override
  String get video_setting_danmaku_speed => '速度';
  @override
  String get video_setting_danmaku_speed_hint => '越大越快，滾動彈幕更快劃過螢幕。';
  @override
  String get video_setting_double_tap => '雙按快進';
  @override
  String get video_setting_double_tap_hint => '雙按影片左／右側即可快退、快進';
  @override
  String get video_setting_double_tap_off => '關';
  @override
  String get video_setting_double_tap_subtitle => '字幕';
  @override
  String get video_setting_immersive_mode => '沉浸模式';
  @override
  String get video_setting_immersive_mode_hint => '控制按下側邊鎖後仍可使用哪些操作';
  @override
  String get video_setting_lock_window_aspect => '鎖定視窗為影片比例';
  @override
  String get video_setting_long_press_speed => '長按倍速';
  @override
  String get video_setting_long_press_speed_hint => '按住畫面時暫時使用此倍速。';
  @override
  String get video_setting_mpv_aspect => '畫面比例';
  @override
  String get video_setting_mpv_aspect_auto => '原始';
  @override
  String get video_setting_mpv_brightness => '亮度';
  @override
  String get video_setting_mpv_channels => '聲道';
  @override
  String get video_setting_mpv_channels_auto => '自動';
  @override
  String get video_setting_mpv_channels_mono => '單聲道';
  @override
  String get video_setting_mpv_channels_stereo => '立體聲（下混）';
  @override
  String get video_setting_mpv_contrast => '對比度';
  @override
  String get video_setting_mpv_correct_downscale => '線性降採樣';
  @override
  String get video_setting_mpv_deband => '去色帶';
  @override
  String get video_setting_mpv_deinterlace => '去交錯';
  @override
  String get video_setting_mpv_dither => '抖動';
  @override
  String get video_setting_mpv_gamma => 'Gamma';
  @override
  String get video_setting_mpv_group_advanced => '進階';
  @override
  String get video_setting_mpv_group_audio => '音訊';
  @override
  String get video_setting_mpv_group_color => '色彩';
  @override
  String get video_setting_mpv_group_decode => '解碼';
  @override
  String get video_setting_mpv_group_geometry => '畫面';
  @override
  String get video_setting_mpv_group_playback => '播放';
  @override
  String get video_setting_mpv_group_quality => '畫質';
  @override
  String get video_setting_mpv_hue => '色相';
  @override
  String get video_setting_mpv_hwdec => '硬件解碼';
  @override
  String get video_setting_mpv_hwdec_auto => '自動（安全）';
  @override
  String get video_setting_mpv_hwdec_copy => '自動（複製）';
  @override
  String get video_setting_mpv_hwdec_off => '關閉';
  @override
  String get video_setting_mpv_interpolation => '動態插幀';
  @override
  String get video_setting_mpv_loop => '單檔循環';
  @override
  String get video_setting_mpv_normalize => '下混響度正規化';
  @override
  String get video_setting_mpv_panscan => '平移裁切（去黑邊）';
  @override
  String get video_setting_mpv_pitch => '變速時保持音高';
  @override
  String get video_setting_mpv_raw => '額外 mpv 選項（每行一項，key=value）';
  @override
  String get video_setting_mpv_raw_hint =>
      '僅桌面端生效；執行時無法套用的項目（如 vo、profile）會被忽略。SVP/RIFE 需要外部工具，並不支援。';
  @override
  String get video_setting_mpv_reset => '全部還原預設';
  @override
  String get video_setting_mpv_rotate => '旋轉';
  @override
  String get video_setting_mpv_saturation => '飽和度';
  @override
  String get video_setting_mpv_sigmoid => 'S 形上採樣';
  @override
  String get video_setting_mpv_sigmoid_hint =>
      'S 形曲線上採樣可減少振鈴，但會增加顯卡負擔。為性能預設關閉；想要更銳利的放大畫質可開啟。';
  @override
  String get video_setting_mpv_zoom => '縮放';
  @override
  String get video_setting_picture_fit => '畫面縮放';
  @override
  String get video_setting_picture_fit_contain => '適應';
  @override
  String get video_setting_picture_fit_cover => '填滿';
  @override
  String get video_setting_picture_fit_fill => '拉伸填滿';
  @override
  String get video_setting_picture_fit_hint => '畫面如何填滿播放區域';
  @override
  String get video_setting_qb_category => 'qBittorrent 分類';
  @override
  String get video_setting_qb_category_hint => 'Fushi 推送的下載會打上此分類，完成監聽只關注該分類。';
  @override
  String get video_setting_qb_password => 'WebUI 密碼';
  @override
  String get video_setting_qb_url => 'qBittorrent WebUI 地址';
  @override
  String get video_setting_qb_url_hint =>
      '例如 http://127.0.0.1:8080，留空表示不啟用番劇下載。';
  @override
  String get video_setting_qb_username => 'WebUI 用戶名';
  @override
  String get video_setting_secondary_subtitle_obscure => '副字幕遮蔽';
  @override
  String get video_setting_secondary_subtitle_obscure_hint => '模糊或隱藏副字幕（翻譯參考軌）';
  @override
  String get video_setting_seek_seconds => '快進／快退步長（秒）';
  @override
  String get video_setting_speed => '播放速度';
  @override
  String get video_setting_speed_step => '倍速步進';
  @override
  String get video_setting_subtitle_appearance => '字幕外觀';
  @override
  String get video_setting_subtitle_bg_color => '背景顏色';
  @override
  String get video_setting_subtitle_bg_opacity => '背景不透明度';
  @override
  String get video_setting_subtitle_font_size => '字型大小';
  @override
  String get video_setting_subtitle_font_weight => '字型粗幼';
  @override
  String get video_setting_subtitle_no_background => '無背景';
  @override
  String get video_setting_subtitle_no_background_hint => '讓字幕背景透明，不顯示底色。';
  @override
  String get video_setting_subtitle_obscure => '字幕遮蔽';
  @override
  String get video_setting_subtitle_obscure_blur => '模糊';
  @override
  String get video_setting_subtitle_obscure_hide => '隱藏';
  @override
  String get video_setting_subtitle_obscure_hint =>
      '選擇聽力練習時如何遮蔽字幕：關閉、模糊（懸停或點擊顯形）或隱藏。';
  @override
  String get video_setting_subtitle_obscure_none => '關閉';
  @override
  String get video_setting_subtitle_position => '垂直位置';
  @override
  String get video_setting_subtitle_reset => '還原預設';
  @override
  String get video_setting_subtitle_respect_ass => '尊重字幕自帶樣式';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      '有 .ass 字幕自帶的字體、顏色、描邊時優先採用；關閉則一律使用你的外觀設定。';
  @override
  String get video_setting_subtitle_shadow => '陰影';
  @override
  String get video_setting_subtitle_sync_input => '偏移 (ms)';
  @override
  String get video_setting_subtitle_text_color => '文字顏色';
  @override
  String get video_setting_theme => '主題';
  @override
  String get video_setting_torrent_active_downloads => '最大活躍下載數';
  @override
  String get video_setting_torrent_active_seeds => '最大活躍做種數';
  @override
  String get video_setting_torrent_anonymous => '匿名模式';
  @override
  String get video_setting_torrent_antileech => '啟用反吸血';
  @override
  String get video_setting_torrent_backend_qb => '外接 qBittorrent';
  @override
  String get video_setting_torrent_ban_progress_cheat => '封禁進度作弊';
  @override
  String get video_setting_torrent_ban_relative_cheat => '封禁相對進度作弊';
  @override
  String get video_setting_torrent_ban_time => '封禁時長（分鐘）';
  @override
  String get video_setting_torrent_ban_time_hint => '0 = 永久';
  @override
  String get video_setting_torrent_connections_hint => '0 = 引擎預設';
  @override
  String get video_setting_torrent_dht => 'DHT';
  @override
  String get video_setting_torrent_download_limit => '下載限速 (KB/s)';
  @override
  String get video_setting_torrent_encryption_disabled => '禁用';
  @override
  String get video_setting_torrent_encryption_forced => '強製';
  @override
  String get video_setting_torrent_encryption_prefer => '首選';
  @override
  String get video_setting_torrent_limit_hint => '0 = 不限';
  @override
  String get video_setting_torrent_listen_port => '監聽端口';
  @override
  String get video_setting_torrent_listen_port_hint => '0 = 預設（6881）';
  @override
  String get video_setting_torrent_lsd => '本地節點發現 (LSD)';
  @override
  String get video_setting_torrent_max_connections => '最大連接數';
  @override
  String get video_setting_torrent_max_ip_ports => '同 IP 最大端口數';
  @override
  String get video_setting_torrent_memory_hint => '限製引擎記憶體佔用。0 = 自動（按設備記憶體推導）。';
  @override
  String get video_setting_torrent_memory_limit => '記憶體佔用上限（MB）';
  @override
  String get video_setting_torrent_natpmp => 'NAT-PMP 端口映射';
  @override
  String get video_setting_torrent_section_antileech => '反吸血';
  @override
  String get video_setting_torrent_section_session => '會話設定';
  @override
  String get video_setting_torrent_seed_ratio_hint =>
      '上傳/下載比值達到此值後停止上傳。0 = 不限。';
  @override
  String get video_setting_torrent_seed_ratio_limit => '做種分享率上限';
  @override
  String get video_setting_torrent_seed_time_hint => '做種超過此時長後停止上傳。0 = 不限。';
  @override
  String get video_setting_torrent_seed_time_limit => '做種時長上限（分鐘）';
  @override
  String get video_setting_torrent_upload_enabled => '啟用上傳 / 做種';
  @override
  String get video_setting_torrent_upload_enabled_hint => '預設關閉。下載完成後向網路回傳做種。';
  @override
  String get video_setting_torrent_upload_limit => '上傳限速 (KB/s)';
  @override
  String get video_setting_torrent_upload_slots => '最大上傳槽位';
  @override
  String get video_setting_torrent_upnp => 'UPnP 端口映射';
  @override
  String get video_setting_torrent_zero_default => '0 = 預設';
  @override
  String get video_setting_torrent_zero_off => '0 = 關閉';
  @override
  String get video_settings_cat_audio => '音頻';
  @override
  String get video_settings_cat_controls => '控制按鈕';
  @override
  String get video_settings_cat_danmaku => '彈幕';
  @override
  String get video_settings_cat_mpv => 'mpv';
  @override
  String get video_settings_cat_playback => '播放';
  @override
  String get video_settings_cat_shaders => '畫質增強';
  @override
  String get video_settings_cat_subtitle => '字幕';
  @override
  String get video_settings_title => '視頻設置';
  @override
  String get video_shader_anime4k_hint => '選擇一個預設下載。下載完成後在清單中勾選即可啟用。僅桌面端生效。';
  @override
  String get video_shader_anime4k_title => 'Anime4K 推薦着色器';
  @override
  String get video_shader_download_anime4k => '下載 Anime4K 推薦着色器';
  @override
  String video_shader_download_done({required Object count}) =>
      '已下載 ${count} 個着色器';
  @override
  String get video_shader_download_failed => '着色器下載失敗';
  @override
  String video_shader_download_partial({
    required Object ok,
    required Object failed,
  }) => '已下載 ${ok} 個，${failed} 個失敗';
  @override
  String get video_shader_download_url => '貼上連結下載';
  @override
  String get video_shader_downloaded_label => '已下載';
  @override
  String get video_shader_downloading => '正在下載着色器…';
  @override
  String get video_shader_first_use_body =>
      '想讓動畫畫面更清晰，可以進入“畫質增強”並點擊“下載 Anime4K 推薦着色器”。下載後在已安裝列表裏勾選即可啓用。';
  @override
  String get video_shader_first_use_download => '一鍵下載並啟用';
  @override
  String get video_shader_first_use_title => '試試 Anime4K 畫質增強';
  @override
  String get video_shader_import => '匯入着色器（.glsl）';
  @override
  String video_shader_import_done({required Object count}) =>
      '已匯入 ${count} 個着色器';
  @override
  String get video_shader_import_from_mpv => '從本機 mpv 匯入';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自動搜索本機 mpv；未找到時可手動選擇 mpv 目錄。';
  @override
  String get video_shader_mobile_perf_hint =>
      '在手機上，着色器只在標準 GPU 算繪路徑下生效，實際效果因機型 GPU 而異；高檔位可能掉幀或發熱。建議先試低／中檔，並在本機確認效果。';
  @override
  String video_shader_mpv_dir_current({required Object path}) =>
      'mpv 資料夾：${path}';
  @override
  String get video_shader_mpv_dir_empty => '此資料夾找不到着色器';
  @override
  String get video_shader_mpv_not_found => '找不到本機 mpv 着色器';
  @override
  String get video_shader_mpv_pick_title => '從 mpv 匯入着色器';
  @override
  String get video_shader_pick_mpv_dir => 'Specify mpv folder';
  @override
  String get video_shader_preset_mode_a_fast => '適合多數 1080p 動畫。GPU 負載較低。';
  @override
  String get video_shader_preset_mode_a_hq => '1080p 動畫最高畫質。需要較強的 GPU。';
  @override
  String get video_shader_preset_mode_b_fast => '適合有重新取樣偽影的 720p 舊番。';
  @override
  String get video_shader_preset_mode_b_hq => '720p 舊番高畫質（重新取樣偽影），需要較強的 GPU。';
  @override
  String get video_shader_preset_mode_c_fast => '適合有壓縮塗抹的 480p SD 老番。';
  @override
  String get video_shader_preset_mode_c_hq =>
      '480p SD 老番高畫質（壓縮塗抹，含去噪），需要較強的 GPU。';
  @override
  String get video_shader_quality_tier => '畫質增強';
  @override
  String get video_shader_section_advanced => '進階（手動着色器）';
  @override
  String get video_shader_section_installed => '已安裝的着色器';
  @override
  String get video_shader_showing_original => '已關閉着色器（原畫）';
  @override
  String get video_shader_showing_shaded => '已開啟着色器';
  @override
  String get video_shader_tier_custom_hint => '自訂着色器組合。點按上方檔位可切回預設。';
  @override
  String get video_shader_tier_high => '高';
  @override
  String get video_shader_tier_high_hint =>
      'Anime4K HQ。更銳利，對動畫效果最佳，真人內容也可用（提升較小）。需要中高端 GPU（N卡 RTX 4060 / RTX 3070，A卡 RX 6700 XT / RX 7700 XT）。';
  @override
  String get video_shader_tier_low => '低';
  @override
  String get video_shader_tier_low_hint =>
      'mpv 內建銳化（ewa_lanczossharp）。對任何影片都有效（動畫與真人皆可），無需下載、GPU 負載最低。集顯或舊顯卡（N卡 GTX 1050、A卡 RX 560、Intel 核顯）選這檔。';
  @override
  String get video_shader_tier_medium => '中';
  @override
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast。對動畫效果最佳，真人電影/電視劇也能用（提升較小）。中端 GPU 可跑（N卡 GTX 1660 / RTX 3050，A卡 RX 6600）。';
  @override
  String get video_shader_tier_off => '無';
  @override
  String get video_shader_tier_off_hint => '不增強，按原畫播放。';
  @override
  String get video_shader_tier_ultra => '極高';
  @override
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A（VL + 額外去模糊/降噪修復）。影片渲染器實際能跑的最強重建——在「高」檔 VL 鏈之上再疊一個修復 pass，對壓制源更狠；真人內容也可用（提升較小）。推薦較強 GPU（N卡 RTX 5090，A卡 RX 7900 XTX），顯卡較弱請往低檔選。';
  @override
  String get video_shader_url_hint => '貼上着色器 .glsl 連結（如 GitHub）';
  @override
  String get video_shaders_empty => '尚未匯入任何着色器';
  @override
  String get video_stat_by_video => '按影片';
  @override
  String get video_stat_completed => '已完成';
  @override
  String get video_stat_no_data => '暫無影片統計資料';
  @override
  String get video_statistics => '影片統計';
  @override
  String get video_subtitle_attach_playlist_hint => '請進入播放頁，逐集掛載字幕';
  @override
  String video_subtitle_attached_to_video({
    required Object title,
    required Object count,
  }) => '已為《${title}》掛上字幕（${count} 句）';
  @override
  String get video_subtitle_auto_align => '自動對軸';
  @override
  String video_subtitle_auto_align_done({required Object ms}) =>
      '已自動對軸 ${ms} ms';
  @override
  String get video_subtitle_auto_align_low_confidence => '無法可靠自動對軸（未找到明顯的語音匹配）';
  @override
  String get video_subtitle_auto_align_running => '正在自動對軸…';
  @override
  String get video_subtitle_color_note => '影片字幕顏色於影片播放器內設定。';
  @override
  String video_subtitle_delay_osd({required Object ms}) => '字幕同步：${ms} ms';
  @override
  String get video_subtitle_filter_all => '全部';
  @override
  String get video_subtitle_filter_favorites => '收藏';
  @override
  String get video_subtitle_filter_favorites_empty => '暫無收藏的句子';
  @override
  String get video_subtitle_graphic_hint => '圖形字幕 · 畫面顯示 · 不可查詞';
  @override
  String video_subtitle_graphic_shown({required Object label}) =>
      '已顯示圖形字幕（畫面顯示，不可查詞）：${label}';
  @override
  String get video_subtitle_import_failed => '匯入字幕失敗';
  @override
  String get video_subtitle_import_file => '匯入字幕檔案…';
  @override
  String get video_subtitle_import_unsupported => '不支援的字幕格式';
  @override
  String get video_subtitle_list => '字幕列表';
  @override
  String get video_subtitle_list_auto_scroll => '自動捲動';
  @override
  String get video_subtitle_list_empty => '未載入字幕';
  @override
  String get video_subtitle_list_font_larger => '放大字型';
  @override
  String get video_subtitle_list_font_smaller => '縮小字型';
  @override
  String get video_subtitle_list_jump => '跳到此句';
  @override
  String get video_subtitle_list_loading => '正在載入字幕…';
  @override
  String video_subtitle_load_failed({required Object label}) =>
      '無法載入此字幕（可能是圖形或不支援的字幕軌）：${label}';
  @override
  String get video_subtitle_off => '關閉字幕';
  @override
  String get video_subtitle_remote_host => '配對裝置字幕';
  @override
  String video_subtitle_switched({required Object label}) => '已切換字幕：${label}';
  @override
  String get video_subtitle_waveform_cue_list => '字幕列表';
  @override
  String get video_subtitle_waveform_jump_playhead => '跳到播放頭';
  @override
  String get video_subtitle_waveform_legend_cue => '字幕邊界';
  @override
  String get video_subtitle_waveform_legend_energy => '響度';
  @override
  String get video_subtitle_waveform_legend_playhead => '播放頭';
  @override
  String get video_subtitle_waveform_open => '波形對軸';
  @override
  String get video_subtitle_waveform_open_hint => '點擊放大查看並對軸';
  @override
  String get video_subtitle_waveform_scroll_hint => '橫向拖動查看時間軸，用下方控件對齊字幕';
  @override
  String get video_subtitle_waveform_unavailable => '本設備無法生成波形';
  @override
  String get video_subtitle_waveform_zoom_in => '放大';
  @override
  String get video_subtitle_waveform_zoom_out => '縮小';
  @override
  String get video_subtitle_youtube_empty => '該字幕軌沒有文字';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang}（翻譯）';
  @override
  String video_watched_up_to({required Object time}) => '已看至 ${time}';
  @override
  String get video_windows_black_flash_notice_body =>
      '在 Windows 上，當顯卡佔用過高時影片畫面可能出現黑屏閃爍。可嘗試關閉上方的畫質增強、S 形上採樣和去色帶，或把硬件解碼切到「復製」以降低顯卡負載。';
  @override
  String get video_windows_black_flash_notice_title => 'Windows 上黑屏閃爍？';
  @override
  String get view_illustrations => '插圖';
  @override
  String get volume_button_page_turning => '音量鍵翻頁';
  @override
  String get volume_key_sentence_nav => '音量鍵句子導覽';
  @override
  String get wheel_page_turn_interval => '滑鼠滾輪翻頁間隔';
  @override
  String get word_favorite_added => '已收藏該詞';
  @override
  String get word_favorite_removed => '已取消收藏該詞';
  @override
  String get yomitan_api_key => 'Yomitan API 金鑰（可選）';
  @override
  String get yomitan_api_server => 'Yomitan API 伺服器';
  @override
  String get yomitan_api_server_hint =>
      '讓 yomitan-api 客戶端查詢 Fushi 詞典（連接埠 19633）';
  @override
  String get yomitan_api_server_started => 'Yomitan API 伺服器已開啟';
  @override
  String get yomitan_port_kill_action => '結束進程並重試';
  @override
  String get yomitan_port_kill_confirm => '結束進程';
  @override
  String yomitan_port_kill_confirm_message({required Object process}) =>
      '該端口目前被以下進程佔用：${process}';
  @override
  String yomitan_port_kill_confirm_title({required Object port}) =>
      '結束佔用端口 ${port} 的進程？';
  @override
  String yomitan_port_kill_failed({required Object process}) =>
      '無法結束 ${process}，請手動結束該進程後重試。';
  @override
  String yomitan_port_kill_protected({required Object process}) =>
      '${process} 是關鍵系統進程，Fushi 不會結束它；請改用其他端口。';
  @override
  String get yomitan_port_kill_self_instance => '該進程是本應用的另一個正在運行的實例。';
  @override
  String get game_track_bgm => 'BGM / 已排除';
  @override
  String get game_line_audio_no_voice => '無配音';
  @override
  String get game_line_audio_overlong => '超長片段';
  @override
  String get game_line_audio_overlong_hint => '遠超單句時長，可能混入 BGM 或其它混音';
  @override
  String get game_line_audio_loopback_hint => '整機混音兜底，可能混入 BGM';
  @override
  String get game_line_recapture => '補錄語音';
  @override
  String get game_line_recapture_stop => '完成補錄';
  @override
  String get game_line_tracks => '本句音軌';
  @override
  String get game_line_tracks_hint => '按本句時刻試聽各軌，確認是 BGM 就排除';
  @override
  String get game_line_track_use => '用於本句';
  @override
  String get game_user_tags_title => '我的標簽';
  @override
  String get anki_lapis_section => 'Lapis 卡片樣式';
  @override
  String get anki_lapis_font_scale => '卡片字號縮放';
  @override
  String get anki_lapis_font_scale_hint =>
      '整體縮放 Lapis 卡片全部字號；點「應用樣式到 Anki」後生效。';
  @override
  String get anki_lapis_custom_css => '自定義 CSS';
  @override
  String get anki_lapis_custom_css_hint => '追加到 Lapis 樣式表中受保護的用戶區段。';
  @override
  String get anki_lapis_apply => '應用樣式到 Anki';
  @override
  String get anki_lapis_apply_done => 'Lapis 樣式已應用（已先自動備份）。';
  @override
  String anki_lapis_apply_failed({required Object error}) => '應用樣式失敗：${error}';
  @override
  String get anki_lapis_up_to_date => 'Lapis 樣式已是最新。';
  @override
  String get anki_lapis_foreign_edit_title => 'Anki 端模板有改動';
  @override
  String get anki_lapis_foreign_edit_body =>
      'Anki 裡的 Lapis 模板與 Fushi 上次應用的狀態不一致，可能被手動改過。繼續應用會覆蓋它（會先自動備份）。是否繼續？';
  @override
  String get anki_lapis_backup => '備份 Lapis 模板';
  @override
  String anki_lapis_backup_done({required Object path}) => '模板已備份：${path}';
  @override
  String anki_lapis_backup_failed({required Object error}) => '備份失敗：${error}';
  @override
  String get anki_lapis_not_found => 'Anki 裡沒有找到 Lapis 筆記模板。';
  @override
  String get anki_lapis_restore => '從備份恢復';
  @override
  String get anki_lapis_restore_empty => '還沒有備份。';
  @override
  String get anki_lapis_restore_confirm =>
      '用該備份覆蓋 Anki 裡的 Lapis 模板？當前狀態會先自動備份。';
  @override
  String get anki_lapis_restore_done => '模板已恢復。';
  @override
  String anki_lapis_restore_failed({required Object error}) => '恢復失敗：${error}';
  @override
  String get anki_dedup_section => 'Anki 媒體存儲優化';
  @override
  String get anki_dedup_scan => '掃描重復項（不做改動）';
  @override
  String get anki_dedup_run => '立即去重';
  @override
  String get anki_dedup_report_title => '媒體去重報告';
  @override
  String anki_dedup_report_body({
    required Object groups,
    required Object removed,
    required Object size,
    required Object notes,
    required Object models,
    required Object skipped,
  }) =>
      '${groups} 組重復；多餘副本 ${removed} 個（${size}）；改寫筆記 ${notes} 張、模板 ${models} 個；跳過 ${skipped} 個。';
  @override
  String get anki_dedup_report_dry_note => '僅掃描——未做任何改動。';
  @override
  String get anki_dedup_report_clean => '沒有發現位元組完全相同的重復檔案。';
  @override
  String anki_dedup_failed({required Object error}) => '去重失敗：${error}';
  @override
  String get anki_dedup_unavailable => '需要本機運行 Anki（AnkiConnect）。';
  @override
  String get anki_dedup_run_hint => '先掃描並列出將要刪除的檔案，你確認之後才會真正刪除。';
  @override
  String get anki_dedup_plan_title => '將要刪除的檔案';
  @override
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '共 ${count} 個多餘副本，可回收 ${size}。每個檔案都保留一份，所有引用先改指到保留的那一份；不重新編碼任何檔案。';
  @override
  String anki_dedup_plan_entry({
    required Object file,
    required Object size,
    required Object canonical,
  }) => '刪除 ${file}（${size}）——保留 ${canonical}';
  @override
  String get anki_dedup_plan_delete => '刪除這些檔案';
  @override
  String get anki_dedup_plan_journal => '每一次改寫和刪除都會先記進備份資料夾裡的日志。';
  @override
  String get manga_ocr_default_engine => '預設 OCR 引擎';
  @override
  String get manga_ocr_engine_auto => '自動（不會上傳到 Lens）';
  @override
  String get manga_ocr_engine_local_onnx => '本地 ONNX';
  @override
  String get manga_ocr_engine_google_lens => 'Google Lens';
  @override
  String get manga_google_lens_disclosure_title => '將漫畫頁面發送到 Google Lens？';
  @override
  String get manga_google_lens_disclosure_body =>
      '識別本漫畫會把尚無 OCR 文本的頁面縮小為 JPEG 後發送給 Google，結果緩存在本設備。該接口並非官方公開 API，可能隨時失效。只有同意後才會上傳。';
  @override
  String get manga_google_lens_disclosure_accept => '同意並開始識別';
  @override
  String get manga_google_lens_disclosure_decline => '取消';
  @override
  String get manga_reading_direction => '閱讀方向';
  @override
  String get manga_direction_rtl => '從右到左';
  @override
  String get manga_direction_ltr => '從左到右';
  @override
  String get manga_zoom => '縮放';
  @override
  String get manga_jump_to_page => '跳轉頁面';
  @override
  String get manga_previous_page => '上一頁';
  @override
  String get manga_next_page => '下一頁';
  @override
  String manga_page_number_hint({required Object total}) => '頁碼（1-${total}）';
  @override
  String get manga_import_direct => '直接導入';
  @override
  String get manga_library => '漫畫';
  @override
  String get manga_import_action => '導入漫畫';
  @override
  String get game_scrape_search => '搜索';
  @override
  String get game_scrape_use => '使用';
  @override
  String get game_scrape_search_failed => '搜索失敗，請檢查網路後重試';
  @override
  String get game_remove_confirm => '從庫中移除此遊戲？不會刪除磁碟上的遊戲檔案。';
  @override
  String manga_ocr_acceleration_status({required Object engine}) =>
      'OCR 加速：${engine}';
  @override
  String manga_ocr_acceleration_degraded({
    required Object engine,
    required Object reason,
  }) => 'GPU 加速不可用，OCR 改用 ${engine} 運行：${reason}';
  @override
  String get media_tracking_status => '收藏狀態';
  @override
  String get media_tracking_signup => '注冊 Bangumi 賬號';
  @override
  String get media_tracking_game => '遊戲';
  @override
  String get download_rate_limit_lan_exempt => '不作用於局域網；局域網內的傳輸始終全速進行。';
  @override
  String get scrape_reason_network => '沒能從封面源取到有效響應，請檢查網路後重試。';
  @override
  String get scrape_reason_server => '封面源返回了錯誤，請稍後重試或換一個候選。';
  @override
  String get common_more_actions => '更多操作';
  @override
  String get collection_already_has_item => '該條目已在這個合集裡。';
  @override
  String get drag_drop_manga_archive_unsupported =>
      '無法導入 .cbr/.rar 漫畫壓縮包，請轉成 .cbz 或圖片資料夾。';
  @override
  String get collection_add_failed => '沒能把該條目加進合集，請重試。';
  @override
  String get anki_dedup_auto => '自動處理';
  @override
  String get anki_dedup_auto_hint =>
      '預設關閉。打開後 Fushi 會在啟動時掃描（最多每周一次）並先把清單給你看，你不確認就不會刪任何檔案。';
  @override
  String get anki_dedup_auto_delete => '自動直接刪除（不再詢問）';
  @override
  String get anki_dedup_auto_delete_hint =>
      '跳過確認彈窗。仍然只刪位元組完全相同的多餘副本、絕不重編碼，但刪除不可撤銷。';
  @override
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      '發現 ${count} 個重復的 Anki 媒體檔案（可釋放 ${size}）';
  @override
  String get anki_dedup_auto_review => '查看';
  @override
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      '已刪除 ${count} 個重復的 Anki 媒體檔案，釋放 ${size}';
  @override
  String anki_lapis_backup_done_pruned({
    required Object path,
    required Object count,
  }) => '已備份到 ${path}（按「保留 90 天、至少留 10 份」清理了 ${count} 份舊備份）';
  @override
  String get game_audio_fallback_policy => '音頻降級';
  @override
  String get game_audio_fallback_full => '允許混音兜底';
  @override
  String get game_audio_fallback_clean => '只用乾淨語音';
  @override
  String get game_audio_fallback_resource => '只用遊戲原始資源';
  @override
  String get game_track_silent_at_cue => '這句時刻沒有聲音';
  @override
  String get game_audio_fallback_full_hint => '抓不到乾淨語音時用系統混音兜底，可能混入 BGM 和音效。';
  @override
  String get game_audio_fallback_clean_hint =>
      '只用遊戲資源音頻和引擎 PCM。沒有配音的句子照常製卡，只是不帶音頻，不會收進 BGM。';
  @override
  String get game_audio_fallback_resource_hint => '必須拿到遊戲自帶的原始語音檔案，缺失時拒絕製卡。';
  @override
  String get game_line_audio_suppressed => '已跳過混音';
  @override
  String get game_line_audio_suppressed_hint =>
      '本句沒有乾淨音源可用，整機混音已按你選的降級策略跳過。這不代表這句沒有配音。';
  @override
  String get video_setting_torrent_limit_lan => '限速也作用於局域網';
  @override
  String get video_setting_torrent_limit_lan_hint =>
      '預設關閉：與局域網內 peer 的傳輸不受上面的限速約束。';
  @override
  String get download_rate_limit_lan_included => '同時作用於局域網內的傳輸。';
  @override
  String get video_collection_no_local_member => '本合集沒有本地影片';
  @override
  String get gal_mining_image_mode => 'Galgame 製卡配圖';
  @override
  String get gal_mining_image_mode_screenshot => '靜態截圖';
  @override
  String get gal_mining_image_mode_hint =>
      'Galgame 一句台詞內畫面基本不動，靜態截圖通常更小、資訊量一樣。';
  @override
  String get shortcut_scope_manga => '漫畫';
  @override
  String get shortcut_action_manga_page_forward => '下一頁';
  @override
  String get shortcut_action_manga_page_backward => '上一頁';
  @override
  String get shortcut_action_manga_dismiss_dict => '關閉詞典';
  @override
  String get video_setting_jimaku_default_language => '預設字幕語言';
  @override
  String get video_jimaku_api_key_settings_hint => '也可在 設定 → 影片 → 字幕 中修改';
  @override
  String get anime_download_subs_episodes_unverified => '集號未與該整季包核對，字幕可能來自別的季。';
  @override
  String get anime_download_subs_deferred => '字幕將在下載完成後按包內實際檔案配對';
  @override
  String get anime_download_subs_pending => '字幕：待下載完成後配對';
  @override
  String get anime_download_subs_unmatched => '字幕：未匹配到（可手動補）';
  @override
  String get stat_source_breakdown => '各來源';
  @override
  String stat_format_pages({required Object n}) => '${n} 頁';
  @override
  String anime_download_subs_season_mismatch({required Object season}) =>
      '沒有字幕條目對得上該種子的第 ${season} 季，已不自動選中。要用的話請手動選一條。';
  @override
  String get media_tracking_card_title => 'Bangumi 同步';
  @override
  String get media_tracking_not_connected => '未連接。進度只記在本地，不會同步到 Bangumi。';
  @override
  String get media_tracking_last_sync => '上次同步';
  @override
  String get media_tracking_never_synced => '從未同步';
  @override
  String media_tracking_linked_count({required Object n}) => '已關聯 ${n} 項';
  @override
  String media_tracking_pending_count({required Object n}) => '${n} 項待發送';
  @override
  String get media_tracking_all_synced => '全部已發送';
  @override
  String get media_tracking_unauthorized => 'Bangumi 拒絕了訪問令牌，請在設定裡重新連接。';
  @override
  String get media_tracking_open_subject => '在 Bangumi 打開';
  @override
  String get media_tracking_manage_links => '管理關聯';
  @override
  String get media_tracking_last_error => '上次錯誤';
  @override
  String get shortcut_action_popup_mine_entry => '製卡（加號）';
  @override
  String get game_upscaling_auto_hint =>
      '優先使用機器上正在運行的 Magpie；否則啟用 Fushi 內置版本，不需要下載。';
  @override
  String get game_upscaling_installed_only_hint =>
      '只用機器上已經安裝或正在運行的 Magpie，不啟用 Fushi 內置版本。';
  @override
  String get game_upscaling_off_hint => '不放大遊戲視窗。';
  @override
  String get game_helper_bundle_missing =>
      '這個版本沒有隨包附帶 galgame 鉤子 helper，請更新 Fushi 獲取。';
  @override
  String game_upscaling_pick_title({required Object name}) => '${name} 的視窗超分';
  @override
  String get game_upscaling_pick_body =>
      '捕獲會話期間用 Magpie 放大這個遊戲的視窗。每個遊戲各自設定——只有原生分辨率低於螢幕的遊戲才用得上。會佔用顯卡。';
  @override
  String get game_upscaling_hint_not_installed =>
      'Magpie 尚未就緒。將該遊戲的「視窗超分」設為「自動」即可使用隨包的內置版本；仍無法啟動時請更新或重裝 Fushi。';
  @override
  String media_source_count_manga({required Object n}) => '${n} 卷';
  @override
  String get library_view_shelf => '書架';
  @override
  String get library_view_browse => '發現';
  @override
  String get library_view_media => '媒體庫';
  @override
  String get scrape_failure_detail_show => '顯示詳情';
  @override
  String get scrape_failure_detail_hide => '隱藏詳情';
  @override
  String get media_tracking_retry_mapping => '重試匹配';
  @override
  String get media_tracking_retry_matched => '已重新關聯並補發當前進度';
  @override
  String get media_tracking_retry_no_match => '仍未匹配到條目，請嘗試手動關聯';
  @override
  String get game_statistics => '遊戲統計';
  @override
  String get game_stat_by_game => '按遊戲';
  @override
  String get stat_clear_all_game_message =>
      '確定清空全部遊戲統計嗎？將刪除所有遊戲時長和遊玩次數。你的遊戲庫與首頁活動流不受影響。此操作不可撤銷。';
  @override
  String batch_selection_stale_skipped({
    required Object n,
    required Object m,
  }) => '選中的 ${n} 項中有 ${m} 項已不存在，已跳過';
  @override
  String get game_text_thread_unset => '尚未選擇線程 · 選一條後開始捕獲';
  @override
  String get media_tracking_watched_show => '查看全部看過';
  @override
  String get media_tracking_watched_title => 'Bangumi 看過';
  @override
  String get media_tracking_watched_empty => '這個 Bangumi 賬號還沒有標記為“看過”的番劇。';
  @override
  String media_tracking_watched_load_failed({required Object error}) =>
      '讀取看過記錄失敗：${error}';
  @override
  String media_tracking_watched_progress({required Object n}) => '已看 ${n} 集';
  @override
  String get media_tracking_manual_required => '需要手動關聯';
  @override
  String media_tracking_manual_required_count({required Object n}) =>
      '${n} 項需要手動關聯';
  @override
  String get media_tracking_manual_required_hint =>
      '這些本地條目已有觀看、閱讀或遊玩記錄，但還沒有關聯到 Bangumi。';
  @override
  String get media_tracking_no_local_history => '暫無需要關聯的本地觀看、閱讀或遊玩記錄。';
  @override
  String media_tracking_more_manual_required({required Object n}) =>
      '另有 ${n} 項需要手動關聯';
  @override
  String get manga_import_hint => '選擇漫畫資料夾、.cbz/.zip 頁圖壓縮包、.pdf，或 .mokuro 檔案。';
  @override
  String get manga_import_pick_file => '選擇漫畫檔案';
  @override
  String get manga_import_pick_folder => '選擇漫畫資料夾';
  @override
  String get manga_import_missing_input => '請先選擇漫畫檔案或資料夾。';
  @override
  String get manga_import_detected_title => '這看起來是漫畫';
  @override
  String get manga_import_detected_confirm => '按漫畫導入';
  @override
  String manga_import_detected_message({required Object name}) =>
      '「${name}」是漫畫檔案，將走漫畫導入流程，而不是書籍導入流程。';
  @override
  String get video_jimaku_source_loading => '正在檢查字幕可用性…';
  @override
  String get video_jimaku_source_failed => '字幕可用性檢查失敗，請重新查找。';
  @override
  String get video_jimaku_language_unknown => '語言未標注';
  @override
  String video_jimaku_source_summary({
    required Object files,
    required Object episodes,
    required Object languages,
  }) => '${files} 個字幕檔案 · 覆蓋 ${episodes} 集 · ${languages}';
  @override
  String video_jimaku_episode_unlabeled({
    required Object episode,
    required Object count,
  }) => '未發現標為第 ${episode} 集的字幕；另有 ${count} 個未標集號檔案可嘗試';
  @override
  String video_jimaku_episode_unavailable({required Object episode}) =>
      '沒有找到第 ${episode} 集字幕';
  @override
  String video_jimaku_episode_available({
    required Object count,
    required Object languages,
  }) => '有 ${count} 個字幕 · ${languages}';
  @override
  String get manga_online_source_disabled => '此互聯網來源已關閉，請在「來源」中開啟後瀏覽目錄。';
  @override
  String get selection_web_search => '網頁搜索';
  @override
  String get selection_web_search_unavailable => '沒有可用的網頁搜索應用。';
  @override
  String get selection_share_failed => '無法打開分享面板。';
  @override
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang}（自動生成）';
  @override
  String get anki_dedup_progress_title => '正在去重媒體';
  @override
  String anki_dedup_progress_scanning({required Object count}) =>
      '正在掃描媒體目錄…（已發現 ${count} 個檔案）';
  @override
  String anki_dedup_progress_hashing({
    required Object done,
    required Object total,
  }) => '正在比對同大小檔案…（${done} / ${total}）';
  @override
  String anki_dedup_progress_resolving({
    required Object done,
    required Object total,
  }) => '正在處理重復副本…（${done} / ${total}）';
  @override
  String anki_dedup_progress_freed({required Object size}) => '已釋放 ${size}';
  @override
  String get anki_dedup_cancelling => '正在取消…';
  @override
  String get anki_dedup_cancelled => '已取消去重；已完成的改動保留。';
  @override
  String get anki_dedup_report_cancelled_note => '已提前取消——以下數字只統計已完成的部分。';
  @override
  String get anki_dedup_plan_busy_note => '執行期間 Anki 可能暫時無響應；結束前請不要在 Anki 裡操作。';
  @override
  String get video_setting_subtitle_position_secondary => '副字幕垂直位置';
  @override
  String get dict_download_learning_language => '學習語言';
  @override
  String get dict_category_bilingual => '雙語';
  @override
  String get dict_category_monolingual => '單語';
  @override
  String get shortcut_action_video_hold_speed => '按住臨時倍速';
  @override
  String get handlebar_phonetic_transcriptions => '音標';
  @override
  String get sync_progress_preparing => '正在準備同步';
  @override
  String get sync_progress_collections => '同步合集';
  @override
  String get sync_progress_book => '同步書籍';
  @override
  String sync_progress_book_titled({required Object title}) => '同步 ${title}';
  @override
  String sync_last_completed({required Object count}) =>
      '上次同步：已完成（${count} 條通道）';
  @override
  String get sync_last_no_channels => '上次同步：未同步——沒有已連接的同步通道';
  @override
  String get sync_last_nothing => '上次同步：沒有可同步的內容';
  @override
  String get sync_last_auto_disabled => '上次同步：已跳過——自動同步已關閉';
  @override
  String get sync_last_cooled_down => '上次同步：已跳過——剛同步過';
  @override
  String get sync_last_failed => '上次同步：失敗';
  @override
  String anime_download_no_results_detail({
    required Object query,
    required Object filters,
  }) => '服務已正常響應，但按當前條件返回 0 條。查詢：${query}；篩選：${filters}。請嘗試別名或放寬篩選。';
  @override
  String get anime_download_streaming_ready => '已入庫 · 下載繼續';
  @override
  String get anime_download_unfiltered => '未啟用 Trusted 篩選';
  @override
  String get interconnect_enable_footer =>
      '用法：在存放內容的那台設備上開啟下方的同步伺服器開關；在另一台設備上添加該伺服器的地址完成配對。同一台設備同一時間只能擔任伺服器或客戶端其中一種角色。';
  @override
  String get interconnect_peer_list_title => '已添加的對端';
  @override
  String get interconnect_peer_list_empty =>
      '尚未添加任何對端。可在下方的局域網設備列表中點擊發現的設備自動配對，或手動添加對端地址。';
  @override
  String get anki_lapis_visual_editor => '可視化編輯';
  @override
  String get anki_lapis_visual_editor_hint =>
      '預覽 Lapis 卡片，選中區域後直接改樣式、位置和字段映射，無需手寫 CSS。';
  @override
  String get anki_lapis_visual_front => '正面';
  @override
  String get anki_lapis_visual_back => '背面';
  @override
  String get anki_lapis_visual_preview => 'Lapis 卡片預覽';
  @override
  String get anki_lapis_visual_select_field => '選擇要編輯的部分';
  @override
  String get anki_lapis_visual_reset_field => '重置字段';
  @override
  String anki_lapis_visual_font_size({required Object percent}) =>
      '字號：${percent}%';
  @override
  String get anki_lapis_visual_bold => '粗體';
  @override
  String get anki_lapis_visual_alignment => '對齊';
  @override
  String get anki_lapis_visual_color => '文字顏色';
  @override
  String get anki_lapis_visual_default => '預設';
  @override
  String get anki_lapis_visual_advanced_css => '高級 CSS';
  @override
  String get anki_lapis_visual_field_expression => '單詞';
  @override
  String get anki_lapis_visual_field_reading => '讀音';
  @override
  String get anki_lapis_visual_field_sentence => '例句';
  @override
  String get anki_lapis_visual_field_primary_definition => '首要釋義';
  @override
  String get anki_lapis_visual_field_glossaries => '其他釋義';
  @override
  String get anki_lapis_visual_target_card_content => '卡片內容';
  @override
  String get anki_lapis_visual_target_definition => '釋義';
  @override
  String get anki_lapis_visual_target_inside_definition => '釋義內部';
  @override
  String get anki_lapis_visual_field_definition_info => '釋義序號';
  @override
  String get anki_lapis_visual_field_definition_box => '釋義框';
  @override
  String get anki_lapis_visual_field_definition_content => '整段釋義';
  @override
  String get anki_lapis_visual_field_selected_definition => '選中釋義';
  @override
  String get anki_lapis_visual_field_dictionary_entry => '詞典條目';
  @override
  String get anki_lapis_visual_field_dictionary_name => '詞典名稱';
  @override
  String get anki_lapis_visual_field_definition_example => '釋義例句';
  @override
  String get anki_lapis_visual_line_height => '行高';
  @override
  String get anki_lapis_visual_background_color => '背景高亮';
  @override
  String get anki_lapis_visual_box_layout => '區域外觀';
  @override
  String get anki_lapis_visual_border_width => '邊框';
  @override
  String get anki_lapis_visual_border_color => '邊框顏色';
  @override
  String get anki_lapis_visual_corner_radius => '圓角';
  @override
  String get anki_lapis_visual_padding => '內邊距';
  @override
  String get anki_lapis_visual_margin => '外邊距';
  @override
  String get anki_lapis_visual_field_definition_info_note =>
      '僅在保留多段釋義的卡片上可見；只有一段釋義的卡片不會顯示。';
  @override
  String get anki_lapis_visual_field_dictionary_name_note =>
      'Fushi 生成的卡片把詞性標簽和詞典名放在同一個標簽裡，兩者無法分開設定樣式。';
  @override
  String get game_upscaling_error_bundle_missing =>
      'Fushi 安裝包不完整：缺少內置 Magpie 組件。請重新安裝或更新 Fushi。';
  @override
  String get game_upscaling_error_bundle_invalid =>
      '內置 Magpie 組件已損壞或校驗失敗。請重新安裝或更新 Fushi。';
  @override
  String download_test_connection_failed_reason({required Object message}) =>
      '連接失敗：${message}';
  @override
  String get delete_disclosure_will_delete_label => '會被刪除';
  @override
  String get delete_disclosure_will_keep_label => '會被保留';
  @override
  String get delete_disclosure_book_records => '閱讀進度、書簽、標簽和字幕數據';
  @override
  String get delete_disclosure_book_extracted => 'Fushi 解壓到自己存儲目錄裡的書籍檔案';
  @override
  String get delete_disclosure_book_audiobook => '配套有聲書的音頻和對齊字幕（如果有）';
  @override
  String get delete_disclosure_source_kept => '你導入時選擇的原始檔案（書籍、字幕、音頻）';
  @override
  String get delete_disclosure_stats_kept => '閱讀統計';
  @override
  String get delete_disclosure_audiobook_files => 'Fushi 復製到自己存儲目錄裡的音頻和對齊字幕';
  @override
  String get delete_disclosure_audiobook_book_kept => '書籍本身和它的閱讀進度';
  @override
  String get delete_disclosure_audiobook_source_kept => '你導入時選擇的原始音頻檔案';
  @override
  String get audiobook_delete => '刪除有聲書';
  @override
  String get audiobook_delete_confirm => '刪除已附加的有聲書？它的音頻檔案會從本機刪除。';
  @override
  String get delete_collection_confirm => '只解除分組，其中的條目會保留。';
  @override
  String get shortcut_action_video_enter_caret => '進入字幕選詞遊標';
  @override
  String get audiobook_export_clip_too_long => '選區音頻過長，暫不支持導出（上限 5 分鐘）';
  @override
  String get sync_err_forbidden => '服務端拒絕了這次請求。登錄沒問題，請檢查服務端設定。';
  @override
  String sync_err_forbidden_detail({required Object reason}) =>
      '服務端拒絕了這次請求：${reason}（登錄沒問題）';
  @override
  String get collection_group_extras => 'PV·特典';
  @override
  String collection_group_season({required Object n}) => '第 ${n} 季';
  @override
  String get collection_sort_by_season => '按季排序';
  @override
  String get mining_animated_format_avif => 'AVIF（體積最小）';
  @override
  String get mining_animated_format_webp => 'WebP（兼容性更廣）';
  @override
  String get mining_animated_format_gif => 'GIF（兼容性最好）';
  @override
  String get video_mining_animated_format => '影片製卡動圖格式';
  @override
  String get video_mining_animated_format_hint =>
      '同畫質下 AVIF 體積遠小於 GIF，最高清晰度檔也允許比 GIF/WebP 更高的分辨率與幀率。捆綁的編碼器產不出時會自動回退 GIF。';
  @override
  String get gal_mining_animated_format => '遊戲製卡動圖格式';
  @override
  String get gal_mining_animated_format_hint =>
      '與影片製卡同樣的格式，但分開保存：galgame 一句台詞內畫面基本靜止，取舍不同。';
  @override
  String get scrape_all => '全部刮削';
  @override
  String scrape_all_title({required Object kind}) => '刮削全部${kind}';
  @override
  String scrape_all_running({required Object current, required Object total}) =>
      '正在刮削 ${current} / ${total}';
  @override
  String scrape_all_item({required Object title}) => '正在處理：${title}';
  @override
  String scrape_all_done({
    required Object applied,
    required Object review,
    required Object skipped,
    required Object failed,
  }) => '完成：已應用 ${applied} 個，待手動確認 ${review} 個，已跳過 ${skipped} 個，失敗 ${failed} 個';
  @override
  String get scrape_all_empty => '當前庫沒有可刮削的條目。';
  @override
  String get scrape_all_start => '開始';
  @override
  String collection_hero_total_episodes({required Object count}) =>
      '全 ${count} 話';
  @override
  String get video_scrape_collection_rename_title => '要重命名這個合集嗎？';
  @override
  String get video_scrape_collection_rename_body =>
      '匹配到的條目名稱與當前不同。改名是可選的：無論選哪個，封面和資料都會保存；確認改名還會把其他已同步設備上的舊名一併替換。';
  @override
  String video_scrape_collection_rename_from({required Object name}) =>
      '當前名稱：${name}';
  @override
  String video_scrape_collection_rename_to({required Object name}) =>
      '新名稱：${name}';
  @override
  String get video_scrape_collection_rename_keep => '保留當前名稱';
  @override
  String get download_task_toggle_failed => '暫停/恢復操作失敗';
  @override
  String get download_task_eta => '剩餘';
  @override
  String get download_task_ratio => '分享率';
  @override
  String get download_task_status_downloading => '下載中';
  @override
  String get download_task_status_seeding => '做種中';
  @override
  String get download_task_status_completed => '已完成';
  @override
  String get download_task_status_paused => '已暫停';
  @override
  String get download_task_status_queued => '排隊中';
  @override
  String get download_task_status_stalled => '等待資源';
  @override
  String get download_task_status_checking => '校驗中';
  @override
  String get download_task_status_metadata => '獲取元數據';
  @override
  String get download_task_status_moving => '移動中';
  @override
  String get download_task_status_error => '出錯';
  @override
  String get download_task_pause => '暫停';
  @override
  String get download_task_resume => '恢復';
  @override
  String get download_airing_calendar_title => '放送日歷';
  @override
  String get download_airing_calendar_show_all => '顯示本季全部';
  @override
  String get download_airing_calendar_empty_guidance =>
      '暫無可顯示的放送資訊：給合集綁定 AniList 或添加下載訂閱後，這裡會顯示對應的放送時間。';
  @override
  String get download_airing_calendar_error => '放送時間表加載失敗';
  @override
  String get download_airing_calendar_in_library => '已入庫';
  @override
  String get download_airing_calendar_subscribed => '訂閱中';
  @override
  String download_airing_calendar_episode_label({required Object episode}) =>
      '第 ${episode} 集';
  @override
  String get download_airing_calendar_week_prev => '上一周';
  @override
  String get download_airing_calendar_week_next => '下一周';
  @override
  String get download_airing_calendar_week_empty => '本周沒有相關放送';
  @override
  String get video_jimaku_format => '類型';
  @override
  String get video_jimaku_format_all => '全部';
  @override
  String get video_setting_tmdb_key => '自定義 TMDB API Key';
  @override
  String get video_setting_tmdb_key_hint =>
      '可留空，預設用內置 Key。僅當刮削失效或你想用自己的配額時才需要填寫。';
  @override
  String get about_tmdb_attribution =>
      'This application uses TMDB and the TMDB APIs but is not endorsed, certified, or otherwise approved by TMDB.';
  @override
  String get anki_lapis_visual_layout => '布局';
  @override
  String get anki_lapis_visual_layout_hint =>
      '復用 Lapis 自帶的布局開關，桌面與手機 Anki 同時生效。';
  @override
  String get anki_lapis_visual_layout_sentence => '例句位置';
  @override
  String get anki_lapis_visual_layout_sentence_above => '釋義框上方';
  @override
  String get anki_lapis_visual_layout_sentence_below => '釋義框下方';
  @override
  String get anki_lapis_visual_layout_picture => '圖片位置';
  @override
  String get anki_lapis_visual_layout_picture_right => '單詞右側';
  @override
  String get anki_lapis_visual_layout_picture_left => '單詞左側';
  @override
  String get anki_lapis_visual_layout_picture_alt => '例句內';
  @override
  String get anki_lapis_visual_layout_audio => '音頻按鈕';
  @override
  String get anki_lapis_visual_layout_audio_header => '讀音旁';
  @override
  String get anki_lapis_visual_layout_audio_fixed => '固定在底部';
  @override
  String get anki_lapis_visual_layout_audio_alt => '例句內';
  @override
  String get anki_lapis_visual_mapping_hint => '填充選中區域的 Anki 字段；改動隨樣式一起保存。';
  @override
  String get anki_lapis_visual_mapping_none => '該區域由模板自己繪製，沒有對應字段。';
  @override
  String get anki_lapis_visual_color_custom => '自定義';
  @override
  String get anki_lapis_visual_color_picker_title => '選擇顏色';
  @override
  String get video_scrape_tmdb_key_hint => '輸入 TMDB API Key';
  @override
  String get video_scrape_tmdb_key_required => 'TMDB 需要 API Key';
  @override
  String get video_scrape_tmdb_key_save => '保存';
  @override
  String get video_scrape_tmdb_key_empty =>
      '先保存 TMDB API Key，再點“搜索”。這裡不會混入其他來源的結果。';
  @override
  String get download_detail_tab_overview => '總覽';
  @override
  String get download_detail_tab_files => '檔案';
  @override
  String get download_detail_tab_peers => '節點';
  @override
  String get download_detail_tab_trackers => 'Tracker';
  @override
  String get download_detail_backend_unsupported => '當前下載後端不支持';
  @override
  String get download_detail_task_gone => '後端中找不到該任務';
  @override
  String get download_detail_task_missing =>
      '原下載後端在線，但該 torrent 已不在引擎中。實時節點和 Tracker 無法恢復，這裡顯示已保存的任務資訊。';
  @override
  String get download_detail_section_transfer => '傳輸';
  @override
  String get download_detail_section_network => '網路';
  @override
  String get download_detail_section_task => '任務';
  @override
  String get download_detail_seeds_label => '做種';
  @override
  String get download_detail_leechers_label => '下載者';
  @override
  String get download_detail_connections_label => '連接數';
  @override
  String get download_detail_content_path_label => '內容路徑';
  @override
  String get download_detail_time_active => '活躍時長';
  @override
  String get download_detail_time_seeding => '做種時長';
  @override
  String get download_detail_total_size_label => '總大小';
  @override
  String get download_detail_listen_port => '監聽端口';
  @override
  String get download_detail_dht_nodes => 'DHT 節點';
  @override
  String get download_detail_hash_label => '資訊哈希';
  @override
  String get download_detail_port_mapping => '端口映射';
  @override
  String get download_detail_session_rates => '會話速率';
  @override
  String get download_detail_pieces_label => '分片';
  @override
  String get download_detail_priority_skip => '不下載';
  @override
  String get download_detail_raw_state_label => '後端狀態';
  @override
  String get download_detail_remaining_label => '剩餘大小';
  @override
  String get download_detail_save_path_label => '保存路徑';
  @override
  String get download_detail_priority_normal => '普通';
  @override
  String get download_detail_priority_high => '高';
  @override
  String get download_detail_tracker_working => '工作中';
  @override
  String get download_detail_tracker_updating => '更新中';
  @override
  String get download_detail_tracker_not_contacted => '尚未聯系';
  @override
  String get download_detail_tracker_not_working => '不工作';
  @override
  String get download_detail_tracker_disabled => '已禁用';
  @override
  String get download_detail_no_peers => '暫無已連接節點';
  @override
  String get download_detail_no_trackers => '無 Tracker';
  @override
  String get video_filter_year => '年份';
  @override
  String get video_filter_year_unknown => '未知年份';
  @override
  String get video_filter_watch_status => '看完狀態';
  @override
  String get video_filter_watch_status_unwatched => '未看';
  @override
  String get video_filter_watch_status_watching => '在看';
  @override
  String get video_filter_watch_status_completed => '已看完';
  @override
  String get video_hero_detail_view => '詳情';
  @override
  String video_hero_episodes_watched({required Object n}) => '已看 ${n} 集';
  @override
  String get video_recently_added_badge => '新';
  @override
  String get video_air_season_winter => '冬';
  @override
  String get video_air_season_spring => '春';
  @override
  String get video_air_season_summer => '夏';
  @override
  String get video_air_season_autumn => '秋';
  @override
  String get delete_scope_no_channel => '未配置同步，本次刪除只影響這台設備';
  @override
  String get mihon_sources_title => '漫畫源';
  @override
  String get mihon_extensions_title => '漫畫擴展';
  @override
  String get mihon_store_add => '添加擴展倉庫';
  @override
  String get mihon_store_url => '擴展倉庫地址';
  @override
  String get mihon_store_empty => '還沒有擴展倉庫。可添加兼容的 Mihon 倉庫，或導入本地 APK。';
  @override
  String get mihon_extension_import => '導入本地 APK';
  @override
  String get mihon_extension_warning => '第三方擴展會以 Fushi 的權限執行代碼。請只安裝你信任的擴展和簽名者。';
  @override
  String get mihon_extension_install => '安裝';
  @override
  String get mihon_extension_update => '更新';
  @override
  String get mihon_extension_uninstall => '解除安裝';
  @override
  String get mihon_extension_installed => '已安裝';
  @override
  String get mihon_extension_disabled => '已停用';
  @override
  String get mihon_source_empty => '沒有已啟用的漫畫源。請先安裝並啟用漫畫擴展。';
  @override
  String get mihon_source_popular => '熱門';
  @override
  String get mihon_source_latest => '最新';
  @override
  String get mihon_source_search => '搜索漫畫';
  @override
  String get mihon_source_preferences => '來源偏好';
  @override
  String get mihon_source_clear_data => '清除來源數據';
  @override
  String get mihon_source_clear_data_hint => '清除該來源的偏好與 Cookie，不會解除安裝擴展。';
  @override
  String get mihon_signer_trust_title => '信任擴展簽名者？';
  @override
  String get mihon_signer_fingerprint => '簽名者 SHA-256';
  @override
  String get mihon_runtime_unavailable => '此平台暫不支持 Mihon 擴展。';
  @override
  String get mihon_extension_incompatible => '擴展不兼容';
  @override
  String get mihon_store_refresh => '重新整理倉庫';
  @override
  String get mihon_source_browse_mokuro => '內置 Mokuro 目錄';
  @override
  String get mihon_source_no_results => '沒有找到漫畫。';
  @override
  String get mihon_chapters_title => '章節';
  @override
  String get mihon_extension_language_filter => '語言';
  @override
  String get mihon_extension_language_all => '全部語言';
  @override
  String get mihon_filter_ignore => '忽略';
  @override
  String get mihon_filter_include => '包含';
  @override
  String get mihon_filter_exclude => '排除';
  @override
  String get mihon_filter_ascending => '升序';
  @override
  String get mihon_filter_descending => '降序';
  @override
  String get mihon_add_to_bookshelf => '加入漫畫書架';
  @override
  String get mihon_in_bookshelf => '已加入漫畫書架';
  @override
  String scrape_all_confirm({required Object n}) =>
      '將按標題匹配庫中的 ${n} 個條目。只自動應用高置信度的匹配——影片按標題與年份、類型等資訊綜合打分，書籍和遊戲則要求標題唯一且完全一致。你自己定的封面一律不覆蓋（手動設定的本地圖、在匹配彈窗裡親手選定的條目、目錄裡自帶的 poster 圖），歧義結果留待手動確認。';
  @override
  String get collection_related_title => '相關作品';
  @override
  String get collection_relation_prequel => '前傳';
  @override
  String get collection_relation_sequel => '續作';
  @override
  String get collection_relation_side_story => '番外';
  @override
  String get collection_relation_movie => '劇場版';
  @override
  String get collection_relation_spin_off => '衍生';
  @override
  String get collection_relation_other => '相關';
  @override
  String get collection_relation_download => '去下載';
  @override
  String get collection_relation_bind => '綁定到已有合集';
  @override
  String get collection_episode_rename => '按刮削重命名各集';
  @override
  String get collection_episode_rename_title => '批量重命名各集';
  @override
  String get collection_episode_rename_empty => '沒有可改的集名';
  @override
  String get collection_episode_download => '下載本集';
  @override
  String get collection_episode_fill_missing => '補齊缺集';
  @override
  String get collection_episode_no_missing => '沒有缺集';
  @override
  String get collection_split_by_season => '按季拆分合集';
  @override
  String get collection_split_keep_original => '保留原合集';
  @override
  String get collection_split_confirm => '拆分';
  @override
  String collection_relation_bound({required Object name}) => '已綁定到 ${name}';
  @override
  String collection_episode_rename_apply({required Object n}) => '重命名 ${n} 集';
  @override
  String collection_split_done({required Object n}) => '已拆分為 ${n} 個合集';
  @override
  String collection_episode_watched_at({required Object position}) =>
      '看到 ${position}';
  @override
  String collection_episode_rename_partial({
    required Object n,
    required Object m,
  }) => '已重命名 ${n} 集 · ${m} 集失敗';
  @override
  String get sync_err_browser_timeout =>
      '瀏覽器授權沒有返回到應用。請重試，並確認代理放行了本機回環地址 127.0.0.1。';
  @override
  String get manga_rescan_running => '正在識別所選區域…';
  @override
  String get manga_rescan_empty => '該區域未識別出文字。';
  @override
  String get stat_hourly_band_epub => '文字書';
  @override
  String get stat_hourly_band_pdf => 'PDF';
  @override
  String get stat_hourly_band_manga => '漫畫';
  @override
  String get stat_hourly_band_unattributed => '未區分歷史';
  @override
  String get stat_hourly_unattributed_note =>
      '早期記錄的時段數據沒有存類型，無法拆分；這裡按合計如實顯示，不歸入任何一類。';
  @override
  String get book_convert_to_manga_action => '轉換為漫畫';
  @override
  String get book_convert_to_book_action => '轉換回書';
  @override
  String get book_convert_running => '轉換中…';
  @override
  String get book_convert_done => '轉換完成';
  @override
  String get book_convert_failed => '轉換失敗';
  @override
  String get book_convert_blocked_already => '這本書已經是該格式了。';
  @override
  String get book_convert_blocked_text_only => '這是一本沒有頁圖的文字書。只有掃描版圖片書才能轉成漫畫。';
  @override
  String get book_convert_blocked_no_original => '這本漫畫是從圖片導入的，沒有可還原的原書。';
  @override
  String get book_convert_blocked_source_missing => '源檔案已從磁碟上消失。';
  @override
  String manga_online_retry_waiting({
    required Object attempt,
    required Object total,
  }) => '即將自動重試 (${attempt}/${total})';
  @override
  String get manga_ocr_wizard_already_ocred =>
      '本卷每一頁都已有 OCR 數據，無需再跑（重跑會覆蓋現有數據）。';
  @override
  String get shortcut_scope_universal => '返回·退出';
  @override
  String get game_attach_and_capture => '附着並捕獲';
  @override
  String get remote_delete_failed => '無法在對端設備上刪除';
  @override
  String get remote_delete_unsupported => '對端設備版本過舊，不支持遠端刪除，請先升級對端 Fushi';
  @override
  String get anki_lapis_visual_blocks => '自定義區域';
  @override
  String get anki_lapis_visual_blocks_hint =>
      '把已有字段擺到卡片的其它位置。只改顯示，不新增也不刪除 Anki 字段。';
  @override
  String get anki_lapis_visual_block_add => '添加區域';
  @override
  String get anki_lapis_visual_block_delete => '刪除區域';
  @override
  String anki_lapis_visual_block_name({required Object index}) => '區域 ${index}';
  @override
  String get anki_lapis_visual_block_anchor => '在卡片上的位置';
  @override
  String get anki_lapis_visual_block_anchor_top => '卡片頂部';
  @override
  String get anki_lapis_visual_block_anchor_above_sentence => '單詞區下方';
  @override
  String get anki_lapis_visual_block_anchor_above_definition => '例句下方';
  @override
  String get anki_lapis_visual_block_anchor_below_definition => '釋義框下方';
  @override
  String get anki_lapis_visual_block_anchor_bottom => '卡片底部';
  @override
  String get anki_lapis_visual_block_fields => '這裡顯示的字段';
  @override
  String get anki_lapis_visual_block_no_fields => '還沒選字段';
  @override
  String get anki_lapis_visual_block_needs_note_type => '先選好卡片類型才能挑字段。';
  @override
  String get anki_lapis_restore_factory => '恢復出廠 Lapis';
  @override
  String get anki_lapis_restore_factory_hint =>
      '用 Fushi 內置版本覆蓋 Anki 裡的 Lapis 卡型（樣式與正反面模板），並清空這裡的全部客製化。';
  @override
  String get anki_lapis_restore_factory_confirm =>
      '這會用 Fushi 內置版本覆蓋 Anki 裡 Lapis 的樣式與正反面模板，並把字號、自定義 CSS、自定義區域全部重置。執行前會先自動備份當前狀態。卡片數據不受影響。';
  @override
  String get anki_lapis_restore_factory_done => 'Lapis 已恢復出廠狀態';
  @override
  String anki_lapis_restore_factory_failed({required Object error}) =>
      '恢復失敗：${error}';
  @override
  String get anki_lapis_visual_select_field_hint =>
      '點預覽裡的任意部分，或從下面挑一個。選中的就是下方那些控件正在編輯的對象。';
  @override
  String get anki_lapis_visual_editing_now => '正在編輯';
  @override
  String get mihon_extension_preview => '預覽';
  @override
  String get mihon_extension_preview_warning =>
      '預覽會在安裝前運行該擴展的代碼。在你選擇安裝之前，不會有任何東西寫進你的庫。';
  @override
  String get mihon_extension_preview_discard => '放棄';
  @override
  String get mihon_extension_preview_source_select => '選擇要預覽的源';
  @override
  String get mihon_extension_sources_included => '包含的源';
  @override
  String get mihon_extension_preview_read_only => '預覽是只讀的。安裝擴展後才能打開閱讀。';
  @override
  String get selection_copy_empty => '未選中文本。';
  @override
  String get video_library_empty_source_hint => '請從「來源」加入影片資料夾以建立媒體庫';
  @override
  String get video_source_scrape_action => '刮削此來源';
  @override
  String get video_source_scrape_settings => '來源刮削設定';
  @override
  String get video_source_scrape_auto_after_scan => '掃描後自動刮削';
  @override
  String get video_source_scrape_auto_after_scan_hint => '掃描此來源完成後自動刮削作品資料';
  @override
  String get video_source_scrape_write_nfo => '寫入 NFO 檔案';
  @override
  String get video_source_scrape_write_images => '寫入圖片檔案';
  @override
  String video_source_scrape_progress({
    required Object phase,
    required Object current,
    required Object total,
  }) => '${phase} · ${current}/${total}';
  @override
  String video_source_scrape_last_summary({
    required Object status,
    required Object succeeded,
    required Object pending,
    required Object failed,
  }) => '上次刮削（${status}）：成功 ${succeeded}，待確認 ${pending}，失敗 ${failed}';
  @override
  String get video_source_scrape_phase_planning => '準備中';
  @override
  String get video_source_scrape_phase_recognizing => '識別匹配中';
  @override
  String get video_source_scrape_phase_fetching => '獲取資料中';
  @override
  String get video_source_scrape_phase_applying => '保存資料中';
  @override
  String get video_source_scrape_phase_writing_sidecars => '寫入 NFO 與圖片';
  @override
  String get video_source_scrape_status_interrupted => '已中斷';
  @override
  String get video_source_scrape_locale => '資料語言';
  @override
  String get video_source_scrape_locale_hint => '標題、簡介與圖片的首選語言';
  @override
  String get video_source_scrape_confirmation_title => '確認資料匹配';
  @override
  String get video_source_scrape_confirmation_hint =>
      '找到多個嚴格匹配結果。請選擇正確作品，Fushi 會保存其來源綁定。';
  @override
  String get video_source_scrape_confirmation_skip => '跳過此作品';
  @override
  String get video_source_scrape_nfo_policy => 'NFO 寫入策略';
  @override
  String get video_source_scrape_image_policy => '圖片寫入策略';
  @override
  String get video_source_scrape_policy_skip => '不寫入';
  @override
  String get video_source_scrape_policy_missing_only => '僅缺失時寫入';
  @override
  String get video_source_scrape_policy_overwrite => '更新 Fushi 生成物';
  @override
  String get video_source_scrape_external_overwrite => '允許覆蓋受保護的 sidecar';
  @override
  String get video_source_scrape_external_overwrite_hint =>
      '第三方或用戶修改過的檔案仍受保護；每次手動刮削批次都必須再次確認。';
  @override
  String get video_source_scrape_external_overwrite_confirm_title =>
      '覆蓋受保護的 sidecar？';
  @override
  String get video_source_scrape_external_overwrite_confirm_body =>
      '本批次可能替換第三方 NFO/圖片，或你修改過的 Fushi 生成物；影片檔案本身不會改動。是否繼續？';
  @override
  String get video_source_scrape_tasks_open => '後台任務';
  @override
  String get video_source_scrape_background_started => '刮削已在後台開始';
  @override
  String get video_source_scrape_tasks_current => '當前任務';
  @override
  String get video_source_scrape_tasks_history => '最近任務';
  @override
  String get video_source_scrape_tasks_empty => '暫無刮削任務';
  @override
  String get video_source_scrape_waiting_confirmation => '等待你的確認';
  @override
  String get video_source_scrape_phase_scanning => '掃描來源';
  @override
  String get video_library_all_videos => '全部影片';
  @override
  String get video_work_voice_roles => '聲優與角色';
  @override
  String get video_work_cast_crew => '演職員';
  @override
  String get video_work_trailers => '預告片';
  @override
  String get video_work_extras => '花絮';
  @override
  String get video_work_details => '作品資料';
  @override
  String get video_work_external_ids => '外部 ID';
  @override
  String get video_work_metadata_pending => '尚未刮取詳細資料。請在「來源」中重試此來源，然後重新開啟作品。';
  @override
  String get video_work_genres => '類型';
  @override
  String get video_work_keywords => '標簽';
  @override
  String get video_work_studios => '工作室';
  @override
  String get video_work_countries => '國家';
  @override
  String get video_work_content_rating => '分級';
  @override
  String get video_all_videos_list_view => '列表視圖';
  @override
  String get video_all_videos_grid_view => '網格視圖';
  @override
  String video_home_continue_episode_number({required Object n}) =>
      '看到第 ${n} 集';
  @override
  String video_home_next_episode_number({required Object n}) =>
      '下一集 · 第 ${n} 集';
  @override
  String video_home_recent_episode_number({required Object n}) =>
      '最近添加 · 第 ${n} 集';
  @override
  String video_home_remaining_minutes({required Object minutes}) =>
      '剩餘 ${minutes} 分鐘';
  @override
  String get video_subtitle_replay => '重播本句';
  @override
  String get manga_ocr_done => 'OCR 已完成';
  @override
  String get settings_destination_manga_summary => '閱讀器、OCR 與在線目錄';
  @override
  String get manga_page_animation => '翻頁動畫';
  @override
  String get manga_page_animation_none => '無';
  @override
  String get manga_page_animation_slide => '滑動';
  @override
  String get manga_page_animation_fade => '淡入淡出';
  @override
  String get manga_default_zoom => '預設縮放';
  @override
  String get manga_zoom_sensitivity => '縮放靈敏度';
  @override
  String get manga_volume_key_paging => '音量鍵翻頁';
  @override
  String get manga_volume_key_paging_subtitle => '在漫畫閱讀器中用音量加減鍵翻頁';
  @override
  String get manga_tap_zone_paging => '點擊邊緣翻頁';
  @override
  String get manga_tap_zone_paging_subtitle => '點擊頁面左右邊緣翻頁';
  @override
  String get manga_section_viewing => '瀏覽與翻頁';
  @override
  String get game_capture_setup_title => '完成捕獲設定';
  @override
  String get game_capture_setup_hint => '請先選擇台詞線程。Fushi 只能把音頻與所選線程收到的台詞配對。';
  @override
  String get game_audio_requires_thread => '音頻採集源可能已經就緒，但選擇線程並收到台詞之前，不存在本句音頻。';
  @override
  String get game_session_waiting_thread => '等待選擇台詞線程';
  @override
  String get anki_connect_use_on_mobile => 'Use AnkiConnect on Android';
  @override
  String get anki_connect_use_on_mobile_hint =>
      '僅在可信網路中使用。AnkiConnect 使用明文 HTTP；請配置匹配的 API key，切換後再重新整理牌組與筆記類型。';
  @override
  String get anki_connect_api_key_hint => '遠程 AnkiConnect 必填；必須與插件中配置的 key 一致';
  @override
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before enabling the Android backend.';
  @override
  String anki_connect_backend_switch_failed({required Object error}) =>
      '無法切換 Anki 後端：${error}';
  @override
  String get migration_settings_entry => '遷移到 Fushi';
  @override
  String get migration_settings_entry_subtitle => '把全部數據搬到新的 Fushi 應用';
  @override
  String get migration_intro =>
      'Fushi 是本應用的新名字。遷移會把你的全部數據分批導出到中轉目錄，再由 Fushi 導入並逐項校驗。在你解除安裝舊版之前，這裡的數據原樣保留。';
  @override
  String get migration_target_missing => '尚未安裝 Fushi。請先安裝 Fushi，再回到這裡。';
  @override
  String get migration_download_fushi => '下載 Fushi';
  @override
  String get migration_start => '開始遷移';
  @override
  String get migration_open_fushi => '打開 Fushi';
  @override
  String get migration_include_local_audio => '一併導出本地發音庫（體積可能很大）';
  @override
  String migration_batch_running({required Object batch}) => '正在導出 ${batch}…';
  @override
  String migration_batch_done({required Object batch}) => '${batch} 已導出';
  @override
  String get migration_export_done => '導出完成。打開 Fushi 完成導入與校驗。';
  @override
  String migration_export_failed({required Object error}) => '導出失敗：${error}';
  @override
  String get migration_readonly_note =>
      '數據已導出到 Fushi。本應用已進入只讀模式：請改用 Fushi 閱讀和製卡。若 Fushi 校驗發現缺失，可隨時在此重新導出。';
  @override
  String get migration_reexport => '重新導出';
  @override
  String get migration_batch_core_label => '設定、進度與統計';
  @override
  String get migration_import_entry => '從 Hibiki 導入';
  @override
  String get migration_import_entry_subtitle => '導入舊版 Hibiki 導出的數據';
  @override
  String get migration_import_detected => '檢測到 Hibiki 遷移數據，現在導入？';
  @override
  String get migration_import_start => '開始導入';
  @override
  String migration_import_running({required Object batch}) => '正在導入 ${batch}…';
  @override
  String migration_import_verify_failed({
    required Object batch,
    required Object detail,
  }) => '${batch} 校驗未通過，已保留待重傳：${detail}';
  @override
  String migration_import_counts_failed({required Object detail}) =>
      '導入數據不完整：${detail}。請回 Hibiki 重新導出缺失部分後再導入。';
  @override
  String get migration_import_success => '導入完成，校驗通過。';
  @override
  String get migration_import_nothing => '中轉目錄中沒有找到遷移數據。';
  @override
  String get migration_uninstall_prompt => '遷移完成。解除安裝舊版 Hibiki？';
  @override
  String get migration_uninstall_button => '解除安裝 Hibiki';
  @override
  String get migration_uninstall_still_installed =>
      '舊版 Hibiki 仍安裝在設備上，可隨時解除安裝。';
  @override
  String get migration_import_permission_title => '需要檔案訪問權限';
  @override
  String get migration_import_permission_body =>
      '中轉目錄是舊版應用創建的。沒有「所有檔案訪問權限」，Fushi 讀不了它——數據是完好的，只是打不開。';
  @override
  String get migration_import_permission_grant => '去授權';
  @override
  String migration_import_verifying({
    required Object batch,
    required Object done,
    required Object total,
  }) => '正在校驗 ${batch}（${done}/${total}）';
  @override
  String get migration_import_verifying_hint => '正在核對歸檔校驗和。庫很大時需要幾分鐘。';
  @override
  String get game_line_copy_tooltip => '復製句子';
  @override
  String get game_japanese_locale_auto => '自動';
  @override
  String get game_japanese_locale_on => '始終開啟';
  @override
  String get game_japanese_locale_off => '關閉';
  @override
  String get game_japanese_locale => '日語區域（轉區）';
  @override
  String get game_japanese_locale_hint => '漢化版/英化版請選「關閉」，否則啟動即閃退';
  @override
  String get video_scrape_diagnostic_export => '導出刮削診斷包';
  @override
  String get video_scrape_diagnostic_confirm_title => '導出刮削診斷包？';
  @override
  String get video_scrape_diagnostic_saved => '診斷包已保存';
  @override
  String video_scrape_diagnostic_failed({required Object reason}) =>
      '無法導出診斷包：${reason}';
  @override
  String get video_scrape_diagnostic_share_subject => 'Fushi 影片刮削診斷';
  @override
  String get video_scrape_diagnostic_confirm_body =>
      '診斷包包含相對檔案/目錄名、刮削摘要和原始 NFO 內容；不會加入影片、字幕、圖片、絕對路徑、應用配置或應用憑據。原始 NFO 會原樣保留，仍可能含有個人資訊或密鑰，請在公開分享前檢查。';
  @override
  String get video_discovery_search_hint => '搜索電影、劇集、動漫';
  @override
  String get video_discovery_hot => '熱門推薦';
  @override
  String get video_discovery_seasonal_anime => '本季動漫';
  @override
  String get video_discovery_all_works => '全部作品';
  @override
  String get video_discovery_search_results => '搜索結果';
  @override
  String get video_discovery_provider_warning => '部分來源暫不可用，已顯示其餘結果';
  @override
  String get video_discovery_load_failed => '發現內容加載失敗';
  @override
  String get video_discovery_empty => '沒有匹配的作品';
  @override
  String get video_discovery_resource_search => '搜索資源';
  @override
  String get video_discovery_subtitle_search => '搜索字幕';
  @override
  String get video_discovery_subscribe => '訂閱';
  @override
  String get video_discovery_subscription_manage => '管理訂閱';
  @override
  String get video_discovery_pipeline_idle => '未下載 → 下載 → 整理 → 字幕 → 刮削 → 入庫';
  @override
  String get video_discovery_details_load_failed => '作品詳情加載失敗';
  @override
  String get video_discovery_sort_popularity => '熱度';
  @override
  String get video_discovery_sort_rating => '評分';
  @override
  String get video_discovery_sort_release => '上映時間';
  @override
  String get video_discovery_in_library => '已入庫';
  @override
  String get video_discovery_play => '播放';
  @override
  String get download_resources_tab => '資源';
  @override
  String get video_external_settings_section => '外部資源與字幕來源';
  @override
  String get video_torznab_settings_title => 'Torznab 索引器';
  @override
  String get video_torznab_add => '添加索引器';
  @override
  String get video_torznab_name => '名稱';
  @override
  String get video_torznab_endpoint => '端點';
  @override
  String get video_torznab_endpoint_hint => '除回環地址外必須使用 HTTPS。';
  @override
  String get video_torznab_api_key => 'API 密鑰';
  @override
  String get video_torznab_priority => '優先級';
  @override
  String get video_torznab_categories => '分類';
  @override
  String get video_torznab_categories_hint => '用逗號分隔的數字分類 ID';
  @override
  String get video_external_enabled => '已啟用';
  @override
  String get video_external_insecure_http => '允許不安全的 HTTP';
  @override
  String get video_external_insecure_http_hint => '僅用於可信的局域網端點。';
  @override
  String get video_external_endpoint_invalid => '請輸入不含憑據、查詢參數或片段的有效端點。';
  @override
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  @override
  String get video_opensubtitles_user_agent => 'User-Agent';
  @override
  String get video_opensubtitles_languages_hint => '用逗號分隔語言代碼，例如 zh-CN,en,ja';
  @override
  String get video_download_path_mappings_title => 'qBittorrent 路徑映射';
  @override
  String get video_download_path_mappings_hint =>
      '將每個 qBittorrent 遠程根目錄映射到本機可訪問的資料夾。';
  @override
  String get video_download_path_mapping_add => '添加路徑映射';
  @override
  String get video_download_backend_profile_id => '後端配置 ID';
  @override
  String get video_download_remote_root => '遠程根目錄';
  @override
  String get video_download_local_root => '本機根目錄';
  @override
  String get video_download_target_source_title => '預設受管影片來源';
  @override
  String get video_download_target_source_hint => '新下載會整理到此本地影片來源中。';
  @override
  String get video_download_target_source_none => '選擇本地影片來源';
  @override
  String get video_external_remove => '移除';
  @override
  String get video_external_username_optional => '用戶名（可選）';
  @override
  String get video_external_password_optional => '密碼（可選）';
  @override
  String get video_external_api_key => 'API 密鑰';
  @override
  String get video_external_save_error => '無法保存配置，請檢查標出的字段。';
  @override
  String get video_external_categories_invalid => '分類必須是用逗號分隔的數字 ID。';
  @override
  String get video_download_path_mapping_invalid => '請輸入配置 ID、遠程根目錄和本機絕對根目錄。';
  @override
  String get video_opensubtitles_endpoint => 'API 端點';
  @override
  String get video_download_target_source_empty => '沒有可訪問的本地影片來源。請先在來源頁添加。';
  @override
  String get video_setting_drag_seek_sensitivity => '拖動調進度靈敏度';
  @override
  String get video_setting_drag_seek_sensitivity_hint =>
      '觸屏橫向滑動調進度時，劃過整屏寬度對應的時長：低約 45 秒、中約 90 秒、高約 180 秒。與影片總長無關。只影響觸屏拖動，滑鼠和鍵盤調進度不受影響。';
  @override
  String get video_setting_drag_seek_sensitivity_low => '低';
  @override
  String get video_setting_drag_seek_sensitivity_medium => '中';
  @override
  String get video_setting_drag_seek_sensitivity_high => '高';
  @override
  String video_subtitle_read_failed({required Object label}) =>
      '無法讀取該字幕檔案（內容損壞或為空）：${label}';
  @override
  String dict_downloading_size({
    required Object name,
    required Object done,
    required Object total,
  }) => '正在下載 ${name}（${done} / ${total}）';
  @override
  String get video_subtitle_attach_book_missing => '該影片不在影片庫中，字幕沒有掛上';
  @override
  String get dict_download_hide => '後台繼續';
  @override
  String get dict_download_progress_show => '查看進度';
  @override
  String get dict_download_cancelled => '已取消下載。';
  @override
  String get dict_download_import_uncancellable => '導入階段無法中斷';
  @override
  String get dict_download_busy => '已有詞典下載正在進行。';
  @override
  String get gal_hook_ingame_lookup => '遊戲內查詞';
  @override
  String get gal_hook_ingame_lookup_hint =>
      '在遊戲畫面內直接顯示詞典卡片（KiriKiri 引擎，僅 Windows）';
  @override
  String download_subscription_start_episode({required Object episode}) =>
      '從第 ${episode} 集開始';
  @override
  String get drag_drop_failed => '拖入的檔案處理失敗，請重試。';
  @override
  String get tag_add_failed => '標簽添加失敗，請重試。';
  @override
  String get tag_reorder_failed => '標簽排序保存失敗，請重試。';
  @override
  String get download_task_error_summary_source_missing => '受管影片來源不存在或不可訪問';
  @override
  String get download_task_error_summary_backend_unconfirmed =>
      '種子未能按哈希、標題、分類確認';
  @override
  String get download_task_error_summary_subtitle => '字幕不可用或未能安裝';
  @override
  String get download_task_error_summary_backend_unavailable => '下載後端不可用或不再匹配';
  @override
  String get download_task_error_summary_legacy => '舊版導入數據需要處理';
  @override
  String get download_task_error_summary_torrent_info => '種子資訊缺失或無法校驗';
  @override
  String get download_task_error_summary_generic => '任務出錯';
  @override
  String get download_task_error_view_detail => '查看詳情';
  @override
  String get download_task_error_detail_title => '錯誤詳情';
  @override
  String get download_task_error_copied => '錯誤詳情已復製';
  @override
  String get download_task_lifecycle_active => '進行中';
  @override
  String get download_task_lifecycle_needs_attention => '需要處理';
  @override
  String get download_task_location_missing => '找不到該任務對應的檔案位置。';
  @override
  String get download_task_location_open_failed => '無法打開檔案位置。';
  @override
  String get download_task_open_location => '打開檔案位置';
  @override
  String get download_task_lifecycle_completed => '已完成';
  @override
  String get download_task_lifecycle_failed => '已失敗';
  @override
  String get download_task_lifecycle_cancelled => '已取消';
  @override
  String get download_task_stage_enqueue => '入隊';
  @override
  String get download_task_stage_download => '下載';
  @override
  String get download_task_stage_organize => '整理';
  @override
  String get download_task_stage_subtitle => '字幕';
  @override
  String get download_task_stage_import => '入庫';
  @override
  String get download_task_stage_scrape => '刮削';
  @override
  String get video_discovery_manual_identity_hint => '填寫標題、外部 ID 和年份後才能搜索';
  @override
  String get collection_split_move_to => '移動到';
  @override
  String get collection_split_new_group => '新建分組';
  @override
  String collection_split_selected({required Object n}) => '已選 ${n} 集';
  @override
  String get sync_pair_rate_limited => '嘗試次數過多，請等幾分鐘後重試。';
  @override
  String get sync_pair_tls_failed => '證書校驗失敗：對端證書與已記錄的指紋不符。';
  @override
  String get sync_pair_timeout => '對端沒有及時響應。';
  @override
  String get sync_pair_expired => '配對會話已超時，請重新發起配對。';
  @override
  String get sync_pair_upgrade_required =>
      '對方版本過舊，無法在當前網路下安全配對（需要 PIN）。請更新對方後重新配對。';
  @override
  String get sync_pair_fingerprint_changed_title => '證書已變更';
  @override
  String get sync_pair_fingerprint_stored_label => '此前已釘扎';
  @override
  String get sync_pair_fingerprint_new_label => '本次握手所見';
  @override
  String get sync_pair_fingerprint_retrust => '清除已存指紋並重新信任';
  @override
  String get sync_pair_fingerprint_changed_body =>
      '這條地址此前釘扎的是另一張證書。只有在你確知對方重裝/重置過設備時才繼續，否則連接可能正被中間人攔截。';
  @override
  String get interconnect_upload_section_footer =>
      '選擇本設備要把哪些內容上傳給已連接的互聯對端。與雲備份的同名開關互不影響，且預設全部關閉。本組開關只在「啟用互聯」打開時生效：關掉互聯，這裡的上傳全部停止。';
  @override
  String get remote_delete_audiobook_partial => '書已在對端刪除，但它的有聲書沒能刪掉';
  @override
  String get download_detail_task_queued =>
      '排隊中：正在等其他下載讓出槽位。任務還沒交給下載器，所以暫時沒有實時節點和 Tracker 數據。';
  @override
  String video_subscription_group_release_count({required Object count}) =>
      '共 ${count} 個發布';
  @override
  String get download_task_priority => '排隊優先級';
  @override
  String get download_task_priority_high => '高';
  @override
  String get download_task_priority_normal => '普通';
  @override
  String get download_task_priority_low => '低';
  @override
  String get library_view_import => '導入';
  @override
  String get quick_import_title => '快速導入';
  @override
  String get media_source_section_title => '常駐來源';
  @override
  String get media_import_folder => '導入資料夾';
  @override
  String get media_import_folder_as_source => '設為常駐來源';
  @override
  String get book_import_folder_as_source_hint => '以後自動掃描此資料夾裡的新書';
  @override
  String get media_import_folder_once => '僅導入這一次';
  @override
  String get library_empty_go_import => '去導入';
  @override
  String get game_import_drop_hint => '也可以把 .exe 檔案直接拖進遊戲庫添加';
  @override
  String get library_view_sources => '來源';
  @override
  String get video_setting_secondary_av_delay => '副字幕調軸';
  @override
  String get video_setting_secondary_av_delay_hint => '副字幕獨立偏移；未單獨設定時跟隨主字幕調軸。';
  @override
  String get video_setting_secondary_delay_follow => '跟隨主字幕';
  @override
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      '副字幕同步：${ms} ms';
  @override
  String get video_subtitle_secondary_delay_follow_osd => '副字幕同步：跟隨主字幕';
  @override
  String get video_setting_subtitle_anchor => '主字幕錨定';
  @override
  String get video_subtitle_anchor_bottom => '底部';
  @override
  String get video_subtitle_anchor_top => '頂部';
  @override
  String get video_setting_subtitle_drag_adjust => '拖拽調整位置';
  @override
  String get video_subtitle_drag_adjust_hint => '上下拖動字幕調整位置';
  @override
  String get anki_connect_mobile_disabled_key_cleared =>
      '移動端使用 AnkiConnect 必須填 API key，清空後已自動關閉該開關，Anki 改回走內置後端。';
  @override
  String manga_import_batch_hint({required Object n}) =>
      '該資料夾裡有 ${n} 個整卷檔案，將逐卷各導入為一本，書名取各自的檔案名。';
  @override
  String manga_import_batch_done({
    required Object imported,
    required Object skipped,
    required Object failed,
  }) => '導入完成：成功 ${imported} 卷，跳過 ${skipped} 卷，失敗 ${failed} 卷。';
  @override
  String get srt_book_reimport => '重新導入';
  @override
  String get srt_book_reimport_subtitle_hint => '替換字幕會用新字幕重建這本書的正文。';
  @override
  String get srt_book_reimport_no_cues => '該字幕檔案解析不出任何字幕行';
  @override
  String get srt_book_reimport_body_rebuilt => '正文已重建，請重新打開本書';
  @override
  String get video_setting_torrent_backend_embedded => '內置引擎';
  @override
  String get download_backend_unsupported_note =>
      '本平台無內置引擎，下載使用外接 qBittorrent。';
  @override
  String get aidoku_runtime_unavailable => 'Aidoku 擴展目前僅支持 macOS。';
  @override
  String get aidoku_extensions_title => 'Aidoku 擴展';
  @override
  String get aidoku_extension_empty => '尚未安裝 Aidoku 擴展。';
  @override
  String get aidoku_extension_remove => '移除 Aidoku 擴展';
  @override
  String get aidoku_extension_warning =>
      'Aidoku 擴展會執行具有網路訪問權限的第三方 WebAssembly 代碼。請只導入你信任的來源。';
  @override
  String get aidoku_webview_unsupported => '此擴展依賴尚未支持的 Aidoku WebView API。';
  @override
  String get aidoku_extension_imported => 'Aidoku 擴展已導入';
  @override
  String get aidoku_extension_import => '導入 Aidoku 擴展（.aix）';
  @override
  String get aidoku_extension_confirm_title => '安裝 Aidoku 擴展？';
  @override
  String get aidoku_extension_version => '版本';
  @override
  String get aidoku_repository_url => '倉庫地址';
  @override
  String get aidoku_repository_sources => '倉庫擴展';
  @override
  String get aidoku_repository_identity_mismatch => '下載的擴展包與倉庫索引不一致。';
  @override
  String get aidoku_repository_installed => '已安裝';
  @override
  String get aidoku_repository_search => '搜索倉庫擴展';
  @override
  String get aidoku_repository_install => '安裝';
  @override
  String get aidoku_repository_update => '更新';
  @override
  String get aidoku_repository_add => '添加 Aidoku 倉庫';
  @override
  String get aidoku_repository_added => 'Aidoku 倉庫已添加';
  @override
  String get aidoku_repository_browse => '瀏覽倉庫';
  @override
  String get aidoku_repository_hint =>
      '貼上 Aidoku 倉庫主頁或 index.min.json 地址。預設已填入社區倉庫。';
  @override
  String get aidoku_repository_remove => '移除倉庫';
  @override
  String get aidoku_repository_empty => '尚未添加 Aidoku 倉庫。';
  @override
  String get dict_language_tooltip => '內容語言';
  @override
  String get dict_language_title => '詞典內容語言';
  @override
  String get dict_language_description => '決定這本詞典的文字用哪種字體渲染。自動 = 用詞典自己聲明的語言。';
  @override
  String get dict_language_auto => '自動';
  @override
  String get book_language_action => '內容語言';
  @override
  String get book_language_description => '決定這本書的正文用哪種字體渲染。自動 = 用 EPUB 裡聲明的語言。';
  @override
  String get local_audio_reference_unavailable =>
      '沒有「所有檔案訪問權限」無法引用原檔案，已改為導入副本。';
  @override
  String get video_collection_scrape => '刮削資料與封面';
  @override
  String get update_testflight_open => '打開 TestFlight';
  @override
  String get update_app_store_open => '打開 App Store';
  @override
  String get update_release_page_open => '發布頁';
  @override
  String update_install_gal_hook_holder({
    required Object pid,
    required Object path,
  }) => 'Galgame 捕獲組件被佔用：PID ${pid} - ${path}（這是你正在玩的遊戲或它的捕獲宿主進程）。請先關閉遊戲再更新。';
  @override
  String get game_hook_reason_protocol_mismatch =>
      '捕獲組件與本體版本不一致。組件已內置在 Fushi 裡，不需要單獨安裝：先徹底關掉遊戲再重開一次（遊戲進程裡可能還掛着上一次注入的舊組件）。若重開後仍提示不一致，說明磁碟上的組件比 Fushi 舊——上次更新 Fushi 時遊戲正開着，安裝器換不掉被佔用的組件檔案。請關閉所有遊戲，然後重新運行一次 Fushi 安裝程式。';
  @override
  String get video_mining_still_format => '影片卡片截圖格式';
  @override
  String get video_mining_still_format_hint =>
      '選「製卡時截圖」或「字幕開頭截圖」時那張圖用什麼編碼。JPG 體積小得多；PNG 無損但大好幾倍。動圖封面不受影響，它跟隨「動圖格式」那一項。';
  @override
  String get mining_still_format_jpg => 'JPG（體積更小）';
  @override
  String get mining_still_format_png => 'PNG（無損）';
  @override
  String get gal_mining_still_format => '遊戲卡片截圖格式';
  @override
  String get gal_mining_still_format_hint =>
      '與影片卡片同樣的格式，但分開保存。遊戲視窗抓圖本身是 PNG：選 PNG 無損但大好幾倍，選 JPG 與這些截圖過去的壓縮方式一致。';
  @override
  String get manga_source_cloudflare_blocked =>
      '該來源受 Cloudflare 保護，內置閱讀器暫時無法訪問。';
  @override
  String get manga_global_search_title => '搜索全部來源';
  @override
  String get manga_global_search_hint => '搜索所有已啟用來源';
  @override
  String get manga_global_search_prompt => '輸入書名，一次搜索所有已啟用的漫畫來源。';
  @override
  String get anki_connect_addon_install => '安裝 AnkiConnect';
  @override
  String get anki_connect_addon_install_hint =>
      '從 AnkiWeb 下載 AnkiConnect 並交給正在運行的 Anki。Anki 會彈窗請你確認，之後按它的提示重啟。';
  @override
  String get anki_connect_addon_handed =>
      '已把 AnkiConnect 交給 Anki。請在 Anki 彈出的確認框中同意，然後按 Anki 的提示重啟。';
  @override
  String get anki_connect_addon_anki_not_running =>
      '沒有檢測到正在運行的 Anki。請先啟動 Anki 桌面版再試。';
  @override
  String anki_connect_addon_download_failed({required Object error}) =>
      '無法從 AnkiWeb 下載 AnkiConnect：${error}';
  @override
  String get anki_connect_addon_invalid => 'AnkiWeb 返回的內容不是可用的插件包。';
  @override
  String anki_connect_addon_launch_failed({required Object error}) =>
      '無法把插件交給 Anki：${error}';
  @override
  String get settings_content_language_title => '預設內容語言';
  @override
  String get settings_content_language_unset => '未設定';
  @override
  String get settings_content_language_description =>
      '內容沒有聲明語言時用的預設值。書/影片/遊戲/詞典各自的設定會覆蓋它。';
  @override
  String get manga_ocr_lens_language_label => '識別語言';
  @override
  String get sync_err_peer_unreachable => '無法連接配對設備——對方可能不在線，或對端未運行 Fushi。';
  @override
  String get remote_book_list_failed => '無法獲取配對設備的遠端書庫。';
  @override
  String get video_torznab_settings_hint =>
      '配置一個或多個 Jackett、Prowlarr 或兼容的 Torznab 端點。密鑰絕不隨備份導出；可隨互聯同步到已配對設備（可在互聯設定中關閉）。';
  @override
  String get video_opensubtitles_settings_hint =>
      'API 憑據絕不隨備份導出；可隨互聯同步到已配對設備（可在互聯設定中關閉）。';
  @override
  String get sync_interconnect_service_config_toggle => '同步主機服務配置';
  @override
  String get sync_interconnect_service_config_toggle_desc =>
      '經加密互聯通道接收已配對主機的外部服務設定與 API key（Jimaku、TMDB、Torznab、OpenSubtitles、追番）。需啟用 TLS。';
  @override
  String get video_setting_subtitle_backfill => '刮削後自動補字幕';
  @override
  String get video_setting_subtitle_backfill_hint =>
      '刮削完成後，仍然沒有字幕的影片會自動從已配置的在線字幕來源取一條。絕不覆蓋已有字幕。';
  @override
  String get video_setting_subtitle_sources_section => '在線字幕來源';
  @override
  String get video_subtitle_no_source_configured => '沒找到字幕 · 去配置在線字幕來源';
  @override
  String get anime_download_subs_retrying => '字幕：還沒上傳，稍後自動重試';
  @override
  String get video_jimaku_language_follow_video => '跟隨影片語言';
  @override
  String get video_setting_jimaku_default_language_hint =>
      '預設跟隨影片自身的語言（音軌 / 刮削元數據）。選定某個語言則始終優先它。';
  @override
  String get onboarding_title => '新手引導';
  @override
  String get onboarding_welcome_headline => '歡迎使用！';
  @override
  String get onboarding_feature_anki => 'Anki 製卡';
  @override
  String get onboarding_feature_anki_hint =>
      '連接 AnkiConnect / AnkiDroid，查詞一鍵製卡';
  @override
  String get onboarding_feature_backup => '備份與同步';
  @override
  String get onboarding_feature_backup_hint => '把數據備份到 Google Drive、WebDAV 等後端';
  @override
  String get onboarding_feature_interconnect => '設備互聯';
  @override
  String get onboarding_feature_interconnect_hint => '局域網配對多台設備，共享書庫與進度';
  @override
  String get onboarding_step_dictionary_action => '打開詞典管理';
  @override
  String get onboarding_step_anki_title => '配置 Anki';
  @override
  String get onboarding_step_anki_action => '打開製卡設定';
  @override
  String get onboarding_step_backup_title => '配置備份';
  @override
  String get onboarding_step_backup_body => '選擇備份後端並登錄，也可以導出本地備份檔案。';
  @override
  String get onboarding_step_backup_action => '打開備份設定';
  @override
  String get onboarding_step_interconnect_title => '配置互聯';
  @override
  String get onboarding_step_interconnect_body =>
      '開啟互聯，與局域網內其他設備配對，共享書庫、進度與查詞。';
  @override
  String get onboarding_step_interconnect_action => '打開互聯設定';
  @override
  String get onboarding_finish_title => '一切就緒';
  @override
  String get onboarding_finish_body => '之後隨時可以在「設定 → 系統」裡重新打開本引導。';
  @override
  String get onboarding_action_next => '下一步';
  @override
  String get onboarding_action_finish => '完成';
  @override
  String get onboarding_action_skip => '暫時跳過';
  @override
  String get onboarding_reopen => '新手引導';
  @override
  String get onboarding_welcome_body => '先選好界面語言與明暗主題，接下來會帶你逐項完成配置。';
  @override
  String get onboarding_features_title => '選擇要用的功能';
  @override
  String get onboarding_features_modules_label => '庫頁顯示（未勾選的將從底欄隱藏，可隨時在設定裡改回）';
  @override
  String get onboarding_features_setup_label => '接下來要配置';
  @override
  String get onboarding_feature_manga => '漫畫庫';
  @override
  String get onboarding_feature_manga_hint => '看漫畫，支持 OCR 查詞';
  @override
  String get onboarding_feature_video => '影片庫';
  @override
  String get onboarding_feature_video_hint => '看影片，字幕查詞與製卡';
  @override
  String get onboarding_feature_games => 'Galgame 庫';
  @override
  String get onboarding_feature_games_hint =>
      '啟動 galgame，文本 Hook 查詞（僅 Windows）';
  @override
  String get onboarding_feature_pack => '推薦包（詞典 + 發音音頻）';
  @override
  String get onboarding_feature_pack_hint => '一次下載配好日語推薦詞典與日/英發音音頻庫';
  @override
  String get onboarding_step_pack_title => '安裝推薦包';
  @override
  String get onboarding_step_pack_body =>
      '推薦包內含日語單詞/音調/詞頻詞典與日/英發音音頻資料庫。可在此直接下載並導入；導入會覆蓋本地數據，建議在全新安裝時進行。學其他語言可用「打開詞典管理」自行導入詞典。';
  @override
  String get onboarding_step_pack_download_action => '下載並導入';
  @override
  String get onboarding_step_pack_import_existing_action => '導入已下載的包';
  @override
  String get onboarding_step_pack_pick_action => '選擇本地包檔案';
  @override
  String get onboarding_pack_downloading => '下載中……可隨時取消，下次續傳';
  @override
  String onboarding_pack_download_failed({required Object message}) =>
      '下載失敗：${message}';
  @override
  String get onboarding_step_extension_title => '瀏覽器擴展';
  @override
  String get onboarding_step_extension_body => '安裝配套瀏覽器擴展，在任意網頁上查詞。';
  @override
  String get onboarding_step_extension_action => '打開擴展安裝引導';
  @override
  String get onboarding_step_fonts_title => '配置字體';
  @override
  String get onboarding_step_fonts_body => '導入自定義字體，並選擇界面/正文/詞典分別使用哪套字體。';
  @override
  String get settings_section_modules => '功能模塊';
  @override
  String get module_toggle_hint => '在底欄/側欄顯示該庫頁；關閉即隱藏';
  @override
  String get video_setting_youtube_quality => 'YouTube 畫質';
  @override
  String get video_setting_youtube_quality_hint =>
      '起播自動選不超過目標的最高檔；「自動」優先流暢（硬解友好編碼，最高 1080p）';
  @override
  String get library_view_discover => '發現';
  @override
  String get manga_discovery_section_trending => '趨勢';
  @override
  String get manga_discovery_section_popular => '熱門';
  @override
  String get manga_discovery_section_top_rated => '高分';
  @override
  String get manga_discovery_section_latest_finished => '最新完結';
  @override
  String get manga_discovery_load_failed => '發現內容加載失敗。';
  @override
  String get manga_discovery_match_section => '來源匹配';
  @override
  String get manga_discovery_match_running => '正在已啟用來源中匹配…';
  @override
  String get manga_discovery_match_none => '已啟用來源中未找到匹配。';
  @override
  String get manga_discovery_status_releasing => '連載中';
  @override
  String get manga_discovery_status_finished => '已完結';
  @override
  String get manga_discovery_status_hiatus => '休刊中';
  @override
  String get manga_discovery_status_cancelled => '已腰斬';
  @override
  String get manga_discovery_status_not_yet_released => '未發售';
  @override
  String manga_discovery_source_popular({required Object source}) =>
      '${source} · 熱門';
  @override
  String get mihon_extension_error => '擴展錯誤';
  @override
  String get discovery_all_sources => '全部源';
  @override
  String get discovery_search_hint => '搜索在線資源';
  @override
  String get discovery_enter_query_hint => '輸入關鍵詞搜索';
  @override
  String get discovery_empty => '無結果';
  @override
  String get discovery_partial_failure => '部分源不可用';
  @override
  String get discovery_load_more => '加載更多';
  @override
  String get discovery_download_queued => '已加入下載';
  @override
  String get discovery_torrent_pushed => '種子任務已添加';
  @override
  String get discovery_torrent_failed => '種子任務添加失敗';
  @override
  String get discovery_kind_novel => '小說';
  @override
  String get discovery_kind_audiobook => '有聲書';
  @override
  String get discovery_source_pick_hint => '選擇來源瀏覽，或輸入關鍵詞搜索全部來源';
  @override
  String get discovery_source_query_required => '該來源只支持關鍵詞搜索';
  @override
  String get manga_discovery_sources_browse => '瀏覽來源';
  @override
  String get discovery_kind_manga => '漫畫';
  @override
  String get game_capture_workbench_tab => '工作台';
  @override
  String get video_builtin_sources_title => '內置來源';
  @override
  String get video_resource_no_provider_title => '未配置資源索引器';
  @override
  String get video_subtitle_no_provider_title => '未配置字幕來源';
  @override
  String get video_subtitle_no_provider_hint =>
      '請在 設定 → 下載 → 外部資源與字幕來源 中填寫 Jimaku API key 或啟用 OpenSubtitles。';
  @override
  String get anime_download_require_subs => '必須有字幕';
  @override
  String get video_jimaku_scope_hint => '為動漫與日語真人影視提供日語字幕。需要免費 API key。';
  @override
  String get video_builtin_apibay_hint => '電影與劇集。公共索引，無需賬號。';
  @override
  String get video_builtin_knaben_hint => '電影與劇集。聚合多家公共索引器。';
  @override
  String get video_jimaku_enabled_hint => '關閉後即使已填 API key 也不再搜索 Jimaku。';
  @override
  String get discovery_sources_settings_title => '發現來源';
  @override
  String get discovery_sources_settings_hint =>
      '哪些內置來源參與發現頁「全部源」聚合搜索。在源下拉裡顯式單選某個源不受此處影響。';
  @override
  String get video_builtin_sources_hint =>
      '隨應用內置：無需賬號，無需 API key。關閉後該來源不再參與資源搜索。';
  @override
  String get video_builtin_nyaa_hint => '僅動漫。電影與劇集由下面兩個公共索引器覆蓋。';
  @override
  String get video_resource_no_provider_hint =>
      '本次搜索沒有可用的來源。請到 設定 → 下載 → 外部資源與字幕來源 重新啟用內置來源，或添加 Torznab 索引器。';
  @override
  String discovery_source_kinds_label({required Object kinds}) => '覆蓋：${kinds}';
  @override
  String get video_source_scrape_rescrape_source => '重新刮削此來源';
  @override
  String get video_source_scrape_run_detail_title => '刮削結果';
  @override
  String get video_source_scrape_run_no_issues => '本次刮削沒有記錄警告或錯誤。';
  @override
  String get video_source_scrape_manual_search_title => '手動指定作品';
  @override
  String get video_source_scrape_manual_search_hint => '按標題搜索資料源，然後選中正確的作品。';
  @override
  String get video_source_scrape_manual_search_action => '搜索';
  @override
  String get video_source_scrape_manual_search_empty => '沒有搜索結果';
  @override
  String get profile_media_manga => '漫畫';
  @override
  String get profile_media_game => '遊戲';
  @override
  String get profile_media_browser => '瀏覽器';
  @override
  String get mihon_store_remove => '移除擴展倉庫';
  @override
  String get video_import_folder_as_source_hint => '以後自動掃描此資料夾裡的新影片';
  @override
  String get manga_import_folder_as_source_hint => '以後自動掃描此資料夾裡的新漫畫';
  @override
  String get download_no_managed_video_source =>
      '還沒有受管影片來源。下載完成的影片需要一個本地影片資料夾才能入庫。';
  @override
  String get download_add_video_source => '添加影片來源';
  @override
  String get video_subtitle_prev_cue_align => '上一句對齊到當前';
  @override
  String get video_subtitle_next_cue_align => '下一句對齊到當前';
  @override
  String video_control_custom_action({required Object index}) => '快捷鍵 ${index}';
  @override
  String get video_control_custom_action_none => '不綁定';
  @override
  String get settings_destination_storage => '存儲';
  @override
  String get settings_destination_storage_summary => '數據位置與磁碟佔用';
  @override
  String get storage_overview_section => '磁碟佔用';
  @override
  String get storage_overview_total => '總計';
  @override
  String get storage_overview_refresh => '重新掃描';
  @override
  String get storage_overview_scanning => '掃描中…';
  @override
  String get storage_category_books => '書籍與有聲書';
  @override
  String get storage_category_dictionaries => '詞典';
  @override
  String get storage_category_video_downloads => '影片下載';
  @override
  String get storage_category_covers => '封面與縮略圖';
  @override
  String get storage_category_subtitles => '字幕';
  @override
  String get storage_category_shaders => '影片着色器';
  @override
  String get storage_category_custom_fonts => '自定義字體';
  @override
  String get storage_category_web => '網頁存檔與瀏覽器數據';
  @override
  String get storage_category_exports => '導出檔案';
  @override
  String get storage_category_database => '資料庫與內部數據';
  @override
  String get storage_category_ocr_models => '漫畫 OCR 模型';
  @override
  String storage_entry_more_rest({required Object n, required Object size}) =>
      '其餘 ${n} 項，共 ${size}';
  @override
  String storage_entry_delete_confirm_title({required Object name}) =>
      '刪除「${name}」？';
  @override
  String get storage_entry_delete_book_confirm_body =>
      '將從本設備刪除這本書的正文、閱讀進度與配對音頻副本。';
  @override
  String get storage_entry_delete_dictionary_confirm_body => '將刪除該詞典及其已導入數據。';
  @override
  String get storage_entry_delete_done => '已刪除';
  @override
  String storage_entry_delete_failed({required Object reason}) =>
      '刪除失敗：${reason}';
  @override
  String get storage_modules_anime4k_title => 'Anime4K 着色器';
  @override
  String get storage_modules_anime4k_hint => '可隨時在影片設定的畫質增強裡重新下載';
  @override
  String storage_modules_anime4k_delete_done({required Object n}) =>
      '已刪除 ${n} 個着色器檔案';
  @override
  String get storage_bundled_section => '隨包組件';
  @override
  String get storage_bundled_hint => '隨安裝包攜帶，刪除後下次更新會自動恢復，此處僅展示。';
  @override
  String get storage_dictionary_delete_incomplete => '詞典刪除未完成、條目仍在，詳見錯誤日志';
  @override
  String get module_extension_label => '瀏覽器擴展';
  @override
  String get onboarding_feature_books => '小說庫';
  @override
  String get onboarding_feature_books_hint => '看小說（EPUB），查詞與有聲書同步';
  @override
  String get onboarding_feature_extension_hint => '網頁查詞（僅桌面）';
  @override
  String get video_setting_tap_toggles_playback => '點擊畫面播放/暫停';
  @override
  String get video_setting_tap_toggles_playback_hint =>
      '關閉後點擊畫面只喚醒控製條，不再切換播放/暫停';
  @override
  String get manga_ocr_engine_auto_desc => '優先用你已配好的離線引擎，不會自作主張上傳到 Lens。';
  @override
  String get manga_ocr_engine_local_onnx_desc => '完全離線，質量最好。需要一次性下載模型，老設備上較慢。';
  @override
  String get manga_ocr_engine_google_lens_desc =>
      '需要聯網，會把頁面圖片上傳給 Google。速度快、不用下模型，但質量不如本地模型。';
  @override
  String get manga_ocr_engine_external_desc => '調用你自己安裝的 mokuro 命令行，僅桌面可用。';
  @override
  String get manga_ocr_engine_paired_host_desc => '交給局域網裡已配對的設備來跑，本機不下任何模型。';
  @override
  String manga_ocr_model_disk_usage({required Object size}) => '已佔用 ${size}';
  @override
  String manga_ocr_model_download_size({required Object size}) => '需下載 ${size}';
  @override
  String manga_ocr_delete_done_freed({required Object size}) =>
      '模型已刪除，釋放 ${size}';
  @override
  String get manga_ocr_model_unused_by_engine => '當前引擎用不到這些本地模型檔案。';
  @override
  String manga_ocr_download_total_progress({
    required Object done,
    required Object total,
  }) => '${done} / ${total}';
  @override
  String get media_source_network_subtitle_video => 'WebDAV 遠程庫（原地串流）';
  @override
  String get jellyfin_settings_title => '媒體伺服器（Jellyfin / Emby）';
  @override
  String get jellyfin_server_url => '伺服器地址';
  @override
  String get jellyfin_sign_in => '登錄';
  @override
  String get jellyfin_sign_out => '退出登錄';
  @override
  String get jellyfin_sign_in_failed => '登錄失敗';
  @override
  String get jellyfin_settings_hint => '伺服器上的影片會出現在媒體庫中，點擊直接串流播放。';
  @override
  String get video_setting_mpv_lua_scripts => '加載 Lua 腳本';
  @override
  String get video_setting_mpv_lua_scripts_hint =>
      '裝載 mpv_scripts 目錄裡的全部 .lua 腳本。關閉在下次打開影片時生效。';
  @override
  String get video_setting_mpv_lua_scripts_import => '導入 Lua 腳本';
  @override
  String get video_setting_mpv_lua_scripts_imported => '腳本已導入';
  @override
  String get video_setting_mpv_lua_scripts_dir_copy => '復製腳本目錄路徑';
  @override
  String get video_setting_mpv_lua_scripts_dir_copied => '已復製目錄路徑';
  @override
  String get interconnect_share_statistics => '共享統計';
  @override
  String get interconnect_share_statistics_hint => '閱讀與觀看時長、字數、查詞與製卡計數';
  @override
  String get interconnect_share_favorites => '共享收藏夾';
  @override
  String get interconnect_share_favorites_hint => '收藏的詞與句子，取消收藏也會同步';
  @override
  String get interconnect_share_section => '與已配對設備共享';
  @override
  String get interconnect_share_section_footer =>
      '這些內容與已配對設備雙向合併，預設開啟。關掉後本設備既不再發送，也不再接收。';
  @override
  String get game_hook_mining_no_session_lines =>
      '本局還沒有捕獲到任何台詞，卡片無處掛靠。請在工作台換一條文本線程。';
  @override
  String get shortcut_action_manga_pan_up => '向上平移';
  @override
  String get shortcut_action_manga_pan_down => '向下平移';
  @override
  String get shortcut_action_manga_pan_left => '向左平移';
  @override
  String get shortcut_action_manga_pan_right => '向右平移';
  @override
  String get drag_drop_folder_source_added => '已把資料夾添加為來源並開始掃描';
  @override
  String get drag_drop_folder_source_exists => '該資料夾已經是來源了';
  @override
  String get sync_pair_invalid_url => '地址格式無效';
  @override
  String get sync_pair_peer_requires_https =>
      '該設備只接受 HTTPS，請改用 https:// 開頭的地址。';
  @override
  String get sync_pair_peer_not_https => '對端在該端口未啟用 HTTPS，請改用 http:// 開頭的地址。';
  @override
  String get sync_pair_not_fushi_discovered => '此地址未找到 Fushi 設備。';
  @override
  String get shortcut_action_popup_play_audio => '播放單詞發音';
  @override
  String get sync_progress_asset_transfer => '準備傳輸';
  @override
  String get sync_asset_dictionary_upload => '上傳詞典';
  @override
  String get sync_asset_dictionary_download => '下載詞典';
  @override
  String get sync_asset_local_audio_upload => '上傳本地音頻資料庫';
  @override
  String get sync_asset_local_audio_download => '下載本地音頻資料庫';
  @override
  String get sync_asset_upload_hint => '把本機有、遠端沒有的推送過去。包可能很大。';
  @override
  String get sync_asset_upload_action => '上傳';
  @override
  String get sync_asset_download_action => '下載';
  @override
  String get sync_asset_download_hint => '把遠端有、本機沒有的取回來（含你在本機刪掉過的）。';
  @override
  String get sync_asset_legacy_notice_title => '詞典與本地音頻改為手動傳輸';
  @override
  String get sync_asset_legacy_notice_body =>
      '這台設備原先開着詞典與本地音頻資料庫的自動同步。該開關已移除——需要傳輸時請用下面的上傳 / 下載。已有數據不受影響，但新導入的詞典不會再自動備份。';
  @override
  String get sync_asset_legacy_notice_dismiss => '知道了';
  @override
  String get download_task_add => '添加任務';
  @override
  String get download_task_add_pick_torrent => '選擇種子檔案';
  @override
  String get download_task_add_title_label => '標題';
  @override
  String get download_task_add_content_kind => '內容類型';
  @override
  String get download_task_add_invalid => '無法識別的磁力連結或種子檔案';
  @override
  String get download_task_add_submitted => '已添加任務';
  @override
  String get download_task_search_hint => '搜索任務';
  @override
  String get download_task_sort_created => '添加時間';
  @override
  String get download_task_sort_progress => '進度';
  @override
  String get download_task_sort_status => '狀態';
  @override
  String get download_task_no_match => '沒有匹配的任務';
  @override
  String subtitle_version_episode_count({required Object n}) => '共 ${n} 集';
  @override
  String subtitle_version_unnumbered_count({required Object n}) => '${n} 個未編號';
  @override
  String get subtitle_version_ai_translated => '機翻';
  @override
  String get subtitle_version_content_language => '正文';
  @override
  String get subtitle_version_show_files => '展開檔案';
  @override
  String get subtitle_version_view_files => '檔案視圖';
  @override
  String get resource_version_batch => '合集';
  @override
  String get resource_version_view_flat => '全部條目';
  @override
  String get subscription_mode_one_shot => '單次';
  @override
  String get subscription_mode_ongoing => '追更';
  @override
  String get subscription_legacy_badge => '舊版訂閱';
  @override
  String get subscription_legacy_hint => '由舊版本導入，不參與自動檢查。';
  @override
  String subscription_next_check({required Object time}) => '下次檢查：${time}';
  @override
  String subscription_last_matched({required Object time}) => '最近命中：${time}';
  @override
  String get subscription_item_status_discovered => '待處理';
  @override
  String get subscription_item_status_queued => '排隊中';
  @override
  String get subscription_item_status_processed => '已入庫';
  @override
  String get subscription_item_status_skipped => '已跳過';
  @override
  String get subscription_item_status_failed => '失敗';
  @override
  String get subscription_items_empty => '還沒有跟蹤到任何發布';
  @override
  String get subscription_edit_title => '編輯訂閱';
  @override
  String get subscription_edit_rule_hint => '來源身份與版本規則不可在此修改；要換版本請重新訂閱（歷史保留）。';
  @override
  String get subscription_search_hint => '搜索訂閱';
  @override
  String get subscription_sort_last_checked => '最近檢查';
  @override
  String get subscription_sort_last_matched => '最近命中';
  @override
  String get subscription_show_items => '逐集狀態';
  @override
  String get subscription_sort_created => '添加時間';
  @override
  String get subscription_no_match => '沒有匹配的訂閱';
  @override
  String get download_subscription_start_episode_invalid =>
      '請填 0 或更大的整數，留空表示不限';
  @override
  String get download_subscription_source_unavailable => '當前目標庫（當前不可用）';
  @override
  String resource_version_episode_count({required Object n}) => '共 ${n} 集';
  @override
  String get resource_version_show_files => '顯示檔案';
  @override
  String get manga_online_detail_load_failed => '無法載入這部漫畫。';
  @override
  String get manga_online_error_view_detail => '查看詳情';
  @override
  String get discovery_sources_unavailable => '全部來源都不可用';
  @override
  String get font_target_game_lookup => '遊戲查詞視窗字體';
  @override
  String get gal_hook_text_font => '遊戲查詞視窗字體';
  @override
  String get gal_hook_text_font_hint => '從管理字體庫中選擇，按順序使用第一個啟用的字體。';
  @override
  String get gal_hook_text_letter_spacing => '字間距';
  @override
  String get gal_hook_text_letter_spacing_hint => '調整字符之間的距離，不影響點字查詞命中。';
  @override
  String get gal_hook_text_line_height => '行高';
  @override
  String get gal_hook_text_line_height_hint => '調整換行文本的垂直間距。';
  @override
  String get gal_hook_text_bold => '粗體文字';
  @override
  String get gal_hook_text_bold_hint => '使用半粗體，提高文字在遊戲畫面上的可讀性。';
  @override
  String get gal_hook_text_alignment => '文字對齊';
  @override
  String get gal_hook_text_alignment_center => '居中';
  @override
  String get gal_hook_text_alignment_left => '左對齊';
  @override
  String get gal_hook_text_color => '文字顏色';
  @override
  String get gal_hook_overlay_legibility_section => '視窗與可讀性';
  @override
  String get gal_hook_text_background_color => '視窗背景顏色';
  @override
  String get gal_hook_text_background_opacity => '視窗背景透明度';
  @override
  String get gal_hook_text_background_opacity_hint => '設為 0% 可得到桌面歌詞式透明視窗。';
  @override
  String get gal_hook_text_outline_color => '描邊顏色';
  @override
  String get gal_hook_text_outline_width => '描邊寬度';
  @override
  String get gal_hook_text_outline_width_hint => '設為 0 可關閉描邊，輕微投影仍會保留。';
  @override
  String get gal_hook_text_padding => '文字左右邊距';
  @override
  String get gal_hook_text_padding_hint => '讓文字與視窗邊緣和縮放手柄保持距離。';
  @override
  String get gal_hook_text_corner_radius => '視窗圓角';
  @override
  String get gal_hook_text_corner_radius_hint => '調整視窗背景的圓角半徑。';
  @override
  String get storage_shaders_delete_anime4k => '刪除 Anime4K 着色器';
  @override
  String get video_jimaku_series_lookup_degraded =>
      '這次沒能在 AniList 上確認系列，下面是按標題直接搜出來的結果，可能混入同系列其他季。';
  @override
  String get dict_style_tab_visual => '可視化';
  @override
  String get dict_style_tab_code => '手寫 CSS';
  @override
  String get dict_style_scope_all => '全部詞典';
  @override
  String get dict_style_part_entry_card => '詞條卡';
  @override
  String get dict_style_part_expression => '詞頭';
  @override
  String get dict_style_part_ruby => '振假名';
  @override
  String get dict_style_part_deinflection_tag => '去屈折鏈';
  @override
  String get dict_style_part_frequency => '頻率';
  @override
  String get dict_style_part_pitch => '音調';
  @override
  String get dict_style_part_dictionary_label => '詞典名';
  @override
  String get dict_style_part_glossary_content => '釋義正文';
  @override
  String get dict_style_part_glossary_tag => '釋義標簽';
  @override
  String get dict_style_prop_text_color => '文字顏色';
  @override
  String get dict_style_prop_background => '高亮底色';
  @override
  String get dict_style_prop_bold => '粗體';
  @override
  String get dict_style_prop_italic => '斜體';
  @override
  String get dict_style_prop_underline => '下劃線';
  @override
  String get dict_style_prop_font_scale => '字號';
  @override
  String get dict_style_prop_corner_radius => '圓角';
  @override
  String get dict_style_part_reset => '重置此部位';
  @override
  String get dict_style_reset_all => '全部重置';
  @override
  String get dict_style_global_only => '此部位只能對全部詞典設定';
  @override
  String get dict_style_preview_title => '預覽';
  @override
  String get dict_style_pick_hint => '點預覽裡的部位可直接跳過去';
  @override
  String get dict_style_prop_default => '預設';
  @override
  String get dict_style_part_expression_tag => '表達標簽';
  @override
  String get dict_style_prop_on => '開';
  @override
  String get dict_style_prop_off => '關';
  @override
  String get dict_style_title => '詞典樣式';
  @override
  String get video_source_scrape_anidb_client => 'AniDB 客戶端名稱';
  @override
  String get video_source_scrape_anidb_client_hint =>
      '已登記的 AniDB HTTP API 客戶端名稱；留空時僅使用緩存標題目錄';
  @override
  String get video_source_scrape_anidb_client_version => 'AniDB 客戶端版本';
  @override
  String get video_source_scrape_anidb_client_version_hint =>
      '在 AniDB 登記的正整數版本；兩項均有效前不會啟用 HTTP API';
  @override
  String get video_scrape_view_source => '查看來源詳情';
  @override
  String get video_setting_auto_scrape_hint => '媒體庫掃描後自動識別並獲取影片元數據';
  @override
  String get video_resource_identity_provider => '資源身份來源';
  @override
  String get video_source_scrape_clear_all => '清理全部刮削記錄';
  @override
  String get video_source_scrape_clear_all_hint =>
      '清除全部影片刮削資料，以及 Fushi 生成的封面和 NFO。';
  @override
  String get video_source_scrape_clear_all_confirm_title => '清理全部影片刮削記錄？';
  @override
  String get video_source_scrape_clear_all_confirm_body =>
      '這會清除全部影片刮削資料和來源綁定、清空“系列”結果，並刪除 Fushi 生成且未被修改的封面與 NFO。影片檔案、媒體庫條目、底層分組、觀看進度、字幕、標簽、手動選擇的封面及用戶修改過的旁車檔案都會保留。此操作無法撤銷。';
  @override
  String get video_source_scrape_clear_all_confirm_action => '清理';
  @override
  String get video_source_scrape_clear_all_completed => '已清理全部影片刮削記錄。';
  @override
  String get video_source_scrape_clear_all_completed_protected =>
      '刮削記錄已清理；被修改或無法驗證的旁車檔案已保留。';
  @override
  String get video_source_scrape_clear_all_busy => '影片掃描或刮削仍在運行，請等待任務結束後重試。';
  @override
  String get video_source_scrape_clear_all_failed =>
      '未能清理全部刮削記錄；未刪除任何無法驗證的用戶檔案。';
  @override
  String get video_source_scrape_clear_all_in_progress => '正在清理刮削記錄，請稍候。';
  @override
  String get game_session_japanese_locale => '已轉區';
  @override
  String get game_session_japanese_locale_hint =>
      '本局以日文區域 (CP932) 啟動。若遊戲文字亂碼或腳本報錯，可把該遊戲的日語區域改為「永不轉區」。';
  @override
  String get onboarding_anki_intro_body =>
      'Anki 是免費的間隔重復記憶軟體：把生詞做成卡片，按遺忘曲線安排每天復習。Fushi 查詞後可一鍵製卡，把單詞、釋義、例句、發音和截圖寫進 Anki。';
  @override
  String get onboarding_anki_setup_desktop_hint =>
      '先安裝桌面版 Anki，再裝 AnkiConnect 插件：在 Anki 裡打開 工具 → 插件 → 獲取插件，填入代碼 2055492159。製卡時保持 Anki 在後台運行。';
  @override
  String get onboarding_anki_setup_ios_hint =>
      '裝有 AnkiMobile 即可直接加卡；要用完整功能，可經 AnkiConnect 連接同一局域網裡電腦上的 Anki。';
  @override
  String get onboarding_anki_backend_label => '連接方式';
  @override
  String get onboarding_anki_test_action => '測試連接';
  @override
  String onboarding_anki_test_success({required Object count}) =>
      '連接成功：讀到 ${count} 個牌組';
  @override
  String get onboarding_anki_get_anki_action => '下載 Anki（桌面版）';
  @override
  String get onboarding_anki_get_ankidroid_action => '下載 AnkiDroid';
  @override
  String get onboarding_anki_mobile_ankiconnect_title =>
      '高級：本機改用 AnkiConnect 連電腦';
  @override
  String get onboarding_anki_mobile_ankiconnect_hint =>
      '本機也能把卡製進同一局域網裡電腦上的 Anki：在製卡設定裡開啟「改用 AnkiConnect」並填電腦地址。';
  @override
  String get onboarding_anki_setup_android_hint =>
      '安裝 AnkiDroid 並打開一次完成初始化。回到 Fushi 首次製卡時，在彈出的授權框裡點「允許」即可——不需要去 AnkiDroid 設定裡改任何開關。';
  @override
  String get onboarding_anki_install_addon_action => '一鍵安裝 AnkiConnect 插件';
  @override
  String get onboarding_anki_addon_installed =>
      '已裝好 AnkiConnect：啟動或重啟 Anki，然後點「測試連接」。';
  @override
  String get onboarding_anki_addon_no_anki =>
      '沒找到 Anki 數據目錄：請先安裝 Anki 並打開一次，再回來重試。';
  @override
  String onboarding_anki_addon_failed({required Object message}) =>
      '安裝失敗：${message}';
  @override
  String get game_hook_reason_capability_probe_failed =>
      '捕獲組件沒有回應能力探測：檔案在，但跑不起來或沒在時限內回應。多為殺毒軟體攔截、權限不足，或上一局殘留的 helper 進程掛住了。請關閉所有遊戲、檢查殺軟隔離區後重試。';
  @override
  String get download_backend_setup_title => '設定下載後端';
  @override
  String get download_backend_setup_intro => '選擇由哪個引擎執行下載工作，之後可隨時在下載設定裡更改。';
  @override
  String get download_backend_embedded_hint => '建議使用。下載在 Fushi 內部完成，毋須另外安裝軟件。';
  @override
  String get download_backend_qb_hint => '連接到你已經在運行的 qBittorrent WebUI。';
  @override
  String get download_backend_setup_start => '立即設定';
  @override
  String get download_backend_embedded_unavailable =>
      '今次安裝欠缺內置引擎執行庫。請重新安裝完整安裝包，或改用外接 qBittorrent。';
  @override
  String get download_backend_qb_url_invalid =>
      '請填寫完整位址，例如 http://127.0.0.1:8080';
  @override
  String get mihon_store_zero_extensions => '此存放庫傳回 0 個擴充功能，位址可能指向了舊版索引。';
  @override
  String get mihon_store_edit => '編輯存放庫位址';
  @override
  String get manga_ocr_download_resume => '繼續下載';
  @override
  String get manga_ocr_import => '匯入本機模型';
  @override
  String get manga_ocr_import_title => '匯入已下載的模型';
  @override
  String get manga_ocr_import_intro =>
      '如果應用程式內下載不通，可自行下載下列檔案再從這裡匯入；亦支援包含這些檔案的 zip。';
  @override
  String get manga_ocr_import_copy_urls => '複製下載連結';
  @override
  String get manga_ocr_import_urls_copied => '已複製下載連結';
  @override
  String get manga_ocr_import_pick_folder => '選擇資料夾';
  @override
  String get manga_ocr_import_pick_files => '選擇檔案';
  @override
  String get manga_ocr_import_running => '正在匯入…';
  @override
  String manga_ocr_import_done({required Object count}) => '已匯入 ${count} 個檔案';
  @override
  String get manga_ocr_import_matched_nothing => '認不出可用的模型檔案';
  @override
  String manga_ocr_import_size_mismatch({
    required Object file,
    required Object expected,
    required Object actual,
  }) => '${file} 大小不符：應為 ${expected}，實為 ${actual}';
  @override
  String manga_ocr_import_still_missing({required Object count}) =>
      '仍欠 ${count} 個檔案';
  @override
  String get manga_ocr_import_failed => '模型匯入失敗';
  @override
  String get manga_tap_ocr_notice_title => '點一下即識別';
  @override
  String get manga_tap_ocr_notice_body =>
      '這一頁還未有文字資料。Fushi 會用你在設定中選擇的 OCR 引擎就地識別，識別完成後即可點字查詢。可在「設定 › 漫畫 OCR」中更換引擎或關閉這個行為。';
  @override
  String get manga_tap_ocr_notice_confirm => '開始識別';
  @override
  String get manga_tap_ocr_running => '正在識別本頁…';
  @override
  String get manga_tap_to_ocr => '點擊即識別';
  @override
  String get manga_tap_to_ocr_desc => '點一下尚未識別的對話框，即可就地識別本頁並直接查詞。';
  @override
  String get manga_ocr_engine_system => '裝置內置';
  @override
  String get manga_ocr_engine_system_desc =>
      '使用裝置內置的文字識別。毋須下載、完全離線、不會上傳任何內容；但對直排對話框和手寫字明顯不及本機模型。';
  @override
  String get manga_ocr_engine_system_unavailable => '此裝置沒有可用的系統文字識別';
  @override
  String get manga_tap_ocr_online_lens_only =>
      '網上章節的頁面不在本機，只能用 Google Lens 識別——頁面圖片會上傳至 Google。';
  @override
  String get settings_destination_services => '網上服務';
  @override
  String get settings_destination_services_summary => '第三方 API、索引器與媒體伺服器';
  @override
  String get section_services_subtitles => '字幕來源';
  @override
  String get section_services_resources => '資源索引器';
  @override
  String get section_services_metadata => '元數據刮削';
  @override
  String get settings_services_link_subtitle =>
      'Jimaku、OpenSubtitles、Torznab、Jellyfin、AniDB、TMDB 統一在此設定';
  @override
  String get game_hook_btn_replay => '重播本句語音';
  @override
  String get game_hook_btn_recapture => '重新錄製語音';
  @override
  String get game_hook_btn_follow => '跟隨新台詞';
  @override
  String get game_hook_btn_passthrough => '滑鼠穿透到遊戲';
  @override
  String get game_hook_btn_transparency => '切換底板';
  @override
  String get game_hook_btn_lock => '鎖定位置';
  @override
  String get game_hook_btn_workbench => '開啟取材工作台';
  @override
  String get game_hook_btn_topmost => '保持置頂';
  @override
  String get game_hook_btn_close => '關閉浮窗';
  @override
  String get video_jimaku_search_failed => '字幕搜尋失敗';
  @override
  String video_subtitle_error_with_code({
    required Object msg,
    required Object code,
  }) => '${msg}（HTTP ${code}）';
  @override
  String get manga_rescan_run => '重新識別框選區域';
  @override
  String get manga_rescan_failed => '重新識別框選區域失敗';
  @override
  String get manga_rescan_region_updated => '已重新識別該區域並回寫本頁';
  @override
  String get manga_ocr_mobile_note => '移動端下載的模型供漫畫閱讀頁的本地引擎使用：整卷、點擊、框選區域識別都走它。';
  @override
  String get manga_rescan_hint => '拖動框選要重新識別的文字。識別結果會替換框內已有的文字層。';
  @override
  String get manga_rescan_undone => '已還原重新識別前的文字層';
  @override
  String get manga_rescan_undo_failed => '還原上一版文字層失敗';
  @override
  String get module_tool_toggle_hint => '在導覽列顯示此頁；關閉即隱藏';
  @override
  String get module_downloads_hidden_hint =>
      '「下載」頁已在 設定 → 外觀 → 功能模塊 中隱藏；重新開啟才能管理訂閱。';
  @override
  String get book_file_location_open => '開啟檔案位置';
  @override
  String get book_file_location_failed => '無法開啟這本書的檔案位置。';
  @override
  String storage_entry_database_snapshots_label({required Object n}) =>
      '資料庫備份快照（${n} 個檔案）';
  @override
  String get storage_entry_delete_database_snapshots_confirm_body =>
      '將刪除全部殘留的資料庫備份快照（corrupt-bak / pre-restore / 舊版本遷移副本）。使用中的資料庫及其 -wal/-shm 附屬檔案不受影響。';
  @override
  String get manga_global_search_no_sources => '尚未啟用任何漫畫來源，去「導入」加一個。';
  @override
  String get manga_global_search_open_sources => '去匯入';
  @override
  String get settings_downloads_open_page_hint => '開啟下載頁（工作 / 資源 / 訂閱）';
  @override
  String get download_video_source_required => '需要影片來源';
  @override
  String get game_hook_reason_stale_session =>
      '上一次捕獲會話還沒釋放乾淨，Fushi 正在自動重試，不用做任何操作。';
  @override
  String get video_subtitle_delete => '刪除字幕檔案';
  @override
  String video_subtitle_delete_confirm({required Object path}) =>
      '確定從磁碟刪除這個字幕檔案？此操作無法復原。\n${path}';
  @override
  String video_subtitle_deleted({required Object label}) => '已刪除字幕檔案：${label}';
  @override
  String video_subtitle_delete_failed({required Object label}) =>
      '刪除字幕檔案失敗：${label}';
  @override
  String get shortcut_action_manga_toggle_chrome => '切換漫畫介面';
  @override
  String get manga_interface_hide => '隱藏介面';
  @override
  String get manga_interface_show => '顯示介面';
  @override
  String get gal_hook_text_vertical_alignment => '垂直對齊';
  @override
  String get gal_hook_text_vertical_alignment_center => '置中';
  @override
  String get gal_hook_text_vertical_alignment_top => '頂部';
  @override
  String get storage_entry_external_audio_hint => '音訊引用原檔案，不佔用應用空間';
  @override
  String get jellyfin_auto_list_title => '進入影片頁時自動列出項目';
  @override
  String get jellyfin_auto_list_hint =>
      '關閉後：進入影片頁不向媒體伺服器發任何請求，需在影片庫下拉重新整理手動列出。超大伺服器建議關閉——自動列舉看起來像刮削，可能觸發伺服器的濫用偵測。';
  @override
  String get jellyfin_libraries_title => '要列出的媒體庫';
  @override
  String get jellyfin_libraries_hint =>
      '不選 = 列出全部影片媒體庫。只勾你真正會看的庫，超大伺服器就不會被整台列舉。';
  @override
  String get jellyfin_libraries_load_failed => '讀取媒體庫清單失敗';
  @override
  String get video_filter_series => '系列';
  @override
  String get video_filter_series_in => '系列內';
  @override
  String get video_filter_series_standalone => '非系列';
  @override
  String get manga_source_cloudflare_verify_title => '網站驗證';
  @override
  String get manga_source_cloudflare_verify_hint =>
      '請在下方完成 Cloudflare 驗證，通過後會自動繼續載入。';
  @override
  String get db_cannot_open_title => '數據位置不可用';
  @override
  String get db_cannot_open_message =>
      'Fushi 無法在設定的數據位置開啟或建立資料庫。數據沒有損壞——該資料夾可能不存在、只讀，或位於已斷開的磁碟上。請在「設定」中檢查數據位置，或重新啟動以使用預設位置。';
  @override
  String get anki_error_field_mapping_mismatch =>
      '目前的字段映射沒有一個屬於所選的筆記類型，Anki 因此拒收了這張卡。請在「Anki 設定」裡重新映射字段，或使用「建立 Lapis 卡組」。';
  @override
  String get anki_error_first_field_empty =>
      '所選筆記類型的第一個字段為空，Anki 不接受這樣的卡片。請在「Anki 設定」裡給它映射一個字段。';
  @override
  String get storage_category_cache => '快取與暫存檔案';
  @override
  String get storage_category_other => '其他未分類';
  @override
  String get collection_export_pick_source => '選擇來源';
  @override
  String get collection_export_all_sources => '全部來源';
  @override
  String get video_subtitle_list_search => '搜索字幕';
  @override
  String get video_subtitle_list_search_hint => '輸入以篩選台詞';
  @override
  String get video_subtitle_list_search_empty => '沒有匹配的台詞';
  @override
  String get video_subtitle_list_export_favorites => '導出收藏語句';
  @override
  String get shortcut_action_video_search_subtitle_list => '搜索字幕列表';
  @override
  String get game_hook_code_paste_title => '貼上特殊碼';
  @override
  String get game_hook_code_paste_hint => '貼上原始特殊碼，例如 /HQN4@4CE90:game.exe';
  @override
  String get game_hook_code_paste_body => '特殊碼會綁定到目前執行遊戲的可執行檔，下次自動重用。';
  @override
  String get game_hook_code_paste_saved => '特殊碼已儲存到目前遊戲';
  @override
  String get game_hook_code_paste_invalid => '這看起來不是一條特殊碼';
  @override
  String get game_hook_code_label => '備註（可選）';
  @override
  String get discovery_game_type_all => '全部';
  @override
  String get discovery_game_type_raw => '生肉';
  @override
  String get discovery_game_type_translated => '熟肉';
  @override
  String get discovery_game_type_mobile => '手機';
  @override
  String get discovery_game_type_unlabelled => '未標註';
  @override
  String get game_library_downloading => '下載中';
  @override
  String get game_library_download_queued => '排隊中';
  @override
  String get game_library_download_retrying => '重試中';
  @override
  String get delete_disclosure_audio_source_files => '你導入時選擇的原始音頻檔案';
  @override
  String get delete_local_files => '同時刪除本機檔案';
  @override
  String get delete_local_files_video_desc => '影片檔案將從本機刪除，對應的下載工作一併清除，無法復原';
  @override
  String get delete_local_files_audio_desc => '原始音訊檔案將從本機刪除；書籍與字幕原檔保留，無法復原';
  @override
  String get delete_disclosure_book_source_kept => '你匯入時選擇的原始書籍與字幕檔案';
  @override
  String get download_task_delete_files_failed => '已下載的資料未能刪除：下載引擎沒有確認';
  @override
  String delete_local_files_failed({required Object n}) =>
      '有 ${n} 個本機檔案刪除失敗，可能正在被使用';
  @override
  String batch_hidden_by_filter_note({required Object n}) =>
      '另有 ${n} 項被目前篩選隱藏，今次不會處理。';
  @override
  String get custom_fonts_default => 'Default (Yu Gothic UI)';
  @override
  String get custom_fonts_default_hint =>
      'Use the built-in Yu Gothic UI rendering for the Galgame Hook overlay.';
  @override
  String get gal_hook_text_font_family => 'Galgame caption font';
  @override
  String get gal_mining_screenshot_size => 'Galgame screenshot size';
  @override
  String get gal_mining_screenshot_size_full_hd =>
      'Up to 1920 × 1080 (recommended)';
  @override
  String get gal_mining_screenshot_size_hd => 'Up to 1280 × 720';
  @override
  String get gal_mining_screenshot_size_hint =>
      'Applies to still screenshots and animated-capture fallbacks. Keeps the aspect ratio, never enlarges, and saves as JPEG at quality 90.';
  @override
  String get gal_mining_screenshot_size_original => 'Original size (JPEG)';
  @override
  String get game_attach_mode_last_used => 'Last used';
  @override
  String get game_attach_mode_luna_safe => 'Luna safe attachment (recommended)';
  @override
  String get game_attach_mode_luna_safe_hint =>
      'Do not inject into the game. Use Luna original text and system loopback audio to avoid double-hook conflicts.';
  @override
  String get game_attach_mode_native => 'Fushi native attachment';
  @override
  String get game_attach_mode_native_hint =>
      'Inject Fushi into the game to capture native text and clean audio. Do not use it together with LunaTranslator.';
  @override
  String get game_attach_mode_title => 'Choose attachment mode';
  @override
  String get game_line_bulk_text_hint =>
      'Bulk text detected. Character lookup is paused.';
  @override
  String get game_luna_audio_lead_in => 'Complete sentence start';
  @override
  String get game_luna_audio_lead_in_hint =>
      'If the beginning of this sentence is cut off, increase this value.';
  @override
  String get game_luna_audio_per_game_hint =>
      'Saved separately for each attached game.';
  @override
  String get game_luna_audio_tail_trim => 'Remove next-line audio';
  @override
  String get game_luna_audio_tail_trim_hint =>
      'If the end of this sentence includes the next line, increase this value.';
  @override
  String get game_luna_audio_timing => 'Audio alignment';
  @override
  String get game_text_source_luna => 'LunaTranslator (external original text)';
  @override
  String get game_text_source_luna_connected =>
      'Connected. Fushi will use the original text selected in LunaTranslator.';
  @override
  String get game_text_source_luna_waiting =>
      'Start LunaTranslator and enable Network Service. Fushi will reconnect automatically.';
  @override
  String get game_text_thread_recommended => 'Recommended';
  @override
  String get game_text_threads_dormant_hide => 'Hide threads without text';
  @override
  String game_text_threads_dormant_show({required Object count}) =>
      'Show threads without text (${count})';
  @override
  String get video_setting_subtitle_language_filter => 'Subtitle language';
  @override
  String get video_setting_subtitle_language_filter_all => 'All';
  @override
  String get video_setting_subtitle_language_filter_chinese => 'Chinese';
  @override
  String get video_setting_subtitle_language_filter_hint =>
      'Filter Chinese and Japanese content inside the selected subtitle track.';
  @override
  String get video_setting_subtitle_language_filter_japanese => 'Japanese';
  @override
  String get download_direct_queue_section => '直鏈下載';
  @override
  String get download_task_kind_all => '全部類型';
  @override
  String get download_task_kind_filter => '按類型篩選';
  @override
  String get manga_online_series_empty => '這個系列沒有可下載的卷。';
  @override
  String sync_peer_book_delete_confirm({required Object name}) =>
      '確定從對端裝置刪除「${name}」嗎？對端上的檔案與閱讀進度會被永久刪除，本機沒有副本，此操作不可撤銷。';
  @override
  String sync_peer_video_delete_confirm({required Object name}) =>
      '確定從對端裝置的媒體庫移除「${name}」嗎？對端自己匯入的影片檔案會保留，此操作不可撤銷。';
  @override
  String get storage_entry_delete_files_confirm_body =>
      '將立即從磁碟刪除。媒體庫裡沒有項目引用它——這裡放的是快取、匯出或可重新取得的資料。';
  @override
  String get manga_series_refresh => '重新整理章節';
  @override
  String get manga_series_refresh_failed => '無法從來源重新整理';
  @override
  String get manga_series_source_disabled => '此來源未安裝或已停用';
  @override
  String get manga_series_platform_unsupported => '此來源執行階段在本平台無法使用';
  @override
  String get manga_series_offline_hint => '顯示的是本機已儲存的章節';
  @override
  String get manga_series_no_chapters => '還沒有章節';
  @override
  String get manga_series_all_read => '所有章節都已讀完';
  @override
  String get manga_series_sort_newest => '最新在前';
  @override
  String get manga_series_sort_oldest => '最早在前';
  @override
  String get manga_series_unread_only => '只看未讀';
  @override
  String get manga_series_mark_read => '標記為已讀';
  @override
  String get manga_series_mark_unread => '標記為未讀';
  @override
  String get manga_series_mark_previous_read => '標記此章及更早為已讀';
  @override
  String get manga_series_local_volume => '本機卷';
  @override
  String get manga_series_volume_info => '卷資訊';
  @override
  String get manga_series_page_count => '頁數';
  @override
  String get manga_series_chapters_action => '章節';
  @override
  String get manga_series_next_chapter => '下一章';
  @override
  String get manga_series_previous_chapter => '上一章';
  @override
  String get manga_series_last_chapter_reached => '已經是最新一章了';
  @override
  String get manga_series_first_chapter_reached => '已經是第一章了';
  @override
  String get manga_series_open_series => '作品頁';
  @override
  String manga_series_read_progress({
    required Object page,
    required Object total,
  }) => '讀到第 ${page}/${total} 頁';
  @override
  String manga_series_read_progress_partial({required Object page}) =>
      '讀到第 ${page} 頁';
  @override
  String mihon_store_extension_count({required Object count}) => '${count} 個擴充';
  @override
  String mihon_extension_sources_more({required Object count}) =>
      '顯示全部 ${count} 個來源';
  @override
  String get mihon_extension_sources_less => '顯示較少來源';
  @override
  String get options_website => '瀏覽官方網站';
  @override
  String get video_setting_mpv_group_hdr => 'HDR';
  @override
  String get video_setting_hdr_tone_mapping => 'HDR 色調映射';
  @override
  String get video_setting_hdr_tone_mapping_hint =>
      '把 HDR 片源壓進 SDR 螢幕時用的曲線。自動 = 交給 mpv 按片源決定。';
  @override
  String get video_setting_hdr_compute_peak => '動態峰值偵測';
  @override
  String get video_setting_hdr_compute_peak_hint =>
      '逐格量實際峰值亮度，而不是信片源中繼資料。高光更準，但會佔一點 GPU。';
  @override
  String get video_setting_hdr_auto => '自動';
  @override
  String get video_setting_hdr_on => '開';
  @override
  String get video_setting_hdr_off => '關';
  @override
  String get video_discovery_cancel_downloads_title => '取消下載？';
  @override
  String video_discovery_cancel_downloads_body({required Object n}) =>
      '本作品有 ${n} 個下載任務會被停止。已下載的分片仍保留在磁碟上，之後可以重新開始下載。';
  @override
  String get video_discovery_cancel_downloads_failed =>
      '取消下載失敗。任務可能已經結束，或下載後端目前無法使用。';
  @override
  String get gal_hook_click_lookup => '點字查詞';
  @override
  String get gal_hook_click_lookup_hint => '關掉之後，點字幕不會查詞——配合點擊穿透使用，免得不小心點到字。';
  @override
  String get gal_hook_lookup_trigger => '查詞觸發鍵';
  @override
  String get gal_hook_lookup_trigger_hint =>
      '用哪個滑鼠鍵查指標下的字。與上面那個開關互相獨立：可以關掉點字查詞，仍用側鍵查。';
  @override
  String get gal_hook_lookup_trigger_left => 'Left click';
  @override
  String get gal_hook_lookup_trigger_middle => 'Middle click';
  @override
  String get gal_hook_lookup_trigger_side => 'Side button';
  @override
  String get gal_hook_toolbar_auto_hide => '自動隱藏功能欄';
  @override
  String get gal_hook_toolbar_auto_hide_hint =>
      '指標移到字幕框才顯示功能欄（LunaHook 那種）。隱藏就是真的隱藏——那塊像素還給遊戲。';
  @override
  String get gal_hook_passthrough_blocks_mouse => '穿透時字幕仍接點擊';
  @override
  String get gal_hook_passthrough_blocks_mouse_hint =>
      '開：文字行仍然接點擊，所以點得到字。關：整個浮層對滑鼠完全透明——點得到下面的東西，但點字就失效了。';
  @override
  String get floating_lyric_topmost => '保持置頂';
  @override
  String get gal_hook_fold_progressive_lines => '把分開顯示的台詞合成一條';
  @override
  String get gal_hook_fold_progressive_lines_hint =>
      '有些引擎每點一次就重畫整行，於是同一行被抓到好幾次。把這些快照摺成一條。';
  @override
  String get gal_hook_ingame_lookup_engine_unsupported => '目前遊戲引擎不支援遊戲內查詞';
  @override
  String get gal_hook_ingame_lookup_version_unsupported => '目前遊戲版本未在支援清單中';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copy => '複製遊戲 exe 的 SHA-256';
  @override
  String get gal_hook_ingame_lookup_exe_hash_unavailable =>
      '無法讀取遊戲 exe（可能權限不足）';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copied => '已複製 exe 的 SHA-256';
  @override
  String get download_tracker_section => 'Tracker 訂閱';
  @override
  String get download_tracker_auto_add => '自動把訂閱的 Tracker 加到新任務';
  @override
  String get download_tracker_auto_add_hint => '清單會快取 6 小時；訂閱抓取失敗不會阻止建立下載任務。';
  @override
  String get download_tracker_url => '訂閱網址';
  @override
  String get download_tracker_refresh => '抓取 Tracker';
  @override
  String get download_tracker_preview_empty =>
      '抓取訂閱後可預覽支援的 HTTP、HTTPS 與 UDP Tracker。';
  @override
  String download_tracker_preview_count({required Object count}) =>
      '已抓取 ${count} 個 Tracker';
  @override
  String download_tracker_fetch_failed({required Object message}) =>
      '抓取 Tracker 失敗：${message}';
  @override
  String get anki_connect_port_auto_fix => '換一個空閒的連接埠';
  @override
  String get anki_connect_port_auto_fix_hint =>
      '自動挑一個空閒的連接埠，同時寫進 Hibiki 和 Anki 的 AnkiConnect 外掛設定。改完重啟 Anki 生效。';
  @override
  String anki_connect_port_auto_fix_done({required Object port}) =>
      'AnkiConnect 連接埠已改為 ${port}。請重啟 Anki 後再試。';
  @override
  String anki_connect_port_auto_fix_manual({required Object port}) =>
      'Hibiki 已改用連接埠 ${port}，但找不到 AnkiConnect 的外掛設定。請在 Anki 的「工具 → 外掛 → AnkiConnect → 設定」裡把 webBindPort 也改成 ${port}，然後重啟 Anki。';
  @override
  String get anki_connect_port_auto_fix_none => '本機找不到空閒的連接埠。';
  @override
  String get onboarding_action_badge_required => '必做';
  @override
  String get onboarding_action_badge_recommended => '推薦';
  @override
  String get onboarding_action_badge_optional => '可選';
  @override
  String get onboarding_pack_action_download_desc =>
      '在後台下載整個推薦包，下完自動進入匯入。隨時可以取消，下次從斷點續傳。';
  @override
  String get onboarding_pack_action_import_existing_desc =>
      '包已經下好了，這裏直接匯入。確認框裏選「合併到現有庫」不會動你已有的資料。';
  @override
  String get onboarding_pack_action_pick_desc =>
      '已經從別處拿到包的 zip？從硬碟匯入，整段下載都可以跳過。';
  @override
  String get onboarding_pack_action_website => '在官網下載頁打開';
  @override
  String get onboarding_pack_action_website_desc =>
      '在瀏覽器打開官網。那裏的推薦包一節給出可以餵給下載工具的分片直連；下完回到這裏，用「選擇本機包檔案」匯入。';
  @override
  String get onboarding_pack_action_dictionary_desc =>
      '學日語以外的語言？跳過推薦包，在這裏按語言匯入詞典。';
  @override
  String get onboarding_pack_action_audio_desc =>
      '發音音訊從哪裏來。推薦包已經含日語和英語；其它語言在這裏加線上來源。';
  @override
  String get onboarding_anki_action_test_desc =>
      '檢查 Fushi 能不能連上 Anki，並把你的牌組和筆記類型拉過來。這一步不會建立任何東西。';
  @override
  String get onboarding_anki_action_refresh_desc =>
      '重新從 Anki 拉牌組和筆記類型。在 Anki 裏新建了牌組之後點它。';
  @override
  String get onboarding_anki_action_get_ankidroid_desc =>
      '打開 AnkiDroid 的商店頁。Fushi 的卡片寫進它裏面，得先裝上。';
  @override
  String get onboarding_anki_action_get_anki_desc =>
      '打開 Anki 的下載頁。裝好 Anki，製卡時讓它開着。';
  @override
  String get onboarding_anki_action_install_addon_desc =>
      '把內建的 AnkiConnect 外掛解壓進 Anki——Fushi 靠它和 Anki 通話。裝完重啟 Anki。';
  @override
  String get onboarding_step_anki_action_desc =>
      '卡片範本、欄位對應、截圖和音訊——也就是「做出來的卡長甚麼樣」。上面選好牌組和筆記類型就能開始製卡了，想改卡片怎麼做才需要進來。';
  @override
  String get onboarding_step_backup_action_desc => '選備份後端並登入，換機器或丟裝置時庫還在。';
  @override
  String get onboarding_step_interconnect_action_desc =>
      '把這台裝置和你的其它裝置配對，共用同一個庫並同步進度。';
  @override
  String get onboarding_step_extension_action_desc =>
      '告訴你怎麼裝瀏覽器擴充功能並連上 Fushi，之後在網頁上也能查詞。';
  @override
  String get onboarding_step_fonts_action_desc => '匯入自己的字型檔案，並給每種語言指定用哪個。';
  @override
  String get onboarding_pack_sources_hint =>
      '同時從 GitHub、官網和備用鏡像分片並發下載，每片都校驗。下載過程中會實測各來源速度，哪家快就多分給哪家，所以這裏不用你選。';
  @override
  String get video_setting_hdr_output => 'HDR / 10-bit 輸出';
  @override
  String get video_setting_hdr_output_hint =>
      '僅 Windows。「自動」在顯示器與片源都是 HDR 時把畫面經原生影片視窗直通；「始終」對所有影片都用原生視窗（10-bit 輸出）；「關閉」沿用常規算繪。';
  @override
  String get video_setting_hdr_output_auto => '自動';
  @override
  String get video_setting_hdr_output_always => '始終';
  @override
  String get video_setting_hdr_output_off => '關閉';
  @override
  String get network_proxy_auto_hint =>
      '應用程式的全部連線請求都經此處：更新、雲端同步、詞典、下載、字幕與中繼資料。留空為自動：先讀取環境變數，再讀取已啟用的系統代理。P2P（torrent）傳輸預設直連，可在下方單獨開啟。';
  @override
  String get network_proxy_hint => 'host:port，例如 127.0.0.1:7890（僅 IPv4/域名）';
  @override
  String get network_proxy_invalid => '代理格式無效，請用 host:port';
  @override
  String get network_proxy_label => '網路代理';
  @override
  String get section_network => '網路';
  @override
  String get network_proxy_p2p_label => 'P2P（torrent）傳輸走代理';
  @override
  String get network_proxy_p2p_warning =>
      '預設關閉，P2P 直連。走代理可能降低速度；且不少代理服務商禁止 BT 流量，可能導致代理帳號被限速、警告甚至封禁。僅對內建引擎生效，外接 qBittorrent 請在其自身設定中配置。';
  @override
  String get video_ajatt_settings_hint =>
      '免費日語字幕庫（kitsunekko 鏡像）。無需帳號；字幕檔案從 GitHub 下載。';
  @override
  String get video_ajatt_enabled_hint => '關閉後搜尋字幕時跳過 AJATT 字幕庫。';
  @override
  String get video_subtitle_workbench_title => '字幕';
  @override
  String get video_subtitle_scope_episode => '本集';
  @override
  String get video_subtitle_scope_collection => '整個合集';
  @override
  String get video_subtitle_search_open => '線上搜尋字幕';
  @override
  String get video_subtitle_collection_settings => '合集字幕設定';
  @override
  String get video_subtitle_collection_language => '預設字幕語言';
  @override
  String get video_subtitle_collection_language_hint =>
      '對本合集所有集生效；留空 = 跟隨影片自身語言。';
  @override
  String get video_subtitle_collection_release_group => '偏好版本';
  @override
  String get video_subtitle_collection_release_group_hint =>
      '批次下載優先選這個版本，整季共用一套時間軸。';
  @override
  String get video_subtitle_collection_release_group_any => '不限版本';
  @override
  String get video_subtitle_source_label => '來源';
  @override
  String get video_subtitle_collection_members_hint =>
      '各集按檔名中的集數匹配；整季打包字幕自動拆分。';
  @override
  String get video_subtitle_adjust_title => '字幕調整';
  @override
  String get video_subtitle_adjust_collapse => '收起';
  @override
  String get video_subtitle_adjust_expand => '展開';
  @override
  String get settings_section_reading_stats => '閱讀統計';
  @override
  String get reading_stats_idle_timeout => '閒置判定時長';
  @override
  String get reading_stats_idle_timeout_hint =>
      '這麼久沒有翻頁、捲動或查詞就停止計入閱讀時長。只對小說、PDF、漫畫生效；影片以播放狀態為準。';
  @override
  String get web_video_track_menu => '字幕軌';
  @override
  String get web_video_track_live => '即時字幕（從頁面取樣）';
  @override
  String get web_video_no_tracks => '尚未擷取到字幕';
  @override
  String get web_video_hide_native_subtitles => '隱藏網站字幕';
  @override
  String get web_video_import_hint => '這是網頁（不是直接串流），將在內建網頁播放器中開啟。';
  @override
  String get web_video_platform_unsupported => '內建網頁播放器目前僅支援 Windows。';
  @override
  String get web_video_mine_queue_run => '製作佇列中的卡片';
  @override
  String get web_video_mine_queue_stop => '停止製作卡片';
  @override
  String get web_video_mine_queue_empty => '佇列中沒有卡片';
  @override
  String web_video_mine_queued({required Object count}) =>
      '已加入製卡佇列（待製 ${count} 張）';
  @override
  String web_video_mine_queue_running({
    required Object done,
    required Object total,
  }) => '製卡中 ${done}/${total}…';
  @override
  String web_video_mine_queue_finished({
    required Object ok,
    required Object failed,
  }) => '製卡完成：成功 ${ok}，失敗 ${failed}';
  @override
  String get web_video_hosting_menu => '播放模式';
  @override
  String get web_video_hosting_builtin => '內建（1080p；可超解析、截圖、製卡）';
  @override
  String get web_video_hosting_windowed => '原生視窗（4K 硬體 DRM；製卡先排隊）';
  @override
  String web_video_mine_switch_builtin({required Object count}) =>
      '切換到內建模式製作 ${count} 張排隊卡片';
  @override
  String get onboarding_step_click_lookup_title => '點一下就能查詞';
  @override
  String get onboarding_click_lookup_tap_title => '點一下文字';
  @override
  String get onboarding_click_lookup_nested_title => '在彈窗裡繼續查';
  @override
  String get onboarding_click_lookup_nested_body =>
      '點釋義裡的另一個詞，就會展開下一層查詞；返回或點彈窗外可關掉一層。';
  @override
  String get onboarding_click_lookup_mine_title => '把結果做成卡片';
  @override
  String get onboarding_click_lookup_mine_body =>
      '確認詞義後點加號（＋），把當前的詞、句子、音頻和畫面送到製卡器。';
  @override
  String get onboarding_step_global_lookup_title => '查 Fushi 以外的文字';
  @override
  String get onboarding_global_lookup_windows_body =>
      '在 Windows 上，先在其他應用程式裡選中文字，就能直接叫出詞典，不用切回 Fushi。';
  @override
  String get onboarding_global_lookup_windows_select_title => '在任何應用程式裡選中文字';
  @override
  String get onboarding_global_lookup_windows_shortcut_title => '按 Ctrl+Alt+D';
  @override
  String get onboarding_global_lookup_windows_shortcut_body =>
      '這是預設的全域快捷鍵。Fushi 會抓取目前的選取範圍，並在滑鼠附近打開查詞卡片。';
  @override
  String get onboarding_global_lookup_windows_customize_title => '需要時可以改快捷鍵';
  @override
  String get onboarding_global_lookup_windows_customize_body =>
      '前往「設定 → 快捷鍵 → 全域（應用程式外）」，就能換成你習慣的組合鍵。';
  @override
  String get onboarding_global_lookup_windows_action => '打開快捷鍵設定';
  @override
  String get onboarding_global_lookup_windows_action_desc =>
      '可修改應用程式外查詞的快捷鍵；預設 Ctrl+Alt+D 已經可以直接用，所以不改也沒關係。';
  @override
  String get onboarding_global_lookup_android_body =>
      '在 Android 上，是由系統透過文字選單或分享面板把選中的文字交給 Fushi；手機沒有可自訂的全域熱鍵。';
  @override
  String get onboarding_global_lookup_android_select_title => '在其他應用程式裡選中文字';
  @override
  String get onboarding_global_lookup_android_open_title => '選擇 Fushi';
  @override
  String get onboarding_global_lookup_android_open_body =>
      '在文字選取選單中點 Fushi；如果選單沒顯示，就點分享，再從分享面板選 Fushi。';
  @override
  String get onboarding_global_lookup_android_continue_title => '在獨立彈窗中繼續';
  @override
  String get onboarding_global_lookup_android_continue_body =>
      '查詞結果會獨立打開；你可以繼續點裡面的詞，關掉後就回到剛才的地方。';
  @override
  String get onboarding_feature_manual_resources => '手動導入詞典和音頻';
  @override
  String get onboarding_feature_manual_resources_hint =>
      '可補充推薦包，也可單獨匯入自己的字典、有聲書和單字發音來源';
  @override
  String get onboarding_step_manual_resources_title => '手動準備詞典和音頻';
  @override
  String get onboarding_step_manual_resources_body =>
      '這一項可以與推薦包同時使用，也可以單獨使用。進入查詞教學前至少匯入一本字典；有聲書音訊和單字發音音訊屬於按需補充。';
  @override
  String get onboarding_manual_dictionary_action => '導入詞典';
  @override
  String get onboarding_manual_dictionary_action_desc =>
      '打開詞典管理，導入至少一個支援的詞典檔案或壓縮包。只有查詞能返回釋義後，後面的操作教學才有實際結果。';
  @override
  String get onboarding_manual_audiobook_action => '導入書籍和有聲書音頻';
  @override
  String get onboarding_manual_audiobook_action_desc =>
      '打開書籍導入，選擇書籍或文字、對齊字幕和一個或多個音頻檔案。音頻需要配套字幕，Fushi 才能按句同步。';
  @override
  String get onboarding_manual_pronunciation_action => '設定單詞發音音頻';
  @override
  String get onboarding_manual_pronunciation_action_desc =>
      '加入詞典詞條使用的本機或線上發音來源。它與附加到書籍的有聲書音頻是兩套獨立資源。';
  @override
  String get onboarding_lookup_verify_action => '先確認詞典裡有這個詞';
  @override
  String get onboarding_lookup_verify_action_desc =>
      '打開查詞頁，輸入你正在學的任何詞；確認目前已安裝的詞典能返回釋義後，再用同一個詞練習後面的操作。教學不會寫死示例詞。';
  @override
  String get onboarding_step_first_anki_card_title => '完成第一張 Anki 卡片';
  @override
  String get onboarding_step_first_anki_card_body =>
      '只有這次引導已連上 Anki，而且選好了仍然可用的牌組和筆記類型，才會出現這一步。';
  @override
  String get onboarding_first_anki_lookup_title => '從真實的詞典結果開始';
  @override
  String get onboarding_first_anki_lookup_body =>
      '查一個目前已安裝詞典確實能返回釋義的詞，不用可能不在你詞典裡的固定示例詞。';
  @override
  String get onboarding_first_anki_plus_title => '點詞條上的加號';
  @override
  String get onboarding_first_anki_plus_body =>
      '加號會打開製卡器，並帶入當前的單詞、讀音、釋義、句子、音頻和可用的畫面。';
  @override
  String get onboarding_first_anki_save_title => '檢查後儲存';
  @override
  String get onboarding_first_anki_save_body =>
      '確認目標牌組、筆記類型和欄位預覽後儲存，再打開 Anki 看看第一張卡是不是已經寫進去。';
  @override
  String get onboarding_first_anki_action => '打開查詞頁並製卡';
  @override
  String get onboarding_first_anki_action_desc =>
      '挑一個已經顯示釋義的詞，點詞條上的加號，檢查欄位後儲存到剛才連上的 Anki 牌組。';
  @override
  String get onboarding_step_click_lookup_body =>
      '先確認一個目前已安裝詞典確實能返回釋義的詞，再用同一個詞練習書籍正文、漫畫 OCR 文字和影片字幕裡的點擊查詞。';
  @override
  String get onboarding_click_lookup_tap_body =>
      '手機輕點剛才確認過的詞中的一個字，電腦用滑鼠左鍵單擊。Fushi 會從這裡開始比對最長的詞。';
  @override
  String get onboarding_global_lookup_windows_select_body =>
      '拖選剛才已確認能返回詞典釋義的同一個詞，並保持文字處於選取狀態。';
  @override
  String get onboarding_global_lookup_android_select_body =>
      '長按剛才已確認能返回詞典釋義的同一個詞，再拖動選取控點讓它完整覆蓋。';
  @override
  String get game_lookup_attached_title => 'In-game lookup';
  @override
  String get game_lookup_attached_no_ocr =>
      'No OCR · horizontal body text only';
  @override
  String get game_lookup_attached_mode => 'Mode';
  @override
  String get game_lookup_attached_mode_auto => 'Auto';
  @override
  String get game_lookup_attached_mode_native_only => 'Native only';
  @override
  String get game_lookup_attached_mode_attached_only => 'Calibrated layer only';
  @override
  String get game_lookup_attached_mode_off => 'Off';
  @override
  String get game_lookup_attached_status => 'State';
  @override
  String get game_lookup_attached_native_status => 'Native';
  @override
  String get game_lookup_attached_provider => 'Provider';
  @override
  String get game_lookup_attached_provider_unknown => 'Not reported';
  @override
  String get game_lookup_attached_profile => 'Profile';
  @override
  String get game_lookup_attached_profile_ready => 'Calibrated';
  @override
  String get game_lookup_attached_profile_missing => 'Not calibrated';
  @override
  String get game_lookup_attached_shield => 'Input shield';
  @override
  String get game_lookup_attached_shield_verified => 'Verified';
  @override
  String get game_lookup_attached_shield_unknown => 'Unknown';
  @override
  String get game_lookup_attached_shield_partial => 'Partial';
  @override
  String get game_lookup_attached_shield_known_uncovered => 'Known uncovered';
  @override
  String get game_lookup_attached_shield_faulted => 'Faulted';
  @override
  String get game_lookup_attached_risk => 'Click risk';
  @override
  String get game_lookup_attached_risk_safe => 'Not authorized';
  @override
  String get game_lookup_attached_risk_pending => 'Confirmation required';
  @override
  String get game_lookup_attached_risk_active =>
      'Risk accepted · may double-trigger';
  @override
  String get game_lookup_attached_calibrate => 'Calibrate';
  @override
  String get game_lookup_attached_risk_accept => 'Accept click risk';
  @override
  String get game_lookup_attached_profile_clear => 'Clear profile';
  @override
  String get game_lookup_attached_thread_required =>
      'Select one body-text thread before calibration.';
  @override
  String get game_lookup_attached_risk_title => 'Confirm raw-click risk';
  @override
  String get game_lookup_attached_risk_body =>
      'The input shield is not verified for this executable. Clicking a glyph may also advance dialogue or trigger a choice. This authorization is stored only for the current executable hash and is revoked after an update.';
  @override
  String get game_lookup_attached_calibration_title => 'Calibrate body text';
  @override
  String get game_lookup_attached_preview => 'Current body text preview';
  @override
  String get game_lookup_attached_body_rect => 'Body rectangle';
  @override
  String get game_lookup_attached_left => 'Left';
  @override
  String get game_lookup_attached_top => 'Top';
  @override
  String get game_lookup_attached_width => 'Width';
  @override
  String get game_lookup_attached_height => 'Height';
  @override
  String get game_lookup_attached_font_family => 'Font family';
  @override
  String get game_lookup_attached_font_size => 'Font size / client height';
  @override
  String get game_lookup_attached_letter_spacing =>
      'Letter spacing / client height';
  @override
  String get game_lookup_attached_line_height => 'Line height';
  @override
  String get game_lookup_attached_text_align => 'Horizontal alignment';
  @override
  String get game_lookup_attached_vertical_align => 'Vertical alignment';
  @override
  String get game_lookup_attached_align_left => 'Left';
  @override
  String get game_lookup_attached_align_center => 'Center';
  @override
  String get game_lookup_attached_align_right => 'Right';
  @override
  String get game_lookup_attached_align_top => 'Top';
  @override
  String get game_lookup_attached_align_bottom => 'Bottom';
  @override
  String get game_lookup_attached_probes_hint =>
      'Click the first, middle, and last highlighted glyphs in the game, then confirm each character below.';
  @override
  String get game_lookup_attached_probe_start => 'First glyph';
  @override
  String get game_lookup_attached_probe_middle => 'Middle glyph';
  @override
  String get game_lookup_attached_probe_end => 'Last glyph';
  @override
  String get game_lookup_attached_calibration_commit => 'Save calibration';
  @override
  String get game_lookup_attached_calibration_failed =>
      'Calibration was not applied. Check the body text, target window, and all three probes.';
  @override
  String get game_lookup_attached_calibration_short_text =>
      'At least three characters are required for calibration probes.';
  @override
  String get game_lookup_attached_profile_clear_title =>
      'Clear lookup profile?';
  @override
  String get game_lookup_attached_profile_clear_body =>
      'The saved rectangle, text layout, and executable-specific click authorization will be removed.';
  @override
  String get game_lookup_attached_probe_waiting =>
      'Waiting for matching in-game click';
  @override
  String get delete_choices_remember => '記住這些選擇';
  @override
  String get network_proxy_mode_label => 'Proxy mode';
  @override
  String get network_proxy_mode_auto => 'Automatic';
  @override
  String get network_proxy_mode_auto_hint =>
      'Use environment variables, then the enabled system proxy';
  @override
  String get network_proxy_mode_direct => 'Direct';
  @override
  String get network_proxy_mode_direct_hint => 'Disable proxy use for the app';
  @override
  String get network_proxy_mode_manual => 'Manual';
  @override
  String get network_proxy_mode_manual_hint =>
      'Use the server and optional credentials below';
  @override
  String get network_proxy_manual_hint =>
      'HTTP proxy server used by all public internet requests';
  @override
  String get network_proxy_username => 'Proxy username (optional)';
  @override
  String get network_proxy_password => 'Proxy password (optional)';
  @override
  String get storage_category_backups => 'Local backups';
  @override
  String storage_entry_backups_label({required Object n}) =>
      '${n} backup archive(s)';
  @override
  String get storage_entry_delete_backups_confirm_body =>
      'Delete these temporary local backup archives? Make sure you have saved or shared any copy you still need.';
  @override
  String get update_download_source_preference => 'Preferred download source';
  @override
  String get update_download_source_preference_hint =>
      'The selected source is tried first; unavailable sources still fall back automatically.';
  @override
  String get update_download_source_auto => 'Automatic (recommended)';
  @override
  String get update_download_source_cloudflare => 'Cloudflare mirror';
  @override
  String get update_download_source_github => 'GitHub direct';
  @override
  String update_download_source_proxy({required Object host}) =>
      'Proxy: ${host}';
}
