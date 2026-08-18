part of 'strings.g.dart';

// Path: <root>
class _StringsZhHk extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsZhHk.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.zhHk,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ),
        super.build(
            cardinalResolver: cardinalResolver,
            ordinalResolver: ordinalResolver);

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
  String activity_days_ago({required Object n}) => '${n} d ago';
  @override
  String activity_hours_ago({required Object n}) => '${n} h ago';
  @override
  String get activity_just_now => 'Just now';
  @override
  String activity_minutes_ago({required Object n}) => '${n} min ago';
  @override
  String get add_to_collection => 'Add to collection';
  @override
  String get anime_download_back => 'Back';
  @override
  String get anime_download_batch => 'Batch';
  @override
  String get anime_download_category_all => 'All';
  @override
  String get anime_download_category_english => 'English-translated';
  @override
  String get anime_download_category_non_english => 'Non-English';
  @override
  String get anime_download_category_raw => 'Raw';
  @override
  String get anime_download_delete => 'Delete';
  @override
  String anime_download_episode_count({required Object count}) => 'EP ${count}';
  @override
  String get anime_download_generic_download => 'Download';
  @override
  String get anime_download_generic_hint => 'Magnet link';
  @override
  String get anime_download_generic_title =>
      'Paste a link (books, videos, anything)';
  @override
  String get anime_download_include_subs => 'Include subtitles';
  @override
  String get anime_download_kind_auto => 'Auto';
  @override
  String get anime_download_kind_book => 'Book';
  @override
  String get anime_download_kind_video => 'Video';
  @override
  String get anime_download_magnet_invalid => 'Invalid magnet link';
  @override
  String get anime_download_no_results => 'No results';
  @override
  String get anime_download_no_subs => 'No subs';
  @override
  String get anime_download_no_tasks => 'No download tasks yet';
  @override
  String get anime_download_nyaa_query => 'Nyaa search terms';
  @override
  String get anime_download_play_now => 'Play while downloading';
  @override
  String get anime_download_play_now_fail =>
      'Not ready yet (metadata pending or connection failed) — try again later';
  @override
  String get anime_download_play_now_ok =>
      'Imported — open it from the video library to play while downloading';
  @override
  String get anime_download_push => 'Push download';
  @override
  String get anime_download_push_failed => 'Failed to push to qBittorrent';
  @override
  String get anime_download_pushed =>
      'Pushed — it will be imported automatically once finished';
  @override
  String get anime_download_refresh => 'Refresh';
  @override
  String get anime_download_relocate => 'Rename / move';
  @override
  String anime_download_relocate_engine_failed({required Object reason}) =>
      'Failed, nothing changed: ${reason}';
  @override
  String get anime_download_relocate_hint =>
      'Fushi renames/moves through the download engine, so seeding is not interrupted. Renaming in Explorer can never be recovered.';
  @override
  String anime_download_relocate_library_failed({required Object reason}) =>
      'Files moved, but the library still points at the old path: ${reason}';
  @override
  String get anime_download_relocate_move_title => 'Move to folder';
  @override
  String get anime_download_relocate_no_files =>
      'This task has no files to rename yet (metadata not ready)';
  @override
  String anime_download_relocate_ok({required Object rows}) =>
      'Renamed / moved; ${rows} library entries updated';
  @override
  String get anime_download_relocate_pick_folder => 'Choose destination folder';
  @override
  String get anime_download_relocate_rename_title => 'Rename file';
  @override
  String get anime_download_retry => 'Retry';
  @override
  String get anime_download_search => 'Search';
  @override
  String get anime_download_search_error_proxy_hint =>
      'If the site cannot be reached directly, configure a network proxy in download settings.';
  @override
  String get anime_download_search_failed =>
      'Search failed or timed out. Tap retry.';
  @override
  String get anime_download_search_hint => 'Anime title';
  @override
  String get anime_download_search_start_hint =>
      'Search an anime title above — torrents and subtitles are matched automatically.';
  @override
  String get anime_download_sort_date => 'Published';
  @override
  String get anime_download_sort_seeders => 'Seeders';
  @override
  String get anime_download_sort_size => 'Size';
  @override
  String get anime_download_store_unavailable =>
      'Download plan storage is unavailable';
  @override
  String get anime_download_subs_badge => 'Subs';
  @override
  String get anime_download_subs_failed => 'Subtitle search failed. Tap retry.';
  @override
  String get anime_download_subs_need_key =>
      'Enter a Jimaku API key above to search subtitles.';
  @override
  String get anime_download_tasks => 'Download tasks';
  @override
  String get anime_download_title => 'Anime download';
  @override
  String get anime_download_trusted => 'Trusted';
  @override
  String get anime_download_trusted_only => 'Trusted only';
  @override
  String get anki_allow_duplicates => '允許重複';
  @override
  String get anki_allow_duplicates_hint => '新增卡片時跳過重複檢查';
  @override
  String get anki_card_action_failed => 'Card action failed. Please try again.';
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
  String get anki_duplicate_scope => 'Duplicate check scope';
  @override
  String get anki_duplicate_scope_collection => 'Whole collection';
  @override
  String get anki_duplicate_scope_deck => 'Selected deck (and its subdecks)';
  @override
  String get anki_duplicate_scope_deck_root => 'Root deck (all subdecks)';
  @override
  String get anki_duplicate_scope_hint =>
      'Which decks are searched when checking whether a card already exists. AnkiConnect only; AnkiDroid always searches the whole collection.';
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
      'AnkiDroid hasn\'t granted card access permission. Approve the system permission dialog that just appeared, then tap the button again to export.';
  @override
  String get anki_fetch => '重新整理牌組與筆記類型';
  @override
  String get anki_fetching => '擷取中…';
  @override
  String get anki_field_mappings => '欄位對應';
  @override
  String get anki_field_not_mapped => '未對應';
  @override
  String get anki_mine_to_server => 'Mine to paired device';
  @override
  String get anki_mine_to_server_hint =>
      'Send mined cards to the paired host\'s Anki (its decks and settings) instead of this device. Requires an interconnect pairing.';
  @override
  String get anki_mined_action_add_duplicate => 'Add as a new card';
  @override
  String get anki_mined_action_overwrite => 'Overwrite this card';
  @override
  String get anki_mined_action_view => 'View / open in Anki';
  @override
  String get anki_mined_card_subtitle =>
      'Choose what to do with the matching card.';
  @override
  String get anki_mined_card_title => 'Card already in Anki';
  @override
  String anki_mined_multiple_matches({required Object count}) =>
      '${count} matching cards';
  @override
  String get anki_not_configured => '點按「重新整理」載入你的 Anki 牌組與筆記類型。';
  @override
  String get anki_note_open_failed => 'Could not open the card in Anki.';
  @override
  String get anki_note_type => '筆記類型';
  @override
  String get anki_note_viewer_empty => 'This card has no readable fields.';
  @override
  String get anki_note_viewer_open_in_anki => 'Open in Anki';
  @override
  String get anki_note_viewer_title => 'Existing card';
  @override
  String get anki_open_no_card => 'No card found for this word in Anki.';
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
  String get app_icon_presets => 'Presets';
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
  String get audio_source_edit_target_gone =>
      'That audio source no longer exists — edit discarded';
  @override
  String get audio_source_edit_url => 'Edit audio source link';
  @override
  String audio_source_error({required Object detail}) => '音頻來源錯誤：${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi 互聯';
  @override
  String get audio_source_loopback_warning =>
      'Points at this device — re-point after switching machines';
  @override
  String audio_source_request_error({required Object detail}) =>
      '音頻來源請求失敗：${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      '音頻來源逾時："${host}" — 伺服器無回應，請稍後再試或更換來源';
  @override
  String get audio_source_updated => 'Audio source updated';
  @override
  String get audio_source_url_invalid => '連結須為 http(s) 並含 term／reading 預留位置';
  @override
  String get audio_unavailable => '未找到音訊。';
  @override
  String get audio_volume => '音量';
  @override
  String get audiobook_attached => '已附加有聲書';
  @override
  String get audiobook_audio_missing => 'Audio file missing';
  @override
  String get audiobook_background_play => '離開後繼續播放';
  @override
  String get audiobook_background_play_hint =>
      '關閉時，離開閱讀頁即停止有聲書播放；開啟後離開仍在背景繼續播放。';
  @override
  String get audiobook_export_clip => 'Export clip video';
  @override
  String get audiobook_export_clip_failed => 'Clip export failed';
  @override
  String get audiobook_export_clip_in_progress => 'Exporting clip…';
  @override
  String get audiobook_export_clip_no_selection =>
      'Select text first to export a clip';
  @override
  String get audiobook_export_clip_no_text =>
      'This selection has no text to render';
  @override
  String get audiobook_export_clip_saved => 'Clip saved';
  @override
  String get audiobook_export_clip_unsupported_range =>
      'This selection can\'t be exported (crosses chapter or audio file)';
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
  String get audiobook_reference_original => 'Reference original files';
  @override
  String get audiobook_reference_original_desc =>
      'Keep audio where it is and play from its original path; the book breaks if the file is moved or deleted.';
  @override
  String get audiobook_relocate => 'Relocate file';
  @override
  String get audiobook_relocate_done => 'Audio relocated';
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
  String get backup_category_audiobooks_desc => 'Audiobook audio and alignment';
  @override
  String get backup_category_books => '書籍內容';
  @override
  String get backup_category_books_desc =>
      'Book files (EPUB and extracted content)';
  @override
  String get backup_category_dictionary => '詞典';
  @override
  String get backup_category_dictionary_desc =>
      'Imported dictionaries and their files';
  @override
  String get backup_category_fonts => '自訂字型';
  @override
  String get backup_category_fonts_desc => 'Imported custom font files';
  @override
  String get backup_category_local_audio => 'Local audio databases';
  @override
  String get backup_category_local_audio_desc =>
      'Local pronunciation audio databases';
  @override
  String get backup_category_profiles => 'Profiles';
  @override
  String get backup_category_profiles_desc => 'Configuration profiles';
  @override
  String get backup_category_progress => 'Reading progress';
  @override
  String get backup_category_progress_desc => 'Reading positions and bookmarks';
  @override
  String get backup_category_settings => 'Settings';
  @override
  String get backup_category_settings_desc => 'App and reader settings';
  @override
  String get backup_category_statistics => 'Statistics';
  @override
  String get backup_category_statistics_desc =>
      'Reading, video and mining statistics';
  @override
  String get backup_category_videos => '影片';
  @override
  String get backup_category_videos_desc => 'Local video files';
  @override
  String get backup_export => '匯出備份';
  @override
  String get backup_export_books_all => 'All books';
  @override
  String backup_export_books_selected({required Object count}) =>
      '${count} books selected';
  @override
  String get backup_export_categories_hint =>
      '勾選要打包進備份的內容。取消勾選「書籍」會連同這些書的正文和記錄一併移除。';
  @override
  String get backup_export_categories_title => '選擇要匯出的內容';
  @override
  String get backup_export_choose_books => 'Choose books';
  @override
  String get backup_export_choose_videos => 'Choose videos';
  @override
  String backup_export_failed({required Object message}) => '備份匯出失敗：${message}';
  @override
  String get backup_export_hint =>
      '勾選要包含的內容；資料庫（書籍、進度、統計）一律包含。取消大型項目（本地音訊、影片）可縮小備份體積。';
  @override
  String get backup_export_no_books => 'No books to choose from';
  @override
  String get backup_export_no_videos => 'No videos to choose from';
  @override
  String get backup_export_select_all => 'Select all';
  @override
  String get backup_export_select_none => 'Select none';
  @override
  String get backup_export_success => '備份匯出成功';
  @override
  String get backup_export_videos_all => 'All videos';
  @override
  String backup_export_videos_selected({required Object count}) =>
      '${count} videos selected';
  @override
  String get backup_exporting => '正在建立備份…';
  @override
  String get backup_import => '匯入備份';
  @override
  String backup_import_confirm(
          {required Object date,
          required Object bookCount,
          required Object statsCount}) =>
      '此操作會用 ${date} 的備份取代所有目前資料。\n\n共 ${bookCount} 本書、${statsCount} 條統計記錄。\n\n還原後 App 將會重新啟動。';
  @override
  String get backup_import_confirm_title => '還原備份？';
  @override
  String get backup_import_contents_hint => 'Untick an item to skip it.';
  @override
  String get backup_import_contents_title => 'This backup contains';
  @override
  String backup_import_failed({required Object message}) => '備份匯入失敗：${message}';
  @override
  String get backup_import_hint => '從備份檔案還原。App 將會重新啟動。';
  @override
  String get backup_import_invalid => '無效的備份檔案';
  @override
  String backup_import_merge_preview(
          {required Object bookCount, required Object progressCount}) =>
      'Merge will add ${bookCount} books and update ${progressCount} reading positions.';
  @override
  String get backup_import_mode_label => 'Import mode';
  @override
  String get backup_import_mode_merge => 'Merge into current library';
  @override
  String get backup_import_mode_overwrite => 'Overwrite entire library';
  @override
  String get backup_import_overlay_title => 'Importing backup';
  @override
  String get backup_import_overlay_warning =>
      'Restoring your data. Please don\'t close the app.';
  @override
  String get backup_import_preserve_sync_note => '本裝置的同步設定（帳戶與憑證）將會保留。';
  @override
  String get backup_import_restart_button => 'Restart now';
  @override
  String get backup_import_settings_off_hint => '保留本機字型／外觀／Profile，只還原書籍與閱讀資料。';
  @override
  String get backup_import_settings_on_hint => '完整還原：字型、外觀及 Profile 均來自備份。';
  @override
  String get backup_import_settings_toggle => '匯入設定與 Profile';
  @override
  String get backup_import_success => '備份已還原。正在重新啟動…';
  @override
  String get backup_import_validating_hint =>
      'Checking and previewing the backup file. This may take a moment.';
  @override
  String get backup_import_validating_title => 'Reading backup…';
  @override
  String backup_schema_newer({required Object version}) =>
      '此備份需要較新版本的 App（schema ${version}）。請先更新。';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      'Added ${n} item(s) to the collection.';
  @override
  String batch_delete_confirm({required Object n}) => '確定刪除 ${n} 本書？此操作不可撤銷。';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      '確定刪除 ${n} 個影片？此操作不可撤銷。';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      'Delete ${n} media and dissolve ${m} collection(s)? This cannot be undone.';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      'Deleted ${n} media, dissolved ${m} collection(s).';
  @override
  String batch_delete_success({required Object n}) => '已刪除 ${n} 本書。';
  @override
  String batch_delete_success_video({required Object n}) => '已刪除 ${n} 個影片。';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      'Dissolve ${m} collection(s)? Grouping is removed; the media is kept.';
  @override
  String batch_dissolve_success({required Object m}) =>
      'Dissolved ${m} collection(s).';
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
  String get book_mark_completed_action => 'Mark as completed';
  @override
  String get book_mark_uncompleted_action => 'Mark as not completed';
  @override
  String get book_marked_completed => 'Marked as completed';
  @override
  String get book_marked_uncompleted => 'Marked as not completed';
  @override
  String get book_mode => '書籍模式';
  @override
  String book_read_progress({required Object percent}) => 'Read ${percent}%';
  @override
  String get book_scrape_cover => 'Scrape cover online';
  @override
  String get book_scrape_empty => 'No matching covers';
  @override
  String get book_scrape_failed => 'Failed to fetch cover';
  @override
  String get book_scrape_hint => 'Book title / author';
  @override
  String get book_scrape_search => 'Search';
  @override
  String get book_scrape_search_failed => 'Search failed. Tap Search to retry.';
  @override
  String get book_scrape_title => 'Match cover online';
  @override
  String get book_scrape_use => 'Use';
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
      'Tip: enable "Yomitan API server" and set an API key above first, so the extension is auto-configured with a working connection.';
  @override
  String get browser_extension_mobile_unsupported =>
      '手機瀏覽器無法載入此擴充功能，請直接在 app 內閱讀器／影片中查詞。';
  @override
  String get browser_extension_page_intro =>
      'On desktop, look up words, parse subtitles and mine cards right inside Chrome or Edge. Prepare the extension below, then load it in your browser.';
  @override
  String get browser_extension_prepare_button => 'Prepare extension files';
  @override
  String get browser_extension_prepare_hint =>
      'Starts the lookup server and unpacks the extension locally; the folder path is copied to the clipboard.';
  @override
  String get browser_extension_reinstall_button => 'Re-prepare / refresh files';
  @override
  String get browser_extension_server_off => 'Lookup server off';
  @override
  String get browser_extension_server_on => 'Lookup server on';
  @override
  String get browser_extension_status_connected => 'Extension connected';
  @override
  String get browser_extension_status_never => 'Extension not detected yet';
  @override
  String get browser_extension_step_dev_mode =>
      'Turn on "Developer mode" (toggle in the top-right corner).';
  @override
  String get browser_extension_step_done_auto =>
      '完成。擴充功能已自動設定好，裝好後會直接連上本應用查詞，你無需手動填寫任何設定。';
  @override
  String get browser_extension_step_load_unpacked => 'Click "Load unpacked".';
  @override
  String get browser_extension_step_open_page =>
      'Open the browser extensions page:';
  @override
  String get browser_extension_step_pick_folder =>
      'Select the extension folder below (its path is already copied to your clipboard).';
  @override
  String get browser_extension_step_verify =>
      'Verify the extension is loaded and connected';
  @override
  String get browser_extension_verify_button => 'Check connection';
  @override
  String get browser_extension_verify_checking => 'Checking…';
  @override
  String get browser_extension_verify_connected =>
      'Extension detected and connected.';
  @override
  String get browser_extension_verify_not_detected =>
      'No extension detected yet. Make sure it is loaded and enabled in your browser, then check again.';
  @override
  String get browser_extension_version_app => 'App bundled';
  @override
  String get browser_extension_version_browser => 'Loaded in browser';
  @override
  String get browser_extension_version_label => 'Extension version';
  @override
  String get browser_extension_version_mismatch =>
      'The extension loaded in your browser is outdated. Prepare the extension again if needed, then reload it from your browser\'s extensions page (chrome://extensions).';
  @override
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      'Port ${port} is in use by another process (usually the yomitan-api component — a Python process launched by your browser). End that process, or disable Yomitan API in Yomitan\'s advanced settings, then enable the Yomitan API server in Fushi again.';
  @override
  String get cancel => '取消';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      'Card cover fell back to a still frame (animated clip unavailable): ${reason}';
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
      'Card created, but no sentence was captured (re-select the word, or this text has no recognizable sentence).';
  @override
  String get card_mined_unmapped_sentence_audio_field =>
      'Card created with sentence audio, but your Anki note type has no field mapped to it. Map a field to {sentence-audio}.';
  @override
  String get card_mined_unmapped_sentence_field =>
      'Card created, but your Anki note type has no field mapped to the sentence. Use Settings -> \'Create Lapis deck\' or map a field to {sentence}.';
  @override
  String get card_mined_without_sentence_audio => '已製卡，但今次選取範圍找不到例句音訊。';
  @override
  String get card_mining_pending => 'Adding card…';
  @override
  String card_overwritten({required Object deck}) => '卡片已覆寫至『${deck}』。';
  @override
  String get change_source => '切換來源';
  @override
  String get changelog_empty =>
      'No changelog found. Check your network or proxy settings.';
  @override
  String get changelog_open_releases => 'Open releases page';
  @override
  String get changelog_prerelease => 'Prerelease';
  @override
  String chapter_progress(
          {required Object idx,
          required Object total,
          required Object suffix,
          required Object pct}) =>
      '第 ${idx} / ${total} 章${suffix} · ${pct}%';
  @override
  String get clear => '清除';
  @override
  String get clear_dictionary_description => '此操作將清除所有歷史辭典搜尋結果。確定嗎？';
  @override
  String get clear_dictionary_title => '清除辭典搜尋歷史';
  @override
  String get clipboard_history_clear => 'Clear';
  @override
  String get clipboard_history_empty => 'No copy history yet';
  @override
  String get clipboard_history_title => 'Clipboard history';
  @override
  String get clipboard_panel_block_capture => 'Block screen capture';
  @override
  String get clipboard_panel_block_capture_hint =>
      'Excludes the lookup and clipboard popup windows from screenshots, screen recording, and live streaming (Windows). Turn this off to let screenshots, recording, and streaming capture the lookup popup.';
  @override
  String get clipboard_panel_opacity => 'Panel opacity';
  @override
  String get clipboard_panel_opacity_hint =>
      'Whole-panel opacity — see through to the game or page beneath';
  @override
  String get clipboard_panel_window_title => 'Fushi clipboard lookup';
  @override
  String get clipboard_text_window_bg_opacity => 'Text window background';
  @override
  String get clipboard_text_window_bg_opacity_hint =>
      'Background opacity of the transparent clipboard text window — 0% shows only the text over the game beneath';
  @override
  String get clipboard_text_window_title => 'Clipboard text';
  @override
  String get collapse_dictionaries => '折疊辭典顯示';
  @override
  String get collection_bookmark => '書籤';
  @override
  String get collection_clear_confirm =>
      'Permanently delete the selected collections? This can\'t be undone.';
  @override
  String get collection_clear_scope => 'Clear scope';
  @override
  String get collection_collapse => 'Collapse';
  @override
  String collection_continue_progress({required Object n}) =>
      'Continue · EP ${n}';
  @override
  String get collection_empty => 'Collection is empty';
  @override
  String get collection_expand => 'Expand';
  @override
  String get collection_export_all_books => 'All books';
  @override
  String get collection_export_all_mined => 'All mined sentences';
  @override
  String get collection_export_all_words => 'All favorite words';
  @override
  String get collection_export_dedupe => 'Deduplicate by sentence';
  @override
  String get collection_export_failed => 'Export failed';
  @override
  String get collection_export_favorites_scope => 'Favorite sentences';
  @override
  String get collection_export_format => 'Format';
  @override
  String get collection_export_mined_title => 'Mined Sentences';
  @override
  String get collection_export_no_items => 'Nothing to export';
  @override
  String get collection_export_pick_book => 'Choose a book';
  @override
  String get collection_export_save => 'Save Export';
  @override
  String get collection_export_saved => 'Export saved';
  @override
  String get collection_export_scope => 'Export scope';
  @override
  String get collection_export_sentences_title => 'Favorite Sentences';
  @override
  String get collection_export_words_title => 'Favorite Words';
  @override
  String get collection_loading_hint =>
      'Loading collections and matching audio files…';
  @override
  String get collection_member_removed => 'Removed from collection';
  @override
  String get collection_merge_title => 'Merge collections';
  @override
  String get collection_merged => 'Collections merged.';
  @override
  String get collection_mined => '製卡句';
  @override
  String get collection_open => 'Open';
  @override
  String get collection_play => 'Play';
  @override
  String get collection_remove_member => 'Remove from collection';
  @override
  String get collection_remove_member_confirm =>
      'Remove this item from the collection? The item itself is kept.';
  @override
  String get collection_sentence => '句子';
  @override
  String get collection_sort_by_imported => 'Sort by import date';
  @override
  String get collection_sort_by_title => 'Sort by name';
  @override
  String get collection_view_all => 'View all';
  @override
  String collection_watched_progress(
          {required Object done, required Object total}) =>
      'Watched ${done}/${total}';
  @override
  String get collection_word => 'Word';
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
  String get combine_into_series => 'Combine into series';
  @override
  String get copied => 'Copied';
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
  String get create_series => 'Create series';
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
  String get custom_fonts_font_roles => 'Font roles';
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
  String custom_theme_default_name({required Object n}) => 'Custom ${n}';
  @override
  String get custom_theme_long_press_hint =>
      'Tap to switch · long-press to edit';
  @override
  String get custom_theme_name => 'Name';
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
      'Your configured data location ${path} is temporarily unreachable (the drive may be asleep, busy, or disconnected). Your data is safe and untouched there — nothing is lost. Tap Retry once the drive is ready to load your data, or start with the default location for now (your existing data will NOT be modified).';
  @override
  String get data_root_unavailable_title => 'Data location not responding';
  @override
  String get data_root_use_default_button => 'Start with default location';
  @override
  String get data_storage_change_button => 'Change location';
  @override
  String get data_storage_change_confirm_body =>
      'Fushi will move all your data to the new folder and then restart. Do not close the app during the move.';
  @override
  String get data_storage_change_confirm_title =>
      'Change data storage location?';
  @override
  String get data_storage_location_default => 'Default location';
  @override
  String get data_storage_location_hint =>
      'Where Fushi keeps your library, audiobooks and database. Desktop only.';
  @override
  String get data_storage_location_title => 'Data storage location';
  @override
  String data_storage_migrate_failed({required Object message}) =>
      'Could not move data: ${message}';
  @override
  String get data_storage_migrate_failed_restart => 'Restart';
  @override
  String get data_storage_migrate_failed_suggestions =>
      'Please try again with a different, empty folder. Do not choose the app\'s install folder, and make sure no files in that location are in use.';
  @override
  String get data_storage_migrate_failed_title => 'Data migration failed';
  @override
  String data_storage_migrate_overlay_progress(
          {required Object copied, required Object total}) =>
      'Copying files: ${copied} / ${total}';
  @override
  String get data_storage_migrate_overlay_title => 'Moving your data';
  @override
  String get data_storage_migrate_overlay_warning =>
      'Please keep the app open. Do not close or shut down your computer until it finishes.';
  @override
  String get data_storage_migrate_success => 'Data moved. Restarting…';
  @override
  String get data_storage_migrating => 'Moving data…';
  @override
  String get data_storage_reject_install_dir =>
      'That folder is the app\'s install location and can\'t store your data. Please choose a different, empty folder.';
  @override
  String get data_storage_restart_failed =>
      'Data moved, but automatic restart failed. Please reopen Fushi manually.';
  @override
  String db_downgrade_message(
          {required Object dbVersion, required Object appVersion}) =>
      '此資料庫由較新版本的 Fushi 建立（schema v${dbVersion}）。目前 App 版本過舊（v${appVersion}）。為保護你的資料已阻止開啟。請更新 App 後再試一次。';
  @override
  String get db_downgrade_title => '請更新 Fushi';
  @override
  String get db_unrecoverable_message =>
      'The database could not be opened even after automatic repair. It is likely corrupt. You can restore a backup in Settings, or clear app data to start fresh.';
  @override
  String get db_unrecoverable_title => 'Database damaged';
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
  String get delete_collection => 'Delete collection';
  @override
  String get delete_collection_also_books => 'Also delete the books in it';
  @override
  String get delete_collection_also_videos =>
      'Also delete the videos (keeps your original video files)';
  @override
  String get delete_custom_theme => 'Delete theme';
  @override
  String get delete_custom_theme_confirm =>
      'Delete this custom theme? This cannot be undone.';
  @override
  String get delete_in_progress => '刪除中';
  @override
  String get delete_prompt_delete_selected => 'Delete selected';
  @override
  String get delete_prompt_message =>
      'These items were deleted on another device. Delete them here too?';
  @override
  String get delete_prompt_select_all => 'Select all';
  @override
  String get delete_prompt_title => 'Deleted on another device';
  @override
  String get delete_scope_keep_local_desc => 'Other devices keep their copy';
  @override
  String get delete_scope_sync_everywhere => 'Delete from all devices';
  @override
  String get delete_scope_sync_everywhere_desc =>
      'Other devices confirm the deletion on next sync';
  @override
  String get design_system_auto => '自動';
  @override
  String get design_system_hint => '切換應用程式的視覺風格';
  @override
  String get design_system_label => '設計系統';
  @override
  String get desktop_clipboard_auto_lookup => 'Auto-look-up on copy';
  @override
  String get desktop_clipboard_auto_lookup_hint =>
      'When off, the panel shows only the copied text; tap a word to look it up.';
  @override
  String get desktop_clipboard_destination => '查詞彈窗位置';
  @override
  String get desktop_clipboard_destination_main => 'Main window';
  @override
  String get desktop_clipboard_destination_panel => 'Floating panel';
  @override
  String get desktop_clipboard_destination_text_window =>
      'Transparent text window';
  @override
  String get desktop_clipboard_destination_transient => 'Popup at cursor';
  @override
  String get desktop_clipboard_enabled => '桌面剪貼簿查詞';
  @override
  String get desktop_clipboard_enabled_hint => '監聽剪貼簿＋全域快捷鍵彈出查詞視窗（桌面·實驗性）';
  @override
  String get desktop_clipboard_window_mode => '視窗置頂策略';
  @override
  String get desktop_clipboard_window_mode_always => '永遠置頂';
  @override
  String get desktop_clipboard_window_mode_hint =>
      'Controls whether Fushi stays above other windows';
  @override
  String get desktop_clipboard_window_mode_lookup => '僅查詞期間';
  @override
  String get desktop_clipboard_window_mode_normal => '不置頂';
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
  String get dialog_replace => 'Replace';
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
  String dict_download_partial(
          {required Object success,
          required Object total,
          required Object error}) =>
      '成功 ${success} / ${total}。失敗：${error}';
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
  String dict_update_name_mismatch_body(
          {required Object incoming, required Object existing}) =>
      '所選檔案是「${incoming}」，但你正在更新「${existing}」。仍要替換嗎？';
  @override
  String get dict_update_name_mismatch_title => '詞典名稱不一致';
  @override
  String get dict_update_none => '所有詞典均為最新。';
  @override
  String dict_update_summary(
          {required Object updated,
          required Object current,
          required Object failed}) =>
      '${updated} 個已更新，${current} 個最新，${failed} 個失敗。';
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
  String get dictionary_font_size_zoom_hint =>
      'Ctrl + scroll wheel zooms the popup content';
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
  String get download_backend_not_configured =>
      'Download backend is not configured yet.';
  @override
  String get download_clear_finished => 'Clear finished';
  @override
  String get download_detail_backend_offline =>
      'The original download backend is offline. Persisted task information is shown; live parameters are unavailable.';
  @override
  String get download_network_proxy_auto => 'Auto';
  @override
  String get download_network_proxy_auto_hint =>
      'Applies to AniList, Nyaa, and Jimaku only. Auto uses environment variables, then the enabled system proxy; torrent traffic is unchanged.';
  @override
  String get download_network_proxy_custom => 'Custom';
  @override
  String get download_network_proxy_custom_label => 'Custom proxy';
  @override
  String get download_network_proxy_direct => 'Direct';
  @override
  String get download_network_proxy_section => 'Discovery network';
  @override
  String get download_open_settings => 'Open settings';
  @override
  String get download_save_root_change => 'Change folder';
  @override
  String get download_save_root_create_failed =>
      'Cannot create that folder. Check the drive and permissions.';
  @override
  String get download_save_root_fallback_warning =>
      'The configured download folder is unavailable, so the default folder is being used.';
  @override
  String get download_save_root_hint =>
      'New downloads are saved here. Existing tasks keep their original folder.';
  @override
  String get download_save_root_not_absolute =>
      'Please pick an absolute folder path.';
  @override
  String get download_save_root_not_writable => 'That folder is not writable.';
  @override
  String get download_save_root_reset => 'Restore default';
  @override
  String get download_save_root_title => 'Download folder';
  @override
  String get download_settings => 'Download settings';
  @override
  String get download_status_cancelled => 'Cancelled';
  @override
  String get download_status_queued => 'Queued';
  @override
  String download_subscription_after_episode({required Object episode}) =>
      'After episode ${episode}';
  @override
  String get download_subscription_check_all => 'Check all';
  @override
  String get download_subscription_check_now => 'Check now';
  @override
  String download_subscription_choice_hint(
          {required Object group, required Object resolution}) =>
      'Follow ${group} · ${resolution}. New single-episode releases will be queued.';
  @override
  String get download_subscription_created =>
      'Download queued and subscription created';
  @override
  String get download_subscription_delete => 'Delete subscription';
  @override
  String download_subscription_delete_confirm({required Object title}) =>
      'Delete the subscription for ${title}? Downloaded tasks are kept.';
  @override
  String get download_subscription_download_and_create =>
      'Download and subscribe';
  @override
  String get download_subscription_empty_body =>
      'In Discover, choose a single-episode release and use Download and subscribe.';
  @override
  String get download_subscription_empty_title => 'No subscriptions yet';
  @override
  String download_subscription_last_checked({required Object time}) =>
      'Last checked: ${time}';
  @override
  String download_subscription_latest_episode({required Object episode}) =>
      'Latest queued: episode ${episode}';
  @override
  String get download_subscription_never_checked => 'Never checked';
  @override
  String get download_subscription_running_hint =>
      'Fushi checks enabled subscriptions every 15 minutes while the app is running.';
  @override
  String get download_subscription_unavailable_hint =>
      'Choose a single-episode release with a recognizable release group to subscribe.';
  @override
  String get download_subscriptions_tab => 'Subscriptions';
  @override
  String download_task_action_failed({required Object error}) =>
      'The task action failed: ${error}';
  @override
  String get download_task_delete => 'Delete task';
  @override
  String download_task_delete_confirm({required Object title}) =>
      'Delete the download task for ${title}?';
  @override
  String get download_task_delete_files => 'Also delete downloaded files';
  @override
  String get download_task_details => 'View details';
  @override
  String get download_tasks_tab => 'Tasks';
  @override
  String get download_test_connection => 'Test connection';
  @override
  String get download_test_connection_failed =>
      'Connection failed. Check the address and credentials.';
  @override
  String download_test_connection_ok({required Object version}) =>
      'Connected (version: ${version})';
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
  String get edit_custom_theme => 'Edit custom theme';
  @override
  String get eink_mode => 'E-ink mode';
  @override
  String get eink_mode_hint =>
      'Pure black-and-white theme with no animations and line-style highlights, for e-ink displays';
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
  String get error_load_failed => 'Something went wrong while loading';
  @override
  String get error_log_diagnostics_section =>
      'Diagnostics / forensics (not app errors)';
  @override
  String get error_log_empty => '暫無錯誤日誌';
  @override
  String error_log_label({required Object n}) => '錯誤記錄 (${n})';
  @override
  String get error_log_previous_run => '歷史日誌（上次運行前）';
  @override
  String get error_log_share_subject => 'Fushi 錯誤記錄';
  @override
  String get extension_popup_independent_size =>
      'Separate size for browser extension';
  @override
  String get extension_popup_independent_size_hint =>
      'Give the browser-extension lookup popup its own max size instead of following the in-app popup';
  @override
  String get extension_popup_max_height => 'Extension popup max height';
  @override
  String get extension_popup_max_width => 'Extension popup max width';
  @override
  String get external_window_capture_failed => 'Window capture failed';
  @override
  String get external_window_current_game => 'Current game';
  @override
  String get external_window_mining => 'External window mining';
  @override
  String get external_window_no_windows => 'No capturable windows found';
  @override
  String get external_window_none => 'No window bound (tap to select)';
  @override
  String get external_window_refresh => 'Refresh window list';
  @override
  String get external_window_select => 'Select target window';
  @override
  String get external_window_unbind => 'Unbind window';
  @override
  String get external_window_unsupported =>
      'External window mining is Windows-only';
  @override
  String get failed_online_service => '與線上服務通訊失敗';
  @override
  String get favorite_added => '句子已收藏';
  @override
  String get favorite_removed => '句子已取消收藏。';
  @override
  String favorites({required Object n}) => '收藏 (${n})';
  @override
  String field_fallback_used(
          {required Object field, required Object secondField}) =>
      '${field} 欄位使用 ${secondField} 作為備選搜尋詞。';
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
  String get floating_lyric_context_lines => 'Floating subtitle context lines';
  @override
  String get floating_lyric_context_lines_hint =>
      '0 shows only the current line (single-line, unchanged); set 1-3 to show that many lines before and after it';
  @override
  String get floating_lyric_corner_radius => 'Floating subtitle corner radius';
  @override
  String get floating_lyric_corner_radius_hint =>
      '0 keeps each platform\'s default corners; raise it to round the bar and buttons more';
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
      'If the system keeps refusing the overlay permission: reinstall this app\'s APK once with a file manager, or turn off permission monitoring in Developer options, then try again.';
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
  String get floating_lyric_width => 'Floating subtitle width';
  @override
  String get floating_lyric_width_hint =>
      '0 uses the platform default width; set a value to make the bar a fixed width';
  @override
  String get focus_navigation_enabled => '鍵盤／手掣焦點導覽';
  @override
  String get focus_navigation_enabled_hint => '以方向鍵或手掣移動焦點並顯示焦點環。';
  @override
  String get folder_picker_permission_required =>
      'Storage permission is required to browse folders';
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
  String get font_desc_noto_serif_tc =>
      'Google/Adobe Serif · Traditional Chinese glyphs priority · Ideal for vertical reading';
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
  String get gal_hook_text_font_size => 'Galgame caption font size';
  @override
  String get gal_hook_text_font_size_hint =>
      'Drag the overlay\'s corner to resize the window; the caption size is set here.';
  @override
  String get game_add => 'Add game';
  @override
  String get game_already_added => 'This game is already in the library';
  @override
  String get game_audio_backend_engine => 'Engine PCM';
  @override
  String get game_audio_backend_loopback => 'System loopback (mixed)';
  @override
  String get game_audio_backend_none => 'No audio source';
  @override
  String get game_audio_backend_resource => 'Game resource audio';
  @override
  String get game_audio_duration => 'Audio duration';
  @override
  String get game_audio_fallback_disabled_missing =>
      '未找到与该句匹配的游戏资源音频；已关闭降级，未制卡';
  @override
  String get game_audio_resource_id => '音频资源 ID';
  @override
  String get game_audio_tracks => 'Active audio tracks';
  @override
  String get game_auto_cover => 'Fetch cover automatically';
  @override
  String get game_back_to_capture => 'Back to capture workspace';
  @override
  String get game_back_to_library => 'Back to game library';
  @override
  String get game_capture_active => 'Capture is active';
  @override
  String get game_capture_degraded_loopback =>
      'The game is running, but engine injection failed; falling back to system audio, which can mix in BGM and effects.';
  @override
  String get game_capture_description =>
      'Launch or attach a game, then monitor text, voice, screenshots and Anki output.';
  @override
  String get game_capture_empty_body =>
      'Launch or bind a game; text and sentence-audio status will appear here.';
  @override
  String get game_capture_empty_title => 'No lines received yet';
  @override
  String get game_capture_launch_failed => 'Game launch or capture failed';
  @override
  String get game_capture_launching => 'Launching game and starting capture...';
  @override
  String get game_capture_running => 'Capture session is running';
  @override
  String get game_capture_window_missing =>
      'The game process started but its window never appeared, so the game may not have launched. Try starting it again.';
  @override
  String get game_capture_workbench => 'Capture workspace';
  @override
  String get game_captured_lines => 'Captured lines';
  @override
  String get game_card_mapping_missing =>
      'Anki field mappings are missing game-card tokens';
  @override
  String get game_card_sentence_audio_missing =>
      'The card was created without sentence audio; no other line\'s audio was substituted.';
  @override
  String get game_clear_events => 'Clear events';
  @override
  String get game_cover_not_found =>
      'No usable cover found in the game folder or executable';
  @override
  String get game_cover_searching => 'Looking for a cover...';
  @override
  String get game_cover_updated => 'Cover updated';
  @override
  String get game_dashboard => 'Home';
  @override
  String get game_detail_missing => 'This game is no longer in the library';
  @override
  String get game_detail_tab_edit => 'Edit';
  @override
  String get game_detail_tab_stats => 'Stats';
  @override
  String get game_detail_tab_summary => 'Overview';
  @override
  String get game_diagnostics => 'Compatibility diagnostics';
  @override
  String get game_diagnostics_subtitle =>
      'Session stages, endpoints, audio tracks and structured events';
  @override
  String game_drop_imported({required Object count}) =>
      'Added ${count} game(s)';
  @override
  String get game_drop_no_exe => 'No new game .exe among the dropped files';
  @override
  String get game_edit_developer => 'Developer';
  @override
  String get game_edit_display_name => 'Display name';
  @override
  String get game_edit_exe_path => 'Executable path';
  @override
  String get game_edit_invalid_date => 'Release date must be YYYY-MM-DD';
  @override
  String get game_edit_launch_args => 'Launch arguments';
  @override
  String get game_edit_launch_args_hint =>
      'Passed to the game on launch, e.g. -windowed';
  @override
  String get game_edit_nsfw => 'Adult title';
  @override
  String get game_edit_release_date => 'Release date (YYYY-MM-DD)';
  @override
  String get game_edit_save => 'Save';
  @override
  String get game_edit_saved => 'Saved';
  @override
  String get game_edit_summary => 'Description';
  @override
  String get game_edit_tags => 'Tags (comma separated)';
  @override
  String get game_edit_user_rating => 'My rating (0-10)';
  @override
  String get game_edit_user_review => 'My review';
  @override
  String get game_edit_workdir => 'Working directory';
  @override
  String get game_empty => 'No games added yet';
  @override
  String get game_endpoint_phase_connected => 'Connected';
  @override
  String get game_endpoint_phase_connecting => 'Connecting';
  @override
  String get game_endpoint_phase_retrying => 'Retrying';
  @override
  String get game_endpoint_phase_stopped => 'Stopped';
  @override
  String get game_endpoints_engine_active =>
      'Text is provided by the engine hook; these endpoints are optional';
  @override
  String get game_endpoints_hint =>
      'Ports for external text tools (Textractor / LunaTranslator etc.); ignore if you don\'t use them';
  @override
  String get game_event_all => 'All events';
  @override
  String get game_event_warnings => 'Warnings and errors';
  @override
  String get game_exe_missing => 'Game executable not found';
  @override
  String get game_filter => 'Filter';
  @override
  String get game_filter_all => 'All';
  @override
  String get game_filter_favorited => 'Favorited';
  @override
  String get game_filter_hide_nsfw => 'Hide adult titles';
  @override
  String get game_filter_local_only => 'Has local file';
  @override
  String get game_filter_metadata_only => 'Metadata only';
  @override
  String get game_filter_mined => 'Mined';
  @override
  String get game_filter_reset => 'Clear filters';
  @override
  String get game_filter_source => 'Availability';
  @override
  String get game_filter_status => 'Play status';
  @override
  String get game_filter_tags => 'Tags';
  @override
  String get game_filter_with_audio => 'With audio';
  @override
  String get game_focus_continue => 'Continue';
  @override
  String get game_follow_live => 'Follow live';
  @override
  String get game_health => 'Health status';
  @override
  String get game_health_anki => 'Anki output';
  @override
  String get game_health_audio => 'Audio source';
  @override
  String get game_health_helper => 'Hook helper';
  @override
  String get game_health_process => 'Game process';
  @override
  String get game_health_text => 'Text source';
  @override
  String get game_health_upscaling => 'Window upscaling';
  @override
  String get game_health_window => 'Game window';
  @override
  String get game_helper_download => 'Download';
  @override
  String game_helper_download_failed({required Object error}) =>
      'Engine component download failed: ${error}';
  @override
  String get game_helper_downloading => 'Downloading engine component…';
  @override
  String get game_helper_install_incomplete =>
      'Engine component install incomplete, please retry';
  @override
  String game_helper_needed_body({required Object size}) =>
      'Launching a galgame needs the engine-hook injector component (about ${size}). It contains process-injection code and ships separately from the app to avoid antivirus false positives. Download it now?';
  @override
  String get game_helper_needed_title => 'Galgame engine component required';
  @override
  String get game_helper_size_unknown => 'unknown size';
  @override
  String get game_helper_verification_failed =>
      'Engine component blocked: its checksum could not be verified (the .sha256 file from GitHub is unreachable, missing, or does not match). Fushi refuses to install unverified injector code.';
  @override
  String get game_home_subtitle => 'Game library and capture monitoring';
  @override
  String get game_hook_fallback_all_audio_sources_failed =>
      'Neither the engine voice hook nor the system loopback could be started; no audio can be captured.';
  @override
  String get game_hook_fallback_engine_attach_failed =>
      'Attaching the engine voice hook to the running game failed; system mix is used instead.';
  @override
  String get game_hook_fallback_engine_pcm_unavailable =>
      'The engine voice hook is installed, but the game has not played any voice yet. System mix is used for now and will switch back automatically once the first voice arrives.';
  @override
  String get game_hook_fallback_launch_injection_failed =>
      'The game is running, but early engine injection failed; system mix is used instead.';
  @override
  String get game_hook_fallback_window_not_found =>
      'Audio capture is running, but the game window has not appeared yet, so screenshots are unavailable. It will bind automatically once the window shows up.';
  @override
  String get game_hook_line_unavailable =>
      'This captured line is no longer available.';
  @override
  String get game_hook_reason_access_denied =>
      'The game runs with higher privileges; start Fushi as administrator and try again.';
  @override
  String get game_hook_reason_bitness_mismatch =>
      'Helper architecture does not match the game (32-bit vs 64-bit); reinstall the helper.';
  @override
  String get game_hook_reason_create_process_failed =>
      'The game could not be started from Fushi; check the executable path.';
  @override
  String get game_hook_reason_elevation_required =>
      'This game requires administrator rights; start Fushi as administrator and launch it again.';
  @override
  String get game_hook_reason_game_exe_missing =>
      'The game executable no longer exists at the saved path.';
  @override
  String get game_hook_reason_guarded_hook_failed =>
      'A profile-guarded hook could not be installed in time; retrying automatically.';
  @override
  String get game_hook_reason_handshake_timeout =>
      'The game was hooked but produced no text or audio in time; this engine may not be supported yet.';
  @override
  String get game_hook_reason_helper_missing =>
      'Voice-hook helper is not installed for this game architecture; install it and try again.';
  @override
  String get game_hook_reason_hook_dll_missing =>
      'The helper package is incomplete (hook library missing); reinstall it.';
  @override
  String get game_hook_reason_injection_failed =>
      'Injection into the game was blocked; add Fushi and the game to antivirus exclusions.';
  @override
  String get game_hook_reason_ready_timeout =>
      'The hook library did not finish loading in time; antivirus scanning can cause this.';
  @override
  String get game_hook_reason_resume_failed =>
      'The launched game could not be resumed and was stopped; launch it again.';
  @override
  String get game_hook_reason_shared_memory_unavailable =>
      'The capture channel could not be opened; restart Fushi.';
  @override
  String get game_hook_reason_spawn_failed =>
      'The helper could not be started; check that antivirus has not removed or blocked it.';
  @override
  String get game_hook_reason_stale_session =>
      'A previous capture session is still loaded in the game; restart the game once.';
  @override
  String get game_hook_reason_steam_timeout =>
      'Steam accepted the launch request but the game process never appeared.';
  @override
  String get game_hook_reason_target_missing =>
      'No game process or executable was selected for capture.';
  @override
  String get game_hook_recapture_empty =>
      'No audio captured in the recapture window';
  @override
  String get game_hook_recapture_saved => 'Recaptured voice saved to this line';
  @override
  String get game_hook_recapture_started =>
      'Recording — replay this line in the game';
  @override
  String get game_hook_recapture_unavailable =>
      'Voice recapture needs system loopback audio';
  @override
  String get game_kpi_total_games => 'Games';
  @override
  String get game_kpi_week => 'This week';
  @override
  String get game_latest_line => 'Latest line';
  @override
  String get game_launch => 'Launch';
  @override
  String get game_launch_and_capture => 'Launch and capture';
  @override
  String get game_launch_unsupported =>
      'Launching games is only supported on Windows';
  @override
  String get game_library => 'Game library';
  @override
  String get game_line_audio_encoded => 'Audio extracted';
  @override
  String get game_line_audio_fallback => 'Fallback';
  @override
  String get game_line_audio_matched => 'Audio ready';
  @override
  String get game_line_audio_missing => 'No audio';
  @override
  String get game_line_audio_pending => 'Matching';
  @override
  String get game_line_audio_unavailable => 'Text only';
  @override
  String get game_line_favorite_tooltip => 'Favorite this line';
  @override
  String get game_line_mined => 'Mined';
  @override
  String get game_line_preview_failed => 'No playable audio for this line';
  @override
  String get game_line_preview_tooltip => 'Play this line\'s audio';
  @override
  String get game_line_track_applied => 'Voice track applied to this line';
  @override
  String get game_line_track_dialog_title => 'Voice track for this line';
  @override
  String get game_line_track_failed =>
      'That track has no audio around this line';
  @override
  String get game_line_track_tooltip => 'Pick the voice track for this line';
  @override
  String get game_line_unfavorite_tooltip => 'Remove favorite';
  @override
  String get game_live_lines => 'Live lines';
  @override
  String get game_manage_tracks => '管理音軌';
  @override
  String get game_meta_added => 'Added';
  @override
  String get game_meta_ranking => 'Ranking';
  @override
  String get game_meta_source => 'Data source';
  @override
  String get game_never_played => 'Never played';
  @override
  String get game_no_active_line =>
      'Select a line to inspect its sentence-audio state.';
  @override
  String get game_no_events => 'No session events yet';
  @override
  String get game_no_match => 'No games match the current filters';
  @override
  String get game_no_tracks => 'No audio-track data yet';
  @override
  String get game_open_capture_workspace => 'Open capture workspace';
  @override
  String get game_phase_attaching => 'Attaching';
  @override
  String get game_phase_degraded => 'Degraded';
  @override
  String get game_phase_error => 'Error';
  @override
  String get game_phase_idle => 'Idle';
  @override
  String get game_phase_injecting => 'Injecting';
  @override
  String get game_phase_launching => 'Launching';
  @override
  String get game_phase_resolving => 'Resolving';
  @override
  String get game_phase_running => 'Running';
  @override
  String get game_phase_stopping => 'Stopping';
  @override
  String get game_phase_waiting_signals => 'Waiting for signals';
  @override
  String get game_pipeline => 'Session pipeline';
  @override
  String get game_play_status => 'Play status';
  @override
  String get game_random_reroll => 'Shuffle';
  @override
  String get game_random_title => 'Pick for me';
  @override
  String get game_recently_played => 'Recently played';
  @override
  String get game_refresh_tracks => 'Refresh tracks';
  @override
  String get game_remove => 'Remove';
  @override
  String get game_rename => 'Rename';
  @override
  String get game_rename_label => 'Game name';
  @override
  String get game_scrape => 'Fetch metadata';
  @override
  String get game_scrape_applied => 'Metadata updated';
  @override
  String get game_scrape_failed => 'Metadata fetch failed';
  @override
  String get game_scrape_no_result => 'No matching entry found';
  @override
  String get game_scrape_query => 'Title or source ID';
  @override
  String get game_search => 'Search games';
  @override
  String get game_session_events => 'Session events';
  @override
  String get game_session_idle => 'Capture has not started';
  @override
  String get game_session_listening => 'Listening';
  @override
  String get game_set_cover => 'Set cover';
  @override
  String get game_show_hook_text_window => 'Show Hook text window';
  @override
  String get game_site_score => 'Site rating';
  @override
  String get game_sort => 'Sort';
  @override
  String get game_sort_added => 'Date added';
  @override
  String get game_sort_last_played => 'Last played';
  @override
  String get game_sort_name => 'Name';
  @override
  String get game_sort_release => 'Release date';
  @override
  String get game_sort_site_score => 'Site rating';
  @override
  String get game_sort_user_rating => 'My rating';
  @override
  String get game_stat_daily => 'Daily play time';
  @override
  String get game_stat_delete_session => 'Delete this session';
  @override
  String get game_stat_last_played => 'Last played';
  @override
  String get game_stat_no_sessions => 'No play sessions recorded yet';
  @override
  String get game_stat_session_list => 'Session history';
  @override
  String get game_stat_sessions => 'Sessions';
  @override
  String get game_stat_today => 'Today\'s play time';
  @override
  String get game_stat_total_time => 'Total play time';
  @override
  String get game_status_dropped => 'Dropped';
  @override
  String get game_status_not_configured => 'Not verified';
  @override
  String get game_status_on_hold => 'On hold';
  @override
  String get game_status_played => 'Played';
  @override
  String get game_status_playing => 'Playing';
  @override
  String get game_status_ready => 'Ready';
  @override
  String get game_status_unset => 'Not set';
  @override
  String get game_status_waiting => 'Waiting';
  @override
  String get game_status_want_to_play => 'Want to play';
  @override
  String get game_stop_listening => 'Stop listeners';
  @override
  String get game_summary_aliases => 'Aliases';
  @override
  String get game_summary_all_titles => 'All titles';
  @override
  String get game_summary_average_hours => 'Average play time';
  @override
  String get game_summary_none =>
      'No description yet. Fetch metadata to fill it in.';
  @override
  String get game_summary_release_date => 'Release date';
  @override
  String get game_tags_clear => 'Clear selection';
  @override
  String get game_tags_title => 'Game tags';
  @override
  String get game_text_endpoints => 'Text endpoints';
  @override
  String get game_text_gaps => 'Sequence gaps';
  @override
  String get game_text_gaps_hint =>
      'Sequence gaps = dropped-line count in the hook text ring; 0 is normal';
  @override
  String get game_text_source_engine => 'Engine hook';
  @override
  String get game_text_source_unknown => 'Unknown source';
  @override
  String get game_text_source_websocket => 'WebSocket';
  @override
  String get game_text_thread => 'Text thread';
  @override
  String game_text_thread_audio_count({required Object count}) =>
      '${count} with audio';
  @override
  String get game_text_thread_hint =>
      'Choose the clean dialogue thread, like Luna Translator';
  @override
  String get game_track_auto => 'Automatic selection';
  @override
  String get game_track_clips => 'Clips';
  @override
  String get game_track_energy => 'Energy';
  @override
  String get game_track_exclude_bgm => 'Mark as BGM';
  @override
  String get game_track_exclusion_hint =>
      '把 BGM/環境音軌標記為排除，自動選源便不會把它當成語音——沒有語音的台詞也不會再讀到 BGM。';
  @override
  String get game_track_exclusion_title => '排除音軌';
  @override
  String get game_track_preview => 'Preview this track';
  @override
  String get game_track_preview_failed =>
      'No recent audio could be captured from this track';
  @override
  String get game_track_preview_stop => 'Stop preview';
  @override
  String get game_track_restore => 'Restore track';
  @override
  String get game_track_select_as_voice => 'Use as voice track';
  @override
  String get game_track_select_requires_engine =>
      'Track selection requires an active engine hook session';
  @override
  String get game_track_voice => 'Voice';
  @override
  String get game_tracks_loopback_hint =>
      'System loopback captures the whole system\'s mixed output as a single stream; per-track enumeration is not available.';
  @override
  String get game_tracks_pcm_only_hint =>
      'Per-track selection only affects capture while engine PCM is the active audio backend. The list below is read-only under the current backend.';
  @override
  String get game_tracks_resource_mode_hint =>
      'In game-resource audio mode, each voice line is extracted directly from game files, so no PCM track list exists here. Automatic or manual track selection only applies to engine PCM capture.';
  @override
  String get game_unread_lines => 'Unread';
  @override
  String get game_upscaling => 'Game window upscaling';
  @override
  String get game_upscaling_auto => 'Auto';
  @override
  String get game_upscaling_hint_external =>
      'A copy of Magpie was already running, so Fushi left it alone. Press Win+Shift+A to upscale the game window.';
  @override
  String get game_upscaling_hint_first_run =>
      'Magpie still had to set itself up this time. Press Win+Shift+A to upscale now — next time you start the game it will happen automatically.';
  @override
  String get game_upscaling_hint_manual =>
      'Press Win+Shift+A to upscale the game window.';
  @override
  String get game_upscaling_installed_only => 'Installed only';
  @override
  String get game_upscaling_off => 'Off';
  @override
  String get game_upscaling_status_active => 'Window upscaling is on';
  @override
  String get game_upscaling_status_failed => 'Window upscaling could not start';
  @override
  String get game_upscaling_status_manual =>
      'Window upscaling is ready, but did not start on its own';
  @override
  String get game_upscaling_status_unavailable =>
      'Window upscaling is not available';
  @override
  String get game_user_rating => 'My rating';
  @override
  String get game_view_detail => 'View details';
  @override
  String get game_waiting_for_text => 'Waiting for text';
  @override
  String game_waveform_range_label(
          {required Object start,
          required Object end,
          required Object duration,
          required Object total}) =>
      '${start} - ${end} (selected ${duration} / total ${total})';
  @override
  String get game_waveform_select_title => 'Select audio range';
  @override
  String get game_window_bound => 'Bound';
  @override
  String get game_window_missing => 'Not bound';
  @override
  String get games => 'Games';
  @override
  String get global_context_capture => 'Capture selection context';
  @override
  String get global_context_capture_hint =>
      'Read surrounding text from the foreground app to show the current sentence (Windows only)';
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
  String handlebar_deprecated_label({required Object label}) =>
      '${label} (deprecated)';
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
  String get home_activity => 'Activity';
  @override
  String get home_activity_empty => 'No activity yet';
  @override
  String get home_continue => 'Continue';
  @override
  String get home_filter_added => 'Added';
  @override
  String get home_filter_all => 'All';
  @override
  String get home_filter_game => 'Game';
  @override
  String get home_filter_read => 'Read';
  @override
  String get home_filter_watch => 'Watch';
  @override
  String get home_recently_added => 'Recently added';
  @override
  String get home_remote_source => 'Remote';
  @override
  String home_session_count({required Object n}) => '${n} sessions';
  @override
  String get home_today => 'Today';
  @override
  String get home_yesterday => 'Yesterday';
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
  String get icon_transparent => 'Transparent';
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
  String get interconnect_backup_backend =>
      'Use interconnect as the backup backend';
  @override
  String get interconnect_backup_backend_active =>
      'Backups already go to the paired device. Pick another backend in Sync & backup to switch away.';
  @override
  String get interconnect_backup_backend_apply => 'Set as backup backend';
  @override
  String interconnect_backup_backend_current({required Object backend}) =>
      'Current backup backend: ${backend}';
  @override
  String get interconnect_backup_backend_hint =>
      'Back up and sync to the paired device instead of a cloud drive. Everything the paired-device upload switches above allow is what gets written there.';
  @override
  String get interconnect_backup_backend_needs_pairing =>
      'Connect to a device above first.';
  @override
  String get interconnect_enable => 'Enable interconnect';
  @override
  String get interconnect_enable_hint =>
      'Connect to your other devices over the LAN. Works alongside a cloud backup backend — they don\'t conflict.';
  @override
  String get interconnect_moved_note =>
      'Connection & server settings are in the Fushi Interconnect category';
  @override
  String get interconnect_section_client => 'Connect to other devices';
  @override
  String get interconnect_section_delegate => 'Delegate to the paired device';
  @override
  String get interconnect_section_related => 'Remote content & lookup';
  @override
  String get interconnect_summary =>
      'Direct device-to-device sync & host this device as a server';
  @override
  String get interconnect_upload_audiobook_files => 'Upload audiobook files';
  @override
  String get interconnect_upload_audiobook_files_hint =>
      'Sync this device\'s audiobook audio and subtitle packages up to the interconnect peer (large).';
  @override
  String get interconnect_upload_content => 'Upload book files';
  @override
  String get interconnect_upload_content_hint =>
      'Sync this device\'s books and reading content up to the interconnect peer.';
  @override
  String get interconnect_upload_dictionary => 'Upload dictionaries';
  @override
  String get interconnect_upload_dictionary_hint =>
      'Sync this device\'s dictionaries up to the interconnect peer.';
  @override
  String get interconnect_upload_section => 'Upload to interconnect peer';
  @override
  String get interconnect_upload_video_files => 'Upload video files';
  @override
  String get interconnect_upload_video_files_hint =>
      'Sync this device\'s local video files up to the interconnect peer (large).';
  @override
  String get invert_audiobook_skip_direction =>
      'Invert bottom-bar skip buttons';
  @override
  String get invert_swipe_direction => '反轉滑動翻頁方向';
  @override
  String get invert_volume_buttons => '反轉音量鍵方向';
  @override
  String get jump_to_char => '按字數跳轉';
  @override
  String jump_to_char_current(
          {required Object current, required Object total}) =>
      '當前: ${current} / ${total}';
  @override
  String get jump_to_char_hint => '輸入字符位置…';
  @override
  String get keep_screen_awake => '閱讀時防止螢幕關閉';
  @override
  String get library_search => 'Search library';
  @override
  String get loading_illustrations => '正在載入插圖…';
  @override
  String get loading_slow_message =>
      'If your data storage location is on a network or removable drive that is currently disconnected, startup can stall. Tap Retry to launch using the default storage location for this session; your data stays where it is.';
  @override
  String get loading_slow_message_mobile =>
      'Startup is taking longer than usual — Fushi may be loading a large library or dictionaries. Please wait a moment, or tap Retry to reload. Your data is safe and won\'t be lost.';
  @override
  String get loading_slow_title => 'Startup is taking longer than usual';
  @override
  String get local_audio => '本地音頻';
  @override
  String get local_audio_add_db => '新增本機音訊資料庫';
  @override
  String get local_audio_edit_sources => '編輯來源';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      'Failed to import audio database: ${reason}';
  @override
  String get local_audio_imported => '已新增音訊資料庫';
  @override
  String get local_audio_invalid_db =>
      'This file isn\'t a usable audio database (not a Local Audio Server database, or it has no audio).';
  @override
  String get local_audio_no_sources => '此資料庫沒有可用的來源';
  @override
  String get local_audio_reference_original =>
      'Reference original file (don\'t copy)';
  @override
  String get local_audio_reference_original_desc =>
      'Keep the database where it is and read from its original path; the source breaks if the file is moved or deleted.';
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
  String get lyrics_blur => 'Blur lyrics';
  @override
  String get lyrics_blur_hint =>
      'Blur the current line for listening immersion; hover or tap to reveal';
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
  String get lyrics_vertical_writing => 'Vertical lyrics';
  @override
  String get lyrics_vertical_writing_hint =>
      'Read lyrics top-to-bottom, right-to-left (independent of book mode)';
  @override
  String get manage_audio_sources => '管理音訊來源';
  @override
  String get manager => '詞典與來源';
  @override
  String get manga_mode_toggle => 'Reading Mode';
  @override
  String get manga_ocr_delete => 'Delete models';
  @override
  String get manga_ocr_delete_confirm_message =>
      'This frees disk space. You can download them again later.';
  @override
  String get manga_ocr_delete_confirm_title => 'Delete OCR models?';
  @override
  String get manga_ocr_delete_done => 'Models deleted';
  @override
  String get manga_ocr_download => 'Download models';
  @override
  String get manga_ocr_download_done => 'Models downloaded';
  @override
  String get manga_ocr_download_failed => 'Model download failed';
  @override
  String manga_ocr_downloading_file({required Object file}) =>
      'Downloading ${file}…';
  @override
  String get manga_ocr_engine_builtin => 'Built-in';
  @override
  String get manga_ocr_engine_external => 'External mokuro';
  @override
  String get manga_ocr_engine_none =>
      'No OCR engine available. Download built-in models or set the mokuro CLI path in settings.';
  @override
  String get manga_ocr_external_cli_hint =>
      'Leave empty to auto-detect (FUSHI_MOKURO / PATH)';
  @override
  String get manga_ocr_external_cli_label => 'External mokuro CLI path';
  @override
  String get manga_ocr_external_detect => 'Detect';
  @override
  String manga_ocr_external_detected({required Object version}) =>
      'Detected: ${version}';
  @override
  String get manga_ocr_external_not_found => 'mokuro not found';
  @override
  String get manga_ocr_mobile_note =>
      'On mobile, the recognition model powers box scan in the manga reader.';
  @override
  String get manga_ocr_model_status_missing => 'OCR models not downloaded';
  @override
  String get manga_ocr_model_status_ready => 'OCR models ready';
  @override
  String get manga_ocr_section => 'Manga OCR';
  @override
  String get manga_ocr_section_summary =>
      'Built-in OCR models and external mokuro CLI';
  @override
  String get manga_ocr_unsupported =>
      'Built-in manga OCR isn\'t available on this platform yet.';
  @override
  String get manga_ocr_wizard_done => 'Manga imported';
  @override
  String get manga_ocr_wizard_failed => 'OCR failed';
  @override
  String get manga_ocr_wizard_has_mokuro =>
      'This folder already has a .mokuro file — use normal import instead.';
  @override
  String get manga_ocr_wizard_importing => 'Importing…';
  @override
  String get manga_ocr_wizard_no_images => 'No images found in this folder.';
  @override
  String manga_ocr_wizard_page_progress(
          {required Object done, required Object total}) =>
      'Page ${done} / ${total}';
  @override
  String get manga_ocr_wizard_pick_folder => 'Choose image folder';
  @override
  String get manga_ocr_wizard_run => 'Run OCR';
  @override
  String get manga_ocr_wizard_running => 'Running OCR…';
  @override
  String get manga_ocr_wizard_title => 'OCR import manga';
  @override
  String get manga_ocr_wizard_title_label => 'Title (optional)';
  @override
  String get manga_online_base_url_label => 'Online catalog URL';
  @override
  String get manga_online_catalog_title => 'Online catalog';
  @override
  String get manga_online_download_selected => 'Download selected';
  @override
  String get manga_online_downloaded => 'Imported';
  @override
  String get manga_online_failed => 'Download failed';
  @override
  String get manga_online_load_failed => 'Failed to load catalog';
  @override
  String get manga_online_queue_added => 'Added to download queue';
  @override
  String manga_online_queue_progress(
          {required Object done, required Object total}) =>
      'Volume ${done} / ${total}';
  @override
  String get manga_online_queue_section => 'Manga catalog downloads';
  @override
  String get manga_online_search_hint => 'Search series';
  @override
  String get manga_online_stage_cbz => 'Downloading volume…';
  @override
  String get manga_online_stage_extract => 'Extracting…';
  @override
  String get manga_online_stage_mokuro => 'Downloading OCR data…';
  @override
  String get manga_reading_mode_spread => 'Spread';
  @override
  String get manga_reading_mode_webtoon => 'Webtoon';
  @override
  String get manga_remote_ocr_cancelled =>
      'Remote OCR was cancelled on the host.';
  @override
  String get manga_remote_ocr_engine => 'Paired host';
  @override
  String get manga_remote_ocr_failed => 'Remote OCR failed';
  @override
  String get manga_remote_ocr_no_host =>
      'No paired host with manga OCR is reachable.';
  @override
  String get manga_remote_ocr_not_ready =>
      'The paired host\'s OCR models are not downloaded. Download them on the host first.';
  @override
  String get manga_remote_ocr_running => 'Paired host is running OCR…';
  @override
  String get manga_remote_ocr_unsupported =>
      'The paired host does not support manga OCR.';
  @override
  String manga_remote_ocr_uploading(
          {required Object done, required Object total}) =>
      'Uploading pages ${done} / ${total}…';
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
  String get media_source_add_network => 'Network';
  @override
  String media_source_count_book({required Object n}) => '${n} books';
  @override
  String media_source_count_video({required Object n}) => '${n} videos';
  @override
  String media_source_last_scan({required Object time}) => 'Last scan ${time}';
  @override
  String get media_source_manage_title => 'Manage Sources';
  @override
  String get media_source_network_label_optional => 'Display name (optional)';
  @override
  String get media_source_network_missing_fields =>
      'Enter host, username, remote path, and a password or key';
  @override
  String get media_source_network_remote_path => 'Remote path';
  @override
  String get media_source_network_subtitle =>
      'SFTP / FTP / WebDAV remote library';
  @override
  String get media_source_no_sources => 'No sources yet';
  @override
  String get media_source_open_folder => 'Open Folder';
  @override
  String get media_source_remove => 'Remove Source';
  @override
  String get media_source_remove_keeps_media =>
      'Removing a source does not delete imported media.';
  @override
  String get media_source_rescan => 'Rescan';
  @override
  String get media_source_scan_error => 'Scan failed';
  @override
  String get media_tracking_access_token => 'Access token';
  @override
  String get media_tracking_access_token_hint =>
      'Create a personal access token with write permission';
  @override
  String get media_tracking_account => 'Bangumi account';
  @override
  String get media_tracking_add_mapping => 'Add mapping';
  @override
  String get media_tracking_anime => 'Anime';
  @override
  String get media_tracking_chapter => 'Chapter';
  @override
  String get media_tracking_connect => 'Connect and verify';
  @override
  String get media_tracking_connected_as => 'Connected account';
  @override
  String get media_tracking_delete_mapping => 'Remove mapping';
  @override
  String get media_tracking_episode => 'Episode';
  @override
  String get media_tracking_kind => 'Category';
  @override
  String get media_tracking_local_item => 'Local item';
  @override
  String get media_tracking_manga => 'Manga';
  @override
  String get media_tracking_mappings => 'Item mappings';
  @override
  String get media_tracking_no_mappings =>
      'No manual mappings yet. Fushi matches automatically on the first completed episode or reading progress; add ambiguous items here.';
  @override
  String get media_tracking_novel => 'Novel';
  @override
  String get media_tracking_pending => 'Pending updates';
  @override
  String get media_tracking_progress_mode => 'Progress unit';
  @override
  String get media_tracking_progress_offset => 'Starting number';
  @override
  String get media_tracking_saved => 'Mapping saved';
  @override
  String get media_tracking_search => 'Search Bangumi';
  @override
  String get media_tracking_search_results => 'Bangumi results';
  @override
  String get media_tracking_summary =>
      'Automatically record anime, novel, and manga progress to Bangumi';
  @override
  String get media_tracking_sync_failed =>
      'Sync failed. The update remains queued.';
  @override
  String get media_tracking_sync_now => 'Sync now';
  @override
  String get media_tracking_sync_success => 'Sync completed';
  @override
  String get media_tracking_token_required =>
      'Enter and verify an access token first';
  @override
  String get media_tracking_volume => 'Volume';
  @override
  String get microphone_permission_denied => '錄音需要麥克風權限。';
  @override
  String get mining_audio_quality => 'Audio quality';
  @override
  String get mining_audio_quality_high => 'High';
  @override
  String get mining_audio_quality_hint =>
      'Higher bitrate is clearer but makes larger cards.';
  @override
  String get mining_audio_quality_max => 'Maximum';
  @override
  String get mining_audio_quality_standard => 'Standard';
  @override
  String get mining_image_quality => 'Image / GIF quality';
  @override
  String get mining_image_quality_hd => 'HD';
  @override
  String get mining_image_quality_hint =>
      'Higher is sharper but makes larger cards. Maximum keeps screenshots at the source resolution; animated GIFs stay capped so cards remain usable.';
  @override
  String get mining_image_quality_max => 'Maximum';
  @override
  String get mining_image_quality_standard => 'Standard';
  @override
  String get mining_image_quality_thrift => 'Data saver';
  @override
  String get move_down => '下移';
  @override
  String get move_up => '上移';
  @override
  String get name => '名稱';
  @override
  String get nav_browser_extension => 'Extension';
  @override
  String get nav_downloads => 'Downloads';
  @override
  String get nav_game => 'Game';
  @override
  String get nav_home => 'Home';
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
  String get overlay_lookup_independent_size =>
      'Separate size for pop-out lookup';
  @override
  String get overlay_lookup_independent_size_hint =>
      'Give the app-external pop-out lookup window its own max size instead of following the in-app popup';
  @override
  String get overlay_lookup_max_height => 'Pop-out lookup max height';
  @override
  String get overlay_lookup_max_width => 'Pop-out lookup max width';
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
  String get pdf_bookmark_added => 'Bookmark added';
  @override
  String get pdf_bookmarks => 'Bookmarks';
  @override
  String get pdf_bookmarks_empty => 'No bookmarks yet.';
  @override
  String get pdf_no_text_layer =>
      'This PDF has no text layer (scanned image), so lookup is unavailable.';
  @override
  String get pdf_outline => 'Contents';
  @override
  String get pdf_outline_empty => 'This PDF has no contents.';
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
  String get popup_auto_expand_dictionaries => 'Auto-expand rows';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      'Keep the first N rows of dictionary blocks expanded even when \'Collapse dictionaries\' is on. The expanded count follows the column setting: rows x columns (0 = collapse all)';
  @override
  String get popup_bottom_docked => '底部停靠查詞彈窗';
  @override
  String get popup_bottom_docked_hint => '將查詞彈窗固定為螢幕底部一條整寬面板，而非跟隨被查的字詞。';
  @override
  String get popup_clear_sentence_draft_tooltip => '清空已加入的句子';
  @override
  String get popup_ctx_adjust_button => 'Adjust context';
  @override
  String get popup_ctx_box_current => 'Current';
  @override
  String get popup_ctx_box_empty => '(none)';
  @override
  String get popup_ctx_box_next => 'After';
  @override
  String get popup_ctx_box_prev => 'Before';
  @override
  String get popup_ctx_cancel => 'Cancel';
  @override
  String get popup_ctx_confirm => 'Confirm';
  @override
  String get popup_ctx_modal_count => 'Selected %d';
  @override
  String get popup_ctx_modal_eyebrow => 'Before mining';
  @override
  String get popup_ctx_modal_title => 'Select sentence context';
  @override
  String get popup_ctx_next_minus => 'Remove after';
  @override
  String get popup_ctx_next_plus => 'Add after';
  @override
  String get popup_ctx_prev_minus => 'Remove before';
  @override
  String get popup_ctx_prev_plus => 'Add before';
  @override
  String get popup_dictionary_max_columns =>
      'Max dictionary columns (auto-fill)';
  @override
  String get popup_dictionary_max_columns_hint =>
      'Auto-fills up to this many dictionary columns per row; narrower screens use fewer';
  @override
  String get popup_font_size_decrease => 'Smaller dictionary text';
  @override
  String get popup_font_size_increase => 'Larger dictionary text';
  @override
  String get popup_instant_scroll => '查詞彈窗即時捲動';
  @override
  String get popup_instant_scroll_hint => '供電子墨水屏使用：查詞彈窗按固定距離即時跳動，不播放捲動動畫。';
  @override
  String get popup_max_height => '查詞視窗最大高度';
  @override
  String get popup_max_width => '查詞視窗最大寬度';
  @override
  String get popup_no_audio_available => 'No audio available';
  @override
  String get popup_sentence_context_next_label => '下';
  @override
  String get popup_sentence_context_prev_label => '上';
  @override
  String get popup_wheel_speed => 'Popup scroll speed';
  @override
  String get popup_wheel_speed_hint =>
      'Mouse-wheel scroll speed for the dictionary popup (also applies to the browser extension).';
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
  String get profile_export => 'Export';
  @override
  String get profile_export_failed => 'Export failed';
  @override
  String profile_follow_default_current({required Object name}) =>
      '跟隨預設（${name}）';
  @override
  String get profile_import => 'Import';
  @override
  String get profile_import_failed => 'Import failed';
  @override
  String get profile_import_invalid => 'Invalid profile file';
  @override
  String get profile_import_success => 'Profile imported';
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
  String get profile_media_video => 'Video';
  @override
  String get profile_name_hint => '設定檔名稱';
  @override
  String get profile_rename => '重新命名';
  @override
  String get reader_auto_hide_chrome_duration =>
      'Auto-hide floating controls after';
  @override
  String get reader_content_timeout => '內容載入逾時，如顯示異常請重新開啟';
  @override
  String get reader_copy_image => '複製圖片';
  @override
  String get reader_gallery => 'Gallery';
  @override
  String get reader_gallery_current => 'Reading here';
  @override
  String get reader_gallery_empty => 'No illustrations in this book';
  @override
  String get reader_gallery_jump => 'Jump to this illustration';
  @override
  String get reader_gallery_tooltip => 'Browse illustrations';
  @override
  String reader_image_copy_failed({required Object error}) => '複製圖片失敗：${error}';
  @override
  String get reader_image_file_unavailable => '圖片檔案不可用。';
  @override
  String reader_image_share_failed({required Object error}) =>
      '分享圖片失敗：${error}';
  @override
  String get reader_open_failed => 'Failed to open book';
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
  String get reader_top_progress_floating => 'Floating reading progress';
  @override
  String get reader_unsupported_platform => '此平台暫不支援閱讀器。';
  @override
  String get reading_activity => 'Study activity';
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
  String get remote_video_info_no_subtitle => 'No subtitles';
  @override
  String remote_video_info_size({required Object size}) => 'Size: ${size}';
  @override
  String get remote_video_list_failed =>
      'Couldn\'t load remote videos. Make sure the other device is online and on the same network, then try again.';
  @override
  String get remote_video_unavailable => '配對裝置不可用';
  @override
  String get rename_collection => 'Rename collection';
  @override
  String get render_restart_required => 'Takes effect after restarting the app';
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
  String audiobook_rematch_auto_picked(
          {required Object window, required Object pct}) =>
      '自動選定 ${window}（命中 ${pct}%）';
  @override
  String audiobook_rematch_default_value({required Object n}) => '預設 ${n}';
  @override
  String audiobook_rematch_health_label(
          {required Object pct, required Object detail}) =>
      '${pct} 比對 — ${detail}';
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
  String audiobook_rematch_result(
          {required Object pct, required Object window}) =>
      '重新比對：${pct}%（視窗：${window}）';
  @override
  String get audiobook_rematch_search_window => '搜尋視窗';
  @override
  String get audiobook_rematch_similarity_threshold => '相似度閾值';
  @override
  String get audiobook_rematch_threshold_hint =>
      '模糊比對的最低相似度（Dice 係數）。降低可容忍更多文字差異，但太低會誤比對。';
  @override
  String get audiobook_rematch_window_hint =>
      '每條字幕在正文裡向前找的字元數。命中率低時可左右調整，過大容易被短雜訊字幕拉偏游標。';
  @override
  String get saved_tags => '標籤已儲存。';
  @override
  String get scan_non_japanese_text => 'Scan non-Japanese text';
  @override
  String get scan_non_japanese_text_hint =>
      'When off, selection stops at non-Japanese characters';
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
  String get section_floating_lyric => 'Floating lyric';
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
  String get section_video_library => 'Library';
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
  String get series => 'Series';
  @override
  String get series_created => 'Series created';
  @override
  String get series_default_name => 'New series';
  @override
  String series_item_count({required Object n}) => '${n} items';
  @override
  String get series_name_hint => 'Series name';
  @override
  String get server_address => '伺服器位址';
  @override
  String get settings => '設定';
  @override
  String get settings_check_update_now => 'Check for updates';
  @override
  String get settings_destination_appearance => '外觀';
  @override
  String get settings_destination_card_creation => '製卡';
  @override
  String get settings_destination_diagnostics => '診斷';
  @override
  String get settings_destination_interconnect => 'Fushi Interconnect';
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
  String get settings_destination_sync_backup => '同步與備份（實驗性）';
  @override
  String get settings_destination_system => '系統';
  @override
  String get settings_destination_system_summary => '通用、更新與診斷';
  @override
  String get settings_destination_tracking => 'Media tracking';
  @override
  String get settings_destination_video => '影片';
  @override
  String get settings_experimental_suffix => '（實驗性）';
  @override
  String get settings_search_hint => 'Search settings';
  @override
  String get settings_search_no_results => 'No matching settings';
  @override
  String get settings_secret_hide => 'Hide value';
  @override
  String get settings_secret_show => 'Show value';
  @override
  String get settings_section_app_shell => '應用';
  @override
  String get settings_section_data_storage => 'Data storage location';
  @override
  String get settings_section_gal_hook_overlay => 'Galgame caption overlay';
  @override
  String get settings_section_general => '通用';
  @override
  String get settings_section_lookup_audio => 'Pronunciation & feedback';
  @override
  String get settings_section_lookup_clipboard => 'Clipboard & global lookup';
  @override
  String get settings_section_lookup_content => 'Entry content';
  @override
  String get settings_section_lookup_integrations => 'External integrations';
  @override
  String get settings_section_lookup_popup_window => 'Popup window';
  @override
  String get settings_section_lookup_trigger => 'Lookup trigger';
  @override
  String get settings_section_page_turn_input => 'Page turning & interaction';
  @override
  String get settings_section_reader_chrome => 'Reader interface';
  @override
  String get settings_section_update_channel => '更新頻道';
  @override
  String get settings_view_changelog => 'View changelog';
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
  String get shortcut_action_global_external_lookup =>
      'App-external lookup shortcut';
  @override
  String get shortcut_action_global_scroll_page_down => '向下捲動一頁';
  @override
  String get shortcut_action_global_scroll_page_up => '向上捲動一頁';
  @override
  String get shortcut_action_global_toggle_fullscreen => 'Toggle fullscreen';
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
  String get shortcut_action_popup_next_entry => 'Next word entry';
  @override
  String get shortcut_action_popup_prev_entry => 'Previous word entry';
  @override
  String get shortcut_action_reader_create_card_from_popup => '由彈窗製卡';
  @override
  String get shortcut_action_reader_dismiss_dict => '關閉詞典';
  @override
  String get shortcut_action_reader_enter_caret => '進入選字查詞游標';
  @override
  String get shortcut_action_reader_lookup_at_cursor => '查詞／啟用游標';
  @override
  String get shortcut_action_reader_open_menu => 'Open Settings Menu';
  @override
  String get shortcut_action_reader_open_navigation => 'Open Navigation';
  @override
  String get shortcut_action_reader_page_backward => '上一頁';
  @override
  String get shortcut_action_reader_page_forward => '下一頁';
  @override
  String get shortcut_action_reader_shift_lookup => '游標處查詞';
  @override
  String get shortcut_action_reader_toggle_chrome => '顯示／隱藏控制欄';
  @override
  String get shortcut_action_reader_toggle_furigana => '切換振假名';
  @override
  String get shortcut_action_video_align_subtitle_to_next =>
      'Align next subtitle to now';
  @override
  String get shortcut_action_video_align_subtitle_to_prev =>
      'Align previous subtitle to now';
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
  String get shortcut_action_video_open_subtitle_align =>
      'Open subtitle waveform align';
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
  String get shortcut_action_video_subtitle_delay_decrease =>
      'Subtitle delay −';
  @override
  String get shortcut_action_video_subtitle_delay_increase =>
      'Subtitle delay +';
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
  String get shortcut_assign_pick_action => 'Assign to action…';
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
  String get shortcut_gamepad_brand_label => 'Gamepad button style';
  @override
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  @override
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  @override
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  @override
  String get shortcut_gamepad_pick_list => 'Choose from list';
  @override
  String get shortcut_gamepad_unavailable_hint =>
      'GameInput component not detected — gamepad support is unavailable. Install the Windows Gaming Services to enable controller support.';
  @override
  String get shortcut_keyboard => '鍵盤';
  @override
  String get shortcut_mouse_back => 'Back button';
  @override
  String get shortcut_mouse_button => 'Mouse button';
  @override
  String get shortcut_mouse_forward => 'Forward button';
  @override
  String get shortcut_mouse_left => 'Left click';
  @override
  String get shortcut_mouse_middle => 'Middle click';
  @override
  String get shortcut_mouse_right => 'Right click';
  @override
  String get shortcut_press_gamepad => 'Press a gamepad button...';
  @override
  String get shortcut_press_key => '請按下快捷鍵組合…';
  @override
  String get shortcut_press_mouse_button => 'Press a mouse button...';
  @override
  String get shortcut_press_wheel => 'Hold a modifier key and scroll here';
  @override
  String get shortcut_reset_confirm => '確定要將此部分的所有快捷鍵還原為預設值嗎？';
  @override
  String get shortcut_reset_defaults => '還原預設';
  @override
  String get shortcut_scope_audiobook => '有聲書';
  @override
  String get shortcut_scope_dictionary_popup => 'Dictionary popup';
  @override
  String get shortcut_scope_dictionary_popup_note =>
      'Works while the pointer is over a dictionary popup';
  @override
  String get shortcut_scope_gamepad => '手掣';
  @override
  String get shortcut_scope_global => '全域';
  @override
  String get shortcut_scope_global_external => 'Global (app-external)';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this shortcut.';
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
  String get shortcut_tap_to_assign => 'Not set · tap to assign';
  @override
  String get shortcut_view_list => 'List view';
  @override
  String get shortcut_view_visual => 'Controller layout';
  @override
  String get shortcut_wheel => 'Mouse wheel';
  @override
  String get shortcut_wheel_down => 'Wheel down';
  @override
  String get shortcut_wheel_needs_modifier =>
      'A bare wheel scrolls the popup — hold Alt / Ctrl / Shift while scrolling';
  @override
  String get shortcut_wheel_up => 'Wheel up';
  @override
  String get show_bottom_bar_cue => 'Show current sentence';
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
  String get sort_by => 'Sort';
  @override
  String get sort_imported => 'Import date';
  @override
  String get sort_recent_read => 'Recently read';
  @override
  String get sort_recent_watched => 'Recently watched';
  @override
  String get sort_title => 'Name';
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
  String get stat_bookshelf_compare => 'Bookshelf';
  @override
  String get stat_clear_all => 'Clear statistics';
  @override
  String get stat_clear_all_confirm => 'Clear';
  @override
  String get stat_clear_all_reading_message =>
      'Clear all reading time, character counts, and lookup/mining counts? Your saved words, sentences, and mined cards are kept. This cannot be undone.';
  @override
  String get stat_clear_all_title => 'Clear all statistics';
  @override
  String get stat_clear_all_video_message =>
      'Clear all watch time, subtitle character counts, and lookup/mining counts? Your saved words, sentences, and mined cards are kept. This cannot be undone.';
  @override
  String get stat_daily_average => 'Daily avg';
  @override
  String get stat_delete_message =>
      'Delete this item\'s time, character count, and lookup/mining statistics? Your saved words and sentences are not affected.';
  @override
  String get stat_delete_title => 'Delete statistics';
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
  String stat_format_days({required Object n}) => '${n} days';
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
  String get stat_goal_presets => 'Presets';
  @override
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} chars';
  @override
  String get stat_goal_reached => 'Goal reached';
  @override
  String stat_goal_recent_average({required Object n}) =>
      'Last 7 days: ${n} chars/day on average';
  @override
  String get stat_goal_set => 'Set Goal';
  @override
  String get stat_goal_unit_chars => 'chars';
  @override
  String get stat_goal_weekly => 'Weekly Goal';
  @override
  String get stat_last_30_days => '近 30 天';
  @override
  String get stat_lookup => '查詞';
  @override
  String get stat_metric_chars => 'Characters';
  @override
  String get stat_metric_speed => 'Speed';
  @override
  String get stat_metric_time => 'Time';
  @override
  String get stat_mined => '製卡';
  @override
  String get stat_no_data => '暫無閱讀資料';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => 'Active Days (7d)';
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
  String get stat_streak => 'Streak';
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
  String get stat_vs_prev => 'vs prev 14d';
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
  String get sync_client_connected => 'Connected';
  @override
  String get sync_client_token => 'Peer access token';
  @override
  String get sync_client_token_manual => 'Enter token manually';
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
  String get sync_dictionary => '同步詞典';
  @override
  String get sync_dictionary_warning => '詞典包可能很大，並包含已匯入的詞典資源。';
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
  String get sync_err_scope_upgrade =>
      'Sync permissions changed — please sign in to Google again to continue syncing.';
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
  String get sync_local_audio => '同步本機音訊';
  @override
  String get sync_local_audio_warning => '同步本機音訊來源資料庫（可能較大）';
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
      'You are pairing with ${device}. Confirm this is the device you expect before continuing.';
  @override
  String get sync_pair_confirm_identity_title => 'Confirm device';
  @override
  String get sync_pair_continue => 'Continue';
  @override
  String get sync_pair_denied => '對方拒絕了配對要求';
  @override
  String get sync_pair_deny => '拒絕';
  @override
  String get sync_pair_enter_pin_body =>
      'Enter the 6-digit PIN shown on the other device.';
  @override
  String get sync_pair_enter_pin_title => 'Enter PIN';
  @override
  String get sync_pair_failed => '配對失敗';
  @override
  String get sync_pair_fingerprint_changed =>
      'Certificate changed — pairing aborted for safety (possible interception).';
  @override
  String get sync_pair_fingerprint_label => 'Certificate fingerprint';
  @override
  String get sync_pair_not_fushi =>
      'No Fushi device found at this address. The address was saved.';
  @override
  String get sync_pair_pairing => 'Pairing…';
  @override
  String get sync_pair_pin_label => 'Enter this PIN on the other device';
  @override
  String get sync_pair_pin_waiting =>
      'Waiting for the other device to enter this PIN…';
  @override
  String get sync_pair_pin_wrong => 'Wrong PIN — try again';
  @override
  String get sync_pair_repair => 'Pair again';
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
  String get sync_paired_peer_remove => 'Remove';
  @override
  String get sync_paired_peer_removed => 'Removed paired device';
  @override
  String get sync_paired_peer_unknown => 'Unknown device';
  @override
  String get sync_paired_peers_empty => 'No paired devices yet';
  @override
  String get sync_paired_peers_title => 'Paired devices';
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
  String get sync_progress_videos => 'Syncing videos';
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
  String get sync_server_tls_enable => 'Interconnect encryption (HTTPS/TLS)';
  @override
  String get sync_server_tls_repair_hint =>
      'Changing this requires paired devices to pair again';
  @override
  String get sync_server_token => '存取權杖';
  @override
  String get sync_show_remote_entries => 'Show remote entries';
  @override
  String get sync_show_remote_entries_warning =>
      'Show books and videos that exist on paired devices or the cloud as placeholder cards you can download or stream.';
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
  String get sync_video_files => 'Upload video files';
  @override
  String get sync_video_files_warning => 'Video files can be very large.';
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
      'Tag ${name} added to collection.';
  @override
  String tag_added_to_video({required Object name}) => '標籤「${name}」已加入影片。';
  @override
  String tag_already_on_book({required Object name}) => '標籤「${name}」已存在於此書。';
  @override
  String tag_already_on_collection({required Object name}) =>
      'Tag ${name} is already on this collection.';
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
  String get tap_empty_hide_chrome => 'Floating control bar';
  @override
  String get text_segmentation => '文字分詞';
  @override
  String get texthooker => 'Texthooker';
  @override
  String get texthooker_enabled => 'Texthooker（接收文字）';
  @override
  String get texthooker_enabled_hint => '連接 Textractor/mpv/agent 並查詢收到的文字';
  @override
  String get texthooker_experimental_banner =>
      'Texthooker 為實驗性功能：即時文字、查詞與製卡可能尚未穩定。';
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
  String get top_progress_pos_center => 'Center';
  @override
  String get top_progress_pos_left => 'Top-left';
  @override
  String get top_progress_pos_right => 'Top-right';
  @override
  String get top_progress_position => 'Progress position';
  @override
  String get torrent_upload_intro_body =>
      'Uploading (seeding) is off by default. Turn it on to share downloaded content back to the swarm — this uses your upload bandwidth. You can change this anytime in Settings.';
  @override
  String get torrent_upload_intro_confirm => 'Save';
  @override
  String get torrent_upload_intro_enable => 'Enable upload / seeding';
  @override
  String get torrent_upload_intro_keep_off => 'Keep off';
  @override
  String get torrent_upload_intro_title => 'Upload / seeding';
  @override
  String get reader_blur_images => 'Blur images (spoiler guard)';
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
  String get reader_merge_image_pages => 'Merge illustration pages into text';
  @override
  String get reader_merge_image_pages_subtitle =>
      'Standalone single-image chapters render inline in the adjacent text chapter instead of on their own page';
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
  String get reader_paragraph_spacing => 'Paragraph spacing';
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
  String get update_already_latest => 'You\'re on the latest version';
  @override
  String get update_auto_install => '自動安裝更新';
  @override
  String get update_available => '發現新版本';
  @override
  String update_cached_newer({required Object version}) =>
      'Update ${version} available (verifying…)';
  @override
  String update_cached_up_to_date({required Object version}) =>
      'On latest known version ${version} (checking…)';
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
  String get update_checking_now => 'Checking for updates…';
  @override
  String get update_connecting => '正在連接更新來源…';
  @override
  String get update_custom_proxy_auto_hint =>
      'Leave blank to use environment variables, then the enabled system proxy.';
  @override
  String get update_custom_proxy_hint =>
      'host:port, e.g. 127.0.0.1:7890 (IPv4/host only)';
  @override
  String get update_custom_proxy_invalid => 'Invalid proxy. Use host:port';
  @override
  String get update_custom_proxy_label => 'Custom update proxy';
  @override
  String get update_debug_channel => '偵錯更新頻道';
  @override
  String get update_debug_channel_warning => '偵錯頻道的建置版本可能不穩定。使用風險自負。';
  @override
  String get update_download => '下載';
  @override
  String get update_download_failed => '下載失敗';
  @override
  String get update_download_not_resumed => '未續傳';
  @override
  String get update_download_restarted_from_zero => '已從頭重下';
  @override
  String update_download_resume_status({required Object status}) =>
      '續傳：${status}';
  @override
  String get update_download_resumed => '已續傳';
  @override
  String update_download_size(
          {required Object received, required Object total}) =>
      '已下載：${received} / ${total}';
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
  String update_install_deletefile_failure(
          {required Object path, required Object code}) =>
      '安裝程式無法取代 ${path}（代碼 ${code}）';
  @override
  String update_install_detected_location(
          {required Object source, required Object path}) =>
      '偵測到的安裝位置（${source}）：${path}';
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
  String update_install_libmpv_holder(
          {required Object pid, required Object path}) =>
      'libmpv 持有程序：PID ${pid} - ${path}';
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
  String update_install_running_process(
          {required Object pid, required Object path}) =>
      '仍在執行的 Fushi 程序：PID ${pid} - ${path}';
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
      'The update could not be applied, so Fushi is still on the previous version. You can retry the update, or download the latest release manually.';
  @override
  String update_message({required Object version}) => '${version} 版本可用。';
  @override
  String update_network_failure(
          {required Object host, required Object reason}) =>
      '無法連接 ${host}：${reason}';
  @override
  String get update_never_remind => '不再提醒';
  @override
  String get update_skip => '略過';
  @override
  String get url => '網址';
  @override
  String get video_audio_track => '音軌';
  @override
  String get video_audio_track_empty => 'No switchable audio tracks';
  @override
  String video_audio_track_switched({required Object label}) => '音軌：${label}';
  @override
  String get video_auto_play_next_cancel => '取消';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      '${seconds} 秒後播放下一集';
  @override
  String get video_black_flash_notice_action => 'View suggestions';
  @override
  String get video_black_flash_notice_dont_show_again => 'Don\'t show again';
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
  String get video_clip_export_cancelled => 'Clip export cancelled';
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
      'Clip exported with subtitles: ${path}';
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
  String get video_danmaku_manual_bind_empty =>
      'No danmaku for this episode yet.';
  @override
  String get video_danmaku_manual_bind_failed =>
      'Couldn\'t load danmaku for this episode. Try again later.';
  @override
  String get video_danmaku_manual_bind_server_error =>
      'The danmaku server rejected the request. Try again later.';
  @override
  String get video_danmaku_manual_match_title => 'Match danmaku';
  @override
  String get video_danmaku_manual_network_error =>
      'Network error. Check your connection and try again.';
  @override
  String get video_danmaku_manual_no_result => 'No matching anime found.';
  @override
  String get video_danmaku_manual_search_action => 'Search';
  @override
  String get video_danmaku_manual_search_hint => 'Anime title';
  @override
  String get video_danmaku_manual_search_prompt =>
      'Search Dandanplay by anime title, then pick an episode.';
  @override
  String get video_danmaku_manual_server_error =>
      'Search failed. Try again later.';
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
  String get video_file_not_found => 'Video file not found';
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
  String video_import_folder_done({required Object count}) =>
      '已匯入 ${count} 個系列';
  @override
  String get video_import_folder_empty => '此資料夾內沒有影片檔案';
  @override
  String get video_import_pick_folder => '匯入資料夾（自動分組劇集）';
  @override
  String get video_import_pick_playlist => '選擇 m3u8 播放清單';
  @override
  String get video_import_pick_subtitle => '選擇字幕';
  @override
  String get video_import_pick_video => '選擇影片檔案';
  @override
  String get video_import_stream_advanced => 'Advanced (anti-leech headers)';
  @override
  String get video_import_stream_referer => 'Referer (optional)';
  @override
  String get video_import_stream_subtitle_url_field =>
      'External subtitle URL (optional)';
  @override
  String get video_import_stream_url_field => 'Video stream URL';
  @override
  String get video_import_stream_url_hint =>
      'Play HLS/m3u8/mp4 stream URL (with optional external subtitle URL and anti-leech Referer/User-Agent)';
  @override
  String get video_import_stream_user_agent => 'User-Agent (optional)';
  @override
  String get video_import_subtitle_optional => '可選的外掛字幕（播放時可隨時在內嵌／外掛字幕間切換）';
  @override
  String get video_import_title => '匯入影片';
  @override
  String get video_jimaku_anime_match => 'Anime match';
  @override
  String get video_jimaku_api_key => 'Jimaku API key';
  @override
  String get video_jimaku_api_key_hint => '在 jimaku.cc/account 免費取得 API key';
  @override
  String get video_jimaku_api_key_set => 'API key 已設定';
  @override
  String video_jimaku_batch_done(
          {required Object done, required Object total}) =>
      'Subtitles fetched: ${done}/${total}';
  @override
  String get video_jimaku_batch_download => 'Download all';
  @override
  String get video_jimaku_batch_title => 'Fetch subtitles for collection';
  @override
  String get video_jimaku_download_failed => '下載失敗';
  @override
  String get video_jimaku_downloaded => '字幕已下載並套用';
  @override
  String get video_jimaku_episode => 'Episode (optional)';
  @override
  String get video_jimaku_episode_hint => 'Leave empty to list all';
  @override
  String get video_jimaku_fetch => '取得字幕（Jimaku）';
  @override
  String get video_jimaku_filter => '篩選結果（如 WEBRip、BD）';
  @override
  String get video_jimaku_find_sources => 'Find subtitles';
  @override
  String get video_jimaku_language => 'Language';
  @override
  String get video_jimaku_language_all => 'All';
  @override
  String get video_jimaku_no_key => '請先填寫 Jimaku API key';
  @override
  String get video_jimaku_no_results => '找不到字幕';
  @override
  String get video_jimaku_query => '番劇名稱';
  @override
  String get video_jimaku_search => '搜尋';
  @override
  String get video_jimaku_series => 'Series';
  @override
  String get video_jimaku_show_all_episodes => 'Show all episodes';
  @override
  String get video_jimaku_source => 'Subtitle source';
  @override
  String get video_jimaku_source_hint =>
      'Choose one Jimaku entry. Season packs are matched by episode automatically.';
  @override
  String video_last_watched({required Object date}) => 'Last watched ${date}';
  @override
  String get video_library_empty => '尚未匯入任何影片';
  @override
  String get video_load_failed_back => 'Back';
  @override
  String get video_load_failed_generic => 'Couldn\'t load this video.';
  @override
  String get video_load_failed_network =>
      'Network error - check your connection and try again.';
  @override
  String get video_load_failed_not_found =>
      'This item was not found in your library.';
  @override
  String get video_load_failed_retry => 'Retry';
  @override
  String get video_load_failed_timeout =>
      'Connection timed out - the network is slow or the source is rate-limiting. Please try again.';
  @override
  String get video_load_failed_title => 'Video failed to load';
  @override
  String get video_load_failed_unavailable =>
      'Couldn\'t get the video stream - it may be unavailable, region or age restricted, or the source changed.';
  @override
  String get video_loading_buffering => 'Buffering…';
  @override
  String get video_loading_connecting => 'Connecting to stream…';
  @override
  String get video_loading_preparing => 'Preparing…';
  @override
  String get video_loading_subtitle => 'Downloading subtitles…';
  @override
  String get video_menu_fullscreen => '切換全螢幕';
  @override
  String get video_menu_lock => '沉浸／鎖定模式';
  @override
  String get video_menu_play_pause => '播放／暫停';
  @override
  String get video_menu_subtitle_track => '字幕軌';
  @override
  String get video_mining_image_mode => 'Video card image';
  @override
  String get video_mining_image_mode_current_frame => 'Screenshot at mining';
  @override
  String get video_mining_image_mode_gif => 'Animated GIF (subtitle clip)';
  @override
  String get video_mining_image_mode_hint =>
      'Whether the video card cover is an animation of the subtitle clip or a single still frame — and which frame';
  @override
  String get video_mining_image_mode_subtitle_start =>
      'Screenshot at subtitle start';
  @override
  String get video_next_episode => '下一集';
  @override
  String video_playlist_episodes({required Object count}) => '${count} 集';
  @override
  String get video_prev_episode => '上一集';
  @override
  String get video_quality => 'Quality';
  @override
  String get video_quality_auto => 'Auto';
  @override
  String get video_quality_empty => 'No switchable quality for this video';
  @override
  String get video_quality_enhancement_hint =>
      '開啟後用 mpv 內建高畫質縮放讓畫面更清晰，動畫、真人影視/電視劇都適用。想用 Anime4K 等著色器進一步增強，請在播放影片時的「畫質增強」裡選擇檔位。';
  @override
  String get video_quality_load_failed =>
      'Couldn\'t load qualities for this video.';
  @override
  String get video_quality_loading => 'Loading available qualities…';
  @override
  String video_quality_switched({required Object label}) => 'Quality: ${label}';
  @override
  String get video_rename => '重新命名';
  @override
  String get video_rename_hint => '標題';
  @override
  String get video_render_skia_fix_confirm_action => 'Restart';
  @override
  String get video_render_skia_fix_confirm_body =>
      'This disables the Impeller renderer and restarts the app to apply.';
  @override
  String get video_render_skia_fix_confirm_title =>
      'Switch to Skia and restart?';
  @override
  String get video_render_skia_fix_hint =>
      'Use if audio plays but the video stays black. Disables Impeller; restarts to apply.';
  @override
  String get video_render_skia_fix_title =>
      'Screen black? Switch renderer (Skia)';
  @override
  String video_resource_missing_message({required Object title}) =>
      'The file for 『${title}』 could not be found. Its location may have changed, or the drive may not be connected. You can re-import it, or remove this entry.';
  @override
  String get video_resource_missing_reimport => 'Re-import';
  @override
  String get video_resource_missing_title => 'Video unavailable';
  @override
  String get video_resource_relink_success => 'Video relinked';
  @override
  String get video_scrape_air_date => 'Aired';
  @override
  String get video_scrape_applied => 'Cover applied';
  @override
  String get video_scrape_apply_failed => 'Failed to apply cover';
  @override
  String video_scrape_apply_to_collection({required Object n}) =>
      'Also apply to all ${n} episodes in this collection';
  @override
  String get video_scrape_batch_close => 'Close';
  @override
  String get video_scrape_confidence_high => 'High match';
  @override
  String get video_scrape_confidence_low => 'Low match';
  @override
  String get video_scrape_confidence_medium => 'Medium match';
  @override
  String get video_scrape_episodes => 'Episodes';
  @override
  String get video_scrape_info => 'Series info';
  @override
  String get video_scrape_info_empty =>
      'No series info yet. It is fetched automatically in the background; you can also match it manually.';
  @override
  String get video_scrape_no_results => 'No matches found';
  @override
  String get video_scrape_online_match => 'Match cover online';
  @override
  String video_scrape_rating_votes({required Object count}) =>
      '${count} ratings';
  @override
  String get video_scrape_rescrape => 'Re-scrape';
  @override
  String get video_scrape_search => 'Search';
  @override
  String get video_scrape_search_hint => 'Search by title';
  @override
  String get video_scrape_source_offline => 'Offline';
  @override
  String get video_scrape_summary => 'Synopsis';
  @override
  String get video_scrape_tags => 'Tags';
  @override
  String get video_scrape_use => 'Use';
  @override
  String get video_scrape_view_subject => 'View on Bangumi';
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
  String get video_secondary_subtitle_hint =>
      'Rendered by player (not lookupable)';
  @override
  String get video_secondary_subtitle_sources => 'Secondary subtitle';
  @override
  String get video_setting_auto_play_next => '自動連播下一集';
  @override
  String get video_setting_auto_scrape => 'Auto-fetch series info';
  @override
  String get video_setting_auto_scrape_hint =>
      'Silently fetch cover, synopsis, rating and tags from Bangumi for videos in your library';
  @override
  String get video_setting_av_delay => '字幕調軸';
  @override
  String get video_setting_av_delay_hint =>
      '正數 = 字幕延後（字幕整體往後撥）；負數 = 字幕提前。可拖滑桿、按 ± 或直接輸入數值。';
  @override
  String get video_setting_danmaku_area => 'Display area';
  @override
  String get video_setting_danmaku_area_hint =>
      'Fraction of the screen height danmaku may occupy, from the top.';
  @override
  String get video_setting_danmaku_block_rules => 'Block words / regex';
  @override
  String get video_setting_danmaku_block_rules_hint =>
      'One rule per line. Wrap a line in slashes like /pattern/ for a regular expression; otherwise it matches as case-insensitive text.';
  @override
  String get video_setting_danmaku_block_rules_placeholder =>
      'e.g. spoiler or /pattern/';
  @override
  String get video_setting_danmaku_enabled => '顯示彈幕';
  @override
  String get video_setting_danmaku_enabled_hint =>
      '在影片上算繪本機或線上配對的彈幕，且不阻擋播放器操作。';
  @override
  String get video_setting_danmaku_font_scale => 'Font size';
  @override
  String get video_setting_danmaku_font_scale_hint =>
      'Scale the danmaku text size.';
  @override
  String get video_setting_danmaku_manual_match => 'Manual match';
  @override
  String get video_setting_danmaku_manual_match_hint =>
      'Search Dandanplay by title and pick the episode when auto match fails or is wrong.';
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
  String get video_setting_danmaku_opacity => 'Opacity';
  @override
  String get video_setting_danmaku_opacity_hint =>
      'Overall danmaku transparency.';
  @override
  String get video_setting_danmaku_server_url => '彈幕伺服器網址';
  @override
  String get video_setting_danmaku_speed => 'Speed';
  @override
  String get video_setting_danmaku_speed_hint =>
      'Higher is faster; scrolling danmaku cross the screen sooner.';
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
      'Sigmoid-curve upscaling reduces ringing but costs GPU. Off by default for performance; turn on if you want sharper upscaling.';
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
  String get video_setting_qb_category => 'qBittorrent category';
  @override
  String get video_setting_qb_category_hint =>
      'Downloads pushed by Fushi get this category; completion tracking only watches it.';
  @override
  String get video_setting_qb_password => 'WebUI password';
  @override
  String get video_setting_qb_url => 'qBittorrent WebUI URL';
  @override
  String get video_setting_qb_url_hint =>
      'e.g. http://127.0.0.1:8080. Leave empty to disable anime downloading.';
  @override
  String get video_setting_qb_username => 'WebUI username';
  @override
  String get video_setting_secondary_subtitle_obscure =>
      'Obscure secondary subtitle';
  @override
  String get video_setting_secondary_subtitle_obscure_hint =>
      'Blur or hide the secondary (translation) subtitle';
  @override
  String get video_setting_seek_seconds => '快進／快退步長（秒）';
  @override
  String get video_setting_speed => '播放速度';
  @override
  String get video_setting_speed_step => 'Speed step';
  @override
  String get video_setting_subtitle_appearance => '字幕外觀';
  @override
  String get video_setting_subtitle_bg_color => 'Background color';
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
  String get video_setting_subtitle_obscure => 'Obscure subtitles';
  @override
  String get video_setting_subtitle_obscure_blur => 'Blur';
  @override
  String get video_setting_subtitle_obscure_hide => 'Hide';
  @override
  String get video_setting_subtitle_obscure_hint =>
      'Choose how subtitles are obscured for listening practice: off, blurred (hover or tap to reveal), or hidden.';
  @override
  String get video_setting_subtitle_obscure_none => 'Off';
  @override
  String get video_setting_subtitle_position => '垂直位置';
  @override
  String get video_setting_subtitle_reset => '還原預設';
  @override
  String get video_setting_subtitle_respect_ass =>
      'Respect subtitle\'s own style';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      'Use the font, color, and outline built into .ass subtitles when available; turn off to force your appearance settings.';
  @override
  String get video_setting_subtitle_shadow => '陰影';
  @override
  String get video_setting_subtitle_sync_input => '偏移 (ms)';
  @override
  String get video_setting_subtitle_text_color => 'Text color';
  @override
  String get video_setting_theme => 'Theme';
  @override
  String get video_setting_torrent_active_downloads => 'Max active downloads';
  @override
  String get video_setting_torrent_active_seeds => 'Max active seeds';
  @override
  String get video_setting_torrent_anonymous => 'Anonymous mode';
  @override
  String get video_setting_torrent_antileech => 'Enable anti-leech';
  @override
  String get video_setting_torrent_backend_qb => 'External qBittorrent';
  @override
  String get video_setting_torrent_ban_progress_cheat => 'Ban progress cheat';
  @override
  String get video_setting_torrent_ban_relative_cheat =>
      'Ban relative progress cheat';
  @override
  String get video_setting_torrent_ban_time => 'Ban duration (min)';
  @override
  String get video_setting_torrent_ban_time_hint => '0 = permanent';
  @override
  String get video_setting_torrent_connections_hint => '0 = engine default';
  @override
  String get video_setting_torrent_dht => 'DHT';
  @override
  String get video_setting_torrent_download_limit => 'Download limit (KB/s)';
  @override
  String get video_setting_torrent_encryption_disabled => 'Disabled';
  @override
  String get video_setting_torrent_encryption_forced => 'Force';
  @override
  String get video_setting_torrent_encryption_prefer => 'Prefer';
  @override
  String get video_setting_torrent_limit_hint => '0 = unlimited';
  @override
  String get video_setting_torrent_listen_port => 'Listen port';
  @override
  String get video_setting_torrent_listen_port_hint => '0 = default (6881)';
  @override
  String get video_setting_torrent_lsd => 'Local peer discovery (LSD)';
  @override
  String get video_setting_torrent_max_connections => 'Max connections';
  @override
  String get video_setting_torrent_max_ip_ports => 'Max ports per IP';
  @override
  String get video_setting_torrent_memory_hint =>
      'Cap engine memory. 0 = auto (based on device RAM).';
  @override
  String get video_setting_torrent_memory_limit => 'Memory limit (MB)';
  @override
  String get video_setting_torrent_natpmp => 'NAT-PMP port mapping';
  @override
  String get video_setting_torrent_section_antileech => 'Anti-leech';
  @override
  String get video_setting_torrent_section_session => 'Session';
  @override
  String get video_setting_torrent_seed_ratio_hint =>
      'Stop uploading when uploaded/downloaded reaches this. 0 = unlimited.';
  @override
  String get video_setting_torrent_seed_ratio_limit => 'Seed ratio limit';
  @override
  String get video_setting_torrent_seed_time_hint =>
      'Stop uploading after seeding this long. 0 = unlimited.';
  @override
  String get video_setting_torrent_seed_time_limit =>
      'Seed time limit (minutes)';
  @override
  String get video_setting_torrent_upload_enabled => 'Enable upload / seeding';
  @override
  String get video_setting_torrent_upload_enabled_hint =>
      'Off by default. Seed back to the swarm after downloading.';
  @override
  String get video_setting_torrent_upload_limit => 'Upload limit (KB/s)';
  @override
  String get video_setting_torrent_upload_slots => 'Max upload slots';
  @override
  String get video_setting_torrent_upnp => 'UPnP port mapping';
  @override
  String get video_setting_torrent_zero_default => '0 = default';
  @override
  String get video_setting_torrent_zero_off => '0 = off';
  @override
  String get video_settings_cat_audio => 'Audio';
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
  String video_shader_download_partial(
          {required Object ok, required Object failed}) =>
      '已下載 ${ok} 個，${failed} 個失敗';
  @override
  String get video_shader_download_url => '貼上連結下載';
  @override
  String get video_shader_downloaded_label => '已下載';
  @override
  String get video_shader_downloading => '正在下載着色器…';
  @override
  String get video_shader_first_use_body =>
      '想让动画画面更清晰，可以进入“画质增强”并点击“下载 Anime4K 推荐着色器”。下载后在已安装列表里勾选即可启用。';
  @override
  String get video_shader_first_use_download => '一鍵下載並啟用';
  @override
  String get video_shader_first_use_title => '试试 Anime4K 画质增强';
  @override
  String get video_shader_import => '匯入着色器（.glsl）';
  @override
  String video_shader_import_done({required Object count}) =>
      '已匯入 ${count} 個着色器';
  @override
  String get video_shader_import_from_mpv => '從本機 mpv 匯入';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自动搜索本机 mpv；未找到时可手动选择 mpv 目录。';
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
  String video_subtitle_attached_to_video(
          {required Object title, required Object count}) =>
      '已為《${title}》掛上字幕（${count} 句）';
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
  String get video_subtitle_filter_favorites_empty => 'No favorited lines yet';
  @override
  String get video_subtitle_filter_selected => '已選';
  @override
  String get video_subtitle_filter_selected_empty => 'No lines selected yet';
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
  String get video_subtitle_list_clear_selection => '清空選擇';
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
  String get video_subtitle_list_remove_from_card => '從詞卡選擇中移除';
  @override
  String get video_subtitle_list_select_for_card => '選入詞卡（製卡時合併為例句）';
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
  String get video_subtitle_waveform_cue_list => 'Subtitle list';
  @override
  String get video_subtitle_waveform_jump_playhead => 'Jump to playhead';
  @override
  String get video_subtitle_waveform_legend_cue => 'Subtitle cue';
  @override
  String get video_subtitle_waveform_legend_energy => 'Loudness';
  @override
  String get video_subtitle_waveform_legend_playhead => 'Playhead';
  @override
  String get video_subtitle_waveform_open => 'Waveform alignment';
  @override
  String get video_subtitle_waveform_open_hint => 'Tap to zoom in and align';
  @override
  String get video_subtitle_waveform_scroll_hint =>
      'Drag to scan the timeline; use the controls below to align';
  @override
  String get video_subtitle_waveform_unavailable =>
      'Waveform unavailable on this device';
  @override
  String get video_subtitle_waveform_zoom_in => 'Zoom in';
  @override
  String get video_subtitle_waveform_zoom_out => 'Zoom out';
  @override
  String get video_subtitle_youtube_empty => '該字幕軌沒有文字';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang}（翻譯）';
  @override
  String video_watched_up_to({required Object time}) => 'Watched to ${time}';
  @override
  String get video_windows_black_flash_notice_body =>
      'On Windows, video may flash black under heavy GPU load. To reduce the load, try turning off Quality enhancement, Sigmoid upscaling and Debanding above, or switch Hardware decoding to Copy.';
  @override
  String get video_windows_black_flash_notice_title =>
      'Black flickering on Windows?';
  @override
  String get view_illustrations => '插圖';
  @override
  String get volume_button_page_turning => '音量鍵翻頁';
  @override
  String get volume_key_sentence_nav => '音量鍵句子導覽';
  @override
  String get wheel_page_turn_interval => '滑鼠滾輪翻頁間隔';
  @override
  String get word_favorite_added => 'Word saved to favorites';
  @override
  String get word_favorite_removed => 'Word removed from favorites';
  @override
  String get yomitan_api_key => 'Yomitan API 金鑰（可選）';
  @override
  String get yomitan_api_server => 'Yomitan API 伺服器';
  @override
  String get yomitan_api_server_hint =>
      '讓 yomitan-api 客戶端查詢 Fushi 詞典（連接埠 19633）';
  @override
  String get yomitan_api_server_started => 'Yomitan API server started';
  @override
  String get yomitan_port_kill_action => 'End process and retry';
  @override
  String get yomitan_port_kill_confirm => 'End process';
  @override
  String yomitan_port_kill_confirm_message({required Object process}) =>
      'The port is currently used by: ${process}';
  @override
  String yomitan_port_kill_confirm_title({required Object port}) =>
      'End the process using port ${port}?';
  @override
  String yomitan_port_kill_failed({required Object process}) =>
      'Could not end ${process}. Please end it manually, then retry.';
  @override
  String yomitan_port_kill_protected({required Object process}) =>
      '${process} is a critical system process — Fushi will not end it. Change the port instead.';
  @override
  String get yomitan_port_kill_self_instance =>
      'This process is another running instance of this app.';
  @override
  String get game_track_bgm => 'BGM / excluded';
  @override
  String get game_line_audio_no_voice => 'No voice';
  @override
  String get game_line_audio_overlong => 'Overlong clip';
  @override
  String get game_line_audio_overlong_hint =>
      'Far longer than a single line; may include BGM or other mixed audio';
  @override
  String get game_line_audio_loopback_hint =>
      'System-mix fallback; may include BGM';
  @override
  String get game_line_recapture => 'Recapture voice';
  @override
  String get game_line_recapture_stop => 'Finish recapture';
  @override
  String get game_line_tracks => 'Tracks for this line';
  @override
  String get game_line_tracks_hint =>
      'Preview each track at this line\'s moment, then exclude the BGM ones';
  @override
  String get game_line_track_use => 'Use for this line';
  @override
  String get game_user_tags_title => 'My tags';
  @override
  String get anki_lapis_section => 'Lapis card style';
  @override
  String get anki_lapis_font_scale => 'Card font scale';
  @override
  String get anki_lapis_font_scale_hint =>
      'Scales every Lapis font size; takes effect via "Apply style to Anki".';
  @override
  String get anki_lapis_custom_css => 'Custom CSS';
  @override
  String get anki_lapis_custom_css_hint =>
      'Appended to the Lapis stylesheet in a protected user section.';
  @override
  String get anki_lapis_apply => 'Apply style to Anki';
  @override
  String get anki_lapis_apply_done =>
      'Lapis style applied. A backup was saved first.';
  @override
  String anki_lapis_apply_failed({required Object error}) =>
      'Could not apply style: ${error}';
  @override
  String get anki_lapis_up_to_date => 'Lapis style is already up to date.';
  @override
  String get anki_lapis_foreign_edit_title => 'Template changed in Anki';
  @override
  String get anki_lapis_foreign_edit_body =>
      'The Lapis template in Anki differs from what Fushi last applied - it may have been edited by hand. Applying will overwrite it; a backup is saved first. Continue?';
  @override
  String get anki_lapis_backup => 'Back up Lapis template';
  @override
  String anki_lapis_backup_done({required Object path}) =>
      'Template backed up: ${path}';
  @override
  String anki_lapis_backup_failed({required Object error}) =>
      'Backup failed: ${error}';
  @override
  String get anki_lapis_not_found => 'Lapis note type not found in Anki.';
  @override
  String get anki_lapis_restore => 'Restore from backup';
  @override
  String get anki_lapis_restore_empty => 'No backups yet.';
  @override
  String get anki_lapis_restore_confirm =>
      'Overwrite the Lapis template in Anki with this backup? The current state is backed up first.';
  @override
  String get anki_lapis_restore_done => 'Template restored.';
  @override
  String anki_lapis_restore_failed({required Object error}) =>
      'Restore failed: ${error}';
  @override
  String get anki_dedup_section => 'Anki media storage optimization';
  @override
  String get anki_dedup_scan => 'Scan for duplicates (no changes)';
  @override
  String get anki_dedup_run => 'Deduplicate now';
  @override
  String get anki_dedup_report_title => 'Media deduplication report';
  @override
  String anki_dedup_report_body(
          {required Object groups,
          required Object removed,
          required Object size,
          required Object notes,
          required Object models,
          required Object skipped}) =>
      '${groups} duplicate groups; ${removed} extra copies (${size}); ${notes} notes and ${models} note types rewritten; ${skipped} skipped.';
  @override
  String get anki_dedup_report_dry_note => 'Scan only - nothing was changed.';
  @override
  String get anki_dedup_report_clean => 'No byte-identical duplicates found.';
  @override
  String anki_dedup_failed({required Object error}) =>
      'Deduplication failed: ${error}';
  @override
  String get anki_dedup_unavailable =>
      'Requires Anki running on this machine (AnkiConnect).';
  @override
  String get anki_dedup_run_hint =>
      'Scans first and lists exactly what would be deleted; nothing is removed until you confirm.';
  @override
  String get anki_dedup_plan_title => 'Files to delete';
  @override
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '${count} extra copies, ${size} reclaimable. One copy of each file is kept and every reference is repointed to it first; nothing is ever re-encoded.';
  @override
  String anki_dedup_plan_entry(
          {required Object file,
          required Object size,
          required Object canonical}) =>
      'Delete ${file} (${size}) - keeping ${canonical}';
  @override
  String get anki_dedup_plan_delete => 'Delete these files';
  @override
  String get anki_dedup_plan_journal =>
      'A journal of every rewrite and deletion is written to the backup folder first.';
  @override
  String get manga_ocr_default_engine => 'Default OCR engine';
  @override
  String get manga_ocr_engine_auto => 'Automatic (never uploads to Lens)';
  @override
  String get manga_ocr_engine_local_onnx => 'Local ONNX';
  @override
  String get manga_ocr_engine_google_lens => 'Google Lens';
  @override
  String get manga_google_lens_disclosure_title =>
      'Send manga pages to Google Lens?';
  @override
  String get manga_google_lens_disclosure_body =>
      'Recognizing this manga sends a reduced JPEG copy of each page without OCR text to Google. Results are cached on this device. The endpoint is unofficial and may stop working. Nothing is uploaded unless you agree.';
  @override
  String get manga_google_lens_disclosure_accept => 'Agree and start OCR';
  @override
  String get manga_google_lens_disclosure_decline => 'Cancel';
  @override
  String get manga_reading_direction => 'Reading direction';
  @override
  String get manga_direction_rtl => 'Right to left';
  @override
  String get manga_direction_ltr => 'Left to right';
  @override
  String get manga_zoom => 'Zoom';
  @override
  String get manga_jump_to_page => 'Jump to page';
  @override
  String get manga_previous_page => 'Previous page';
  @override
  String get manga_next_page => 'Next page';
  @override
  String manga_page_number_hint({required Object total}) =>
      'Page number (1-${total})';
  @override
  String get manga_import_direct => 'Import without OCR';
  @override
  String get manga_library => 'Manga';
  @override
  String get manga_import_action => 'Import Manga';
  @override
  String get game_scrape_search => 'Search';
  @override
  String get game_scrape_use => 'Use';
  @override
  String get game_scrape_search_failed =>
      'Search failed. Check your network and try again.';
  @override
  String get game_remove_confirm =>
      'Remove this game from the library? Game files on disk will not be deleted.';
  @override
  String manga_ocr_acceleration_status({required Object engine}) =>
      'OCR acceleration: ${engine}';
  @override
  String manga_ocr_acceleration_degraded(
          {required Object engine, required Object reason}) =>
      'GPU acceleration unavailable, running OCR on ${engine}: ${reason}';
  @override
  String get media_tracking_status => 'Collection status';
  @override
  String get media_tracking_signup => 'Create a Bangumi account';
  @override
  String get media_tracking_game => 'Game';
  @override
  String get download_rate_limit_lan_exempt =>
      'Does not apply within your local network; LAN transfers always run at full speed.';
  @override
  String get video_scrape_search_failed =>
      'Search failed. Tap Search to retry.';
  @override
  String get scrape_reason_network =>
      'Could not get a valid response from the cover source. Check your network and retry.';
  @override
  String get scrape_reason_server =>
      'The cover source returned an error. Try again later or pick another candidate.';
  @override
  String get common_more_actions => 'More actions';
  @override
  String get collection_already_has_item =>
      'This item is already in the collection.';
  @override
  String get drag_drop_manga_archive_unsupported =>
      'Can\'t import .cbr/.rar comic archives — repack as .cbz or a folder of images.';
  @override
  String get collection_add_failed =>
      'Couldn\'t add the item to the collection. Please try again.';
  @override
  String get anki_dedup_auto => 'Automatic processing';
  @override
  String get anki_dedup_auto_hint =>
      'Off by default. When on, Fushi scans at startup (at most once a week) and shows you the list first — nothing is deleted until you confirm.';
  @override
  String get anki_dedup_auto_delete => 'Delete automatically without asking';
  @override
  String get anki_dedup_auto_delete_hint =>
      'Skips the confirmation dialog. Only byte-identical extra copies are ever removed and nothing is re-encoded, but deletion cannot be undone.';
  @override
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      'Found ${count} duplicate Anki media files (${size} reclaimable)';
  @override
  String get anki_dedup_auto_review => 'Review';
  @override
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      'Removed ${count} duplicate Anki media files, ${size} reclaimed';
  @override
  String anki_lapis_backup_done_pruned(
          {required Object path, required Object count}) =>
      'Backed up to ${path} (${count} old backups pruned by the 90-day / keep-10 policy)';
  @override
  String get game_audio_fallback_policy => 'Audio fallback';
  @override
  String get game_audio_fallback_full => 'Allow mixed audio';
  @override
  String get game_audio_fallback_clean => 'Clean sources only';
  @override
  String get game_audio_fallback_resource => 'Original resources only';
  @override
  String get game_track_silent_at_cue => 'No sound at this line';
  @override
  String get game_audio_fallback_full_hint =>
      'Falls back to the system mix when no clean voice is captured; the clip may contain BGM and effects.';
  @override
  String get game_audio_fallback_clean_hint =>
      'Uses game resource audio and engine PCM only. Lines with no voice are mined without audio instead of picking up BGM.';
  @override
  String get game_audio_fallback_resource_hint =>
      'Requires the original voice file shipped with the game; mining is refused when it is missing.';
  @override
  String get game_line_audio_suppressed => 'Mix skipped';
  @override
  String get game_line_audio_suppressed_hint =>
      'No clean audio source produced audio for this line, and the system mix was skipped by your audio fallback policy. This does not mean the line has no voice.';
  @override
  String get video_setting_torrent_limit_lan => 'Apply limits to LAN peers';
  @override
  String get video_setting_torrent_limit_lan_hint =>
      'Off by default: transfers with peers on your local network ignore the limits above.';
  @override
  String get download_rate_limit_lan_included =>
      'Also applies within your local network.';
  @override
  String get video_collection_no_local_member =>
      'No local video in this collection';
  @override
  String video_scrape_online_match_collection({required Object name}) =>
      'Match cover for ${name}';
  @override
  String get gal_mining_image_mode => 'Galgame card image';
  @override
  String get gal_mining_image_mode_screenshot => 'Screenshot';
  @override
  String get gal_mining_image_mode_hint =>
      'Galgame scenes barely move within one line, so a still screenshot is usually smaller and just as useful.';
  @override
  String get shortcut_scope_manga => 'Manga';
  @override
  String get shortcut_action_manga_page_forward => 'Next page';
  @override
  String get shortcut_action_manga_page_backward => 'Previous page';
  @override
  String get shortcut_action_manga_dismiss_dict => 'Close dictionary';
  @override
  String get video_setting_jimaku_default_language =>
      'Default subtitle language';
  @override
  String get video_jimaku_api_key_settings_hint =>
      'Also editable in Settings → Video → Subtitles';
  @override
  String get anime_download_subs_episodes_unverified =>
      'Episode numbers are not verified against this pack - subtitles may come from another season.';
  @override
  String get anime_download_subs_deferred =>
      'Subtitles are matched after download, from the pack\'s actual files';
  @override
  String get anime_download_subs_pending =>
      'Subtitles: pending until download completes';
  @override
  String get anime_download_subs_unmatched =>
      'Subtitles: no match for this pack';
  @override
  String get stat_source_breakdown => 'By source';
  @override
  String stat_format_pages({required Object n}) => '${n} pages';
  @override
  String anime_download_subs_season_mismatch({required Object season}) =>
      'No subtitle entry matches season ${season} of this pack - not auto-selected. Pick one manually if you want it anyway.';
  @override
  String get media_tracking_card_title => 'Bangumi sync';
  @override
  String get media_tracking_not_connected =>
      'Not connected. Progress stays local and nothing reaches Bangumi.';
  @override
  String get media_tracking_last_sync => 'Last sync';
  @override
  String get media_tracking_never_synced => 'Never synced';
  @override
  String media_tracking_linked_count({required Object n}) => '${n} linked';
  @override
  String media_tracking_pending_count({required Object n}) =>
      '${n} waiting to send';
  @override
  String get media_tracking_all_synced => 'Everything sent';
  @override
  String get media_tracking_unauthorized =>
      'Bangumi rejected the access token. Reconnect it in settings.';
  @override
  String get media_tracking_open_subject => 'Open on Bangumi';
  @override
  String get media_tracking_manage_links => 'Manage links';
  @override
  String get media_tracking_last_error => 'Last error';
  @override
  String get shortcut_action_popup_mine_entry => 'Create card (mine)';
  @override
  String get game_upscaling_auto_hint =>
      'Use Magpie if it is already running; otherwise use the version bundled with Fushi. No download is needed.';
  @override
  String get game_upscaling_installed_only_hint =>
      'Only use Magpie if it is already installed or running. Do not unpack Fushi\'s bundled version.';
  @override
  String get game_upscaling_off_hint => 'Never upscale the game window.';
  @override
  String get game_helper_bundle_missing =>
      'The galgame hook helper is not bundled with this build. Update Fushi to get it.';
  @override
  String game_upscaling_pick_title({required Object name}) =>
      'Window upscaling for ${name}';
  @override
  String get game_upscaling_pick_body =>
      'Upscales this game window with Magpie while a capture session is running. Set per game - it only helps for games whose native resolution is lower than your screen. Uses your GPU.';
  @override
  String get game_upscaling_hint_not_installed =>
      'Magpie is not ready. Set window upscaling to Auto to use the copy bundled with Fushi; if it still does not start, update or reinstall Fushi.';
  @override
  String media_source_count_manga({required Object n}) => '${n} volumes';
  @override
  String get library_view_shelf => 'Shelf';
  @override
  String get library_view_browse => 'Discover';
  @override
  String get library_view_media => 'Library';
  @override
  String get scrape_failure_detail_show => 'Show details';
  @override
  String get scrape_failure_detail_hide => 'Hide details';
  @override
  String get media_tracking_retry_mapping => 'Retry matching';
  @override
  String get media_tracking_retry_matched =>
      'Matched and queued current progress';
  @override
  String get media_tracking_retry_no_match =>
      'No match found. Try manual linking.';
  @override
  String get game_statistics => 'Game statistics';
  @override
  String get game_stat_by_game => 'By game';
  @override
  String get stat_clear_all_game_message =>
      'Clear all game play time and session counts? Your game library and activity timeline are kept. This cannot be undone.';
  @override
  String batch_selection_stale_skipped(
          {required Object m, required Object n}) =>
      'Skipped ${m} of ${n} selected items that no longer exist';
  @override
  String get game_text_thread_unset =>
      'No thread selected — pick one to start capturing';
  @override
  String get media_tracking_watched_show => 'View all watched anime';
  @override
  String get media_tracking_watched_title => 'Watched on Bangumi';
  @override
  String get media_tracking_watched_empty =>
      'No anime is marked as watched on this Bangumi account.';
  @override
  String media_tracking_watched_load_failed({required Object error}) =>
      'Could not load watched anime: ${error}';
  @override
  String media_tracking_watched_progress({required Object n}) =>
      'Watched ${n} episodes';
  @override
  String get media_tracking_manual_required => 'Needs manual link';
  @override
  String media_tracking_manual_required_count({required Object n}) =>
      '${n} items need manual links';
  @override
  String get media_tracking_manual_required_hint =>
      'These local items already have progress but are not linked to Bangumi.';
  @override
  String get media_tracking_no_local_history =>
      'No local watch, reading, or game progress needs linking.';
  @override
  String media_tracking_more_manual_required({required Object n}) =>
      '${n} more items need manual links';
  @override
  String get manga_import_hint =>
      'Pick a manga folder, a .cbz/.zip page archive, or a .mokuro file.';
  @override
  String get manga_import_pick_file => 'Pick manga file';
  @override
  String get manga_import_pick_folder => 'Pick manga folder';
  @override
  String get manga_import_missing_input => 'Pick a manga file or folder first.';
  @override
  String get manga_import_detected_title => 'This looks like manga';
  @override
  String get manga_import_detected_confirm => 'Import as manga';
  @override
  String manga_import_detected_message({required Object name}) =>
      '"${name}" is a manga file, so it will go through the manga importer instead of the book importer.';
  @override
  String get video_jimaku_source_loading => 'Checking subtitle availability...';
  @override
  String get video_jimaku_source_failed =>
      'Could not check subtitle availability. Try searching again.';
  @override
  String get video_jimaku_language_unknown => 'Language not labeled';
  @override
  String video_jimaku_source_summary(
          {required Object files,
          required Object episodes,
          required Object languages}) =>
      '${files} subtitle files · ${episodes} episodes · ${languages}';
  @override
  String video_jimaku_episode_unlabeled(
          {required Object episode, required Object count}) =>
      'No subtitle labeled episode ${episode}; ${count} unlabeled files may still match';
  @override
  String video_jimaku_episode_unavailable({required Object episode}) =>
      'No subtitle found for episode ${episode}';
  @override
  String video_jimaku_episode_available(
          {required Object count, required Object languages}) =>
      '${count} subtitles available · ${languages}';
  @override
  String get video_scrape_manual_match_hint =>
      'Manual matching replaces this episode cover and saves its source mapping and title metadata. All available sources are searched together and results are ranked by match confidence.';
  @override
  String get video_scrape_collection_match_hint =>
      'This only replaces the collection cover. Episode covers and title metadata are not changed. All available sources are searched together and results are ranked by match confidence.';
  @override
  String get video_scrape_apply_to_collection_hint =>
      'This writes the same cover to every episode. Leave it off unless that is intentional.';
  @override
  String get manga_online_source_disabled =>
      'This internet source is disabled. Enable it in Sources to browse the catalog.';
  @override
  String get selection_web_search => 'Search the web';
  @override
  String get selection_web_search_unavailable => 'No app can search the web.';
  @override
  String get selection_share_failed => 'Could not open the share sheet.';
  @override
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang} (auto-generated)';
  @override
  String get anki_dedup_progress_title => 'Deduplicating media';
  @override
  String anki_dedup_progress_scanning({required Object count}) =>
      'Scanning media folder… (${count} files found)';
  @override
  String anki_dedup_progress_hashing(
          {required Object done, required Object total}) =>
      'Comparing same-size files… (${done} / ${total})';
  @override
  String anki_dedup_progress_resolving(
          {required Object done, required Object total}) =>
      'Processing duplicates… (${done} / ${total})';
  @override
  String anki_dedup_progress_freed({required Object size}) =>
      'Freed ${size} so far';
  @override
  String get anki_dedup_cancelling => 'Cancelling…';
  @override
  String get anki_dedup_cancelled =>
      'Deduplication cancelled; completed changes are kept.';
  @override
  String get anki_dedup_report_cancelled_note =>
      'Cancelled early — the numbers below only cover what was completed.';
  @override
  String get anki_dedup_plan_busy_note =>
      'Anki may be unresponsive while this runs; avoid using Anki until it finishes.';
  @override
  String get video_setting_subtitle_position_secondary =>
      'Secondary subtitle position';
  @override
  String get dict_download_learning_language => 'Learning language';
  @override
  String get dict_category_bilingual => 'Bilingual';
  @override
  String get dict_category_monolingual => 'Monolingual';
  @override
  String get shortcut_action_video_hold_speed => 'Hold for temporary speed';
  @override
  String get handlebar_phonetic_transcriptions => 'Phonetic transcriptions';
  @override
  String get sync_progress_preparing => 'Preparing sync';
  @override
  String get sync_progress_collections => 'Syncing collections';
  @override
  String get sync_progress_book => 'Syncing book';
  @override
  String sync_progress_book_titled({required Object title}) =>
      'Syncing ${title}';
  @override
  String sync_last_completed({required Object count}) =>
      'Last sync: done (${count} channels)';
  @override
  String get sync_last_no_channels =>
      'Last sync: nothing synced - no connected sync channel';
  @override
  String get sync_last_nothing => 'Last sync: nothing to sync';
  @override
  String get sync_last_auto_disabled => 'Last sync: skipped - auto sync is off';
  @override
  String get sync_last_cooled_down => 'Last sync: skipped - synced recently';
  @override
  String get sync_last_failed => 'Last sync: failed';
  @override
  String anime_download_no_results_detail(
          {required Object query, required Object filters}) =>
      'The service responded successfully but returned 0 items. Query: ${query}; filters: ${filters}. Try another title or loosen the filters.';
  @override
  String get anime_download_streaming_ready =>
      'In library · download continues';
  @override
  String get anime_download_unfiltered => 'No Trusted filter';
  @override
  String get interconnect_enable_footer =>
      'How to use: on the device that holds your library, turn on the sync server switch below; on your other device, add the address of that server to pair with it. A device can act as only one role at a time — server or client.';
  @override
  String get interconnect_peer_list_title => 'Added peers';
  @override
  String get interconnect_peer_list_empty =>
      'No peers added yet. Pick a discovered device from the LAN device list below to pair automatically, or add a peer address manually.';
  @override
  String get anki_lapis_visual_editor => 'Visual editor';
  @override
  String get anki_lapis_visual_editor_hint =>
      'Preview the Lapis card, then change each area\'s style, position and field mapping without writing CSS.';
  @override
  String get anki_lapis_visual_front => 'Front';
  @override
  String get anki_lapis_visual_back => 'Back';
  @override
  String get anki_lapis_visual_preview => 'Lapis card preview';
  @override
  String get anki_lapis_visual_select_field => 'Choose what to edit';
  @override
  String get anki_lapis_visual_reset_field => 'Reset field';
  @override
  String anki_lapis_visual_font_size({required Object percent}) =>
      'Font size: ${percent}%';
  @override
  String get anki_lapis_visual_bold => 'Bold';
  @override
  String get anki_lapis_visual_alignment => 'Alignment';
  @override
  String get anki_lapis_visual_color => 'Text color';
  @override
  String get anki_lapis_visual_default => 'Default';
  @override
  String get anki_lapis_visual_advanced_css => 'Advanced CSS';
  @override
  String get anki_lapis_visual_field_expression => 'Word';
  @override
  String get anki_lapis_visual_field_reading => 'Reading';
  @override
  String get anki_lapis_visual_field_sentence => 'Sentence';
  @override
  String get anki_lapis_visual_field_primary_definition => 'Primary definition';
  @override
  String get anki_lapis_visual_field_glossaries => 'Other definitions';
  @override
  String get anki_lapis_visual_target_card_content => 'Card content';
  @override
  String get anki_lapis_visual_target_definition => 'Definition';
  @override
  String get anki_lapis_visual_target_inside_definition => 'Inside definition';
  @override
  String get anki_lapis_visual_field_definition_info => 'Definition indicator';
  @override
  String get anki_lapis_visual_field_definition_box => 'Definition box';
  @override
  String get anki_lapis_visual_field_definition_content => 'Whole definition';
  @override
  String get anki_lapis_visual_field_selected_definition =>
      'Selected definition';
  @override
  String get anki_lapis_visual_field_dictionary_entry => 'Dictionary entry';
  @override
  String get anki_lapis_visual_field_dictionary_name => 'Dictionary name';
  @override
  String get anki_lapis_visual_field_definition_example => 'Definition example';
  @override
  String get anki_lapis_visual_line_height => 'Line height';
  @override
  String get anki_lapis_visual_background_color => 'Background highlight';
  @override
  String get anki_lapis_visual_box_layout => 'Box appearance';
  @override
  String get anki_lapis_visual_border_width => 'Border';
  @override
  String get anki_lapis_visual_border_color => 'Border color';
  @override
  String get anki_lapis_visual_corner_radius => 'Corner radius';
  @override
  String get anki_lapis_visual_padding => 'Inner spacing';
  @override
  String get anki_lapis_visual_margin => 'Outer spacing';
  @override
  String get anki_lapis_visual_field_definition_info_note =>
      'Only visible on cards that keep more than one definition block; single-definition cards hide it.';
  @override
  String get anki_lapis_visual_field_dictionary_name_note =>
      'On Fushi cards this label also carries the part-of-speech tags, so the two cannot be styled separately.';
  @override
  String get game_upscaling_error_bundle_missing =>
      'Fushi installation is incomplete: the bundled Magpie component is missing. Reinstall or update Fushi.';
  @override
  String get game_upscaling_error_bundle_invalid =>
      'The bundled Magpie component is corrupted or did not pass verification. Reinstall or update Fushi.';
  @override
  String download_test_connection_failed_reason({required Object message}) =>
      'Connection failed: ${message}';
  @override
  String get delete_disclosure_will_delete_label => 'Will be deleted';
  @override
  String get delete_disclosure_will_keep_label => 'Will be kept';
  @override
  String get delete_disclosure_book_records =>
      'Reading progress, bookmarks, tags and subtitle data';
  @override
  String get delete_disclosure_book_extracted =>
      'The book files Fushi extracted into its own storage';
  @override
  String get delete_disclosure_book_audiobook =>
      'The audio and aligned subtitles of the attached audiobook, if any';
  @override
  String get delete_disclosure_source_kept =>
      'The original files you imported (book, subtitles, audio)';
  @override
  String get delete_disclosure_stats_kept => 'Reading statistics';
  @override
  String get delete_disclosure_audiobook_files =>
      'The audio and aligned subtitles Fushi copied into its own storage';
  @override
  String get delete_disclosure_audiobook_book_kept =>
      'The book itself and its reading progress';
  @override
  String get delete_disclosure_audiobook_source_kept =>
      'The original audio files you imported';
  @override
  String get audiobook_delete => 'Delete audiobook';
  @override
  String get audiobook_delete_confirm =>
      'Delete the attached audiobook? Its audio files are removed from this device.';
  @override
  String get delete_collection_confirm =>
      'Only the grouping is removed. The items in it are kept.';
  @override
  String get shortcut_action_video_enter_caret =>
      'Enter subtitle lookup cursor';
  @override
  String get audiobook_export_clip_too_long =>
      'Selection audio is too long to export (limit: 5 minutes)';
  @override
  String get sync_err_forbidden =>
      'The server refused this request. Your sign-in is fine - check the server\'s settings.';
  @override
  String sync_err_forbidden_detail({required Object reason}) =>
      'The server refused this request: ${reason} (your sign-in is fine)';
  @override
  String get collection_group_extras => 'Extras & PV';
  @override
  String collection_group_season({required Object n}) => 'Season ${n}';
  @override
  String get collection_sort_by_season => 'Sort by season';
  @override
  String get mining_animated_format_avif => 'AVIF (smallest)';
  @override
  String get mining_animated_format_webp => 'WebP (wider support)';
  @override
  String get mining_animated_format_gif => 'GIF (most compatible)';
  @override
  String get video_mining_animated_format => 'Video card animation format';
  @override
  String get video_mining_animated_format_hint =>
      'AVIF is far smaller than GIF at the same quality, and its top quality tier allows a higher resolution and frame rate than GIF or WebP. Falls back to GIF automatically when the bundled encoder cannot produce it.';
  @override
  String get gal_mining_animated_format => 'Game card animation format';
  @override
  String get gal_mining_animated_format_hint =>
      'Same formats as video cards, stored separately: a galgame frame barely moves within one line, so the trade-off differs.';
  @override
  String get scrape_all => 'Scrape all';
  @override
  String scrape_all_title({required Object kind}) => 'Scrape all ${kind}';
  @override
  String scrape_all_running({required Object current, required Object total}) =>
      'Scraping ${current} / ${total}';
  @override
  String scrape_all_item({required Object title}) => 'Processing: ${title}';
  @override
  String scrape_all_done(
          {required Object applied,
          required Object review,
          required Object skipped,
          required Object failed}) =>
      'Done: ${applied} applied, ${review} need review, ${skipped} skipped, ${failed} failed';
  @override
  String get scrape_all_empty =>
      'There are no items to scrape in this library.';
  @override
  String get scrape_all_start => 'Start';
  @override
  String collection_hero_total_episodes({required Object count}) =>
      '${count} episodes';
  @override
  String get video_scrape_collection_rename_title => 'Rename this collection?';
  @override
  String get video_scrape_collection_rename_body =>
      'The matched entry has a different name. Renaming is optional: the cover and details are saved either way, and a rename also replaces the old name on your other synced devices.';
  @override
  String video_scrape_collection_rename_from({required Object name}) =>
      'Current name: ${name}';
  @override
  String video_scrape_collection_rename_to({required Object name}) =>
      'New name: ${name}';
  @override
  String get video_scrape_collection_rename_keep => 'Keep current name';
  @override
  String get video_scrape_collection_rename_confirm => 'Rename';
  @override
  String get download_task_toggle_failed => 'Pause/resume failed';
  @override
  String get download_task_eta => 'ETA';
  @override
  String get download_task_ratio => 'Ratio';
  @override
  String get download_task_status_downloading => 'Downloading';
  @override
  String get download_task_status_seeding => 'Seeding';
  @override
  String get download_task_status_completed => 'Completed';
  @override
  String get download_task_status_paused => 'Paused';
  @override
  String get download_task_status_queued => 'Queued';
  @override
  String get download_task_status_stalled => 'Stalled';
  @override
  String get download_task_status_checking => 'Checking';
  @override
  String get download_task_status_metadata => 'Fetching metadata';
  @override
  String get download_task_status_moving => 'Moving';
  @override
  String get download_task_status_error => 'Error';
  @override
  String get download_task_pause => 'Pause';
  @override
  String get download_task_resume => 'Resume';
  @override
  String get download_airing_calendar_title => 'Airing calendar';
  @override
  String get download_airing_calendar_show_all => 'Show all this season';
  @override
  String get download_airing_calendar_empty_guidance =>
      'Nothing to show yet: bind a collection to AniList or add a download subscription, and their airing times will appear here.';
  @override
  String get download_airing_calendar_error =>
      'Failed to load the airing schedule';
  @override
  String get download_airing_calendar_in_library => 'In library';
  @override
  String get download_airing_calendar_subscribed => 'Subscribed';
  @override
  String download_airing_calendar_episode_label({required Object episode}) =>
      'Ep ${episode}';
  @override
  String get download_airing_calendar_week_prev => 'Previous week';
  @override
  String get download_airing_calendar_week_next => 'Next week';
  @override
  String get download_airing_calendar_week_empty => 'Nothing airing this week';
  @override
  String get video_jimaku_format => 'Format';
  @override
  String get video_jimaku_format_all => 'All';
  @override
  String get video_setting_tmdb_key => 'Custom TMDB API key';
  @override
  String get video_setting_tmdb_key_hint =>
      'Optional. Leave empty to use the built-in key. Fill in your own only if scraping stops working or you want to use your own quota.';
  @override
  String get about_tmdb_attribution =>
      'This application uses TMDB and the TMDB APIs but is not endorsed, certified, or otherwise approved by TMDB.';
  @override
  String get anki_lapis_visual_layout => 'Layout';
  @override
  String get anki_lapis_visual_layout_hint =>
      'Uses Lapis\' own layout switches, so desktop and mobile Anki both follow it.';
  @override
  String get anki_lapis_visual_layout_sentence => 'Sentence position';
  @override
  String get anki_lapis_visual_layout_sentence_above => 'Above definitions';
  @override
  String get anki_lapis_visual_layout_sentence_below => 'Below definitions';
  @override
  String get anki_lapis_visual_layout_picture => 'Image position';
  @override
  String get anki_lapis_visual_layout_picture_right => 'Right of the word';
  @override
  String get anki_lapis_visual_layout_picture_left => 'Left of the word';
  @override
  String get anki_lapis_visual_layout_picture_alt => 'Inside the sentence';
  @override
  String get anki_lapis_visual_layout_audio => 'Audio buttons';
  @override
  String get anki_lapis_visual_layout_audio_header => 'Next to the reading';
  @override
  String get anki_lapis_visual_layout_audio_fixed => 'Pinned to the bottom';
  @override
  String get anki_lapis_visual_layout_audio_alt => 'Inside the sentence';
  @override
  String get anki_lapis_visual_mapping_hint =>
      'Anki fields that fill the selected area. Changes are saved together with the style.';
  @override
  String get anki_lapis_visual_mapping_none =>
      'This area is drawn by the template itself and has no field of its own.';
  @override
  String get anki_lapis_visual_color_custom => 'Custom';
  @override
  String get anki_lapis_visual_color_picker_title => 'Pick a color';
  @override
  String get video_scrape_tmdb_key_hint => 'Enter TMDB API key';
  @override
  String get video_scrape_tmdb_key_required => 'TMDB requires an API key';
  @override
  String get video_scrape_tmdb_key_save => 'Save';
  @override
  String get video_scrape_tmdb_key_empty =>
      'Save a TMDB API key, then press Search. Results from other sources are not shown here.';
  @override
  String get download_detail_tab_overview => 'Overview';
  @override
  String get download_detail_tab_files => 'Files';
  @override
  String get download_detail_tab_peers => 'Peers';
  @override
  String get download_detail_tab_trackers => 'Trackers';
  @override
  String get download_detail_backend_unsupported =>
      'Not supported by current download backend';
  @override
  String get download_detail_task_gone => 'Task not found in backend';
  @override
  String get download_detail_task_missing =>
      'The original download backend is online, but this torrent is no longer present. Live peers and trackers cannot be recovered; persisted task information is shown.';
  @override
  String get download_detail_section_transfer => 'Transfer';
  @override
  String get download_detail_section_network => 'Network';
  @override
  String get download_detail_section_task => 'Task';
  @override
  String get download_detail_seeds_label => 'Seeds';
  @override
  String get download_detail_leechers_label => 'Leechers';
  @override
  String get download_detail_connections_label => 'Connections';
  @override
  String get download_detail_content_path_label => 'Content path';
  @override
  String get download_detail_time_active => 'Active time';
  @override
  String get download_detail_time_seeding => 'Seeding time';
  @override
  String get download_detail_total_size_label => 'Total size';
  @override
  String get download_detail_listen_port => 'Listen port';
  @override
  String get download_detail_dht_nodes => 'DHT nodes';
  @override
  String get download_detail_hash_label => 'Info hash';
  @override
  String get download_detail_port_mapping => 'Port mapping';
  @override
  String get download_detail_session_rates => 'Session rates';
  @override
  String get download_detail_pieces_label => 'Pieces';
  @override
  String get download_detail_priority_skip => 'Don\'t download';
  @override
  String get download_detail_raw_state_label => 'Backend state';
  @override
  String get download_detail_remaining_label => 'Remaining';
  @override
  String get download_detail_save_path_label => 'Save path';
  @override
  String get download_detail_priority_normal => 'Normal';
  @override
  String get download_detail_priority_high => 'High';
  @override
  String get download_detail_tracker_working => 'Working';
  @override
  String get download_detail_tracker_updating => 'Updating';
  @override
  String get download_detail_tracker_not_contacted => 'Not contacted yet';
  @override
  String get download_detail_tracker_not_working => 'Not working';
  @override
  String get download_detail_tracker_disabled => 'Disabled';
  @override
  String get download_detail_no_peers => 'No connected peers';
  @override
  String get download_detail_no_trackers => 'No trackers';
  @override
  String get video_filter_year => 'Year';
  @override
  String get video_filter_year_unknown => 'Unknown year';
  @override
  String get video_filter_watch_status => 'Watch status';
  @override
  String get video_filter_watch_status_unwatched => 'Unwatched';
  @override
  String get video_filter_watch_status_watching => 'Watching';
  @override
  String get video_filter_watch_status_completed => 'Completed';
  @override
  String get video_hero_detail_view => 'Details';
  @override
  String video_hero_episodes_watched({required Object n}) => '${n} eps watched';
  @override
  String get video_recently_added_badge => 'NEW';
  @override
  String get video_air_season_winter => 'Winter';
  @override
  String get video_air_season_spring => 'Spring';
  @override
  String get video_air_season_summer => 'Summer';
  @override
  String get video_air_season_autumn => 'Fall';
  @override
  String get delete_scope_no_channel =>
      'No sync configured - this deletion only affects this device';
  @override
  String get mihon_sources_title => 'Manga sources';
  @override
  String get mihon_extensions_title => 'Manga extensions';
  @override
  String get mihon_store_add => 'Add extension store';
  @override
  String get mihon_store_url => 'Extension store URL';
  @override
  String get mihon_store_empty =>
      'No extension stores yet. Add a compatible Mihon store or import a local APK.';
  @override
  String get mihon_extension_import => 'Import local APK';
  @override
  String get mihon_extension_warning =>
      'Third-party extensions execute code with Fushi permissions. Only install extensions and signers you trust.';
  @override
  String get mihon_extension_install => 'Install';
  @override
  String get mihon_extension_update => 'Update';
  @override
  String get mihon_extension_uninstall => 'Uninstall';
  @override
  String get mihon_extension_installed => 'Installed';
  @override
  String get mihon_extension_disabled => 'Disabled';
  @override
  String get mihon_source_empty =>
      'No enabled manga sources. Install and enable an extension first.';
  @override
  String get mihon_source_popular => 'Popular';
  @override
  String get mihon_source_latest => 'Latest';
  @override
  String get mihon_source_search => 'Search manga';
  @override
  String get mihon_source_preferences => 'Source preferences';
  @override
  String get mihon_source_clear_data => 'Clear source data';
  @override
  String get mihon_source_clear_data_hint =>
      'Clears this source preferences and cookies. Installed extensions are kept.';
  @override
  String get mihon_signer_trust_title => 'Trust extension signer?';
  @override
  String get mihon_signer_fingerprint => 'Signer SHA-256';
  @override
  String get mihon_runtime_unavailable =>
      'Mihon extensions are unavailable on this platform.';
  @override
  String get mihon_extension_incompatible => 'Incompatible extension';
  @override
  String get mihon_store_refresh => 'Refresh stores';
  @override
  String get mihon_source_browse_mokuro => 'Built-in Mokuro catalog';
  @override
  String get mihon_source_no_results => 'No manga found.';
  @override
  String get mihon_chapters_title => 'Chapters';
  @override
  String get mihon_extension_language_filter => 'Language';
  @override
  String get mihon_extension_language_all => 'All languages';
  @override
  String get mihon_filter_ignore => 'Ignore';
  @override
  String get mihon_filter_include => 'Include';
  @override
  String get mihon_filter_exclude => 'Exclude';
  @override
  String get mihon_filter_ascending => 'Ascending';
  @override
  String get mihon_filter_descending => 'Descending';
  @override
  String get mihon_add_to_bookshelf => 'Add to manga shelf';
  @override
  String get mihon_in_bookshelf => 'In manga shelf';
  @override
  String get media_source_local_roots => 'Local scan roots';
  @override
  String scrape_all_confirm({required Object n}) =>
      'Match all ${n} library items by title. Only high-confidence matches are applied automatically — videos are scored on the title together with year, type and other signals, while books and games require a unique exact title. Covers you chose yourself are never overwritten (local images you set, entries you picked in the match dialog, and poster files placed in the folder), and ambiguous results stay pending for manual review.';
  @override
  String get collection_related_title => 'Related works';
  @override
  String get collection_relation_prequel => 'Prequel';
  @override
  String get collection_relation_sequel => 'Sequel';
  @override
  String get collection_relation_side_story => 'Side story';
  @override
  String get collection_relation_movie => 'Movie';
  @override
  String get collection_relation_spin_off => 'Spin-off';
  @override
  String get collection_relation_other => 'Related';
  @override
  String get collection_relation_download => 'Download';
  @override
  String get collection_relation_bind => 'Bind to existing collection';
  @override
  String get collection_episode_rename => 'Rename episodes from scrape';
  @override
  String get collection_episode_rename_title => 'Rename episodes';
  @override
  String get collection_episode_rename_empty => 'Nothing to rename';
  @override
  String get collection_episode_download => 'Download this episode';
  @override
  String get collection_episode_fill_missing => 'Fill missing episodes';
  @override
  String get collection_episode_no_missing => 'No missing episodes';
  @override
  String get collection_split_by_season => 'Split by season';
  @override
  String get collection_split_keep_original => 'Keep the original collection';
  @override
  String get collection_split_confirm => 'Split';
  @override
  String get collection_episode_open_bangumi => 'Open this episode on Bangumi';
  @override
  String collection_relation_bound({required Object name}) =>
      'Bound to ${name}';
  @override
  String collection_episode_rename_apply({required Object n}) =>
      'Rename ${n} episodes';
  @override
  String collection_split_done({required Object n}) =>
      'Split into ${n} collections';
  @override
  String collection_episode_watched_at({required Object position}) =>
      'Watched to ${position}';
  @override
  String collection_episode_bangumi_open_failed({required Object error}) =>
      'Could not resolve the episode on Bangumi: ${error}';
  @override
  String collection_episode_rename_partial(
          {required Object n, required Object m}) =>
      'Renamed ${n} episodes, ${m} failed';
  @override
  String get collection_episode_bangumi_not_found =>
      'Episode not found on Bangumi; opened the subject page instead';
  @override
  String get sync_err_browser_timeout =>
      'The browser never returned the authorization. Retry, and make sure your proxy lets 127.0.0.1 through.';
  @override
  String get manga_rescan_run => 'Box OCR';
  @override
  String get manga_rescan_hint =>
      'Drag a box around the text you want to recognize.';
  @override
  String get manga_rescan_model_missing =>
      'Download the manga OCR models in Settings first.';
  @override
  String get manga_rescan_running => 'Recognizing the selected box...';
  @override
  String get manga_rescan_failed => 'Box OCR failed';
  @override
  String get manga_rescan_empty => 'No text was recognized in this box.';
  @override
  String get manga_rescan_local_source => 'Local OCR';
  @override
  String get manga_rescan_lookup => 'Look up';
  @override
  String get manga_rescan_writeback => 'Save to page';
  @override
  String get manga_rescan_writeback_done => 'Saved to manga.json';
  @override
  String get manga_rescan_writeback_failed => 'Failed to save to manga.json';
  @override
  String get stat_hourly_band_epub => 'Text books';
  @override
  String get stat_hourly_band_pdf => 'PDF';
  @override
  String get stat_hourly_band_manga => 'Manga';
  @override
  String get stat_hourly_band_unattributed => 'Unsplit history';
  @override
  String get stat_hourly_unattributed_note =>
      'Hours recorded before per-format tracking existed have no type stored, so they cannot be split. They are shown as a combined total and are not assigned to any type.';
  @override
  String get book_convert_to_manga_action => 'Convert to manga';
  @override
  String get book_convert_to_book_action => 'Convert back to book';
  @override
  String get book_convert_running => 'Converting…';
  @override
  String get book_convert_done => 'Conversion finished';
  @override
  String get book_convert_failed => 'Conversion failed';
  @override
  String get book_convert_blocked_already =>
      'This book is already in that format.';
  @override
  String get book_convert_blocked_text_only =>
      'This is a text book with no page images. Only scanned image books can become manga.';
  @override
  String get book_convert_blocked_no_original =>
      'This manga was imported from images, so there is no original book to convert back to.';
  @override
  String get book_convert_blocked_source_missing =>
      'The source files are gone from disk.';
  @override
  String manga_online_retry_waiting(
          {required Object attempt, required Object total}) =>
      'Retrying automatically (${attempt}/${total})';
  @override
  String get manga_ocr_wizard_already_ocred =>
      'This volume already has OCR data on every page. Running OCR again would overwrite it.';
  @override
  String get shortcut_scope_universal => '返回·退出';
  @override
  String get game_attach_and_capture => 'Attach and capture';
  @override
  String get remote_delete_failed => 'Could not delete it on the paired device';
  @override
  String get remote_delete_unsupported =>
      'The paired device is too old to support remote deletion. Update Fushi there first.';
  @override
  String get anki_lapis_visual_blocks => 'Custom areas';
  @override
  String get anki_lapis_visual_blocks_hint =>
      'Show existing fields somewhere else on the card. Display only: no Anki field is added or deleted.';
  @override
  String get anki_lapis_visual_block_add => 'Add area';
  @override
  String get anki_lapis_visual_block_delete => 'Delete area';
  @override
  String anki_lapis_visual_block_name({required Object index}) =>
      'Area ${index}';
  @override
  String get anki_lapis_visual_block_anchor => 'Position on the card';
  @override
  String get anki_lapis_visual_block_anchor_top => 'Top of the card';
  @override
  String get anki_lapis_visual_block_anchor_above_sentence => 'Below the word';
  @override
  String get anki_lapis_visual_block_anchor_above_definition =>
      'Below the sentence';
  @override
  String get anki_lapis_visual_block_anchor_below_definition =>
      'Below the definitions';
  @override
  String get anki_lapis_visual_block_anchor_bottom => 'Bottom of the card';
  @override
  String get anki_lapis_visual_block_fields => 'Fields shown here';
  @override
  String get anki_lapis_visual_block_no_fields => 'No fields selected yet';
  @override
  String get anki_lapis_visual_block_needs_note_type =>
      'Pick a note type first to choose fields.';
  @override
  String get anki_lapis_restore_factory => 'Restore factory Lapis';
  @override
  String get anki_lapis_restore_factory_hint =>
      'Overwrite the Lapis note type in Anki with the version bundled in Fushi and clear every customisation here.';
  @override
  String get anki_lapis_restore_factory_confirm =>
      'This overwrites the Lapis styling and card templates in Anki with Fushi\'s bundled version, and resets font size, custom CSS and custom areas. A backup of the current state is saved first. Card data is not touched.';
  @override
  String get anki_lapis_restore_factory_done =>
      'Lapis restored to factory defaults';
  @override
  String anki_lapis_restore_factory_failed({required Object error}) =>
      'Restore failed: ${error}';
  @override
  String get anki_lapis_visual_select_field_hint =>
      'Click any part of the preview, or pick one below. What you pick is what the controls underneath edit.';
  @override
  String get anki_lapis_visual_editing_now => 'Editing';
  @override
  String get mihon_extension_preview => 'Preview';
  @override
  String get mihon_extension_preview_warning =>
      'Previewing runs this extension\'s code before it is installed. Nothing is added to your library until you choose to install.';
  @override
  String get mihon_extension_preview_discard => 'Discard';
  @override
  String get mihon_extension_preview_source_select =>
      'Pick a source to preview';
  @override
  String get mihon_extension_sources_included => 'Included sources';
  @override
  String get mihon_extension_preview_read_only =>
      'Preview is read-only. Install the extension to open and read.';
  @override
  String get selection_copy_empty => 'No text selected.';
  @override
  String get video_library_empty_source_hint => '請從「來源」加入影片資料夾以建立媒體庫';
  @override
  String get video_source_scrape_action => 'Scrape this source';
  @override
  String get video_source_scrape_settings => 'Source scrape settings';
  @override
  String get video_source_scrape_provider => 'Primary metadata source';
  @override
  String get video_source_scrape_provider_inherit => 'Use global default';
  @override
  String get video_source_scrape_auto_after_scan => 'Scrape after scanning';
  @override
  String get video_source_scrape_auto_after_scan_hint =>
      'Run metadata scraping automatically after this source is scanned';
  @override
  String get video_source_scrape_write_nfo => 'Write NFO files';
  @override
  String get video_source_scrape_write_images => 'Write image files';
  @override
  String get video_source_scrape_use_fanart => 'Use Fanart images';
  @override
  String video_source_scrape_progress(
          {required Object phase,
          required Object current,
          required Object total}) =>
      '${phase} · ${current}/${total}';
  @override
  String video_source_scrape_last_summary(
          {required Object status,
          required Object succeeded,
          required Object pending,
          required Object failed}) =>
      'Last scrape (${status}): ${succeeded} succeeded, ${pending} pending, ${failed} failed';
  @override
  String get video_source_scrape_phase_planning => 'Planning';
  @override
  String get video_source_scrape_phase_recognizing => 'Matching';
  @override
  String get video_source_scrape_phase_fetching => 'Fetching metadata';
  @override
  String get video_source_scrape_phase_applying => 'Saving metadata';
  @override
  String get video_source_scrape_phase_writing_sidecars => 'Writing sidecars';
  @override
  String get video_source_scrape_status_interrupted => 'Interrupted';
  @override
  String get video_source_scrape_global_provider => 'Default metadata source';
  @override
  String get video_source_scrape_global_provider_hint =>
      'Used by video sources that inherit the global setting';
  @override
  String get video_source_scrape_fanart_key => 'Fanart API key';
  @override
  String get video_source_scrape_fanart_key_hint =>
      'Optional key used to fill missing artwork from Fanart';
  @override
  String get video_source_scrape_bangumi_token => 'Bangumi access token';
  @override
  String get video_source_scrape_bangumi_token_hint =>
      'Optional access token for the official Bangumi API v0';
  @override
  String get video_source_scrape_douban_endpoint =>
      'Authorized Douban API endpoint';
  @override
  String get video_source_scrape_douban_endpoint_hint =>
      'Douban is unavailable unless both an authorized endpoint and token are configured';
  @override
  String get video_source_scrape_douban_token => 'Authorized Douban API token';
  @override
  String get video_source_scrape_douban_token_hint =>
      'Douban is unavailable unless both an authorized endpoint and token are configured';
  @override
  String get video_source_scrape_locale => 'Metadata language';
  @override
  String get video_source_scrape_locale_hint =>
      'Preferred language for titles, summaries and images';
  @override
  String get video_source_scrape_confirmation_title => 'Confirm metadata match';
  @override
  String get video_source_scrape_confirmation_hint =>
      'Multiple exact matches were found. Choose the correct work to save its provider binding.';
  @override
  String get video_source_scrape_confirmation_skip => 'Skip this work';
  @override
  String get video_source_scrape_nfo_policy => 'NFO write policy';
  @override
  String get video_source_scrape_image_policy => 'Image write policy';
  @override
  String get video_source_scrape_policy_skip => 'Do not write';
  @override
  String get video_source_scrape_policy_missing_only => 'Only when missing';
  @override
  String get video_source_scrape_policy_overwrite => 'Update Fushi files';
  @override
  String get video_source_scrape_external_overwrite =>
      'Allow protected sidecar overwrite';
  @override
  String get video_source_scrape_external_overwrite_hint =>
      'Third-party or user-modified files remain protected until you confirm each manual scrape batch again.';
  @override
  String get video_source_scrape_external_overwrite_confirm_title =>
      'Overwrite protected sidecars?';
  @override
  String get video_source_scrape_external_overwrite_confirm_body =>
      'This batch may replace third-party NFO/images or Fushi files you edited. Media files are not changed. Continue?';
  @override
  String get video_source_scrape_tasks_open => 'Background tasks';
  @override
  String get video_source_scrape_background_started =>
      'Scraping is running in the background';
  @override
  String get video_source_scrape_tasks_current => 'Current task';
  @override
  String get video_source_scrape_tasks_history => 'Recent tasks';
  @override
  String get video_source_scrape_tasks_empty => 'No scrape tasks yet';
  @override
  String get video_source_scrape_waiting_confirmation =>
      'Waiting for your confirmation';
  @override
  String get video_source_scrape_phase_scanning => 'Scanning source';
  @override
  String get video_library_all_videos => 'All videos';
  @override
  String get video_work_voice_roles => 'Voice cast and characters';
  @override
  String get video_work_cast_crew => 'Cast and crew';
  @override
  String get video_work_trailers => 'Trailers';
  @override
  String get video_work_extras => 'Extras';
  @override
  String get video_work_details => 'Details';
  @override
  String get video_work_external_ids => 'External IDs';
  @override
  String get video_work_metadata_pending =>
      'Detailed metadata has not been scraped yet. Retry this source from Sources, then reopen the work.';
  @override
  String get video_work_genres => 'Genres';
  @override
  String get video_work_keywords => 'Keywords';
  @override
  String get video_work_studios => 'Studios';
  @override
  String get video_work_countries => 'Countries';
  @override
  String get video_work_content_rating => 'Content rating';
  @override
  String get video_all_videos_list_view => 'List view';
  @override
  String get video_all_videos_grid_view => 'Grid view';
  @override
  String video_home_continue_episode_number({required Object n}) =>
      'Playing episode ${n}';
  @override
  String video_home_next_episode_number({required Object n}) =>
      'Next · Episode ${n}';
  @override
  String video_home_recent_episode_number({required Object n}) =>
      'Recently added · Episode ${n}';
  @override
  String video_home_remaining_minutes({required Object minutes}) =>
      '${minutes} min remaining';
  @override
  String get video_subtitle_replay => 'Replay this line';
  @override
  String get manga_ocr_done => 'OCR complete';
  @override
  String get settings_destination_manga_summary =>
      'Reader, OCR and online catalog';
  @override
  String get manga_page_animation => 'Page turn animation';
  @override
  String get manga_page_animation_none => 'None';
  @override
  String get manga_page_animation_slide => 'Slide';
  @override
  String get manga_page_animation_fade => 'Fade';
  @override
  String get manga_default_zoom => 'Default zoom';
  @override
  String get manga_zoom_sensitivity => 'Zoom sensitivity';
  @override
  String get manga_volume_key_paging => 'Volume keys turn pages';
  @override
  String get manga_volume_key_paging_subtitle =>
      'Use volume up and down to turn pages in the manga reader';
  @override
  String get manga_tap_zone_paging => 'Tap edges to turn pages';
  @override
  String get manga_tap_zone_paging_subtitle =>
      'Tap the left or right edge of the page to turn';
  @override
  String get manga_section_viewing => 'Viewing and page turning';
  @override
  String get game_capture_setup_title => 'Complete capture setup';
  @override
  String get game_capture_setup_hint =>
      'Choose the dialogue thread first. Fushi can only pair audio with lines from the selected thread.';
  @override
  String get game_audio_requires_thread =>
      'The audio capture source may be ready, but sentence audio does not exist until a thread is selected and a line is received.';
  @override
  String get game_session_waiting_thread => 'Waiting for a dialogue thread';
  @override
  String get anki_connect_use_on_mobile => 'Use AnkiConnect on Android';
  @override
  String get anki_connect_use_on_mobile_hint =>
      'Use only on a trusted network. AnkiConnect uses cleartext HTTP; configure a matching API key, then refresh decks and note types after switching.';
  @override
  String get anki_connect_api_key_hint =>
      'Required for remote AnkiConnect; must match the key configured in the add-on';
  @override
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before enabling the Android backend.';
  @override
  String anki_connect_backend_switch_failed({required Object error}) =>
      'Could not switch Anki backend: ${error}';
  @override
  String get migration_settings_entry => 'Migrate to Fushi';
  @override
  String get migration_settings_entry_subtitle =>
      'Move all data to the new Fushi app';
  @override
  String get migration_intro =>
      'Fushi is the new name of this app. Migration exports all your data in batches to a transfer folder, then Fushi imports and verifies it. Your data here stays untouched until you uninstall this app.';
  @override
  String get migration_target_missing =>
      'Fushi is not installed yet. Install Fushi first, then return here.';
  @override
  String get migration_download_fushi => 'Get Fushi';
  @override
  String get migration_start => 'Start migration';
  @override
  String get migration_open_fushi => 'Open Fushi';
  @override
  String get migration_include_local_audio =>
      'Also export local pronunciation audio (can be large)';
  @override
  String migration_batch_running({required Object batch}) =>
      'Exporting ${batch}…';
  @override
  String migration_batch_done({required Object batch}) => '${batch} exported';
  @override
  String get migration_export_done =>
      'Export complete. Open Fushi to import and verify.';
  @override
  String migration_export_failed({required Object error}) =>
      'Export failed: ${error}';
  @override
  String get migration_readonly_note =>
      'Your data has been exported to Fushi. This app is now read-only: use Fushi for reading and mining. You can re-export at any time if Fushi reports missing data.';
  @override
  String get migration_reexport => 'Re-export';
  @override
  String get migration_batch_core_label => 'Settings, progress & statistics';
  @override
  String get migration_import_entry => 'Import from Hibiki';
  @override
  String get migration_import_entry_subtitle =>
      'Import data exported by the old Hibiki app';
  @override
  String get migration_import_detected =>
      'Hibiki migration data detected. Import it now?';
  @override
  String get migration_import_start => 'Start import';
  @override
  String migration_import_running({required Object batch}) =>
      'Importing ${batch}…';
  @override
  String migration_import_verify_failed(
          {required Object batch, required Object detail}) =>
      '${batch} failed verification and was kept for re-export: ${detail}';
  @override
  String migration_import_counts_failed({required Object detail}) =>
      'Imported data is incomplete: ${detail}. Re-export the missing parts from Hibiki, then import again.';
  @override
  String get migration_import_success => 'Import complete and verified.';
  @override
  String get migration_import_nothing =>
      'No migration data found in the transfer folder.';
  @override
  String get migration_uninstall_prompt =>
      'Migration finished. Uninstall the old Hibiki app?';
  @override
  String get migration_uninstall_button => 'Uninstall Hibiki';
  @override
  String get migration_uninstall_still_installed =>
      'Hibiki is still installed. You can uninstall it any time.';
  @override
  String get migration_import_permission_title => 'Storage permission required';
  @override
  String get migration_import_permission_body =>
      'The transfer folder was created by the old app. Without "All files access", Fushi cannot read it — the data is intact, it just cannot be opened.';
  @override
  String get migration_import_permission_grant => 'Grant permission';
  @override
  String migration_import_verifying(
          {required Object batch,
          required Object done,
          required Object total}) =>
      'Verifying ${batch} (${done}/${total})';
  @override
  String get migration_import_verifying_hint =>
      'Checksumming the archives. Large libraries can take several minutes.';
  @override
  String get game_line_copy_tooltip => 'Copy sentence';
  @override
  String get game_japanese_locale_auto => 'Auto';
  @override
  String get game_japanese_locale_on => 'Always on';
  @override
  String get game_japanese_locale_off => 'Off';
  @override
  String get game_japanese_locale => 'Japanese locale';
  @override
  String get game_japanese_locale_hint =>
      'Chinese/English patched builds must turn this off, or the game crashes on launch';
  @override
  String get video_scrape_diagnostic_export => 'Export scrape diagnostics';
  @override
  String get video_scrape_diagnostic_confirm_title =>
      'Export scrape diagnostics?';
  @override
  String get video_scrape_diagnostic_saved => 'Diagnostic package saved';
  @override
  String video_scrape_diagnostic_failed({required Object reason}) =>
      'Could not export diagnostic package: ${reason}';
  @override
  String get video_scrape_diagnostic_share_subject =>
      'Fushi video scrape diagnostics';
  @override
  String get video_scrape_diagnostic_confirm_body =>
      'The package includes relative file and folder names, scrape summaries, and original NFO contents. It does not add videos, subtitles, images, absolute paths, app configuration, or app credentials. Original NFO files are preserved unchanged and may contain personal information or secrets; review the package before sharing publicly.';
  @override
  String get video_discovery_search_hint => 'Search movies, series, anime';
  @override
  String get video_discovery_hot => 'Popular now';
  @override
  String get video_discovery_seasonal_anime => 'Seasonal anime';
  @override
  String get video_discovery_all_works => 'All titles';
  @override
  String get video_discovery_search_results => 'Search results';
  @override
  String get video_discovery_provider_warning =>
      'Some providers are unavailable. Showing available results.';
  @override
  String get video_discovery_load_failed => 'Could not load discovery results.';
  @override
  String get video_discovery_empty => 'No matching titles.';
  @override
  String get video_discovery_resource_search => 'Search resources';
  @override
  String get video_discovery_subtitle_search => 'Search subtitles';
  @override
  String get video_discovery_subscribe => 'Subscribe';
  @override
  String get video_discovery_subscription_manage => 'Manage subscription';
  @override
  String get video_discovery_pipeline_idle =>
      'Not downloaded → Download → Organize → Subtitles → Scrape → Library';
  @override
  String get video_discovery_details_load_failed =>
      'Could not load title details.';
  @override
  String get video_discovery_sort_popularity => 'Popularity';
  @override
  String get video_discovery_sort_rating => 'Rating';
  @override
  String get video_discovery_sort_release => 'Release date';
  @override
  String get video_discovery_in_library => 'In library';
  @override
  String get video_discovery_play => 'Play';
  @override
  String get download_resources_tab => 'Resources';
  @override
  String get video_external_settings_section =>
      'External resource and subtitle providers';
  @override
  String get video_torznab_settings_title => 'Torznab indexers';
  @override
  String get video_torznab_add => 'Add indexer';
  @override
  String get video_torznab_name => 'Name';
  @override
  String get video_torznab_endpoint => 'Endpoint';
  @override
  String get video_torznab_endpoint_hint =>
      'HTTPS is required except for loopback addresses.';
  @override
  String get video_torznab_api_key => 'API key';
  @override
  String get video_torznab_priority => 'Priority';
  @override
  String get video_torznab_categories => 'Categories';
  @override
  String get video_torznab_categories_hint =>
      'Comma-separated numeric category IDs';
  @override
  String get video_external_enabled => 'Enabled';
  @override
  String get video_external_insecure_http => 'Allow insecure HTTP';
  @override
  String get video_external_insecure_http_hint =>
      'Use only for a trusted local network endpoint.';
  @override
  String get video_external_endpoint_invalid =>
      'Enter a valid endpoint without credentials, query parameters, or fragments.';
  @override
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  @override
  String get video_opensubtitles_user_agent => 'User-Agent';
  @override
  String get video_opensubtitles_languages => 'Preferred languages';
  @override
  String get video_opensubtitles_languages_hint =>
      'Comma-separated language codes, for example zh-CN,en,ja';
  @override
  String get video_download_path_mappings_title => 'qBittorrent path mappings';
  @override
  String get video_download_path_mappings_hint =>
      'Map each qBittorrent remote root to a locally accessible folder.';
  @override
  String get video_download_path_mapping_add => 'Add path mapping';
  @override
  String get video_download_backend_profile_id => 'Backend profile ID';
  @override
  String get video_download_remote_root => 'Remote root';
  @override
  String get video_download_local_root => 'Local root';
  @override
  String get video_download_target_source_title =>
      'Default managed video source';
  @override
  String get video_download_target_source_hint =>
      'New downloads are organized into this local video source.';
  @override
  String get video_download_target_source_none => 'Choose a local video source';
  @override
  String get video_external_remove => 'Remove';
  @override
  String get video_external_username_optional => 'Username (optional)';
  @override
  String get video_external_password_optional => 'Password (optional)';
  @override
  String get video_external_api_key => 'API key';
  @override
  String get video_external_save_error =>
      'The configuration could not be saved. Check the highlighted fields.';
  @override
  String get video_external_categories_invalid =>
      'Categories must be comma-separated numeric IDs.';
  @override
  String get video_download_path_mapping_invalid =>
      'Enter a profile ID, remote root, and absolute local root.';
  @override
  String get video_opensubtitles_endpoint => 'API endpoint';
  @override
  String get video_download_target_source_empty =>
      'No locally accessible video source is available. Add one on the Sources tab first.';
  @override
  String get video_setting_drag_seek_sensitivity => 'Drag-to-seek sensitivity';
  @override
  String get video_setting_drag_seek_sensitivity_hint =>
      'How far one full-width swipe seeks on a touch screen: Low about 45s, Medium about 90s, High about 180s. Independent of the video\'s total length. Touch drag only; mouse and keyboard seeking are unaffected.';
  @override
  String get video_setting_drag_seek_sensitivity_low => 'Low';
  @override
  String get video_setting_drag_seek_sensitivity_medium => 'Medium';
  @override
  String get video_setting_drag_seek_sensitivity_high => 'High';
  @override
  String video_subtitle_read_failed({required Object label}) =>
      'Couldn\'t read this subtitle file (damaged or empty): ${label}';
  @override
  String dict_downloading_size(
          {required Object name,
          required Object done,
          required Object total}) =>
      'Downloading ${name} (${done} / ${total})';
  @override
  String get video_subtitle_attach_book_missing =>
      'This video isn\'t in your library, so the subtitle wasn\'t attached';
  @override
  String get dict_download_hide => 'Run in background';
  @override
  String get dict_download_progress_show => 'View progress';
  @override
  String get dict_download_cancelled => 'Download cancelled.';
  @override
  String get dict_download_import_uncancellable =>
      'Importing cannot be interrupted';
  @override
  String get dict_download_busy => 'A dictionary download is already running.';
  @override
  String get gal_hook_ingame_lookup => 'In-game dictionary lookup';
  @override
  String get gal_hook_ingame_lookup_hint =>
      'Show the dictionary card inside the game window itself (KiriKiri engine, Windows only)';
  @override
  String download_subscription_start_episode({required Object episode}) =>
      '从第 ${episode} 集开始';
  @override
  String get drag_drop_failed =>
      'Couldn\'t handle the dropped files. Please try again.';
  @override
  String get tag_add_failed => 'Couldn\'t add the tag. Please try again.';
  @override
  String get tag_reorder_failed =>
      'Couldn\'t save the new tag order. Please try again.';
  @override
  String get download_task_error_summary_source_missing =>
      'Managed video source is missing or inaccessible';
  @override
  String get download_task_error_summary_backend_unconfirmed =>
      'Torrent could not be confirmed by hash, title, and category';
  @override
  String get download_task_error_summary_subtitle =>
      'Subtitles are unavailable or could not be installed';
  @override
  String get download_task_error_summary_backend_unavailable =>
      'Download backend is unavailable or no longer matches';
  @override
  String get download_task_error_summary_legacy =>
      'Legacy import needs manual attention';
  @override
  String get download_task_error_summary_torrent_info =>
      'Torrent identity is missing or unverifiable';
  @override
  String get download_task_error_summary_generic => 'The task hit an error';
  @override
  String get download_task_error_view_detail => 'View details';
  @override
  String get download_task_error_detail_title => 'Error details';
  @override
  String get download_task_error_copied => 'Error details copied';
  @override
  String get download_task_lifecycle_active => 'In progress';
  @override
  String get download_task_lifecycle_needs_attention => 'Needs attention';
  @override
  String get download_task_location_missing =>
      'The task file location is unavailable.';
  @override
  String get download_task_location_open_failed =>
      'Could not open the file location.';
  @override
  String get download_task_open_location => 'Show in folder';
  @override
  String get download_task_lifecycle_completed => 'Completed';
  @override
  String get download_task_lifecycle_failed => 'Failed';
  @override
  String get download_task_lifecycle_cancelled => 'Cancelled';
  @override
  String get download_task_stage_enqueue => 'Enqueue';
  @override
  String get download_task_stage_download => 'Download';
  @override
  String get download_task_stage_organize => 'Organize';
  @override
  String get download_task_stage_subtitle => 'Subtitles';
  @override
  String get download_task_stage_import => 'Import';
  @override
  String get download_task_stage_scrape => 'Scrape';
  @override
  String get video_discovery_manual_identity_hint =>
      'Enter the title, external ID and year above to enable search';
  @override
  String get collection_split_move_to => 'Move to';
  @override
  String get collection_split_new_group => 'New group';
  @override
  String collection_split_selected({required Object n}) => '${n} selected';
  @override
  String get sync_pair_rate_limited =>
      'Too many attempts. Wait a few minutes and try again.';
  @override
  String get sync_pair_tls_failed =>
      'Certificate check failed. The peer\'s certificate does not match the pinned one.';
  @override
  String get sync_pair_timeout => 'The peer did not respond in time.';
  @override
  String get sync_pair_expired =>
      'Pairing timed out. Start pairing again from this device.';
  @override
  String get sync_pair_upgrade_required =>
      'The other device runs an older version that cannot pair securely from this network. Update it, then pair again.';
  @override
  String get sync_pair_fingerprint_changed_title => 'Certificate changed';
  @override
  String get sync_pair_fingerprint_stored_label => 'Pinned earlier';
  @override
  String get sync_pair_fingerprint_new_label => 'Seen now';
  @override
  String get sync_pair_fingerprint_retrust => 'Clear and trust again';
  @override
  String get sync_pair_fingerprint_changed_body =>
      'This address was pinned to a different certificate before. Continue only if you know the peer reinstalled or reset it — otherwise someone may be intercepting the connection.';
  @override
  String get interconnect_upload_section_footer =>
      'Choose what this device uploads to the connected peer. Independent from the cloud backup switches and off by default. These switches only apply while Enable interconnect is on: turning interconnect off stops every upload here.';
  @override
  String get remote_delete_audiobook_partial =>
      'Book deleted, but its audiobook could not be removed on the paired device';
  @override
  String get collection_episode_scrape => 'Fetch episode details';
  @override
  String collection_episode_scrape_failed({required Object error}) =>
      'Episode scrape failed: ${error}';
  @override
  String collection_episode_scrape_result(
          {required Object updated, required Object skipped}) =>
      'Updated ${updated} episodes, skipped ${skipped}';
  @override
  String get collection_episode_scrape_unbound => 'Scrape the collection first';
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
  String get game_luna_audio_lead_in => 'Complete sentence start';
  @override
  String get game_luna_audio_lead_in_hint =>
      'If the beginning of this sentence is cut off, increase this value.';
  @override
  String get game_luna_audio_per_game_hint =>
      'Saved separately for each attached game.';
  @override
  String get game_luna_audio_preroll => 'Luna audio lead-in';
  @override
  String get game_luna_audio_preroll_hint =>
      'Keep a little audio before each Luna text event to avoid clipping the beginning of the voice.';
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
  String get video_mining_image_quality => 'Video / anime card image quality';
  @override
  String get video_mining_image_quality_hint =>
      'Controls video and anime card images only. Higher settings keep more detail and may use more space.';
  @override
  String get game_line_bulk_text_hint =>
      'Bulk text detected. Character lookup is paused.';
  @override
  String get video_setting_subtitle_language_filter => 'Subtitle language';
  @override
  String get video_setting_subtitle_language_filter_hint =>
      'Filter Chinese and Japanese content inside the selected subtitle track.';
  @override
  String get video_setting_subtitle_language_filter_all => 'All';
  @override
  String get video_setting_subtitle_language_filter_japanese => 'Japanese';
  @override
  String get video_setting_subtitle_language_filter_chinese => 'Chinese';
  @override
  String get download_detail_task_queued =>
      'Queued: waiting for other downloads to free a slot. This task has not been handed to the downloader yet, so there is no live peer or tracker data.';
  @override
  String video_subscription_group_release_count({required Object count}) =>
      '${count} releases';
  @override
  String get download_task_priority => 'Queue priority';
  @override
  String get download_task_priority_high => 'High';
  @override
  String get download_task_priority_normal => 'Normal';
  @override
  String get download_task_priority_low => 'Low';
  @override
  String get library_view_import => 'Import';
  @override
  String get quick_import_title => 'Quick import';
  @override
  String get media_source_section_title => 'Library sources';
  @override
  String get book_import_folder => 'Import folder';
  @override
  String get book_import_folder_as_source => 'Add as library source';
  @override
  String get book_import_folder_as_source_hint =>
      'Keep scanning this folder for new books';
  @override
  String get book_import_folder_once => 'Import once only';
  @override
  String get library_empty_go_import => 'Go to import';
  @override
  String get game_import_drop_hint =>
      'You can also drag .exe files into the game library';
  @override
  String get library_view_sources => 'Sources';
  @override
  String get video_setting_secondary_av_delay => 'Secondary subtitle sync';
  @override
  String get video_setting_secondary_av_delay_hint =>
      'Adjust the secondary subtitle offset independently. It follows the primary offset until set here.';
  @override
  String get video_setting_secondary_delay_follow => 'Follow primary';
  @override
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      'Secondary subtitle sync: ${ms} ms';
  @override
  String get video_subtitle_secondary_delay_follow_osd =>
      'Secondary subtitle sync: follow primary';
  @override
  String get video_setting_subtitle_anchor => 'Main subtitle anchor';
  @override
  String get video_subtitle_anchor_bottom => 'Bottom';
  @override
  String get video_subtitle_anchor_top => 'Top';
  @override
  String get video_setting_subtitle_drag_adjust => 'Drag to adjust position';
  @override
  String get video_subtitle_drag_adjust_hint =>
      'Drag a subtitle up or down to reposition it';
  @override
  String get anki_connect_mobile_disabled_key_cleared =>
      'AnkiConnect needs an API key on mobile, so clearing it turned the switch back off. Anki now goes through the built-in backend again.';
  @override
  String manga_import_batch_hint({required Object n}) =>
      'This folder holds ${n} volume files; each is imported as its own book, named after its file.';
  @override
  String manga_import_batch_done(
          {required Object imported,
          required Object skipped,
          required Object failed}) =>
      'Imported ${imported}, skipped ${skipped}, failed ${failed}.';
  @override
  String get srt_book_reimport => 'Re-import';
  @override
  String get srt_book_reimport_subtitle_hint =>
      'Replacing the subtitle rebuilds the book text from the new cues.';
  @override
  String get srt_book_reimport_no_cues =>
      'No subtitle lines found in that file';
  @override
  String get srt_book_reimport_body_rebuilt =>
      'Book text rebuilt — reopen the book to read it';
  @override
  String get video_setting_torrent_backend_embedded => 'Built-in engine';
  @override
  String get download_backend_unsupported_note =>
      'The built-in engine is not available on this platform. Downloads use external qBittorrent.';
  @override
  String get aidoku_runtime_unavailable =>
      'Aidoku extensions are currently available on macOS only.';
  @override
  String get aidoku_extensions_title => 'Aidoku extensions';
  @override
  String get aidoku_extension_empty => 'No Aidoku extensions installed.';
  @override
  String get aidoku_extension_remove => 'Remove Aidoku extension';
  @override
  String get aidoku_extension_warning =>
      'Aidoku extensions execute third-party WebAssembly code with network access. Only continue with sources you trust.';
  @override
  String get aidoku_webview_unsupported =>
      'This source requires Aidoku WebView APIs that are not supported yet.';
  @override
  String get aidoku_extension_imported => 'Aidoku extension imported';
  @override
  String get aidoku_extension_import => 'Import Aidoku extension (.aix)';
  @override
  String get aidoku_extension_confirm_title => 'Install Aidoku extension?';
  @override
  String get aidoku_extension_version => 'Version';
  @override
  String get aidoku_repository_url => 'Repository URL';
  @override
  String get aidoku_repository_sources => 'Repository sources';
  @override
  String get aidoku_repository_identity_mismatch =>
      'The downloaded package does not match the repository index.';
  @override
  String get aidoku_repository_installed => 'Installed';
  @override
  String get aidoku_repository_search => 'Search repository sources';
  @override
  String get aidoku_repository_install => 'Install';
  @override
  String get aidoku_repository_update => 'Update';
  @override
  String get aidoku_repository_add => 'Add Aidoku repository';
  @override
  String get aidoku_repository_added => 'Aidoku repository added';
  @override
  String get aidoku_repository_browse => 'Browse repository';
  @override
  String get aidoku_repository_hint =>
      'Paste an Aidoku repository homepage or index.min.json URL. The community repository is filled in by default.';
  @override
  String get aidoku_repository_remove => 'Remove repository';
  @override
  String get aidoku_repository_empty => 'No Aidoku repositories added.';
  @override
  String get dict_language_tooltip => 'Content language';
  @override
  String get dict_language_title => 'Dictionary content language';
  @override
  String get dict_language_description =>
      'Decides which font renders this dictionary\'s text. Automatic uses the language the dictionary declares.';
  @override
  String get dict_language_auto => 'Automatic';
  @override
  String get book_language_action => 'Content language';
  @override
  String get book_language_description =>
      'Decides which font renders this book\'s text. Automatic uses the language declared in the EPUB.';
  @override
  String get local_audio_reference_unavailable =>
      'Can\'t reference the original file without all-files access; a copy was imported instead.';
  @override
  String get video_collection_scrape => 'Scrape info & cover';
  @override
  String get update_testflight_open => 'Open TestFlight';
  @override
  String get update_app_store_open => 'Open App Store';
  @override
  String get update_release_page_open => 'Release page';
  @override
  String update_install_gal_hook_holder(
          {required Object pid, required Object path}) =>
      'Galgame capture component in use: PID ${pid} - ${path} (this is the game you are playing, or its capture host). Close the game, then update again.';
  @override
  String get game_hook_reason_protocol_mismatch =>
      'The capture component does not match this Fushi build. It ships inside Fushi, so there is nothing to install separately. First, fully close the game and launch it again: the game process may still hold the component injected by an earlier session. If it still mismatches, the component files on disk are older than Fushi, because the last Fushi update could not replace them while a game was running. Close every game, then run the Fushi installer again.';
  @override
  String get video_mining_still_format => 'Video card screenshot format';
  @override
  String get video_mining_still_format_hint =>
      'Encoding used when the card image is a still screenshot. JPG is much smaller; PNG is lossless but several times larger. Animated covers are unaffected — they follow the animation format setting.';
  @override
  String get mining_still_format_jpg => 'JPG (smaller)';
  @override
  String get mining_still_format_png => 'PNG (lossless)';
  @override
  String get gal_mining_still_format => 'Game card screenshot format';
  @override
  String get gal_mining_still_format_hint =>
      'Same formats as video cards, stored separately. Game window grabs come in as PNG: keeping PNG is lossless but several times larger, while JPG matches how these screenshots were compressed before.';
  @override
  String get manga_source_cloudflare_blocked =>
      'This source is protected by Cloudflare and can\'t be reached by the built-in reader yet.';
  @override
  String get manga_global_search_title => 'Search all sources';
  @override
  String get manga_global_search_hint => 'Search every enabled source';
  @override
  String get manga_global_search_prompt =>
      'Type a title to search every enabled manga source at once.';
  @override
  String get manga_global_search_no_sources =>
      'No enabled manga sources. Install and enable an extension first.';
  @override
  String get anki_connect_addon_install => 'Install AnkiConnect';
  @override
  String get anki_connect_addon_install_hint =>
      'Downloads AnkiConnect from AnkiWeb and hands it to the running Anki. Anki will ask you to confirm, then advise a restart.';
  @override
  String get anki_connect_addon_handed =>
      'Handed AnkiConnect to Anki. Confirm the prompt in Anki, then restart Anki as it advises.';
  @override
  String get anki_connect_addon_anki_not_running =>
      'No running Anki found. Start Anki desktop first, then try again.';
  @override
  String anki_connect_addon_download_failed({required Object error}) =>
      'Could not download AnkiConnect from AnkiWeb: ${error}';
  @override
  String get anki_connect_addon_invalid =>
      'AnkiWeb returned something that is not a usable add-on package.';
  @override
  String anki_connect_addon_launch_failed({required Object error}) =>
      'Could not hand the add-on to Anki: ${error}';
  @override
  String get settings_content_language_title => 'Default content language';
  @override
  String get settings_content_language_unset => 'Not set';
  @override
  String get settings_content_language_description =>
      'Fallback language for content that does not declare one. Per-book, per-video, per-game and per-dictionary settings override this.';
  @override
  String get manga_ocr_lens_language_label => '識別語言';
  @override
  String get dict_user_title => 'User dictionary';
  @override
  String get dict_user_entry_add => 'Add entry';
  @override
  String get dict_user_entry_edit => 'Edit entry';
  @override
  String get dict_user_entry_delete_confirm => 'Delete this entry?';
  @override
  String get dict_user_field_expression => 'Headword';
  @override
  String get dict_user_field_reading => 'Reading';
  @override
  String get dict_user_field_meaning => 'Definition';
  @override
  String get dict_user_empty =>
      'No entries yet. Add one to build your own dictionary.';
  @override
  String get dict_user_expression_required => 'Headword cannot be empty';
  @override
  String get dict_user_rebuild_failed =>
      'Failed to rebuild the user dictionary';
  @override
  String get sync_err_peer_unreachable =>
      'Can\'t reach the paired device - it may be offline or not running Fushi.';
  @override
  String get remote_book_list_failed =>
      'Couldn\'t fetch the remote library from the paired device.';
  @override
  String get video_torznab_settings_hint =>
      'Configure one or more Jackett, Prowlarr, or compatible Torznab endpoints. Secrets are never exported in backups; they may sync to paired devices over Interconnect (can be turned off in Interconnect settings).';
  @override
  String get video_opensubtitles_settings_hint =>
      'API credentials are never exported in backups; they may sync to paired devices over Interconnect (can be turned off in Interconnect settings).';
  @override
  String get sync_interconnect_service_config_toggle =>
      'Sync service configuration from host';
  @override
  String get sync_interconnect_service_config_toggle_desc =>
      'Receive external service settings and API keys (Jimaku, TMDB, Torznab, OpenSubtitles, tracking) from the paired host over the encrypted Interconnect channel. Requires TLS.';
  @override
  String get video_setting_subtitle_backfill =>
      'Auto-fetch subtitles after scraping';
  @override
  String get video_setting_subtitle_backfill_hint =>
      'When a scrape finishes, videos that still have no subtitle get one from your configured online sources. Never replaces an existing subtitle.';
  @override
  String get video_setting_subtitle_sources_section =>
      'Online subtitle sources';
  @override
  String get video_subtitle_no_source_configured =>
      'No subtitle found · set up an online subtitle source';
  @override
  String get anime_download_subs_retrying =>
      'Subtitles: not up yet — will retry automatically';
  @override
  String get video_jimaku_language_follow_video => 'Follow video language';
  @override
  String get video_setting_jimaku_default_language_hint =>
      'Defaults to the video\'s own language (audio track / scraped metadata). Pick one to always prefer that language instead.';
  @override
  String get onboarding_title => 'Getting started';
  @override
  String get onboarding_welcome_headline => 'Welcome!';
  @override
  String get onboarding_feature_anki => 'Anki flashcards';
  @override
  String get onboarding_feature_anki_hint =>
      'Connect AnkiConnect or AnkiDroid to create flashcards';
  @override
  String get onboarding_feature_backup => 'Backup & sync';
  @override
  String get onboarding_feature_backup_hint =>
      'Back up your data to Google Drive, WebDAV and other backends';
  @override
  String get onboarding_feature_interconnect => 'Device interconnect';
  @override
  String get onboarding_feature_interconnect_hint =>
      'Pair devices on your LAN to share libraries and progress';
  @override
  String get onboarding_step_dictionary_action => 'Open dictionary manager';
  @override
  String get onboarding_step_anki_title => 'Set up Anki';
  @override
  String get onboarding_step_anki_body =>
      'Open card creation settings to connect AnkiConnect (desktop) or AnkiDroid (Android) and test the connection.';
  @override
  String get onboarding_step_anki_action => 'Open card creation settings';
  @override
  String get onboarding_step_backup_title => 'Set up backup';
  @override
  String get onboarding_step_backup_body =>
      'Choose a backup backend and sign in, or export a local backup file.';
  @override
  String get onboarding_step_backup_action => 'Open backup settings';
  @override
  String get onboarding_step_interconnect_title => 'Set up interconnect';
  @override
  String get onboarding_step_interconnect_body =>
      'Enable interconnect and pair with other devices on your LAN to share libraries, progress and lookups.';
  @override
  String get onboarding_step_interconnect_action =>
      'Open interconnect settings';
  @override
  String get onboarding_finish_title => 'All set';
  @override
  String get onboarding_finish_body =>
      'You can revisit this guide anytime from Settings → System.';
  @override
  String get onboarding_action_next => 'Next';
  @override
  String get onboarding_action_finish => 'Finish';
  @override
  String get onboarding_action_skip => 'Skip for now';
  @override
  String get onboarding_reopen => 'Getting started guide';
  @override
  String get onboarding_welcome_body =>
      'Set your interface language and theme first — the next steps will walk you through the rest.';
  @override
  String get onboarding_features_title => 'Choose what you use';
  @override
  String get onboarding_features_modules_label =>
      'Library tabs (unchecked ones are hidden from the navigation bar; change anytime in Settings)';
  @override
  String get onboarding_features_setup_label => 'What to set up next';
  @override
  String get onboarding_feature_manga => 'Manga library';
  @override
  String get onboarding_feature_manga_hint => 'Read manga with OCR lookup';
  @override
  String get onboarding_feature_video => 'Video library';
  @override
  String get onboarding_feature_video_hint =>
      'Watch videos with subtitle lookup and mining';
  @override
  String get onboarding_feature_games => 'Galgame library';
  @override
  String get onboarding_feature_games_hint =>
      'Launch galgames with text-hook lookup (Windows only)';
  @override
  String get onboarding_feature_pack =>
      'Recommended pack (dictionaries + audio)';
  @override
  String get onboarding_feature_pack_hint =>
      'One download sets up Japanese dictionaries plus JA/EN pronunciation audio';
  @override
  String get onboarding_step_pack_title => 'Install the recommended pack';
  @override
  String get onboarding_step_pack_body =>
      'The recommended pack bundles Japanese word, pitch-accent and frequency dictionaries plus Japanese/English pronunciation audio databases. Download and import it here; importing replaces local data, so run it on a fresh install. Learning another language? Use the dictionary manager to import your own dictionaries instead.';
  @override
  String get onboarding_step_pack_download_action => 'Download and import';
  @override
  String get onboarding_step_pack_import_existing_action =>
      'Import downloaded pack';
  @override
  String get onboarding_step_pack_pick_action => 'Choose a local pack file';
  @override
  String get onboarding_step_pack_browser_action =>
      'Open in browser (Google Drive)';
  @override
  String get onboarding_pack_downloading =>
      'Downloading… cancel anytime, resumes next time';
  @override
  String onboarding_pack_download_failed({required Object message}) =>
      'Download failed: ${message}';
  @override
  String get onboarding_step_extension_title => 'Browser extension';
  @override
  String get onboarding_step_extension_body =>
      'Install the companion browser extension to look up words on any web page.';
  @override
  String get onboarding_step_extension_action => 'Open extension guide';
  @override
  String get onboarding_step_fonts_title => 'Reading fonts';
  @override
  String get onboarding_step_fonts_body =>
      'Import custom fonts and choose which of UI, book text and dictionary use them.';
  @override
  String get settings_section_modules => 'Feature modules';
  @override
  String get module_manga_label => 'Manga';
  @override
  String get module_video_label => 'Video';
  @override
  String get module_games_label => 'Galgame';
  @override
  String get module_toggle_hint =>
      'Show this library tab in the navigation bar; turn off to hide it';
  @override
  String get video_setting_youtube_quality => 'YouTube quality';
  @override
  String get video_setting_youtube_quality_hint =>
      'Start streams at the highest tier up to this target; Auto prefers smooth playback (hardware-friendly codec, up to 1080p)';
  @override
  String get library_view_discover => 'Discover';
  @override
  String get manga_discovery_section_trending => 'Trending';
  @override
  String get manga_discovery_section_popular => 'Popular';
  @override
  String get manga_discovery_section_top_rated => 'Top rated';
  @override
  String get manga_discovery_section_latest_finished => 'Recently completed';
  @override
  String get manga_discovery_load_failed => 'Couldn\'t load the discover feed.';
  @override
  String get manga_discovery_match_section => 'Read from a source';
  @override
  String get manga_discovery_match_running =>
      'Matching in your enabled sources...';
  @override
  String get manga_discovery_match_none => 'No match found in enabled sources.';
  @override
  String get manga_discovery_status_releasing => 'Ongoing';
  @override
  String get manga_discovery_status_finished => 'Completed';
  @override
  String get manga_discovery_status_hiatus => 'On hiatus';
  @override
  String get manga_discovery_status_cancelled => 'Cancelled';
  @override
  String get manga_discovery_status_not_yet_released => 'Not yet released';
  @override
  String manga_discovery_source_popular({required Object source}) =>
      'Popular on ${source}';
  @override
  String get mihon_extension_error => 'Extension error';
  @override
  String get discovery_all_sources => 'All sources';
  @override
  String get discovery_search_hint => 'Search online resources';
  @override
  String get discovery_enter_query_hint => 'Enter a keyword to search';
  @override
  String get discovery_empty => 'No results';
  @override
  String get discovery_partial_failure => 'Some sources are unavailable';
  @override
  String get discovery_load_more => 'Load more';
  @override
  String get discovery_download_queued => 'Added to downloads';
  @override
  String get discovery_torrent_pushed => 'Torrent task added';
  @override
  String get discovery_torrent_failed => 'Failed to add torrent task';
  @override
  String get discovery_kind_novel => 'Novels';
  @override
  String get discovery_kind_audiobook => 'Audiobooks';
  @override
  String get gal_hook_text_font_family => 'Galgame caption font';
  @override
  String get gal_hook_text_font_family_hint =>
      'Choose an installed Windows font. Default uses Yu Gothic UI.';
  @override
  String get gal_hook_text_bg_opacity => 'Caption window background opacity';
  @override
  String get gal_hook_text_bg_opacity_hint =>
      '0% is fully transparent; 100% is fully opaque. The ◐ button toggles between 0% and your last non-zero value.';
}
