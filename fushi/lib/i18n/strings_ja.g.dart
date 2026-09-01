part of 'strings.g.dart';

// Path: <root>
class _StringsJa extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsJa.build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.ja,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super.build(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <ja>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  @override
  late final _StringsJa _root = this; // ignore: unused_field

  // Translations
  @override
  String get action_exit => '終了';
  @override
  String get action_favorite => 'お気に入り';
  @override
  String activity_days_ago({required Object n}) => '${n}日前';
  @override
  String activity_hours_ago({required Object n}) => '${n}時間前';
  @override
  String get activity_just_now => 'たった今';
  @override
  String activity_minutes_ago({required Object n}) => '${n}分前';
  @override
  String get add_to_collection => 'コレクションに追加';
  @override
  String get anime_download_back => '戻る';
  @override
  String get anime_download_batch => '一括';
  @override
  String get anime_download_category_all => 'すべて';
  @override
  String get anime_download_category_english => '英語翻訳';
  @override
  String get anime_download_category_non_english => '英語以外';
  @override
  String get anime_download_category_raw => '生';
  @override
  String get anime_download_delete => '削除';
  @override
  String anime_download_episode_count({required Object count}) => 'EP ${count}';
  @override
  String get anime_download_generic_download => 'ダウンロード';
  @override
  String get anime_download_generic_hint => 'マグネットリンク';
  @override
  String get anime_download_generic_title => 'リンクを貼り付け（書籍、動画など何でも）';
  @override
  String get anime_download_include_subs => '字幕を含める';
  @override
  String get anime_download_kind_auto => '自動';
  @override
  String get anime_download_kind_book => '書籍';
  @override
  String get anime_download_kind_video => '動画';
  @override
  String get anime_download_magnet_invalid => '無効なマグネットリンク';
  @override
  String get anime_download_no_results => '結果なし';
  @override
  String get anime_download_no_subs => '字幕なし';
  @override
  String get anime_download_no_tasks => 'ダウンロードタスクはまだありません';
  @override
  String get anime_download_nyaa_query => 'Nyaa 検索語';
  @override
  String get anime_download_play_now => 'ダウンロード中に再生';
  @override
  String get anime_download_play_now_fail =>
      'まだ準備できていません（メタデータ取得中または接続失敗）— 後で再試行してください';
  @override
  String get anime_download_play_now_ok =>
      'インポートしました — 動画ライブラリから開いてダウンロード中に再生できます';
  @override
  String get anime_download_push => 'ダウンロードを転送';
  @override
  String get anime_download_push_failed => 'qBittorrent への転送に失敗しました';
  @override
  String get anime_download_pushed => '転送しました — 完了後に自動的にインポートされます';
  @override
  String get anime_download_refresh => '更新';
  @override
  String get anime_download_relocate => '名前変更 / 移動';
  @override
  String anime_download_relocate_engine_failed({required Object reason}) =>
      '失敗しました。変更はありません: ${reason}';
  @override
  String get anime_download_relocate_hint =>
      'Fushi はダウンロードエンジンを通じて名前変更/移動を行うため、シードが中断されません。エクスプローラーでの名前変更は復元できません。';
  @override
  String anime_download_relocate_library_failed({required Object reason}) =>
      'ファイルは移動しましたが、ライブラリはまだ古いパスを参照しています: ${reason}';
  @override
  String get anime_download_relocate_move_title => 'フォルダに移動';
  @override
  String get anime_download_relocate_no_files =>
      'このタスクにはまだ名前を変更するファイルがありません（メタデータ未取得）';
  @override
  String anime_download_relocate_ok({required Object rows}) =>
      '名前変更 / 移動しました。${rows} 件のライブラリ項目を更新しました';
  @override
  String get anime_download_relocate_pick_folder => '移動先フォルダを選択';
  @override
  String get anime_download_relocate_rename_title => 'ファイル名を変更';
  @override
  String get anime_download_retry => '再試行';
  @override
  String get anime_download_search => '検索';
  @override
  String get anime_download_search_error_proxy_hint =>
      'サイトに直接アクセスできない場合、ダウンロード設定でネットワークプロキシを設定してください。';
  @override
  String get anime_download_search_failed =>
      '検索が失敗またはタイムアウトしました。再試行をタップしてください。';
  @override
  String get anime_download_search_hint => 'アニメタイトル';
  @override
  String get anime_download_search_start_hint =>
      '上でタイトルを検索 — torrent と字幕が自動的にマッチングされます。ダウンロードは動画に限りません：書籍、漫画、オーディオブック、ゲームもインポートされます。';
  @override
  String get anime_download_sort_date => '公開日';
  @override
  String get anime_download_sort_seeders => 'シーダー';
  @override
  String get anime_download_sort_size => 'サイズ';
  @override
  String get anime_download_store_unavailable => 'ダウンロードプランストレージが利用できません';
  @override
  String get anime_download_subs_badge => '字幕';
  @override
  String get anime_download_subs_failed => '字幕検索に失敗しました。再試行をタップしてください。';
  @override
  String get anime_download_subs_need_key =>
      '字幕を検索するには、上に Jimaku API キーを入力してください。';
  @override
  String get anime_download_tasks => 'ダウンロードタスク';
  @override
  String get anime_download_title => 'アニメダウンロード';
  @override
  String get anime_download_trusted => '信頼済み';
  @override
  String get anime_download_trusted_only => '信頼済みのみ';
  @override
  String get anki_allow_duplicates => '重複を許可';
  @override
  String get anki_allow_duplicates_hint => 'カード追加時に重複チェックをスキップ';
  @override
  String get anki_card_action_failed => 'カード操作に失敗しました。もう一度お試しください。';
  @override
  String get anki_compact_glossaries => 'コンパクト釈義';
  @override
  String get anki_compact_glossaries_hint => '釈義をコンパクトな形式で表示';
  @override
  String get anki_connect_api_key => 'APIキー';
  @override
  String get anki_connect_host => 'ホスト';
  @override
  String get anki_connect_port => 'ポート';
  @override
  String get anki_create_lapis => 'Lapis デッキを作成';
  @override
  String get anki_create_lapis_exists => 'Lapis ノートタイプとデッキは既に存在します — 選択しました。';
  @override
  String anki_create_lapis_failed({required Object error}) =>
      'Lapis デッキを作成できませんでした：${error}';
  @override
  String get anki_create_lapis_hint =>
      'Lapis ノートタイプと Lapis デッキを Anki に追加し、自動で選択します。';
  @override
  String get anki_create_lapis_success => 'Lapis ノートタイプとデッキを作成しました。';
  @override
  String get anki_deck => 'デッキ';
  @override
  String get anki_duplicate_scope => '重複チェック範囲';
  @override
  String get anki_duplicate_scope_collection => 'コレクション全体';
  @override
  String get anki_duplicate_scope_deck => '選択したデッキ（サブデッキ含む）';
  @override
  String get anki_duplicate_scope_deck_root => 'ルートデッキ（すべてのサブデッキ）';
  @override
  String get anki_duplicate_scope_hint =>
      'カードが既に存在するかチェックする際に検索するデッキの範囲。AnkiConnect のみ。AnkiDroid は常にコレクション全体を検索します。';
  @override
  String get anki_error_collection_unavailable =>
      'AnkiDroid のコレクションが現在利用できません。AnkiDroid を一度開き、同期中でないことと API が有効になっていることを確認してから、再試行してください。';
  @override
  String get anki_error_connection_refused =>
      'Anki に接続できません：接続が拒否されました。Anki デスクトップ版が起動していて、AnkiConnect アドオンがインストールされているか確認してください。';
  @override
  String get anki_error_connection_timeout =>
      'Anki に接続できません：接続がタイムアウトしました。ホスト・ポート・ファイアウォールの設定を確認してください。';
  @override
  String get anki_error_connection_unknown =>
      'Anki に書き出せません：予期しない接続エラーが発生しました。詳細はエラーログを確認してください。';
  @override
  String get anki_error_http =>
      'Anki に書き出せません：AnkiConnect への接続中に HTTP エラーが発生しました。';
  @override
  String get anki_error_permission_denied =>
      'AnkiDroid がカードアクセス権限を許可していません。表示されたシステム権限ダイアログを承認してから、もう一度エクスポートボタンをタップしてください。';
  @override
  String get anki_fetch => 'デッキとノートタイプを更新';
  @override
  String get anki_fetching => '取得中...';
  @override
  String get anki_field_mappings => 'フィールドマッピング';
  @override
  String get anki_field_not_mapped => '未割当';
  @override
  String get anki_mine_to_server => 'ペアリングデバイスに制カード';
  @override
  String get anki_mine_to_server_hint =>
      '制カードをこのデバイスではなく、ペアリングしたホストの Anki（そのデッキと設定）に送信します。互連ペアリングが必要です。';
  @override
  String get anki_mined_action_add_duplicate => '新しいカードとして追加';
  @override
  String get anki_mined_action_overwrite => 'このカードを上書き';
  @override
  String get anki_mined_action_view => '表示 / Anki で開く';
  @override
  String get anki_mined_card_subtitle => '一致するカードの処理方法を選択してください。';
  @override
  String get anki_mined_card_title => 'Anki にカードが既にあります';
  @override
  String anki_mined_multiple_matches({required Object count}) =>
      '${count} 件の一致するカード';
  @override
  String get anki_not_configured => '「更新」をタップして Anki のデッキとノートタイプを読み込んでください。';
  @override
  String get anki_note_open_failed => 'Anki でカードを開けませんでした。';
  @override
  String get anki_note_type => 'ノートタイプ';
  @override
  String get anki_note_viewer_empty => 'このカードには読み取り可能なフィールドがありません。';
  @override
  String get anki_note_viewer_open_in_anki => 'Anki で開く';
  @override
  String get anki_note_viewer_title => '既存のカード';
  @override
  String get anki_open_no_card => 'この単語のカードが Anki に見つかりません。';
  @override
  String get anki_overwrite_scope => '上書きの範囲';
  @override
  String get anki_overwrite_scope_all => '一致するすべてのカード';
  @override
  String get anki_overwrite_scope_hint => '緑色の ✓ が、すでに作成したどのカードを上書きできるか';
  @override
  String get anki_overwrite_scope_latest => '最新の 1 枚のみ';
  @override
  String get anki_refresh_hint =>
      'Anki でデッキやノートタイプを作成・名前変更したら、ここをタップして更新してください。';
  @override
  String anki_select_handlebar({required Object field}) => '${field} の値を選択';
  @override
  String get anki_settings_label => 'Anki 設定';
  @override
  String get anki_tag_default_section => 'デフォルトのタグ';
  @override
  String get anki_tag_include_category => 'ソース分類タグを追加';
  @override
  String get anki_tag_include_category_hint =>
      '書籍には「book」、動画には「video」、ゲームには「game」';
  @override
  String get anki_tag_include_fushi => '「fushi」タグを追加';
  @override
  String get anki_tag_include_fushi_hint => 'Fushi で作成したすべてのカードに目印を付けます';
  @override
  String get anki_tags => 'タグ';
  @override
  String get anki_tags_hint => 'スペース区切りで、すべてのカードに追加されます';
  @override
  String get app_icon_label => 'アプリアイコン';
  @override
  String get app_icon_presets => 'プリセット';
  @override
  String get app_ui_scale => 'UIサイズ';
  @override
  String get app_ui_scale_hint =>
      'Scales app text and spacing. Lower it on large screens if controls feel oversized.';
  @override
  String get app_version => 'アプリのバージョン';
  @override
  String get apply_theme => 'テーマを適用';
  @override
  String get audio_clip_failed =>
      '音声クリップを切り出せませんでした — 音声ソースが見つからないか、読み込めない可能性があります';
  @override
  String get audio_import => '音声をインポート';
  @override
  String get audio_panel_add_audio => '音声を追加';
  @override
  String get audio_panel_auto => '自動';
  @override
  String get audio_panel_pick_new_subtitle => '新しい字幕ファイルを選択';
  @override
  String get audio_source_added => '音声ソースを追加しました';
  @override
  String audio_source_dns_error({required Object host}) =>
      '音声ソース接続失敗："${host}" を解決できません — ネットワークを確認するか、設定でこのソースを削除してください';
  @override
  String get audio_source_edit_target_gone => 'その音声ソースはもう存在しません — 編集は破棄されました';
  @override
  String get audio_source_edit_url => '音声ソースリンクを編集';
  @override
  String audio_source_error({required Object detail}) => '音声ソースエラー：${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi 互連';
  @override
  String get audio_source_loopback_warning =>
      'このデバイスを指しています — マシンを切り替えた後にリポイントしてください';
  @override
  String audio_source_request_error({required Object detail}) =>
      '音声ソースリクエスト失敗：${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      '音声ソースタイムアウト："${host}" — サーバーが応答しません。後で再試行するかソースを変更してください';
  @override
  String get audio_source_updated => '音声ソースを更新しました';
  @override
  String get audio_source_url_invalid =>
      'リンクはhttp(s)で、見出し語または読みのプレースホルダーを含む必要があります';
  @override
  String get audio_unavailable => '音声が見つかりませんでした。';
  @override
  String get audio_volume => '音量';
  @override
  String get audiobook_attached => 'オーディオブックを紐付けました';
  @override
  String get audiobook_audio_missing => '音声ファイルがありません';
  @override
  String get audiobook_background_play => '終了後も再生を続ける';
  @override
  String get audiobook_background_play_hint =>
      'オフのときはリーダーを離れるとオーディオブックの再生が停止します。オンにするとバックグラウンドで再生を続けます。';
  @override
  String get audiobook_export_clip => 'クリップ動画をエクスポート';
  @override
  String get audiobook_export_clip_failed => 'クリップエクスポートに失敗しました';
  @override
  String get audiobook_export_clip_in_progress => 'クリップをエクスポート中…';
  @override
  String get audiobook_export_clip_no_selection =>
      'クリップをエクスポートするにはまずテキストを選択してください';
  @override
  String get audiobook_export_clip_no_text => 'この選択にはレンダリングするテキストがありません';
  @override
  String get audiobook_export_clip_saved => 'クリップを保存しました';
  @override
  String get audiobook_export_clip_unsupported_range =>
      'この選択はエクスポートできません（チャプターまたは音声ファイルをまたいでいます）';
  @override
  String get audiobook_import => 'オーディオブックをインポート';
  @override
  String get audiobook_import_error => 'インポートに失敗しました';
  @override
  String audiobook_import_error_copy_failed({required Object name}) =>
      'ファイルのコピーに失敗しました：${name}';
  @override
  String audiobook_import_error_disk_full({required Object size}) =>
      'ディスク容量が不足しています。必要容量：${size}';
  @override
  String get audiobook_import_success => 'オーディオブックをインポートしました';
  @override
  String get audiobook_load_error => 'オーディオブックの読み込みに失敗しました。';
  @override
  String get audiobook_pick_alignment => 'アラインメントファイルを選択';
  @override
  String get audiobook_reference_original => '元のファイルを参照';
  @override
  String get audiobook_reference_original_desc =>
      '音声をそのままの場所に保持し、元のパスから再生します。ファイルが移動または削除されると本が壊れます。';
  @override
  String get audiobook_relocate => 'ファイルを移動';
  @override
  String get audiobook_relocate_done => '音声を移動しました';
  @override
  String get auto_add_book_name_to_tags => 'タグに本のタイトルを自動追加';
  @override
  String auto_chapter({required Object n}) => '第 ${n} 章';
  @override
  String get auto_read_on_lookup => '検索時に自動で単語を読み上げ';
  @override
  String get auto_search => '自動検索';
  @override
  String get auto_search_debounce_delay => '自動検索のデバウンス遅延';
  @override
  String get auto_select_search_window => '検索ウィンドウを自動選択';
  @override
  String get auto_select_search_window_hint =>
      'インポート時に複数のウィンドウサイズを試し、最も高いヒット率のものを選択';
  @override
  String get av_sync => '音声/テキスト同期';
  @override
  String get av_sync_reset => 'リセット';
  @override
  String get back => '戻る';
  @override
  String get background_color => '背景色';
  @override
  String get background_color_desc => 'リーダーのページ背景';
  @override
  String get backup_category_audiobooks => 'オーディオブックの音声';
  @override
  String get backup_category_audiobooks_desc => 'オーディオブックの音声とアラインメント';
  @override
  String get backup_category_books => '書籍の内容';
  @override
  String get backup_category_books_desc => '書籍ファイル（EPUB と展開済みコンテンツ）';
  @override
  String get backup_category_dictionary => '辞書';
  @override
  String get backup_category_dictionary_desc => 'インポートした辞書とそのファイル';
  @override
  String get backup_category_fonts => 'カスタムフォント';
  @override
  String get backup_category_fonts_desc => 'インポートしたカスタムフォントファイル';
  @override
  String get backup_category_local_audio => 'ローカル音声データベース';
  @override
  String get backup_category_local_audio_desc => 'ローカル発音音声データベース';
  @override
  String get backup_category_profiles => 'プロファイル';
  @override
  String get backup_category_profiles_desc => '設定プロファイル';
  @override
  String get backup_category_progress => '読書進捗';
  @override
  String get backup_category_progress_desc => '読書位置とブックマーク';
  @override
  String get backup_category_settings => '設定';
  @override
  String get backup_category_settings_desc => 'アプリとリーダーの設定';
  @override
  String get backup_category_statistics => '統計';
  @override
  String get backup_category_statistics_desc => '読書、動画、制カードの統計';
  @override
  String get backup_category_videos => '動画';
  @override
  String get backup_category_videos_desc => 'ローカル動画ファイル';
  @override
  String get backup_export => 'バックアップを書き出す';
  @override
  String get backup_export_books_all => 'すべての書籍';
  @override
  String backup_export_books_selected({required Object count}) =>
      '${count} 冊の書籍を選択';
  @override
  String get backup_export_categories_hint =>
      'バックアップに含める項目にチェックを入れてください。書籍のチェックを外すと、それらの書籍のコンテンツと記録も一緒に削除されます。';
  @override
  String get backup_export_categories_title => '書き出す内容を選択';
  @override
  String get backup_export_choose_books => '書籍を選択';
  @override
  String get backup_export_choose_videos => '動画を選択';
  @override
  String backup_export_failed({required Object message}) =>
      'バックアップの書き出しに失敗しました: ${message}';
  @override
  String get backup_export_hint =>
      '含める内容を選べます。データベース（書籍・進捗・統計）は常に含まれます。大きな項目（ローカル音声・動画）のチェックを外すとバックアップを小さくできます。';
  @override
  String get backup_export_no_books => '選択できる書籍がありません';
  @override
  String get backup_export_no_videos => '選択できる動画がありません';
  @override
  String get backup_export_select_all => 'すべて選択';
  @override
  String get backup_export_select_none => '選択解除';
  @override
  String get backup_export_success => 'バックアップを書き出しました';
  @override
  String get backup_export_videos_all => 'すべての動画';
  @override
  String backup_export_videos_selected({required Object count}) =>
      '${count} 本の動画を選択';
  @override
  String get backup_exporting => 'バックアップを作成中…';
  @override
  String get backup_import => 'バックアップを読み込む';
  @override
  String backup_import_confirm({
    required Object date,
    required Object bookCount,
    required Object statsCount,
  }) =>
      '現在のすべてのデータが${date}のバックアップで置き換えられます。\n\n書籍${bookCount}冊、統計${statsCount}件。\n\n復元後にアプリが再起動します。';
  @override
  String get backup_import_confirm_title => 'バックアップを復元しますか？';
  @override
  String get backup_import_contents_hint => 'スキップする項目のチェックを外してください。';
  @override
  String get backup_import_contents_title => 'このバックアップの内容';
  @override
  String backup_import_failed({required Object message}) =>
      'バックアップの読み込みに失敗しました: ${message}';
  @override
  String get backup_import_hint => 'バックアップファイルから復元します。アプリが再起動します。';
  @override
  String get backup_import_invalid => '無効なバックアップファイルです';
  @override
  String backup_import_merge_preview({
    required Object bookCount,
    required Object progressCount,
  }) => 'マージにより ${bookCount} 冊の書籍が追加され、${progressCount} 件の読書位置が更新されます。';
  @override
  String get backup_import_mode_label => 'インポートモード';
  @override
  String get backup_import_mode_merge => '現在のライブラリにマージ';
  @override
  String get backup_import_mode_overwrite => 'ライブラリ全体を上書き';
  @override
  String get backup_import_overlay_title => 'バックアップをインポート中';
  @override
  String get backup_import_overlay_warning => 'データを復元しています。アプリを閉じないでください。';
  @override
  String get backup_import_preserve_sync_note =>
      'このデバイスの同期設定（アカウントと認証情報）は保持されます。';
  @override
  String get backup_import_restart_button => '今すぐ再起動';
  @override
  String get backup_import_settings_off_hint =>
      'このデバイスのフォント・外観・プロファイルを保持し、書籍と読書データのみ復元します。';
  @override
  String get backup_import_settings_on_hint =>
      '完全復元: フォント・外観・プロファイルをバックアップから復元します。';
  @override
  String get backup_import_settings_toggle => '設定とプロファイルをインポート';
  @override
  String get backup_import_success => 'バックアップを復元しました。再起動中…';
  @override
  String get backup_import_validating_hint =>
      'バックアップファイルを確認・プレビューしています。しばらくお待ちください。';
  @override
  String get backup_import_validating_title => 'バックアップを読み込み中…';
  @override
  String backup_schema_newer({required Object version}) =>
      'このバックアップには新しいバージョンのアプリが必要です（スキーマ ${version}）。先にアップデートしてください。';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      '${n} 件のアイテムをコレクションに追加しました。';
  @override
  String batch_delete_confirm({required Object n}) =>
      '${n} 冊の本を削除しますか？この操作は元に戻せません。';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      '${n} 本の動画を削除しますか？この操作は元に戻せません。';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      '${n} 件のメディアを削除し、${m} 件のコレクションを解散しますか？この操作は元に戻せません。';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      '${n} 件のメディアを削除し、${m} 件のコレクションを解散しました。';
  @override
  String batch_delete_success({required Object n}) => '${n} 冊の本を削除しました。';
  @override
  String batch_delete_success_video({required Object n}) => '${n} 本の動画を削除しました。';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      '${m} 件のコレクションを解散しますか？グループ分けが削除されますが、メディアは保持されます。';
  @override
  String batch_dissolve_success({required Object m}) => '${m} 件のコレクションを解散しました。';
  @override
  String get batch_invert_selection => '選択反転';
  @override
  String get batch_select => '選択';
  @override
  String get batch_select_all => 'すべて';
  @override
  String batch_selected_count({required Object n}) => '${n} 件選択中';
  @override
  String get batch_tag_add => '追加';
  @override
  String batch_tag_added({required Object n, required Object name}) =>
      '${n} 冊の本にタグ「${name}」を追加しました。';
  @override
  String batch_tag_added_video({required Object n, required Object name}) =>
      '${n} 本の動画にタグ「${name}」を追加しました。';
  @override
  String get batch_tag_apply => '適用';
  @override
  String get batch_tag_keep => '保持';
  @override
  String get batch_tag_remove => '削除';
  @override
  String batch_tag_removed({required Object n, required Object name}) =>
      '${n} 冊の本からタグ「${name}」を削除しました。';
  @override
  String batch_tag_removed_video({required Object n, required Object name}) =>
      '${n} 本の動画からタグ「${name}」を削除しました。';
  @override
  String get batch_tag_title => 'タグを一括管理';
  @override
  String get book_continue_reading => 'Continue Reading';
  @override
  String get book_css_editor_cancel => 'キャンセル';
  @override
  String get book_css_editor_confirm_reset => 'このファイルのCSSをデフォルトにリセットしますか？';
  @override
  String get book_css_editor_confirm_reset_all =>
      'すべてのファイルのCSSをデフォルトにリセットしますか？';
  @override
  String get book_css_editor_discard => '破棄';
  @override
  String get book_css_editor_edit_css => 'ブックCSSを編集';
  @override
  String get book_css_editor_no_css_files => 'この本にCSSファイルが見つかりません。';
  @override
  String get book_css_editor_no_extract_dir =>
      'ブックディレクトリが見つかりません。CSSを編集するには本を再インポートしてください。';
  @override
  String get book_css_editor_reset_all => 'すべてリセット';
  @override
  String get book_css_editor_reset_current => '現在のリセット';
  @override
  String get book_css_editor_reset_done => 'CSSがリセットされました。';
  @override
  String get book_css_editor_save => '保存';
  @override
  String get book_css_editor_saved => 'CSSを保存しました。';
  @override
  String get book_css_editor_title => 'ブックCSSエディタ';
  @override
  String get book_css_editor_unsaved_changes => '未保存の変更';
  @override
  String get book_css_editor_unsaved_changes_message => '未保存の変更があります。破棄しますか？';
  @override
  String get book_directory_not_found => 'ブックディレクトリが見つかりません。';
  @override
  String get book_edit_author => '著者';
  @override
  String get book_file_not_found => '書籍ファイルが見つかりません';
  @override
  String get book_import_duplicate_cancel => 'いいえ、キャンセル';
  @override
  String get book_import_duplicate_cancelled => 'インポートをキャンセルしました';
  @override
  String get book_import_duplicate_keep => 'はい、接尾辞を付ける';
  @override
  String book_import_duplicate_message({required Object name}) =>
      '「${name}」という書籍は既に存在します。それでもインポートしますか？「はい」で連番の接尾辞を付けてインポート、「いいえ」でキャンセルします。';
  @override
  String get book_import_duplicate_title => '重複した書籍';
  @override
  String get book_mark_completed_action => '読了にする';
  @override
  String get book_mark_uncompleted_action => '未読了にする';
  @override
  String get book_marked_completed => '読了にしました';
  @override
  String get book_marked_uncompleted => '未読了にしました';
  @override
  String get book_mode => 'ブックモード';
  @override
  String book_read_progress({required Object percent}) => '${percent}% 読了';
  @override
  String get book_scrape_cover => '表紙をオンラインで取得';
  @override
  String get book_scrape_empty => '一致する表紙がありません';
  @override
  String get book_scrape_failed => '表紙の取得に失敗しました';
  @override
  String get book_scrape_hint => '書名 / 著者';
  @override
  String get book_scrape_search => '検索';
  @override
  String get book_scrape_search_failed => '検索に失敗しました。検索をタップして再試行してください。';
  @override
  String get book_scrape_title => '表紙をオンラインで検索';
  @override
  String get book_scrape_use => '使用';
  @override
  String get book_search => '書籍内検索';
  @override
  String get book_search_hint => '検索テキストを入力…';
  @override
  String get book_search_no_results => '結果が見つかりません';
  @override
  String book_search_results({required Object n}) => '${n} 件の結果';
  @override
  String get books => '本';
  @override
  String get browser_extension_enable_server_first =>
      'ヒント：先に「Yomitan API サーバー」を有効にし、上で API キーを設定すると、拡張機能が自動で接続設定されます。';
  @override
  String get browser_extension_mobile_unsupported =>
      'モバイルブラウザーではこの拡張機能を読み込めません。代わりにアプリ内のリーダーや動画プレーヤーで辞書引きしてください。';
  @override
  String get browser_extension_page_intro =>
      'デスクトップでは Chrome や Edge の中で直接単語を調べ、字幕を解析し、カードを作成できます。下で拡張機能を準備してからブラウザに読み込んでください。';
  @override
  String get browser_extension_prepare_button => '拡張機能ファイルを準備';
  @override
  String get browser_extension_prepare_hint =>
      '検索サーバーを起動し、拡張機能をローカルに展開します。フォルダパスがクリップボードにコピーされます。';
  @override
  String get browser_extension_reinstall_button => '再準備 / ファイル更新';
  @override
  String get browser_extension_server_off => '検索サーバーオフ';
  @override
  String get browser_extension_server_on => '検索サーバーオン';
  @override
  String get browser_extension_status_connected => '拡張機能接続済み';
  @override
  String get browser_extension_status_never => '拡張機能はまだ検出されていません';
  @override
  String get browser_extension_step_dev_mode =>
      '「デベロッパーモード」をオンにしてください（右上のトグル）。';
  @override
  String get browser_extension_step_done_auto =>
      '完了。拡張機能は Fushi への接続が設定済みです — 手動で入力する必要はありません。';
  @override
  String get browser_extension_step_load_unpacked =>
      '「パッケージ化されていない拡張機能を読み込む」をクリックしてください。';
  @override
  String get browser_extension_step_open_page => 'ブラウザの拡張機能ページを開いてください：';
  @override
  String get browser_extension_step_pick_folder =>
      '下の拡張機能フォルダを選択してください（パスは既にクリップボードにコピーされています）。';
  @override
  String get browser_extension_step_verify => '拡張機能が読み込まれ接続されていることを確認';
  @override
  String get browser_extension_verify_button => '接続を確認';
  @override
  String get browser_extension_verify_checking => '確認中…';
  @override
  String get browser_extension_verify_connected => '拡張機能が検出され、接続されています。';
  @override
  String get browser_extension_verify_not_detected =>
      '拡張機能がまだ検出されていません。ブラウザで読み込みと有効化がされていることを確認してから、もう一度チェックしてください。';
  @override
  String get browser_extension_version_app => 'アプリ同梱版';
  @override
  String get browser_extension_version_browser => 'ブラウザに読み込み済み';
  @override
  String get browser_extension_version_label => '拡張機能バージョン';
  @override
  String get browser_extension_version_mismatch =>
      'ブラウザに読み込まれた拡張機能が古くなっています。必要に応じて拡張機能を再度準備してから、ブラウザの拡張機能ページ（chrome://extensions）から再読み込みしてください。';
  @override
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      'ポート ${port} が別のプロセス（通常はブラウザが起動した yomitan-api コンポーネント — Python プロセス）で使用されています。そのプロセスを終了するか、Yomitan の詳細設定で Yomitan API を無効にしてから、Fushi で Yomitan API サーバーを再度有効にしてください。';
  @override
  String get cancel => 'キャンセル';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      'カードカバーが静止画にフォールバックしました（アニメーションクリップ利用不可）: ${reason}';
  @override
  String get card_duplicate => '重複カード — エクスポートされませんでした。';
  @override
  String get card_export_failed => 'カードのエクスポートに失敗しました。';
  @override
  String card_export_failed_detail({required Object reason}) =>
      'カードの書き出しに失敗しました：${reason}';
  @override
  String get card_export_not_configured =>
      'Ankiが未設定です。Anki設定を開いて「取得」をタップしてください。';
  @override
  String card_exported({required Object deck}) => 'カードを『${deck}』にエクスポートしました。';
  @override
  String card_exported_audio_failed({required Object reason}) =>
      'カードを書き出しましたが、音声のダウンロードに失敗しました（${reason}）。';
  @override
  String get card_mined_no_sentence_captured =>
      'カードを作成しましたが、文がキャプチャされませんでした（単語を再選択するか、このテキストには認識可能な文がありません）。';
  @override
  String get card_mined_unmapped_sentence_audio_field =>
      '文の音声付きでカードを作成しましたが、Anki のノートタイプにマッピングされたフィールドがありません。{sentence-audio} にフィールドをマッピングしてください。';
  @override
  String get card_mined_unmapped_sentence_field =>
      'カードを作成しましたが、Anki のノートタイプに文にマッピングされたフィールドがありません。設定 → 「Lapis デッキ作成」を使用するか、{sentence} にフィールドをマッピングしてください。';
  @override
  String get card_mined_without_sentence_audio =>
      'カードを作成しましたが、今回の選択範囲では例文の音声が見つかりませんでした。';
  @override
  String get card_mining_pending => 'カードを追加中…';
  @override
  String card_overwritten({required Object deck}) => '『${deck}』のカードを上書きしました。';
  @override
  String get change_source => 'ソースを変更';
  @override
  String get changelog_empty => '変更履歴が見つかりません。ネットワークまたはプロキシ設定を確認してください。';
  @override
  String get changelog_open_releases => 'リリースページを開く';
  @override
  String get changelog_prerelease => 'プレリリース';
  @override
  String chapter_progress({
    required Object idx,
    required Object total,
    required Object suffix,
    required Object pct,
  }) => 'チャプター ${idx} / ${total}${suffix} · ${pct}%';
  @override
  String get clear => 'クリア';
  @override
  String get clear_dictionary_description => '履歴内のすべての辞書検索結果が消去されます。よろしいですか？';
  @override
  String get clear_dictionary_title => '辞書の検索履歴を消去';
  @override
  String get lookup_block_capture => '画面キャプチャをブロック';
  @override
  String get lookup_block_capture_hint =>
      '検索ポップアップとクリップボードポップアップウィンドウをスクリーンショット、画面録画、ライブ配信から除外します（Windows）。オフにすると、スクリーンショットや録画・配信でポップアップがキャプチャされるようになります。';
  @override
  String get collapse_dictionaries => '辞書を折りたたむ';
  @override
  String get collection_bookmark => 'ブックマーク';
  @override
  String get collection_clear_confirm => '選択したコレクションを完全に削除しますか？元に戻せません。';
  @override
  String get collection_clear_scope => 'クリア範囲';
  @override
  String get collection_collapse => '折りたたみ';
  @override
  String collection_continue_progress({required Object n}) => '続き · EP ${n}';
  @override
  String get collection_empty => 'コレクションは空です';
  @override
  String get collection_expand => '展開';
  @override
  String get collection_export_all_books => 'すべての書籍';
  @override
  String get collection_export_all_mined => 'すべての抽出した文';
  @override
  String get collection_export_all_words => 'すべてのお気に入り単語';
  @override
  String get collection_export_dedupe => '文で重複排除';
  @override
  String get collection_export_failed => 'エクスポートに失敗しました';
  @override
  String get collection_export_favorites_scope => 'お気に入りの文';
  @override
  String get collection_export_format => '形式';
  @override
  String get collection_export_mined_title => 'Mined Sentences';
  @override
  String get collection_export_no_items => 'エクスポートするものがありません';
  @override
  String get collection_export_pick_book => '書籍を選択';
  @override
  String get collection_export_save => 'Save Export';
  @override
  String get collection_export_saved => 'エクスポートを保存しました';
  @override
  String get collection_export_scope => 'エクスポート範囲';
  @override
  String get collection_export_sentences_title => 'Favorite Sentences';
  @override
  String get collection_export_words_title => 'Favorite Words';
  @override
  String get collection_loading_hint => 'コレクションを読み込み中、音声ファイルをマッチング中…';
  @override
  String get collection_member_removed => 'コレクションから削除しました';
  @override
  String get collection_merge_title => 'コレクションをマージ';
  @override
  String get collection_merged => 'コレクションをマージしました。';
  @override
  String get collection_mined => 'カード作成した文';
  @override
  String get collection_open => '開く';
  @override
  String get collection_play => '再生';
  @override
  String get collection_remove_member => 'コレクションから削除';
  @override
  String get collection_remove_member_confirm =>
      'このアイテムをコレクションから削除しますか？アイテム自体は保持されます。';
  @override
  String get collection_sentence => '文';
  @override
  String get collection_sort_by_imported => 'インポート日順';
  @override
  String get collection_sort_by_title => '名前順';
  @override
  String get collection_view_all => 'すべて表示';
  @override
  String collection_watched_progress({
    required Object done,
    required Object total,
  }) => '${done}/${total} 視聴済み';
  @override
  String get collection_word => '単語';
  @override
  String get collections => 'コレクション';
  @override
  String get color_container => 'コンテナ';
  @override
  String get color_container_desc => 'スイッチトラック、再生バー背景';
  @override
  String get color_link => 'リンクの色';
  @override
  String get color_link_desc => 'リーダーのハイパーリンク色';
  @override
  String get color_primary => 'プライマリ';
  @override
  String get color_primary_desc => '音声ハイライト、ボタン、スイッチ';
  @override
  String get color_sentence_audio_highlight => '音声ハイライト';
  @override
  String get color_sentence_audio_highlight_desc => 'オーディオブック字幕同期ハイライト';
  @override
  String get color_secondary => 'セカンダリ';
  @override
  String get color_secondary_desc => '辞書エントリ、本棚バッジ';
  @override
  String get color_tertiary => 'ターシャリ';
  @override
  String get color_tertiary_desc => 'コレクション、読書統計';
  @override
  String get columns_per_page => 'ページあたりの列数';
  @override
  String get combine_into_series => 'シリーズに統合';
  @override
  String get copied => 'コピーしました';
  @override
  String get copied_to_clipboard => 'クリップボードにコピーしました。';
  @override
  String get copy => 'コピー';
  @override
  String get copy_error => 'エラーをコピー';
  @override
  String get crash_dump_empty => 'クラッシュダンプはありません';
  @override
  String crash_dump_label({required Object n}) => 'クラッシュダンプ (${n})';
  @override
  String get crash_dump_open_folder => 'ダンプフォルダを開く';
  @override
  String get crash_dump_privacy_notice =>
      'クラッシュダンプファイル（.dmp）にはプロセスメモリのスナップショットが含まれ、あなたが読んでいたテキスト、引いた単語、その他のアプリ内データが含まれる場合があります。信頼できる開発者にのみ共有してください。';
  @override
  String get crash_dump_share => 'ダンプを共有';
  @override
  String get crash_dump_share_subject => 'Fushi クラッシュダンプ';
  @override
  String get create_series => 'シリーズを作成';
  @override
  String get creator_action_add_to_stash => '一時保存に追加';
  @override
  String get creator_action_copy_to_clipboard => 'クリップボードにコピー';
  @override
  String get creator_action_play_audio => '音声再生';
  @override
  String get creator_action_share => '共有';
  @override
  String get creator_enhancement_audio_recorder => '録音';
  @override
  String get creator_enhancement_camera => 'カメラ';
  @override
  String get creator_enhancement_clear_field => 'フィールドクリア';
  @override
  String get creator_enhancement_crop_image => '画像切り抜き';
  @override
  String get creator_enhancement_local_audio => 'ローカル音声';
  @override
  String get creator_enhancement_open_stash => '一時保存を開く';
  @override
  String get creator_enhancement_pick_audio => '音声選択';
  @override
  String get creator_enhancement_pick_image => '画像選択';
  @override
  String get creator_enhancement_pop_from_stash => '一時保存から取出';
  @override
  String get creator_enhancement_save_tags => 'タグ保存';
  @override
  String get creator_enhancement_search_dictionary => '辞書検索';
  @override
  String get creator_enhancement_sentence_picker => '文選択';
  @override
  String get creator_enhancement_text_segmentation => 'テキスト分割';
  @override
  String get creator_export_card => 'カードを作成';
  @override
  String get creator_field_audio => '単語音声';
  @override
  String get creator_field_audio_sentence => '例文音声';
  @override
  String get creator_field_cloze_after => '穴埋め後';
  @override
  String get creator_field_cloze_before => '穴埋め前';
  @override
  String get creator_field_cloze_inside => '穴埋め中';
  @override
  String get creator_field_collapsed_meaning => '折りたたみ意味';
  @override
  String get creator_field_context => 'コンテキスト';
  @override
  String get creator_field_cue_sentence => '字幕例文';
  @override
  String get creator_field_expanded_meaning => '展開意味';
  @override
  String get creator_field_frequency => '頻度';
  @override
  String get creator_field_furigana => '振り仮名';
  @override
  String get creator_field_hidden_meaning => '隠し意味';
  @override
  String get creator_field_image => '画像';
  @override
  String get creator_field_meaning => '意味';
  @override
  String get creator_field_notes => 'メモ';
  @override
  String get creator_field_pitch_accent => 'アクセント';
  @override
  String get creator_field_reading => '読み';
  @override
  String get creator_field_sentence => '例文';
  @override
  String get creator_field_tags => 'タグ';
  @override
  String get creator_field_term => '見出し語';
  @override
  String get custom_dict_css => 'カスタム CSS';
  @override
  String get custom_dict_css_global => 'グローバル（全辞書）';
  @override
  String get custom_fonts => 'カスタムフォント';
  @override
  String get custom_fonts_add_system => 'システムフォントを追加';
  @override
  String get custom_fonts_archive_error => 'アーカイブの展開に失敗しました';
  @override
  String get custom_fonts_catalog_title => 'フォントライブラリ';
  @override
  String get custom_fonts_download_failed => 'ダウンロード失敗';
  @override
  String get custom_fonts_downloading => 'ダウンロード中…';
  @override
  String get custom_fonts_drag_hint => 'ドラッグしてフォントの優先順位を変更';
  @override
  String get custom_fonts_empty => 'カスタムフォントがありません';
  @override
  String get custom_fonts_font_roles => 'フォントの役割';
  @override
  String get custom_fonts_import_file => 'フォントファイルをインポート';
  @override
  String get custom_fonts_import_url => 'URLからインポート';
  @override
  String custom_fonts_imported_count({required Object count}) =>
      '${count} 個のフォントをインポートしました';
  @override
  String get custom_fonts_manage => 'フォント管理';
  @override
  String get custom_fonts_no_fonts_in_archive => 'アーカイブにフォントファイルが見つかりません';
  @override
  String get custom_fonts_recommended => 'おすすめフォント';
  @override
  String get custom_fonts_removed => 'フォントを削除しました';
  @override
  String get custom_fonts_search_hint => 'フォントを検索';
  @override
  String get custom_theme => 'カスタムテーマ';
  @override
  String custom_theme_default_name({required Object n}) => 'カスタム ${n}';
  @override
  String get custom_theme_long_press_hint => 'タップで切り替え · 長押しで編集';
  @override
  String get custom_theme_name => '名前';
  @override
  String get dark_mode => 'ダークモード';
  @override
  String get dark_mode_dark => 'ダーク';
  @override
  String get dark_mode_light => 'ライト';
  @override
  String get dark_mode_system => 'システム';
  @override
  String data_root_unavailable_message({required Object path}) =>
      '設定されたデータ保存場所 ${path} に一時的にアクセスできません（ドライブがスリープ中、ビジー中、または未接続の可能性があります）。データはそこに安全に保持されています。ドライブが準備できたら再試行をタップしてデータを読み込むか、今はデフォルトの場所で起動してください（既存のデータは変更されません）。';
  @override
  String get data_root_unavailable_title => 'データ保存場所が応答しません';
  @override
  String get data_root_use_default_button => 'デフォルトの場所で起動';
  @override
  String get data_storage_change_button => '場所を変更';
  @override
  String get data_storage_change_confirm_body =>
      'Fushi はすべてのデータを新しいフォルダに移動してから再起動します。移動中はアプリを閉じないでください。';
  @override
  String get data_storage_change_confirm_title => 'データ保存場所を変更しますか？';
  @override
  String get data_storage_location_default => 'デフォルトの場所';
  @override
  String get data_storage_location_hint =>
      'Fushi がライブラリ、オーディオブック、データベースを保存する場所。デスクトップのみ。';
  @override
  String get data_storage_location_title => 'データ保存場所';
  @override
  String data_storage_migrate_failed({required Object message}) =>
      'データを移動できませんでした: ${message}';
  @override
  String get data_storage_migrate_failed_restart => '再起動';
  @override
  String get data_storage_migrate_failed_suggestions =>
      '別の空のフォルダで再試行してください。アプリのインストールフォルダを選択しないでください。また、その場所にあるファイルが使用中でないことを確認してください。';
  @override
  String get data_storage_migrate_failed_title => 'データ移行に失敗しました';
  @override
  String data_storage_migrate_overlay_progress({
    required Object copied,
    required Object total,
  }) => 'ファイルをコピー中: ${copied} / ${total}';
  @override
  String get data_storage_migrate_overlay_title => 'データを移動中';
  @override
  String get data_storage_migrate_overlay_warning =>
      'アプリを開いたままにしてください。完了するまでアプリを閉じたりコンピュータをシャットダウンしないでください。';
  @override
  String get data_storage_migrate_success => 'データを移動しました。再起動中…';
  @override
  String get data_storage_migrating => 'データを移動中…';
  @override
  String get data_storage_reject_install_dir =>
      'そのフォルダはアプリのインストール場所のため、データを保存できません。別の空のフォルダを選択してください。';
  @override
  String get data_storage_restart_failed =>
      'データを移動しましたが、自動再起動に失敗しました。手動で Fushi を再度開いてください。';
  @override
  String db_downgrade_message({
    required Object dbVersion,
    required Object appVersion,
  }) =>
      'このデータベースは新しいバージョンの Fushi（スキーマ v${dbVersion}）で作成されています。現在のアプリ（v${appVersion}）は古すぎます。データ保護のため、開くのを中止しました。アプリを更新してから再試行してください。';
  @override
  String get db_downgrade_title => 'Fushi を更新してください';
  @override
  String get db_unrecoverable_message =>
      '自動修復後もデータベースを開けませんでした。おそらく破損しています。設定からバックアップを復元するか、アプリデータをクリアして最初からやり直すことができます。';
  @override
  String get db_unrecoverable_title => 'データベースが破損しています';
  @override
  String get debug_log_share_subject => 'Fushi デバッグログ';
  @override
  String debug_log_title({required Object count}) => 'デバッグログ (${count})';
  @override
  String get debug_log_toggle => 'デバッグログを有効にする';
  @override
  String get decrease => '減少';
  @override
  String get deduplicate_pitch_accents => 'アクセント重複除外';
  @override
  String get delete_collection => 'コレクションを削除';
  @override
  String get delete_collection_also_books => '中の書籍も削除';
  @override
  String get delete_collection_also_videos => '動画も削除（元の動画ファイルは保持されます）';
  @override
  String get delete_custom_theme => 'テーマを削除';
  @override
  String get delete_custom_theme_confirm => 'このカスタムテーマを削除しますか？元に戻せません。';
  @override
  String get delete_in_progress => '削除中';
  @override
  String get delete_prompt_delete_selected => '選択した項目を削除';
  @override
  String get delete_prompt_message => 'これらのアイテムは別のデバイスで削除されました。ここでも削除しますか？';
  @override
  String get delete_prompt_select_all => 'すべて選択';
  @override
  String get delete_prompt_title => '別のデバイスで削除済み';
  @override
  String get delete_scope_keep_local_desc => '他のデバイスはそのコピーを保持します';
  @override
  String get delete_scope_sync_everywhere => 'すべてのデバイスから削除';
  @override
  String get delete_scope_sync_everywhere_desc => '他のデバイスは次回の同期で削除を確認します';
  @override
  String get design_system_auto => '自動';
  @override
  String get design_system_hint => 'アプリの外観スタイルを切り替えます';
  @override
  String get design_system_label => 'デザインシステム';
  @override
  String get dialog_add => '追加';
  @override
  String get dialog_append => '追加';
  @override
  String get dialog_cancel => 'キャンセル';
  @override
  String get dialog_clear => 'クリア';
  @override
  String get dialog_clear_all_dictionaries => '全辞書を削除';
  @override
  String get dialog_close => '閉じる';
  @override
  String get dialog_connect => '接続';
  @override
  String get dialog_content_dictionary_clear =>
      '辞書データベースを消去すると、履歴内のすべての検索結果も消去されます。';
  @override
  String get dialog_content_dictionary_delete =>
      '単一辞書の削除は、辞書データベース全体の消去より時間がかかる場合があります。履歴内のすべての検索結果も消去されます。';
  @override
  String get dialog_create => '作成';
  @override
  String get dialog_crop => '切り抜き';
  @override
  String get dialog_delete => '削除';
  @override
  String get dialog_done => '完了';
  @override
  String get dialog_edit => '編集';
  @override
  String get dialog_edit_info => '情報を編集';
  @override
  String get dialog_exit => '終了';
  @override
  String get dialog_export => 'エクスポート';
  @override
  String get dialog_import => 'インポート';
  @override
  String get dialog_import_dictionary => '辞書をインポート';
  @override
  String get dialog_import_folder => 'フォルダ辞書をインポート';
  @override
  String get dialog_importing => 'インポート中…';
  @override
  String get dialog_launch_ankidroid => 'ANKIDROIDを起動';
  @override
  String get dialog_ok => 'OK';
  @override
  String get dialog_play => '再生';
  @override
  String get dialog_read => '読む';
  @override
  String get dialog_record => '録音';
  @override
  String get dialog_replace => '置き換え';
  @override
  String get dialog_save => '保存';
  @override
  String get dialog_search => '検索';
  @override
  String get dialog_select => '選択';
  @override
  String get dialog_share => '共有';
  @override
  String get dialog_stash => 'スタッシュ';
  @override
  String get dialog_stop => '停止';
  @override
  String get dialog_title_dictionary_clear => '全辞書を消去しますか？';
  @override
  String dialog_title_dictionary_delete({required Object name}) =>
      '『${name}』を削除しますか？';
  @override
  String get dict_auto_update => '自動更新';
  @override
  String get dict_auto_update_hint => '起動時に辞書の更新を確認';
  @override
  String dict_auto_update_last({required Object time}) => '前回の確認成功: ${time}';
  @override
  String get dict_auto_update_never => 'なし';
  @override
  String get dict_category_frequency => '頻度';
  @override
  String get dict_category_grammar => '文法';
  @override
  String get dict_category_ja_en => '日英';
  @override
  String get dict_category_ja_ja => '日日';
  @override
  String get dict_category_ja_other => 'その他の日本語';
  @override
  String get dict_category_kanji => '漢字';
  @override
  String get dict_category_names => '名前';
  @override
  String get dict_category_supplementary => '補助';
  @override
  String get dict_download_browse => '辞書をダウンロード';
  @override
  String dict_download_button({required Object count}) => 'ダウンロード (${count})';
  @override
  String get dict_download_complete => 'ダウンロード完了。';
  @override
  String dict_download_failed({required Object error}) =>
      'ダウンロードに失敗しました：${error}';
  @override
  String get dict_download_installed => 'インストール済み';
  @override
  String get dict_download_language => 'あなたの言語';
  @override
  String dict_download_partial({
    required Object success,
    required Object total,
    required Object error,
  }) => '${success} / ${total} 成功。失敗: ${error}';
  @override
  String get dict_download_select_title => '辞書を選択';
  @override
  String dict_downloading({required Object name}) => '${name} をダウンロード中…';
  @override
  String dict_import_failed_summary({required Object n}) =>
      '${n}件の辞書のインポートに失敗しました';
  @override
  String get dict_import_started => '辞書をバックグラウンドでインポート中…';
  @override
  String dict_import_success_summary({required Object n}) =>
      '辞書を ${n} 件インポートしました';
  @override
  String get dict_update_check => '更新を確認';
  @override
  String get dict_update_checking => '更新を確認中…';
  @override
  String dict_update_done({required Object name}) => '${name} を更新しました。';
  @override
  String dict_update_failed({required Object error}) => '更新に失敗しました：${error}';
  @override
  String get dict_update_interval_daily => '毎日';
  @override
  String get dict_update_interval_monthly => '毎月';
  @override
  String get dict_update_interval_weekly => '毎週';
  @override
  String get dict_update_latest => 'すでに最新です。';
  @override
  String dict_update_name_mismatch_body({
    required Object incoming,
    required Object existing,
  }) => '選択したファイルは「${incoming}」ですが、更新対象は「${existing}」です。置き換えますか？';
  @override
  String get dict_update_name_mismatch_title => '名前が一致しません';
  @override
  String get dict_update_none => 'すべての辞書は最新です。';
  @override
  String dict_update_summary({
    required Object updated,
    required Object current,
    required Object failed,
  }) => '${updated} 件を更新、${current} 件は最新、${failed} 件が失敗しました。';
  @override
  String get dict_update_tooltip => '辞書を更新';
  @override
  String dict_update_updating({required Object name}) => '${name} を更新中…';
  @override
  String get dictionaries => '辞書';
  @override
  String get dictionaries_delete_failed => '辞書の削除に失敗しました';
  @override
  String get dictionaries_deleting_data => '辞書データを削除中...';
  @override
  String get dictionaries_menu_empty => '辞書をインポートしてください';
  @override
  String get dictionary_delete_failed => '辞書の削除に失敗しました';
  @override
  String get dictionary_font_size => '辞書のフォントサイズ';
  @override
  String get dictionary_font_size_zoom_hint =>
      'Ctrl + スクロールホイールでポップアップの内容を拡大縮小';
  @override
  String get dictionary_section_frequency => '頻度辞書';
  @override
  String get dictionary_section_kanji => '漢字辞書';
  @override
  String get dictionary_section_pitch => 'ピッチ辞書';
  @override
  String get dictionary_section_term => '用語辞書';
  @override
  String get dictionary_settings => '辞書設定';
  @override
  String get dictionary_type_frequency => '頻度';
  @override
  String get dictionary_type_pitch => 'ピッチ';
  @override
  String get dictionary_type_term => '用語';
  @override
  String get dictionary_unrecognized_format => '辞書形式を認識できません';
  @override
  String get dismiss_swipe_sensitivity => 'スワイプで閉じる感度';
  @override
  String get display_settings => '組版設定';
  @override
  String get download_backend_not_configured => 'ダウンロードバックエンドがまだ設定されていません。';
  @override
  String get download_clear_finished => '完了済みをクリア';
  @override
  String get download_detail_backend_offline =>
      '元のダウンロードバックエンドがオフラインです。保存されたタスク情報が表示されています。ライブパラメータは利用できません。';
  @override
  String get download_open_settings => '設定を開く';
  @override
  String get download_save_root_change => 'フォルダを変更';
  @override
  String get download_save_root_create_failed =>
      'そのフォルダを作成できません。ドライブと権限を確認してください。';
  @override
  String get download_save_root_fallback_warning =>
      '設定されたダウンロードフォルダが利用できないため、デフォルトフォルダが使用されています。';
  @override
  String get download_save_root_hint =>
      '新しいダウンロードはここに保存されます。既存のタスクは元のフォルダを保持します。';
  @override
  String get download_save_root_not_absolute => '絶対パスのフォルダパスを選択してください。';
  @override
  String get download_save_root_not_writable => 'そのフォルダに書き込みできません。';
  @override
  String get download_save_root_reset => 'デフォルトに戻す';
  @override
  String get download_save_root_title => 'ダウンロードフォルダ';
  @override
  String get download_settings => 'ダウンロード設定';
  @override
  String get download_status_cancelled => 'キャンセル済み';
  @override
  String get download_status_queued => 'キュー待ち';
  @override
  String download_subscription_after_episode({required Object episode}) =>
      '第${episode}話以降';
  @override
  String get download_subscription_check_all => 'すべてチェック';
  @override
  String get download_subscription_check_now => '今すぐチェック';
  @override
  String download_subscription_choice_hint({
    required Object group,
    required Object resolution,
  }) => '${group} · ${resolution} をフォロー。新しい単話リリースは自動でキューに追加されます。';
  @override
  String get download_subscription_created => 'ダウンロードをキューに追加し、サブスクリプションを作成しました';
  @override
  String get download_subscription_delete => '購読を削除';
  @override
  String download_subscription_delete_confirm({required Object title}) =>
      '「${title}」の購読を削除しますか？ダウンロード済みのタスクは保持されます。';
  @override
  String get download_subscription_download_and_create => 'ダウンロードして購読';
  @override
  String get download_subscription_empty_body =>
      '発見ページで単話リリースを選び、「ダウンロードして購読」を使ってください。';
  @override
  String get download_subscription_empty_title => 'サブスクリプションはまだありません';
  @override
  String download_subscription_last_checked({required Object time}) =>
      '最終チェック: ${time}';
  @override
  String download_subscription_latest_episode({required Object episode}) =>
      '最新キュー: 第${episode}話';
  @override
  String get download_subscription_never_checked => '未チェック';
  @override
  String get download_subscription_running_hint =>
      'Fushi はアプリ起動中、有効なサブスクリプションを15分ごとにチェックします。';
  @override
  String get download_subscription_unavailable_hint =>
      '購読するには、リリースグループが識別可能な単話リリースを選んでください。';
  @override
  String get download_subscriptions_tab => 'サブスクリプション';
  @override
  String download_task_action_failed({required Object error}) =>
      'タスクの操作に失敗しました: ${error}';
  @override
  String get download_task_delete => 'タスクを削除';
  @override
  String download_task_delete_confirm({required Object title}) =>
      '${title} のダウンロードタスクを削除しますか？';
  @override
  String get download_task_delete_files => 'ダウンロード済みファイルも削除';
  @override
  String get download_task_details => '詳細を表示';
  @override
  String get download_tasks_tab => 'タスク';
  @override
  String get download_test_connection => '接続テスト';
  @override
  String get download_test_connection_failed => '接続に失敗しました。アドレスと認証情報を確認してください。';
  @override
  String download_test_connection_ok({required Object version}) =>
      '接続済み (バージョン: ${version})';
  @override
  String get drag_drop_need_card_target => '字幕または音声を書籍か動画の上にドロップしてください';
  @override
  String get drag_drop_unsupported_on_books =>
      '書籍ファイルをここにドロップしてください。動画や辞書のファイルは、それぞれのページに切り替えてください。';
  @override
  String get drag_drop_unsupported_on_dictionary =>
      '.zip、.dsl、.mdx の辞書ファイルをここにドロップしてください。CSS ファイルは辞書パッケージと一緒のときのみ有効です。';
  @override
  String get drag_drop_unsupported_on_video =>
      '動画、プレイリスト、字幕をここにドロップしてください。書籍や辞書のファイルは、それぞれのページに切り替えてください。';
  @override
  String get edit_custom_theme => 'カスタムテーマを編集';
  @override
  String get eink_mode => 'E-Ink モード';
  @override
  String get eink_mode_hint =>
      'アニメーションなし・線スタイルのハイライトによる純粋な白黒テーマ。電子ペーパーディスプレイ向け';
  @override
  String get enable_swipe_to_close => 'スワイプでポップアップを閉じる';
  @override
  String get epub_delete_error => '本の削除に失敗しました';
  @override
  String get epub_delete_title => '本を削除';
  @override
  String get epub_parse_fallback => 'データベースから書籍情報を復元しました';
  @override
  String get error_ankidroid_api => 'AnkiDroidエラー';
  @override
  String get error_ankidroid_api_content =>
      'AnkiDroidとの通信中に問題が発生しました。\n\n続行するには、AnkiDroidのバックグラウンドサービスが有効であること、および必要なアプリの権限がすべて付与されていることを確認してください。';
  @override
  String get error_copied => 'エラーをクリップボードにコピーしました';
  @override
  String get error_load_failed => '読み込み中にエラーが発生しました';
  @override
  String get error_log_diagnostics_section => '診断 / フォレンジック（アプリエラーではありません）';
  @override
  String get error_log_empty => 'エラーログなし';
  @override
  String error_log_label({required Object n}) => 'エラーログ (${n})';
  @override
  String get error_log_previous_run => '過去のログ（前回起動前）';
  @override
  String get error_log_share_subject => 'Fushi エラーログ';
  @override
  String get extension_popup_independent_size => 'ブラウザ拡張用の個別サイズ';
  @override
  String get extension_popup_independent_size_hint =>
      'ブラウザ拡張の検索ポップアップに、アプリ内ポップアップとは別の最大サイズを設定します';
  @override
  String get extension_popup_max_height => '拡張ポップアップの最大高さ';
  @override
  String get extension_popup_max_width => '拡張ポップアップの最大幅';
  @override
  String get external_window_capture_failed => 'ウィンドウキャプチャに失敗しました';
  @override
  String get external_window_current_game => '現在のゲーム';
  @override
  String get external_window_mining => '外部ウィンドウマイニング';
  @override
  String get external_window_no_windows => 'キャプチャ可能なウィンドウが見つかりません';
  @override
  String get external_window_none => 'ウィンドウ未選択（タップして選択）';
  @override
  String get external_window_refresh => 'ウィンドウリストを更新';
  @override
  String get external_window_select => '対象ウィンドウを選択';
  @override
  String get external_window_unbind => 'ウィンドウの紐付けを解除';
  @override
  String get external_window_unsupported => '外部ウィンドウマイニングは Windows 専用です';
  @override
  String get failed_online_service => 'オンラインサービスとの通信に失敗しました';
  @override
  String get favorite_added => 'お気に入りに追加しました';
  @override
  String get favorite_removed => 'お気に入りから削除しました';
  @override
  String favorites({required Object n}) => 'お気に入り (${n})';
  @override
  String field_fallback_used({
    required Object field,
    required Object secondField,
  }) => '${field} フィールドは ${secondField} をフォールバック検索語として使用しました。';
  @override
  String file_count({required Object count}) => '${count} ファイル';
  @override
  String get floating_dict_close => '閉じる';
  @override
  String get floating_dict_title => '辞書';
  @override
  String get floating_lyric_bg_opacity => 'フローティング字幕の背景の不透明度';
  @override
  String get floating_lyric_button_bg_opacity => 'フローティング字幕ボタンの背景の不透明度';
  @override
  String get floating_lyric_click_lookup => 'フローティング字幕をタップして辞書引き';
  @override
  String get floating_lyric_click_lookup_hint =>
      '位置を固定したままでも辞書引きを使いたい場合はオンにしてください。';
  @override
  String get floating_lyric_close => '閉じる';
  @override
  String get floating_lyric_context_lines => 'フローティング字幕の前後行数';
  @override
  String get floating_lyric_context_lines_hint =>
      '0 は現在の行のみ表示（1行、変更なし）。1〜3 に設定すると前後にその行数を表示します';
  @override
  String get floating_lyric_corner_radius => 'フローティング字幕の角丸';
  @override
  String get floating_lyric_corner_radius_hint =>
      '0 は各プラットフォームのデフォルト角丸を使用。値を上げるとバーやボタンがより丸くなります';
  @override
  String get floating_lyric_font_size => 'フローティング字幕の文字サイズ';
  @override
  String get floating_lyric_hint => '他のアプリの上に現在の文を表示します。';
  @override
  String get floating_lyric_lock => 'ロック';
  @override
  String get floating_lyric_next => '次へ';
  @override
  String get floating_lyric_no_audio => 'この書籍には聴ける音声がありません';
  @override
  String get floating_lyric_permission_hint => 'フローティング歌詞を表示するにはオーバーレイ権限が必要です。';
  @override
  String get floating_lyric_permission_hint_coloros =>
      'システムがオーバーレイ権限を拒否し続ける場合：ファイルマネージャーから APK を一度再インストールするか、開発者オプションで権限監視をオフにしてから再試行してください。';
  @override
  String get floating_lyric_play_pause => '再生';
  @override
  String get floating_lyric_previous => '前へ';
  @override
  String get floating_lyric_text_opacity => 'フローティング字幕の文字の不透明度';
  @override
  String get floating_lyric_toggle_action => 'フローティング字幕';
  @override
  String get floating_lyric_unavailable_hint => 'フローティング字幕ウィンドウを表示できませんでした。';
  @override
  String get floating_lyric_unlock => 'ロック解除';
  @override
  String get floating_lyric_width => 'フローティング字幕の幅';
  @override
  String get floating_lyric_width_hint =>
      '0 はプラットフォームのデフォルト幅を使用。値を設定するとバーが固定幅になります';
  @override
  String get focus_navigation_enabled => 'キーボード／ゲームパッドでのフォーカス移動';
  @override
  String get focus_navigation_enabled_hint =>
      '矢印キーやゲームパッドでフォーカスを移動し、フォーカスリングを表示します。';
  @override
  String get folder_picker_permission_required => 'フォルダを参照するにはストレージ権限が必要です';
  @override
  String get follow_audio_off_tooltip => '音声追従：OFF';
  @override
  String get follow_audio_on_tooltip => '音声追従：ON';
  @override
  String get font_color => '文字色';
  @override
  String get font_color_desc => 'リーダーのテキスト色';
  @override
  String get font_desc_hina_mincho => 'やわらかい装飾明朝 · Noto Sans JP との併用推奨';
  @override
  String get font_desc_klee_one => '手書き教科書体 · 読みやすい · Noto Sans JP との併用推奨';
  @override
  String get font_desc_mplus_rounded_1c =>
      '丸ゴシック · ライトノベルに最適 · Noto Sans JP との併用推奨';
  @override
  String get font_desc_noto_sans_jp => 'Google/Adobe ゴシック · 日本語字形優先 · 可変ウェイト';
  @override
  String get font_desc_noto_sans_sc =>
      'Google/Adobe ゴシック · 簡体中国語優先 · 日本語フォントの代替に';
  @override
  String get font_desc_noto_sans_tc => 'Google/Adobe ゴシック · 繁体中国語優先';
  @override
  String get font_desc_noto_serif_jp => 'Google/Adobe 明朝 · 日本語字形優先 · 縦書きに最適';
  @override
  String get font_desc_noto_serif_sc =>
      'Google/Adobe 明朝 · 簡体中国語優先 · 日本語フォントの代替に';
  @override
  String get font_desc_noto_serif_tc => 'Google/Adobe セリフ体 · 繁体字優先 · 縦書き読書に最適';
  @override
  String get font_desc_shippori_mincho =>
      '上品な明朝体 · 文学作品に最適 · Noto Sans JP との併用推奨';
  @override
  String get font_desc_zen_kaku_gothic_new =>
      'モダン角ゴシック · 一般的な読書向け · Noto Sans JP との併用推奨';
  @override
  String get font_desc_zen_maru_gothic => '丸みのあるゴシック · Noto Sans JP との併用推奨';
  @override
  String get font_desc_zen_old_mincho =>
      'レトロ明朝体 · 古典的な文体 · Noto Sans JP との併用推奨';
  @override
  String get font_source_file => 'ファイル';
  @override
  String get font_source_system => 'システム';
  @override
  String get font_target_app_ui => 'システム UI フォント';
  @override
  String get font_target_body => '本文フォント';
  @override
  String get font_target_dictionary => '辞書フォント';
  @override
  String get font_target_video_subtitle => 'Video Subtitle Font';
  @override
  String get gal_hook_text_font_size => 'ギャルゲーキャプションのフォントサイズ';
  @override
  String get gal_hook_text_font_size_hint =>
      'オーバーレイの角をドラッグしてウィンドウサイズを変更。キャプションのサイズはここで設定します。';
  @override
  String get game_add => 'ゲームを追加';
  @override
  String get game_already_added => 'このゲームはすでにライブラリにあります';
  @override
  String get game_audio_backend_engine => 'エンジン PCM';
  @override
  String get game_audio_backend_loopback => 'システムループバック（ミックス）';
  @override
  String get game_audio_backend_none => '音声ソースなし';
  @override
  String get game_audio_backend_resource => 'ゲームリソース音声';
  @override
  String get game_audio_duration => '音声の長さ';
  @override
  String get game_audio_fallback_disabled_missing =>
      '未找到与该句匹配的游戏资源音频；已关闭降级，未制卡';
  @override
  String get game_audio_resource_id => '音频资源 ID';
  @override
  String get game_audio_tracks => 'アクティブな音声トラック';
  @override
  String get game_auto_cover => '封面を自動取得';
  @override
  String get game_back_to_capture => 'キャプチャワークスペースに戻る';
  @override
  String get game_back_to_library => 'ゲームライブラリに戻る';
  @override
  String get game_capture_active => 'キャプチャ中';
  @override
  String get game_capture_degraded_loopback =>
      'ゲームは実行中ですが、エンジンインジェクションに失敗しました。システム音声にフォールバックしており、BGM や効果音が混在する場合があります。';
  @override
  String get game_capture_description =>
      'ゲームを起動または接続し、テキスト・音声・スクリーンショット・Anki 出力を監視します。';
  @override
  String get game_capture_empty_body =>
      'ゲームを起動またはバインドすると、テキストと音声の状態がここに表示されます。';
  @override
  String get game_capture_empty_title => 'まだテキストを受信していません';
  @override
  String get game_capture_launch_failed => 'ゲームの起動またはキャプチャに失敗しました';
  @override
  String get game_capture_launching => 'ゲームを起動してキャプチャを開始中...';
  @override
  String get game_capture_running => 'キャプチャセッション実行中';
  @override
  String get game_capture_window_missing =>
      'ゲームプロセスは開始しましたが、ウィンドウが表示されませんでした。ゲームが起動していない可能性があります。もう一度起動してみてください。';
  @override
  String get game_capture_workbench => 'キャプチャワークスペース';
  @override
  String get game_captured_lines => 'キャプチャ済みの行';
  @override
  String get game_card_mapping_missing => 'Anki フィールドマッピングにゲームカードトークンがありません';
  @override
  String get game_card_sentence_audio_missing =>
      '文音声なしでカードが作成されました。他の行の音声は代用されていません。';
  @override
  String get game_clear_events => 'イベントをクリア';
  @override
  String get game_cover_not_found => 'ゲームフォルダや実行ファイルから使用可能なカバーが見つかりませんでした';
  @override
  String get game_cover_searching => 'カバーを検索中...';
  @override
  String get game_cover_updated => 'カバーを更新しました';
  @override
  String get game_dashboard => 'ホーム';
  @override
  String get game_detail_missing => 'このゲームはライブラリにありません';
  @override
  String get game_detail_tab_edit => '編集';
  @override
  String get game_detail_tab_stats => '統計';
  @override
  String get game_detail_tab_summary => '概要';
  @override
  String get game_diagnostics => '互換性診断';
  @override
  String get game_diagnostics_subtitle => 'セッションステージ、エンドポイント、音声トラック、構造化イベント';
  @override
  String game_drop_imported({required Object count}) => '${count} 件のゲームを追加しました';
  @override
  String get game_drop_no_exe => 'ドロップされたファイルに新しいゲーム .exe がありません';
  @override
  String get game_edit_developer => '開発元';
  @override
  String get game_edit_display_name => '表示名';
  @override
  String get game_edit_exe_path => '実行ファイルのパス';
  @override
  String get game_edit_invalid_date => '発売日は YYYY-MM-DD 形式で入力してください';
  @override
  String get game_edit_launch_args => '起動引数';
  @override
  String get game_edit_launch_args_hint => 'ゲーム起動時に渡す引数（例: -windowed）';
  @override
  String get game_edit_nsfw => '成人向けタイトル';
  @override
  String get game_edit_release_date => '発売日 (YYYY-MM-DD)';
  @override
  String get game_edit_save => '保存';
  @override
  String get game_edit_saved => '保存しました';
  @override
  String get game_edit_summary => '説明';
  @override
  String get game_edit_tags => 'タグ（カンマ区切り）';
  @override
  String get game_edit_user_rating => 'マイ評価 (0-10)';
  @override
  String get game_edit_user_review => 'マイレビュー';
  @override
  String get game_edit_workdir => '作業ディレクトリ';
  @override
  String get game_empty => 'まだゲームが追加されていません';
  @override
  String get game_endpoint_phase_connected => '接続済み';
  @override
  String get game_endpoint_phase_connecting => '接続中';
  @override
  String get game_endpoint_phase_retrying => '再試行中';
  @override
  String get game_endpoint_phase_stopped => '停止';
  @override
  String get game_endpoints_engine_active =>
      'テキストはエンジンフックから提供されています。これらのエンドポイントは任意です';
  @override
  String get game_endpoints_hint =>
      '外部テキストツール（Textractor / LunaTranslator 等）用のポート。使用しない場合は無視してください';
  @override
  String get game_event_all => 'すべてのイベント';
  @override
  String get game_event_warnings => '警告とエラー';
  @override
  String get game_exe_missing => 'ゲームの実行ファイルが見つかりません';
  @override
  String get game_filter => 'フィルター';
  @override
  String get game_filter_all => 'すべて';
  @override
  String get game_filter_favorited => 'お気に入り';
  @override
  String get game_filter_hide_nsfw => '成人向けタイトルを非表示';
  @override
  String get game_filter_local_only => 'ローカルファイルあり';
  @override
  String get game_filter_metadata_only => 'メタデータのみ';
  @override
  String get game_filter_mined => 'マイニング済み';
  @override
  String get game_filter_reset => 'フィルターをクリア';
  @override
  String get game_filter_source => '利用状況';
  @override
  String get game_filter_status => 'プレイ状況';
  @override
  String get game_filter_tags => 'タグ';
  @override
  String get game_filter_with_audio => '音声あり';
  @override
  String get game_focus_continue => '続行';
  @override
  String get game_follow_live => 'リアルタイム追跡';
  @override
  String get game_health => 'ヘルスステータス';
  @override
  String get game_health_anki => 'Anki 出力';
  @override
  String get game_health_audio => '音声ソース';
  @override
  String get game_health_helper => 'フックヘルパー';
  @override
  String get game_health_process => 'ゲームプロセス';
  @override
  String get game_health_text => 'テキストソース';
  @override
  String get game_health_upscaling => 'ウィンドウアップスケーリング';
  @override
  String get game_health_window => 'ゲームウィンドウ';
  @override
  String get game_helper_download => 'ダウンロード';
  @override
  String game_helper_download_failed({required Object error}) =>
      'エンジンコンポーネントのダウンロードに失敗しました: ${error}';
  @override
  String get game_helper_downloading => 'エンジンコンポーネントをダウンロード中…';
  @override
  String get game_helper_install_incomplete =>
      'エンジンコンポーネントのインストールが不完全です。再試行してください';
  @override
  String game_helper_needed_body({required Object size}) =>
      'ギャルゲーの起動にはエンジンフックインジェクターコンポーネント（約 ${size}）が必要です。プロセスインジェクションコードを含むため、ウイルス対策ソフトの誤検知を避けるためアプリとは別に配布されています。今すぐダウンロードしますか？';
  @override
  String get game_helper_needed_title => 'ギャルゲーエンジンコンポーネントが必要です';
  @override
  String get game_helper_size_unknown => 'サイズ不明';
  @override
  String get game_helper_verification_failed =>
      'エンジンコンポーネントがブロックされました: チェックサムを検証できませんでした（GitHub の .sha256 ファイルにアクセスできない、存在しない、または一致しません）。Fushi は未検証のインジェクターコードのインストールを拒否します。';
  @override
  String get game_home_subtitle => 'ゲームライブラリとキャプチャ監視';
  @override
  String get game_hook_fallback_all_audio_sources_failed =>
      'エンジン音声フックもシステムループバックも開始できませんでした。音声をキャプチャできません。';
  @override
  String get game_hook_fallback_engine_attach_failed =>
      '実行中のゲームへのエンジン音声フックの接続に失敗しました。代わりにシステムミックスを使用しています。';
  @override
  String get game_hook_fallback_engine_pcm_unavailable =>
      'エンジン音声フックはインストール済みですが、ゲームがまだ音声を再生していません。最初の音声が到着するまでシステムミックスを使用し、自動で切り替わります。';
  @override
  String get game_hook_fallback_launch_injection_failed =>
      'ゲームは実行中ですが、初期エンジンインジェクションに失敗しました。代わりにシステムミックスを使用しています。';
  @override
  String get game_hook_fallback_window_not_found =>
      '音声キャプチャは実行中ですが、ゲームウィンドウがまだ表示されていないため、スクリーンショットは利用できません。ウィンドウが表示されると自動的にバインドされます。';
  @override
  String get game_hook_line_unavailable => 'このキャプチャ行はもう利用できません。';
  @override
  String get game_hook_reason_access_denied =>
      'ゲームがより高い権限で実行されています。Fushi を管理者として起動してから再試行してください。';
  @override
  String get game_hook_reason_bitness_mismatch =>
      'ヘルパーのアーキテクチャがゲームと一致しません（32ビット vs 64ビット）。ヘルパーを再インストールしてください。';
  @override
  String get game_hook_reason_create_process_failed =>
      'Fushi からゲームを起動できませんでした。実行ファイルのパスを確認してください。';
  @override
  String get game_hook_reason_elevation_required =>
      'このゲームには管理者権限が必要です。Fushi を管理者として起動してから再度起動してください。';
  @override
  String get game_hook_reason_game_exe_missing => '保存されたパスにゲームの実行ファイルが存在しません。';
  @override
  String get game_hook_reason_guarded_hook_failed =>
      'プロファイルで保護されたフックを時間内にインストールできませんでした。自動で再試行中です。';
  @override
  String get game_hook_reason_handshake_timeout =>
      'ゲームはフックされましたが、テキストや音声が時間内に出力されませんでした。このエンジンはまだサポートされていない可能性があります。';
  @override
  String get game_hook_reason_helper_missing =>
      'このゲームアーキテクチャ用の音声フックヘルパーがインストールされていません。インストールしてから再試行してください。';
  @override
  String get game_hook_reason_hook_dll_missing =>
      'ヘルパーパッケージが不完全です（フックライブラリが不足）。再インストールしてください。';
  @override
  String get game_hook_reason_injection_failed =>
      'ゲームへのインジェクションがブロックされました。Fushi とゲームをウイルス対策ソフトの除外リストに追加してください。';
  @override
  String get game_hook_reason_ready_timeout =>
      'フックライブラリの読み込みが時間内に完了しませんでした。ウイルス対策ソフトのスキャンが原因の可能性があります。';
  @override
  String get game_hook_reason_resume_failed =>
      '起動したゲームを再開できず、停止しました。もう一度起動してください。';
  @override
  String get game_hook_reason_shared_memory_unavailable =>
      'キャプチャチャネルを開けませんでした。Fushi を再起動してください。';
  @override
  String get game_hook_reason_spawn_failed =>
      'ヘルパーを起動できませんでした。ウイルス対策ソフトがヘルパーを削除またはブロックしていないか確認してください。';
  @override
  String get game_hook_reason_resident_hook_mismatch =>
      '前回のキャプチャセッションがまだゲームに残っています。ゲームを一度再起動してください。';
  @override
  String get game_hook_reason_steam_timeout =>
      'Steam が起動リクエストを受け付けましたが、ゲームプロセスが表示されませんでした。';
  @override
  String get game_hook_reason_target_missing =>
      'キャプチャ対象のゲームプロセスまたは実行ファイルが選択されていません。';
  @override
  String get game_hook_recapture_empty => '再キャプチャウィンドウで音声がキャプチャされませんでした';
  @override
  String get game_hook_recapture_saved => '再キャプチャした音声をこの行に保存しました';
  @override
  String get game_hook_recapture_started => '録音中 — ゲームでこの行を再生してください';
  @override
  String get game_hook_recapture_unavailable => '音声の再キャプチャにはシステムループバック音声が必要です';
  @override
  String get game_kpi_total_games => 'ゲーム数';
  @override
  String get game_kpi_week => '今週';
  @override
  String get game_latest_line => '最新の行';
  @override
  String get game_launch => '起動';
  @override
  String get game_launch_and_capture => '起動してキャプチャ';
  @override
  String get game_launch_unsupported => 'ゲームの起動は Windows でのみサポートされています';
  @override
  String get game_library => 'ゲームライブラリ';
  @override
  String get game_line_audio_encoded => '音声抽出済み';
  @override
  String get game_line_audio_fallback => 'フォールバック';
  @override
  String get game_line_audio_matched => '音声準備完了';
  @override
  String get game_line_audio_missing => '音声なし';
  @override
  String get game_line_audio_pending => 'マッチング中';
  @override
  String get game_line_audio_unavailable => 'テキストのみ';
  @override
  String get game_line_favorite_tooltip => 'この行をお気に入りに追加';
  @override
  String get game_line_mined => 'マイニング済み';
  @override
  String get game_line_preview_failed => 'この行の再生可能な音声がありません';
  @override
  String get game_line_preview_tooltip => 'この行の音声を再生';
  @override
  String get game_line_track_applied => '音声トラックをこの行に適用しました';
  @override
  String get game_line_track_dialog_title => 'この行の音声トラック';
  @override
  String get game_line_track_failed => 'そのトラックにはこの行付近の音声がありません';
  @override
  String get game_line_track_tooltip => 'この行の音声トラックを選択';
  @override
  String get game_line_unfavorite_tooltip => 'お気に入りから削除';
  @override
  String get game_live_lines => 'ライブ行';
  @override
  String get game_manage_tracks => '音声トラックを管理';
  @override
  String get game_meta_added => '追加日';
  @override
  String get game_meta_ranking => 'ランキング';
  @override
  String get game_meta_source => 'データソース';
  @override
  String get game_never_played => '未プレイ';
  @override
  String get game_no_active_line => '行を選択すると、文音声の状態が表示されます。';
  @override
  String get game_no_events => 'まだセッションイベントがありません';
  @override
  String get game_no_match => '現在のフィルターに一致するゲームはありません';
  @override
  String get game_no_tracks => 'まだ音声トラックデータがありません';
  @override
  String get game_open_capture_workspace => 'キャプチャワークスペースを開く';
  @override
  String get game_phase_attaching => '接続中';
  @override
  String get game_phase_degraded => '劣化';
  @override
  String get game_phase_error => 'エラー';
  @override
  String get game_phase_idle => 'アイドル';
  @override
  String get game_phase_injecting => 'インジェクション中';
  @override
  String get game_phase_launching => '起動中';
  @override
  String get game_phase_resolving => '解決中';
  @override
  String get game_phase_running => '実行中';
  @override
  String get game_phase_stopping => '停止中';
  @override
  String get game_phase_waiting_signals => 'シグナル待機中';
  @override
  String get game_pipeline => 'セッションパイプライン';
  @override
  String get game_play_status => 'プレイ状況';
  @override
  String get game_random_reroll => 'シャッフル';
  @override
  String get game_random_title => 'おまかせ';
  @override
  String get game_recently_played => '最近プレイ';
  @override
  String get game_refresh_tracks => 'トラックを更新';
  @override
  String get game_remove => '削除';
  @override
  String get game_rename => '名前を変更';
  @override
  String get game_rename_label => 'ゲーム名';
  @override
  String get game_scrape => 'メタデータを取得';
  @override
  String get game_scrape_applied => 'メタデータを更新しました';
  @override
  String get game_scrape_failed => 'メタデータの取得に失敗しました';
  @override
  String get game_scrape_no_result => '一致するエントリが見つかりませんでした';
  @override
  String get game_scrape_query => 'タイトルまたはソース ID';
  @override
  String get game_search => 'ゲームを検索';
  @override
  String get game_session_events => 'セッションイベント';
  @override
  String get game_session_idle => 'キャプチャは開始されていません';
  @override
  String get game_session_listening => 'リスニング中';
  @override
  String get game_set_cover => 'カバーを設定';
  @override
  String get game_show_hook_text_window => 'フックテキストウィンドウを表示';
  @override
  String get game_site_score => 'サイト評価';
  @override
  String get game_sort => '並べ替え';
  @override
  String get game_sort_added => '追加日';
  @override
  String get game_sort_last_played => '最終プレイ';
  @override
  String get game_sort_name => '名前';
  @override
  String get game_sort_release => '発売日';
  @override
  String get game_sort_site_score => 'サイト評価';
  @override
  String get game_sort_user_rating => 'マイ評価';
  @override
  String get game_stat_daily => '日別プレイ時間';
  @override
  String get game_stat_delete_session => 'このセッションを削除';
  @override
  String get game_stat_last_played => '最終プレイ';
  @override
  String get game_stat_no_sessions => 'まだプレイセッションが記録されていません';
  @override
  String get game_stat_session_list => 'セッション履歴';
  @override
  String get game_stat_sessions => 'セッション';
  @override
  String get game_stat_today => '今日のプレイ時間';
  @override
  String get game_stat_total_time => '合計プレイ時間';
  @override
  String get game_status_dropped => '中断';
  @override
  String get game_status_not_configured => '未検証';
  @override
  String get game_status_on_hold => '保留中';
  @override
  String get game_status_played => 'プレイ済み';
  @override
  String get game_status_playing => 'プレイ中';
  @override
  String get game_status_ready => '準備完了';
  @override
  String get game_status_unset => '未設定';
  @override
  String get game_status_waiting => '待機中';
  @override
  String get game_status_want_to_play => 'プレイしたい';
  @override
  String get game_stop_listening => 'リスナーを停止';
  @override
  String get game_summary_aliases => '別名';
  @override
  String get game_summary_all_titles => 'すべてのタイトル';
  @override
  String get game_summary_average_hours => '平均プレイ時間';
  @override
  String get game_summary_none => '説明はまだありません。メタデータを取得して記入してください。';
  @override
  String get game_summary_release_date => '発売日';
  @override
  String get game_tags_clear => '選択をクリア';
  @override
  String get game_tags_title => 'ゲームタグ';
  @override
  String get game_text_endpoints => 'テキストエンドポイント';
  @override
  String get game_text_gaps => 'シーケンスギャップ';
  @override
  String get game_text_gaps_hint => 'シーケンスギャップ = フックテキストリングでドロップされた行数。0 が正常です';
  @override
  String get game_text_source_engine => 'エンジンフック';
  @override
  String get game_text_source_unknown => '不明なソース';
  @override
  String get game_text_source_websocket => 'WebSocket';
  @override
  String get game_text_thread => 'テキストスレッド';
  @override
  String game_text_thread_audio_count({required Object count}) =>
      '${count} 件に音声あり';
  @override
  String get game_text_thread_hint =>
      'LunaTranslator のように、クリーンな台詞スレッドを選択してください';
  @override
  String get game_track_auto => '自動選択';
  @override
  String get game_track_clips => 'クリップ';
  @override
  String get game_track_energy => 'エネルギー';
  @override
  String get game_track_exclude_bgm => 'BGM としてマーク';
  @override
  String get game_track_exclusion_hint =>
      'BGM／環境音のトラックを除外に設定すると、自動選択がそれを音声として扱わなくなります——音声のないセリフで BGM を拾わなくなります。';
  @override
  String get game_track_exclusion_title => '音声トラックを除外';
  @override
  String get game_track_preview => 'このトラックをプレビュー';
  @override
  String get game_track_preview_failed => 'このトラックから最近の音声をキャプチャできませんでした';
  @override
  String get game_track_preview_stop => 'プレビューを停止';
  @override
  String get game_track_restore => 'トラックを復元';
  @override
  String get game_track_select_as_voice => '音声トラックとして使用';
  @override
  String get game_track_select_requires_engine =>
      'トラック選択にはアクティブなエンジンフックセッションが必要です';
  @override
  String get game_track_voice => 'ボイス';
  @override
  String get game_tracks_loopback_hint =>
      'システムループバックはシステム全体のミックス出力を単一ストリームとしてキャプチャします。トラックごとの列挙はできません。';
  @override
  String get game_tracks_pcm_only_hint =>
      'トラック選択はエンジン PCM がアクティブな音声バックエンド時のキャプチャにのみ影響します。現在のバックエンドでは以下のリストは読み取り専用です。';
  @override
  String get game_tracks_resource_mode_hint =>
      'ゲームリソース音声モードでは、各音声行はゲームファイルから直接抽出されるため、PCM トラックリストは存在しません。自動または手動トラック選択はエンジン PCM キャプチャにのみ適用されます。';
  @override
  String get game_unread_lines => '未読';
  @override
  String get game_upscaling => 'ゲームウィンドウアップスケーリング';
  @override
  String get game_upscaling_auto => '自動';
  @override
  String get game_upscaling_hint_external =>
      'Magpie がすでに実行中だったため、Fushi はそのままにしています。Win+Shift+A を押してゲームウィンドウをアップスケーリングしてください。';
  @override
  String get game_upscaling_hint_first_run =>
      '今回は Magpie の初期設定が必要でした。Win+Shift+A を押してアップスケーリングしてください。次回のゲーム起動時には自動で行われます。';
  @override
  String get game_upscaling_hint_manual =>
      'Win+Shift+A を押してゲームウィンドウをアップスケーリングしてください。';
  @override
  String get game_upscaling_installed_only => 'インストール済みのみ';
  @override
  String get game_upscaling_off => 'オフ';
  @override
  String get game_upscaling_status_active => 'ウィンドウアップスケーリングがオンです';
  @override
  String get game_upscaling_status_failed => 'ウィンドウアップスケーリングを開始できませんでした';
  @override
  String get game_upscaling_status_manual =>
      'ウィンドウアップスケーリングは準備完了ですが、自動では開始されませんでした';
  @override
  String get game_upscaling_status_unavailable => 'ウィンドウアップスケーリングは利用できません';
  @override
  String get game_user_rating => 'マイ評価';
  @override
  String get game_view_detail => '詳細を表示';
  @override
  String get game_waiting_for_text => 'テキスト待機中';
  @override
  String game_waveform_range_label({
    required Object start,
    required Object end,
    required Object duration,
    required Object total,
  }) => '${start} - ${end} (選択 ${duration} / 合計 ${total})';
  @override
  String get game_waveform_select_title => '音声範囲を選択';
  @override
  String get game_window_bound => 'バインド済み';
  @override
  String get game_window_missing => '未バインド';
  @override
  String get games => 'ゲーム';
  @override
  String get global_context_capture => '選択コンテキストをキャプチャ';
  @override
  String get global_context_capture_hint =>
      '前面アプリから周辺テキストを読み取り、現在の文を表示します（Windows のみ）';
  @override
  String go_to_chapter({required Object n}) => '第 ${n} 章';
  @override
  String get handlebar_audio => '音声';
  @override
  String get handlebar_book_cover => '書籍カバー';
  @override
  String get handlebar_card_image => 'Card Image (Cover / GIF)';
  @override
  String get handlebar_cue_sentence => '字幕例文';
  @override
  String handlebar_deprecated_label({required Object label}) => '${label}（非推奨）';
  @override
  String get handlebar_document_title => '文書タイトル';
  @override
  String get handlebar_expression => '表現';
  @override
  String get handlebar_frequencies => '頻度（HTML）';
  @override
  String get handlebar_frequency_harmonic_rank => '頻度（ランク）';
  @override
  String get handlebar_furigana_plain => '振り仮名';
  @override
  String get handlebar_glossary => '用語集';
  @override
  String get handlebar_glossary_first => '用語集（最初）';
  @override
  String get handlebar_pitch_accent_categories => 'ピッチ種類';
  @override
  String get handlebar_pitch_accent_positions => 'ピッチ位置';
  @override
  String get handlebar_popup_selection_text => 'ポップアップ選択テキスト';
  @override
  String get handlebar_reading => '読み';
  @override
  String get handlebar_selected_glossary => '選択した用語集';
  @override
  String get handlebar_sentence => '例文';
  @override
  String get handlebar_sentence_audio => 'Sentence Audio';
  @override
  String get handlebar_video_clip => 'Video Clip (GIF)';
  @override
  String get harmonic_frequency => '語彙頻度集約';
  @override
  String health_match_summary({required Object pct}) => '一致 ${pct}%';
  @override
  String get highlight_on_tap => 'タップでテキストをハイライト';
  @override
  String get home_activity => 'アクティビティ';
  @override
  String get home_activity_empty => 'まだアクティビティがありません';
  @override
  String get home_continue => '続きから';
  @override
  String get home_filter_added => '追加日';
  @override
  String get home_filter_all => 'すべて';
  @override
  String get home_filter_game => 'ゲーム';
  @override
  String get home_filter_read => '読書';
  @override
  String get home_filter_watch => '視聴';
  @override
  String get home_recently_added => '最近追加';
  @override
  String get home_remote_source => 'リモート';
  @override
  String home_session_count({required Object n}) => '${n} セッション';
  @override
  String get home_today => '今日';
  @override
  String get home_yesterday => '昨日';
  @override
  String get hover_auto_lookup => 'ホバーで辞書を引く';
  @override
  String get hover_auto_lookup_hint =>
      'マウスを文字に重ねると自動で辞書を引きます。クリックや Shift を押す必要はありません。ポップアップは最大1層まで。デスクトップのみ。';
  @override
  String get icon_custom => 'カスタム';
  @override
  String get icon_custom_confirm_body => '選択した画像でホーム画面にショートカットを作成します。続行しますか？';
  @override
  String get icon_custom_confirm_title => 'カスタムアイコン';
  @override
  String get icon_custom_hint => 'アイコンをタップして切り替えるか、下からカスタム画像を選択してください。';
  @override
  String get icon_default => 'デフォルト';
  @override
  String get icon_full => 'フル';
  @override
  String get icon_shortcut_created => 'ホーム画面にショートカットを作成しました。';
  @override
  String get icon_shortcut_unsupported => 'このデバイスではショートカットがサポートされていません。';
  @override
  String get icon_switch_success => 'アプリアイコンを変更しました。';
  @override
  String get icon_transparent => '透明';
  @override
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  @override
  String get image_pause => '画像で一時停止';
  @override
  String get image_pause_hint => '再生中に画像が表示されたら自動で一時停止します。';
  @override
  String get image_pause_off => 'オフ';
  @override
  String get image_search_label_after => '件の検索結果';
  @override
  String get image_search_label_before => '画像を選択中 ';
  @override
  String get image_search_label_middle => '件中 ';
  @override
  String get image_search_label_none_before => '選択中 ';
  @override
  String get image_search_label_none_middle => '画像なし ';
  @override
  String get import_complete => '辞書のインポートが完了しました。';
  @override
  String import_duplicate({required Object name}) =>
      '『${name}』という名前の辞書は既にインポートされています。';
  @override
  String get import_extract => 'ファイルを展開中...';
  @override
  String get import_failed => '辞書のインポートに失敗しました。';
  @override
  String get import_in_progress => 'インポート中';
  @override
  String import_name({required Object name}) => '『${name}』をインポート中...';
  @override
  String import_sidecar_audio({required Object count}) =>
      '音声ファイルを ${count} 件自動で添付しました';
  @override
  String import_sidecar_subtitle({required Object name}) =>
      '字幕を自動で添付しました：${name}';
  @override
  String get import_start => 'インポートの準備中...';
  @override
  String get import_step_building_epub => 'EPUBを生成中…';
  @override
  String get import_step_converting_epub => 'EPUBに変換中…';
  @override
  String import_step_copying_file({required Object name}) => '${name} をコピー中…';
  @override
  String get import_step_done => '完了';
  @override
  String get import_step_importing_epub => 'EPUBをインポート中…';
  @override
  String get import_step_matching => '音声アラインメント中…';
  @override
  String get import_step_parsing => '字幕を解析中…';
  @override
  String get import_step_persisting => 'ファイルを保存中…';
  @override
  String get import_step_reading => 'ファイルを読み込み中…';
  @override
  String get import_step_reading_idb => '書籍情報を読み込み中…';
  @override
  String get import_step_saving => 'レコードを保存中…';
  @override
  String get import_theme => 'テーマをインポート';
  @override
  String get import_theme_hint => 'テーマコードを貼り付け';
  @override
  String get import_theme_invalid => '無効なテーマコード';
  @override
  String get import_theme_success => 'テーマをインポートしました';
  @override
  String import_unsupported_file_format({required Object ext}) =>
      '未対応のファイル形式: ${ext}';
  @override
  String get increase => '増加';
  @override
  String get info_empty_home_tab => '履歴はありません';
  @override
  String init_error_message({required Object error}) => '初期化に失敗しました：${error}';
  @override
  String get initialization_failed => '初期化に失敗しました';
  @override
  String get interconnect_backup_backend => 'バックアップバックエンド';
  @override
  String get interconnect_backup_backend_active =>
      'バックアップは既にペアリング済みのデバイスに送信されています。別のバックエンドに切り替えるには、同期とバックアップで選択してください。';
  @override
  String get interconnect_backup_backend_apply => 'バックアップバックエンドに設定';
  @override
  String interconnect_backup_backend_current({required Object backend}) =>
      '現在のバックアップバックエンド: ${backend}';
  @override
  String get interconnect_backup_backend_hint =>
      'クラウドドライブではなく、ペアリング済みデバイスにバックアップと同期を行います。書き込まれる内容は、上のペアリング済みデバイスへのアップロード設定で許可した範囲がそのまま反映されます。';
  @override
  String get interconnect_backup_backend_needs_pairing => 'まず上のデバイスに接続してください。';
  @override
  String get interconnect_enable => 'インターコネクトを有効にする';
  @override
  String get interconnect_enable_hint =>
      'LAN 経由で他のデバイスに接続します。クラウドバックアップバックエンドと併用可能で、競合しません。';
  @override
  String get interconnect_moved_note => '接続とサーバーの設定は Fushi インターコネクト カテゴリにあります';
  @override
  String get interconnect_section_client => '他のデバイスに接続';
  @override
  String get interconnect_section_delegate => 'ペアリング済みデバイスに委任';
  @override
  String get interconnect_section_related => 'リモートコンテンツと検索';
  @override
  String get interconnect_summary => 'デバイス間の直接同期とサーバーとしてのホスト';
  @override
  String get interconnect_upload_audiobook_files => 'オーディオブックファイルをアップロード';
  @override
  String get interconnect_upload_audiobook_files_hint =>
      'このデバイスのオーディオブックの音声と字幕パッケージをインターコネクトピアに同期します（大容量）。';
  @override
  String get interconnect_upload_content => '書籍ファイルをアップロード';
  @override
  String get interconnect_upload_content_hint =>
      'このデバイスの書籍と読書コンテンツをインターコネクトピアに同期します。';
  @override
  String get interconnect_upload_dictionary => '辞書';
  @override
  String get interconnect_upload_dictionary_hint =>
      'このデバイスの辞書をインターコネクトピアに同期します。';
  @override
  String get interconnect_upload_section => 'インターコネクトピアにアップロード';
  @override
  String get interconnect_upload_video_files => '動画ファイルをアップロード';
  @override
  String get interconnect_upload_video_files_hint =>
      'このデバイスのローカル動画ファイルをインターコネクトピアに同期します（大容量）。';
  @override
  String get invert_audiobook_skip_direction => '下部バーのスキップボタンを反転';
  @override
  String get invert_swipe_direction => 'スワイプページ送り方向を反転';
  @override
  String get invert_volume_buttons => '音量ボタンの方向を反転';
  @override
  String get jump_to_char => '文字数でジャンプ';
  @override
  String jump_to_char_current({
    required Object current,
    required Object total,
  }) => '現在: ${current} / ${total}';
  @override
  String get jump_to_char_hint => '文字位置を入力…';
  @override
  String get keep_screen_awake => '画面を常時点灯';
  @override
  String get library_search => 'ライブラリを検索';
  @override
  String get loading_illustrations => 'イラストを読み込み中…';
  @override
  String get loading_slow_message =>
      'データ保存先がネットワークドライブやリムーバブルドライブにあり、現在切断されている場合、起動が停止することがあります。「再試行」をタップすると、今回はデフォルトの保存先で起動します。データはそのまま残ります。';
  @override
  String get loading_slow_message_mobile =>
      '起動に通常より時間がかかっています。Fushi が大きなライブラリや辞書を読み込んでいる可能性があります。しばらくお待ちいただくか、「再試行」をタップしてリロードしてください。データは安全で失われません。';
  @override
  String get loading_slow_title => '起動に通常より時間がかかっています';
  @override
  String get local_audio => 'ローカル音声';
  @override
  String get local_audio_add_db => 'ローカル音声データベースを追加';
  @override
  String get local_audio_edit_sources => 'ソースを編集';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      '音声データベースのインポートに失敗しました：${reason}';
  @override
  String get local_audio_imported => '音声データベースを追加しました';
  @override
  String get local_audio_invalid_db =>
      'このファイルは使用可能な音声データベースではありません（Local Audio Serverのデータベースではないか、音声が含まれていません）。';
  @override
  String get local_audio_no_sources => 'このデータベースにソースが見つかりません';
  @override
  String get local_audio_reference_original => '元ファイルを参照（コピーしない）';
  @override
  String get local_audio_reference_original_desc =>
      'データベースを現在の場所に保持し、元のパスから読み取ります。ファイルを移動または削除するとソースが壊れます。';
  @override
  String get local_audio_source_order_title => 'ソースの優先順位';
  @override
  String get log_copy_all => 'すべてコピー';
  @override
  String get log_export_failed => '書き出しに失敗しました';
  @override
  String get log_export_file => 'ファイルに書き出す';
  @override
  String get log_export_saved => 'ログを保存しました';
  @override
  String get log_upload_action => 'サーバーにアップロード';
  @override
  String get log_upload_consent_agree => '同意してアップロード';
  @override
  String get log_upload_consent_body =>
      'ログ本文（エラーメッセージ、ファイルパス、書名などを含む場合があります）に加え、アプリのバージョン、プラットフォーム、デバイス機種が、不具合の診断のため開発者のサーバーにアップロードされます。アップロードを押したときのみ送信され、自動では送信されません。';
  @override
  String get log_upload_consent_title => 'ログをサーバーにアップロードしますか？';
  @override
  String get log_upload_failed => 'アップロードに失敗しました';
  @override
  String get log_upload_in_progress => 'ログをアップロード中…';
  @override
  String get log_upload_success => 'ログをアップロードしました';
  @override
  String get log_upload_too_large => 'ログが大きすぎてアップロードできません';
  @override
  String get login => 'ログイン';
  @override
  String get lookup_audio_volume => '辞書音声の音量';
  @override
  String get low_memory_mode => '省メモリモード';
  @override
  String get low_memory_mode_hint => 'キャッシュとメモリ使用量を削減します。一部の変更は再起動後に反映されます。';
  @override
  String get low_memory_mode_suggestion => '設定 → その他の設定で省メモリモードを有効にしてみてください。';
  @override
  String get lyrics_artist => 'アーティスト';
  @override
  String get lyrics_blur => '歌詞をぼかす';
  @override
  String get lyrics_blur_hint => 'リスニングに集中するため現在の行をぼかします。ホバーまたはタップで表示';
  @override
  String get lyrics_font_size => '歌詞フォントサイズ';
  @override
  String get lyrics_font_size_hint => '歌詞フォントサイズはブックモードとは独立しています';
  @override
  String get lyrics_mode => '歌詞モード';
  @override
  String get lyrics_mode_hint_body =>
      '歌詞モードには独自のフォントサイズ設定があります。⚙ 設定 → タイポグラフィで調整できます。';
  @override
  String get lyrics_mode_hint_title => '歌詞モード';
  @override
  String get lyrics_text_color => '歌詞字幕の色';
  @override
  String get lyrics_text_color_hint => '歌詞字幕にテーマに従わないカスタムの色を使います';
  @override
  String get lyrics_title => 'タイトル';
  @override
  String get lyrics_vertical_writing => '縦書き歌詞';
  @override
  String get lyrics_vertical_writing_hint => '歌詞を上から下、右から左に表示（書籍モードとは独立）';
  @override
  String get manage_audio_sources => '音声ソースの管理';
  @override
  String get manager => '管理';
  @override
  String get manga_mode_toggle => 'Reading Mode';
  @override
  String get manga_ocr_delete => 'モデルを削除';
  @override
  String get manga_ocr_delete_confirm_message => 'ディスク容量を解放します。後で再ダウンロードできます。';
  @override
  String get manga_ocr_delete_confirm_title => 'OCRモデルを削除しますか？';
  @override
  String get manga_ocr_delete_done => 'モデルを削除しました';
  @override
  String get manga_ocr_download => 'モデルをダウンロード';
  @override
  String get manga_ocr_download_done => 'モデルをダウンロードしました';
  @override
  String get manga_ocr_download_failed => 'モデルのダウンロードに失敗しました';
  @override
  String manga_ocr_downloading_file({required Object file}) =>
      '${file}をダウンロード中…';
  @override
  String get manga_ocr_engine_builtin => '内蔵';
  @override
  String get manga_ocr_engine_external => '外部mokuro';
  @override
  String get manga_ocr_engine_none =>
      'OCRエンジンがありません。内蔵モデルをダウンロードするか、設定でmokuro CLIのパスを指定してください。';
  @override
  String get manga_ocr_external_cli_hint => '空欄で自動検出（FUSHI_MOKURO / PATH）';
  @override
  String get manga_ocr_external_cli_label => '外部mokuro CLIパス';
  @override
  String get manga_ocr_external_detect => '検出';
  @override
  String manga_ocr_external_detected({required Object version}) =>
      '検出済み：${version}';
  @override
  String get manga_ocr_external_not_found => 'mokuroが見つかりません';
  @override
  String get manga_ocr_model_status_missing => 'OCRモデル未ダウンロード';
  @override
  String get manga_ocr_model_status_ready => 'OCRモデル準備完了';
  @override
  String get manga_ocr_section => 'マンガOCR';
  @override
  String get manga_ocr_section_summary => '内蔵OCRモデルと外部mokuro CLI';
  @override
  String get manga_ocr_unsupported => 'このプラットフォームでは内蔵マンガOCRはまだ利用できません。';
  @override
  String get manga_ocr_wizard_done => 'マンガをインポートしました';
  @override
  String get manga_ocr_wizard_failed => 'OCRに失敗しました';
  @override
  String get manga_ocr_wizard_has_mokuro =>
      'このフォルダには既に.mokuroファイルがあります — 通常のインポートを使用してください。';
  @override
  String get manga_ocr_wizard_importing => 'インポート中…';
  @override
  String get manga_ocr_wizard_no_images => 'このフォルダに画像が見つかりません。';
  @override
  String manga_ocr_wizard_page_progress({
    required Object done,
    required Object total,
  }) => 'ページ ${done} / ${total}';
  @override
  String get manga_ocr_wizard_pick_folder => '画像フォルダを選択';
  @override
  String get manga_ocr_wizard_run => 'OCRを実行';
  @override
  String get manga_ocr_wizard_running => 'OCR実行中…';
  @override
  String get manga_ocr_wizard_title => 'OCRインポート（マンガ）';
  @override
  String get manga_ocr_wizard_title_label => 'タイトル（任意）';
  @override
  String get manga_online_base_url_label => 'オンラインカタログURL';
  @override
  String get manga_online_catalog_title => 'オンラインカタログ';
  @override
  String get manga_online_download_selected => '選択をダウンロード';
  @override
  String get manga_online_downloaded => 'インポート済み';
  @override
  String get manga_online_failed => 'ダウンロードに失敗しました';
  @override
  String get manga_online_load_failed => 'カタログの読み込みに失敗しました';
  @override
  String get manga_online_queue_added => 'ダウンロードキューに追加しました';
  @override
  String manga_online_queue_progress({
    required Object done,
    required Object total,
  }) => '巻 ${done} / ${total}';
  @override
  String get manga_online_queue_section => 'マンガカタログのダウンロード';
  @override
  String get manga_online_search_hint => 'シリーズを検索';
  @override
  String get manga_online_stage_cbz => '巻をダウンロード中…';
  @override
  String get manga_online_stage_extract => '展開中…';
  @override
  String get manga_online_stage_mokuro => 'OCRデータをダウンロード中…';
  @override
  String get manga_reading_mode_spread => '見開き';
  @override
  String get manga_reading_mode_webtoon => 'Webtoon';
  @override
  String get manga_remote_ocr_cancelled => 'リモートOCRがホスト側でキャンセルされました。';
  @override
  String get manga_remote_ocr_engine => 'ペアリング済みホスト';
  @override
  String get manga_remote_ocr_failed => 'リモートOCRに失敗しました';
  @override
  String get manga_remote_ocr_no_host => 'マンガOCR対応のペアリング済みホストに接続できません。';
  @override
  String get manga_remote_ocr_not_ready =>
      'ペアリング済みホストのOCRモデルがダウンロードされていません。先にホスト側でダウンロードしてください。';
  @override
  String get manga_remote_ocr_running => 'ペアリング済みホストでOCR実行中…';
  @override
  String get manga_remote_ocr_unsupported => 'ペアリング済みホストはマンガOCRに対応していません。';
  @override
  String manga_remote_ocr_uploading({
    required Object done,
    required Object total,
  }) => 'ページをアップロード中 ${done} / ${total}…';
  @override
  String get margin_bottom => '下余白';
  @override
  String get margin_left => '左余白';
  @override
  String get margin_right => '右余白';
  @override
  String get margin_top => '上余白';
  @override
  String get maximum_terms => '検索結果の最大見出し語数';
  @override
  String get media_source_add => 'ソースを追加';
  @override
  String get media_source_add_local_folder => 'Local Folder';
  @override
  String get media_source_add_network => 'ネットワーク';
  @override
  String media_source_count_book({required Object n}) => '${n}冊';
  @override
  String media_source_count_video({required Object n}) => '${n}本の動画';
  @override
  String media_source_last_scan({required Object time}) => '最終スキャン ${time}';
  @override
  String get media_source_manage_title => 'Manage Sources';
  @override
  String get media_source_network_label_optional => '表示名（任意）';
  @override
  String get media_source_network_missing_fields =>
      'ホスト、ユーザー名、リモートパス、パスワードまたは鍵を入力してください';
  @override
  String get media_source_network_remote_path => 'リモートパス';
  @override
  String get media_source_network_subtitle => 'SFTP / FTP / WebDAV リモートライブラリ';
  @override
  String get media_source_no_sources => 'ソースがまだありません';
  @override
  String get media_source_open_folder => 'Open Folder';
  @override
  String get media_source_remove => 'Remove Source';
  @override
  String get media_source_remove_keeps_media =>
      'ソースを削除してもインポート済みのメディアは削除されません。';
  @override
  String get media_source_rescan => '再スキャン';
  @override
  String get media_source_scan_error => 'スキャンに失敗しました';
  @override
  String get media_tracking_access_token => 'アクセストークン';
  @override
  String get media_tracking_access_token_hint =>
      '書き込み権限付きのパーソナルアクセストークンを作成してください';
  @override
  String get media_tracking_account => 'Bangumiアカウント';
  @override
  String get media_tracking_add_mapping => 'マッピングを追加';
  @override
  String get media_tracking_anime => 'アニメ';
  @override
  String get media_tracking_chapter => '章';
  @override
  String get media_tracking_connect => '接続して確認';
  @override
  String get media_tracking_connected_as => '接続済みアカウント';
  @override
  String get media_tracking_delete_mapping => 'マッピングを削除';
  @override
  String get media_tracking_episode => 'エピソード';
  @override
  String get media_tracking_kind => 'カテゴリ';
  @override
  String get media_tracking_local_item => 'ローカルアイテム';
  @override
  String get media_tracking_manga => 'マンガ';
  @override
  String get media_tracking_mappings => 'アイテムマッピング';
  @override
  String get media_tracking_no_mappings =>
      '手動マッピングはまだありません。Fushiは初回のエピソード完了または読書進捗で自動マッチングします。曖昧なアイテムはここで追加してください。';
  @override
  String get media_tracking_novel => '小説';
  @override
  String get media_tracking_pending => '保留中の更新';
  @override
  String get media_tracking_progress_mode => '進捗の単位';
  @override
  String get media_tracking_progress_offset => '開始番号';
  @override
  String get media_tracking_saved => 'マッピングを保存しました';
  @override
  String get media_tracking_search => 'Bangumiで検索';
  @override
  String get media_tracking_search_results => 'Bangumi検索結果';
  @override
  String get media_tracking_summary => 'アニメ、小説、マンガの進捗をBangumiに自動記録';
  @override
  String get media_tracking_sync_failed => '同期に失敗しました。更新はキューに残っています。';
  @override
  String get media_tracking_sync_now => '今すぐ同期';
  @override
  String get media_tracking_sync_success => '同期が完了しました';
  @override
  String get media_tracking_token_required => '先にアクセストークンを入力して確認してください';
  @override
  String get media_tracking_volume => '巻';
  @override
  String get microphone_permission_denied => '録音にはマイクの権限が必要です。';
  @override
  String get mining_audio_quality => '音声品質';
  @override
  String get mining_audio_quality_high => '高';
  @override
  String get mining_audio_quality_hint => 'ビットレートが高いほどクリアですが、カードのサイズが大きくなります。';
  @override
  String get mining_audio_quality_max => '最高';
  @override
  String get mining_audio_quality_standard => '標準';
  @override
  String get mining_image_quality => '画像 / GIF品質';
  @override
  String get mining_image_quality_hd => 'HD';
  @override
  String get mining_image_quality_hint =>
      '高いほどシャープですが、カードのサイズが大きくなります。最高ではスクリーンショットを元の解像度で保持します。アニメーションGIFはカードの実用性を保つため制限されます。';
  @override
  String get mining_image_quality_max => '最高';
  @override
  String get mining_image_quality_standard => '標準';
  @override
  String get mining_image_quality_thrift => 'データセーバー';
  @override
  String get move_down => '下に移動';
  @override
  String get move_up => '上に移動';
  @override
  String get name => '名前';
  @override
  String get nav_browser_extension => '拡張機能';
  @override
  String get nav_downloads => 'ダウンロード';
  @override
  String get nav_game => 'ゲーム';
  @override
  String get nav_home => 'ホーム';
  @override
  String get nav_lookup => '辞書';
  @override
  String get nav_video => '動画';
  @override
  String get next_sentence => '次の文';
  @override
  String get no_audio_file => '保存する音声ファイルがありません。';
  @override
  String get no_collections => 'ブックマークや保存した文がありません';
  @override
  String get no_debug_logs => 'デバッグログがありません。';
  @override
  String get no_illustrations_found => 'イラストが見つかりません';
  @override
  String get no_results_found => '結果が見つかりません。';
  @override
  String get no_search_results => '検索結果が見つかりません。';
  @override
  String get no_sentence_selected => '文が選択されていません';
  @override
  String get no_sentences_found => '例文が見つかりません';
  @override
  String get no_text => 'テキストがありません。';
  @override
  String get no_text_to_search => '検索するテキストがありません。';
  @override
  String get now_listening_label => '再生中';
  @override
  String get on_screen_keyboard => 'オンスクリーンキーボード';
  @override
  String get options_collapse => '検索時に折りたたむ';
  @override
  String get options_delete => '削除';
  @override
  String get options_edit => '編集';
  @override
  String get options_expand => '検索時に展開';
  @override
  String get options_github => 'GitHubでリポジトリを見る';
  @override
  String get options_hide => '検索時に非表示';
  @override
  String get options_language => '言語設定';
  @override
  String get options_show => '検索時に表示';
  @override
  String get overlay_lookup_independent_size => 'ポップアウト辞書の個別サイズ';
  @override
  String get overlay_lookup_independent_size_hint =>
      'アプリ外ポップアウト辞書ウィンドウにアプリ内ポップアップとは別の最大サイズを設定';
  @override
  String get overlay_lookup_max_height => 'ポップアウト辞書の最大高さ';
  @override
  String get overlay_lookup_max_width => 'ポップアウト辞書の最大幅';
  @override
  String page_progress({required Object current, required Object total}) =>
      'ページ ${current} / ${total}';
  @override
  String get paste => '貼り付け';
  @override
  String get pause => '一時停止';
  @override
  String get pause_on_lookup => '検索時に一時停止';
  @override
  String get pdf_bookmark_added => 'ブックマークを追加しました';
  @override
  String get pdf_bookmarks => 'ブックマーク';
  @override
  String get pdf_bookmarks_empty => 'ブックマークはまだありません。';
  @override
  String get pdf_no_text_layer => 'このPDFにはテキストレイヤーがありません（スキャン画像）。辞書引きは利用できません。';
  @override
  String get pdf_outline => '目次';
  @override
  String get pdf_outline_empty => 'このPDFには目次がありません。';
  @override
  String get pick_image => '画像を選択';
  @override
  String get play => '再生';
  @override
  String get play_from_cue => 'この文から再生';
  @override
  String get playback_auto_pause => '字幕一時停止再生モード';
  @override
  String get playback_speed => '速度';
  @override
  String get popup_append_sentence_tooltip => 'この文をカードに追加';
  @override
  String get popup_auto_expand_dictionaries => '行を自動展開';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      '「辞書を折りたたむ」がオンの場合でも、辞書ブロックの最初のN行を展開したままにします。展開数はカラム設定に従います：行×カラム（0＝すべて折りたたむ）';
  @override
  String get popup_bottom_docked => '下部固定ポップアップ';
  @override
  String get popup_bottom_docked_hint =>
      '辞書ポップアップを、引いた単語に追従させる代わりに、画面下部の全幅パネルとして固定します。';
  @override
  String get popup_clear_sentence_draft_tooltip => '追加した文をクリア';
  @override
  String get popup_ctx_adjust_button => '文脈を調整';
  @override
  String get popup_ctx_box_current => 'Current';
  @override
  String get popup_ctx_box_empty => '（なし）';
  @override
  String get popup_ctx_box_next => 'After';
  @override
  String get popup_ctx_box_prev => 'Before';
  @override
  String get popup_ctx_cancel => 'キャンセル';
  @override
  String get popup_ctx_confirm => 'Confirm';
  @override
  String get popup_ctx_modal_count => 'Selected %d';
  @override
  String get popup_ctx_modal_eyebrow => 'Before mining';
  @override
  String get popup_ctx_modal_title => '文脈の範囲を選択';
  @override
  String get popup_ctx_next_minus => 'Remove after';
  @override
  String get popup_ctx_next_plus => 'Add after';
  @override
  String get popup_ctx_prev_minus => 'Remove before';
  @override
  String get popup_ctx_prev_plus => 'Add before';
  @override
  String get popup_dictionary_max_columns => '辞書の最大カラム数（自動調整）';
  @override
  String get popup_dictionary_max_columns_hint =>
      '1行あたり最大このカラム数まで自動配置します。画面が狭い場合は少なくなります';
  @override
  String get popup_font_size_decrease => '辞書テキストを小さく';
  @override
  String get popup_font_size_increase => '辞書テキストを大きく';
  @override
  String get popup_instant_scroll => 'ポップアップを瞬時にスクロール';
  @override
  String get popup_instant_scroll_hint =>
      '電子ペーパー向け。辞書ポップアップをスクロールアニメなしで一定距離ずつ瞬時に移動します。';
  @override
  String get popup_max_height => 'ポップアップの最大高さ';
  @override
  String get popup_max_width => 'ポップアップの最大幅';
  @override
  String get popup_no_audio_available => '音声がありません';
  @override
  String get popup_sentence_context_next_label => '後';
  @override
  String get popup_sentence_context_prev_label => '前';
  @override
  String get popup_wheel_speed => 'ポップアップのスクロール速度';
  @override
  String get popup_wheel_speed_hint => '辞書ポップアップのマウスホイールスクロール速度（ブラウザ拡張機能にも適用）。';
  @override
  String get prev_sentence => '前の文';
  @override
  String get preview => 'プレビュー';
  @override
  String get preview_badge => 'バッジ';
  @override
  String get preview_switch => 'スイッチ';
  @override
  String get processing_in_progress => '画像を処理中';
  @override
  String get profile_book_profile => 'プロファイル指定';
  @override
  String profile_confirm_delete({required Object name}) =>
      'プロファイル「${name}」を削除しますか？';
  @override
  String get profile_copy => 'コピー';
  @override
  String get profile_copy_suffix => '（コピー）';
  @override
  String get profile_create => 'プロファイルを作成';
  @override
  String get profile_delete => 'プロファイルを削除';
  @override
  String get profile_export => 'エクスポート';
  @override
  String get profile_export_failed => 'エクスポートに失敗しました';
  @override
  String profile_follow_default_current({required Object name}) =>
      'デフォルトに従う（${name}）';
  @override
  String get profile_import => 'インポート';
  @override
  String get profile_import_failed => 'インポートに失敗しました';
  @override
  String get profile_import_invalid => '無効なプロファイルファイル';
  @override
  String get profile_import_success => 'プロファイルをインポートしました';
  @override
  String get profile_label => 'プロファイル';
  @override
  String get profile_management => 'プロファイル管理';
  @override
  String get profile_media_audiobook => 'オーディオブック';
  @override
  String get profile_media_epub => '普通の本';
  @override
  String get profile_media_lyrics => '歌詞モード';
  @override
  String get profile_media_none => 'なし';
  @override
  String get profile_media_srtbook => '字幕ブック';
  @override
  String get profile_media_type_bindings => 'メディアタイプの紐付け';
  @override
  String get profile_media_video => '動画';
  @override
  String get profile_name_hint => 'プロファイル名';
  @override
  String get profile_rename => '名前を変更';
  @override
  String get reader_auto_hide_chrome_duration => 'フローティングコントロールの自動非表示';
  @override
  String get reader_content_timeout =>
      'コンテンツの読み込みがタイムアウトしました。表示が異常な場合は開き直してください';
  @override
  String get reader_copy_image => '画像をコピー';
  @override
  String get reader_gallery => 'ギャラリー';
  @override
  String get reader_gallery_current => '現在の閲覧位置';
  @override
  String get reader_gallery_empty => 'この本にはイラストがありません';
  @override
  String get reader_gallery_jump => 'このイラストに移動';
  @override
  String get reader_gallery_tooltip => 'イラスト一覧';
  @override
  String reader_image_copy_failed({required Object error}) =>
      '画像のコピーに失敗しました：${error}';
  @override
  String get reader_image_file_unavailable => '画像ファイルが利用できません。';
  @override
  String reader_image_share_failed({required Object error}) =>
      '画像の共有に失敗しました：${error}';
  @override
  String get reader_open_failed => '本を開けませんでした';
  @override
  String get reader_settings_section => 'リーダー設定';
  @override
  String get reader_theme_black => 'ブラック';
  @override
  String get reader_theme_dark => 'ダーク';
  @override
  String get reader_theme_ecru => 'エクリュ';
  @override
  String get reader_theme_eyecare => 'Eye Care';
  @override
  String get reader_theme_gray => 'グレー';
  @override
  String get reader_theme_light => 'ホワイト';
  @override
  String get reader_theme_water => 'ウォーターブルー';
  @override
  String get reader_top_progress_floating => 'フローティング読書進捗';
  @override
  String get reader_unsupported_platform => 'リーダーはこのプラットフォームではまだ利用できません。';
  @override
  String get reading_activity => '学習アクティビティ';
  @override
  String get reading_progress => '読書進捗';
  @override
  String get reading_section_mode => 'モードと表示方向';
  @override
  String get reading_statistics => '読書統計';
  @override
  String get record => '録音';
  @override
  String get refresh => '更新';
  @override
  String get rematch_adjust_window => '検索ウィンドウを調整して再マッチング';
  @override
  String get rematch_run => '再マッチングを実行';
  @override
  String get remote_audio_source => 'リモート音声';
  @override
  String get remote_book_audiobook_download_failed =>
      'この本のオーディオブックをダウンロードできませんでした';
  @override
  String get remote_book_download => 'このデバイスにダウンロード';
  @override
  String get remote_book_download_failed => 'リモート書籍をダウンロードできませんでした';
  @override
  String get remote_book_downloaded => 'リモート書籍をダウンロードしました';
  @override
  String get remote_book_downloading => 'ダウンロード中…';
  @override
  String get remote_book_info => '情報';
  @override
  String get remote_book_info_has_audiobook => 'オーディオブックを含む';
  @override
  String get remote_book_unavailable => 'ペアリング済みデバイスが利用できません';
  @override
  String get remote_dict_lookup => 'リモート辞書検索';
  @override
  String get remote_dict_lookup_hint => 'ローカル辞書でヒットしない場合、設定したFushiサーバーに問い合わせます';
  @override
  String get remote_video_download => 'このデバイスにダウンロード';
  @override
  String get remote_video_download_failed => 'リモート動画をダウンロードできませんでした';
  @override
  String get remote_video_downloaded => 'リモート動画をダウンロードしました';
  @override
  String get remote_video_downloading => 'ダウンロード中…';
  @override
  String get remote_video_info => '情報';
  @override
  String get remote_video_info_has_subtitle => '字幕を含む';
  @override
  String get remote_video_info_no_subtitle => '字幕なし';
  @override
  String remote_video_info_size({required Object size}) => 'サイズ：${size}';
  @override
  String get remote_video_list_failed =>
      'リモート動画を読み込めませんでした。相手のデバイスがオンラインで同じネットワーク上にあることを確認して、再試行してください。';
  @override
  String get remote_video_unavailable => 'ペアリング済みデバイスが利用できません';
  @override
  String get rename_collection => 'コレクション名を変更';
  @override
  String get render_restart_required => 'アプリの再起動後に反映されます';
  @override
  String get repeat_cue => 'この文をリピート';
  @override
  String get reset => 'リセット';
  @override
  String get retry => '再試行';
  @override
  String get reverse_arrow_page_turn => 'キーボードの左右キーによるページめくり方向を反転';
  @override
  String get reverse_navigation_bar => 'ナビゲーションバーを反転';
  @override
  String get reverse_reader_bottom_bar => 'リーダーの下部バーを反転';
  @override
  String get audiobook_rematch_all_zero => 'すべてのウィンドウのスコアが0%です。手動で調整してください';
  @override
  String audiobook_rematch_auto_failed({required Object error}) =>
      '自動マッチングに失敗しました：${error}';
  @override
  String get audiobook_rematch_auto_match => '自動マッチング';
  @override
  String audiobook_rematch_auto_picked({
    required Object window,
    required Object pct,
  }) => '${window} を自動選択しました（ヒット率 ${pct}%）';
  @override
  String audiobook_rematch_default_value({required Object n}) => 'デフォルト ${n}';
  @override
  String audiobook_rematch_health_label({
    required Object pct,
    required Object detail,
  }) => '${pct} マッチ — ${detail}';
  @override
  String get audiobook_rematch_matching => 'マッチング中...';
  @override
  String get audiobook_rematch_no_chapters => 'EPUBにチャプターテキストがありません';
  @override
  String get audiobook_rematch_no_cues_to_match => 'マッチングするキューがありません';
  @override
  String get audiobook_rematch_no_sections => 'チャプターテキストが見つかりません。自動マッチングできません';
  @override
  String get audiobook_rematch_no_stored_cues => '保存されたキューがないため、再実行できません';
  @override
  String audiobook_rematch_failed({required Object error}) =>
      '再マッチングに失敗しました：${error}';
  @override
  String audiobook_rematch_result({
    required Object pct,
    required Object window,
  }) => '再マッチング結果：${pct}%（ウィンドウ：${window}）';
  @override
  String get audiobook_rematch_search_window => '検索ウィンドウ';
  @override
  String get audiobook_rematch_similarity_threshold => '類似度しきい値';
  @override
  String get audiobook_rematch_threshold_hint =>
      'ファジーマッチングの最小類似度（Dice係数）。テキストの差異を許容するには下げてください。ただし低すぎると誤マッチが発生します。';
  @override
  String get audiobook_rematch_window_hint =>
      'テキスト内で各キューごとに前方検索する文字数。ヒット率が低い場合は調整してください。大きすぎると短い/ノイズの多いキューでカーソルがずれる場合があります。';
  @override
  String get saved_tags => 'タグを保存しました。';
  @override
  String get scan_non_japanese_text => '日本語以外のテキストもスキャン';
  @override
  String get scan_non_japanese_text_hint => 'オフの場合、日本語以外の文字で選択が停止します';
  @override
  String get search => '検索';
  @override
  String get search_ellipsis => '検索...';
  @override
  String get searching_in_progress => '検索中：';
  @override
  String get section_advanced_colors => '詳細設定';
  @override
  String get section_advanced_typography => '詳細設定';
  @override
  String get section_audiobook => 'オーディオブック';
  @override
  String get section_audiobook_lyrics => 'オーディオブックと歌詞';
  @override
  String get section_epub => 'EPUBライブラリ';
  @override
  String get section_floating_lyric => 'フローティング歌詞';
  @override
  String get section_interface => 'インターフェース';
  @override
  String get section_layout => 'レイアウトと表示';
  @override
  String get section_navigation => 'ナビゲーション';
  @override
  String get section_page_turn_direction => 'ページめくり方向';
  @override
  String get section_reader_colors => 'リーダーカラー';
  @override
  String get section_system_theme => 'システムテーマカラー';
  @override
  String get section_typography => 'タイポグラフィ';
  @override
  String get section_update => '更新設定';
  @override
  String get section_video_danmaku => '弾幕';
  @override
  String get section_video_library => 'ライブラリ';
  @override
  String get section_video_playback => '再生';
  @override
  String get section_video_subtitles => '字幕';
  @override
  String get seed_color => 'シードカラー';
  @override
  String get seed_color_desc => '以下のすべてのデフォルトカラーを自動生成';
  @override
  String get selection_color => '選択ハイライト';
  @override
  String get selection_color_desc => 'リーダーのテキスト選択ハイライト';
  @override
  String get send => '送信';
  @override
  String get series => 'シリーズ';
  @override
  String get series_created => 'シリーズを作成しました';
  @override
  String get series_default_name => '新しいシリーズ';
  @override
  String series_item_count({required Object n}) => '${n}件';
  @override
  String get series_name_hint => 'シリーズ名';
  @override
  String get server_address => 'サーバーアドレス';
  @override
  String get settings => '設定';
  @override
  String get settings_check_update_now => 'アップデートを確認';
  @override
  String get settings_destination_appearance => '外観';
  @override
  String get settings_destination_card_creation => 'カード作成';
  @override
  String get settings_destination_diagnostics => '診断';
  @override
  String get settings_destination_interconnect => 'Fushi Interconnect';
  @override
  String get settings_destination_listening => 'リスニング';
  @override
  String get settings_destination_lookup => '辞書検索';
  @override
  String get settings_destination_profiles => '設定スキーム';
  @override
  String get settings_destination_reading => '読書';
  @override
  String get settings_destination_reading_controls => '読書コントロール';
  @override
  String get settings_destination_sync_backup => '同期とバックアップ';
  @override
  String get settings_destination_system => 'システム';
  @override
  String get settings_destination_system_summary => '一般、アップデートと診断';
  @override
  String get settings_destination_tracking => 'メディアトラッキング';
  @override
  String get settings_destination_video => '動画';
  @override
  String get settings_search_hint => '設定を検索';
  @override
  String get settings_search_no_results => '一致する設定がありません';
  @override
  String get settings_secret_hide => '値を隠す';
  @override
  String get settings_secret_show => '値を表示';
  @override
  String get settings_section_app_shell => 'アプリ';
  @override
  String get settings_section_data_storage => 'データ保存場所';
  @override
  String get settings_section_gal_hook_overlay => 'ギャルゲーキャプションオーバーレイ';
  @override
  String get settings_section_general => '一般';
  @override
  String get settings_section_lookup_audio => '発音とフィードバック';
  @override
  String get settings_section_lookup_content => 'エントリ内容';
  @override
  String get settings_section_lookup_integrations => '外部連携';
  @override
  String get settings_section_lookup_popup_window => 'ポップアップウィンドウ';
  @override
  String get settings_section_lookup_trigger => '辞書引きのトリガー';
  @override
  String get settings_section_page_turn_input => 'ページめくりと操作';
  @override
  String get settings_section_reader_chrome => 'リーダーインターフェース';
  @override
  String get settings_section_update_channel => '更新チャンネル';
  @override
  String get settings_view_changelog => '変更履歴を見る';
  @override
  String get share => '共有';
  @override
  String get share_theme => 'テーマを共有';
  @override
  String get shortcut_action_audiobook_next_sentence => '次の文';
  @override
  String get shortcut_action_audiobook_play_pause => '再生 / 一時停止';
  @override
  String get shortcut_action_audiobook_prev_sentence => '前の文';
  @override
  String get shortcut_action_audiobook_seek_clicked => 'クリックした文へ音声をシーク';
  @override
  String get shortcut_action_dpad_down => '十字キー 下';
  @override
  String get shortcut_action_dpad_left => '十字キー 左';
  @override
  String get shortcut_action_dpad_right => '十字キー 右';
  @override
  String get shortcut_action_dpad_up => '十字キー 上';
  @override
  String get shortcut_action_global_back => '戻る';
  @override
  String get shortcut_action_global_external_lookup =>
      'App-external lookup hotkey';
  @override
  String get shortcut_action_global_scroll_page_down => '1画面分下にスクロール';
  @override
  String get shortcut_action_global_scroll_page_up => '1画面分上にスクロール';
  @override
  String get shortcut_action_global_toggle_fullscreen => '全画面表示の切り替え';
  @override
  String get shortcut_action_home_focus_search => '検索にフォーカス';
  @override
  String get shortcut_action_home_tab_books => '書籍タブ';
  @override
  String get shortcut_action_home_tab_dict => '辞書タブ';
  @override
  String get shortcut_action_home_tab_next => '次のタブ';
  @override
  String get shortcut_action_home_tab_prev => '前のタブ';
  @override
  String get shortcut_action_home_tab_settings => '設定タブ';
  @override
  String get shortcut_action_popup_next_entry => '次の単語エントリ';
  @override
  String get shortcut_action_popup_prev_entry => '前の単語エントリ';
  @override
  String get shortcut_action_reader_create_card_from_popup => 'ポップアップからカード作成';
  @override
  String get shortcut_action_reader_dismiss_dict => '辞書を閉じる';
  @override
  String get shortcut_action_reader_enter_caret => '辞書引きカーソルに入る';
  @override
  String get shortcut_action_reader_lookup_at_cursor => '辞書を引く／カーソルを有効化';
  @override
  String get shortcut_action_reader_open_menu => 'Open Settings Menu';
  @override
  String get shortcut_action_reader_open_navigation => 'Open Navigation';
  @override
  String get shortcut_action_reader_page_backward => '前のページ';
  @override
  String get shortcut_action_reader_page_forward => '次のページ';
  @override
  String get shortcut_action_reader_shift_lookup => 'カーソル位置で辞書引き';
  @override
  String get shortcut_action_reader_toggle_chrome => 'コントロールの表示切替';
  @override
  String get shortcut_action_reader_toggle_furigana => 'ふりがなの切替';
  @override
  String get shortcut_action_video_align_subtitle_to_next => '次の字幕を現在位置に合わせる';
  @override
  String get shortcut_action_video_align_subtitle_to_prev => '前の字幕を現在位置に合わせる';
  @override
  String get shortcut_action_video_cycle_secondary_subtitle_obscure =>
      'Cycle Secondary Subtitle Obscure';
  @override
  String get shortcut_action_video_cycle_subtitle_obscure =>
      'Cycle Subtitle Obscure Mode';
  @override
  String get shortcut_action_video_next_chapter => '次のチャプター';
  @override
  String get shortcut_action_video_next_frame => '次のフレーム';
  @override
  String get shortcut_action_video_next_subtitle => '次の字幕';
  @override
  String get shortcut_action_video_open_subtitle_align => '字幕波形アラインメントを開く';
  @override
  String get shortcut_action_video_pause => '一時停止';
  @override
  String get shortcut_action_video_play => '再生';
  @override
  String get shortcut_action_video_previous_chapter => '前のチャプター';
  @override
  String get shortcut_action_video_previous_frame => '前のフレーム';
  @override
  String get shortcut_action_video_previous_subtitle => '前の字幕';
  @override
  String get shortcut_action_video_replay_current_subtitle => '現在の字幕をリプレイ';
  @override
  String get shortcut_action_video_replay_previous_subtitle => '前の字幕をリプレイ';
  @override
  String get shortcut_action_video_reset_speed => '速度をリセット';
  @override
  String get shortcut_action_video_screenshot => 'スクリーンショット';
  @override
  String get shortcut_action_video_seek_backward => '巻き戻し';
  @override
  String get shortcut_action_video_seek_forward => '早送り';
  @override
  String get shortcut_action_video_speed_down => '遅くする';
  @override
  String get shortcut_action_video_speed_up => '速くする';
  @override
  String get shortcut_action_video_subtitle_delay_decrease => '字幕遅延 −';
  @override
  String get shortcut_action_video_subtitle_delay_increase => '字幕遅延 +';
  @override
  String get shortcut_action_video_toggle_favorite_sentence => '現在の文をお気に入りに登録';
  @override
  String get shortcut_action_video_toggle_fullscreen => '全画面の切り替え';
  @override
  String get shortcut_action_video_toggle_immersive_lock => 'イマーシブロックの切り替え';
  @override
  String get shortcut_action_video_toggle_mute => 'ミュート切り替え';
  @override
  String get shortcut_action_video_toggle_play_pause => '再生／一時停止';
  @override
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle Hide Secondary Subtitle';
  @override
  String get shortcut_action_video_toggle_shader_compare => 'シェーダー比較の切り替え';
  @override
  String get shortcut_action_video_toggle_subtitle_blur => '字幕ぼかしの切り替え';
  @override
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle Hide Subtitles';
  @override
  String get shortcut_action_video_toggle_subtitle_list => '字幕リストの切り替え';
  @override
  String get shortcut_action_video_volume_down => '音量−';
  @override
  String get shortcut_action_video_volume_up => '音量＋';
  @override
  String get shortcut_assign_pick_action => 'アクションに割り当て…';
  @override
  String get shortcut_clear => 'クリア';
  @override
  String shortcut_conflict({required Object s}) => '既に使用中: ${s}';
  @override
  String shortcut_conflict_replace_confirm({required Object s}) =>
      'このショートカットは既に「${s}」で使われています。現在の操作に移動しますか？';
  @override
  String get shortcut_gamepad => 'ゲームパッド';
  @override
  String get shortcut_gamepad_brand_label => 'ゲームパッドのボタンスタイル';
  @override
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  @override
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  @override
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  @override
  String get shortcut_gamepad_pick_list => 'リストから選択';
  @override
  String get shortcut_gamepad_unavailable_hint =>
      'GameInputコンポーネントが検出されません — ゲームパッドのサポートは利用できません。コントローラーサポートを有効にするには、Windows Gaming Servicesをインストールしてください。';
  @override
  String get shortcut_keyboard => 'キーボード';
  @override
  String get shortcut_mouse_back => '戻るボタン';
  @override
  String get shortcut_mouse_button => 'マウスボタン';
  @override
  String get shortcut_mouse_forward => '進むボタン';
  @override
  String get shortcut_mouse_left => '左クリック';
  @override
  String get shortcut_mouse_middle => '中クリック';
  @override
  String get shortcut_mouse_right => '右クリック';
  @override
  String get shortcut_press_gamepad => 'ゲームパッドのボタンを押してください...';
  @override
  String get shortcut_press_key => 'キーの組み合わせを押してください...';
  @override
  String get shortcut_press_mouse_button => 'マウスボタンを押してください...';
  @override
  String get shortcut_press_wheel => '修飾キーを押しながらここでスクロールしてください';
  @override
  String get shortcut_reset_confirm => 'このセクションのすべてのショートカットをデフォルトに戻しますか？';
  @override
  String get shortcut_reset_defaults => 'デフォルトに戻す';
  @override
  String get shortcut_scope_audiobook => 'オーディオブック';
  @override
  String get shortcut_scope_dictionary_popup => '辞書ポップアップ';
  @override
  String get shortcut_scope_dictionary_popup_note =>
      'ポインターが辞書ポップアップ上にあるときに動作します';
  @override
  String get shortcut_scope_gamepad => 'ゲームパッド';
  @override
  String get shortcut_scope_global => 'グローバル';
  @override
  String get shortcut_scope_global_external => 'グローバル（アプリ外）';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this hotkey.';
  @override
  String get shortcut_scope_home => 'ホーム';
  @override
  String get shortcut_scope_reader => 'リーダー';
  @override
  String get shortcut_scope_video => '動画';
  @override
  String get shortcut_settings_title => 'キーボードショートカット';
  @override
  String get shortcut_stop_capture => '停止';
  @override
  String get shortcut_tap_to_assign => '未設定・タップして割り当て';
  @override
  String get shortcut_view_list => 'リスト表示';
  @override
  String get shortcut_view_visual => 'コントローラーレイアウト';
  @override
  String get shortcut_wheel => 'マウスホイール';
  @override
  String get shortcut_wheel_down => 'ホイール下';
  @override
  String get shortcut_wheel_needs_modifier =>
      'ホイール単体ではポップアップがスクロールされます — Alt / Ctrl / Shift を押しながらスクロールしてください';
  @override
  String get shortcut_wheel_up => 'ホイール上';
  @override
  String get show_bottom_bar_cue => '現在の文を表示';
  @override
  String get show_expression_tags => '表現タグを表示';
  @override
  String get show_floating_lyric => 'フローティング字幕';
  @override
  String get show_media_notification => 'メディア通知を表示';
  @override
  String get show_options => 'オプション表示';
  @override
  String get show_top_progress_bar => '上部の読書進捗バー';
  @override
  String get skip_action => 'アクションをスキップ';
  @override
  String skip_action_seconds({required Object n}) => '${n} 秒';
  @override
  String get skip_action_sentence => '1文';
  @override
  String get sort_by => '並べ替え';
  @override
  String get sort_imported => 'インポート日';
  @override
  String get sort_recent_read => '最近読んだ';
  @override
  String get sort_recent_watched => '最近視聴した';
  @override
  String get sort_title => '名前';
  @override
  String get source_description_epub => 'EPUBの閲覧と辞書検索';
  @override
  String get source_name_bookshelf => '本棚';
  @override
  String get spread_auto => '自動';
  @override
  String get spread_direction => '見開き方向';
  @override
  String get spread_direction_ltr => '左から右';
  @override
  String get spread_direction_rtl => '右から左';
  @override
  String get spread_mode => '見開きモード';
  @override
  String get spread_off => 'オフ';
  @override
  String get spread_on => 'オン';
  @override
  String get srt_audio_unresolved => '音声ファイルが見つかりません。再紐付けしてください';
  @override
  String get srt_books_section => '字幕オーディオブック';
  @override
  String srt_delete_confirm({required Object title}) =>
      '『${title}』を削除しますか？この操作は元に戻せません。';
  @override
  String get srt_delete_title => '字幕ブックを削除';
  @override
  String get srt_epub_not_ready => '本の準備ができていません。再インポートしてください';
  @override
  String get srt_import => '本をインポート';
  @override
  String get srt_import_audio_needs_subtitle =>
      '音声には字幕との組み合わせが必要です。既存のEPUBに音声を紐付けるには、本棚で本を長押ししてください。';
  @override
  String get srt_import_author_hint => '著者（任意）';
  @override
  String get srt_import_error => 'インポートに失敗しました';
  @override
  String srt_import_files_selected({required Object n}) => '${n} 件のファイルを選択済み';
  @override
  String get srt_import_hint_epub_or_srt => 'EPUBまたは字幕ファイルを選択してインポートします。';
  @override
  String get srt_import_missing_input => 'EPUBまたは字幕ファイルを少なくとも1つ選択してください';
  @override
  String get srt_import_missing_title => '本のタイトルを入力してください';
  @override
  String get srt_import_pick_audio_dir => '音声ディレクトリを選択';
  @override
  String get srt_import_pick_audio_files => '音声ファイルを選択';
  @override
  String get srt_import_pick_cover => 'カバー画像を選択';
  @override
  String get srt_import_pick_epub => 'EPUBを選択';
  @override
  String get srt_import_pick_subtitle_files => '字幕ファイルを選択';
  @override
  String get srt_import_success => '本をインポートしました';
  @override
  String get srt_import_title_hint => '本のタイトル';
  @override
  String get startup_default_dictionary_tab => '起動時に辞書を開く';
  @override
  String get startup_default_dictionary_tab_hint =>
      '起動後すぐに辞書タブを表示します。オフにすると現在のデフォルトを維持します。';
  @override
  String get stash => 'スタッシュ';
  @override
  String get stash_added_multiple => '複数の項目がスタッシュに追加されました。';
  @override
  String stash_added_single({required Object term}) =>
      '『${term}』がスタッシュに追加されました。';
  @override
  String get stash_clear_description => 'すべての内容が消去されます。よろしいですか？';
  @override
  String stash_clear_single({required Object term}) =>
      '『${term}』がスタッシュから削除されました。';
  @override
  String get stash_clear_title => 'スタッシュを消去';
  @override
  String get stash_nothing_to_pop => 'スタッシュから取り出す項目がありません。';
  @override
  String get stash_placeholder => 'スタッシュに項目がありません';
  @override
  String get stat_all_time => '全期間';
  @override
  String get stat_bookshelf_compare => '本棚';
  @override
  String get stat_clear_all => '統計をクリア';
  @override
  String get stat_clear_all_confirm => 'クリア';
  @override
  String get stat_clear_all_reading_message =>
      'すべての読書時間、文字数、辞書引き/カード作成回数をクリアしますか？保存済みの単語、文、作成済みカードは保持されます。この操作は取り消せません。';
  @override
  String get stat_clear_all_title => 'すべての統計をクリア';
  @override
  String get stat_clear_all_video_message =>
      'すべての視聴時間、字幕文字数、辞書引き/カード作成回数をクリアしますか？保存済みの単語、文、作成済みカードは保持されます。この操作は取り消せません。';
  @override
  String get stat_daily_average => '日平均';
  @override
  String get stat_delete_message =>
      'このアイテムの時間、文字数、辞書引き/カード作成統計を削除しますか？保存済みの単語と文には影響しません。';
  @override
  String get stat_delete_title => '統計を削除';
  @override
  String get stat_fastest_day => 'Fastest Day';
  @override
  String get stat_favorited => 'お気に入り';
  @override
  String get stat_favorited_sentence => 'お気に入りの文';
  @override
  String stat_format_chars({required Object n}) => '${n} 文字';
  @override
  String stat_format_chars_wan({required Object n}) => '${n} 万字';
  @override
  String stat_format_days({required Object n}) => '${n}日';
  @override
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h} 時間 ${m} 分';
  @override
  String stat_format_minutes({required Object n}) => '${n} 分';
  @override
  String get stat_goal => 'Daily Goal';
  @override
  String get stat_goal_daily => 'Daily Goal';
  @override
  String get stat_goal_presets => 'プリセット';
  @override
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} 文字';
  @override
  String get stat_goal_reached => '目標達成';
  @override
  String stat_goal_recent_average({required Object n}) => '過去7日間：平均 ${n} 文字/日';
  @override
  String get stat_goal_set => 'Set Goal';
  @override
  String get stat_goal_unit_chars => '文字';
  @override
  String get stat_goal_weekly => 'Weekly Goal';
  @override
  String get stat_last_30_days => '過去30日間';
  @override
  String get stat_lookup => '検索';
  @override
  String get stat_metric_chars => '文字数';
  @override
  String get stat_metric_speed => '速度';
  @override
  String get stat_metric_time => '時間';
  @override
  String get stat_mined => 'カード作成';
  @override
  String get stat_no_data => '読書データがまだありません';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => 'アクティブ日数（7日）';
  @override
  String get stat_refresh => '更新';
  @override
  String get stat_slowest_day => 'Slowest Day';
  @override
  String get stat_sort_by_chars => '文字数順';
  @override
  String get stat_sort_by_speed => '速度順';
  @override
  String get stat_sort_by_time => '時間順';
  @override
  String get stat_speed_anomaly => '異常値';
  @override
  String get stat_speed_avg => '移動平均';
  @override
  String stat_speed_cph({required Object n}) => '${n} 文字/時';
  @override
  String get stat_speed_summary => 'Speed Summary';
  @override
  String get stat_streak => '連続日数';
  @override
  String get stat_this_month => '今月';
  @override
  String get stat_this_week => '今週';
  @override
  String get stat_today => '今日';
  @override
  String get stat_today_hourly => '今日の時間帯別';
  @override
  String get stat_trend_daily => '日';
  @override
  String get stat_trend_monthly => '月';
  @override
  String get stat_trend_weekly => '週';
  @override
  String get stat_typical_day => 'Typical Day';
  @override
  String get stat_vs_prev => '前14日比';
  @override
  String get stat_weighted_avg_speed => 'Weighted Avg';
  @override
  String get stop => '停止';
  @override
  String get storage_permissions => 'AnkiDroidへのエクスポートに必要な権限を許可してください。';
  @override
  String get stream => 'ストリーム';
  @override
  String get swipe_page_turn_sensitivity => 'スワイプでのページめくり感度';
  @override
  String get sync_account => 'アカウント';
  @override
  String get sync_audiobook => 'オーディオブック位置を同期';
  @override
  String get sync_audiobook_files => 'オーディオブックファイルを同期';
  @override
  String get sync_audiobook_files_warning => '音声と字幕は大きくなることがあります。';
  @override
  String sync_auth_error({required Object message}) => '認証失敗：${message}';
  @override
  String get sync_auto_sync => '自動同期';
  @override
  String get sync_backend => 'ストレージバックエンド';
  @override
  String get sync_backend_dropbox => 'Dropbox';
  @override
  String get sync_backend_ftp => 'FTP';
  @override
  String get sync_backend_google_drive => 'Google Drive';
  @override
  String get sync_backend_fushi_server => 'Fushi Interconnect';
  @override
  String get sync_backend_onedrive => 'OneDrive';
  @override
  String get sync_backend_sftp => 'SFTP';
  @override
  String get sync_backend_webdav => 'WebDAV';
  @override
  String get sync_checking_account => 'アカウント確認中…';
  @override
  String get sync_client_connected => '接続済み';
  @override
  String get sync_client_token => 'ピアアクセストークン';
  @override
  String get sync_client_token_manual => 'トークンを手動入力';
  @override
  String get sync_compare => 'データを比較';
  @override
  String get sync_compare_all_books => 'すべての書籍';
  @override
  String get sync_compare_all_local => 'すべて → ローカル';
  @override
  String get sync_compare_all_remote => 'すべて → リモート';
  @override
  String get sync_compare_all_skip => 'すべて → スキップ';
  @override
  String sync_compare_applied({required Object count}) => '${count}件の変更を適用しました';
  @override
  String sync_compare_apply({required Object count}) => '今すぐ同期 (${count})';
  @override
  String get sync_compare_close => '閉じる';
  @override
  String get sync_compare_conflicts => '競合';
  @override
  String get sync_compare_days => '日';
  @override
  String get sync_compare_delete_audiobook => 'リモートのオーディオブックを削除';
  @override
  String get sync_compare_delete_book => 'リモートの書籍を削除';
  @override
  String sync_compare_delete_confirm({required Object name}) =>
      '「${name}」をリモートから削除しますか？ローカルのデータは保持されます。この操作は取り消せません。';
  @override
  String get sync_compare_delete_dict => 'リモートの辞書を削除';
  @override
  String get sync_compare_deleted => 'リモートから削除しました';
  @override
  String get sync_compare_dictionaries => '辞書';
  @override
  String get sync_compare_download => 'ダウンロード';
  @override
  String get sync_compare_empty => '書籍が見つかりません';
  @override
  String get sync_compare_local => 'ローカル';
  @override
  String get sync_compare_no_content => 'クラウド上のデータのみ — ダウンロードできる書籍はありません';
  @override
  String get sync_compare_no_data => 'データなし';
  @override
  String get sync_compare_remote => 'リモート';
  @override
  String get sync_compare_select_all => 'すべて選択';
  @override
  String get sync_compare_skip => 'スキップ';
  @override
  String get sync_compare_title => 'ローカルとリモート';
  @override
  String get sync_compare_unavailable => 'Set up sync first';
  @override
  String get sync_compare_use_local => 'ローカル';
  @override
  String get sync_compare_use_remote => 'リモート';
  @override
  String get sync_connection_failed => '接続に失敗しました';
  @override
  String get sync_connection_success => '接続に成功しました';
  @override
  String get sync_content => '書籍ファイルを同期';
  @override
  String get sync_content_warning => '大きなファイルはストレージと通信量を消費します';
  @override
  String get sync_err_auth_expired => 'サインインの有効期限が切れました — もう一度サインインしてください。';
  @override
  String get sync_err_invalid_client => 'このビルドではクライアント認証情報が無効です。アプリを更新してください。';
  @override
  String get sync_err_network => 'サーバーに接続できません — ネットワークやプロキシ設定を確認してください。';
  @override
  String get sync_err_not_configured => 'このビルドには Google 同期の認証情報が設定されていません。';
  @override
  String get sync_err_quota => 'クラウドストレージの容量がいっぱいです（上限に達しました）。';
  @override
  String get sync_err_scope_upgrade =>
      '同期の権限が変更されました — 同期を続行するにはGoogleに再ログインしてください。';
  @override
  String get sync_err_timeout => '接続がタイムアウトしました — サーバーが時間内に応答しませんでした。';
  @override
  String sync_error({required Object message}) => '同期エラー：${message}';
  @override
  String get sync_exit_warning => '同期がまだ進行中です。今終了するとデータが失われる可能性があります。';
  @override
  String get sync_exit_warning_title => '同期中';
  @override
  String get sync_host => 'ホスト';
  @override
  String get sync_lan_discovery => 'LAN内のデバイス';
  @override
  String get sync_lan_no_devices => 'デバイスが見つかりません';
  @override
  String get sync_lan_scan_failed =>
      'スキャンに失敗しました — ネットワーク権限やファイアウォールを確認してください。';
  @override
  String get sync_not_signed_in => '未ログイン';
  @override
  String get sync_now => '今すぐ同期';
  @override
  String sync_now_audio_in({required Object count}) => '↓${count}件のオーディオブック';
  @override
  String sync_now_audio_out({required Object count}) => '↑${count}件のオーディオブック';
  @override
  String sync_now_books_in({required Object count}) => '↓${count}冊の書籍';
  @override
  String get sync_now_busy => '既に同期が実行中です';
  @override
  String sync_now_dicts_in({required Object count}) => '↓${count}件の辞書';
  @override
  String sync_now_dicts_out({required Object count}) => '↑${count}件の辞書';
  @override
  String sync_now_done({required Object detail}) => '同期完了 · ${detail}';
  @override
  String sync_now_failed_suffix({required Object count}) => ' · ${count}件失敗';
  @override
  String get sync_now_hint => '今すぐクラウドと双方向の完全同期を実行します';
  @override
  String sync_now_local_audio_in({required Object count}) =>
      '↓${count} 件の音声ソース';
  @override
  String sync_now_local_audio_out({required Object count}) =>
      '↑${count} 件の音声ソース';
  @override
  String get sync_now_no_changes => '変更なし';
  @override
  String get sync_pair_allow => '許可';
  @override
  String sync_pair_confirm_identity_body({required Object device}) =>
      '${device}とペアリングしようとしています。続行する前に、これが意図したデバイスであることを確認してください。';
  @override
  String get sync_pair_confirm_identity_title => 'デバイスを確認';
  @override
  String get sync_pair_continue => '続行';
  @override
  String get sync_pair_denied => '相手のデバイスがペアリングを拒否しました';
  @override
  String get sync_pair_deny => '拒否';
  @override
  String get sync_pair_enter_pin_body => '相手のデバイスに表示されている6桁のPINを入力してください。';
  @override
  String get sync_pair_enter_pin_title => 'PINを入力';
  @override
  String get sync_pair_failed => 'ペアリングに失敗しました';
  @override
  String get sync_pair_fingerprint_changed =>
      '証明書が変更されました — 安全のためペアリングを中止しました（傍受の可能性）。';
  @override
  String get sync_pair_fingerprint_label => '証明書フィンガープリント';
  @override
  String get sync_pair_not_fushi => 'このアドレスにFushiデバイスが見つかりません。アドレスは保存されました。';
  @override
  String get sync_pair_pairing => 'ペアリング中…';
  @override
  String get sync_pair_pin_label => 'このPINを相手のデバイスで入力してください';
  @override
  String get sync_pair_pin_waiting => '相手のデバイスがPINを入力するのを待っています…';
  @override
  String get sync_pair_pin_wrong => 'PINが違います — もう一度お試しください';
  @override
  String get sync_pair_repair => '再ペアリング';
  @override
  String get sync_pair_request_body => 'デバイスがペアリングを要求しています。このデバイスとの同期を許可しますか？';
  @override
  String get sync_pair_request_title => 'ペアリング要求';
  @override
  String get sync_pair_success => 'ペアリング完了 — トークンを入力しました';
  @override
  String get sync_pair_unavailable =>
      '相手のデバイスが準備できていないか、古いバージョンです。アップデートして同期を有効にしてから、もう一度お試しください。';
  @override
  String get sync_pair_unknown_device => '不明なデバイス';
  @override
  String get sync_paired_peer_remove => '削除';
  @override
  String get sync_paired_peer_removed => 'ペアリング済みデバイスを削除しました';
  @override
  String get sync_paired_peer_unknown => '不明なデバイス';
  @override
  String get sync_paired_peers_empty => 'ペアリング済みデバイスはまだありません';
  @override
  String get sync_paired_peers_title => 'ペアリング済みデバイス';
  @override
  String get sync_password => 'パスワード';
  @override
  String get sync_port => 'ポート';
  @override
  String get sync_private_key => '秘密鍵';
  @override
  String get sync_progress_audiobooks => 'オーディオブックを同期中';
  @override
  String get sync_progress_books => '書籍をインポート中';
  @override
  String get sync_progress_dictionaries => '辞書を同期中';
  @override
  String get sync_progress_local_audio => 'ローカル音声を同期中';
  @override
  String get sync_progress_reading => '読書データを同期中';
  @override
  String get sync_progress_videos => '動画を同期中';
  @override
  String get sync_role_locked_by_client =>
      '既に別のデバイスに接続しています。サーバーとして動作する前に接続を解除してください。';
  @override
  String get sync_role_locked_by_server =>
      'このデバイスはサーバーとして動作中です。他のデバイスに接続する前にサーバーをオフにしてください。';
  @override
  String get sync_section_actions => '同期操作';
  @override
  String get sync_section_backup => 'ローカルバックアップ';
  @override
  String get sync_section_content => '同期する内容';
  @override
  String get sync_section_host_server => 'このデバイスを同期サーバーにする';
  @override
  String get sync_section_host_server_footer =>
      '他のデバイスがこのデバイスから同期できるようにします。上記の同期バックエンドとは独立しています。';
  @override
  String get sync_section_method => '同期方法';
  @override
  String get sync_server_copy_token => 'トークンをコピー';
  @override
  String get sync_server_enable => '同期サーバーを有効化';
  @override
  String get sync_server_mode_active => 'このデバイスは同期サーバーです';
  @override
  String get sync_server_mode_clients_drive =>
      '接続中のクライアントが同期を開始します — このデバイスでの手動同期は不要です。';
  @override
  String get sync_server_port => 'サーバーポート';
  @override
  String sync_server_port_in_use({required Object port}) =>
      'ポート ${port} は既に使用中です — 別のポートを選んでください。';
  @override
  String get sync_server_regenerate_token => 'トークンを再生成';
  @override
  String get sync_server_running => 'サーバー稼働中';
  @override
  String get sync_server_stopped => 'サーバー停止中';
  @override
  String get sync_server_tls_enable => 'Interconnect暗号化（HTTPS/TLS）';
  @override
  String get sync_server_tls_repair_hint => '変更するとペアリング済みデバイスの再ペアリングが必要です';
  @override
  String get sync_server_token => 'アクセストークン';
  @override
  String get sync_show_remote_entries => 'リモートエントリを表示';
  @override
  String get sync_show_remote_entries_warning =>
      'ペアリング済みデバイスやクラウドにある書籍や動画を、ダウンロードまたはストリーミングできるプレースホルダーカードとして表示します。';
  @override
  String get sync_sign_in => 'ログイン';
  @override
  String get sync_sign_out => 'ログアウト';
  @override
  String get sync_signed_in => 'ログイン済み';
  @override
  String get sync_statistics => '統計を同期';
  @override
  String get sync_summary => 'クラウド・LAN P2P・ローカルバックアップ';
  @override
  String get sync_test_connection => '接続テスト';
  @override
  String get sync_use_tls => 'TLSを使用';
  @override
  String get sync_username => 'ユーザー名';
  @override
  String get sync_video_files => '動画ファイルをアップロード';
  @override
  String get sync_video_files_warning => '動画ファイルは非常に大きくなる場合があります。';
  @override
  String get sync_webdav_missing_fields => '未入力の項目があります';
  @override
  String sync_webdav_test_failed({required Object message}) =>
      '接続に失敗しました: ${message}';
  @override
  String get sync_webdav_url => 'サーバーURL';
  @override
  String tag_added_to_book({required Object name}) => 'タグ「${name}」を本に追加しました。';
  @override
  String tag_added_to_collection({required Object name}) =>
      'タグ ${name} をコレクションに追加しました。';
  @override
  String tag_added_to_video({required Object name}) => 'タグ「${name}」を動画に追加しました。';
  @override
  String tag_already_on_book({required Object name}) =>
      'タグ「${name}」は既にこの本に付いています。';
  @override
  String tag_already_on_collection({required Object name}) =>
      'タグ ${name} はこのコレクションに既にあります。';
  @override
  String tag_book_count({required Object count}) => '${count} 冊';
  @override
  String get tag_clear_filter => 'フィルターを解除';
  @override
  String get tag_color => '色';
  @override
  String tag_delete_confirm({required Object name}) => 'タグ「${name}」を削除しますか？';
  @override
  String get tag_filter_title => 'タグでフィルター';
  @override
  String get tag_label => 'タグ';
  @override
  String get tag_manage => 'タグを管理';
  @override
  String get tag_manage_title => 'タグ管理';
  @override
  String get tag_name_duplicate => 'この名前のタグは既に存在します。';
  @override
  String get tag_name_empty => 'タグ名を入力してください。';
  @override
  String get tag_name_hint => 'タグ名';
  @override
  String get tag_new => '新しいタグ';
  @override
  String get tag_no_books_for_filter => '選択したタグに一致する本がありません。';
  @override
  String get tag_no_tags_hint => 'タグがありません。作成して始めましょう。';
  @override
  String get tag_seed_stars => '星評価タグを追加';
  @override
  String get tag_seed_stars_added => '星評価タグを追加しました';
  @override
  String get tag_seed_stars_exists => '星評価タグは既に存在します';
  @override
  String get tap_empty_hide_chrome => 'フローティングコントロールバー';
  @override
  String get text_segmentation => 'テキスト分割';
  @override
  String get texthooker => 'テキストフッカー';
  @override
  String get texthooker_enabled => 'テキストフッカー（テキスト受信）';
  @override
  String get texthooker_enabled_hint =>
      'Textractor/mpv/agent に接続し、受信したテキストを辞書で引きます';
  @override
  String get theme_black => 'ブラック';
  @override
  String get theme_code_copied => 'テーマコードをクリップボードにコピーしました';
  @override
  String get theme_dark => 'ダーク';
  @override
  String get theme_ecru => '生成り';
  @override
  String get theme_eyecare => 'Eye Care';
  @override
  String get theme_gray => 'グレー';
  @override
  String get theme_light => 'ホワイト';
  @override
  String get theme_seed_preview_hint =>
      '下のスウォッチは、シードカラーから実際に生成される色をプレビューしています。特定の色をメインのアクセントとして固定したい場合は、「メインカラー」をオンにして明示的に指定してください。';
  @override
  String get theme_water => '水色';
  @override
  String toc_section({required Object n}) => '目次 (${n})';
  @override
  String get top_progress_pos_center => '中央';
  @override
  String get top_progress_pos_left => '左上';
  @override
  String get top_progress_pos_right => '右上';
  @override
  String get top_progress_position => '進捗表示位置';
  @override
  String get torrent_upload_intro_body =>
      'アップロード（シード）はデフォルトでオフです。オンにすると、ダウンロードしたコンテンツをスウォームに共有します — アップロード帯域幅を使用します。設定でいつでも変更できます。';
  @override
  String get torrent_upload_intro_confirm => '保存';
  @override
  String get torrent_upload_intro_enable => 'アップロード/シードを有効にする';
  @override
  String get torrent_upload_intro_keep_off => 'オフのまま';
  @override
  String get torrent_upload_intro_title => 'アップロード/シード';
  @override
  String get reader_blur_images => '画像をぼかす（ネタバレ防止）';
  @override
  String get reader_font_size => 'フォントサイズ';
  @override
  String get reader_font_vpal => 'VPAL（縦書き代替）';
  @override
  String get reader_furigana_hide => '非表示';
  @override
  String get reader_furigana_mode => 'ふりがな';
  @override
  String get reader_furigana_mode_hint => '';
  @override
  String get reader_furigana_partial => '一部';
  @override
  String get reader_furigana_show => '表示';
  @override
  String get reader_furigana_toggle => '切替';
  @override
  String get reader_horizontal => '横書き';
  @override
  String get reader_line_height => '行の高さ';
  @override
  String get reader_merge_image_pages => 'イラストページをテキストに統合';
  @override
  String get reader_merge_image_pages_subtitle =>
      '単独の画像のみの章を、独立ページではなく隣接するテキスト章にインラインで表示します';
  @override
  String get reader_no_books_added => '書庫に本がありません';
  @override
  String get reader_not_bound_cannot_rematch => '本に紐付けされていないため、再マッチングできません';
  @override
  String get reader_orient_mixed => '混合';
  @override
  String get reader_orient_upright => '正立';
  @override
  String get reader_page_columns_auto => '自動';
  @override
  String get reader_paginated => 'ページ送り';
  @override
  String get reader_paragraph_spacing => '段落間隔';
  @override
  String get reader_reader_styles => '書籍スタイル優先';
  @override
  String get reader_scroll => 'スクロール';
  @override
  String get reader_text_indentation => '段落インデント';
  @override
  String get reader_text_justify => '両端揃え';
  @override
  String get reader_theme => 'テーマ';
  @override
  String get reader_vert_kerning => 'カーニング（縦書き）';
  @override
  String get reader_vert_text_orient => '文字の向き';
  @override
  String get reader_vertical => '縦書き';
  @override
  String get reader_view_mode_label => 'ページ / スクロール';
  @override
  String get reader_vn => 'Visual Novel';
  @override
  String get reader_writing_direction => '組方向';
  @override
  String get undo => '元に戻す';
  @override
  String get unit_milliseconds => 'ms';
  @override
  String get unit_pixels => 'px';
  @override
  String untitled_book({required Object id}) => 'ブック ${id}';
  @override
  String get untitled_chapter => '（無題）';
  @override
  String get update_already_latest => '最新バージョンです';
  @override
  String get update_auto_install => '自動インストール';
  @override
  String get update_available => 'アップデートがあります';
  @override
  String update_cached_newer({required Object version}) =>
      'アップデート ${version} が利用可能（確認中…）';
  @override
  String update_cached_up_to_date({required Object version}) =>
      '最新の既知バージョン ${version} です（確認中…）';
  @override
  String get update_cancel => 'キャンセル';
  @override
  String get update_cancelled => 'ダウンロードをキャンセルしました';
  @override
  String get update_cancelling => 'キャンセル中…';
  @override
  String get update_channel_beta => 'ベータ';
  @override
  String get update_channel_debug => 'デバッグ';
  @override
  String get update_channel_stable => '安定版';
  @override
  String get update_check_failed => 'アップデートの確認に失敗しました';
  @override
  String get update_checking_now => 'アップデートを確認中…';
  @override
  String get update_connecting => '更新元に接続中…';
  @override
  String get update_debug_channel => 'デバッグ更新チャンネル';
  @override
  String get update_debug_channel_warning =>
      'デバッグチャンネルのビルドは不安定な場合があります。自己責任でご使用ください。';
  @override
  String get update_download => 'ダウンロード';
  @override
  String get update_download_failed => 'ダウンロードに失敗しました';
  @override
  String get update_download_restarted_from_zero => '最初からやり直し';
  @override
  String update_download_resume_status({required Object status}) =>
      'レジューム：${status}';
  @override
  String get update_download_resumed => 'レジューム済み';
  @override
  String update_download_size({
    required Object received,
    required Object total,
  }) => 'ダウンロード済み：${received} / ${total}';
  @override
  String update_download_source({required Object source}) => 'ソース：${source}';
  @override
  String update_download_speed({required Object speed}) => '速度：${speed}';
  @override
  String get update_downloading => 'アップデートをダウンロード中…';
  @override
  String get update_hide => '非表示';
  @override
  String update_install_current_executable({required Object path}) =>
      '実行中のプログラム：${path}';
  @override
  String update_install_deletefile_failure({
    required Object path,
    required Object code,
  }) => 'インストーラーが ${path} を置き換えられませんでした（コード ${code}）';
  @override
  String update_install_detected_location({
    required Object source,
    required Object path,
  }) => '検出されたインストール場所（${source}）：${path}';
  @override
  String update_install_failure_summary({required Object summary}) =>
      '原因：${summary}';
  @override
  String get update_install_incomplete_message =>
      'インストーラーは起動しましたが、Fushi はまだ以前のバージョンのままです。下のインストーラーログを確認してください。';
  @override
  String get update_install_incomplete_title => '更新が完了しませんでした';
  @override
  String update_install_installer_pid({required Object pid}) =>
      'インストーラー PID：${pid}';
  @override
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi はバージョン ${version} のインストーラーを起動できませんでした。下のログパスを確認してください。';
  @override
  String get update_install_launch_failed_title => '更新インストーラーが起動しませんでした';
  @override
  String update_install_launcher_pid({required Object pid}) =>
      '更新ランチャー PID：${pid}';
  @override
  String update_install_libmpv_holder({
    required Object pid,
    required Object path,
  }) => 'libmpv を保持しているプロセス：PID ${pid} - ${path}';
  @override
  String get update_install_log_not_observed =>
      '起動後のチェック時にインストーラーログが作成されませんでした。';
  @override
  String get update_install_log_observed => '起動後のチェック時にインストーラーログが作成されました。';
  @override
  String update_install_log_path({required Object path}) => 'インストーラーログ：${path}';
  @override
  String get update_install_manual_close_retry =>
      '上記の PID／パスから Fushi を手動で終了し、更新を再試行するかインストーラーを再実行してください。';
  @override
  String get update_install_parent_exit_not_observed =>
      '更新ランチャーは、インストーラー起動前に Fushi が終了したことを確認できませんでした。';
  @override
  String get update_install_parent_exit_observed =>
      'インストーラーの起動前に Fushi の終了を確認しました。';
  @override
  String update_install_path_mismatch({required Object warning}) =>
      'インストールディレクトリが一致しません：${warning}';
  @override
  String get update_install_permission_cancel => 'キャンセル';
  @override
  String get update_install_permission_message =>
      'システム設定でFushiにアプリのインストールを許可してから、再試行してください。';
  @override
  String get update_install_permission_retry => 'インストールを再試行';
  @override
  String get update_install_permission_title => 'アップデートのインストールを許可';
  @override
  String get update_install_restart_windows_hint =>
      '上記のプロセスを終了しても libmpv-2.dll がまだロックされている場合は、Windows を再起動してから再インストールしてください。';
  @override
  String update_install_running_process({
    required Object pid,
    required Object path,
  }) => '実行中の Fushi プロセス：PID ${pid} - ${path}';
  @override
  String update_install_success_message({required Object version}) =>
      'Fushi をバージョン ${version} に更新しました。';
  @override
  String get update_install_success_title => '更新をインストールしました';
  @override
  String update_install_target_dir({required Object path}) => 'インストール先：${path}';
  @override
  String get update_installing => 'インストール中…';
  @override
  String get update_mac_install_incomplete_message =>
      'アップデートを適用できなかったため、Fushiは以前のバージョンのままです。アップデートを再試行するか、最新リリースを手動でダウンロードしてください。';
  @override
  String update_message({required Object version}) =>
      'バージョン ${version} が利用可能です。';
  @override
  String update_network_failure({
    required Object host,
    required Object reason,
  }) => '${host} に接続できませんでした：${reason}';
  @override
  String get update_never_remind => '今後通知しない';
  @override
  String get update_skip => 'スキップ';
  @override
  String get url => 'URL';
  @override
  String get video_audio_track => '音声トラック';
  @override
  String get video_audio_track_empty => '切り替え可能な音声トラックがありません';
  @override
  String video_audio_track_switched({required Object label}) =>
      '音声トラック：${label}';
  @override
  String get video_auto_play_next_cancel => 'キャンセル';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      '${seconds} 秒後に次のエピソード';
  @override
  String get video_black_flash_notice_action => '対処法を見る';
  @override
  String get video_black_flash_notice_dont_show_again => '今後表示しない';
  @override
  String get video_bottom_next_cue => '次の字幕（なければ少し進む）';
  @override
  String get video_bottom_play_pause => '再生／一時停止';
  @override
  String get video_bottom_prev_cue => '前の字幕（なければ少し戻る）';
  @override
  String get video_bottom_seek_back => '10 秒戻る';
  @override
  String get video_bottom_seek_back_label => '−10秒';
  @override
  String get video_bottom_seek_forward => '10 秒進む';
  @override
  String get video_bottom_seek_forward_label => '+10秒';
  @override
  String video_chapter_n({required Object n}) => 'チャプター ${n}';
  @override
  String get video_chapters => 'チャプター';
  @override
  String get video_chapters_empty => 'チャプターなし';
  @override
  String get video_clip_export => 'クリップの書き出し';
  @override
  String get video_clip_export_cancelled => 'クリップのエクスポートがキャンセルされました';
  @override
  String video_clip_export_failed({required Object reason}) =>
      'クリップの書き出しに失敗しました：${reason}';
  @override
  String get video_clip_export_ffmpeg_failed => 'ffmpeg の実行に失敗しました';
  @override
  String get video_clip_export_ffmpeg_unavailable => 'ffmpeg が利用できません';
  @override
  String get video_clip_export_input_missing => 'ソース動画が利用できません';
  @override
  String get video_clip_export_invalid_range => '有効なクリップ範囲がありません';
  @override
  String get video_clip_export_output_missing => '書き出しファイルが作成されませんでした';
  @override
  String get video_clip_export_remote_download_required =>
      'クリップを書き出す前に、リモート動画をこのデバイスにダウンロードしてください';
  @override
  String get video_clip_export_source_changed =>
      '動画ソースが切り替わったため、クリップの書き出しを中止しました';
  @override
  String get video_clip_export_start => 'クリップの書き出しを開始';
  @override
  String get video_clip_export_stop => '停止してクリップを書き出す';
  @override
  String video_clip_exported({required Object path}) => 'クリップを書き出しました：${path}';
  @override
  String video_clip_exported_with_subtitles({required Object path}) =>
      '字幕付きクリップをエクスポートしました：${path}';
  @override
  String get video_clip_exporting => 'クリップを書き出し中…';
  @override
  String get video_continue_watching => 'Continue Watching';
  @override
  String get video_control_audio_track => '音声トラック';
  @override
  String get video_control_customize_hint => '各ボタンをプレーヤー上のどこに置くかを選ぶか、外します。';
  @override
  String get video_control_episode_list => 'エピソード一覧';
  @override
  String get video_control_favorite_sentence => '現在の文をお気に入りに登録';
  @override
  String get video_control_fullscreen => '全画面';
  @override
  String get video_control_next_cue => '次の字幕';
  @override
  String get video_control_palette_hint =>
      'ボタンをスロットにドラッグすると追加できます。同じボタンを複数のスロットに置くこともできます。';
  @override
  String get video_control_palette_title => 'すべてのボタン';
  @override
  String get video_control_play_pause => '再生／一時停止';
  @override
  String get video_control_previous_cue => '前の字幕';
  @override
  String get video_control_reject_required => '必須の操作ボタンはプレーヤー上に残す必要があります。';
  @override
  String get video_control_reject_unavailable => 'この操作ボタンはそこに配置できません。';
  @override
  String get video_control_reject_volume_bottom => '音量は下部バーにのみ配置できます。';
  @override
  String get video_control_remove_from_slot => '外す';
  @override
  String get video_control_reset_layout => 'プレーヤーのボタン配置を初期化';
  @override
  String get video_control_screenshot => 'スクリーンショット';
  @override
  String get video_control_seek_backward => '10 秒戻る';
  @override
  String get video_control_seek_forward => '10 秒進む';
  @override
  String get video_control_settings => 'プレーヤー設定';
  @override
  String get video_control_slot_bottom_center => '下部バー（中央）';
  @override
  String get video_control_slot_bottom_left => '下部バー（左）';
  @override
  String get video_control_slot_bottom_right => '下部バー（右）';
  @override
  String get video_control_slot_drop_hint => 'ここにボタンをドラッグ';
  @override
  String get video_control_slot_hidden => 'プレーヤーから外す';
  @override
  String get video_control_slot_screen_left => '画面左';
  @override
  String get video_control_slot_screen_right => '画面右';
  @override
  String get video_control_slot_top_center => '上部バー（中央）';
  @override
  String get video_control_slot_top_left => '上部バー（左）';
  @override
  String get video_control_slot_top_right => '上部バー（右）';
  @override
  String get video_control_speed => '倍速';
  @override
  String get video_control_subtitle_list => '字幕リスト';
  @override
  String get video_control_subtitle_track => '字幕トラック';
  @override
  String get video_control_title => '動画タイトル';
  @override
  String get video_control_volume => '音量';
  @override
  String get video_danmaku_manual_bind_empty => 'このエピソードの弾幕はまだありません。';
  @override
  String get video_danmaku_manual_bind_failed =>
      'このエピソードの弾幕を読み込めませんでした。後でもう一度お試しください。';
  @override
  String get video_danmaku_manual_bind_server_error =>
      '弾幕サーバーがリクエストを拒否しました。後でもう一度お試しください。';
  @override
  String get video_danmaku_manual_match_title => '弾幕を紐付け';
  @override
  String get video_danmaku_manual_network_error =>
      'ネットワークエラーです。接続を確認して再試行してください。';
  @override
  String get video_danmaku_manual_no_result => '一致するアニメが見つかりません。';
  @override
  String get video_danmaku_manual_search_action => '検索';
  @override
  String get video_danmaku_manual_search_hint => 'アニメタイトル';
  @override
  String get video_danmaku_manual_search_prompt =>
      'Dandanplayでアニメタイトルを検索し、エピソードを選択してください。';
  @override
  String get video_danmaku_manual_server_error => '検索に失敗しました。後でもう一度お試しください。';
  @override
  String video_delete_confirm({required Object title}) =>
      '『${title}』を削除しますか？この操作は取り消せません。';
  @override
  String get video_delete_title => '動画を削除';
  @override
  String get video_double_tap_next_cue => '次の文';
  @override
  String get video_double_tap_prev_cue => '前の文';
  @override
  String get video_drop_audio_unsupported =>
      '字幕ファイルを現在の動画の上にドロップしてください。音声ファイルはここで関連付けできません。';
  @override
  String get video_drop_subtitle_only => '字幕ファイルを現在の動画の上にドロップしてください。';
  @override
  String get video_episode_list => 'エピソード';
  @override
  String get video_episode_list_empty => 'エピソードがありません';
  @override
  String video_favorite_count({required Object count}) => 'お気に入り ${count} 句';
  @override
  String get video_file_error_content =>
      '動画ファイルを読み込めませんでした。ファイルが存在し、アプリがアクセス可能なディレクトリにあることを確認してください。';
  @override
  String get video_file_not_found => '動画ファイルが見つかりません';
  @override
  String get video_immersive_locked => 'イマーシブモードをオンにしました';
  @override
  String get video_immersive_mode_full => 'すべての操作';
  @override
  String get video_immersive_mode_lookup_only => '辞書引きのみ';
  @override
  String get video_immersive_mode_seek_lookup => 'ショートカット＋辞書引き';
  @override
  String get video_immersive_mode_unlock_only => 'ロック解除のみ';
  @override
  String get video_immersive_unlock => 'ロック解除';
  @override
  String get video_immersive_unlocked => 'イマーシブモードを終了しました';
  @override
  String get video_import_action => '動画をインポート';
  @override
  String get video_import_confirm => 'インポート';
  @override
  String get video_import_pick_subtitle => '字幕を選択';
  @override
  String get video_import_pick_video => '動画ファイルを選択';
  @override
  String get video_import_stream_advanced => '詳細設定（アンチリーチヘッダー）';
  @override
  String get video_import_stream_referer => 'Referer（任意）';
  @override
  String get video_import_stream_subtitle_url_field => '外部字幕URL（任意）';
  @override
  String get video_import_stream_url_field => '動画ストリームURL';
  @override
  String get video_import_stream_url_hint =>
      'HLS/m3u8/mp4ストリームURLを再生（外部字幕URLとアンチリーチReferer/User-Agentはオプション）';
  @override
  String get video_import_stream_user_agent => 'User-Agent（任意）';
  @override
  String get video_import_subtitle_optional =>
      '外部字幕（任意）。再生中はいつでも内蔵字幕／外部字幕を切り替えできます';
  @override
  String get video_import_title => '動画をインポート';
  @override
  String get video_jimaku_anime_match => 'アニメマッチ';
  @override
  String get video_jimaku_api_key => 'Jimaku APIキー';
  @override
  String get video_jimaku_api_key_hint =>
      'jimaku.cc/account で無料の API key を取得できます';
  @override
  String get video_jimaku_api_key_set => 'API key を設定済み';
  @override
  String video_jimaku_batch_done({
    required Object done,
    required Object total,
  }) => '字幕を取得しました：${done}/${total}';
  @override
  String get video_jimaku_batch_download => 'すべてダウンロード';
  @override
  String get video_jimaku_batch_title => 'コレクションの字幕を一括取得';
  @override
  String get video_jimaku_download_failed => 'ダウンロードに失敗しました';
  @override
  String get video_jimaku_downloaded => '字幕をダウンロードして適用しました';
  @override
  String get video_jimaku_episode => 'エピソード（任意）';
  @override
  String get video_jimaku_episode_hint => '空欄で全エピソードを表示';
  @override
  String get video_jimaku_fetch => '字幕を取得（Jimaku）';
  @override
  String get video_jimaku_filter => '結果を絞り込み（WEBRip、BD など）';
  @override
  String get video_jimaku_find_sources => '字幕を検索';
  @override
  String get video_jimaku_language => '言語';
  @override
  String get video_jimaku_language_all => 'すべて';
  @override
  String get video_jimaku_no_key => '先に Jimaku の API key を入力してください';
  @override
  String get video_jimaku_no_results => '字幕が見つかりませんでした';
  @override
  String get video_jimaku_query => '作品名';
  @override
  String get video_jimaku_search => '検索';
  @override
  String get video_jimaku_series => 'シリーズ';
  @override
  String get video_jimaku_show_all_episodes => '全エピソードを表示';
  @override
  String get video_jimaku_source => '字幕ソース';
  @override
  String get video_jimaku_source_hint =>
      'Jimakuエントリを選択してください。シーズンパックはエピソードごとに自動マッチされます。';
  @override
  String video_last_watched({required Object date}) => '最終視聴 ${date}';
  @override
  String get video_library_empty => 'まだ動画をインポートしていません';
  @override
  String get video_load_failed_back => '戻る';
  @override
  String get video_load_failed_generic => 'この動画を読み込めませんでした。';
  @override
  String get video_load_failed_network => 'ネットワークエラー - 接続を確認して再試行してください。';
  @override
  String get video_load_failed_not_found => 'このアイテムはライブラリに見つかりませんでした。';
  @override
  String get video_load_failed_retry => '再試行';
  @override
  String get video_load_failed_timeout =>
      '接続がタイムアウトしました - ネットワークが遅いか、ソースがレート制限しています。もう一度お試しください。';
  @override
  String get video_load_failed_title => '動画の読み込みに失敗';
  @override
  String get video_load_failed_unavailable =>
      '動画ストリームを取得できませんでした - 利用不可、地域/年齢制限、またはソースが変更された可能性があります。';
  @override
  String get video_loading_buffering => 'バッファリング中…';
  @override
  String get video_loading_connecting => 'ストリームに接続中…';
  @override
  String get video_loading_preparing => '準備中…';
  @override
  String get video_loading_subtitle => '字幕をダウンロード中…';
  @override
  String get video_menu_fullscreen => '全画面の切り替え';
  @override
  String get video_menu_lock => 'イマーシブ／ロックモード';
  @override
  String get video_menu_play_pause => '再生／一時停止';
  @override
  String get video_menu_subtitle_track => '字幕トラック';
  @override
  String get video_mining_image_mode => '動画カード画像';
  @override
  String get video_mining_image_mode_current_frame => '制作時のスクリーンショット';
  @override
  String get video_mining_image_mode_gif => 'アニメーションGIF（字幕クリップ）';
  @override
  String get video_mining_image_mode_hint =>
      '動画カードのカバーを字幕クリップのアニメーションにするか、静止フレームにするか、どのフレームにするかを選択します';
  @override
  String get video_mining_image_mode_subtitle_start => '字幕開始時のスクリーンショット';
  @override
  String get video_next_episode => '次のエピソード';
  @override
  String video_playlist_episodes({required Object count}) => '${count} 話';
  @override
  String get video_prev_episode => '前のエピソード';
  @override
  String get video_quality => '画質';
  @override
  String get video_quality_auto => '自動';
  @override
  String get video_quality_empty => 'この動画には切替可能な画質がありません';
  @override
  String get video_quality_enhancement_hint =>
      'オンにすると mpv 内蔵の高画質スケーリングで映像がくっきりします。アニメはもちろん実写ドラマや映画にも使えます。Anime4K などのシェーダーでさらに強化したいときは、動画の再生中に「画質強化」を開いてレベルを選んでください。';
  @override
  String get video_quality_load_failed => 'この動画の画質を読み込めませんでした。';
  @override
  String get video_quality_loading => '利用可能な画質を読み込み中…';
  @override
  String video_quality_switched({required Object label}) => '画質: ${label}';
  @override
  String get video_rename => '名前を変更';
  @override
  String get video_rename_hint => 'タイトル';
  @override
  String get video_render_skia_fix_confirm_action => '再起動';
  @override
  String get video_render_skia_fix_confirm_body =>
      'Impellerレンダラーを無効にし、アプリを再起動して適用します。';
  @override
  String get video_render_skia_fix_confirm_title => 'Skiaに切り替えて再起動しますか？';
  @override
  String get video_render_skia_fix_hint =>
      '音声は再生されるが動画が黒いままの場合に使用してください。Impellerを無効にし、再起動して適用します。';
  @override
  String get video_render_skia_fix_title => '画面が黒い？レンダラーを切替（Skia）';
  @override
  String video_resource_missing_message({required Object title}) =>
      '『${title}』のファイルが見つかりませんでした。場所が変更されたか、ドライブが接続されていない可能性があります。再インポートするか、このエントリを削除できます。';
  @override
  String get video_resource_missing_reimport => '再インポート';
  @override
  String get video_resource_missing_title => '動画が利用できません';
  @override
  String get video_resource_relink_success => '動画を再リンクしました';
  @override
  String get video_scrape_episodes => 'エピソード';
  @override
  String get video_scrape_info => 'シリーズ情報';
  @override
  String video_scrape_rating_votes({required Object count}) => '${count}件の評価';
  @override
  String get video_screenshot => 'スクリーンショット';
  @override
  String video_screenshot_failed_reason({required Object reason}) =>
      'スクリーンショットに失敗しました：${reason}';
  @override
  String video_screenshot_ready({required Object file}) =>
      'スクリーンショットの準備ができました：${file}';
  @override
  String video_screenshot_saved_to({required Object path}) =>
      'スクリーンショットを保存しました：${path}';
  @override
  String get video_secondary_subtitle_hint => 'プレーヤーで描画（辞書検索不可）';
  @override
  String get video_secondary_subtitle_sources => '副字幕';
  @override
  String get video_setting_auto_play_next => '次のエピソードを自動再生';
  @override
  String get video_setting_auto_scrape => 'シリーズ情報を自動取得';
  @override
  String get video_setting_av_delay => '字幕タイミング調整';
  @override
  String get video_setting_av_delay_hint =>
      'プラス = 字幕を遅らせる（全体を後ろにずらす）／マイナス = 字幕を早める。スライダー、＋／－ボタン、または直接入力で調整できます。';
  @override
  String get video_setting_danmaku_area => '表示エリア';
  @override
  String get video_setting_danmaku_area_hint => '弾幕が占有できる画面上部からの高さの割合。';
  @override
  String get video_setting_danmaku_block_rules => 'ブロックワード / 正規表現';
  @override
  String get video_setting_danmaku_block_rules_hint =>
      '1行に1ルール。/pattern/のようにスラッシュで囲むと正規表現、それ以外は大文字小文字を区別しないテキストマッチです。';
  @override
  String get video_setting_danmaku_block_rules_placeholder =>
      '例: ネタバレ または /pattern/';
  @override
  String get video_setting_danmaku_enabled => '弾幕を表示';
  @override
  String get video_setting_danmaku_enabled_hint =>
      'ローカルまたはオンラインで一致した弾幕を、操作を妨げずに動画上に表示します。';
  @override
  String get video_setting_danmaku_font_scale => 'フォントサイズ';
  @override
  String get video_setting_danmaku_font_scale_hint => '弾幕のテキストサイズを拡大縮小します。';
  @override
  String get video_setting_danmaku_manual_match => '手動マッチ';
  @override
  String get video_setting_danmaku_manual_match_hint =>
      '自動マッチが失敗または間違っている場合、タイトルでDandanplayを検索してエピソードを選択します。';
  @override
  String get video_setting_danmaku_max_active => '同時表示の上限';
  @override
  String get video_setting_danmaku_max_active_hint =>
      '1 フレームあたりに表示するコメント数を制限し、大きなファイルでも快適に動作させます。';
  @override
  String get video_setting_danmaku_online => 'Dandanplay でオンライン照合';
  @override
  String get video_setting_danmaku_online_hint =>
      '利用できるローカルの sidecar がない場合に、開いている動画を Dandanplay で照合し、関連コメントを取得します。';
  @override
  String get video_setting_danmaku_opacity => '不透明度';
  @override
  String get video_setting_danmaku_opacity_hint => '弾幕全体の透明度。';
  @override
  String get video_setting_danmaku_server_url => '弾幕サーバーの URL';
  @override
  String get video_setting_danmaku_speed => '速度';
  @override
  String get video_setting_danmaku_speed_hint =>
      '値が大きいほど速く、スクロール弾幕が早く画面を横切ります。';
  @override
  String get video_setting_double_tap => 'ダブルタップでシーク';
  @override
  String get video_setting_double_tap_hint => '動画の左右をダブルタップしてシークします';
  @override
  String get video_setting_double_tap_off => 'オフ';
  @override
  String get video_setting_double_tap_subtitle => '字幕';
  @override
  String get video_setting_immersive_mode => 'イマーシブモード';
  @override
  String get video_setting_immersive_mode_hint => 'サイドのロックボタンを押した後も使える操作を制御します';
  @override
  String get video_setting_lock_window_aspect => 'ウィンドウを動画の比率に固定';
  @override
  String get video_setting_long_press_speed => '長押し倍速';
  @override
  String get video_setting_long_press_speed_hint =>
      '画面を長押ししている間だけ、この倍速を一時的に使用します。';
  @override
  String get video_setting_mpv_aspect => 'アスペクト比';
  @override
  String get video_setting_mpv_aspect_auto => '元のまま';
  @override
  String get video_setting_mpv_brightness => '明るさ';
  @override
  String get video_setting_mpv_channels => 'チャンネル';
  @override
  String get video_setting_mpv_channels_auto => '自動';
  @override
  String get video_setting_mpv_channels_mono => 'モノラル';
  @override
  String get video_setting_mpv_channels_stereo => 'ステレオ（ダウンミックス）';
  @override
  String get video_setting_mpv_contrast => 'コントラスト';
  @override
  String get video_setting_mpv_correct_downscale => 'リニアダウンスケール';
  @override
  String get video_setting_mpv_deband => 'デバンド';
  @override
  String get video_setting_mpv_deinterlace => 'インターレース解除';
  @override
  String get video_setting_mpv_dither => 'ディザリング';
  @override
  String get video_setting_mpv_gamma => 'ガンマ';
  @override
  String get video_setting_mpv_group_advanced => '詳細設定';
  @override
  String get video_setting_mpv_group_audio => '音声';
  @override
  String get video_setting_mpv_group_color => '色';
  @override
  String get video_setting_mpv_group_decode => 'デコード';
  @override
  String get video_setting_mpv_group_geometry => '画面';
  @override
  String get video_setting_mpv_group_playback => '再生';
  @override
  String get video_setting_mpv_group_quality => '画質';
  @override
  String get video_setting_mpv_hue => '色相';
  @override
  String get video_setting_mpv_hwdec => 'ハードウェアデコード';
  @override
  String get video_setting_mpv_hwdec_auto => '自動（安全）';
  @override
  String get video_setting_mpv_hwdec_copy => '自動（コピー）';
  @override
  String get video_setting_mpv_hwdec_off => 'オフ';
  @override
  String get video_setting_mpv_interpolation => 'フレーム補間';
  @override
  String get video_setting_mpv_loop => 'ファイルをループ再生';
  @override
  String get video_setting_mpv_normalize => 'ダウンミックスのラウドネスを正規化';
  @override
  String get video_setting_mpv_panscan => 'パン＆スキャン（黒帯を切り取り）';
  @override
  String get video_setting_mpv_pitch => '速度変更時にピッチを保持';
  @override
  String get video_setting_mpv_raw => '追加の mpv オプション（1 行に 1 件、key=value）';
  @override
  String get video_setting_mpv_raw_hint =>
      'デスクトップのみ。実行中に適用できないオプション（vo、profile など）は無視されます。SVP/RIFE は外部ツールが必要なため非対応です。';
  @override
  String get video_setting_mpv_reset => 'すべて初期設定に戻す';
  @override
  String get video_setting_mpv_rotate => '回転';
  @override
  String get video_setting_mpv_saturation => '彩度';
  @override
  String get video_setting_mpv_sigmoid => 'シグモイドアップスケール';
  @override
  String get video_setting_mpv_sigmoid_hint =>
      'シグモイド曲線アップスケーリングはリンギングを低減しますがGPU負荷がかかります。パフォーマンスのためデフォルトはオフ。よりシャープなアップスケーリングが必要な場合はオンにしてください。';
  @override
  String get video_setting_mpv_zoom => 'ズーム';
  @override
  String get video_setting_picture_fit => '画面のスケーリング';
  @override
  String get video_setting_picture_fit_contain => '全体を表示';
  @override
  String get video_setting_picture_fit_cover => '全体を埋める';
  @override
  String get video_setting_picture_fit_fill => '引き伸ばして埋める';
  @override
  String get video_setting_picture_fit_hint => 'プレーヤー領域に画面をどう収めるか';
  @override
  String get video_setting_qb_category => 'qBittorrentカテゴリ';
  @override
  String get video_setting_qb_category_hint =>
      'Fushiが追加したダウンロードにこのカテゴリが設定されます。完了の追跡はこのカテゴリのみ監視します。';
  @override
  String get video_setting_qb_password => 'WebUIパスワード';
  @override
  String get video_setting_qb_url => 'qBittorrent WebUI URL';
  @override
  String get video_setting_qb_url_hint =>
      '例: http://127.0.0.1:8080。空欄でアニメダウンロードを無効にします。';
  @override
  String get video_setting_qb_username => 'WebUIユーザー名';
  @override
  String get video_setting_secondary_subtitle_obscure => '副字幕を隠す';
  @override
  String get video_setting_secondary_subtitle_obscure_hint =>
      '副字幕（翻訳）をぼかすまたは非表示にします';
  @override
  String get video_setting_seek_seconds => 'シークの秒数';
  @override
  String get video_setting_speed => '再生速度';
  @override
  String get video_setting_speed_step => '速度ステップ';
  @override
  String get video_setting_subtitle_appearance => '字幕の見た目';
  @override
  String get video_setting_subtitle_bg_color => '背景色';
  @override
  String get video_setting_subtitle_bg_opacity => '背景の不透明度';
  @override
  String get video_setting_subtitle_font_size => '文字サイズ';
  @override
  String get video_setting_subtitle_font_weight => '文字の太さ';
  @override
  String get video_setting_subtitle_no_background => '背景なし';
  @override
  String get video_setting_subtitle_no_background_hint => '字幕の背景を透明にします。';
  @override
  String get video_setting_subtitle_obscure => '字幕を隠す';
  @override
  String get video_setting_subtitle_obscure_blur => 'ぼかし';
  @override
  String get video_setting_subtitle_obscure_hide => '非表示';
  @override
  String get video_setting_subtitle_obscure_hint =>
      'リスニング練習用の字幕隠し方法を選択：オフ、ぼかし（ホバーまたはタップで表示）、非表示。';
  @override
  String get video_setting_subtitle_obscure_none => 'オフ';
  @override
  String get video_setting_subtitle_position => '垂直位置';
  @override
  String get video_setting_subtitle_reset => '初期設定に戻す';
  @override
  String get video_setting_subtitle_respect_ass => '字幕自体のスタイルを使用';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      '.ass字幕に組み込まれたフォント、色、アウトラインを使用します。オフにすると外観設定が強制されます。';
  @override
  String get video_setting_subtitle_shadow => '影';
  @override
  String get video_setting_subtitle_sync_input => 'オフセット (ms)';
  @override
  String get video_setting_subtitle_text_color => 'テキスト色';
  @override
  String get video_setting_theme => 'テーマ';
  @override
  String get video_setting_torrent_active_downloads => '最大アクティブダウンロード数';
  @override
  String get video_setting_torrent_active_seeds => '最大アクティブシード数';
  @override
  String get video_setting_torrent_anonymous => '匿名モード';
  @override
  String get video_setting_torrent_antileech => 'アンチリーチを有効化';
  @override
  String get video_setting_torrent_backend_qb => '外部qBittorrent';
  @override
  String get video_setting_torrent_ban_progress_cheat => '進捗偽装をBAN';
  @override
  String get video_setting_torrent_ban_relative_cheat => '相対進捗偽装をBAN';
  @override
  String get video_setting_torrent_ban_time => 'BAN期間（分）';
  @override
  String get video_setting_torrent_ban_time_hint => '0 = 永久';
  @override
  String get video_setting_torrent_connections_hint => '0 = エンジンデフォルト';
  @override
  String get video_setting_torrent_dht => 'DHT';
  @override
  String get video_setting_torrent_download_limit => 'ダウンロード制限（KB/s）';
  @override
  String get video_setting_torrent_encryption_disabled => '無効';
  @override
  String get video_setting_torrent_encryption_forced => '強制';
  @override
  String get video_setting_torrent_encryption_prefer => '優先';
  @override
  String get video_setting_torrent_limit_hint => '0 = 無制限';
  @override
  String get video_setting_torrent_listen_port => '待受ポート';
  @override
  String get video_setting_torrent_listen_port_hint => '0 = デフォルト（6881）';
  @override
  String get video_setting_torrent_lsd => 'ローカルピア検出（LSD）';
  @override
  String get video_setting_torrent_max_connections => '最大接続数';
  @override
  String get video_setting_torrent_max_ip_ports => 'IPあたりの最大ポート数';
  @override
  String get video_setting_torrent_memory_hint =>
      'エンジンのメモリを制限します。0 = 自動（デバイスRAMに基づく）。';
  @override
  String get video_setting_torrent_memory_limit => 'メモリ制限（MB）';
  @override
  String get video_setting_torrent_natpmp => 'NAT-PMPポートマッピング';
  @override
  String get video_setting_torrent_section_antileech => 'アンチリーチ';
  @override
  String get video_setting_torrent_section_session => 'セッション';
  @override
  String get video_setting_torrent_seed_ratio_hint =>
      'アップロード/ダウンロード比がこの値に達したら停止します。0 = 無制限。';
  @override
  String get video_setting_torrent_seed_ratio_limit => 'シード比率制限';
  @override
  String get video_setting_torrent_seed_time_hint =>
      'この時間シードした後にアップロードを停止します。0 = 無制限。';
  @override
  String get video_setting_torrent_seed_time_limit => 'シード時間制限（分）';
  @override
  String get video_setting_torrent_upload_enabled => 'アップロード / シードを有効化';
  @override
  String get video_setting_torrent_upload_enabled_hint =>
      'デフォルトはオフ。ダウンロード後にスウォームへシードバックします。';
  @override
  String get video_setting_torrent_upload_limit => 'アップロード制限（KB/s）';
  @override
  String get video_setting_torrent_upload_slots => '最大アップロードスロット数';
  @override
  String get video_setting_torrent_upnp => 'UPnPポートマッピング';
  @override
  String get video_setting_torrent_zero_default => '0 = デフォルト';
  @override
  String get video_setting_torrent_zero_off => '0 = オフ';
  @override
  String get video_settings_cat_audio => 'オーディオ';
  @override
  String get video_settings_cat_controls => '操作ボタン';
  @override
  String get video_settings_cat_danmaku => '弾幕';
  @override
  String get video_settings_cat_mpv => 'mpv';
  @override
  String get video_settings_cat_playback => '再生';
  @override
  String get video_settings_cat_shaders => '画質向上';
  @override
  String get video_settings_cat_subtitle => '字幕';
  @override
  String get video_settings_title => '動画設定';
  @override
  String get video_shader_anime4k_hint =>
      'ダウンロードするプリセットを選んでください。ダウンロード後、リストでチェックすると有効になります。デスクトップのみ。';
  @override
  String get video_shader_anime4k_title => 'Anime4K おすすめシェーダー';
  @override
  String get video_shader_download_anime4k => 'Anime4K プリセットをダウンロード';
  @override
  String video_shader_download_done({required Object count}) =>
      'シェーダーを ${count} 件ダウンロードしました';
  @override
  String get video_shader_download_failed => 'シェーダーのダウンロードに失敗しました';
  @override
  String video_shader_download_partial({
    required Object ok,
    required Object failed,
  }) => '${ok} 件をダウンロード、${failed} 件が失敗しました';
  @override
  String get video_shader_download_url => 'リンクからダウンロード';
  @override
  String get video_shader_downloaded_label => 'ダウンロード済み';
  @override
  String get video_shader_downloading => 'シェーダーをダウンロード中…';
  @override
  String get video_shader_first_use_body =>
      '想让动画画面更清晰，可以进入“画质增强”并点击“下载 Anime4K 推荐着色器”。下载后在已安装列表里勾选即可启用。';
  @override
  String get video_shader_first_use_download => 'ダウンロードして有効化';
  @override
  String get video_shader_first_use_title => '试试 Anime4K 画质增强';
  @override
  String get video_shader_import => 'シェーダーをインポート（.glsl）';
  @override
  String video_shader_import_done({required Object count}) =>
      'シェーダーを ${count} 件インポートしました';
  @override
  String get video_shader_import_from_mpv => 'ローカルの mpv からインポート';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自动搜索本机 mpv；未找到时可手动选择 mpv 目录。';
  @override
  String get video_shader_mobile_perf_hint =>
      'スマートフォンでは標準の GPU 描画パス上でのみシェーダーが有効になり、効果は機種の GPU によって異なります。高い段階ではコマ落ちや発熱が起こる場合があります。まずは低／中で試し、実機で効果を確認してください。';
  @override
  String video_shader_mpv_dir_current({required Object path}) =>
      'mpv フォルダ：${path}';
  @override
  String get video_shader_mpv_dir_empty => 'そのフォルダにシェーダーが見つかりません';
  @override
  String get video_shader_mpv_not_found => 'ローカルの mpv シェーダーが見つかりません';
  @override
  String get video_shader_mpv_pick_title => 'mpv からシェーダーをインポート';
  @override
  String get video_shader_pick_mpv_dir => 'Specify mpv folder';
  @override
  String get video_shader_preset_mode_a_fast => 'ほとんどの 1080p アニメ向け。GPU 負荷は軽め。';
  @override
  String get video_shader_preset_mode_a_hq => '1080p アニメ向けの最高画質。強力な GPU が必要。';
  @override
  String get video_shader_preset_mode_b_fast => 'リサンプリングのノイズがある古い 720p アニメ向け。';
  @override
  String get video_shader_preset_mode_b_hq =>
      'リサンプリングのノイズがある古い 720p アニメ向けの高画質。強力な GPU が必要。';
  @override
  String get video_shader_preset_mode_c_fast => '圧縮のにじみがある古い SD（480p）アニメ向け。';
  @override
  String get video_shader_preset_mode_c_hq =>
      '圧縮のにじみがある古い SD（480p）アニメ向けの高画質。強力な GPU が必要。';
  @override
  String get video_shader_quality_tier => '画質向上';
  @override
  String get video_shader_section_advanced => '詳細設定（手動シェーダー）';
  @override
  String get video_shader_section_installed => 'インストール済みシェーダー';
  @override
  String get video_shader_showing_original => 'シェーダーをオフ（原画）';
  @override
  String get video_shader_showing_shaded => 'シェーダーをオン';
  @override
  String get video_shader_tier_custom_hint =>
      'シェーダーをカスタム選択しています。上の段階を選ぶとプリセットに戻ります。';
  @override
  String get video_shader_tier_high => '高';
  @override
  String get video_shader_tier_high_hint =>
      'Anime4K HQ。よりシャープ。アニメに最も効果的で、実写でも利用可（効果は控えめ）。アッパーミドル GPU が必要（NVIDIA RTX 4060 / RTX 3070、AMD RX 6700 XT / RX 7700 XT）。';
  @override
  String get video_shader_tier_low => '低';
  @override
  String get video_shader_tier_low_hint =>
      'mpv 内蔵のシャープ化（ewa_lanczossharp）。あらゆる映像に有効（アニメ・実写とも）。ダウンロード不要・GPU 負荷最小。内蔵 GPU や古いカード（NVIDIA GTX 1050、AMD RX 560、Intel iGPU）はこれを。';
  @override
  String get video_shader_tier_medium => '中';
  @override
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast。アニメに最も効果的ですが、実写の映画/ドラマでも利用可（効果は控えめ）。ミドルレンジ GPU で動作（NVIDIA GTX 1660 / RTX 3050、AMD RX 6600）。';
  @override
  String get video_shader_tier_off => 'なし';
  @override
  String get video_shader_tier_off_hint => '向上なし。動画をそのまま再生します。';
  @override
  String get video_shader_tier_ultra => '最高';
  @override
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A（VL + 追加のディブラー/ノイズ除去復元）。レンダラーで実際に動作する最強の再構築——「高」の VL チェーンにもう一段の復元パスを追加。実写でも利用可（効果は控えめ）。強めの GPU 推奨（NVIDIA RTX 5090、AMD RX 7900 XTX）。弱い場合は下の段階を。';
  @override
  String get video_shader_url_hint => 'シェーダーの .glsl リンクを貼り付け（GitHub など）';
  @override
  String get video_shaders_empty => 'まだシェーダーをインポートしていません';
  @override
  String get video_stat_by_video => '動画別';
  @override
  String get video_stat_completed => '視聴済み';
  @override
  String get video_stat_no_data => 'まだ動画の統計データがありません';
  @override
  String get video_statistics => '動画の統計';
  @override
  String get video_subtitle_attach_playlist_hint =>
      '再生画面を開き、エピソードごとに字幕を添付してください';
  @override
  String video_subtitle_attached_to_video({
    required Object title,
    required Object count,
  }) => '『${title}』に字幕を添付しました（${count} 句）';
  @override
  String get video_subtitle_auto_align => '字幕を自動同期';
  @override
  String video_subtitle_auto_align_done({required Object ms}) =>
      '字幕を ${ms} ms 自動同期しました';
  @override
  String get video_subtitle_auto_align_low_confidence =>
      '自動同期できませんでした（明確な音声の一致が見つかりません）';
  @override
  String get video_subtitle_auto_align_running => '字幕を自動同期中…';
  @override
  String get video_subtitle_color_note => '動画の字幕の色はプレーヤー内で設定します。';
  @override
  String video_subtitle_delay_osd({required Object ms}) => '字幕タイミング：${ms} ms';
  @override
  String get video_subtitle_filter_all => 'すべて';
  @override
  String get video_subtitle_filter_favorites => 'お気に入り';
  @override
  String get video_subtitle_filter_favorites_empty => 'お気に入りの行はまだありません';
  @override
  String get video_subtitle_graphic_hint => '画像字幕 ・ 画面に表示 ・ 辞書引き不可';
  @override
  String video_subtitle_graphic_shown({required Object label}) =>
      '画像字幕を画面に表示しました（辞書引き不可）：${label}';
  @override
  String get video_subtitle_import_failed => '字幕のインポートに失敗しました';
  @override
  String get video_subtitle_import_file => '字幕ファイルをインポート…';
  @override
  String get video_subtitle_import_unsupported => '非対応の字幕形式です';
  @override
  String get video_subtitle_list => '字幕リスト';
  @override
  String get video_subtitle_list_auto_scroll => '自動スクロール';
  @override
  String get video_subtitle_list_empty => '字幕が読み込まれていません';
  @override
  String get video_subtitle_list_font_larger => '文字を大きく';
  @override
  String get video_subtitle_list_font_smaller => '文字を小さく';
  @override
  String get video_subtitle_list_jump => 'この文へジャンプ';
  @override
  String get video_subtitle_list_loading => '字幕を読み込み中…';
  @override
  String video_subtitle_load_failed({required Object label}) =>
      'この字幕を読み込めませんでした（画像字幕または非対応のトラックの可能性があります）：${label}';
  @override
  String get video_subtitle_off => '字幕をオフ';
  @override
  String get video_subtitle_remote_host => 'ペアリング済みデバイスの字幕';
  @override
  String video_subtitle_switched({required Object label}) => '字幕：${label}';
  @override
  String get video_subtitle_waveform_cue_list => '字幕リスト';
  @override
  String get video_subtitle_waveform_jump_playhead => '再生位置にジャンプ';
  @override
  String get video_subtitle_waveform_legend_cue => '字幕キュー';
  @override
  String get video_subtitle_waveform_legend_energy => '音量';
  @override
  String get video_subtitle_waveform_legend_playhead => '再生位置';
  @override
  String get video_subtitle_waveform_open => '波形アライメント';
  @override
  String get video_subtitle_waveform_open_hint => 'タップしてズームイン・位置合わせ';
  @override
  String get video_subtitle_waveform_scroll_hint =>
      'ドラッグしてタイムラインをスキャン、下のコントロールで位置を合わせます';
  @override
  String get video_subtitle_waveform_unavailable => 'このデバイスでは波形を利用できません';
  @override
  String get video_subtitle_waveform_zoom_in => 'ズームイン';
  @override
  String get video_subtitle_waveform_zoom_out => 'ズームアウト';
  @override
  String get video_subtitle_youtube_empty => 'このキャプショントラックにはテキストがありません';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang}（翻訳）';
  @override
  String video_watched_up_to({required Object time}) => '${time}まで視聴済み';
  @override
  String get video_windows_black_flash_notice_body =>
      'WindowsではGPU負荷が高い場合、動画が黒くフラッシュすることがあります。負荷を軽減するには、上の画質向上、シグモイドアップスケーリング、デバンディングをオフにするか、ハードウェアデコードをコピーに切り替えてください。';
  @override
  String get video_windows_black_flash_notice_title => 'Windowsで黒いちらつき？';
  @override
  String get view_illustrations => 'イラスト';
  @override
  String get volume_button_page_turning => '音量ボタンでページ送り';
  @override
  String get volume_key_sentence_nav => '音量キーで文ナビゲーション';
  @override
  String get wheel_page_turn_interval => 'マウスホイールのページめくり間隔';
  @override
  String get word_favorite_added => '単語をお気に入りに保存しました';
  @override
  String get word_favorite_removed => '単語をお気に入りから削除しました';
  @override
  String get yomitan_api_key => 'Yomitan API キー（任意）';
  @override
  String get yomitan_api_server => 'Yomitan API サーバー';
  @override
  String get yomitan_api_server_hint =>
      'yomitan-api クライアントから Fushi の辞書を検索できるようにします（ポート 19633）';
  @override
  String get yomitan_api_server_started => 'Yomitan APIサーバーが起動しました';
  @override
  String get yomitan_port_kill_action => 'プロセスを終了して再試行';
  @override
  String get yomitan_port_kill_confirm => 'プロセスを終了';
  @override
  String yomitan_port_kill_confirm_message({required Object process}) =>
      '現在このポートは次のプロセスが使用中です: ${process}';
  @override
  String yomitan_port_kill_confirm_title({required Object port}) =>
      'ポート${port}を使用中のプロセスを終了しますか？';
  @override
  String yomitan_port_kill_failed({required Object process}) =>
      '${process}を終了できませんでした。手動で終了してから再試行してください。';
  @override
  String yomitan_port_kill_protected({required Object process}) =>
      '${process}は重要なシステムプロセスです — Fushiでは終了しません。代わりにポートを変更してください。';
  @override
  String get yomitan_port_kill_self_instance => 'このプロセスは、このアプリの別のインスタンスです。';
  @override
  String get game_track_bgm => 'BGM / 除外済み';
  @override
  String get game_line_audio_no_voice => '音声なし';
  @override
  String get game_line_audio_overlong => '長すぎるクリップ';
  @override
  String get game_line_audio_overlong_hint =>
      '1行分よりはるかに長い音声です。BGMや他の混合音声が含まれている可能性があります';
  @override
  String get game_line_audio_loopback_hint =>
      'システムミックスのフォールバック。BGMが含まれる場合があります';
  @override
  String get game_line_recapture => '音声を再キャプチャ';
  @override
  String get game_line_recapture_stop => '再キャプチャを終了';
  @override
  String get game_line_tracks => 'この行のトラック';
  @override
  String get game_line_tracks_hint => 'この行の時点で各トラックをプレビューし、BGMを除外してください';
  @override
  String get game_line_track_use => 'この行に使用';
  @override
  String get game_user_tags_title => 'マイタグ';
  @override
  String get anki_lapis_section => 'Lapisカードスタイル';
  @override
  String get anki_lapis_font_scale => 'カードフォント倍率';
  @override
  String get anki_lapis_font_scale_hint =>
      'Lapisのすべてのフォントサイズを拡大縮小します。「スタイルをAnkiに適用」で反映されます。';
  @override
  String get anki_lapis_custom_css => 'カスタムCSS';
  @override
  String get anki_lapis_custom_css_hint =>
      'Lapisスタイルシートの保護されたユーザーセクションに追加されます。';
  @override
  String get anki_lapis_apply => 'スタイルをAnkiに適用';
  @override
  String get anki_lapis_apply_done => 'Lapisスタイルを適用しました。先にバックアップが保存されました。';
  @override
  String anki_lapis_apply_failed({required Object error}) =>
      'スタイルを適用できませんでした: ${error}';
  @override
  String get anki_lapis_up_to_date => 'Lapisスタイルは最新です。';
  @override
  String get anki_lapis_foreign_edit_title => 'Ankiでテンプレートが変更されています';
  @override
  String get anki_lapis_foreign_edit_body =>
      'AnkiのLapisテンプレートがFushiが最後に適用したものと異なります - 手動で編集された可能性があります。適用すると上書きされます。先にバックアップが保存されます。続行しますか？';
  @override
  String get anki_lapis_backup => 'Lapisテンプレートをバックアップ';
  @override
  String anki_lapis_backup_done({required Object path}) =>
      'テンプレートをバックアップしました: ${path}';
  @override
  String anki_lapis_backup_failed({required Object error}) =>
      'バックアップに失敗しました: ${error}';
  @override
  String get anki_lapis_not_found => 'AnkiにLapisノートタイプが見つかりません。';
  @override
  String get anki_lapis_restore => 'バックアップから復元';
  @override
  String get anki_lapis_restore_empty => 'バックアップはまだありません。';
  @override
  String get anki_lapis_restore_confirm =>
      'このバックアップでAnkiのLapisテンプレートを上書きしますか？現在の状態は先にバックアップされます。';
  @override
  String get anki_lapis_restore_done => 'テンプレートを復元しました。';
  @override
  String anki_lapis_restore_failed({required Object error}) =>
      '復元に失敗しました: ${error}';
  @override
  String get anki_dedup_section => 'Ankiメディアストレージの最適化';
  @override
  String get anki_dedup_scan => '重複をスキャン（変更なし）';
  @override
  String get anki_dedup_run => '今すぐ重複排除';
  @override
  String get anki_dedup_report_title => 'メディア重複排除レポート';
  @override
  String anki_dedup_report_body({
    required Object groups,
    required Object removed,
    required Object size,
    required Object notes,
    required Object models,
    required Object skipped,
  }) =>
      '${groups}件の重複グループ、${removed}件の余分なコピー（${size}）、${notes}件のノートと${models}件のノートタイプを書き換え、${skipped}件をスキップしました。';
  @override
  String get anki_dedup_report_dry_note => 'スキャンのみ - 変更は行われていません。';
  @override
  String get anki_dedup_report_clean => 'バイト単位で同一の重複は見つかりませんでした。';
  @override
  String anki_dedup_failed({required Object error}) => '重複排除に失敗しました: ${error}';
  @override
  String get anki_dedup_unavailable => 'このマシンでAnkiが実行中である必要があります（AnkiConnect）。';
  @override
  String get anki_dedup_run_hint => 'まずスキャンして削除対象を一覧表示します。確認するまで何も削除されません。';
  @override
  String get anki_dedup_plan_title => '削除するファイル';
  @override
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '${count}件の余分なコピー、${size}回収可能。各ファイルの1つのコピーが保持され、すべての参照が先にそこに書き換えられます。再エンコードは行われません。';
  @override
  String anki_dedup_plan_entry({
    required Object file,
    required Object size,
    required Object canonical,
  }) => '${file}を削除（${size}）- ${canonical}を保持';
  @override
  String get anki_dedup_plan_delete => 'これらのファイルを削除';
  @override
  String get anki_dedup_plan_journal =>
      'すべての書き換えと削除のジャーナルが先にバックアップフォルダに書き込まれます。';
  @override
  String get manga_ocr_default_engine => 'デフォルトOCRエンジン';
  @override
  String get manga_ocr_engine_auto => '自動（Lensにはアップロードしません）';
  @override
  String get manga_ocr_engine_local_onnx => 'ローカルONNX';
  @override
  String get manga_ocr_engine_google_lens => 'Google Lens';
  @override
  String get manga_google_lens_disclosure_title => 'マンガページをGoogle Lensに送信しますか？';
  @override
  String get manga_google_lens_disclosure_body =>
      'このマンガの認識では、OCRテキストなしの縮小されたJPEGコピーをGoogleに送信します。結果はこのデバイスにキャッシュされます。非公式エンドポイントのため停止する場合があります。同意しない限りアップロードは行われません。';
  @override
  String get manga_google_lens_disclosure_accept => '同意してOCRを開始';
  @override
  String get manga_google_lens_disclosure_decline => 'キャンセル';
  @override
  String get manga_reading_direction => '読み方向';
  @override
  String get manga_direction_rtl => '右から左';
  @override
  String get manga_direction_ltr => '左から右';
  @override
  String get manga_zoom => 'ズーム';
  @override
  String get manga_jump_to_page => 'ページにジャンプ';
  @override
  String get manga_previous_page => '前のページ';
  @override
  String get manga_next_page => '次のページ';
  @override
  String manga_page_number_hint({required Object total}) => 'ページ番号（1-${total}）';
  @override
  String get manga_import_direct => 'OCRなしでインポート';
  @override
  String get manga_library => 'マンガ';
  @override
  String get manga_import_action => '漫画をインポート';
  @override
  String get game_scrape_search => '検索';
  @override
  String get game_scrape_use => '使用';
  @override
  String get game_scrape_search_failed => '検索に失敗しました。ネットワークを確認して再試行してください。';
  @override
  String get game_remove_confirm =>
      'このゲームをライブラリから削除しますか？ディスク上のゲームファイルは削除されません。';
  @override
  String manga_ocr_acceleration_status({required Object engine}) =>
      'OCRアクセラレーション: ${engine}';
  @override
  String manga_ocr_acceleration_degraded({
    required Object engine,
    required Object reason,
  }) => 'GPUアクセラレーションを利用できません。${engine}でOCRを実行中: ${reason}';
  @override
  String get media_tracking_status => 'ステータス';
  @override
  String get media_tracking_signup => 'Bangumiアカウントを作成';
  @override
  String get media_tracking_game => 'ゲーム';
  @override
  String get download_rate_limit_lan_exempt =>
      'ローカルネットワーク内では適用されません。LAN転送は常に最大速度で実行されます。';
  @override
  String get scrape_reason_network =>
      'カバーソースから有効な応答を取得できませんでした。ネットワークを確認して再試行してください。';
  @override
  String get scrape_reason_server => 'カバーソースがエラーを返しました。後で再試行するか、別の候補を選択してください。';
  @override
  String get common_more_actions => 'その他の操作';
  @override
  String get collection_already_has_item => 'このアイテムは既にコレクションに含まれています。';
  @override
  String get drag_drop_manga_archive_unsupported =>
      '.cbr/.rarコミックアーカイブはインポートできません — .cbzまたは画像フォルダに再パックしてください。';
  @override
  String get collection_add_failed => 'アイテムをコレクションに追加できませんでした。もう一度お試しください。';
  @override
  String get anki_dedup_auto => '自動処理';
  @override
  String get anki_dedup_auto_hint =>
      'デフォルトはオフ。オンにすると、Fushiは起動時にスキャンし（週に1回まで）、まずリストを表示します — 確認するまで何も削除されません。';
  @override
  String get anki_dedup_auto_delete => '確認なしで自動削除';
  @override
  String get anki_dedup_auto_delete_hint =>
      '確認ダイアログをスキップします。バイト単位で同一の余分なコピーのみが削除され、再エンコードは行われませんが、削除は取り消せません。';
  @override
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      '${count}件の重複Ankiメディアファイルが見つかりました（${size}回収可能）';
  @override
  String get anki_dedup_auto_review => '確認';
  @override
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      '${count}件の重複Ankiメディアファイルを削除しました。${size}を回収しました';
  @override
  String anki_lapis_backup_done_pruned({
    required Object path,
    required Object count,
  }) => '${path}にバックアップしました（${count}件の古いバックアップが90日/10件保持ポリシーにより削除されました）';
  @override
  String get game_audio_fallback_policy => '音声フォールバック';
  @override
  String get game_audio_fallback_full => 'ミックス音声を許可';
  @override
  String get game_audio_fallback_clean => 'クリーンソースのみ';
  @override
  String get game_audio_fallback_resource => 'オリジナルリソースのみ';
  @override
  String get game_track_silent_at_cue => 'この行に音声がありません';
  @override
  String get game_audio_fallback_full_hint =>
      'クリーンな音声がキャプチャされない場合、システムミックスにフォールバックします。クリップにBGMや効果音が含まれる場合があります。';
  @override
  String get game_audio_fallback_clean_hint =>
      'ゲームリソース音声とエンジンPCMのみを使用します。音声のない行はBGMを拾う代わりに音声なしで制作されます。';
  @override
  String get game_audio_fallback_resource_hint =>
      'ゲームに同梱されたオリジナル音声ファイルが必要です。欠落している場合は制作が拒否されます。';
  @override
  String get game_line_audio_suppressed => 'ミックスをスキップ';
  @override
  String get game_line_audio_suppressed_hint =>
      'この行にクリーン音声ソースが音声を出力せず、音声フォールバックポリシーによりシステムミックスがスキップされました。この行に音声がないという意味ではありません。';
  @override
  String get video_setting_torrent_limit_lan => 'LAN内のピアにも制限を適用';
  @override
  String get video_setting_torrent_limit_lan_hint =>
      'デフォルトはオフ: ローカルネットワーク上のピアとの転送は上記の制限を無視します。';
  @override
  String get download_rate_limit_lan_included => 'ローカルネットワーク内にも適用されます。';
  @override
  String get video_collection_no_local_member => 'このコレクションにローカル動画がありません';
  @override
  String get gal_mining_image_mode => 'ゲームカード画像';
  @override
  String get gal_mining_image_mode_screenshot => 'スクリーンショット';
  @override
  String get gal_mining_image_mode_hint =>
      'ゲームシーンは1行内でほぼ動かないため、静止スクリーンショットの方がサイズが小さく、通常は十分です。';
  @override
  String get shortcut_scope_manga => 'マンガ';
  @override
  String get shortcut_action_manga_page_forward => '次のページ';
  @override
  String get shortcut_action_manga_page_backward => '前のページ';
  @override
  String get shortcut_action_manga_dismiss_dict => '辞書を閉じる';
  @override
  String get video_setting_jimaku_default_language => 'デフォルト字幕言語';
  @override
  String get video_jimaku_api_key_settings_hint => '設定 → 動画 → 字幕でも編集できます';
  @override
  String get anime_download_subs_episodes_unverified =>
      'エピソード番号はこのパックに対して未検証です - 別のシーズンの字幕の可能性があります。';
  @override
  String get anime_download_subs_deferred => '字幕はダウンロード後にパックの実際のファイルからマッチされます';
  @override
  String get anime_download_subs_pending => '字幕: ダウンロード完了まで保留';
  @override
  String get anime_download_subs_unmatched => '字幕: このパックに一致なし';
  @override
  String get stat_source_breakdown => 'ソース別';
  @override
  String stat_format_pages({required Object n}) => '${n}ページ';
  @override
  String anime_download_subs_season_mismatch({required Object season}) =>
      'シーズン${season}に一致する字幕エントリがありません - 自動選択されませんでした。それでも必要な場合は手動で選択してください。';
  @override
  String get media_tracking_card_title => 'Bangumi同期';
  @override
  String get media_tracking_not_connected =>
      '未接続。進捗はローカルに保存され、Bangumiには送信されません。';
  @override
  String get media_tracking_last_sync => '最終同期';
  @override
  String get media_tracking_never_synced => '同期なし';
  @override
  String media_tracking_linked_count({required Object n}) => '${n}件リンク済み';
  @override
  String media_tracking_pending_count({required Object n}) => '${n}件送信待ち';
  @override
  String get media_tracking_all_synced => 'すべて送信済み';
  @override
  String get media_tracking_unauthorized =>
      'Bangumiがアクセストークンを拒否しました。設定で再接続してください。';
  @override
  String get media_tracking_open_subject => 'Bangumiで開く';
  @override
  String get media_tracking_manage_links => 'リンクを管理';
  @override
  String get media_tracking_last_error => '最後のエラー';
  @override
  String get shortcut_action_popup_mine_entry => 'カードを作成（マイニング）';
  @override
  String get game_upscaling_auto_hint =>
      'Magpieが既に実行中の場合はそれを使用し、そうでなければFushiに同梱されたバージョンを使用します。ダウンロードは不要です。';
  @override
  String get game_upscaling_installed_only_hint =>
      'Magpieが既にインストールまたは実行中の場合のみ使用します。Fushiの同梱バージョンは展開しません。';
  @override
  String get game_upscaling_off_hint => 'ゲームウィンドウをアップスケールしません。';
  @override
  String get game_helper_bundle_missing =>
      'このビルドにはゲームフックヘルパーが同梱されていません。Fushiを更新して取得してください。';
  @override
  String game_upscaling_pick_title({required Object name}) =>
      '${name}のウィンドウアップスケーリング';
  @override
  String get game_upscaling_pick_body =>
      'キャプチャセッション中にMagpieでこのゲームウィンドウをアップスケールします。ゲームごとに設定 - ネイティブ解像度が画面より低いゲームにのみ有効です。GPUを使用します。';
  @override
  String get game_upscaling_hint_not_installed =>
      'Magpieが準備できていません。ウィンドウアップスケーリングを自動に設定してFushi同梱版を使用してください。それでも起動しない場合はFushiを更新または再インストールしてください。';
  @override
  String media_source_count_manga({required Object n}) => '${n}巻';
  @override
  String get library_view_shelf => '本棚';
  @override
  String get library_view_browse => '発見';
  @override
  String get library_view_media => 'ライブラリ';
  @override
  String get scrape_failure_detail_show => '詳細を表示';
  @override
  String get scrape_failure_detail_hide => '詳細を非表示';
  @override
  String get media_tracking_retry_mapping => 'マッチングを再試行';
  @override
  String get media_tracking_retry_matched => 'マッチして現在の進捗をキューに追加しました';
  @override
  String get media_tracking_retry_no_match => '一致が見つかりませんでした。手動リンクをお試しください。';
  @override
  String get game_statistics => 'ゲーム統計';
  @override
  String get game_stat_by_game => 'ゲーム別';
  @override
  String get stat_clear_all_game_message =>
      'すべてのゲームプレイ時間とセッション数をクリアしますか？ゲームライブラリとアクティビティタイムラインは保持されます。この操作は取り消せません。';
  @override
  String batch_selection_stale_skipped({
    required Object n,
    required Object m,
  }) => '選択した${n}件中${m}件が存在しなくなったためスキップしました';
  @override
  String get game_text_thread_unset => 'スレッドが未選択 — キャプチャを開始するにはスレッドを選んでください';
  @override
  String get media_tracking_watched_show => '視聴済みアニメをすべて表示';
  @override
  String get media_tracking_watched_title => 'Bangumiで視聴済み';
  @override
  String get media_tracking_watched_empty => 'このBangumiアカウントには視聴済みのアニメがありません。';
  @override
  String media_tracking_watched_load_failed({required Object error}) =>
      '視聴済みアニメを読み込めませんでした: ${error}';
  @override
  String media_tracking_watched_progress({required Object n}) =>
      '${n}エピソード視聴済み';
  @override
  String get media_tracking_manual_required => '手動リンクが必要';
  @override
  String media_tracking_manual_required_count({required Object n}) =>
      '${n}件のアイテムに手動リンクが必要です';
  @override
  String get media_tracking_manual_required_hint =>
      'これらのローカルアイテムには既に進捗がありますが、Bangumiにリンクされていません。';
  @override
  String get media_tracking_no_local_history => 'リンクが必要な視聴、読書、ゲームの進捗はありません。';
  @override
  String media_tracking_more_manual_required({required Object n}) =>
      'さらに${n}件のアイテムに手動リンクが必要です';
  @override
  String get manga_import_hint =>
      'マンガフォルダ、.cbz/.zipページアーカイブ、.pdf、または.mokuroファイルを選択してください。';
  @override
  String get manga_import_pick_file => 'マンガファイルを選択';
  @override
  String get manga_import_pick_folder => 'マンガフォルダを選択';
  @override
  String get manga_import_missing_input => 'まずマンガファイルまたはフォルダを選択してください。';
  @override
  String get manga_import_detected_title => 'マンガのようです';
  @override
  String get manga_import_detected_confirm => 'マンガとしてインポート';
  @override
  String manga_import_detected_message({required Object name}) =>
      '"${name}"はマンガファイルのため、書籍インポーターの代わりにマンガインポーターで処理されます。';
  @override
  String get video_jimaku_source_loading => '字幕の利用状況を確認中...';
  @override
  String get video_jimaku_source_failed => '字幕の利用状況を確認できませんでした。再度検索してください。';
  @override
  String get video_jimaku_language_unknown => '言語ラベルなし';
  @override
  String video_jimaku_source_summary({
    required Object files,
    required Object episodes,
    required Object languages,
  }) => '${files}件の字幕ファイル · ${episodes}エピソード · ${languages}';
  @override
  String video_jimaku_episode_unlabeled({
    required Object episode,
    required Object count,
  }) => 'エピソード${episode}のラベル付き字幕がありません。${count}件のラベルなしファイルが一致する可能性があります';
  @override
  String video_jimaku_episode_unavailable({required Object episode}) =>
      'エピソード${episode}の字幕が見つかりません';
  @override
  String video_jimaku_episode_available({
    required Object count,
    required Object languages,
  }) => '${count}件の字幕が利用可能 · ${languages}';
  @override
  String get manga_online_source_disabled =>
      'このインターネットソースは無効です。カタログを閲覧するにはソースで有効にしてください。';
  @override
  String get selection_web_search => 'ウェブで検索';
  @override
  String get selection_web_search_unavailable => 'ウェブ検索に対応するアプリがありません。';
  @override
  String get selection_share_failed => '共有シートを開けませんでした。';
  @override
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang}（自動生成）';
  @override
  String get anki_dedup_progress_title => 'メディアの重複排除中';
  @override
  String anki_dedup_progress_scanning({required Object count}) =>
      'メディアフォルダをスキャン中…（${count}件のファイルが見つかりました）';
  @override
  String anki_dedup_progress_hashing({
    required Object done,
    required Object total,
  }) => '同サイズのファイルを比較中…（${done} / ${total}）';
  @override
  String anki_dedup_progress_resolving({
    required Object done,
    required Object total,
  }) => '重複を処理中…（${done} / ${total}）';
  @override
  String anki_dedup_progress_freed({required Object size}) => 'これまでに${size}を解放';
  @override
  String get anki_dedup_cancelling => 'キャンセル中…';
  @override
  String get anki_dedup_cancelled => '重複排除がキャンセルされました。完了済みの変更は保持されます。';
  @override
  String get anki_dedup_report_cancelled_note =>
      '途中でキャンセルされました — 以下の数値は完了した分のみです。';
  @override
  String get anki_dedup_plan_busy_note =>
      '実行中はAnkiが応答しなくなる場合があります。完了するまでAnkiの使用を避けてください。';
  @override
  String get video_setting_subtitle_position_secondary => '副字幕の位置';
  @override
  String get dict_download_learning_language => '学習言語';
  @override
  String get dict_category_bilingual => '対訳';
  @override
  String get dict_category_monolingual => '単言語';
  @override
  String get shortcut_action_video_hold_speed => '長押しで一時速度変更';
  @override
  String get handlebar_phonetic_transcriptions => '発音表記';
  @override
  String get sync_progress_preparing => '同期を準備中';
  @override
  String get sync_progress_collections => 'コレクションを同期中';
  @override
  String get sync_progress_book => '書籍を同期中';
  @override
  String sync_progress_book_titled({required Object title}) => '${title}を同期中';
  @override
  String sync_last_completed({required Object count}) =>
      '最終同期: 完了（${count}チャンネル）';
  @override
  String get sync_last_no_channels => '最終同期: 同期チャンネルが未接続のため同期なし';
  @override
  String get sync_last_nothing => '最終同期: 同期対象なし';
  @override
  String get sync_last_auto_disabled => '前回の同期: スキップ - 自動同期がオフです';
  @override
  String get sync_last_cooled_down => '前回の同期: スキップ - 最近同期済み';
  @override
  String get sync_last_failed => '前回の同期: 失敗';
  @override
  String anime_download_no_results_detail({
    required Object query,
    required Object filters,
  }) =>
      'サービスは正常に応答しましたが、0件でした。クエリ: ${query}; フィルター: ${filters}。別のタイトルを試すか、フィルターを緩めてください。';
  @override
  String get anime_download_streaming_ready => 'ライブラリに追加済み · ダウンロード継続中';
  @override
  String get anime_download_unfiltered => 'Trustedフィルターなし';
  @override
  String get interconnect_enable_footer =>
      '使い方：ライブラリを持つデバイスで下の同期サーバースイッチをオンにし、もう一方のデバイスでそのサーバーのアドレスを追加してペアリングします。各デバイスはサーバーまたはクライアントのいずれか一方の役割のみ担えます。';
  @override
  String get interconnect_peer_list_title => '追加済みのピア';
  @override
  String get interconnect_peer_list_empty =>
      'ピアはまだ追加されていません。下のLANデバイスリストから検出されたデバイスを選んで自動ペアリングするか、ピアアドレスを手動で追加してください。';
  @override
  String get anki_lapis_visual_editor => 'ビジュアルエディター';
  @override
  String get anki_lapis_visual_editor_hint =>
      'Lapisカードをプレビューし、CSSを書かずに各エリアのスタイル、位置、フィールドマッピングを変更できます。';
  @override
  String get anki_lapis_visual_front => '表面';
  @override
  String get anki_lapis_visual_back => '裏面';
  @override
  String get anki_lapis_visual_preview => 'Lapisカードプレビュー';
  @override
  String get anki_lapis_visual_select_field => '編集対象を選択';
  @override
  String get anki_lapis_visual_reset_field => 'フィールドをリセット';
  @override
  String anki_lapis_visual_font_size({required Object percent}) =>
      'フォントサイズ: ${percent}%';
  @override
  String get anki_lapis_visual_bold => '太字';
  @override
  String get anki_lapis_visual_alignment => '配置';
  @override
  String get anki_lapis_visual_color => '文字色';
  @override
  String get anki_lapis_visual_default => 'デフォルト';
  @override
  String get anki_lapis_visual_advanced_css => 'CSS詳細設定';
  @override
  String get anki_lapis_visual_field_expression => '単語';
  @override
  String get anki_lapis_visual_field_reading => '読み';
  @override
  String get anki_lapis_visual_field_sentence => '例文';
  @override
  String get anki_lapis_visual_field_primary_definition => '主な定義';
  @override
  String get anki_lapis_visual_field_glossaries => 'その他の定義';
  @override
  String get anki_lapis_visual_target_card_content => 'カード内容';
  @override
  String get anki_lapis_visual_target_definition => '定義';
  @override
  String get anki_lapis_visual_target_inside_definition => '定義の内部';
  @override
  String get anki_lapis_visual_field_definition_info => '定義インジケーター';
  @override
  String get anki_lapis_visual_field_definition_box => '定義ボックス';
  @override
  String get anki_lapis_visual_field_definition_content => '定義全体';
  @override
  String get anki_lapis_visual_field_selected_definition => '選択した定義';
  @override
  String get anki_lapis_visual_field_dictionary_entry => '辞書エントリー';
  @override
  String get anki_lapis_visual_field_dictionary_name => '辞書名';
  @override
  String get anki_lapis_visual_field_definition_example => '定義の例文';
  @override
  String get anki_lapis_visual_line_height => '行の高さ';
  @override
  String get anki_lapis_visual_background_color => '背景ハイライト';
  @override
  String get anki_lapis_visual_box_layout => 'ボックスの外観';
  @override
  String get anki_lapis_visual_border_width => '枠線';
  @override
  String get anki_lapis_visual_border_color => '枠線の色';
  @override
  String get anki_lapis_visual_corner_radius => '角の丸み';
  @override
  String get anki_lapis_visual_padding => '内側の余白';
  @override
  String get anki_lapis_visual_margin => '外側の余白';
  @override
  String get anki_lapis_visual_field_definition_info_note =>
      '定義ブロックが複数あるカードのみ表示されます。定義が1つのカードでは非表示になります。';
  @override
  String get anki_lapis_visual_field_dictionary_name_note =>
      'Fushiカードではこのラベルに品詞タグも含まれるため、両者を個別にスタイル設定することはできません。';
  @override
  String get game_upscaling_error_bundle_missing =>
      'Fushiのインストールが不完全です: バンドルされたMagpieコンポーネントが見つかりません。Fushiを再インストールまたは更新してください。';
  @override
  String get game_upscaling_error_bundle_invalid =>
      'バンドルされたMagpieコンポーネントが破損しているか、検証に失敗しました。Fushiを再インストールまたは更新してください。';
  @override
  String download_test_connection_failed_reason({required Object message}) =>
      '接続に失敗しました: ${message}';
  @override
  String get delete_disclosure_will_delete_label => '削除されるもの';
  @override
  String get delete_disclosure_will_keep_label => '保持されるもの';
  @override
  String get delete_disclosure_book_records => '読書の進捗、ブックマーク、タグ、字幕データ';
  @override
  String get delete_disclosure_book_extracted => 'Fushiが内部ストレージに展開した書籍ファイル';
  @override
  String get delete_disclosure_book_audiobook => 'オーディオブックの音声と同期字幕（ある場合）';
  @override
  String get delete_disclosure_source_kept => 'インポートした元のファイル（書籍、字幕、音声）';
  @override
  String get delete_disclosure_stats_kept => '読書統計';
  @override
  String get delete_disclosure_audiobook_files => 'Fushiが内部ストレージにコピーした音声と同期字幕';
  @override
  String get delete_disclosure_audiobook_book_kept => '書籍本体とその読書進捗';
  @override
  String get delete_disclosure_audiobook_source_kept => 'インポートした元の音声ファイル';
  @override
  String get audiobook_delete => 'オーディオブックを削除';
  @override
  String get audiobook_delete_confirm =>
      '添付されたオーディオブックを削除しますか？音声ファイルはこのデバイスから削除されます。';
  @override
  String get delete_collection_confirm => 'グループのみ削除されます。中のアイテムは保持されます。';
  @override
  String get shortcut_action_video_enter_caret => '字幕検索カーソルに入る';
  @override
  String get audiobook_export_clip_too_long => '選択した音声が長すぎてエクスポートできません（上限: 5分）';
  @override
  String get sync_err_forbidden =>
      'サーバーがこのリクエストを拒否しました。ログインは正常です - サーバーの設定を確認してください。';
  @override
  String sync_err_forbidden_detail({required Object reason}) =>
      'サーバーがこのリクエストを拒否しました: ${reason}（ログインは正常です）';
  @override
  String get collection_group_extras => '特典 & PV';
  @override
  String collection_group_season({required Object n}) => 'シーズン ${n}';
  @override
  String get collection_sort_by_season => 'シーズン順に並べ替え';
  @override
  String get mining_animated_format_avif => 'AVIF（最小サイズ）';
  @override
  String get mining_animated_format_webp => 'WebP（幅広い互換性）';
  @override
  String get mining_animated_format_gif => 'GIF（最も互換性が高い）';
  @override
  String get video_mining_animated_format => '動画カードのアニメーション形式';
  @override
  String get video_mining_animated_format_hint =>
      'AVIFは同品質でGIFよりはるかに小さく、最高品質ではGIFやWebPより高い解像度とフレームレートが可能です。バンドルされたエンコーダーで生成できない場合は自動的にGIFにフォールバックします。';
  @override
  String get gal_mining_animated_format => 'ゲームカードのアニメーション形式';
  @override
  String get gal_mining_animated_format_hint =>
      '動画カードと同じ形式ですが、別々に保存されます。ギャルゲーのフレームは1行内でほとんど動かないため、トレードオフが異なります。';
  @override
  String get scrape_all => 'すべてスクレイプ';
  @override
  String scrape_all_title({required Object kind}) => 'すべての${kind}をスクレイプ';
  @override
  String scrape_all_running({required Object current, required Object total}) =>
      'スクレイプ中 ${current} / ${total}';
  @override
  String scrape_all_item({required Object title}) => '処理中: ${title}';
  @override
  String scrape_all_done({
    required Object applied,
    required Object review,
    required Object skipped,
    required Object failed,
  }) => '完了: ${applied}件適用、${review}件要レビュー、${skipped}件スキップ、${failed}件失敗';
  @override
  String get scrape_all_empty => 'このライブラリにスクレイプ対象のアイテムはありません。';
  @override
  String get scrape_all_start => '開始';
  @override
  String collection_hero_total_episodes({required Object count}) => '${count}話';
  @override
  String get video_scrape_collection_rename_title => 'このコレクション名を変更しますか？';
  @override
  String get video_scrape_collection_rename_body =>
      '一致した作品の名前が異なります。名前変更は任意です。カバーと詳細はいずれにせよ保存されます。名前を変更すると、同期済みの他のデバイスでも旧名が置き換わります。';
  @override
  String video_scrape_collection_rename_from({required Object name}) =>
      '現在の名前: ${name}';
  @override
  String video_scrape_collection_rename_to({required Object name}) =>
      '新しい名前: ${name}';
  @override
  String get video_scrape_collection_rename_keep => '現在の名前を維持';
  @override
  String get download_task_toggle_failed => '一時停止/再開に失敗';
  @override
  String get download_task_eta => '残り時間';
  @override
  String get download_task_ratio => '共有比率';
  @override
  String get download_task_status_downloading => 'ダウンロード中';
  @override
  String get download_task_status_seeding => 'シード中';
  @override
  String get download_task_status_completed => '完了';
  @override
  String get download_task_status_paused => '一時停止中';
  @override
  String get download_task_status_queued => '待機中';
  @override
  String get download_task_status_stalled => '停滞中';
  @override
  String get download_task_status_checking => 'チェック中';
  @override
  String get download_task_status_metadata => 'メタデータ取得中';
  @override
  String get download_task_status_moving => '移動中';
  @override
  String get download_task_status_error => 'エラー';
  @override
  String get download_task_pause => '一時停止';
  @override
  String get download_task_resume => '再開';
  @override
  String get download_airing_calendar_title => '放送カレンダー';
  @override
  String get download_airing_calendar_show_all => '今季のすべてを表示';
  @override
  String get download_airing_calendar_empty_guidance =>
      'まだ表示するものがありません。コレクションをAniListに紐付けるか、ダウンロードサブスクリプションを追加すると、放送スケジュールがここに表示されます。';
  @override
  String get download_airing_calendar_error => '放送スケジュールの読み込みに失敗しました';
  @override
  String get download_airing_calendar_in_library => 'ライブラリ内';
  @override
  String get download_airing_calendar_subscribed => '購読中';
  @override
  String download_airing_calendar_episode_label({required Object episode}) =>
      '第${episode}話';
  @override
  String get download_airing_calendar_week_prev => '前の週';
  @override
  String get download_airing_calendar_week_next => '次の週';
  @override
  String get download_airing_calendar_week_empty => '今週の放送はありません';
  @override
  String get video_jimaku_format => '形式';
  @override
  String get video_jimaku_format_all => 'すべて';
  @override
  String get video_setting_tmdb_key => 'カスタムTMDB APIキー';
  @override
  String get video_setting_tmdb_key_hint =>
      '任意。空のままにするとビルトインキーが使用されます。スクレイプが動作しなくなった場合や、独自のクォータを使いたい場合のみ入力してください。';
  @override
  String get about_tmdb_attribution =>
      'このアプリケーションはTMDBおよびTMDB APIを使用していますが、TMDBによる推奨、認証、その他の承認を受けたものではありません。';
  @override
  String get anki_lapis_visual_layout => 'レイアウト';
  @override
  String get anki_lapis_visual_layout_hint =>
      'Lapis独自のレイアウトスイッチを使用するため、デスクトップとモバイルの両方のAnkiで反映されます。';
  @override
  String get anki_lapis_visual_layout_sentence => '例文の位置';
  @override
  String get anki_lapis_visual_layout_sentence_above => '定義の上';
  @override
  String get anki_lapis_visual_layout_sentence_below => '定義の下';
  @override
  String get anki_lapis_visual_layout_picture => '画像の位置';
  @override
  String get anki_lapis_visual_layout_picture_right => '単語の右側';
  @override
  String get anki_lapis_visual_layout_picture_left => '単語の左側';
  @override
  String get anki_lapis_visual_layout_picture_alt => '例文の中';
  @override
  String get anki_lapis_visual_layout_audio => '音声ボタン';
  @override
  String get anki_lapis_visual_layout_audio_header => '読みの横';
  @override
  String get anki_lapis_visual_layout_audio_fixed => '下部に固定';
  @override
  String get anki_lapis_visual_layout_audio_alt => '例文の中';
  @override
  String get anki_lapis_visual_mapping_hint =>
      '選択したエリアに入るAnkiフィールド。変更はスタイルと一緒に保存されます。';
  @override
  String get anki_lapis_visual_mapping_none =>
      'このエリアはテンプレート自体が描画するもので、独自のフィールドはありません。';
  @override
  String get anki_lapis_visual_color_custom => 'カスタム';
  @override
  String get anki_lapis_visual_color_picker_title => '色を選択';
  @override
  String get video_scrape_tmdb_key_hint => 'TMDB APIキーを入力';
  @override
  String get video_scrape_tmdb_key_required => 'TMDBにはAPIキーが必要です';
  @override
  String get video_scrape_tmdb_key_save => '保存';
  @override
  String get video_scrape_tmdb_key_empty =>
      'TMDB APIキーを保存してから検索を押してください。他のソースの結果はここには表示されません。';
  @override
  String get download_detail_tab_overview => '概要';
  @override
  String get download_detail_tab_files => 'ファイル';
  @override
  String get download_detail_tab_peers => 'ピア';
  @override
  String get download_detail_tab_trackers => 'トラッカー';
  @override
  String get download_detail_backend_unsupported => '現在のダウンロードバックエンドでは対応していません';
  @override
  String get download_detail_task_gone => 'バックエンドにタスクが見つかりません';
  @override
  String get download_detail_task_missing =>
      '元のダウンロードバックエンドはオンラインですが、このtorrentは存在しません。ライブピアとトラッカーは復元できません。保存済みのタスク情報を表示しています。';
  @override
  String get download_detail_section_transfer => '転送';
  @override
  String get download_detail_section_network => 'ネットワーク';
  @override
  String get download_detail_section_task => 'タスク';
  @override
  String get download_detail_seeds_label => 'シード';
  @override
  String get download_detail_leechers_label => 'リーチャー';
  @override
  String get download_detail_connections_label => '接続';
  @override
  String get download_detail_content_path_label => 'コンテンツパス';
  @override
  String get download_detail_time_active => 'アクティブ時間';
  @override
  String get download_detail_time_seeding => 'シード時間';
  @override
  String get download_detail_total_size_label => '合計サイズ';
  @override
  String get download_detail_listen_port => 'リッスンポート';
  @override
  String get download_detail_dht_nodes => 'DHTノード';
  @override
  String get download_detail_hash_label => '情報ハッシュ';
  @override
  String get download_detail_port_mapping => 'ポートマッピング';
  @override
  String get download_detail_session_rates => 'セッション速度';
  @override
  String get download_detail_pieces_label => 'ピース';
  @override
  String get download_detail_priority_skip => 'ダウンロードしない';
  @override
  String get download_detail_raw_state_label => 'バックエンド状態';
  @override
  String get download_detail_remaining_label => '残り';
  @override
  String get download_detail_save_path_label => '保存パス';
  @override
  String get download_detail_priority_normal => '通常';
  @override
  String get download_detail_priority_high => '高';
  @override
  String get download_detail_tracker_working => '動作中';
  @override
  String get download_detail_tracker_updating => '更新中';
  @override
  String get download_detail_tracker_not_contacted => '未接続';
  @override
  String get download_detail_tracker_not_working => '動作していません';
  @override
  String get download_detail_tracker_disabled => '無効';
  @override
  String get download_detail_no_peers => '接続中のピアはありません';
  @override
  String get download_detail_no_trackers => 'トラッカーはありません';
  @override
  String get video_filter_year => '年';
  @override
  String get video_filter_year_unknown => '年不明';
  @override
  String get video_filter_watch_status => '視聴状態';
  @override
  String get video_filter_watch_status_unwatched => '未視聴';
  @override
  String get video_filter_watch_status_watching => '視聴中';
  @override
  String get video_filter_watch_status_completed => '視聴済み';
  @override
  String get video_hero_detail_view => '詳細';
  @override
  String video_hero_episodes_watched({required Object n}) => '${n}話視聴済み';
  @override
  String get video_recently_added_badge => 'NEW';
  @override
  String get video_air_season_winter => '冬';
  @override
  String get video_air_season_spring => '春';
  @override
  String get video_air_season_summer => '夏';
  @override
  String get video_air_season_autumn => '秋';
  @override
  String get delete_scope_no_channel => '同期が設定されていません - この削除はこのデバイスにのみ影響します';
  @override
  String get mihon_sources_title => 'マンガソース';
  @override
  String get mihon_extensions_title => 'マンガ拡張機能';
  @override
  String get mihon_store_add => '拡張機能ストアを追加';
  @override
  String get mihon_store_url => '拡張機能ストアのURL';
  @override
  String get mihon_store_empty =>
      '拡張機能ストアがまだありません。互換性のあるMihonストアを追加するか、ローカルAPKをインポートしてください。';
  @override
  String get mihon_extension_import => 'ローカルAPKをインポート';
  @override
  String get mihon_extension_warning =>
      'サードパーティの拡張機能はFushiの権限でコードを実行します。信頼できる拡張機能と署名者のみインストールしてください。';
  @override
  String get mihon_extension_install => 'インストール';
  @override
  String get mihon_extension_update => '更新';
  @override
  String get mihon_extension_uninstall => 'アンインストール';
  @override
  String get mihon_extension_installed => 'インストール済み';
  @override
  String get mihon_extension_disabled => '無効';
  @override
  String get mihon_source_empty => '有効なマンガソースがありません。先に拡張機能をインストールして有効にしてください。';
  @override
  String get mihon_source_popular => '人気';
  @override
  String get mihon_source_latest => '最新';
  @override
  String get mihon_source_search => 'マンガを検索';
  @override
  String get mihon_source_preferences => 'ソース設定';
  @override
  String get mihon_source_clear_data => 'ソースデータをクリア';
  @override
  String get mihon_source_clear_data_hint =>
      'このソースの設定とCookieをクリアします。インストール済みの拡張機能は保持されます。';
  @override
  String get mihon_signer_trust_title => '拡張機能の署名者を信頼しますか？';
  @override
  String get mihon_signer_fingerprint => '署名者 SHA-256';
  @override
  String get mihon_runtime_unavailable => 'このプラットフォームではMihon拡張機能は利用できません。';
  @override
  String get mihon_extension_incompatible => '互換性のない拡張機能';
  @override
  String get mihon_store_refresh => 'ストアを更新';
  @override
  String get mihon_source_browse_mokuro => '内蔵Mokuroカタログ';
  @override
  String get mihon_source_no_results => 'マンガが見つかりませんでした。';
  @override
  String get mihon_chapters_title => 'チャプター';
  @override
  String get mihon_extension_language_filter => '言語';
  @override
  String get mihon_extension_language_all => 'すべての言語';
  @override
  String get mihon_filter_ignore => '無視';
  @override
  String get mihon_filter_include => '含める';
  @override
  String get mihon_filter_exclude => '除外';
  @override
  String get mihon_filter_ascending => '昇順';
  @override
  String get mihon_filter_descending => '降順';
  @override
  String get mihon_add_to_bookshelf => 'マンガ本棚に追加';
  @override
  String get mihon_in_bookshelf => 'マンガ本棚に追加済み';
  @override
  String scrape_all_confirm({required Object n}) =>
      'ライブラリの全${n}件をタイトルで照合します。高信頼度の一致のみ自動適用されます — 動画はタイトルに加えて年、種類などの情報を組み合わせてスコアリングされ、書籍やゲームは一意の完全一致が必要です。手動で選んだカバーは上書きされません（設定したローカル画像、照合ダイアログで選んだ作品、フォルダに配置したポスターファイル）。曖昧な結果は手動レビュー待ちのままになります。';
  @override
  String get collection_related_title => '関連作品';
  @override
  String get collection_relation_prequel => '前編';
  @override
  String get collection_relation_sequel => '続編';
  @override
  String get collection_relation_side_story => 'サイドストーリー';
  @override
  String get collection_relation_movie => '劇場版';
  @override
  String get collection_relation_spin_off => 'スピンオフ';
  @override
  String get collection_relation_other => '関連';
  @override
  String get collection_relation_download => 'ダウンロード';
  @override
  String get collection_relation_bind => '既存のコレクションに紐付け';
  @override
  String get collection_episode_rename => 'スクレイプからエピソード名を変更';
  @override
  String get collection_episode_rename_title => 'エピソード名を変更';
  @override
  String get collection_episode_rename_empty => '変更対象なし';
  @override
  String get collection_episode_download => 'このエピソードをダウンロード';
  @override
  String get collection_episode_fill_missing => '欠けているエピソードを補完';
  @override
  String get collection_episode_no_missing => '欠けているエピソードはありません';
  @override
  String get collection_split_by_season => 'シーズンごとに分割';
  @override
  String get collection_split_keep_original => '元のコレクションを残す';
  @override
  String get collection_split_confirm => '分割';
  @override
  String collection_relation_bound({required Object name}) => '${name}に紐付け済み';
  @override
  String collection_episode_rename_apply({required Object n}) => '${n}話の名前を変更';
  @override
  String collection_split_done({required Object n}) => '${n}個のコレクションに分割しました';
  @override
  String collection_episode_watched_at({required Object position}) =>
      '${position}まで視聴済み';
  @override
  String collection_episode_rename_partial({
    required Object n,
    required Object m,
  }) => '${n}話の名前を変更、${m}件失敗';
  @override
  String get sync_err_browser_timeout =>
      'ブラウザが認可を返しませんでした。再試行し、プロキシが127.0.0.1を通すことを確認してください。';
  @override
  String get manga_rescan_running => '選択したボックスを認識中...';
  @override
  String get manga_rescan_empty => 'このボックス内にテキストが認識されませんでした。';
  @override
  String get stat_hourly_band_epub => 'テキスト書籍';
  @override
  String get stat_hourly_band_pdf => 'PDF';
  @override
  String get stat_hourly_band_manga => 'マンガ';
  @override
  String get stat_hourly_band_unattributed => '未分類の履歴';
  @override
  String get stat_hourly_unattributed_note =>
      '形式別トラッキングが導入される前に記録された時間には種類が保存されていないため、分割できません。合計として表示され、いずれの種類にも割り当てられません。';
  @override
  String get book_convert_to_manga_action => 'マンガに変換';
  @override
  String get book_convert_to_book_action => '書籍に戻す';
  @override
  String get book_convert_running => '変換中…';
  @override
  String get book_convert_done => '変換が完了しました';
  @override
  String get book_convert_failed => '変換に失敗しました';
  @override
  String get book_convert_blocked_already => 'この書籍はすでにその形式です。';
  @override
  String get book_convert_blocked_text_only =>
      'ページ画像のないテキスト書籍です。スキャン画像の書籍のみマンガに変換できます。';
  @override
  String get book_convert_blocked_no_original =>
      'このマンガは画像からインポートされたため、元の書籍に戻すことはできません。';
  @override
  String get book_convert_blocked_source_missing => 'ソースファイルがディスクから消失しています。';
  @override
  String manga_online_retry_waiting({
    required Object attempt,
    required Object total,
  }) => '自動的に再試行中（${attempt}/${total}）';
  @override
  String get manga_ocr_wizard_already_ocred =>
      'この巻はすべてのページにOCRデータがあります。再度OCRを実行すると上書きされます。';
  @override
  String get shortcut_scope_universal => '戻る / 終了';
  @override
  String get game_attach_and_capture => 'アタッチしてキャプチャ';
  @override
  String get remote_delete_failed => 'ペアリングされたデバイスで削除できませんでした';
  @override
  String get remote_delete_unsupported =>
      'ペアリングされたデバイスが古すぎてリモート削除に対応していません。先にそちらのFushiを更新してください。';
  @override
  String get anki_lapis_visual_blocks => 'カスタムエリア';
  @override
  String get anki_lapis_visual_blocks_hint =>
      '既存のフィールドをカード上の別の場所に表示します。表示のみ: Ankiフィールドは追加も削除もされません。';
  @override
  String get anki_lapis_visual_block_add => 'エリアを追加';
  @override
  String get anki_lapis_visual_block_delete => 'エリアを削除';
  @override
  String anki_lapis_visual_block_name({required Object index}) =>
      'エリア ${index}';
  @override
  String get anki_lapis_visual_block_anchor => 'カード上の位置';
  @override
  String get anki_lapis_visual_block_anchor_top => 'カードの上部';
  @override
  String get anki_lapis_visual_block_anchor_above_sentence => '単語の下';
  @override
  String get anki_lapis_visual_block_anchor_above_definition => '例文の下';
  @override
  String get anki_lapis_visual_block_anchor_below_definition => '定義の下';
  @override
  String get anki_lapis_visual_block_anchor_bottom => 'カードの下部';
  @override
  String get anki_lapis_visual_block_fields => 'ここに表示するフィールド';
  @override
  String get anki_lapis_visual_block_no_fields => 'フィールドがまだ選択されていません';
  @override
  String get anki_lapis_visual_block_needs_note_type =>
      'フィールドを選ぶには先にノートタイプを選択してください。';
  @override
  String get anki_lapis_restore_factory => 'Lapisを出荷時状態に復元';
  @override
  String get anki_lapis_restore_factory_hint =>
      'Anki内のLapisノートタイプをFushiにバンドルされたバージョンで上書きし、すべてのカスタマイズをクリアします。';
  @override
  String get anki_lapis_restore_factory_confirm =>
      'Anki内のLapisのスタイルとカードテンプレートをFushiのバンドル版で上書きし、フォントサイズ、カスタムCSS、カスタムエリアをリセットします。現在の状態のバックアップが先に保存されます。カードデータは変更されません。';
  @override
  String get anki_lapis_restore_factory_done => 'Lapisを出荷時のデフォルトに復元しました';
  @override
  String anki_lapis_restore_factory_failed({required Object error}) =>
      '復元に失敗しました: ${error}';
  @override
  String get anki_lapis_visual_select_field_hint =>
      'プレビューの任意の部分をクリックするか、下から選択してください。選択した部分が下のコントロールの編集対象になります。';
  @override
  String get anki_lapis_visual_editing_now => '編集中';
  @override
  String get mihon_extension_preview => 'プレビュー';
  @override
  String get mihon_extension_preview_warning =>
      'プレビューするとインストール前にこの拡張機能のコードが実行されます。インストールを選択するまでライブラリには何も追加されません。';
  @override
  String get mihon_extension_preview_discard => '破棄';
  @override
  String get mihon_extension_preview_source_select => 'プレビューするソースを選択';
  @override
  String get mihon_extension_sources_included => '含まれるソース';
  @override
  String get mihon_extension_preview_read_only =>
      'プレビューは読み取り専用です。開いて読むには拡張機能をインストールしてください。';
  @override
  String get selection_copy_empty => 'テキストが選択されていません。';
  @override
  String get video_library_empty_source_hint => 'ソースから動画フォルダを追加してライブラリを構築しましょう';
  @override
  String get video_source_scrape_action => 'このソースをスクレイプ';
  @override
  String get video_source_scrape_settings => 'ソースのスクレイプ設定';
  @override
  String get video_source_scrape_auto_after_scan => 'スキャン後にスクレイプ';
  @override
  String get video_source_scrape_auto_after_scan_hint =>
      'このソースのスキャン後にメタデータスクレイプを自動実行します';
  @override
  String get video_source_scrape_write_nfo => 'NFOファイルを書き出し';
  @override
  String get video_source_scrape_write_images => '画像ファイルを書き出し';
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
  }) => '前回のスクレイプ (${status}): ${succeeded}件成功、${pending}件保留、${failed}件失敗';
  @override
  String get video_source_scrape_phase_planning => '計画中';
  @override
  String get video_source_scrape_phase_recognizing => '照合中';
  @override
  String get video_source_scrape_phase_fetching => 'メタデータ取得中';
  @override
  String get video_source_scrape_phase_applying => 'メタデータ保存中';
  @override
  String get video_source_scrape_phase_writing_sidecars => 'サイドカー書き出し中';
  @override
  String get video_source_scrape_status_interrupted => '中断';
  @override
  String get video_source_scrape_locale => 'メタデータの言語';
  @override
  String get video_source_scrape_locale_hint => 'タイトル、あらすじ、画像の優先言語';
  @override
  String get video_source_scrape_confirmation_title => 'メタデータの一致を確認';
  @override
  String get video_source_scrape_confirmation_hint =>
      '複数の完全一致が見つかりました。正しい作品を選んでプロバイダーの紐付けを保存してください。';
  @override
  String get video_source_scrape_confirmation_skip => 'この作品をスキップ';
  @override
  String get video_source_scrape_nfo_policy => 'NFO書き出しポリシー';
  @override
  String get video_source_scrape_image_policy => '画像書き出しポリシー';
  @override
  String get video_source_scrape_policy_skip => '書き出さない';
  @override
  String get video_source_scrape_policy_missing_only => '存在しない場合のみ';
  @override
  String get video_source_scrape_policy_overwrite => 'Fushiファイルを更新';
  @override
  String get video_source_scrape_external_overwrite => '保護されたサイドカーの上書きを許可';
  @override
  String get video_source_scrape_external_overwrite_hint =>
      'サードパーティまたはユーザーが編集したファイルは、次の手動スクレイプバッチを確認するまで保護されます。';
  @override
  String get video_source_scrape_external_overwrite_confirm_title =>
      '保護されたサイドカーを上書きしますか？';
  @override
  String get video_source_scrape_external_overwrite_confirm_body =>
      'このバッチでサードパーティのNFO/画像やあなたが編集したFushiファイルが置き換わる可能性があります。メディアファイルは変更されません。続行しますか？';
  @override
  String get video_source_scrape_tasks_open => 'バックグラウンドタスク';
  @override
  String get video_source_scrape_background_started => 'スクレイプをバックグラウンドで実行中';
  @override
  String get video_source_scrape_tasks_current => '現在のタスク';
  @override
  String get video_source_scrape_tasks_history => '最近のタスク';
  @override
  String get video_source_scrape_tasks_empty => 'スクレイプタスクはまだありません';
  @override
  String get video_source_scrape_waiting_confirmation => '確認待ち';
  @override
  String get video_source_scrape_phase_scanning => 'ソースをスキャン中';
  @override
  String get video_library_all_videos => 'すべての動画';
  @override
  String get video_work_voice_roles => '声優とキャラクター';
  @override
  String get video_work_cast_crew => 'キャストとスタッフ';
  @override
  String get video_work_trailers => '予告編';
  @override
  String get video_work_extras => '特典映像';
  @override
  String get video_work_details => '詳細';
  @override
  String get video_work_external_ids => '外部ID';
  @override
  String get video_work_metadata_pending =>
      '詳細メタデータはまだ取得されていません。ソースからこのソースを再試行し、作品を開き直してください。';
  @override
  String get video_work_genres => 'ジャンル';
  @override
  String get video_work_keywords => 'キーワード';
  @override
  String get video_work_studios => 'スタジオ';
  @override
  String get video_work_countries => '国・地域';
  @override
  String get video_work_content_rating => 'コンテンツレーティング';
  @override
  String get video_all_videos_list_view => 'リスト表示';
  @override
  String get video_all_videos_grid_view => 'グリッド表示';
  @override
  String video_home_continue_episode_number({required Object n}) =>
      '再生中 第${n}話';
  @override
  String video_home_next_episode_number({required Object n}) => '次へ · 第${n}話';
  @override
  String video_home_recent_episode_number({required Object n}) =>
      '最近追加 · 第${n}話';
  @override
  String video_home_remaining_minutes({required Object minutes}) =>
      '残り${minutes}分';
  @override
  String get video_subtitle_replay => 'このセリフをリプレイ';
  @override
  String get manga_ocr_done => 'OCR完了';
  @override
  String get settings_destination_manga_summary => 'リーダー、OCR、オンラインカタログ';
  @override
  String get manga_page_animation => 'ページめくりアニメーション';
  @override
  String get manga_page_animation_none => 'なし';
  @override
  String get manga_page_animation_slide => 'スライド';
  @override
  String get manga_page_animation_fade => 'フェード';
  @override
  String get manga_default_zoom => 'デフォルトズーム';
  @override
  String get manga_zoom_sensitivity => 'ズーム感度';
  @override
  String get manga_volume_key_paging => '音量キーでページめくり';
  @override
  String get manga_volume_key_paging_subtitle => '音量の上下ボタンでマンガリーダーのページをめくります';
  @override
  String get manga_tap_zone_paging => '端をタップしてページめくり';
  @override
  String get manga_tap_zone_paging_subtitle => 'ページの左端または右端をタップしてめくります';
  @override
  String get manga_section_viewing => '表示とページめくり';
  @override
  String get game_capture_setup_title => 'キャプチャ設定を完了する';
  @override
  String get game_capture_setup_hint =>
      'まずダイアログスレッドを選択してください。Fushiは選択したスレッドのセリフのみ音声と紐付けできます。';
  @override
  String get game_audio_requires_thread =>
      '音声キャプチャソースは準備できている可能性がありますが、スレッドを選択してセリフを受信するまでセンテンス音声は存在しません。';
  @override
  String get game_session_waiting_thread => 'ダイアログスレッドを待機中';
  @override
  String get anki_connect_use_on_mobile => 'Use AnkiConnect on Android';
  @override
  String get anki_connect_use_on_mobile_hint =>
      '信頼できるネットワークでのみ使用してください。AnkiConnectは平文HTTPを使用します。対応するAPIキーを設定し、切り替え後にデッキとノートタイプを更新してください。';
  @override
  String get anki_connect_api_key_hint =>
      'リモートAnkiConnectに必須。アドオンで設定したキーと一致させてください';
  @override
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before enabling the Android backend.';
  @override
  String anki_connect_backend_switch_failed({required Object error}) =>
      'Ankiバックエンドを切り替えられませんでした: ${error}';
  @override
  String get migration_settings_entry => 'Fushiへ移行';
  @override
  String get migration_settings_entry_subtitle => 'すべてのデータを新しいFushiアプリに移動します';
  @override
  String get migration_intro =>
      'Fushiはこのアプリの新しい名前です。移行はすべてのデータをバッチごとに転送フォルダにエクスポートし、Fushiがインポートして検証します。このアプリのデータはアンインストールするまでそのまま残ります。';
  @override
  String get migration_target_missing =>
      'Fushiがまだインストールされていません。先にFushiをインストールしてから戻ってください。';
  @override
  String get migration_download_fushi => 'Fushiを入手';
  @override
  String get migration_start => '移行を開始';
  @override
  String get migration_open_fushi => 'Fushiを開く';
  @override
  String get migration_include_local_audio => 'ローカル発音音声もエクスポートする（大容量の場合があります）';
  @override
  String migration_batch_running({required Object batch}) =>
      '${batch}をエクスポート中…';
  @override
  String migration_batch_done({required Object batch}) => '${batch}をエクスポートしました';
  @override
  String get migration_export_done => 'エクスポート完了。Fushiを開いてインポートと検証を行ってください。';
  @override
  String migration_export_failed({required Object error}) =>
      'エクスポートに失敗しました: ${error}';
  @override
  String get migration_readonly_note =>
      'データはFushiにエクスポートされました。このアプリは読み取り専用になりました。読書と制カードにはFushiをお使いください。Fushiでデータの欠損が報告された場合はいつでも再エクスポートできます。';
  @override
  String get migration_reexport => '再エクスポート';
  @override
  String get migration_batch_core_label => '設定、進捗、統計';
  @override
  String get migration_import_entry => 'Hibikiからインポート';
  @override
  String get migration_import_entry_subtitle =>
      '旧Hibikiアプリからエクスポートされたデータをインポートします';
  @override
  String get migration_import_detected => 'Hibikiの移行データが検出されました。今すぐインポートしますか？';
  @override
  String get migration_import_start => 'インポートを開始';
  @override
  String migration_import_running({required Object batch}) =>
      '${batch}をインポート中…';
  @override
  String migration_import_verify_failed({
    required Object batch,
    required Object detail,
  }) => '${batch}の検証に失敗しました。再エクスポート用に保持されています: ${detail}';
  @override
  String migration_import_counts_failed({required Object detail}) =>
      'インポートされたデータが不完全です: ${detail}。Hibikiから欠損部分を再エクスポートし、再度インポートしてください。';
  @override
  String get migration_import_success => 'インポート完了、検証済み。';
  @override
  String get migration_import_nothing => '転送フォルダに移行データが見つかりませんでした。';
  @override
  String get migration_uninstall_prompt => '移行が完了しました。旧Hibikiアプリをアンインストールしますか？';
  @override
  String get migration_uninstall_button => 'Hibikiをアンインストール';
  @override
  String get migration_uninstall_still_installed =>
      'Hibikiがまだインストールされています。いつでもアンインストールできます。';
  @override
  String get migration_import_permission_title => 'ストレージ権限が必要です';
  @override
  String get migration_import_permission_body =>
      '転送フォルダは旧アプリによって作成されました。「すべてのファイルへのアクセス」がないとFushiはそれを読み取れません。データはそのまま残っていますが、開くことができません。';
  @override
  String get migration_import_permission_grant => '権限を付与';
  @override
  String migration_import_verifying({
    required Object batch,
    required Object done,
    required Object total,
  }) => '${batch}を検証中（${done}/${total}）';
  @override
  String get migration_import_verifying_hint =>
      'アーカイブのチェックサムを検証しています。大きなライブラリは数分かかることがあります。';
  @override
  String get game_line_copy_tooltip => '文をコピー';
  @override
  String get game_japanese_locale_auto => '自動';
  @override
  String get game_japanese_locale_on => '常にオン';
  @override
  String get game_japanese_locale_off => 'オフ';
  @override
  String get game_japanese_locale => '日本語ロケール';
  @override
  String get game_japanese_locale_hint =>
      '中国語/英語パッチ版ではこれをオフにしてください。オンのままだと起動時にクラッシュします';
  @override
  String get video_scrape_diagnostic_export => 'スクレイプ診断をエクスポート';
  @override
  String get video_scrape_diagnostic_confirm_title => 'スクレイプ診断をエクスポートしますか？';
  @override
  String get video_scrape_diagnostic_saved => '診断パッケージを保存しました';
  @override
  String video_scrape_diagnostic_failed({required Object reason}) =>
      '診断パッケージをエクスポートできませんでした: ${reason}';
  @override
  String get video_scrape_diagnostic_share_subject => 'Fushi 動画スクレイプ診断';
  @override
  String get video_scrape_diagnostic_confirm_body =>
      'パッケージには相対ファイル名とフォルダ名、スクレイプの概要、元のNFO内容が含まれます。動画、字幕、画像、絶対パス、アプリ設定、アプリ認証情報は含まれません。元のNFOファイルはそのまま保持され、個人情報や機密情報が含まれている場合があります。公開する前にパッケージを確認してください。';
  @override
  String get video_discovery_search_hint => '映画、ドラマ、アニメを検索';
  @override
  String get video_discovery_hot => '人気の作品';
  @override
  String get video_discovery_seasonal_anime => '今期のアニメ';
  @override
  String get video_discovery_all_works => '全タイトル';
  @override
  String get video_discovery_search_results => '検索結果';
  @override
  String get video_discovery_provider_warning =>
      '一部のプロバイダが利用できません。利用可能な結果を表示しています。';
  @override
  String get video_discovery_load_failed => '発見結果を読み込めませんでした。';
  @override
  String get video_discovery_empty => '一致するタイトルがありません。';
  @override
  String get video_discovery_resource_search => 'リソースを検索';
  @override
  String get video_discovery_subtitle_search => '字幕を検索';
  @override
  String get video_discovery_subscribe => '購読';
  @override
  String get video_discovery_subscription_manage => '購読を管理';
  @override
  String get video_discovery_pipeline_idle =>
      '未ダウンロード → ダウンロード → 整理 → 字幕 → スクレイプ → ライブラリ';
  @override
  String get video_discovery_details_load_failed => 'タイトルの詳細を読み込めませんでした。';
  @override
  String get video_discovery_sort_popularity => '人気順';
  @override
  String get video_discovery_sort_rating => '評価順';
  @override
  String get video_discovery_sort_release => '公開日順';
  @override
  String get video_discovery_in_library => 'ライブラリに追加済み';
  @override
  String get video_discovery_play => '再生';
  @override
  String get download_resources_tab => 'リソース';
  @override
  String get video_external_settings_section => '外部リソースと字幕プロバイダ';
  @override
  String get video_torznab_settings_title => 'Torznabインデクサー';
  @override
  String get video_torznab_add => 'インデクサーを追加';
  @override
  String get video_torznab_name => '名前';
  @override
  String get video_torznab_endpoint => 'エンドポイント';
  @override
  String get video_torznab_endpoint_hint => 'ループバックアドレス以外はHTTPSが必須です。';
  @override
  String get video_torznab_api_key => 'APIキー';
  @override
  String get video_torznab_priority => '優先度';
  @override
  String get video_torznab_categories => 'カテゴリ';
  @override
  String get video_torznab_categories_hint => 'カンマ区切りの数値カテゴリID';
  @override
  String get video_external_enabled => '有効';
  @override
  String get video_external_insecure_http => '安全でないHTTPを許可';
  @override
  String get video_external_insecure_http_hint =>
      '信頼できるローカルネットワークのエンドポイントにのみ使用してください。';
  @override
  String get video_external_endpoint_invalid =>
      '認証情報、クエリパラメータ、フラグメントのない有効なエンドポイントを入力してください。';
  @override
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  @override
  String get video_opensubtitles_user_agent => 'User-Agent';
  @override
  String get video_opensubtitles_languages_hint =>
      'カンマ区切りの言語コード（例: zh-CN,en,ja）';
  @override
  String get video_download_path_mappings_title => 'qBittorrentパスマッピング';
  @override
  String get video_download_path_mappings_hint =>
      'qBittorrentのリモートルートをローカルでアクセス可能なフォルダにマッピングします。';
  @override
  String get video_download_path_mapping_add => 'パスマッピングを追加';
  @override
  String get video_download_backend_profile_id => 'バックエンドプロファイルID';
  @override
  String get video_download_remote_root => 'リモートルート';
  @override
  String get video_download_local_root => 'ローカルルート';
  @override
  String get video_download_target_source_title => 'デフォルトの管理対象動画ソース';
  @override
  String get video_download_target_source_hint =>
      '新しいダウンロードはこのローカル動画ソースに整理されます。';
  @override
  String get video_download_target_source_none => 'ローカル動画ソースを選択';
  @override
  String get video_external_remove => '削除';
  @override
  String get video_external_username_optional => 'ユーザー名（任意）';
  @override
  String get video_external_password_optional => 'パスワード（任意）';
  @override
  String get video_external_api_key => 'APIキー';
  @override
  String get video_external_save_error =>
      '設定を保存できませんでした。ハイライトされたフィールドを確認してください。';
  @override
  String get video_external_categories_invalid => 'カテゴリはカンマ区切りの数値IDである必要があります。';
  @override
  String get video_download_path_mapping_invalid =>
      'プロファイルID、リモートルート、絶対ローカルルートを入力してください。';
  @override
  String get video_opensubtitles_endpoint => 'APIエンドポイント';
  @override
  String get video_download_target_source_empty =>
      'ローカルでアクセス可能な動画ソースがありません。先にソースタブで追加してください。';
  @override
  String get video_setting_drag_seek_sensitivity => 'ドラッグシーク感度';
  @override
  String get video_setting_drag_seek_sensitivity_hint =>
      'タッチスクリーンで画面幅いっぱいをスワイプした時のシーク量: 低 約45秒、中 約90秒、高 約180秒。動画の全体の長さには依存しません。タッチドラッグのみ対象で、マウスとキーボードのシークには影響しません。';
  @override
  String get video_setting_drag_seek_sensitivity_low => '低';
  @override
  String get video_setting_drag_seek_sensitivity_medium => '中';
  @override
  String get video_setting_drag_seek_sensitivity_high => '高';
  @override
  String video_subtitle_read_failed({required Object label}) =>
      'この字幕ファイルを読み取れませんでした（破損または空）: ${label}';
  @override
  String dict_downloading_size({
    required Object name,
    required Object done,
    required Object total,
  }) => '${name}をダウンロード中（${done} / ${total}）';
  @override
  String get video_subtitle_attach_book_missing =>
      'この動画はライブラリにないため、字幕は紐付けされませんでした';
  @override
  String get dict_download_hide => 'バックグラウンドで実行';
  @override
  String get dict_download_progress_show => '進捗を表示';
  @override
  String get dict_download_cancelled => 'ダウンロードがキャンセルされました。';
  @override
  String get dict_download_import_uncancellable => 'インポートは中断できません';
  @override
  String get dict_download_busy => '辞書のダウンロードが既に実行中です。';
  @override
  String get gal_hook_ingame_lookup => 'ゲーム内辞書検索';
  @override
  String get gal_hook_ingame_lookup_hint =>
      'ゲームウィンドウ内に辞書カードを表示します（KiriKiriエンジン、Windowsのみ）';
  @override
  String download_subscription_start_episode({required Object episode}) =>
      '从第 ${episode} 集开始';
  @override
  String get drag_drop_failed => 'ドロップされたファイルを処理できませんでした。もう一度お試しください。';
  @override
  String get tag_add_failed => 'タグを追加できませんでした。もう一度お試しください。';
  @override
  String get tag_reorder_failed => 'タグの新しい順序を保存できませんでした。もう一度お試しください。';
  @override
  String get download_task_error_summary_source_missing =>
      '管理対象動画ソースが見つからないかアクセスできません';
  @override
  String get download_task_error_summary_backend_unconfirmed =>
      'ハッシュ、タイトル、カテゴリでトレントを確認できませんでした';
  @override
  String get download_task_error_summary_subtitle =>
      '字幕が利用できないか、インストールできませんでした';
  @override
  String get download_task_error_summary_backend_unavailable =>
      'ダウンロードバックエンドが利用できないか、一致しなくなりました';
  @override
  String get download_task_error_summary_legacy => 'レガシーインポートには手動対応が必要です';
  @override
  String get download_task_error_summary_torrent_info =>
      'トレントIDが見つからないか検証できません';
  @override
  String get download_task_error_summary_generic => 'タスクでエラーが発生しました';
  @override
  String get download_task_error_view_detail => '詳細を表示';
  @override
  String get download_task_error_detail_title => 'エラーの詳細';
  @override
  String get download_task_error_copied => 'エラーの詳細をコピーしました';
  @override
  String get download_task_lifecycle_active => '進行中';
  @override
  String get download_task_lifecycle_needs_attention => '対応が必要';
  @override
  String get download_task_location_missing => 'タスクのファイル場所が利用できません。';
  @override
  String get download_task_location_open_failed => 'ファイルの場所を開けませんでした。';
  @override
  String get download_task_open_location => 'フォルダで表示';
  @override
  String get download_task_lifecycle_completed => '完了';
  @override
  String get download_task_lifecycle_failed => '失敗';
  @override
  String get download_task_lifecycle_cancelled => 'キャンセル済み';
  @override
  String get download_task_stage_enqueue => 'キュー';
  @override
  String get download_task_stage_download => 'ダウンロード';
  @override
  String get download_task_stage_organize => '整理';
  @override
  String get download_task_stage_subtitle => '字幕';
  @override
  String get download_task_stage_import => 'インポート';
  @override
  String get download_task_stage_scrape => 'スクレイプ';
  @override
  String get video_discovery_manual_identity_hint =>
      '検索を有効にするには、上にタイトル、外部IDと年を入力してください';
  @override
  String get collection_split_move_to => '移動先';
  @override
  String get collection_split_new_group => '新しいグループ';
  @override
  String collection_split_selected({required Object n}) => '${n}件選択中';
  @override
  String get sync_pair_rate_limited => '試行回数が多すぎます。数分待ってから再度お試しください。';
  @override
  String get sync_pair_tls_failed => '証明書の検証に失敗しました。ピアの証明書がピン留めされたものと一致しません。';
  @override
  String get sync_pair_timeout => 'ピアが時間内に応答しませんでした。';
  @override
  String get sync_pair_expired => 'ペアリングがタイムアウトしました。このデバイスからペアリングをやり直してください。';
  @override
  String get sync_pair_upgrade_required =>
      '相手のデバイスは古いバージョンを実行しており、このネットワークから安全にペアリングできません。更新してから再度ペアリングしてください。';
  @override
  String get sync_pair_fingerprint_changed_title => '証明書が変更されました';
  @override
  String get sync_pair_fingerprint_stored_label => '以前にピン留め済み';
  @override
  String get sync_pair_fingerprint_new_label => '現在検出';
  @override
  String get sync_pair_fingerprint_retrust => 'クリアして再信頼';
  @override
  String get sync_pair_fingerprint_changed_body =>
      'このアドレスは以前別の証明書にピン留めされていました。ピアが再インストールまたはリセットしたことを確認できる場合のみ続行してください。そうでなければ接続が傍受されている可能性があります。';
  @override
  String get interconnect_upload_section_footer =>
      'このデバイスが接続されたピアにアップロードする内容を選択します。クラウドバックアップのスイッチとは独立しており、デフォルトではオフです。これらのスイッチは「インターコネクトを有効にする」がオンの場合にのみ適用されます。インターコネクトをオフにすると、ここのすべてのアップロードが停止します。';
  @override
  String get remote_delete_audiobook_partial =>
      '書籍は削除されましたが、ペアリングされたデバイス上のオーディオブックを削除できませんでした';
  @override
  String get download_detail_task_queued =>
      'キュー待ち: 他のダウンロードがスロットを空けるのを待っています。このタスクはまだダウンローダーに渡されていないため、ライブのピアやトラッカーデータはありません。';
  @override
  String video_subscription_group_release_count({required Object count}) =>
      '${count}リリース';
  @override
  String get download_task_priority => 'キュー優先度';
  @override
  String get download_task_priority_high => '高';
  @override
  String get download_task_priority_normal => '標準';
  @override
  String get download_task_priority_low => '低';
  @override
  String get library_view_import => 'インポート';
  @override
  String get quick_import_title => 'クイックインポート';
  @override
  String get media_source_section_title => 'メディアソース';
  @override
  String get media_import_folder => 'フォルダをインポート';
  @override
  String get media_import_folder_as_source => 'ライブラリソースとして追加';
  @override
  String get book_import_folder_as_source_hint => 'このフォルダを継続的にスキャンして新しい本を検出します';
  @override
  String get media_import_folder_once => '一度だけインポート';
  @override
  String get library_empty_go_import => 'インポートへ';
  @override
  String get game_import_drop_hint => '.exeファイルをゲームライブラリにドラッグ＆ドロップすることもできます';
  @override
  String get library_view_sources => 'ソース';
  @override
  String get video_setting_secondary_av_delay => '副字幕同期';
  @override
  String get video_setting_secondary_av_delay_hint =>
      '副字幕のオフセットを個別に調整します。ここで設定するまでは主字幕のオフセットに追従します。';
  @override
  String get video_setting_secondary_delay_follow => '主字幕に追従';
  @override
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      '副字幕同期: ${ms} ms';
  @override
  String get video_subtitle_secondary_delay_follow_osd => '副字幕同期: 主字幕に追従';
  @override
  String get video_setting_subtitle_anchor => 'メイン字幕アンカー';
  @override
  String get video_subtitle_anchor_bottom => '下';
  @override
  String get video_subtitle_anchor_top => '上';
  @override
  String get video_setting_subtitle_drag_adjust => 'ドラッグで位置を調整';
  @override
  String get video_subtitle_drag_adjust_hint => '字幕を上下にドラッグして位置を変更します';
  @override
  String get anki_connect_mobile_disabled_key_cleared =>
      'AnkiConnectはモバイルでAPIキーが必要です。キーをクリアしたためスイッチがオフに戻りました。Ankiは内蔵バックエンド経由に戻ります。';
  @override
  String manga_import_batch_hint({required Object n}) =>
      'このフォルダには${n}巻のファイルがあります。それぞれがファイル名で独立した本としてインポートされます。';
  @override
  String manga_import_batch_done({
    required Object imported,
    required Object skipped,
    required Object failed,
  }) => 'インポート ${imported}件、スキップ ${skipped}件、失敗 ${failed}件';
  @override
  String get srt_book_reimport => '再インポート';
  @override
  String get srt_book_reimport_subtitle_hint =>
      '字幕を差し替えると、新しいキューから書籍テキストが再構築されます。';
  @override
  String get srt_book_reimport_no_cues => 'そのファイルに字幕行が見つかりませんでした';
  @override
  String get srt_book_reimport_body_rebuilt =>
      '書籍テキストを再構築しました — 本を開き直して読んでください';
  @override
  String get video_setting_torrent_backend_embedded => '内蔵エンジン';
  @override
  String get download_backend_unsupported_note =>
      '内蔵エンジンはこのプラットフォームでは利用できません。ダウンロードは外部のqBittorrentを使用します。';
  @override
  String get aidoku_runtime_unavailable => 'Aidoku拡張機能は現在macOSでのみ利用可能です。';
  @override
  String get aidoku_extensions_title => 'Aidoku拡張機能';
  @override
  String get aidoku_extension_empty => 'Aidoku拡張機能がインストールされていません。';
  @override
  String get aidoku_extension_remove => 'Aidoku拡張機能を削除';
  @override
  String get aidoku_extension_warning =>
      'Aidoku拡張機能はネットワークアクセス権を持つサードパーティのWebAssemblyコードを実行します。信頼できるソースのみ続行してください。';
  @override
  String get aidoku_webview_unsupported =>
      'このソースにはまだサポートされていないAidoku WebView APIが必要です。';
  @override
  String get aidoku_extension_imported => 'Aidoku拡張機能をインポートしました';
  @override
  String get aidoku_extension_import => 'Aidoku拡張機能をインポート（.aix）';
  @override
  String get aidoku_extension_confirm_title => 'Aidoku拡張機能をインストールしますか？';
  @override
  String get aidoku_extension_version => 'バージョン';
  @override
  String get aidoku_repository_url => 'リポジトリURL';
  @override
  String get aidoku_repository_sources => 'リポジトリソース';
  @override
  String get aidoku_repository_identity_mismatch =>
      'ダウンロードされたパッケージがリポジトリインデックスと一致しません。';
  @override
  String get aidoku_repository_installed => 'インストール済み';
  @override
  String get aidoku_repository_search => 'リポジトリソースを検索';
  @override
  String get aidoku_repository_install => 'インストール';
  @override
  String get aidoku_repository_update => '更新';
  @override
  String get aidoku_repository_add => 'Aidokuリポジトリを追加';
  @override
  String get aidoku_repository_added => 'Aidokuリポジトリを追加しました';
  @override
  String get aidoku_repository_browse => 'リポジトリを閲覧';
  @override
  String get aidoku_repository_hint =>
      'Aidokuリポジトリのホームページまたはindex.min.jsonのURLを貼り付けてください。コミュニティリポジトリがデフォルトで入力されています。';
  @override
  String get aidoku_repository_remove => 'リポジトリを削除';
  @override
  String get aidoku_repository_empty => 'Aidokuリポジトリが追加されていません。';
  @override
  String get dict_language_tooltip => 'コンテンツ言語';
  @override
  String get dict_language_title => '辞書コンテンツ言語';
  @override
  String get dict_language_description =>
      'この辞書のテキストを表示するフォントを決定します。自動の場合、辞書が宣言した言語を使用します。';
  @override
  String get dict_language_auto => '自動';
  @override
  String get book_language_action => 'コンテンツ言語';
  @override
  String get book_language_description =>
      'この本のテキストを表示するフォントを決定します。自動の場合、EPUBで宣言された言語を使用します。';
  @override
  String get local_audio_reference_unavailable =>
      'すべてのファイルへのアクセスがないため元のファイルを参照できません。代わりにコピーがインポートされました。';
  @override
  String get video_collection_scrape => '情報と封面を取得';
  @override
  String get update_testflight_open => 'TestFlightを開く';
  @override
  String get update_app_store_open => 'App Storeを開く';
  @override
  String get update_release_page_open => 'リリースページ';
  @override
  String update_install_gal_hook_holder({
    required Object pid,
    required Object path,
  }) =>
      'ゲームキャプチャコンポーネント使用中: PID ${pid} - ${path}（プレイ中のゲームまたはそのキャプチャホストです）。ゲームを閉じてから再度更新してください。';
  @override
  String get game_hook_reason_protocol_mismatch =>
      'キャプチャコンポーネントがこのFushiビルドと一致しません。これはFushiに同梱されているため、別途インストールする必要はありません。まずゲームを完全に閉じて再起動してください。以前のセッションで注入されたコンポーネントをゲームプロセスがまだ保持している可能性があります。それでも一致しない場合、ディスク上のコンポーネントファイルがFushiより古いです。これは前回のFushi更新時にゲームが実行中だったため置き換えられなかったためです。すべてのゲームを閉じてからFushiインストーラーを再実行してください。';
  @override
  String get video_mining_still_format => '動画カードスクリーンショット形式';
  @override
  String get video_mining_still_format_hint =>
      'カード画像が静止スクリーンショットの場合のエンコード形式。JPGはかなり小さく、PNGはロスレスですが数倍大きくなります。アニメーションカバーは影響を受けません。アニメーション形式の設定に従います。';
  @override
  String get mining_still_format_jpg => 'JPG（小さい）';
  @override
  String get mining_still_format_png => 'PNG（ロスレス）';
  @override
  String get gal_mining_still_format => 'ゲームカードスクリーンショット形式';
  @override
  String get gal_mining_still_format_hint =>
      '動画カードと同じ形式で、別々に保存されます。ゲームウィンドウのキャプチャはPNGで取り込まれます。PNGのままならロスレスですが数倍大きくなり、JPGは以前のスクリーンショット圧縮方式と同じです。';
  @override
  String get manga_source_cloudflare_blocked =>
      'このソースはCloudflareで保護されており、内蔵リーダーではまだアクセスできません。';
  @override
  String get manga_global_search_title => 'グローバル検索';
  @override
  String get manga_global_search_hint => 'すべてのソースを検索';
  @override
  String get manga_global_search_prompt => 'タイトルを入力して、すべての有効なマンガソースを一括検索します。';
  @override
  String get anki_connect_addon_install => 'AnkiConnectをインストール';
  @override
  String get anki_connect_addon_install_hint =>
      'AnkiWebからAnkiConnectをダウンロードし、実行中のAnkiに渡します。Ankiが確認を求め、再起動を促します。';
  @override
  String get anki_connect_addon_handed =>
      'AnkiConnectをAnkiに渡しました。Ankiのプロンプトを確認し、指示通りにAnkiを再起動してください。';
  @override
  String get anki_connect_addon_anki_not_running =>
      '実行中のAnkiが見つかりません。まずAnkiデスクトップを起動してから再度お試しください。';
  @override
  String anki_connect_addon_download_failed({required Object error}) =>
      'AnkiWebからAnkiConnectをダウンロードできませんでした: ${error}';
  @override
  String get anki_connect_addon_invalid =>
      'AnkiWebから返されたものは使用可能なアドオンパッケージではありません。';
  @override
  String anki_connect_addon_launch_failed({required Object error}) =>
      'アドオンをAnkiに渡せませんでした: ${error}';
  @override
  String get settings_content_language_title => 'デフォルトコンテンツ言語';
  @override
  String get settings_content_language_unset => '未設定';
  @override
  String get settings_content_language_description =>
      '言語を宣言していないコンテンツのフォールバック言語です。書籍、動画、ゲーム、辞書ごとの設定がこれを上書きします。';
  @override
  String get manga_ocr_lens_language_label => '認識する言語';
  @override
  String get sync_err_peer_unreachable =>
      'ペアリングされたデバイスに接続できません。オフラインかFushiが実行されていない可能性があります。';
  @override
  String get remote_book_list_failed => 'ペアリングされたデバイスからリモートライブラリを取得できませんでした。';
  @override
  String get video_torznab_settings_hint =>
      'Jackett、Prowlarr、または互換性のあるTorznabエンドポイントを1つ以上設定してください。シークレットはバックアップにエクスポートされません。インターコネクト経由でペアリングされたデバイスに同期される場合があります（インターコネクト設定でオフにできます）。';
  @override
  String get video_opensubtitles_settings_hint =>
      'API認証情報はバックアップにエクスポートされません。インターコネクト経由でペアリングされたデバイスに同期される場合があります（インターコネクト設定でオフにできます）。';
  @override
  String get sync_interconnect_service_config_toggle => 'ホストからサービス設定を同期';
  @override
  String get sync_interconnect_service_config_toggle_desc =>
      '暗号化されたインターコネクトチャネル経由で、ペアリングされたホストから外部サービス設定とAPIキー（Jimaku、TMDB、Torznab、OpenSubtitles、トラッキング）を受信します。TLSが必要です。';
  @override
  String get video_setting_subtitle_backfill => 'スクレイプ後に字幕を自動取得';
  @override
  String get video_setting_subtitle_backfill_hint =>
      'スクレイプ完了時に字幕がまだない動画は、設定済みのオンラインソースから字幕を取得します。既存の字幕は置き換えません。';
  @override
  String get video_setting_subtitle_sources_section => 'オンライン字幕ソース';
  @override
  String get video_subtitle_no_source_configured =>
      '字幕が見つかりません · オンライン字幕ソースを設定してください';
  @override
  String get anime_download_subs_retrying => '字幕: まだ未公開 — 自動的にリトライします';
  @override
  String get video_jimaku_language_follow_video => '動画の言語に追従';
  @override
  String get video_setting_jimaku_default_language_hint =>
      'デフォルトでは動画自体の言語（音声トラック/スクレイプされたメタデータ）を使用します。特定の言語を選択すると、常にその言語が優先されます。';
  @override
  String get onboarding_title => 'はじめに';
  @override
  String get onboarding_welcome_headline => 'ようこそ！';
  @override
  String get onboarding_feature_anki => 'Ankiフラッシュカード';
  @override
  String get onboarding_feature_anki_hint =>
      'AnkiConnectまたはAnkiDroidに接続してフラッシュカードを作成';
  @override
  String get onboarding_feature_backup => 'バックアップと同期';
  @override
  String get onboarding_feature_backup_hint =>
      'Google Drive、WebDAVなどのバックエンドにデータをバックアップ';
  @override
  String get onboarding_feature_interconnect => 'デバイスインターコネクト';
  @override
  String get onboarding_feature_interconnect_hint =>
      'LAN上のデバイスをペアリングしてライブラリと進捗を共有';
  @override
  String get onboarding_step_dictionary_action => '辞書マネージャーを開く';
  @override
  String get onboarding_step_anki_title => 'Ankiのセットアップ';
  @override
  String get onboarding_step_anki_action => 'カード作成設定を開く';
  @override
  String get onboarding_step_backup_title => 'バックアップのセットアップ';
  @override
  String get onboarding_step_backup_body =>
      'バックアップバックエンドを選んでサインインするか、ローカルバックアップファイルをエクスポートします。';
  @override
  String get onboarding_step_backup_action => 'バックアップ設定を開く';
  @override
  String get onboarding_step_interconnect_title => 'インターコネクトのセットアップ';
  @override
  String get onboarding_step_interconnect_body =>
      'インターコネクトを有効にし、LAN上の他のデバイスとペアリングしてライブラリ、進捗、検索を共有します。';
  @override
  String get onboarding_step_interconnect_action => 'インターコネクト設定を開く';
  @override
  String get onboarding_finish_title => '準備完了';
  @override
  String get onboarding_finish_body => 'このガイドは設定 → システムからいつでも再表示できます。';
  @override
  String get onboarding_action_next => '次へ';
  @override
  String get onboarding_action_finish => '完了';
  @override
  String get onboarding_action_skip => '今はスキップ';
  @override
  String get onboarding_reopen => 'はじめにガイド';
  @override
  String get onboarding_welcome_body =>
      'まずインターフェース言語とテーマを設定してください。次のステップで残りの設定を案内します。';
  @override
  String get onboarding_features_title => '使う機能を選択';
  @override
  String get onboarding_features_modules_label =>
      'ライブラリタブ（チェックを外すとナビゲーションバーから非表示になります。設定でいつでも変更可能）';
  @override
  String get onboarding_features_setup_label => '次にセットアップする項目';
  @override
  String get onboarding_feature_manga => 'マンガライブラリ';
  @override
  String get onboarding_feature_manga_hint => 'OCR検索付きでマンガを読む';
  @override
  String get onboarding_feature_video => '動画ライブラリ';
  @override
  String get onboarding_feature_video_hint => '字幕検索と制カード付きで動画を視聴';
  @override
  String get onboarding_feature_games => 'ゲームライブラリ';
  @override
  String get onboarding_feature_games_hint => 'テキストフック検索付きでギャルゲーを起動（Windowsのみ）';
  @override
  String get onboarding_feature_pack => 'おすすめパック（辞書＋音声）';
  @override
  String get onboarding_feature_pack_hint => '1回のダウンロードで日本語辞書と日英発音音声をセットアップ';
  @override
  String get onboarding_step_pack_title => 'おすすめパックをインストール';
  @override
  String get onboarding_step_pack_body =>
      'おすすめパックには日本語単語辞書、アクセント辞書、頻度辞書、日英発音音声データベースが含まれています。ここでダウンロードしてインポートしてください。インポートはローカルデータを置き換えるため、新規インストール時に実行してください。他の言語を学習中ですか？辞書マネージャーから独自の辞書をインポートしてください。';
  @override
  String get onboarding_step_pack_download_action => 'ダウンロードしてインポート';
  @override
  String get onboarding_step_pack_import_existing_action => 'ダウンロード済みパックをインポート';
  @override
  String get onboarding_step_pack_pick_action => 'ローカルパックファイルを選択';
  @override
  String get onboarding_pack_downloading => 'ダウンロード中… いつでもキャンセル可能、次回再開します';
  @override
  String onboarding_pack_download_failed({required Object message}) =>
      'ダウンロードに失敗しました: ${message}';
  @override
  String get onboarding_step_extension_title => 'ブラウザ拡張機能';
  @override
  String get onboarding_step_extension_body =>
      'コンパニオンブラウザ拡張機能をインストールして、あらゆるWebページで単語を検索できます。';
  @override
  String get onboarding_step_extension_action => '拡張機能ガイドを開く';
  @override
  String get onboarding_step_fonts_title => '読書フォント';
  @override
  String get onboarding_step_fonts_body =>
      'カスタムフォントをインポートし、UI、本文、辞書のどこで使用するかを選択します。';
  @override
  String get settings_section_modules => '機能モジュール';
  @override
  String get module_toggle_hint => 'このライブラリタブをナビゲーションバーに表示します。オフにすると非表示になります';
  @override
  String get video_setting_youtube_quality => 'YouTube画質';
  @override
  String get video_setting_youtube_quality_hint =>
      'この目標までの最高画質でストリームを開始します。自動はスムーズな再生を優先します（ハードウェア対応コーデック、最大1080p）';
  @override
  String get library_view_discover => '見つける';
  @override
  String get manga_discovery_section_trending => 'トレンド';
  @override
  String get manga_discovery_section_popular => '人気';
  @override
  String get manga_discovery_section_top_rated => '高評価';
  @override
  String get manga_discovery_section_latest_finished => '最近完結';
  @override
  String get manga_discovery_load_failed => '発見フィードを読み込めませんでした。';
  @override
  String get manga_discovery_match_section => 'ソースから読む';
  @override
  String get manga_discovery_match_running => '有効なソースでマッチング中…';
  @override
  String get manga_discovery_match_none => '有効なソースで一致するものが見つかりませんでした。';
  @override
  String get manga_discovery_status_releasing => '連載中';
  @override
  String get manga_discovery_status_finished => '完結';
  @override
  String get manga_discovery_status_hiatus => '休載中';
  @override
  String get manga_discovery_status_cancelled => '打ち切り';
  @override
  String get manga_discovery_status_not_yet_released => '未発売';
  @override
  String manga_discovery_source_popular({required Object source}) =>
      '${source}で人気';
  @override
  String get mihon_extension_error => '拡張機能エラー';
  @override
  String get discovery_all_sources => 'すべてのソース';
  @override
  String get discovery_search_hint => 'オンラインリソースを検索';
  @override
  String get discovery_enter_query_hint => 'キーワードを入力して検索';
  @override
  String get discovery_empty => '結果なし';
  @override
  String get discovery_partial_failure => '一部のソースが利用できません';
  @override
  String get discovery_load_more => 'もっと読み込む';
  @override
  String get discovery_download_queued => 'ダウンロードに追加しました';
  @override
  String get discovery_torrent_pushed => 'トレントタスクを追加しました';
  @override
  String get discovery_torrent_failed => 'トレントタスクの追加に失敗しました';
  @override
  String get discovery_kind_novel => '小説';
  @override
  String get discovery_kind_audiobook => 'オーディオブック';
  @override
  String get discovery_source_pick_hint => 'ソースを選んで閲覧するか、キーワードを入力してすべてのソースを検索';
  @override
  String get discovery_source_query_required => 'このソースはキーワード検索のみ対応しています';
  @override
  String get manga_discovery_sources_browse => 'ソースを閲覧';
  @override
  String get discovery_kind_manga => 'マンガ';
  @override
  String get game_capture_workbench_tab => 'キャプチャワークスペース';
  @override
  String get video_builtin_sources_title => '組み込みソース';
  @override
  String get video_resource_no_provider_title => 'リソースインデクサーが未設定';
  @override
  String get video_subtitle_no_provider_title => '字幕プロバイダーが未設定';
  @override
  String get video_subtitle_no_provider_hint =>
      'Jimaku APIキーを入力するか、設定 → ダウンロード → 外部リソース・字幕プロバイダーでOpenSubtitlesを有効にしてください。';
  @override
  String get anime_download_require_subs => '字幕が必要です';
  @override
  String get video_jimaku_scope_hint => 'アニメと日本の実写作品の日本語字幕。無料のAPIキーが必要です。';
  @override
  String get video_builtin_apibay_hint => '映画とテレビ番組。公開インデックス、アカウント不要。';
  @override
  String get video_builtin_knaben_hint => '映画とテレビ番組。複数の公開インデクサーを集約。';
  @override
  String get video_jimaku_enabled_hint =>
      'オフにすると、APIキーが保存されていてもJimakuはスキップされます。';
  @override
  String get discovery_sources_settings_title => '発見ソース';
  @override
  String get discovery_sources_settings_hint =>
      '発見ページの「すべてのソース」検索に参加する組み込みソース。ソースドロップダウンで単一ソースを選択すれば、ここでオフでも常に機能します。';
  @override
  String get video_builtin_sources_hint =>
      'アプリに同梱：アカウントもAPIキーも不要。オフにするとリソース検索から除外されます。';
  @override
  String get video_builtin_nyaa_hint => 'アニメのみ。映画とテレビ番組は下の2つの公開インデクサーでカバーされます。';
  @override
  String get video_resource_no_provider_hint =>
      'この検索にはクエリ先のプロバイダーがありませんでした。組み込みソースを再有効化するか、設定 → ダウンロード → 外部リソース・字幕プロバイダーでTorznabインデクサーを追加してください。';
  @override
  String discovery_source_kinds_label({required Object kinds}) =>
      '対象: ${kinds}';
  @override
  String get video_source_scrape_rescrape_source => 'このソースを再スクレイプ';
  @override
  String get video_source_scrape_run_detail_title => 'スクレイプ結果';
  @override
  String get video_source_scrape_run_no_issues => '警告やエラーは記録されませんでした。';
  @override
  String get video_source_scrape_manual_search_title => '作品を手動で指定';
  @override
  String get video_source_scrape_manual_search_hint =>
      'メタデータプロバイダーをタイトルで検索し、正しい作品を選択してください。';
  @override
  String get video_source_scrape_manual_search_action => '検索';
  @override
  String get video_source_scrape_manual_search_empty => '結果なし';
  @override
  String get profile_media_manga => 'マンガ';
  @override
  String get profile_media_game => 'ゲーム';
  @override
  String get profile_media_browser => 'ブラウザ';
  @override
  String get mihon_store_remove => '拡張機能ストアを削除';
  @override
  String get video_import_folder_as_source_hint => 'このフォルダを継続スキャンして新しい動画を検出';
  @override
  String get manga_import_folder_as_source_hint => 'このフォルダを継続スキャンして新しいマンガを検出';
  @override
  String get download_no_managed_video_source =>
      '管理対象の動画ソースがまだありません。ダウンロードにはローカル動画フォルダが必要です。';
  @override
  String get download_add_video_source => '動画ソースを追加';
  @override
  String get video_subtitle_prev_cue_align => '前の行を現在位置に合わせる';
  @override
  String get video_subtitle_next_cue_align => '次の行を現在位置に合わせる';
  @override
  String video_control_custom_action({required Object index}) =>
      'ショートカット ${index}';
  @override
  String get video_control_custom_action_none => '未割り当て';
  @override
  String get settings_destination_storage => 'ストレージ';
  @override
  String get settings_destination_storage_summary => 'データの場所とディスク使用量';
  @override
  String get storage_overview_section => 'ディスク使用量';
  @override
  String get storage_overview_total => '合計';
  @override
  String get storage_overview_refresh => '再スキャン';
  @override
  String get storage_overview_scanning => 'スキャン中…';
  @override
  String get storage_category_books => '書籍';
  @override
  String get storage_category_dictionaries => '辞書';
  @override
  String get storage_category_video_downloads => '動画ダウンロード';
  @override
  String get storage_category_covers => '封面とサムネイル';
  @override
  String get storage_category_subtitles => '字幕';
  @override
  String get storage_category_shaders => '動画シェーダー';
  @override
  String get storage_category_custom_fonts => 'カスタムフォント';
  @override
  String get storage_category_web => 'Webアーカイブとブラウザデータ';
  @override
  String get storage_category_exports => 'エクスポート';
  @override
  String get storage_category_database => 'データベース';
  @override
  String get storage_category_ocr_models => 'マンガOCRモデル';
  @override
  String storage_entry_more_rest({required Object n, required Object size}) =>
      '他 ${n} 件、合計 ${size}';
  @override
  String storage_entry_delete_confirm_title({required Object name}) =>
      '${name} を削除しますか？';
  @override
  String get storage_entry_delete_book_confirm_body =>
      'この端末から書籍、読書の進捗、ペアリングされた音声コピーを削除します。';
  @override
  String get storage_entry_delete_dictionary_confirm_body =>
      '辞書とそのインポートデータを削除します。';
  @override
  String get storage_entry_delete_done => '削除しました';
  @override
  String storage_entry_delete_failed({required Object reason}) =>
      '削除に失敗: ${reason}';
  @override
  String get storage_modules_anime4k_title => 'Anime4Kシェーダー';
  @override
  String get storage_modules_anime4k_hint => '動画設定からいつでも再ダウンロードできます';
  @override
  String storage_modules_anime4k_delete_done({required Object n}) =>
      '${n} 個のシェーダーファイルを削除しました';
  @override
  String get storage_bundled_section => '同梱コンポーネント';
  @override
  String get storage_bundled_hint => 'インストーラーに同梱。削除したファイルは次回更新時に復元されます。参照用です。';
  @override
  String get storage_dictionary_delete_incomplete =>
      '削除後も辞書が残っています。エラーログを確認してください';
  @override
  String get module_extension_label => 'ブラウザ拡張機能';
  @override
  String get onboarding_feature_books => '小説ライブラリ';
  @override
  String get onboarding_feature_books_hint => '辞書検索とオーディオブック同期でEPUB小説を読む';
  @override
  String get onboarding_feature_extension_hint => '任意のWebページで単語を検索（デスクトップのみ）';
  @override
  String get video_setting_tap_toggles_playback => 'タップで再生/一時停止';
  @override
  String get video_setting_tap_toggles_playback_hint =>
      'オフにすると、動画のタップでコントロールの表示のみ行います';
  @override
  String get manga_ocr_engine_auto_desc =>
      '設定済みのオフラインエンジンを優先。自動でLensにアップロードすることはありません。';
  @override
  String get manga_ocr_engine_local_onnx_desc =>
      '完全オフライン、最高品質。初回のモデルダウンロードが必要で、古いハードウェアでは遅くなります。';
  @override
  String get manga_ocr_engine_google_lens_desc =>
      'インターネット接続が必要で、ページ画像をGoogleにアップロードします。ダウンロード不要で高速ですが、品質はローカルモデルより劣ります。';
  @override
  String get manga_ocr_engine_external_desc =>
      'ユーザーがインストールしたMokuroコマンドラインを呼び出します。デスクトップのみ。';
  @override
  String get manga_ocr_engine_paired_host_desc =>
      'ネットワーク上のペアリング済みデバイスに処理を委託します。この端末にはダウンロード不要です。';
  @override
  String manga_ocr_model_disk_usage({required Object size}) =>
      'ディスク使用量: ${size}';
  @override
  String manga_ocr_model_download_size({required Object size}) => '${size} 必要';
  @override
  String manga_ocr_delete_done_freed({required Object size}) =>
      'モデルを削除しました。${size} を解放';
  @override
  String get manga_ocr_model_unused_by_engine =>
      '現在のエンジンはこれらのローカルモデルファイルを使用しません。';
  @override
  String manga_ocr_download_total_progress({
    required Object done,
    required Object total,
  }) => '${done} / ${total}';
  @override
  String get media_source_network_subtitle_video =>
      'WebDAVリモートライブラリ（その場でストリーミング）';
  @override
  String get jellyfin_settings_title => 'メディアサーバー (Jellyfin / Emby)';
  @override
  String get jellyfin_server_url => 'サーバーURL';
  @override
  String get jellyfin_sign_in => 'サインイン';
  @override
  String get jellyfin_sign_out => 'サインアウト';
  @override
  String get jellyfin_sign_in_failed => 'サインインに失敗しました';
  @override
  String get jellyfin_settings_hint => 'サーバー上の動画が動画ライブラリに表示され、直接ストリーミングされます。';
  @override
  String get video_setting_mpv_lua_scripts => 'Luaスクリプトを読み込む';
  @override
  String get video_setting_mpv_lua_scripts_hint =>
      'mpv_scriptsフォルダ内のすべての.luaファイルをプレーヤーに読み込みます。オフにすると次回動画を開いたときに反映されます。';
  @override
  String get video_setting_mpv_lua_scripts_import => 'Luaスクリプトをインポート';
  @override
  String get video_setting_mpv_lua_scripts_imported => 'スクリプトをインポートしました';
  @override
  String get video_setting_mpv_lua_scripts_dir_copy => 'スクリプトフォルダのパスをコピー';
  @override
  String get video_setting_mpv_lua_scripts_dir_copied => 'フォルダパスをコピーしました';
  @override
  String get interconnect_share_statistics => '統計を共有';
  @override
  String get interconnect_share_statistics_hint => '読書・視聴時間、文字数、検索・制カードカウンター';
  @override
  String get interconnect_share_favorites => 'お気に入りを共有';
  @override
  String get interconnect_share_favorites_hint => 'お気に入りの単語と文、お気に入り解除を含む';
  @override
  String get interconnect_share_section => 'ペアリング済みデバイスと共有';
  @override
  String get interconnect_share_section_footer =>
      'ペアリング済みデバイスと双方向でマージされ、デフォルトでオンです。オフにすると送信と受信の両方が停止します。';
  @override
  String get game_hook_mining_no_session_lines =>
      'キャプチャされた行がまだないため、このカードに紐付けるものがありません。ワークベンチで別のテキストスレッドを選択してください。';
  @override
  String get shortcut_action_manga_pan_up => '上にパン';
  @override
  String get shortcut_action_manga_pan_down => '下にパン';
  @override
  String get shortcut_action_manga_pan_left => '左にパン';
  @override
  String get shortcut_action_manga_pan_right => '右にパン';
  @override
  String get drag_drop_folder_source_added => 'フォルダをライブラリソースとして追加し、スキャンしました。';
  @override
  String get drag_drop_folder_source_exists => 'そのフォルダは既にライブラリソースです。';
  @override
  String get sync_pair_invalid_url => '無効なアドレス形式です';
  @override
  String get sync_pair_peer_requires_https =>
      'このデバイスはHTTPSのみ受け付けます。https:// アドレスを使用してください。';
  @override
  String get sync_pair_peer_not_https =>
      'ピアはこのポートでHTTPSを使用していません。http:// アドレスを使用してください。';
  @override
  String get sync_pair_not_fushi_discovered => 'このアドレスにFushiデバイスが見つかりませんでした。';
  @override
  String get shortcut_action_popup_play_audio => '単語の音声を再生';
  @override
  String get sync_progress_asset_transfer => '転送を準備中';
  @override
  String get sync_asset_dictionary_upload => '辞書をアップロード';
  @override
  String get sync_asset_dictionary_download => '辞書をダウンロード';
  @override
  String get sync_asset_local_audio_upload => 'ローカル音声データベースをアップロード';
  @override
  String get sync_asset_local_audio_download => 'ローカル音声データベースをダウンロード';
  @override
  String get sync_asset_upload_hint =>
      'このデバイスにあってリモートにないものを送信します。パッケージが大きくなる場合があります。';
  @override
  String get sync_asset_upload_action => 'アップロード';
  @override
  String get sync_asset_download_action => 'ダウンロード';
  @override
  String get sync_asset_download_hint =>
      'リモートにあってこのデバイスにないものを取得します。ローカルで削除したエントリも含まれます。';
  @override
  String get sync_asset_legacy_notice_title => '辞書と音声の同期が手動になりました';
  @override
  String get sync_asset_legacy_notice_body =>
      'このデバイスでは辞書とローカル音声データベースの自動同期がオンでした。そのスイッチは廃止されました。転送したい場合は以下のアップロード/ダウンロードを使用してください。何も削除されていませんが、新しい辞書は自動バックアップされなくなりました。';
  @override
  String get sync_asset_legacy_notice_dismiss => '了解';
  @override
  String get download_task_add => 'タスクを追加';
  @override
  String get download_task_add_pick_torrent => 'トレントファイルを選択';
  @override
  String get download_task_add_title_label => 'タイトル';
  @override
  String get download_task_add_content_kind => 'コンテンツの種類';
  @override
  String get download_task_add_invalid => '認識できないマグネットリンクまたはトレントファイル';
  @override
  String get download_task_add_submitted => 'タスクを追加しました';
  @override
  String get download_task_search_hint => 'タスクを検索';
  @override
  String get download_task_sort_created => '追加日';
  @override
  String get download_task_sort_progress => '進捗';
  @override
  String get download_task_sort_status => 'ステータス';
  @override
  String get download_task_no_match => '一致するタスクなし';
  @override
  String subtitle_version_episode_count({required Object n}) => '${n} エピソード';
  @override
  String subtitle_version_unnumbered_count({required Object n}) => '${n} 番号なし';
  @override
  String get subtitle_version_ai_translated => 'AI翻訳';
  @override
  String get subtitle_version_content_language => 'コンテンツ';
  @override
  String get subtitle_version_show_files => 'ファイルを表示';
  @override
  String get subtitle_version_view_files => 'ファイル一覧';
  @override
  String get resource_version_batch => '一括';
  @override
  String get resource_version_view_flat => 'すべてのリリース';
  @override
  String get subscription_mode_one_shot => '単発';
  @override
  String get subscription_mode_ongoing => '継続';
  @override
  String get subscription_legacy_badge => 'レガシー';
  @override
  String get subscription_legacy_hint => '旧システムからインポートされたもの。自動チェックは適用されません。';
  @override
  String subscription_next_check({required Object time}) => '次回チェック: ${time}';
  @override
  String subscription_last_matched({required Object time}) => '最終一致: ${time}';
  @override
  String get subscription_item_status_discovered => '保留中';
  @override
  String get subscription_item_status_queued => 'キュー待ち';
  @override
  String get subscription_item_status_processed => 'インポート済み';
  @override
  String get subscription_item_status_skipped => 'スキップ';
  @override
  String get subscription_item_status_failed => '失敗';
  @override
  String get subscription_items_empty => '追跡中のリリースはまだありません';
  @override
  String get subscription_edit_title => 'サブスクリプションを編集';
  @override
  String get subscription_edit_rule_hint =>
      'IDとバージョンのルールはここでは変更できません。バージョンを切り替えるには再購読してください。履歴は保持されます。';
  @override
  String get subscription_search_hint => 'サブスクリプションを検索';
  @override
  String get subscription_sort_last_checked => '最終チェック日';
  @override
  String get subscription_sort_last_matched => '最終一致日';
  @override
  String get subscription_show_items => 'エピソード履歴';
  @override
  String get subscription_sort_created => '追加日';
  @override
  String get subscription_no_match => '一致するサブスクリプションなし';
  @override
  String get download_subscription_start_episode_invalid =>
      '0以上の整数を入力するか、空欄のままにしてください';
  @override
  String get download_subscription_source_unavailable => '現在のターゲット（利用不可）';
  @override
  String resource_version_episode_count({required Object n}) => '${n} エピソード';
  @override
  String get resource_version_show_files => 'ファイルを表示';
  @override
  String get manga_online_detail_load_failed => 'このマンガを読み込めませんでした。';
  @override
  String get manga_online_error_view_detail => '詳細を表示';
  @override
  String get discovery_sources_unavailable => 'すべてのソースが利用できません';
  @override
  String get font_target_game_lookup => 'ゲーム検索ウィンドウのフォント';
  @override
  String get gal_hook_text_font => 'ゲーム検索ウィンドウのフォント';
  @override
  String get gal_hook_text_font_hint =>
      '管理フォントライブラリからフォントを選択します。最初に有効なフォントが使用されます。';
  @override
  String get gal_hook_text_letter_spacing => '字間';
  @override
  String get gal_hook_text_letter_spacing_hint =>
      '検索のヒットテストに影響を与えずに文字間隔を調整します。';
  @override
  String get gal_hook_text_line_height => '行の高さ';
  @override
  String get gal_hook_text_line_height_hint => '折り返し行の縦方向の間隔を調整します。';
  @override
  String get gal_hook_text_bold => '太字テキスト';
  @override
  String get gal_hook_text_bold_hint => 'ゲーム画面上での視認性向上のため、セミボールドテキストを使用します。';
  @override
  String get gal_hook_text_alignment => 'テキスト配置';
  @override
  String get gal_hook_text_alignment_center => '中央揃え';
  @override
  String get gal_hook_text_alignment_left => '左揃え';
  @override
  String get gal_hook_text_color => 'テキストの色';
  @override
  String get gal_hook_overlay_legibility_section => 'ウィンドウと可読性';
  @override
  String get gal_hook_text_background_color => 'ウィンドウの背景色';
  @override
  String get gal_hook_text_background_opacity => 'ウィンドウの背景透明度';
  @override
  String get gal_hook_text_background_opacity_hint =>
      '0%にするとデスクトップ歌詞風の透明ウィンドウになります。';
  @override
  String get gal_hook_text_outline_color => 'アウトラインの色';
  @override
  String get gal_hook_text_outline_width => 'アウトラインの幅';
  @override
  String get gal_hook_text_outline_width_hint =>
      '0にするとアウトラインが無効になります。薄い影は残ります。';
  @override
  String get gal_hook_text_padding => 'テキストの水平パディング';
  @override
  String get gal_hook_text_padding_hint => 'テキストをウィンドウ端とリサイズグリップから離します。';
  @override
  String get gal_hook_text_corner_radius => 'ウィンドウの角丸半径';
  @override
  String get gal_hook_text_corner_radius_hint => '背景の角丸半径を調整します。';
  @override
  String get storage_shaders_delete_anime4k => 'Anime4Kシェーダーを削除';
  @override
  String get video_jimaku_series_lookup_degraded =>
      '今回AniListでシリーズを確認できなかったため、タイトルによるプレーン検索の結果です。同シリーズの別シーズンが混在する可能性があります。';
  @override
  String get dict_style_tab_visual => 'ビジュアル';
  @override
  String get dict_style_tab_code => 'CSS';
  @override
  String get dict_style_scope_all => 'すべての辞書';
  @override
  String get dict_style_part_entry_card => 'エントリカード';
  @override
  String get dict_style_part_expression => '見出し語';
  @override
  String get dict_style_part_ruby => 'ふりがな';
  @override
  String get dict_style_part_deinflection_tag => '活用変化チェーン';
  @override
  String get dict_style_part_frequency => '頻度';
  @override
  String get dict_style_part_pitch => 'アクセント';
  @override
  String get dict_style_part_dictionary_label => '辞書名';
  @override
  String get dict_style_part_glossary_content => '語義';
  @override
  String get dict_style_part_glossary_tag => '語義タグ';
  @override
  String get dict_style_prop_text_color => 'テキストの色';
  @override
  String get dict_style_prop_background => 'ハイライト';
  @override
  String get dict_style_prop_bold => '太字';
  @override
  String get dict_style_prop_italic => '斜体';
  @override
  String get dict_style_prop_underline => '下線';
  @override
  String get dict_style_prop_font_scale => 'フォントサイズ';
  @override
  String get dict_style_prop_corner_radius => '角丸半径';
  @override
  String get dict_style_part_reset => 'パーツをリセット';
  @override
  String get dict_style_reset_all => 'すべてリセット';
  @override
  String get dict_style_global_only => 'すべての辞書に対してのみ調整可能';
  @override
  String get dict_style_preview_title => 'プレビュー';
  @override
  String get dict_style_pick_hint => 'プレビュー内のパーツをタップすると移動します';
  @override
  String get dict_style_prop_default => 'デフォルト';
  @override
  String get dict_style_part_expression_tag => '見出し語タグ';
  @override
  String get dict_style_prop_on => 'オン';
  @override
  String get dict_style_prop_off => 'オフ';
  @override
  String get dict_style_title => '辞書スタイル';
  @override
  String get video_source_scrape_anidb_client => 'AniDBクライアント名';
  @override
  String get video_source_scrape_anidb_client_hint =>
      '登録済みのAniDB HTTP APIクライアント名。空欄にするとキャッシュされたタイトルカタログのみ使用します';
  @override
  String get video_source_scrape_anidb_client_version => 'AniDBクライアントバージョン';
  @override
  String get video_source_scrape_anidb_client_version_hint =>
      'AniDBに登録された正のバージョン番号。両方のフィールドが有効になるまでHTTP APIは無効のままです';
  @override
  String get video_scrape_view_source => 'ソースの詳細を表示';
  @override
  String get video_setting_auto_scrape_hint =>
      'ライブラリスキャン後に動画メタデータを自動的に識別・取得します';
  @override
  String get video_resource_identity_provider => 'リソース識別元';
  @override
  String get video_source_scrape_clear_all => 'すべてのスクレイプ記録を消去';
  @override
  String get video_source_scrape_clear_all_hint =>
      'すべての動画スクレイプメタデータとFushi生成の封面・NFOファイルを削除します。';
  @override
  String get video_source_scrape_clear_all_confirm_title =>
      'すべての動画スクレイプ記録を消去しますか？';
  @override
  String get video_source_scrape_clear_all_confirm_body =>
      'すべてのスクレイプメタデータとソースバインディングを削除し、シリーズ結果をクリアし、Fushiが生成した未変更の封面とNFOファイルを削除します。動画ファイル、ライブラリエントリ、グループ、視聴進捗、字幕、タグ、手動選択した封面、ユーザーが変更したサイドカーファイルは保持されます。この操作は元に戻せません。';
  @override
  String get video_source_scrape_clear_all_confirm_action => '消去';
  @override
  String get video_source_scrape_clear_all_completed => 'すべての動画スクレイプ記録を消去しました。';
  @override
  String get video_source_scrape_clear_all_completed_protected =>
      'スクレイプ記録を消去しました。変更済みまたは検証不可能なサイドカーファイルは保持されました。';
  @override
  String get video_source_scrape_clear_all_busy =>
      '動画スキャンまたはスクレイプがまだ実行中です。完了後に再試行してください。';
  @override
  String get video_source_scrape_clear_all_failed =>
      'すべてのスクレイプ記録を消去できませんでした。未検証のユーザーファイルは削除されていません。';
  @override
  String get video_source_scrape_clear_all_in_progress =>
      'スクレイプ記録のクリーンアップが既に進行中です。';
  @override
  String get game_session_japanese_locale => '日本語ロケール';
  @override
  String get game_session_japanese_locale_hint =>
      'ゲームは日本語（CP932）ロケールで起動されました。テキストが文字化けしたりスクリプトエラーが表示される場合は、このゲームの日本語ロケールを「使用しない」に設定してください。';
  @override
  String get onboarding_anki_intro_body =>
      'Ankiは無料の間隔反復フラッシュカードアプリです。新しい単語がカードになり、忘却曲線に沿って復習がスケジュールされます。検索後、Fushiでワンタップで意味、文、音声、スクリーンショット付きのAnkiカードを作成できます。';
  @override
  String get onboarding_anki_setup_desktop_hint =>
      'Ankiデスクトップアプリをインストールし、AnkiConnectアドオンを追加してください。Ankiで「ツール」→「アドオン」→「アドオンを取得」を開き、コード 2055492159 を入力します。カード作成中はAnkiを起動したままにしてください。';
  @override
  String get onboarding_anki_setup_ios_hint =>
      'AnkiMobileをインストールすれば、カードの追加はすぐに使えます。フル機能を使うには、同じネットワーク上のパソコンで動作しているAnkiにAnkiConnect経由で接続してください。';
  @override
  String get onboarding_anki_backend_label => '接続';
  @override
  String get onboarding_anki_test_action => '接続テスト';
  @override
  String onboarding_anki_test_success({required Object count}) =>
      '接続成功: ${count} 個のデッキが見つかりました';
  @override
  String get onboarding_anki_get_anki_action => 'Ankiを入手（デスクトップ）';
  @override
  String get onboarding_anki_get_ankidroid_action => 'AnkiDroidを入手';
  @override
  String get onboarding_anki_mobile_ankiconnect_title =>
      '上級: このデバイスでAnkiConnectを使用';
  @override
  String get onboarding_anki_mobile_ankiconnect_hint =>
      'このデバイスから同じネットワーク上のパソコンで動作しているAnkiにカードを作成することもできます。カード作成設定でAnkiConnectを有効にし、パソコンのアドレスを入力してください。';
  @override
  String get onboarding_anki_setup_android_hint =>
      'AnkiDroidをインストールし、一度開いて初回セットアップを完了させてください。Fushiに戻り、最初のカード作成時に表示される権限ダイアログで「許可」をタップするだけです。AnkiDroidの設定変更は不要です。';
  @override
  String get onboarding_anki_install_addon_action => 'AnkiConnectアドオンをインストール';
  @override
  String get onboarding_anki_addon_installed =>
      'AnkiConnectがインストールされました。Ankiを起動（または再起動）してから、接続テストをタップしてください。';
  @override
  String get onboarding_anki_addon_no_anki =>
      'Ankiのデータフォルダが見つかりません。Ankiをインストールして一度開いてから再試行してください。';
  @override
  String onboarding_anki_addon_failed({required Object message}) =>
      'インストールに失敗: ${message}';
  @override
  String get game_hook_reason_capability_probe_failed =>
      'キャプチャコンポーネントが機能チェックに応答しませんでした。ディスク上に見つかりましたが、実行できないか時間内に応答しませんでした。ウイルス対策ソフトがブロックしている、Fushiに起動権限がない、または古いヘルパープロセスが残っている可能性があります。すべてのゲームを閉じ、ウイルス対策の隔離を確認してから再試行してください。';
  @override
  String get download_backend_setup_title => 'ダウンロードバックエンドを設定';
  @override
  String get download_backend_setup_intro =>
      'ダウンロードを実行するエンジンを選びます。あとからダウンロード設定でいつでも変更できます。';
  @override
  String get download_backend_embedded_hint =>
      'おすすめ。ダウンロードは Fushi の内部で完結し、追加のインストールは不要です。';
  @override
  String get download_backend_qb_hint =>
      'すでに動かしている qBittorrent WebUI に Fushi を接続します。';
  @override
  String get download_backend_setup_start => '今すぐ設定';
  @override
  String get download_backend_embedded_unavailable =>
      'このインストールには内蔵エンジンのランタイムが含まれていません。完全版のパッケージを再インストールするか、外部の qBittorrent をご利用ください。';
  @override
  String get download_backend_qb_url_invalid =>
      '完全なアドレスを入力してください。例: http://127.0.0.1:8080';
  @override
  String get mihon_store_zero_extensions =>
      'このリポジトリから返された拡張機能は 0 件です。アドレスが古いインデックスを指している可能性があります。';
  @override
  String get mihon_store_edit => 'リポジトリのアドレスを編集';
  @override
  String get manga_ocr_download_resume => 'ダウンロードを再開';
  @override
  String get manga_ocr_import => 'ローカルモデルをインポート';
  @override
  String get manga_ocr_import_title => 'ダウンロード済みのモデルをインポート';
  @override
  String get manga_ocr_import_intro =>
      'アプリ内のダウンロードがうまくいかない場合は、下記のファイルを自分でダウンロードしてここからインポートしてください。それらを含む zip でもかまいません。';
  @override
  String get manga_ocr_import_copy_urls => 'ダウンロードリンクをコピー';
  @override
  String get manga_ocr_import_urls_copied => 'ダウンロードリンクをコピーしました';
  @override
  String get manga_ocr_import_pick_folder => 'フォルダーを選択';
  @override
  String get manga_ocr_import_pick_files => 'ファイルを選択';
  @override
  String get manga_ocr_import_running => 'インポート中…';
  @override
  String manga_ocr_import_done({required Object count}) =>
      '${count} 個のファイルをインポートしました';
  @override
  String get manga_ocr_import_matched_nothing => '使用できるモデルファイルを認識できませんでした';
  @override
  String manga_ocr_import_size_mismatch({
    required Object file,
    required Object expected,
    required Object actual,
  }) => '${file} のサイズが違います: 期待値 ${expected}、実際 ${actual}';
  @override
  String manga_ocr_import_still_missing({required Object count}) =>
      'まだ ${count} 個のファイルが足りません';
  @override
  String get manga_ocr_import_failed => 'モデルのインポートに失敗しました';
  @override
  String get manga_tap_ocr_notice_title => 'タップで認識';
  @override
  String get manga_tap_ocr_notice_body =>
      'このページにはまだテキストデータがありません。Fushi は設定で選んだ OCR エンジンでその場で認識し、認識が終われば単語をタップして調べられます。エンジンの変更やこの動作の無効化は「設定 › マンガOCR」で行えます。';
  @override
  String get manga_tap_ocr_notice_confirm => '今すぐ認識';
  @override
  String get manga_tap_ocr_running => 'このページを認識しています…';
  @override
  String get manga_tap_to_ocr => 'タップで認識';
  @override
  String get manga_tap_to_ocr_desc =>
      'まだ認識していない吹き出しをタップすると、そのページを認識してすぐに単語を調べられます。';
  @override
  String get manga_ocr_engine_system => '端末の OCR';
  @override
  String get manga_ocr_engine_system_desc =>
      '端末に内蔵された文字認識を使います。ダウンロード不要、完全にオフラインで、何もアップロードしません。ただし縦書きの吹き出しや手書き文字ではローカルモデルよりはっきり弱くなります。';
  @override
  String get manga_ocr_engine_system_unavailable => 'この端末では内蔵の文字認識を利用できません';
  @override
  String get manga_tap_ocr_online_lens_only =>
      'オンラインの章はローカルに保存されないため、読み取れるのは Google Lens だけです。ページ画像は Google にアップロードされます。';
  @override
  String get settings_destination_services => 'オンラインサービス';
  @override
  String get settings_destination_services_summary =>
      'サードパーティ API、インデクサー、メディアサーバー';
  @override
  String get section_services_subtitles => '字幕のソース';
  @override
  String get section_services_resources => 'リソースインデクサー';
  @override
  String get section_services_metadata => 'メタデータのスクレイピング';
  @override
  String get settings_services_link_subtitle =>
      'Jimaku、OpenSubtitles、Torznab、Jellyfin、AniDB、TMDB はここでまとめて設定します';
  @override
  String get game_hook_btn_replay => 'この台詞の音声を再生';
  @override
  String get game_hook_btn_recapture => '音声を録り直す';
  @override
  String get game_hook_btn_follow => '新しい台詞に追従';
  @override
  String get game_hook_btn_passthrough => 'クリックをゲームに通す';
  @override
  String get game_hook_btn_transparency => '背景を切り替え';
  @override
  String get game_hook_btn_lock => '位置を固定';
  @override
  String get game_hook_btn_workbench => '取り込みワークベンチを開く';
  @override
  String get game_hook_btn_topmost => '常に最前面に表示';
  @override
  String get game_hook_btn_close => 'オーバーレイを閉じる';
  @override
  String get video_jimaku_search_failed => '字幕の検索に失敗しました';
  @override
  String video_subtitle_error_with_code({
    required Object msg,
    required Object code,
  }) => '${msg}（HTTP ${code}）';
  @override
  String get manga_rescan_run => '選択範囲を再認識';
  @override
  String get manga_rescan_failed => '選択範囲の再認識に失敗しました';
  @override
  String get manga_rescan_region_updated => '選択範囲を再認識してページに保存しました';
  @override
  String get manga_ocr_mobile_note =>
      'モバイルでは、これらのモデルがマンガリーダーの巻全体・タップ・選択範囲の OCR を担うローカルエンジンに使われます。';
  @override
  String get manga_rescan_hint =>
      '再認識したいテキストを枠で囲んでドラッグします。結果は枠内の既存のテキストレイヤーを置き換えます。';
  @override
  String get manga_rescan_undone => '再認識する前のテキストレイヤーに戻しました';
  @override
  String get manga_rescan_undo_failed => '前のテキストレイヤーに戻せませんでした';
  @override
  String get module_tool_toggle_hint => 'このタブをナビゲーションバーに表示します。オフにすると非表示になります';
  @override
  String get module_downloads_hidden_hint =>
      '「ダウンロード」タブは 設定 → 外観 → 機能モジュール で非表示になっています。購読を管理するには再度オンにしてください。';
  @override
  String get book_file_location_open => 'ファイルの場所を開く';
  @override
  String get book_file_location_failed => 'この本のファイルの場所を開けませんでした。';
  @override
  String storage_entry_database_snapshots_label({required Object n}) =>
      'データベースのバックアップスナップショット（${n} 個のファイル）';
  @override
  String get storage_entry_delete_database_snapshots_confirm_body =>
      '残っているデータベースのバックアップスナップショット（corrupt-bak / pre-restore / 旧バージョンの移行コピー）をすべて削除します。使用中のデータベースとその -wal/-shm サイドカーには影響しません。';
  @override
  String get manga_global_search_no_sources =>
      '有効なマンガソースがまだありません。「インポート」タブで追加してください。';
  @override
  String get manga_global_search_open_sources => 'インポートへ';
  @override
  String get settings_downloads_open_page_hint =>
      'ダウンロードページを開く（タスク / リソース / 購読）';
  @override
  String get download_video_source_required => '動画のソースが必要です';
  @override
  String get game_hook_reason_stale_session =>
      '前回のキャプチャセッションがまだ解放されていません。Fushi が自動で再試行するので、操作は不要です。';
  @override
  String get video_subtitle_delete => '字幕ファイルを削除';
  @override
  String video_subtitle_delete_confirm({required Object path}) =>
      'この字幕ファイルをディスクから削除しますか？この操作は元に戻せません。\n${path}';
  @override
  String video_subtitle_deleted({required Object label}) =>
      '字幕ファイルを削除しました: ${label}';
  @override
  String video_subtitle_delete_failed({required Object label}) =>
      '字幕ファイルの削除に失敗しました: ${label}';
  @override
  String get shortcut_action_manga_toggle_chrome => 'マンガUIの表示切り替え';
  @override
  String get manga_interface_hide => 'UIを隠す';
  @override
  String get manga_interface_show => 'UIを表示';
  @override
  String get gal_hook_text_vertical_alignment => '垂直方向の配置';
  @override
  String get gal_hook_text_vertical_alignment_center => '中央';
  @override
  String get gal_hook_text_vertical_alignment_top => '上';
  @override
  String get storage_entry_external_audio_hint =>
      '音声は元のファイルを参照するため、アプリの容量を使いません';
  @override
  String get jellyfin_auto_list_title => '動画を開いたときに自動で一覧表示';
  @override
  String get jellyfin_auto_list_hint =>
      'オフ: 動画ページを開いてもメディアサーバーにリクエストを送りません。動画ライブラリで引っ張って更新すると手動で一覧表示できます。非常に大きなサーバーでは、自動列挙がスクレイピングのように見えて不正利用検知に引っかかることがあるため、オフを推奨します。';
  @override
  String get jellyfin_libraries_title => '一覧表示するライブラリ';
  @override
  String get jellyfin_libraries_hint =>
      '何も選ばないとすべての動画ライブラリを一覧表示します。実際に見るライブラリだけに絞ると、巨大なサーバーが丸ごと列挙されるのを防げます。';
  @override
  String get jellyfin_libraries_load_failed => 'ライブラリ一覧を読み込めませんでした';
  @override
  String get video_filter_series => 'シリーズ';
  @override
  String get video_filter_series_in => 'シリーズ内';
  @override
  String get video_filter_series_standalone => 'シリーズ外';
  @override
  String get manga_source_cloudflare_verify_title => 'サイト認証';
  @override
  String get manga_source_cloudflare_verify_hint =>
      '下の Cloudflare 認証を完了してください。通過すると自動で読み込みを再開します。';
  @override
  String get db_cannot_open_title => 'データ保存場所を利用できません';
  @override
  String get db_cannot_open_message =>
      'Fushi は設定されたデータ保存場所でデータベースを開くことも作成することもできませんでした。データが壊れているわけではありません。フォルダーが存在しない、読み取り専用、または切断されたドライブ上にある可能性があります。設定でデータ保存場所を確認するか、再起動してデフォルトの場所を使用してください。';
  @override
  String get anki_error_field_mapping_mismatch =>
      'フィールドマッピングのいずれも選択中のノートタイプと一致しないため、Anki がカードを拒否しました。Anki 設定でフィールドをマッピングし直すか、「Lapis デッキを作成」をお使いください。';
  @override
  String get anki_error_first_field_empty =>
      '選択中のノートタイプの最初のフィールドが空のため、Anki はこのノートを受け付けません。Anki 設定でフィールドを割り当ててください。';
  @override
  String get storage_category_cache => 'キャッシュと一時ファイル';
  @override
  String get storage_category_other => 'その他（未分類）';
  @override
  String get collection_export_pick_source => 'ソースを選択';
  @override
  String get collection_export_all_sources => 'すべてのソース';
  @override
  String get video_subtitle_list_search => '字幕を検索';
  @override
  String get video_subtitle_list_search_hint => '入力して行を絞り込み';
  @override
  String get video_subtitle_list_search_empty => '一致する行がありません';
  @override
  String get video_subtitle_list_export_favorites => 'お気に入りの行をエクスポート';
  @override
  String get shortcut_action_video_search_subtitle_list => '字幕リストを検索';
  @override
  String get game_hook_code_paste_title => 'フックコードを貼り付け';
  @override
  String get game_hook_code_paste_hint =>
      '生のコードを貼り付けてください。例：/HQN4@4CE90:game.exe';
  @override
  String get game_hook_code_paste_body =>
      'コードは現在実行中のゲームの実行ファイルに紐付けられ、次回から自動的に再利用されます。';
  @override
  String get game_hook_code_paste_saved => 'このゲームのフックコードを保存しました';
  @override
  String get game_hook_code_paste_invalid => 'フックコードではないようです';
  @override
  String get game_hook_code_label => 'ラベル（任意）';
  @override
  String get discovery_game_type_all => 'すべて';
  @override
  String get discovery_game_type_raw => '未翻訳';
  @override
  String get discovery_game_type_translated => '翻訳済み';
  @override
  String get discovery_game_type_mobile => 'モバイル';
  @override
  String get discovery_game_type_unlabelled => '未分類';
  @override
  String get game_library_downloading => 'ダウンロード中';
  @override
  String get game_library_download_queued => '待機中';
  @override
  String get game_library_download_retrying => '再試行中';
  @override
  String get delete_disclosure_audio_source_files => 'インポートした元の音声ファイル';
  @override
  String get delete_local_files => 'ローカルファイルも削除する';
  @override
  String get delete_local_files_video_desc =>
      '動画ファイルをこの端末から削除し、対応するダウンロードタスクも消去します。元に戻せません。';
  @override
  String get delete_local_files_audio_desc =>
      '元の音声ファイルをこの端末から削除します。書籍と字幕の元ファイルは残ります。元に戻せません。';
  @override
  String get delete_disclosure_book_source_kept => 'インポートした元の書籍・字幕ファイル';
  @override
  String get download_task_delete_files_failed =>
      'ダウンロード済みデータを削除できませんでした。ダウンロードエンジンが確認を返していません';
  @override
  String delete_local_files_failed({required Object n}) =>
      '${n} 件のローカルファイルを削除できませんでした。使用中の可能性があります';
  @override
  String batch_hidden_by_filter_note({required Object n}) =>
      '選択済みの ${n} 件は現在のフィルターで非表示のため、今回は処理されません。';
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
  String get download_direct_queue_section => '直リンクダウンロード';
  @override
  String get download_task_kind_all => 'すべての種類';
  @override
  String get download_task_kind_filter => '種類で絞り込む';
  @override
  String get manga_online_series_empty => 'このシリーズには巻がありません。';
  @override
  String sync_peer_book_delete_confirm({required Object name}) =>
      '対向デバイスから「${name}」を削除しますか？そちらのファイルと読書進捗は完全に削除され、この端末には控えがありません。この操作は取り消せません。';
  @override
  String sync_peer_video_delete_confirm({required Object name}) =>
      '対向デバイスのライブラリから「${name}」を削除しますか？対向デバイスが自分で取り込んだ動画ファイルは残ります。この操作は取り消せません。';
  @override
  String get storage_entry_delete_files_confirm_body =>
      'ディスクからすぐに削除します。ライブラリのどの項目もこれを参照していません（キャッシュ・書き出し済みデータ・再取得できるデータです）。';
  @override
  String get manga_series_refresh => '章を更新';
  @override
  String get manga_series_refresh_failed => 'ソースから更新できませんでした';
  @override
  String get manga_series_source_disabled => 'このソースは未インストールまたは無効です';
  @override
  String get manga_series_platform_unsupported => 'このソースはこのプラットフォームでは利用できません';
  @override
  String get manga_series_offline_hint => 'この端末に保存済みの章を表示しています';
  @override
  String get manga_series_no_chapters => '章がまだありません';
  @override
  String get manga_series_all_read => 'すべての章を読み終えました';
  @override
  String get manga_series_sort_newest => '新しい順';
  @override
  String get manga_series_sort_oldest => '古い順';
  @override
  String get manga_series_unread_only => '未読のみ';
  @override
  String get manga_series_mark_read => '既読にする';
  @override
  String get manga_series_mark_unread => '未読にする';
  @override
  String get manga_series_mark_previous_read => 'この章までを既読にする';
  @override
  String get manga_series_local_volume => 'ローカルの巻';
  @override
  String get manga_series_volume_info => '巻の情報';
  @override
  String get manga_series_page_count => 'ページ数';
  @override
  String get manga_series_chapters_action => '章';
  @override
  String get manga_series_next_chapter => '次の章';
  @override
  String get manga_series_previous_chapter => '前の章';
  @override
  String get manga_series_last_chapter_reached => '最新の章です';
  @override
  String get manga_series_first_chapter_reached => '最初の章です';
  @override
  String get manga_series_open_series => '作品ページ';
  @override
  String manga_series_read_progress({
    required Object total,
    required Object page,
  }) => '${total} ページ中 ${page} ページまで';
  @override
  String manga_series_read_progress_partial({required Object page}) =>
      '${page} ページまで';
  @override
  String mihon_store_extension_count({required Object count}) =>
      '拡張機能 ${count} 件';
  @override
  String mihon_extension_sources_more({required Object count}) =>
      '${count} 件のソースをすべて表示';
  @override
  String get mihon_extension_sources_less => 'ソースの表示を減らす';
  @override
  String get options_website => '公式サイトを開く';
  @override
  String get video_setting_mpv_group_hdr => 'HDR';
  @override
  String get video_setting_hdr_tone_mapping => 'HDR トーンマッピング';
  @override
  String get video_setting_hdr_tone_mapping_hint =>
      'HDR ソースを SDR ディスプレイに収めるときに使うカーブ。「自動」は mpv がソースごとに選びます。';
  @override
  String get video_setting_hdr_compute_peak => '動的ピーク検出';
  @override
  String get video_setting_hdr_compute_peak_hint =>
      'ソースのメタデータを信じる代わりに、フレームごとの実際のピーク輝度を測ります。ハイライトが良くなる一方、GPU を少し使います。';
  @override
  String get video_setting_hdr_auto => '自動';
  @override
  String get video_setting_hdr_on => 'オン';
  @override
  String get video_setting_hdr_off => 'オフ';
  @override
  String get video_discovery_cancel_downloads_title => 'ダウンロードを中止しますか？';
  @override
  String video_discovery_cancel_downloads_body({required Object n}) =>
      'この作品のダウンロードタスク ${n} 件を停止します。ダウンロード済みの断片はディスクに残るので、後でやり直せます。';
  @override
  String get video_discovery_cancel_downloads_failed =>
      'ダウンロードを中止できませんでした。タスクが既に終了しているか、ダウンロードバックエンドが利用できません。';
  @override
  String get gal_hook_click_lookup => '単語をタップして辞書を引く';
  @override
  String get gal_hook_click_lookup_hint =>
      'オフにすると、字幕をクリックしても辞書を引きません。クリック透過と併用して、うっかり単語に当たるのを避けたいときに便利です。';
  @override
  String get gal_hook_lookup_trigger => '辞書を引くボタン';
  @override
  String get gal_hook_lookup_trigger_hint =>
      'ポインタの下の単語を引くマウスボタン。上のスイッチとは独立です：タップで引くのをオフにしたまま、サイドボタンで引けます。';
  @override
  String get gal_hook_lookup_trigger_left => 'Left click';
  @override
  String get gal_hook_lookup_trigger_middle => 'Middle click';
  @override
  String get gal_hook_lookup_trigger_side => 'Side button';
  @override
  String get gal_hook_toolbar_auto_hide => 'ツールバーを自動で隠す';
  @override
  String get gal_hook_toolbar_auto_hide_hint =>
      'ポインタが字幕枠に来るまでツールバーを隠します（LunaHook 方式）。隠すときは本当に消します——その分のピクセルはゲームに返ります。';
  @override
  String get gal_hook_passthrough_blocks_mouse => 'クリック透過中も字幕はクリックを受ける';
  @override
  String get gal_hook_passthrough_blocks_mouse_hint =>
      'オン：字幕の行はクリックを受け続けるので単語をタップできます。オフ：オーバーレイ全体がマウスに対して透明になり、下のものをクリックできますが、単語のタップはできなくなります。';
  @override
  String get floating_lyric_topmost => '常に手前に表示';
  @override
  String get gal_hook_fold_progressive_lines => '分割されたセリフ行をまとめる';
  @override
  String get gal_hook_fold_progressive_lines_hint =>
      'クリックのたびに行全体を描き直すエンジンがあり、同じ行が何度も取り込まれます。そのスナップショットを 1 行にまとめます。';
  @override
  String get gal_hook_ingame_lookup_engine_unsupported =>
      'このゲームエンジンはゲーム内辞書引きに未対応です';
  @override
  String get gal_hook_ingame_lookup_version_unsupported =>
      'このゲームのバージョンはまだ対応リストにありません';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copy => 'ゲーム実行ファイルの SHA-256 をコピー';
  @override
  String get gal_hook_ingame_lookup_exe_hash_unavailable =>
      'ゲーム実行ファイルを読み取れません（権限不足の可能性）';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copied =>
      '実行ファイルの SHA-256 をコピーしました';
  @override
  String get download_tracker_section => 'トラッカー購読';
  @override
  String get download_tracker_auto_add => '新しいダウンロードに購読トラッカーを自動で追加する';
  @override
  String get download_tracker_auto_add_hint =>
      'リストは 6 時間キャッシュされます。購読の取得に失敗してもダウンロードは止まりません。';
  @override
  String get download_tracker_url => '購読 URL';
  @override
  String get download_tracker_refresh => 'トラッカーを取得';
  @override
  String get download_tracker_preview_empty =>
      '購読を取得すると、対応している HTTP・HTTPS・UDP のトラッカーをプレビューできます。';
  @override
  String download_tracker_preview_count({required Object count}) =>
      '${count} 件のトラッカーを取得しました';
  @override
  String download_tracker_fetch_failed({required Object message}) =>
      'トラッカーを取得できませんでした: ${message}';
  @override
  String get anki_connect_port_auto_fix => '空いているポートに変更';
  @override
  String get anki_connect_port_auto_fix_hint =>
      '空いているポートを選び、Hibiki と Anki の AnkiConnect アドオン設定の両方に書き込みます。反映には Anki の再起動が必要です。';
  @override
  String anki_connect_port_auto_fix_done({required Object port}) =>
      'AnkiConnect のポートを ${port} に変更しました。Anki を再起動してからもう一度お試しください。';
  @override
  String anki_connect_port_auto_fix_manual({required Object port}) =>
      'Hibiki はポート ${port} を使うようになりましたが、AnkiConnect のアドオン設定が見つかりませんでした。Anki の「ツール → アドオン → AnkiConnect → 設定」で webBindPort も ${port} にしてから、Anki を再起動してください。';
  @override
  String get anki_connect_port_auto_fix_none => 'このマシンに空いているポートが見つかりませんでした。';
  @override
  String get onboarding_action_badge_required => '必須';
  @override
  String get onboarding_action_badge_recommended => '推奨';
  @override
  String get onboarding_action_badge_optional => '任意';
  @override
  String get onboarding_pack_action_download_desc =>
      'おすすめパック全体をバックグラウンドでダウンロードし、完了後そのままインポートに進みます。いつでも中止でき、次回は中断した位置から再開します。';
  @override
  String get onboarding_pack_action_import_existing_desc =>
      'パックはダウンロード済みです。ここからインポートします。確認ダイアログで「統合」を選べば、既存のデータはそのまま残ります。';
  @override
  String get onboarding_pack_action_pick_desc =>
      'すでに別の場所からパックの zip を入手済みですか？ディスクからインポートすれば、ダウンロードはまるごと省けます。';
  @override
  String get onboarding_pack_action_website => '公式サイトのダウンロードページを開く';
  @override
  String get onboarding_pack_action_website_desc =>
      'ブラウザで公式サイトを開きます。パックの項に、ダウンロードマネージャーへ渡せる分割リンクが載っています。入手後はここに戻り、「ローカルのパックファイルを選ぶ」からインポートしてください。';
  @override
  String get onboarding_pack_action_dictionary_desc =>
      '日本語以外の言語を学んでいますか？パックは飛ばして、ここで自分の言語の辞書をインポートしてください。';
  @override
  String get onboarding_pack_action_audio_desc =>
      '発音音声の取得元です。パックには日本語と英語が含まれています。その他の言語はここでオンラインソースを追加してください。';
  @override
  String get onboarding_anki_action_test_desc =>
      'Fushi が Anki に接続できるか確認し、デッキとノートタイプを読み込みます。この時点では何も作成されません。';
  @override
  String get onboarding_anki_action_refresh_desc =>
      'デッキとノートタイプを Anki から読み込み直します。Anki 側で新しいデッキを作った後に使ってください。';
  @override
  String get onboarding_anki_action_get_ankidroid_desc =>
      'AnkiDroid のストアページを開きます。Fushi はここにカードを書き込むので、先にインストールが必要です。';
  @override
  String get onboarding_anki_action_get_anki_desc =>
      'Anki のダウンロードページを開きます。Anki をインストールし、カード作成中は起動したままにしてください。';
  @override
  String get onboarding_anki_action_install_addon_desc =>
      '同梱の AnkiConnect アドオンを Anki に展開します。Fushi はこれを通じて Anki と通信します。完了後に Anki を再起動してください。';
  @override
  String get onboarding_step_anki_action_desc =>
      'カードテンプレート、フィールド対応、スクリーンショットと音声——つまり「出来上がるカードの見た目」です。上でデッキとノートタイプを選べばカード作成は始められるので、カードの作られ方を変えたいときだけ開いてください。';
  @override
  String get onboarding_step_backup_action_desc =>
      'バックアップ先を選んでサインインしておけば、端末を紛失・買い替えてもライブラリは残ります。';
  @override
  String get onboarding_step_interconnect_action_desc =>
      'この端末を他の端末とペアリングして、同じライブラリを共有し進捗を同期します。';
  @override
  String get onboarding_step_extension_action_desc =>
      'ブラウザ拡張機能のインストール方法と Fushi への接続手順を案内します。ウェブページ上でも辞書を引けるようになります。';
  @override
  String get onboarding_step_fonts_action_desc =>
      '自分のフォントファイルを追加し、言語ごとにどれを使うか指定します。';
  @override
  String get onboarding_pack_sources_hint =>
      'GitHub・公式サイト・予備ミラーから同時に分割ダウンロードし、各断片をチェックサムで検証します。ダウンロード中も各ソースの速度を実測し、その時点で最も速いソースに多くの断片を割り当てるため、ここで選ぶ必要はありません。';
  @override
  String get video_setting_hdr_output => 'HDR / 10 ビット出力';
  @override
  String get video_setting_hdr_output_hint =>
      'Windows のみ。「自動」はディスプレイとソースがどちらも HDR のとき、ネイティブ動画ウィンドウ経由でそのまま HDR ディスプレイへ渡します。「常に」はすべての動画でそのウィンドウを使います（10 ビット出力）。「オフ」は標準のレンダラーのままです。';
  @override
  String get video_setting_hdr_output_auto => '自動';
  @override
  String get video_setting_hdr_output_always => '常に';
  @override
  String get video_setting_hdr_output_off => 'オフ';
  @override
  String get network_proxy_auto_hint =>
      'アプリのすべての通信（更新、クラウド同期、辞書、ダウンロード、字幕、メタデータ）に適用されます。空欄で自動：環境変数、次に有効なシステムプロキシを使用します。P2P（torrent）通信は既定で直接接続します。下で個別に有効化できます。';
  @override
  String get network_proxy_hint => 'ホスト:ポート 例: 127.0.0.1:7890（IPv4/ホスト名のみ）';
  @override
  String get network_proxy_invalid => '無効なプロキシです。ホスト:ポートの形式で入力してください';
  @override
  String get network_proxy_label => 'ネットワークプロキシ';
  @override
  String get section_network => 'ネットワーク';
  @override
  String get network_proxy_p2p_label => 'P2P（torrent）通信をプロキシ経由にする';
  @override
  String get network_proxy_p2p_warning =>
      '既定ではオフで、P2P は直接接続します。プロキシ経由にすると速度が低下する場合があり、多くのプロキシ事業者は BitTorrent 通信を禁止しているため、プロキシアカウントが帯域制限・警告・停止される恐れがあります。内蔵エンジンにのみ適用され、外部 qBittorrent は自身のプロキシ設定を使用します。';
  @override
  String get video_ajatt_settings_hint =>
      '無料の日本語字幕アーカイブ（kitsunekko ミラー）。アカウント不要。字幕ファイルは GitHub からダウンロードされます。';
  @override
  String get video_ajatt_enabled_hint => 'オフにすると字幕検索時に AJATT アーカイブをスキップします。';
  @override
  String get video_subtitle_workbench_title => '字幕';
  @override
  String get video_subtitle_scope_episode => 'このエピソード';
  @override
  String get video_subtitle_scope_collection => 'コレクション全体';
  @override
  String get video_subtitle_search_open => 'オンラインで字幕を検索';
  @override
  String get video_subtitle_collection_settings => 'コレクションの字幕設定';
  @override
  String get video_subtitle_collection_language => '既定の字幕言語';
  @override
  String get video_subtitle_collection_language_hint =>
      'このコレクションの全エピソードに適用。空欄 = 動画自身の言語に従う。';
  @override
  String get video_subtitle_collection_release_group => '優先バージョン';
  @override
  String get video_subtitle_collection_release_group_hint =>
      '一括ダウンロードではこのバージョンを優先し、シーズン全体で同じタイミングを共有します。';
  @override
  String get video_subtitle_collection_release_group_any => 'バージョン指定なし';
  @override
  String get video_subtitle_source_label => 'ソース';
  @override
  String get video_subtitle_collection_members_hint =>
      '各話はファイル名の話数で照合され、シーズンパックは自動で分割されます。';
  @override
  String get video_subtitle_adjust_title => '字幕の調整';
  @override
  String get video_subtitle_adjust_collapse => '折りたたむ';
  @override
  String get video_subtitle_adjust_expand => '展開';
  @override
  String get settings_section_reading_stats => '読書統計';
  @override
  String get reading_stats_idle_timeout => 'アイドル判定時間';
  @override
  String get reading_stats_idle_timeout_hint =>
      'ページめくり・スクロール・辞書引きがこの分数ないと読書時間の計測を止めます。小説・PDF・漫画のみ対象。動画は再生中なら計測します。';
  @override
  String get web_video_track_menu => '字幕トラック';
  @override
  String get web_video_track_live => 'ライブ字幕（ページから取得）';
  @override
  String get web_video_no_tracks => '字幕はまだ取得されていません';
  @override
  String get web_video_hide_native_subtitles => 'サイトの字幕を隠す';
  @override
  String get web_video_import_hint =>
      'これは（直接ストリームではなく）Web ページです。内蔵 Web プレーヤーで開きます。';
  @override
  String get web_video_platform_unsupported =>
      '内蔵 Web プレーヤーは現在 Windows でのみ利用できます。';
  @override
  String get web_video_mine_queue_run => 'キューのカードを作成';
  @override
  String get web_video_mine_queue_stop => 'カード作成を停止';
  @override
  String get web_video_mine_queue_empty => 'キューにカードはありません';
  @override
  String web_video_mine_queued({required Object count}) =>
      'カード作成のキューに追加しました（残り ${count} 件）';
  @override
  String web_video_mine_queue_running({
    required Object done,
    required Object total,
  }) => 'カード作成中 ${done}/${total}…';
  @override
  String web_video_mine_queue_finished({
    required Object ok,
    required Object failed,
  }) => 'カード作成完了：成功 ${ok}、失敗 ${failed}';
  @override
  String get web_video_hosting_menu => '再生モード';
  @override
  String get web_video_hosting_builtin => '内蔵（1080p；超解像・スクリーンショット・カード作成が可能）';
  @override
  String get web_video_hosting_windowed =>
      'ネイティブウィンドウ（4K、ハードウェア DRM；カードは後でキュー処理）';
  @override
  String web_video_mine_switch_builtin({required Object count}) =>
      '内蔵モードに切り替えて ${count} 件のカードを作成';
  @override
  String get onboarding_step_click_lookup_title => 'タップして単語を調べる';
  @override
  String get onboarding_click_lookup_tap_title => '本文をタップ';
  @override
  String get onboarding_click_lookup_nested_title => 'ポップアップの中でさらに調べる';
  @override
  String get onboarding_click_lookup_nested_body =>
      '語義の中の別の単語をタップすると、さらに深い階層で調べられます。戻るかポップアップの外をタップすると1階層閉じます。';
  @override
  String get onboarding_click_lookup_mine_title => '結果をカードにする';
  @override
  String get onboarding_click_lookup_mine_body =>
      '語義が合っていたら「＋」をタップして、単語・文・音声・画像をカード作成画面に送ります。';
  @override
  String get onboarding_step_global_lookup_title => 'Fushi以外のテキストを調べる';
  @override
  String get onboarding_global_lookup_windows_body =>
      'Windowsでは、他のアプリでテキストを選択するだけで、Fushiに戻らずに辞書を呼び出せます。';
  @override
  String get onboarding_global_lookup_windows_select_title => '好きなアプリでテキストを選択';
  @override
  String get onboarding_global_lookup_windows_shortcut_title => 'Ctrl+Alt+Dを押す';
  @override
  String get onboarding_global_lookup_windows_shortcut_body =>
      'これが既定のグローバルショートカットです。Fushiが現在の選択範囲を取り込み、マウスポインターの近くに検索カードを開きます。';
  @override
  String get onboarding_global_lookup_windows_customize_title =>
      '必要ならショートカットを変更';
  @override
  String get onboarding_global_lookup_windows_customize_body =>
      '設定 → ショートカット → グローバル（アプリ外）で、別のキーの組み合わせに変更できます。';
  @override
  String get onboarding_global_lookup_windows_action => 'ショートカット設定を開く';
  @override
  String get onboarding_global_lookup_windows_action_desc =>
      'アプリ外検索のショートカットを変更できます。既定のCtrl+Alt+Dのままでも使えるので、変更は任意です。';
  @override
  String get onboarding_global_lookup_android_body =>
      'Androidでは、テキストメニューや共有シートから選択したテキストがFushiに渡されます。変更できるグローバルホットキーはありません。';
  @override
  String get onboarding_global_lookup_android_select_title => '他のアプリでテキストを選択';
  @override
  String get onboarding_global_lookup_android_open_title => 'Fushiを選ぶ';
  @override
  String get onboarding_global_lookup_android_open_body =>
      'テキスト選択メニューでFushiをタップします。表示されていない場合は「共有」をタップし、共有シートからFushiを選んでください。';
  @override
  String get onboarding_global_lookup_android_continue_title =>
      '独立したポップアップで続ける';
  @override
  String get onboarding_global_lookup_android_continue_body =>
      '検索結果は元のアプリとは別に開きます。その中で別の単語をタップして調べ続け、閉じれば元の場所に戻れます。';
  @override
  String get onboarding_feature_manual_resources => '辞書と音声を手動でインポート';
  @override
  String get onboarding_feature_manual_resources_hint =>
      'Supplement the recommended pack, or import your own dictionaries, audiobooks, and pronunciation sources';
  @override
  String get onboarding_step_manual_resources_title => '辞書と音声を手動で準備';
  @override
  String get onboarding_step_manual_resources_body =>
      'Use this alongside the recommended pack or on its own. Import at least one dictionary before the lookup tutorial; audiobook and pronunciation audio are optional supplements.';
  @override
  String get onboarding_manual_dictionary_action => '辞書をインポート';
  @override
  String get onboarding_manual_dictionary_action_desc =>
      '辞書マネージャーを開き、対応する辞書ファイルまたはアーカイブを最低1つインポートします。検索して語義が返るようになって初めて、以降のチュートリアルが意味を持ちます。';
  @override
  String get onboarding_manual_audiobook_action => 'オーディオブック音声付きで書籍をインポート';
  @override
  String get onboarding_manual_audiobook_action_desc =>
      '書籍インポートを開き、書籍またはテキスト、対応する字幕、1つ以上の音声ファイルを選びます。音声を文単位で同期させるには字幕が必要です。';
  @override
  String get onboarding_manual_pronunciation_action => '単語の発音音声を設定';
  @override
  String get onboarding_manual_pronunciation_action_desc =>
      '辞書の見出し語で使うローカルまたはオンラインの発音ソースを追加します。書籍に紐づくオーディオブック音声とは別のものです。';
  @override
  String get onboarding_lookup_verify_action => '辞書にその単語があるか確認';
  @override
  String get onboarding_lookup_verify_action_desc =>
      '検索を開いて学習中の単語を入力し、インストール済みの辞書が語義を返すのを確認してから進んでください。チュートリアルでは例の単語を固定していません。';
  @override
  String get onboarding_step_first_anki_card_title => '最初のAnkiカードを作る';
  @override
  String get onboarding_step_first_anki_card_body =>
      'このステップは、今回のセットアップでAnkiに接続し、使えるデッキとノートタイプを選んだ場合にだけ表示されます。';
  @override
  String get onboarding_first_anki_lookup_title => '実際の辞書結果から始める';
  @override
  String get onboarding_first_anki_lookup_body =>
      'インストール済みの辞書に実際に載っている単語を調べてください。あなたの辞書にない可能性のある固定の例語は使いません。';
  @override
  String get onboarding_first_anki_plus_title => '見出し語の「＋」をタップ';
  @override
  String get onboarding_first_anki_plus_body =>
      '「＋」を押すと、現在の単語・読み・意味・文・音声・使える画像がそのままカード作成画面に入ります。';
  @override
  String get onboarding_first_anki_save_title => '確認して保存';
  @override
  String get onboarding_first_anki_save_body =>
      '保存先のデッキ、ノートタイプ、フィールドのプレビューを確認してから保存します。Ankiを開いて1枚目のカードが届いたか確かめてください。';
  @override
  String get onboarding_first_anki_action => '検索を開いてカードを作る';
  @override
  String get onboarding_first_anki_action_desc =>
      '語義が表示されている単語を選び、「＋」をタップしてフィールドを確認し、接続済みのAnkiデッキに保存します。';
  @override
  String get onboarding_step_click_lookup_body =>
      'まず、インストール済みの辞書に実際に載っている単語を確認します。次に同じ単語で、書籍の本文・マンガのOCRテキスト・動画の字幕でのタップ検索を練習しましょう。';
  @override
  String get onboarding_click_lookup_tap_body =>
      'スマートフォンでは確認した単語の1文字をタップ、パソコンでは左クリックします。Fushiはそこを起点にいちばん長い単語を照合します。';
  @override
  String get onboarding_global_lookup_windows_select_body =>
      '辞書に語義があると確認済みの同じ単語をドラッグで選択し、選択状態のままにします。';
  @override
  String get onboarding_global_lookup_android_select_body =>
      '辞書に語義があると確認済みの同じ単語を長押しし、選択ハンドルを動かして単語全体を覆います。';
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
  String get delete_choices_remember => 'この選択を記憶する';
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
