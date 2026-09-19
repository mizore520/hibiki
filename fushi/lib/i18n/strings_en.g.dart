part of 'strings.g.dart';

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsEn.build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.en,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  late final _StringsEn _root = this; // ignore: unused_field

  // Translations
  String get about_tmdb_attribution =>
      'This application uses TMDB and the TMDB APIs but is not endorsed, certified, or otherwise approved by TMDB.';
  String get action_exit => 'Exit';
  String get action_favorite => 'Favorite';
  String activity_days_ago({required Object n}) => '${n} d ago';
  String activity_hours_ago({required Object n}) => '${n} h ago';
  String get activity_just_now => 'Just now';
  String activity_minutes_ago({required Object n}) => '${n} min ago';
  String get add_to_collection => 'Add to collection';
  String get aidoku_extension_confirm_title => 'Install Aidoku extension?';
  String get aidoku_extension_empty => 'No Aidoku extensions installed.';
  String get aidoku_extension_import => 'Import Aidoku extension (.aix)';
  String get aidoku_extension_imported => 'Aidoku extension imported';
  String get aidoku_extension_remove => 'Remove Aidoku extension';
  String get aidoku_extension_version => 'Version';
  String get aidoku_extension_warning =>
      'Aidoku extensions execute third-party WebAssembly code with network access. Only continue with sources you trust.';
  String get aidoku_extensions_title => 'Aidoku extensions';
  String get aidoku_repository_add => 'Add Aidoku repository';
  String get aidoku_repository_added => 'Aidoku repository added';
  String get aidoku_repository_browse => 'Browse repository';
  String get aidoku_repository_empty => 'No Aidoku repositories added.';
  String get aidoku_repository_hint =>
      'Paste an Aidoku repository homepage or index.min.json URL. The community repository is filled in by default.';
  String get aidoku_repository_identity_mismatch =>
      'The downloaded package does not match the repository index.';
  String get aidoku_repository_install => 'Install';
  String get aidoku_repository_installed => 'Installed';
  String get aidoku_repository_remove => 'Remove repository';
  String get aidoku_repository_search => 'Search repository sources';
  String get aidoku_repository_sources => 'Repository sources';
  String get aidoku_repository_update => 'Update';
  String get aidoku_repository_url => 'Repository URL';
  String get aidoku_runtime_unavailable =>
      'Aidoku extensions are currently available on macOS only.';
  String get aidoku_webview_unsupported =>
      'This source requires Aidoku WebView APIs that are not supported yet.';
  String get anime_download_back => 'Back';
  String get anime_download_batch => 'Batch';
  String get anime_download_category_all => 'All';
  String get anime_download_category_english => 'English-translated';
  String get anime_download_category_non_english => 'Non-English';
  String get anime_download_category_raw => 'Raw';
  String get anime_download_delete => 'Delete';
  String anime_download_episode_count({required Object count}) => 'EP ${count}';
  String get anime_download_generic_download => 'Download';
  String get anime_download_generic_hint => 'Magnet link';
  String get anime_download_generic_title =>
      'Paste a link (books, videos, anything)';
  String get anime_download_include_subs => 'Include subtitles';
  String get anime_download_kind_auto => 'Auto';
  String get anime_download_kind_book => 'Book';
  String get anime_download_kind_video => 'Video';
  String get anime_download_magnet_invalid => 'Invalid magnet link';
  String get anime_download_no_results => 'No results';
  String anime_download_no_results_detail({
    required Object query,
    required Object filters,
  }) =>
      'The service responded successfully but returned 0 items. Query: ${query}; filters: ${filters}. Try another title or loosen the filters.';
  String get anime_download_no_subs => 'No subs';
  String get anime_download_no_tasks => 'No download tasks yet';
  String get anime_download_nyaa_query => 'Nyaa search terms';
  String get anime_download_play_now => 'Play while downloading';
  String get anime_download_play_now_fail =>
      'Not ready yet (metadata pending or connection failed) — try again later';
  String get anime_download_play_now_ok =>
      'Imported — open it from the video library to play while downloading';
  String get anime_download_push => 'Push download';
  String get anime_download_push_failed => 'Failed to push to qBittorrent';
  String get anime_download_pushed =>
      'Pushed — it will be imported automatically once finished';
  String get anime_download_refresh => 'Refresh';
  String get anime_download_relocate => 'Rename / move';
  String anime_download_relocate_engine_failed({required Object reason}) =>
      'Failed, nothing changed: ${reason}';
  String get anime_download_relocate_hint =>
      'Fushi renames/moves through the download engine, so seeding is not interrupted. Renaming in Explorer can never be recovered.';
  String anime_download_relocate_library_failed({required Object reason}) =>
      'Files moved, but the library still points at the old path: ${reason}';
  String get anime_download_relocate_move_title => 'Move to folder';
  String get anime_download_relocate_no_files =>
      'This task has no files to rename yet (metadata not ready)';
  String anime_download_relocate_ok({required Object rows}) =>
      'Renamed / moved; ${rows} library entries updated';
  String get anime_download_relocate_pick_folder => 'Choose destination folder';
  String get anime_download_relocate_rename_title => 'Rename file';
  String get anime_download_require_subs => 'Subtitles required';
  String get anime_download_retry => 'Retry';
  String get anime_download_search => 'Search';
  String get anime_download_search_error_proxy_hint =>
      'If the site cannot be reached directly, configure a network proxy in download settings.';
  String get anime_download_search_failed =>
      'Search failed or timed out. Tap retry.';
  String get anime_download_search_hint => 'Anime title';
  String get anime_download_search_start_hint =>
      'Search a title above - torrents and subtitles are matched automatically. Downloads are not limited to video: books, manga, audiobooks and games are imported too.';
  String get anime_download_sort_date => 'Published';
  String get anime_download_sort_seeders => 'Seeders';
  String get anime_download_sort_size => 'Size';
  String get anime_download_store_unavailable =>
      'Download plan storage is unavailable';
  String get anime_download_streaming_ready =>
      'In library · download continues';
  String get anime_download_subs_badge => 'Subs';
  String get anime_download_subs_deferred =>
      'Subtitles are matched after download, from the pack\'s actual files';
  String get anime_download_subs_episodes_unverified =>
      'Episode numbers are not verified against this pack - subtitles may come from another season.';
  String get anime_download_subs_failed => 'Subtitle search failed. Tap retry.';
  String get anime_download_subs_need_key =>
      'Enter a Jimaku API key above to search subtitles.';
  String get anime_download_subs_pending =>
      'Subtitles: pending until download completes';
  String get anime_download_subs_retrying =>
      'Subtitles: not up yet — will retry automatically';
  String anime_download_subs_season_mismatch({required Object season}) =>
      'No subtitle entry matches season ${season} of this pack - not auto-selected. Pick one manually if you want it anyway.';
  String get anime_download_subs_unmatched =>
      'Subtitles: no match for this pack';
  String get anime_download_tasks => 'Download tasks';
  String get anime_download_title => 'Anime download';
  String get anime_download_trusted => 'Trusted';
  String get anime_download_trusted_only => 'Trusted only';
  String get anime_download_unfiltered => 'No Trusted filter';
  String get anki_action_open_settings => 'Open settings';
  String get anki_allow_duplicates => 'Allow duplicates';
  String get anki_allow_duplicates_hint =>
      'Skip duplicate check when adding cards';
  String get anki_ankimobile_imported => 'AnkiMobile configuration imported.';
  String get anki_ankimobile_opened =>
      'AnkiMobile opened. Approve the request there, then return to Fushi.';
  String get anki_card_action_failed => 'Card action failed. Please try again.';
  String get anki_compact_glossaries => 'Compact glossaries';
  String get anki_compact_glossaries_hint =>
      'Use compact format for glossary entries';
  String get anki_connect_addon_anki_not_running =>
      'No running Anki found. Start Anki desktop first, then try again.';
  String anki_connect_addon_download_failed({required Object error}) =>
      'Could not download AnkiConnect from AnkiWeb: ${error}';
  String get anki_connect_addon_handed =>
      'Handed AnkiConnect to Anki. Confirm the prompt in Anki, then restart Anki as it advises.';
  String get anki_connect_addon_install => 'Install AnkiConnect';
  String get anki_connect_addon_install_hint =>
      'Downloads AnkiConnect from AnkiWeb and hands it to the running Anki. Anki will ask you to confirm, then advise a restart.';
  String get anki_connect_addon_invalid =>
      'AnkiWeb returned something that is not a usable add-on package.';
  String anki_connect_addon_launch_failed({required Object error}) =>
      'Could not hand the add-on to Anki: ${error}';
  String get anki_connect_api_key => 'API Key';
  String get anki_connect_api_key_hint =>
      'Required for remote AnkiConnect; must match the key configured in the add-on';
  String anki_connect_backend_switch_failed({required Object error}) =>
      'Could not switch Anki backend: ${error}';
  String get anki_connect_host => 'Host';
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before switching to the AnkiConnect backend.';
  String get anki_connect_mobile_disabled_key_cleared =>
      'AnkiConnect needs an API key on mobile, so clearing it turned the switch back off. Anki now goes through the built-in backend again.';
  String get anki_connect_port => 'Port';
  String get anki_connect_port_auto_fix => 'Switch to a free port';
  String anki_connect_port_auto_fix_done({required Object port}) =>
      'Switched AnkiConnect to port ${port}. Restart Anki to apply.';
  String get anki_connect_port_auto_fix_hint =>
      'Picks a free port and writes it to both Hibiki and the AnkiConnect add-on config. Restart Anki to apply.';
  String anki_connect_port_auto_fix_manual({required Object port}) =>
      'Hibiki now uses port ${port}, but the AnkiConnect add-on config was not found. Set webBindPort to ${port} in Anki (Tools -> Add-ons -> AnkiConnect -> Config), then restart Anki.';
  String get anki_connect_port_auto_fix_none =>
      'No free port found on this machine.';
  String get anki_connect_use_on_mobile => 'Use AnkiConnect instead';
  String get anki_connect_use_on_mobile_hint =>
      'Use only on a trusted network. AnkiConnect uses cleartext HTTP; configure a matching API key, then refresh decks and note types after switching.';
  String get anki_create_lapis => 'Create and use Lapis';
  String get anki_create_lapis_exists =>
      'Lapis note type and deck already exist — selected them.';
  String anki_create_lapis_failed({required Object error}) =>
      'Could not create Lapis deck: ${error}';
  String get anki_create_lapis_hint =>
      'Adds the Lapis note type and a Lapis deck to Anki, then selects them as the mining target.';
  String get anki_create_lapis_success => 'Lapis note type and deck created.';
  String get anki_deck => 'Deck';
  String get anki_dedup_auto => 'Automatic processing';
  String get anki_dedup_auto_delete => 'Delete automatically without asking';
  String get anki_dedup_auto_delete_hint =>
      'Skips the confirmation dialog. Only byte-identical extra copies are ever removed and nothing is re-encoded, but deletion cannot be undone.';
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      'Removed ${count} duplicate Anki media files, ${size} reclaimed';
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      'Found ${count} duplicate Anki media files (${size} reclaimable)';
  String get anki_dedup_auto_hint =>
      'Off by default. When on, Fushi scans at startup (at most once a week) and shows you the list first — nothing is deleted until you confirm.';
  String get anki_dedup_auto_review => 'Review';
  String get anki_dedup_cancelled =>
      'Deduplication cancelled; completed changes are kept.';
  String get anki_dedup_cancelling => 'Cancelling…';
  String anki_dedup_failed({required Object error}) =>
      'Deduplication failed: ${error}';
  String get anki_dedup_plan_busy_note =>
      'Anki may be unresponsive while this runs; avoid using Anki until it finishes.';
  String get anki_dedup_plan_delete => 'Delete these files';
  String anki_dedup_plan_entry({
    required Object file,
    required Object size,
    required Object canonical,
  }) => 'Delete ${file} (${size}) - keeping ${canonical}';
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '${count} extra copies, ${size} reclaimable. One copy of each file is kept and every reference is repointed to it first; nothing is ever re-encoded.';
  String get anki_dedup_plan_journal =>
      'A journal of every rewrite and deletion is written to the backup folder first.';
  String get anki_dedup_plan_title => 'Files to delete';
  String anki_dedup_progress_freed({required Object size}) =>
      'Freed ${size} so far';
  String anki_dedup_progress_hashing({
    required Object done,
    required Object total,
  }) => 'Comparing same-size files… (${done} / ${total})';
  String anki_dedup_progress_resolving({
    required Object done,
    required Object total,
  }) => 'Processing duplicates… (${done} / ${total})';
  String anki_dedup_progress_scanning({required Object count}) =>
      'Scanning media folder… (${count} files found)';
  String get anki_dedup_progress_title => 'Deduplicating media';
  String anki_dedup_report_body({
    required Object groups,
    required Object removed,
    required Object size,
    required Object notes,
    required Object models,
    required Object skipped,
  }) =>
      '${groups} duplicate groups; ${removed} extra copies (${size}); ${notes} notes and ${models} note types rewritten; ${skipped} skipped.';
  String get anki_dedup_report_cancelled_note =>
      'Cancelled early — the numbers below only cover what was completed.';
  String get anki_dedup_report_clean => 'No byte-identical duplicates found.';
  String get anki_dedup_report_dry_note => 'Scan only - nothing was changed.';
  String get anki_dedup_report_title => 'Media deduplication report';
  String get anki_dedup_run => 'Deduplicate now';
  String get anki_dedup_run_hint =>
      'Scans first and lists exactly what would be deleted; nothing is removed until you confirm.';
  String get anki_dedup_scan => 'Scan for duplicates (no changes)';
  String get anki_dedup_section => 'Anki media storage optimization';
  String get anki_dedup_unavailable =>
      'Requires Anki running on this machine (AnkiConnect).';
  String get anki_duplicate_scope => 'Duplicate check scope';
  String get anki_duplicate_scope_collection => 'Whole collection';
  String get anki_duplicate_scope_deck => 'Selected deck (and its subdecks)';
  String get anki_duplicate_scope_deck_root => 'Root deck (all subdecks)';
  String get anki_duplicate_scope_hint =>
      'Which decks are searched when checking whether a card already exists. AnkiConnect only; AnkiDroid always searches the whole collection.';
  String get anki_error_ankidroid_unavailable =>
      'AnkiDroid is not installed (or its API is disabled), so card access cannot be granted. Install AnkiDroid and enable its API, or switch to AnkiConnect.';
  String get anki_error_ankimobile_no_decks =>
      'AnkiMobile returned no decks or note types.';
  String get anki_error_ankimobile_not_active =>
      'Fushi did not come back to the foreground in time, so the clipboard could not be read. Return to Fushi and try again.';
  String get anki_error_ankimobile_pasteboard_denied =>
      'iOS blocked reading the clipboard. Choose Allow Paste when returning to Fushi, then try again.';
  String get anki_error_ankimobile_pasteboard_empty =>
      'AnkiMobile did not return any configuration. Approve the request in AnkiMobile, then come back to Fushi.';
  String get anki_error_ankimobile_unavailable =>
      'Could not open AnkiMobile. Install AnkiMobile and try again.';
  String get anki_error_collection_unavailable =>
      'AnkiDroid\'s collection is currently unavailable. Open AnkiDroid at least once, make sure it isn\'t syncing and the API is enabled, then retry.';
  String get anki_error_connection_refused =>
      'Could not connect to Anki: connection refused. Make sure Anki Desktop is running and the AnkiConnect add-on is installed.';
  String get anki_error_connection_timeout =>
      'Could not connect to Anki: the connection timed out. Check the host, port, and firewall settings.';
  String get anki_error_connection_unknown =>
      'Could not export to Anki: an unexpected connection error occurred. See the error log for details.';
  String get anki_error_field_mapping_mismatch =>
      'None of your field mappings match the selected note type, so Anki rejected the card. Open Anki settings to re-map the fields, or use \'Create Lapis deck\'.';
  String get anki_error_first_field_empty =>
      'The first field of the selected note type is empty, and Anki refuses such a note. Map a field to it in Anki settings.';
  String get anki_error_http =>
      'Could not export to Anki: an HTTP error occurred while contacting AnkiConnect.';
  String get anki_error_paired_device_unreachable =>
      'Couldn\'t create the card because the Fushi Interconnect server could not be reached. Make sure Fushi is running there, or turn off Mine to Fushi Interconnect server in Anki settings to create cards locally.';
  String get anki_error_permission_denied =>
      'AnkiDroid hasn\'t granted card access permission. Approve the system permission dialog that just appeared, then tap the button again to export.';
  String get anki_error_permission_permanently_denied =>
      'AnkiDroid card access was permanently denied, so the system no longer shows the permission dialog. Open app settings and grant the AnkiDroid permission, then try again.';
  String get anki_fetch => 'Refresh decks & note types';
  String get anki_fetching => 'Fetching...';
  String get anki_field_mappings => 'Field mappings';
  String get anki_field_not_mapped => 'Not mapped';
  String get anki_lapis_apply => 'Apply style to Anki';
  String get anki_lapis_apply_done =>
      'Lapis style applied. A backup was saved first.';
  String anki_lapis_apply_failed({required Object error}) =>
      'Could not apply style: ${error}';
  String get anki_lapis_backup => 'Back up Lapis template';
  String anki_lapis_backup_done({required Object path}) =>
      'Template backed up: ${path}';
  String anki_lapis_backup_done_pruned({
    required Object path,
    required Object count,
  }) =>
      'Backed up to ${path} (${count} old backups pruned by the 90-day / keep-10 policy)';
  String anki_lapis_backup_failed({required Object error}) =>
      'Backup failed: ${error}';
  String get anki_lapis_custom_css => 'Custom CSS';
  String get anki_lapis_custom_css_hint =>
      'Appended to the Lapis stylesheet in a protected user section.';
  String get anki_lapis_font_scale => 'Card font scale';
  String get anki_lapis_font_scale_hint =>
      'Scales every Lapis font size; takes effect via "Apply style to Anki".';
  String get anki_lapis_foreign_edit_body =>
      'The Lapis template in Anki differs from what Fushi last applied - it may have been edited by hand. Applying will overwrite it; a backup is saved first. Continue?';
  String get anki_lapis_foreign_edit_title => 'Template changed in Anki';
  String get anki_lapis_not_found => 'Lapis note type not found in Anki.';
  String get anki_lapis_restore => 'Restore from backup';
  String get anki_lapis_restore_confirm =>
      'Overwrite the Lapis template in Anki with this backup? The current state is backed up first.';
  String get anki_lapis_restore_done => 'Template restored.';
  String get anki_lapis_restore_empty => 'No backups yet.';
  String get anki_lapis_restore_factory => 'Restore factory Lapis';
  String get anki_lapis_restore_factory_confirm =>
      'This overwrites the Lapis styling and card templates in Anki with Fushi\'s bundled version, and resets font size, custom CSS and custom areas. A backup of the current state is saved first. Card data is not touched.';
  String get anki_lapis_restore_factory_done =>
      'Lapis restored to factory defaults';
  String anki_lapis_restore_factory_failed({required Object error}) =>
      'Restore failed: ${error}';
  String get anki_lapis_restore_factory_hint =>
      'Overwrite the Lapis note type in Anki with the version bundled in Fushi and clear every customisation here.';
  String anki_lapis_restore_failed({required Object error}) =>
      'Restore failed: ${error}';
  String get anki_lapis_section => 'Lapis card style';
  String get anki_lapis_up_to_date => 'Lapis style is already up to date.';
  String get anki_lapis_visual_advanced_css => 'Advanced CSS';
  String get anki_lapis_visual_alignment => 'Alignment';
  String get anki_lapis_visual_back => 'Back';
  String get anki_lapis_visual_background_color => 'Background highlight';
  String get anki_lapis_visual_block_add => 'Add area';
  String get anki_lapis_visual_block_anchor => 'Position on the card';
  String get anki_lapis_visual_block_anchor_above_definition =>
      'Below the sentence';
  String get anki_lapis_visual_block_anchor_above_sentence => 'Below the word';
  String get anki_lapis_visual_block_anchor_below_definition =>
      'Below the definitions';
  String get anki_lapis_visual_block_anchor_bottom => 'Bottom of the card';
  String get anki_lapis_visual_block_anchor_top => 'Top of the card';
  String get anki_lapis_visual_block_delete => 'Delete area';
  String get anki_lapis_visual_block_fields => 'Fields shown here';
  String anki_lapis_visual_block_name({required Object index}) =>
      'Area ${index}';
  String get anki_lapis_visual_block_needs_note_type =>
      'Pick a note type first to choose fields.';
  String get anki_lapis_visual_block_no_fields => 'No fields selected yet';
  String get anki_lapis_visual_blocks => 'Custom areas';
  String get anki_lapis_visual_blocks_hint =>
      'Show existing fields somewhere else on the card. Display only: no Anki field is added or deleted.';
  String get anki_lapis_visual_bold => 'Bold';
  String get anki_lapis_visual_border_color => 'Border color';
  String get anki_lapis_visual_border_width => 'Border';
  String get anki_lapis_visual_box_layout => 'Box appearance';
  String get anki_lapis_visual_color => 'Text color';
  String get anki_lapis_visual_color_custom => 'Custom';
  String get anki_lapis_visual_color_picker_title => 'Pick a color';
  String get anki_lapis_visual_corner_radius => 'Corner radius';
  String get anki_lapis_visual_default => 'Default';
  String get anki_lapis_visual_editing_now => 'Editing';
  String get anki_lapis_visual_editor => 'Visual editor';
  String get anki_lapis_visual_editor_hint =>
      'Preview the Lapis card, then change each area\'s style, position and field mapping without writing CSS.';
  String get anki_lapis_visual_field_definition_box => 'Definition box';
  String get anki_lapis_visual_field_definition_content => 'Whole definition';
  String get anki_lapis_visual_field_definition_example => 'Definition example';
  String get anki_lapis_visual_field_definition_info => 'Definition indicator';
  String get anki_lapis_visual_field_definition_info_note =>
      'Only visible on cards that keep more than one definition block; single-definition cards hide it.';
  String get anki_lapis_visual_field_dictionary_entry => 'Dictionary entry';
  String get anki_lapis_visual_field_dictionary_name => 'Dictionary name';
  String get anki_lapis_visual_field_dictionary_name_note =>
      'On Fushi cards this label also carries the part-of-speech tags, so the two cannot be styled separately.';
  String get anki_lapis_visual_field_expression => 'Word';
  String get anki_lapis_visual_field_glossaries => 'Other definitions';
  String get anki_lapis_visual_field_primary_definition => 'Primary definition';
  String get anki_lapis_visual_field_reading => 'Reading';
  String get anki_lapis_visual_field_selected_definition =>
      'Selected definition';
  String get anki_lapis_visual_field_sentence => 'Sentence';
  String anki_lapis_visual_font_size({required Object percent}) =>
      'Font size: ${percent}%';
  String get anki_lapis_visual_front => 'Front';
  String get anki_lapis_visual_layout => 'Layout';
  String get anki_lapis_visual_layout_audio => 'Audio buttons';
  String get anki_lapis_visual_layout_audio_alt => 'Inside the sentence';
  String get anki_lapis_visual_layout_audio_fixed => 'Pinned to the bottom';
  String get anki_lapis_visual_layout_audio_header => 'Next to the reading';
  String get anki_lapis_visual_layout_hint =>
      'Uses Lapis\' own layout switches, so desktop and mobile Anki both follow it.';
  String get anki_lapis_visual_layout_picture => 'Image position';
  String get anki_lapis_visual_layout_picture_alt => 'Inside the sentence';
  String get anki_lapis_visual_layout_picture_left => 'Left of the word';
  String get anki_lapis_visual_layout_picture_right => 'Right of the word';
  String get anki_lapis_visual_layout_sentence => 'Sentence position';
  String get anki_lapis_visual_layout_sentence_above => 'Above definitions';
  String get anki_lapis_visual_layout_sentence_below => 'Below definitions';
  String get anki_lapis_visual_line_height => 'Line height';
  String get anki_lapis_visual_mapping_hint =>
      'Anki fields that fill the selected area. Changes are saved together with the style.';
  String get anki_lapis_visual_mapping_none =>
      'This area is drawn by the template itself and has no field of its own.';
  String get anki_lapis_visual_margin => 'Outer spacing';
  String get anki_lapis_visual_padding => 'Inner spacing';
  String get anki_lapis_visual_preview => 'Lapis card preview';
  String get anki_lapis_visual_reset_field => 'Reset field';
  String get anki_lapis_visual_select_field => 'Choose what to edit';
  String get anki_lapis_visual_select_field_hint =>
      'Click any part of the preview, or pick one below. What you pick is what the controls underneath edit.';
  String get anki_lapis_visual_target_card_content => 'Card content';
  String get anki_lapis_visual_target_definition => 'Definition';
  String get anki_lapis_visual_target_inside_definition => 'Inside definition';
  String get anki_mine_to_server => 'Mine to Fushi Interconnect server';
  String get anki_mine_to_server_hint =>
      'Send mined cards to the Fushi Interconnect server\'s Anki (its decks and settings) instead of this device. Requires an interconnect pairing.';
  String get anki_mined_action_add_duplicate => 'Add as a new card';
  String get anki_mined_action_overwrite => 'Overwrite this card';
  String get anki_mined_action_view => 'View / open in Anki';
  String get anki_mined_card_subtitle =>
      'Choose what to do with the matching card.';
  String get anki_mined_card_title => 'Card already in Anki';
  String anki_mined_multiple_matches({required Object count}) =>
      '${count} matching cards';
  String get anki_not_configured =>
      'Tap Refresh to load your Anki decks and note types.';
  String get anki_note_open_failed => 'Could not open the card in Anki.';
  String get anki_note_type => 'Note type';
  String get anki_note_viewer_empty => 'This card has no readable fields.';
  String get anki_note_viewer_open_in_anki => 'Open in Anki';
  String get anki_note_viewer_title => 'Existing card';
  String get anki_open_no_card => 'No card found for this word in Anki.';
  String get anki_overwrite_scope => 'Overwrite range';
  String get anki_overwrite_scope_all => 'All matching cards';
  String get anki_overwrite_scope_hint =>
      'Which already-made cards the green ✓ can overwrite';
  String get anki_overwrite_scope_latest => 'Latest card only';
  String get anki_refresh_hint =>
      'After creating or renaming a deck or note type in Anki, tap here to refresh.';
  String get anki_reposition_aggregate => 'Combine multiple dictionaries';
  String get anki_reposition_aggregate_harmonic => 'Harmonic mean';
  String get anki_reposition_aggregate_min => 'Lowest rank';
  String get anki_reposition_apply => 'Apply';
  String get anki_reposition_cancelled =>
      'Reorder cancelled; nothing was written.';
  String get anki_reposition_dicts_hint =>
      'Hidden frequency dictionaries are not loaded; unhide them in dictionary management first. Nothing selected means all loaded dictionaries.';
  String get anki_reposition_dicts_none =>
      'No frequency dictionaries are loaded.';
  String anki_reposition_done({required Object count}) =>
      'Repositioned ${count} new cards.';
  String anki_reposition_done_skipped({
    required Object count,
    required Object skipped,
  }) =>
      'Repositioned ${count} new cards; ${skipped} were skipped because they are no longer new.';
  String get anki_reposition_empty => 'This deck has no new cards.';
  String anki_reposition_failed({required Object error}) =>
      'Reorder failed: ${error}';
  String get anki_reposition_gather_order_hint =>
      'If the deck\'s options use random new card order, positions are ignored. Set the new card gather/sort order to sequential.';
  String get anki_reposition_hint =>
      'Rewrites the learning order of a deck\'s new cards so common words come first. Review cards are never touched.';
  String get anki_reposition_include_subdecks_hint =>
      'Includes subdecks; cards in filtered decks are skipped.';
  String get anki_reposition_no_frequency => 'no frequency';
  String anki_reposition_partial({
    required Object failed,
    required Object error,
  }) => '${failed} cards could not be written: ${error}';
  String get anki_reposition_preview => 'Preview';
  String get anki_reposition_progress_fetch => 'Reading cards from Anki…';
  String anki_reposition_progress_rank({
    required Object done,
    required Object total,
  }) => 'Looking up frequencies (${done}/${total})';
  String get anki_reposition_progress_title => 'Reordering new cards…';
  String get anki_reposition_progress_write => 'Writing positions…';
  String get anki_reposition_rare_first => 'Rare words first';
  String get anki_reposition_source => 'Frequency source';
  String get anki_reposition_source_dictionaries => 'Frequency dictionaries';
  String get anki_reposition_source_field => 'Note field';
  String get anki_reposition_source_field_hint =>
      'Reads the field mapped to {frequency-harmonic-rank} (FreqSort in Lapis); no dictionary lookup.';
  String anki_reposition_summary({
    required Object total,
    required Object ranked,
    required Object unranked,
    required Object changed,
  }) =>
      '${total} new cards: ${ranked} with frequency, ${unranked} without (kept at the end). ${changed} positions will change.';
  String get anki_reposition_title => 'Reorder new cards by frequency';
  String get anki_reposition_unchanged => 'Cards are already in this order.';
  String get anki_reposition_undo => 'Undo last reorder';
  String anki_reposition_undo_done({
    required Object count,
    required Object skipped,
  }) =>
      'Restored ${count} cards to their previous positions (${skipped} skipped).';
  String anki_reposition_undo_hint({required Object time}) =>
      'Restores the positions saved before the last reorder (${time}). Cards studied since then are left alone.';
  String get anki_reposition_unsupported => 'Only available with AnkiConnect.';
  String anki_select_handlebar({required Object field}) =>
      'Select value for ${field}';
  String get anki_settings_label => 'Anki settings';
  String get anki_tag_default_section => 'Default tags';
  String get anki_tag_include_category => 'Add source category tag';
  String get anki_tag_include_category_hint =>
      'Books get "book", videos get "video", games get "game"';
  String get anki_tag_include_fushi => 'Add "fushi" tag';
  String get anki_tag_include_fushi_hint => 'Mark every card mined by Fushi';
  String get anki_tags => 'Tags';
  String get anki_tags_hint => 'Space-separated tags added to every card';
  String get app_icon_label => 'App icon';
  String get app_icon_presets => 'Presets';
  String get app_ui_scale => 'UI size';
  String get app_ui_scale_hint =>
      'Scales the whole interface — text, icons and controls together — from 30% to 300%. Increase it if the UI looks small on large screens.';
  String get app_version => 'App version';
  String get apply_theme => 'Apply theme';
  String get asr_models_delete => 'Delete';
  String get asr_models_delete_confirm_message =>
      'Transcription in this language will need the model downloaded again.';
  String get asr_models_delete_confirm_title => 'Delete this model?';
  String asr_models_delete_done_freed({required Object size}) =>
      'Deleted, freed ${size}';
  String get asr_models_download => 'Download';
  String asr_models_download_failed({required Object error}) =>
      'Download failed: ${error}';
  String get asr_models_section => 'Speech recognition models';
  String get asr_models_section_summary =>
      'On-device speech recognition models. Download only the languages you need.';
  String asr_models_status_missing({required Object size}) =>
      'Not downloaded · ${size}';
  String asr_models_status_partial({
    required Object obtained,
    required Object total,
  }) => 'Partially downloaded · ${obtained} / ${total}';
  String asr_models_status_ready({required Object size}) =>
      'Downloaded · ${size} on disk';
  String get audio_clip_failed =>
      'Couldn\'t extract the audio clip — the audio source may be missing or unreadable';
  String get audio_import => 'Import audio';
  String get audio_panel_add_audio => 'Add audio';
  String get audio_panel_auto => 'Auto';
  String get audio_panel_pick_new_subtitle => 'Pick new subtitle file';
  String get audio_source_added => 'Audio source added';
  String audio_source_dns_error({required Object host}) =>
      'Audio source connection failed: cannot resolve "${host}" — check your network, or remove this source in settings';
  String get audio_source_edit_target_gone =>
      'That audio source no longer exists — edit discarded';
  String get audio_source_edit_url => 'Edit audio source link';
  String audio_source_error({required Object detail}) =>
      'Audio source error: ${detail}';
  String get audio_source_fushi_interconnect => 'Fushi Interconnect';
  String get audio_source_loopback_warning =>
      'Points at this device — re-point after switching machines';
  String audio_source_request_error({required Object detail}) =>
      'Audio source request failed: ${detail}';
  String audio_source_timeout({required Object host}) =>
      'Audio source timeout: "${host}" — server not responding, try again later or change source';
  String get audio_source_updated => 'Audio source updated';
  String get audio_source_url_invalid =>
      'Link must be http(s) and contain a term or reading placeholder';
  String get audio_unavailable => 'No audio could be found.';
  String get audio_volume => 'Volume';
  String get audiobook_attached => 'Audiobook attached';
  String get audiobook_audio_missing => 'Audio file missing';
  String get audiobook_background_play => 'Keep playing after exit';
  String get audiobook_background_play_hint =>
      'When off, audiobook playback stops when you leave the reader. Turn on to keep playing in the background.';
  String get audiobook_delete => 'Delete audiobook';
  String get audiobook_delete_confirm =>
      'Delete the attached audiobook? Its audio files are removed from this device.';
  String get audiobook_export_clip => 'Export clip video';
  String get audiobook_export_clip_failed => 'Clip export failed';
  String get audiobook_export_clip_in_progress => 'Exporting clip…';
  String get audiobook_export_clip_no_selection =>
      'Select text first to export a clip';
  String get audiobook_export_clip_no_text =>
      'This selection has no text to render';
  String get audiobook_export_clip_saved => 'Clip saved';
  String get audiobook_export_clip_too_long =>
      'Selection audio is too long to export (limit: 5 minutes)';
  String get audiobook_export_clip_unsupported_range =>
      'This selection can\'t be exported (crosses chapter or audio file)';
  String get audiobook_import => 'Import audiobook';
  String get audiobook_import_error => 'Import failed';
  String audiobook_import_error_copy_failed({required Object name}) =>
      'Failed to copy file: ${name}';
  String audiobook_import_error_disk_full({required Object size}) =>
      'Not enough disk space. Required: ${size}';
  String get audiobook_import_success => 'Audiobook imported';
  String get audiobook_load_error => 'Failed to load audiobook.';
  String get audiobook_material_add_dir => 'Add folder';
  String get audiobook_material_library => 'Audiobook material library';
  String get audiobook_material_library_hint =>
      'Folders of subtitle and text files named by work id. Downloads are paired against them automatically.';
  String get audiobook_material_missing_dir => 'Missing';
  String get audiobook_material_none => 'No folders added yet';
  String audiobook_material_status({
    required Object dirs,
    required Object works,
  }) => '${dirs} folder(s), ${works} work(s) recognized';
  String get audiobook_pick_alignment => 'Pick alignment file';
  String get audiobook_reference_original => 'Reference original files';
  String get audiobook_reference_original_desc =>
      'Keep audio where it is and play from its original path; the book breaks if the file is moved or deleted.';
  String get audiobook_relocate => 'Relocate file';
  String get audiobook_relocate_done => 'Audio relocated';
  String get audiobook_rematch_all_zero =>
      'All windows scored 0%, please adjust manually';
  String audiobook_rematch_auto_failed({required Object error}) =>
      'Auto-match failed: ${error}';
  String get audiobook_rematch_auto_match => 'Auto match';
  String audiobook_rematch_auto_picked({
    required Object window,
    required Object pct,
  }) => 'Auto-selected ${window} (hit ${pct}%)';
  String audiobook_rematch_default_value({required Object n}) => 'Default ${n}';
  String audiobook_rematch_failed({required Object error}) =>
      'Re-match failed: ${error}';
  String audiobook_rematch_health_label({
    required Object pct,
    required Object detail,
  }) => '${pct} matched — ${detail}';
  String get audiobook_rematch_matching => 'Matching...';
  String get audiobook_rematch_no_chapters => 'EPUB has no chapter text';
  String get audiobook_rematch_no_cues_to_match => 'No cues to match';
  String get audiobook_rematch_no_sections =>
      'No chapter text found, cannot auto-match';
  String get audiobook_rematch_no_stored_cues =>
      'No stored cues, cannot re-run';
  String audiobook_rematch_result({
    required Object pct,
    required Object window,
  }) => 'Rematched: ${pct}% (window: ${window})';
  String get audiobook_rematch_search_window => 'Search window';
  String get audiobook_rematch_similarity_threshold => 'Similarity threshold';
  String get audiobook_rematch_threshold_hint =>
      'Minimum similarity for fuzzy matching (Dice coefficient). Lower to tolerate more text differences, but too low causes false matches.';
  String get audiobook_rematch_window_hint =>
      'Number of characters to search forward per cue in the text. Adjust if hit rate is low; too large may skew cursor with short noisy cues.';
  String get audiobook_subtitle_source_title => 'Subtitle source';
  String get audiobook_subtitle_source_transcribe_hint =>
      'Generate from the selected audio with the on-device speech model';
  String get audiobook_transcribe_accel_auto => 'Auto (GPU when available)';
  String get audiobook_transcribe_accel_coreml => 'CoreML (FP32)';
  String get audiobook_transcribe_accel_cpu => 'CPU only';
  String get audiobook_transcribe_accel_label => 'Acceleration';
  String get audiobook_transcribe_action => 'Generate subtitles on device';
  String get audiobook_transcribe_discard => 'Discard progress';
  String audiobook_transcribe_done({
    required Object cues,
    required Object segments,
  }) => 'Done: ${cues} cues from ${segments} speech segments';
  String get audiobook_transcribe_export => 'Export subtitle file';
  String get audiobook_transcribe_export_saved => 'Subtitle file saved';
  String audiobook_transcribe_failed({required Object error}) =>
      'Transcription failed: ${error}';
  String audiobook_transcribe_fallback({required Object reason}) =>
      'GPU unavailable, fell back to CPU: ${reason}';
  String get audiobook_transcribe_intro =>
      'Transcribes the audio locally with an on-device speech model for the selected language and generates subtitles for alignment. Nothing is uploaded.';
  String get audiobook_transcribe_language_label => 'Speech language';
  String get audiobook_transcribe_model_download => 'Download model';
  String audiobook_transcribe_model_download_needed({required Object size}) =>
      'Model download required: ${size}';
  String audiobook_transcribe_model_downloading({
    required Object name,
    required Object received,
    required Object total,
  }) => 'Downloading ${name}… ${received} / ${total}';
  String audiobook_transcribe_model_ready({required Object variant}) =>
      'Model ready (${variant})';
  String get audiobook_transcribe_needs_audio => 'Pick audio files first';
  String get audiobook_transcribe_pause => 'Pause';
  String get audiobook_transcribe_paused_hint =>
      'Progress is saved. Pick the same audio files later to resume.';
  String get audiobook_transcribe_pausing => 'Pausing at the next checkpoint…';
  String get audiobook_transcribe_preparing => 'Loading model…';
  String audiobook_transcribe_probe_failed({required Object reason}) =>
      'GPU detection failed, planning for CPU: ${reason}';
  String audiobook_transcribe_progress({
    required Object done,
    required Object total,
    required Object file,
    required Object files,
  }) => '${done} / ${total} · file ${file}/${files}';
  String get audiobook_transcribe_result_name =>
      'Generated by on-device transcription';
  String get audiobook_transcribe_resume => 'Resume transcription';
  String audiobook_transcribe_running_on({required Object provider}) =>
      'Running on ${provider}';
  String audiobook_transcribe_running_on_static({required Object provider}) =>
      'Running on ${provider} · fused static graph';
  String audiobook_transcribe_speed({
    required Object elapsed,
    required Object eta,
    required Object speed,
  }) => 'Elapsed ${elapsed} · remaining ${eta} · ${speed}× realtime';
  String get audiobook_transcribe_start => 'Start transcription';
  String get audiobook_transcribe_title => 'On-device transcription';
  String get audiobook_transcribe_unavailable =>
      'On-device transcription is not available on this platform';
  String get audiobook_transcribe_use_result => 'Use subtitles';
  String get auto_add_book_name_to_tags => 'Auto-add book title to tags';
  String auto_chapter({required Object n}) => 'Chapter ${n}';
  String get auto_read_on_lookup => 'Auto read word on lookup';
  String get auto_search => 'Auto search';
  String get auto_search_debounce_delay => 'Auto search debounce delay';
  String get auto_select_search_window => 'Auto-select search window';
  String get auto_select_search_window_hint =>
      'Probe multiple window sizes on import, pick the one with the best hit rate';
  String get av_sync => 'A/V Sync';
  String get av_sync_reset => 'Reset';
  String get back => 'Back';
  String get backup_category_audiobooks => 'Audiobook audio';
  String get backup_category_audiobooks_desc => 'Audiobook audio and alignment';
  String get backup_category_books => 'Books';
  String get backup_category_books_desc =>
      'Book files (EPUB and extracted content)';
  String get backup_category_dictionary => 'Dictionaries';
  String get backup_category_dictionary_desc =>
      'Imported dictionaries and their files';
  String get backup_category_fonts => 'Custom fonts';
  String get backup_category_fonts_desc => 'Imported custom font files';
  String get backup_category_local_audio => 'Local audio databases';
  String get backup_category_local_audio_desc =>
      'Local pronunciation audio databases';
  String get backup_category_profiles => 'Profiles';
  String get backup_category_profiles_desc => 'Configuration profiles';
  String get backup_category_progress => 'Reading progress';
  String get backup_category_progress_desc => 'Reading positions and bookmarks';
  String get backup_category_settings => 'Settings';
  String get backup_category_settings_desc => 'App and reader settings';
  String get backup_category_statistics => 'Statistics';
  String get backup_category_statistics_desc =>
      'Reading, video and mining statistics';
  String get backup_category_videos => 'Videos';
  String get backup_category_videos_desc => 'Local video files';
  String get backup_export => 'Export backup';
  String get backup_export_books_all => 'All books';
  String backup_export_books_selected({required Object count}) =>
      '${count} books selected';
  String get backup_export_categories_hint =>
      'Tick what to pack into the backup. Unchecking Books removes those books entirely — their content and records go with them.';
  String get backup_export_categories_title => 'Choose what to export';
  String get backup_export_choose_books => 'Choose books';
  String get backup_export_choose_videos => 'Choose videos';
  String backup_export_dictionaries_skipped({
    required Object n,
    required Object names,
  }) =>
      'Exported, but ${n} dictionary(s) were skipped: their files are missing on this device (${names})';
  String backup_export_failed({required Object message}) =>
      'Backup export failed: ${message}';
  String get backup_export_hint =>
      'Choose what to include. Reading data (progress, stats, settings) is always included; uncheck Books to exclude books entirely, or uncheck large items (local audio, videos) to shrink the backup.';
  String get backup_export_no_books => 'No books to choose from';
  String get backup_export_no_videos => 'No videos to choose from';
  String get backup_export_select_all => 'Select all';
  String get backup_export_select_none => 'Select none';
  String get backup_export_success => 'Backup exported successfully';
  String get backup_export_videos_all => 'All videos';
  String backup_export_videos_selected({required Object count}) =>
      '${count} videos selected';
  String get backup_exporting => 'Creating backup…';
  String get backup_import => 'Import backup';
  String backup_import_confirm({
    required Object date,
    required Object bookCount,
    required Object statsCount,
  }) =>
      'This will replace all current data with the backup from ${date}.\n\n${bookCount} books, ${statsCount} statistics records.\n\nThe app will restart after restore.';
  String get backup_import_confirm_title => 'Restore Backup?';
  String get backup_import_contents_hint => 'Untick an item to skip it.';
  String get backup_import_contents_title => 'This backup contains';
  String backup_import_failed({required Object message}) =>
      'Backup import failed: ${message}';
  String get backup_import_hint =>
      'Restore from a backup file. The app will restart.';
  String get backup_import_invalid => 'Invalid backup file';
  String backup_import_merge_preview({
    required Object bookCount,
    required Object progressCount,
  }) =>
      'Merge will add ${bookCount} books and update ${progressCount} reading positions.';
  String get backup_import_mode_label => 'Import mode';
  String get backup_import_mode_merge => 'Merge into current library';
  String get backup_import_mode_overwrite => 'Overwrite entire library';
  String get backup_import_overlay_title => 'Importing backup';
  String get backup_import_overlay_warning =>
      'Restoring your data. Please don\'t close the app.';
  String get backup_import_preserve_sync_note =>
      'Your sync settings on this device (account and credentials) will be kept.';
  String get backup_import_restart_button => 'Restart now';
  String get backup_import_settings_off_hint =>
      'Keep this device\'s fonts/appearance/profiles; restore only books & reading data.';
  String get backup_import_settings_on_hint =>
      'Full restore: fonts, appearance and profiles come from the backup.';
  String get backup_import_settings_toggle => 'Import settings & profiles';
  String get backup_import_success => 'Backup restored. Restarting…';
  String get backup_import_validating_hint =>
      'Checking and previewing the backup file. This may take a moment.';
  String get backup_import_validating_title => 'Reading backup…';
  String backup_schema_newer({required Object version}) =>
      'This backup requires a newer version of the app (schema ${version}). Please update first.';
  String batch_add_to_collection_success({required Object n}) =>
      'Added ${n} item(s) to the collection.';
  String batch_delete_confirm({required Object n}) =>
      'Delete ${n} book(s)? This cannot be undone.';
  String batch_delete_confirm_video({required Object n}) =>
      'Delete ${n} video(s)? This cannot be undone.';
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      'Delete ${n} media and dissolve ${m} collection(s)? This cannot be undone.';
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      'Deleted ${n} media, dissolved ${m} collection(s).';
  String batch_delete_success({required Object n}) => 'Deleted ${n} book(s).';
  String batch_delete_success_video({required Object n}) =>
      'Deleted ${n} video(s).';
  String batch_dissolve_confirm({required Object m}) =>
      'Dissolve ${m} collection(s)? Grouping is removed; the media is kept.';
  String batch_dissolve_success({required Object m}) =>
      'Dissolved ${m} collection(s).';
  String batch_hidden_by_filter_note({required Object n}) =>
      'Another ${n} selected item(s) are hidden by the current filter and will not be affected.';
  String get batch_invert_selection => 'Invert';
  String get batch_select => 'Select';
  String get batch_select_all => 'All';
  String batch_selected_count({required Object n}) => '${n} selected';
  String batch_selection_stale_skipped({
    required Object m,
    required Object n,
  }) => 'Skipped ${m} of ${n} selected items that no longer exist';
  String get batch_tag_add => 'Add';
  String batch_tag_added({required Object name, required Object n}) =>
      'Tag "${name}" added to ${n} book(s).';
  String batch_tag_added_video({required Object name, required Object n}) =>
      'Added tag "${name}" to ${n} video(s).';
  String get batch_tag_apply => 'Apply';
  String get batch_tag_keep => 'Keep';
  String get batch_tag_remove => 'Remove';
  String batch_tag_removed({required Object name, required Object n}) =>
      'Tag "${name}" removed from ${n} book(s).';
  String batch_tag_removed_video({required Object name, required Object n}) =>
      'Removed tag "${name}" from ${n} video(s).';
  String get batch_tag_title => 'Manage tags';
  String get book_continue_reading => 'Continue reading';
  String get book_convert_blocked_already =>
      'This book is already in that format.';
  String get book_convert_blocked_no_original =>
      'This manga was imported from images, so there is no original book to convert back to.';
  String get book_convert_blocked_source_missing =>
      'The source files are gone from disk.';
  String get book_convert_blocked_text_only =>
      'This is a text book with no page images. Only scanned image books can become manga.';
  String get book_convert_done => 'Conversion finished';
  String get book_convert_failed => 'Conversion failed';
  String get book_convert_running => 'Converting…';
  String get book_convert_to_book_action => 'Convert back to book';
  String get book_convert_to_manga_action => 'Convert to manga';
  String get book_css_editor_cancel => 'Cancel';
  String get book_css_editor_confirm_reset =>
      'Reset CSS for this file to default?';
  String get book_css_editor_confirm_reset_all =>
      'Reset CSS for ALL files to default?';
  String get book_css_editor_discard => 'Discard';
  String get book_css_editor_edit_css => 'Edit book CSS';
  String get book_css_editor_no_css_files => 'No CSS files found in this book.';
  String get book_css_editor_no_extract_dir =>
      'Book directory not found. Re-import the book to edit CSS.';
  String get book_css_editor_reset_all => 'Reset all';
  String get book_css_editor_reset_current => 'Reset current';
  String get book_css_editor_reset_done => 'CSS has been reset.';
  String get book_css_editor_save => 'Save';
  String get book_css_editor_saved => 'CSS saved.';
  String get book_css_editor_title => 'Book CSS editor';
  String get book_css_editor_unsaved_changes => 'Unsaved changes';
  String get book_css_editor_unsaved_changes_message =>
      'You have unsaved changes. Discard them?';
  String get book_directory_not_found => 'Book directory not found.';
  String get book_edit_author => 'Author';
  String get book_file_not_found => 'Book file not found';
  String get book_import_duplicate_cancel => 'No, cancel';
  String get book_import_duplicate_cancelled => 'Import cancelled';
  String get book_import_duplicate_keep => 'Yes, add suffix';
  String book_import_duplicate_message({required Object name}) =>
      'A book named "${name}" already exists. Import it anyway? "Yes" imports with a numbered suffix; "No" cancels.';
  String get book_import_duplicate_title => 'Duplicate book';
  String get book_import_folder_as_source_hint =>
      'Keep scanning this folder for new books';
  String get book_language_action => 'Content language';
  String get book_language_description =>
      'Decides which font renders this book\'s text. Automatic uses the language declared in the EPUB.';
  String get book_mark_completed_action => 'Mark as completed';
  String get book_mark_uncompleted_action => 'Mark as not completed';
  String get book_marked_completed => 'Marked as completed';
  String get book_marked_uncompleted => 'Marked as not completed';
  String get book_mode => 'Book mode';
  String book_read_progress({required Object percent}) => 'Read ${percent}%';
  String get book_scrape_cover => 'Scrape cover online';
  String get book_scrape_empty => 'No matching covers';
  String get book_scrape_failed => 'Failed to fetch cover';
  String get book_scrape_hint => 'Book title / author';
  String get book_scrape_search => 'Search';
  String get book_scrape_search_failed => 'Search failed. Tap Search to retry.';
  String get book_scrape_title => 'Match cover online';
  String get book_scrape_use => 'Use';
  String get book_search => 'Search in book';
  String get book_search_hint => 'Enter search text…';
  String get book_search_no_results => 'No results found';
  String book_search_results({required Object n}) => '${n} result(s)';
  String get books => 'Books';
  String get browser_extension_enable_server_first =>
      'Tip: enable "Yomitan API server" and set an API key above first, so the extension is auto-configured with a working connection.';
  String get browser_extension_mobile_unsupported =>
      'Mobile browsers cannot load this extension. Use in-app lookup in the reader or video player instead.';
  String get browser_extension_prepare_button => 'Prepare extension files';
  String get browser_extension_prepare_hint =>
      'Starts the lookup server and unpacks the extension locally; the folder path is copied to the clipboard.';
  String get browser_extension_reinstall_button => 'Re-prepare / refresh files';
  String get browser_extension_server_off => 'Lookup server off';
  String get browser_extension_server_on => 'Lookup server on';
  String get browser_extension_status_connected => 'Extension connected';
  String get browser_extension_status_never => 'Extension not detected yet';
  String get browser_extension_step_dev_mode =>
      'Turn on "Developer mode" (toggle in the top-right corner).';
  String get browser_extension_step_done_auto =>
      'Done. The extension is already set up to connect to Fushi for lookups — nothing to fill in by hand.';
  String get browser_extension_step_load_unpacked => 'Click "Load unpacked".';
  String get browser_extension_step_open_page =>
      'Open the browser extensions page:';
  String get browser_extension_step_pick_folder =>
      'Select the extension folder below (its path is already copied to your clipboard).';
  String get browser_extension_step_verify =>
      'Verify the extension is loaded and connected';
  String get browser_extension_verify_button => 'Check connection';
  String get browser_extension_verify_checking => 'Checking…';
  String get browser_extension_verify_connected =>
      'Extension detected and connected.';
  String get browser_extension_verify_not_detected =>
      'No extension detected yet. Make sure it is loaded and enabled in your browser, then check again.';
  String get browser_extension_version_app => 'App bundled';
  String get browser_extension_version_browser => 'Loaded in browser';
  String get browser_extension_version_label => 'Extension version';
  String get browser_extension_version_mismatch =>
      'The extension loaded in your browser is outdated. Prepare the extension again if needed, then reload it from your browser\'s extensions page (chrome://extensions).';
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      'Port ${port} is in use by another process (usually the yomitan-api component — a Python process launched by your browser). End that process, or disable Yomitan API in Yomitan\'s advanced settings, then enable the Yomitan API server in Fushi again.';
  String get cancel => 'Cancel';
  String card_cover_degraded_to_static({required Object reason}) =>
      'Card cover fell back to a still frame (animated clip unavailable): ${reason}';
  String get card_duplicate => 'Duplicate card — not exported.';
  String get card_export_failed => 'Failed to export card.';
  String card_export_failed_detail({required Object reason}) =>
      'Failed to export card: ${reason}';
  String get card_export_not_configured =>
      'Anki not configured. Open Anki settings and tap Fetch.';
  String card_exported({required Object deck}) => 'Card exported to 『${deck}』.';
  String card_exported_audio_failed({required Object reason}) =>
      'Card exported, but the audio failed to download (${reason}).';
  String get card_mined_no_sentence_captured =>
      'Card created, but no sentence was captured (re-select the word, or this text has no recognizable sentence).';
  String get card_mined_unmapped_sentence_audio_field =>
      'Card created with sentence audio, but your Anki note type has no field mapped to it. Map a field to {sentence-audio}.';
  String get card_mined_unmapped_sentence_field =>
      'Card created, but your Anki note type has no field mapped to the sentence. Use Settings -> \'Create Lapis deck\' or map a field to {sentence}.';
  String get card_mined_without_sentence_audio =>
      'Card created without sentence audio (none found for this selection).';
  String get card_mining_pending => 'Adding card…';
  String card_overwritten({required Object deck}) =>
      'Card overwritten in 『${deck}』.';
  String get change_source => 'Change source';
  String get changelog_empty =>
      'No changelog found. Check your network or proxy settings.';
  String get changelog_open_releases => 'Open releases page';
  String get changelog_prerelease => 'Prerelease';
  String chapter_progress({
    required Object idx,
    required Object total,
    required Object suffix,
    required Object pct,
  }) => 'Chapter ${idx} / ${total}${suffix} · ${pct}%';
  String get clear => 'Clear';
  String get clear_dictionary_description =>
      'This will clear all dictionary results from history. Are you sure?';
  String get clear_dictionary_title => 'Clear dictionary result history';
  String get collapse_dictionaries => 'Collapse dictionaries';
  String get collection_add_failed =>
      'Couldn\'t add the item to the collection. Please try again.';
  String get collection_already_has_item =>
      'This item is already in the collection.';
  String get collection_bookmark => 'Bookmark';
  String get collection_clear_confirm =>
      'Permanently delete the selected collections? This can\'t be undone.';
  String get collection_clear_scope => 'Clear scope';
  String get collection_collapse => 'Collapse';
  String collection_continue_progress({required Object n}) =>
      'Continue · EP ${n}';
  String get collection_empty => 'Collection is empty';
  String get collection_episode_download => 'Download this episode';
  String get collection_episode_fill_missing => 'Fill missing episodes';
  String get collection_episode_no_missing => 'No missing episodes';
  String get collection_episode_rename => 'Rename episodes from scrape';
  String collection_episode_rename_apply({required Object n}) =>
      'Rename ${n} episodes';
  String get collection_episode_rename_empty => 'Nothing to rename';
  String collection_episode_rename_partial({
    required Object n,
    required Object m,
  }) => 'Renamed ${n} episodes, ${m} failed';
  String get collection_episode_rename_title => 'Rename episodes';
  String collection_episode_watched_at({required Object position}) =>
      'Watched to ${position}';
  String get collection_expand => 'Expand';
  String get collection_export_all_books => 'All books';
  String get collection_export_all_mined => 'All mined sentences';
  String get collection_export_all_sources => 'All sources';
  String get collection_export_all_words => 'All favorite words';
  String get collection_export_dedupe => 'Deduplicate by sentence';
  String get collection_export_failed => 'Export failed';
  String get collection_export_favorites_scope => 'Favorite sentences';
  String get collection_export_format => 'Format';
  String get collection_export_mined_title => 'Mined sentences';
  String get collection_export_no_items => 'Nothing to export';
  String get collection_export_pick_book => 'Choose a book';
  String get collection_export_pick_source => 'Select a source';
  String get collection_export_save => 'Save export';
  String get collection_export_saved => 'Export saved';
  String get collection_export_scope => 'Export scope';
  String get collection_export_sentences_title => 'Favorite sentences';
  String get collection_export_words_title => 'Favorite words';
  String get collection_group_extras => 'Extras & PV';
  String collection_group_season({required Object n}) => 'Season ${n}';
  String collection_hero_total_episodes({required Object count}) =>
      '${count} episodes';
  String get collection_loading_hint =>
      'Loading collections and matching audio files…';
  String get collection_member_removed => 'Removed from collection';
  String get collection_merge_title => 'Merge collections';
  String get collection_merged => 'Collections merged.';
  String get collection_mined => 'Mined';
  String get collection_open => 'Open';
  String get collection_play => 'Play';
  String get collection_related_title => 'Related works';
  String get collection_relation_bind => 'Bind to existing collection';
  String collection_relation_bound({required Object name}) =>
      'Bound to ${name}';
  String get collection_relation_download => 'Download';
  String get collection_relation_movie => 'Movie';
  String get collection_relation_other => 'Related';
  String get collection_relation_prequel => 'Prequel';
  String get collection_relation_sequel => 'Sequel';
  String get collection_relation_side_story => 'Side story';
  String get collection_relation_spin_off => 'Spin-off';
  String get collection_remove_member => 'Remove from collection';
  String get collection_remove_member_confirm =>
      'Remove this item from the collection? The item itself is kept.';
  String get collection_sentence => 'Sentence';
  String get collection_sort_by_imported => 'Sort by import date';
  String get collection_sort_by_season => 'Sort by season';
  String get collection_sort_by_title => 'Sort by name';
  String get collection_split_by_season => 'Split by season';
  String get collection_split_confirm => 'Split';
  String collection_split_done({required Object n}) =>
      'Split into ${n} collections';
  String get collection_split_keep_original => 'Keep the original collection';
  String get collection_split_move_to => 'Move to';
  String get collection_split_new_group => 'New group';
  String collection_split_selected({required Object n}) => '${n} selected';
  String get collection_view_all => 'View all';
  String collection_watched_progress({
    required Object done,
    required Object total,
  }) => 'Watched ${done}/${total}';
  String get collection_word => 'Word';
  String get collections => 'Collections';
  String get columns_per_page => 'Columns per page';
  String get combine_into_series => 'Combine into series';
  String get common_more_actions => 'More actions';
  String get copied => 'Copied';
  String get copied_to_clipboard => 'Copied to clipboard.';
  String get copy => 'Copy';
  String get copy_error => 'Copy error';
  String get crash_dump_empty => 'No crash dumps';
  String crash_dump_label({required Object n}) => 'Crash Dumps (${n})';
  String get crash_dump_open_folder => 'Open dump folder';
  String get crash_dump_privacy_notice =>
      'Crash dumps (.dmp) contain a snapshot of process memory and may include text you were reading, words you looked up, or other in-app data. Share them only with developers you trust.';
  String get crash_dump_share => 'Share dump';
  String get crash_dump_share_subject => 'Fushi Crash Dump';
  String get create_series => 'Create series';
  String get creator_action_add_to_stash => 'Add to stash';
  String get creator_action_copy_to_clipboard => 'Copy to clipboard';
  String get creator_action_play_audio => 'Play audio';
  String get creator_action_share => 'Share';
  String get creator_enhancement_audio_recorder => 'Audio recorder';
  String get creator_enhancement_camera => 'Camera';
  String get creator_enhancement_clear_field => 'Clear field';
  String get creator_enhancement_crop_image => 'Crop image';
  String get creator_enhancement_local_audio => 'Local audio';
  String get creator_enhancement_open_stash => 'Open stash';
  String get creator_enhancement_pick_audio => 'Pick audio';
  String get creator_enhancement_pick_image => 'Pick image';
  String get creator_enhancement_pop_from_stash => 'Pop from stash';
  String get creator_enhancement_save_tags => 'Save tags';
  String get creator_enhancement_search_dictionary => 'Search dictionary';
  String get creator_enhancement_sentence_picker => 'Sentence picker';
  String get creator_enhancement_text_segmentation => 'Text segmentation';
  String get creator_export_card => 'Create card';
  String get creator_field_audio => 'Term audio';
  String get creator_field_audio_sentence => 'Sentence audio';
  String get creator_field_cloze_after => 'Cloze after';
  String get creator_field_cloze_before => 'Cloze before';
  String get creator_field_cloze_inside => 'Cloze inside';
  String get creator_field_collapsed_meaning => 'Collapsed meaning';
  String get creator_field_context => 'Context';
  String get creator_field_cue_sentence => 'Cue sentence';
  String get creator_field_expanded_meaning => 'Expanded meaning';
  String get creator_field_frequency => 'Frequency';
  String get creator_field_furigana => 'Furigana';
  String get creator_field_hidden_meaning => 'Hidden meaning';
  String get creator_field_image => 'Image';
  String get creator_field_meaning => 'Meaning';
  String get creator_field_notes => 'Notes';
  String get creator_field_pitch_accent => 'Pitch accent';
  String get creator_field_reading => 'Reading';
  String get creator_field_sentence => 'Sentence';
  String get creator_field_tags => 'Tags';
  String get creator_field_term => 'Term';
  String get custom_dict_css => 'Custom CSS';
  String get custom_dict_css_global => 'Global (all dictionaries)';
  String get custom_fonts => 'Custom fonts';
  String get custom_fonts_add_system => 'Add system font';
  String get custom_fonts_archive_error => 'Failed to extract archive';
  String get custom_fonts_catalog_title => 'Font library';
  String get custom_fonts_download_failed => 'Download failed';
  String get custom_fonts_downloading => 'Downloading...';
  String get custom_fonts_drag_hint => 'Drag to reorder font priority';
  String get custom_fonts_empty => 'No custom fonts added';
  String get custom_fonts_font_roles => 'Font roles';
  String get custom_fonts_import_file => 'Import font file';
  String get custom_fonts_import_url => 'Import from URL';
  String custom_fonts_imported_count({required Object count}) =>
      '${count} font(s) imported';
  String get custom_fonts_manage => 'Manage fonts';
  String get custom_fonts_no_fonts_in_archive =>
      'No font files found in archive';
  String get custom_fonts_recommended => 'Recommended fonts';
  String get custom_fonts_removed => 'Font removed';
  String get custom_fonts_search_hint => 'Search fonts';
  String get custom_theme => 'Custom theme';
  String custom_theme_default_name({required Object n}) => 'Custom ${n}';
  String get custom_theme_long_press_hint =>
      'Tap to switch · long-press to edit';
  String get custom_theme_name => 'Name';
  String get dark_mode => 'Dark mode';
  String get dark_mode_dark => 'Dark';
  String get dark_mode_light => 'Light';
  String get dark_mode_system => 'System';
  String data_root_unavailable_message({required Object path}) =>
      'Your configured data location ${path} is temporarily unreachable (the drive may be asleep, busy, or disconnected). Your data is safe and untouched there — nothing is lost. Tap Retry once the drive is ready to load your data, or start with the default location for now (your existing data will NOT be modified).';
  String get data_root_unavailable_title => 'Data location not responding';
  String get data_root_use_default_button => 'Start with default location';
  String get data_storage_change_button => 'Change location';
  String get data_storage_change_confirm_body =>
      'Fushi will move all your data to the new folder and then restart. Do not close the app during the move.';
  String get data_storage_change_confirm_title =>
      'Change data storage location?';
  String get data_storage_location_default => 'Default location';
  String get data_storage_location_hint =>
      'Where Fushi keeps your library, audiobooks and database. Desktop only.';
  String get data_storage_location_title => 'Data storage location';
  String data_storage_migrate_failed({required Object message}) =>
      'Could not move data: ${message}';
  String get data_storage_migrate_failed_restart => 'Restart';
  String get data_storage_migrate_failed_suggestions =>
      'Please try again with a different, empty folder. Do not choose the app\'s install folder, and make sure no files in that location are in use.';
  String get data_storage_migrate_failed_title => 'Data migration failed';
  String data_storage_migrate_overlay_progress({
    required Object copied,
    required Object total,
  }) => 'Copying files: ${copied} / ${total}';
  String get data_storage_migrate_overlay_title => 'Moving your data';
  String get data_storage_migrate_overlay_warning =>
      'Please keep the app open. Do not close or shut down your computer until it finishes.';
  String get data_storage_migrate_success => 'Data moved. Restarting…';
  String get data_storage_migrating => 'Moving data…';
  String get data_storage_reject_install_dir =>
      'That folder is the app\'s install location and can\'t store your data. Please choose a different, empty folder.';
  String get data_storage_restart_failed =>
      'Data moved, but automatic restart failed. Please reopen Fushi manually.';
  String get db_cannot_open_message =>
      'Fushi could not open or create its database at the configured data location. Nothing is corrupt - the folder may be missing, read-only, or on a disconnected drive. Check the data location in Settings, or restart to use the default location.';
  String get db_cannot_open_title => 'Data location unavailable';
  String db_downgrade_message({
    required Object dbVersion,
    required Object appVersion,
  }) =>
      'This database was created by a newer version of Fushi (schema v${dbVersion}). Your current app is too old (v${appVersion}). Opening was blocked to protect your data. Please update the app and try again.';
  String get db_downgrade_title => 'Update Fushi';
  String get db_unrecoverable_message =>
      'The database could not be opened even after automatic repair. It is likely corrupt. You can restore a backup in Settings, or clear app data to start fresh.';
  String get db_unrecoverable_title => 'Database damaged';
  String get debug_log_share_subject => 'Fushi Debug Log';
  String debug_log_title({required Object count}) => 'Debug Log (${count})';
  String get debug_log_toggle => 'Enable debug log';
  String get decrease => 'Decrease';
  String get deduplicate_pitch_accents => 'Deduplicate pitch accents';
  String get delete_choices_remember => 'Remember these choices';
  String get delete_collection => 'Delete collection';
  String get delete_collection_also_books => 'Also delete the books in it';
  String get delete_collection_also_videos => 'Also delete the videos';
  String get delete_collection_confirm =>
      'Only the grouping is removed. The items in it are kept.';
  String get delete_custom_theme => 'Delete theme';
  String get delete_custom_theme_confirm =>
      'Delete this custom theme? This cannot be undone.';
  String get delete_disclosure_audio_source_files =>
      'The original audio files you imported';
  String get delete_disclosure_audiobook_book_kept =>
      'The book itself and its reading progress';
  String get delete_disclosure_audiobook_files =>
      'The audio and aligned subtitles Fushi copied into its own storage';
  String get delete_disclosure_audiobook_source_kept =>
      'The original audio files you imported';
  String get delete_disclosure_book_audiobook =>
      'The audio and aligned subtitles of the attached audiobook, if any';
  String get delete_disclosure_book_extracted =>
      'The book files Fushi extracted into its own storage';
  String get delete_disclosure_book_records =>
      'Reading progress, bookmarks, tags and subtitle data';
  String get delete_disclosure_book_source_kept =>
      'The original book and subtitle files you imported';
  String get delete_disclosure_source_kept =>
      'The original files you imported (book, subtitles, audio)';
  String get delete_disclosure_stats_kept => 'Reading statistics';
  String get delete_disclosure_will_delete_label => 'Will be deleted';
  String get delete_disclosure_will_keep_label => 'Will be kept';
  String get delete_in_progress => 'Delete in progress';
  String get delete_local_files => 'Also delete local files';
  String get delete_local_files_audio_desc =>
      'The original audio files are removed from this device; book and subtitle originals are kept. This cannot be undone.';
  String delete_local_files_failed({required Object n}) =>
      'Could not delete ${n} local file(s); they may still be in use';
  String get delete_local_files_video_desc =>
      'The video file is removed from this device and its download task is cleared too. This cannot be undone.';
  String get delete_prompt_delete_selected => 'Delete selected';
  String get delete_prompt_message =>
      'These items were deleted on another device. Delete them here too?';
  String get delete_prompt_select_all => 'Select all';
  String get delete_prompt_title => 'Deleted on another device';
  String get delete_scope_keep_local_desc => 'Other devices keep their copy';
  String get delete_scope_no_channel =>
      'No sync configured - this deletion only affects this device';
  String get delete_scope_sync_everywhere => 'Delete from all devices';
  String get delete_scope_sync_everywhere_desc =>
      'Other devices confirm the deletion on next sync';
  String get design_system_auto => 'Auto';
  String get design_system_hint => 'Controls the visual style of the app';
  String get design_system_label => 'Design system';
  String get dialog_add => 'ADD';
  String get dialog_append => 'APPEND';
  String get dialog_cancel => 'CANCEL';
  String get dialog_clear => 'CLEAR';
  String get dialog_clear_all_dictionaries => 'Delete all dictionaries';
  String get dialog_close => 'CLOSE';
  String get dialog_connect => 'CONNECT';
  String get dialog_content_dictionary_clear =>
      'Wiping the dictionary database will also clear all search results in history.';
  String get dialog_content_dictionary_delete =>
      'Deleting a single dictionary may take longer than clearing the entire dictionary database. This will also clear all search results in history.';
  String get dialog_create => 'CREATE';
  String get dialog_crop => 'CROP';
  String get dialog_delete => 'DELETE';
  String get dialog_done => 'DONE';
  String get dialog_edit => 'EDIT';
  String get dialog_edit_info => 'Edit info';
  String get dialog_exit => 'EXIT';
  String get dialog_export => 'EXPORT';
  String get dialog_import => 'IMPORT';
  String get dialog_import_dictionary => 'Import dictionary';
  String get dialog_import_folder => 'Import folder dictionary';
  String get dialog_importing => 'IMPORTING…';
  String get dialog_launch_ankidroid => 'LAUNCH ANKIDROID';
  String get dialog_ok => 'OK';
  String get dialog_play => 'PLAY';
  String get dialog_read => 'READ';
  String get dialog_record => 'RECORD';
  String get dialog_replace => 'Replace';
  String get dialog_save => 'SAVE';
  String get dialog_search => 'SEARCH';
  String get dialog_select => 'SELECT';
  String get dialog_share => 'SHARE';
  String get dialog_stash => 'STASH';
  String get dialog_stop => 'STOP';
  String get dialog_title_dictionary_clear => 'Clear all dictionaries?';
  String dialog_title_dictionary_delete({required Object name}) =>
      'Delete 『${name}』?';
  String get dict_auto_update => 'Update automatically';
  String get dict_auto_update_hint => 'Check for dictionary updates on launch';
  String dict_auto_update_last({required Object time}) =>
      'Last successful check: ${time}';
  String get dict_auto_update_never => 'Never';
  String get dict_category_bilingual => 'Bilingual';
  String get dict_category_frequency => 'Frequency';
  String get dict_category_grammar => 'Grammar';
  String get dict_category_ja_en => 'Japanese–English';
  String get dict_category_ja_ja => 'Japanese–Japanese';
  String get dict_category_ja_other => 'Other Japanese';
  String get dict_category_kanji => 'Kanji';
  String get dict_category_monolingual => 'Monolingual';
  String get dict_category_names => 'Names';
  String get dict_category_supplementary => 'Supplementary';
  String get dict_download_browse => 'Download dictionaries';
  String get dict_download_busy => 'A dictionary download is already running.';
  String dict_download_button({required Object count}) => 'Download (${count})';
  String get dict_download_cancelled => 'Download cancelled.';
  String get dict_download_complete => 'Download complete.';
  String dict_download_failed({required Object error}) =>
      'Download failed: ${error}';
  String get dict_download_hide => 'Run in background';
  String get dict_download_import_uncancellable =>
      'Importing cannot be interrupted';
  String get dict_download_installed => 'Installed';
  String get dict_download_language => 'Your language';
  String get dict_download_learning_language => 'Learning language';
  String dict_download_partial({
    required Object success,
    required Object total,
    required Object error,
  }) => '${success} / ${total} OK. Failed: ${error}';
  String get dict_download_progress_show => 'View progress';
  String get dict_download_select_title => 'Select dictionaries';
  String dict_downloading({required Object name}) => 'Downloading ${name}…';
  String dict_downloading_size({
    required Object name,
    required Object done,
    required Object total,
  }) => 'Downloading ${name} (${done} / ${total})';
  String dict_error_connect_timeout({required Object host}) =>
      'Could not reach ${host} (connection timed out)';
  String dict_error_connection({required Object host}) =>
      'Could not connect to ${host}';
  String dict_error_http_status({
    required Object host,
    required Object status,
  }) => '${host} returned HTTP ${status}';
  String dict_error_stall_timeout({required Object host}) =>
      '${host} stopped sending data';
  String dict_import_failed_summary({required Object n}) =>
      'Failed to import ${n} dictionary(s)';
  String get dict_import_started =>
      'Importing dictionaries in the background...';
  String dict_import_success_summary({required Object n}) =>
      'Imported ${n} dictionary(s)';
  String get dict_language_auto => 'Automatic';
  String get dict_language_description =>
      'Decides which font renders this dictionary\'s text. Automatic uses the language the dictionary declares.';
  String get dict_language_title => 'Dictionary content language';
  String get dict_language_tooltip => 'Content language';
  String get dict_style_global_only => 'Only adjustable for all dictionaries';
  String get dict_style_part_deinflection_tag => 'Deinflection chain';
  String get dict_style_part_dictionary_label => 'Dictionary name';
  String get dict_style_part_entry_card => 'Entry card';
  String get dict_style_part_expression => 'Headword';
  String get dict_style_part_expression_tag => 'Expression tags';
  String get dict_style_part_frequency => 'Frequency';
  String get dict_style_part_glossary_content => 'Definition';
  String get dict_style_part_glossary_tag => 'Definition tags';
  String get dict_style_part_pitch => 'Pitch accent';
  String get dict_style_part_reset => 'Reset part';
  String get dict_style_part_ruby => 'Furigana';
  String get dict_style_pick_hint => 'Tap a part in the preview to jump to it';
  String get dict_style_preview_title => 'Preview';
  String get dict_style_prop_background => 'Highlight';
  String get dict_style_prop_bold => 'Bold';
  String get dict_style_prop_corner_radius => 'Corner radius';
  String get dict_style_prop_default => 'Default';
  String get dict_style_prop_font_scale => 'Font size';
  String get dict_style_prop_italic => 'Italic';
  String get dict_style_prop_off => 'Off';
  String get dict_style_prop_on => 'On';
  String get dict_style_prop_text_color => 'Text color';
  String get dict_style_prop_underline => 'Underline';
  String get dict_style_reset_all => 'Reset all';
  String get dict_style_scope_all => 'All dictionaries';
  String get dict_style_tab_code => 'CSS';
  String get dict_style_tab_visual => 'Visual';
  String get dict_style_title => 'Dictionary styling';
  String dict_task_failed_download({
    required Object name,
    required Object reason,
  }) => 'Download failed: ${name} (${reason})';
  String dict_task_failed_import({
    required Object name,
    required Object reason,
  }) => 'Import failed: ${name} (${reason})';
  String dict_task_failed_summary({required Object n}) =>
      '${n} dictionary(s) failed';
  String get dict_update_check => 'Check for updates';
  String get dict_update_checking => 'Checking for updates…';
  String dict_update_done({required Object name}) => '${name} updated.';
  String dict_update_failed({required Object error}) =>
      'Update failed: ${error}';
  String get dict_update_interval_daily => 'Daily';
  String get dict_update_interval_monthly => 'Monthly';
  String get dict_update_interval_weekly => 'Weekly';
  String get dict_update_latest => 'Already up to date.';
  String dict_update_name_mismatch_body({
    required Object incoming,
    required Object existing,
  }) =>
      'The selected file is "${incoming}", but you are updating "${existing}". Replace anyway?';
  String get dict_update_name_mismatch_title => 'Names do not match';
  String get dict_update_none => 'All dictionaries are up to date.';
  String dict_update_summary({
    required Object updated,
    required Object current,
    required Object failed,
  }) => '${updated} updated, ${current} up to date, ${failed} failed.';
  String get dict_update_tooltip => 'Update dictionary';
  String dict_update_updating({required Object name}) => 'Updating ${name}…';
  String get dictionaries => 'Dictionaries';
  String get dictionaries_delete_failed => 'Failed to delete dictionaries';
  String get dictionaries_deleting_data => 'Deleting dictionary data...';
  String get dictionaries_menu_empty => 'Import a dictionary for use';
  String get dictionary_collapse_follow_global => 'Follow global setting';
  String get dictionary_delete_failed => 'Failed to delete dictionary';
  String get dictionary_font_size => 'Dictionary font size';
  String get dictionary_font_size_zoom_hint =>
      'Ctrl + scroll wheel zooms the popup content';
  String get dictionary_section_frequency => 'Frequency dictionaries';
  String get dictionary_section_kanji => 'Kanji dictionaries';
  String get dictionary_section_pitch => 'Pitch dictionaries';
  String get dictionary_section_term => 'Term dictionaries';
  String get dictionary_settings => 'Dictionary settings';
  String get dictionary_type_frequency => 'Frequency';
  String get dictionary_type_pitch => 'Pitch';
  String get dictionary_type_term => 'Term';
  String get dictionary_unrecognized_format => 'Unrecognized dictionary format';
  String get discovery_all_sources => 'All sources';
  String get discovery_download_queued => 'Added to downloads';
  String get discovery_empty => 'No results';
  String get discovery_enter_query_hint => 'Enter a keyword to search';
  String get discovery_game_type_all => 'All';
  String get discovery_game_type_mobile => 'Mobile';
  String get discovery_game_type_raw => 'Untranslated';
  String get discovery_game_type_translated => 'Translated';
  String get discovery_game_type_unlabelled => 'Unlabelled';
  String get discovery_kind_audiobook => 'Audiobooks';
  String get discovery_kind_manga => 'Manga';
  String get discovery_kind_novel => 'Novels';
  String get discovery_load_more => 'Load more';
  String get discovery_opds_add => 'Add OPDS server';
  String get discovery_opds_allow_http => 'Allow plain HTTP';
  String get discovery_opds_allow_http_hint =>
      'Needed for a self-hosted server on your local network';
  String get discovery_opds_enabled => 'Enabled';
  String get discovery_opds_name => 'Display name';
  String get discovery_opds_name_hint => 'Leave empty to use the host name';
  String get discovery_opds_password => 'Password';
  String get discovery_opds_remove => 'Remove';
  String get discovery_opds_settings_hint =>
      'Browse and download books and comics from your own OPDS server, such as BookOrbit, Calibre-Web, Komga or Kavita';
  String get discovery_opds_settings_title => 'OPDS catalogs';
  String get discovery_opds_test => 'Test connection';
  String discovery_opds_test_failed({required Object reason}) =>
      'Connection failed: ${reason}';
  String discovery_opds_test_ok({required Object count}) =>
      'Connected. Root catalog has ${count} entries';
  String get discovery_opds_url => 'Catalog URL';
  String get discovery_opds_url_hint =>
      'The OPDS endpoint, for example https://books.example.com/api/v1/opds';
  String get discovery_opds_url_invalid =>
      'Enter a valid HTTP or HTTPS catalog URL';
  String get discovery_opds_url_needs_http_optin =>
      'Plain HTTP needs the switch below';
  String get discovery_opds_username => 'Username';
  String get discovery_opds_username_hint => 'Leave empty for a public catalog';
  String get discovery_partial_failure => 'Some sources are unavailable';
  String get discovery_search_hint => 'Search online resources';
  String discovery_source_kinds_label({required Object kinds}) =>
      'Covers: ${kinds}';
  String get discovery_source_pick_hint =>
      'Pick a source to browse, or type a keyword to search every source';
  String get discovery_source_query_required =>
      'This source only supports keyword search';
  String get discovery_sources_settings_hint =>
      'Which built-in sources take part in the Discover page\'s All sources search. Picking a single source in the source dropdown always works, even when it is off here.';
  String get discovery_sources_settings_title => 'Discovery sources';
  String get discovery_sources_unavailable => 'All sources are unavailable';
  String get discovery_torrent_failed => 'Failed to add torrent task';
  String get discovery_torrent_pushed => 'Torrent task added';
  String get dismiss_swipe_sensitivity => 'Swipe dismiss sensitivity';
  String get display_settings => 'Typography settings';
  String get download_add_video_source => 'Add video source';
  String get download_airing_calendar_empty_guidance =>
      'Nothing to show yet: bind a collection to AniList or add a download subscription, and their airing times will appear here.';
  String download_airing_calendar_episode_label({required Object episode}) =>
      'Ep ${episode}';
  String get download_airing_calendar_error =>
      'Failed to load the airing schedule';
  String get download_airing_calendar_in_library => 'In library';
  String get download_airing_calendar_show_all => 'Show all this season';
  String get download_airing_calendar_subscribed => 'Subscribed';
  String get download_airing_calendar_title => 'Airing calendar';
  String get download_airing_calendar_week_empty => 'Nothing airing this week';
  String get download_airing_calendar_week_next => 'Next week';
  String get download_airing_calendar_week_prev => 'Previous week';
  String get download_backend_embedded_hint =>
      'Recommended. Downloads run inside Fushi - nothing else to install.';
  String get download_backend_embedded_unavailable =>
      'The built-in engine runtime is missing from this install. Reinstall the complete package, or use external qBittorrent instead.';
  String get download_backend_not_configured =>
      'Download backend is not configured yet.';
  String get download_backend_qb_hint =>
      'Connect Fushi to a qBittorrent WebUI you already run.';
  String get download_backend_qb_url_invalid =>
      'Enter a full address, e.g. http://127.0.0.1:8080';
  String get download_backend_setup_intro =>
      'Pick which engine runs your downloads. You can change this any time in download settings.';
  String get download_backend_setup_start => 'Set up now';
  String get download_backend_setup_title => 'Set up download backend';
  String get download_backend_unsupported_note =>
      'The built-in engine is not available on this platform. Downloads use external qBittorrent.';
  String get download_clear_finished => 'Clear finished';
  String get download_detail_backend_offline =>
      'The original download backend is offline. Persisted task information is shown; live parameters are unavailable.';
  String get download_detail_backend_unsupported =>
      'Not supported by current download backend';
  String get download_detail_connections_label => 'Connections';
  String get download_detail_content_path_label => 'Content path';
  String get download_detail_dht_nodes => 'DHT nodes';
  String get download_detail_hash_label => 'Info hash';
  String get download_detail_leechers_label => 'Leechers';
  String get download_detail_listen_port => 'Listen port';
  String get download_detail_no_peers => 'No connected peers';
  String get download_detail_no_trackers => 'No trackers';
  String get download_detail_pieces_label => 'Pieces';
  String get download_detail_port_mapping => 'Port mapping';
  String get download_detail_priority_high => 'High';
  String get download_detail_priority_normal => 'Normal';
  String get download_detail_priority_skip => 'Don\'t download';
  String get download_detail_raw_state_label => 'Backend state';
  String get download_detail_remaining_label => 'Remaining';
  String get download_detail_save_path_label => 'Save path';
  String get download_detail_section_network => 'Network';
  String get download_detail_section_task => 'Task';
  String get download_detail_section_transfer => 'Transfer';
  String get download_detail_seeds_label => 'Seeds';
  String get download_detail_session_rates => 'Session rates';
  String get download_detail_tab_files => 'Files';
  String get download_detail_tab_overview => 'Overview';
  String get download_detail_tab_peers => 'Peers';
  String get download_detail_tab_trackers => 'Trackers';
  String get download_detail_task_gone => 'Task not found in backend';
  String get download_detail_task_missing =>
      'The original download backend is online, but this torrent is no longer present. Live peers and trackers cannot be recovered; persisted task information is shown.';
  String get download_detail_task_queued =>
      'Queued: waiting for other downloads to free a slot. This task has not been handed to the downloader yet, so there is no live peer or tracker data.';
  String get download_detail_time_active => 'Active time';
  String get download_detail_time_seeding => 'Seeding time';
  String get download_detail_total_size_label => 'Total size';
  String get download_detail_tracker_disabled => 'Disabled';
  String get download_detail_tracker_not_contacted => 'Not contacted yet';
  String get download_detail_tracker_not_working => 'Not working';
  String get download_detail_tracker_updating => 'Updating';
  String get download_detail_tracker_working => 'Working';
  String get download_direct_queue_section => 'Direct downloads';
  String get download_no_managed_video_source =>
      'No managed video source yet. Add a local folder to store downloaded files so finished videos can land in your library.';
  String get download_open_settings => 'Open settings';
  String get download_rate_limit_lan_exempt =>
      'Does not apply within your local network; LAN transfers always run at full speed.';
  String get download_rate_limit_lan_included =>
      'Also applies within your local network.';
  String get download_resources_tab => 'Resources';
  String get download_save_root_change => 'Change folder';
  String get download_save_root_create_failed =>
      'Cannot create that folder. Check the drive and permissions.';
  String get download_save_root_fallback_warning =>
      'The configured download folder is unavailable, so the default folder is being used.';
  String get download_save_root_hint =>
      'New downloads are saved here. Existing tasks keep their original folder.';
  String get download_save_root_not_absolute =>
      'Please pick an absolute folder path.';
  String get download_save_root_not_writable => 'That folder is not writable.';
  String get download_save_root_reset => 'Restore default';
  String get download_save_root_title => 'Download folder';
  String get download_settings => 'Download settings';
  String get download_status_cancelled => 'Cancelled';
  String get download_status_queued => 'Queued';
  String download_subscription_after_episode({required Object episode}) =>
      'After episode ${episode}';
  String get download_subscription_check_all => 'Check all';
  String get download_subscription_check_now => 'Check now';
  String download_subscription_choice_hint({
    required Object group,
    required Object resolution,
  }) =>
      'Follow ${group} · ${resolution}. New single-episode releases will be queued.';
  String get download_subscription_created =>
      'Download queued and subscription created';
  String get download_subscription_delete => 'Delete subscription';
  String download_subscription_delete_confirm({required Object title}) =>
      'Delete the subscription for ${title}? Downloaded tasks are kept.';
  String get download_subscription_download_and_create =>
      'Download and subscribe';
  String get download_subscription_empty_body =>
      'In Discover, choose a single-episode release and use Download and subscribe.';
  String get download_subscription_empty_title => 'No subscriptions yet';
  String download_subscription_last_checked({required Object time}) =>
      'Last checked: ${time}';
  String download_subscription_latest_episode({required Object episode}) =>
      'Latest queued: episode ${episode}';
  String get download_subscription_never_checked => 'Never checked';
  String get download_subscription_running_hint =>
      'Fushi checks enabled subscriptions every 15 minutes while the app is running.';
  String get download_subscription_source_unavailable =>
      'Current target (unavailable)';
  String download_subscription_start_episode({required Object episode}) =>
      'Start from episode ${episode}';
  String get download_subscription_start_episode_invalid =>
      'Enter a whole number (0 or greater), or leave blank';
  String get download_subscription_unavailable_hint =>
      'Choose a single-episode release with a recognizable release group to subscribe.';
  String get download_subscriptions_tab => 'Subscriptions';
  String download_task_action_failed({required Object error}) =>
      'The task action failed: ${error}';
  String get download_task_add => 'Add task';
  String get download_task_add_content_kind => 'Content type';
  String get download_task_add_invalid =>
      'Unrecognized magnet link or torrent file';
  String get download_task_add_pick_torrent => 'Choose torrent file';
  String get download_task_add_submitted => 'Task added';
  String get download_task_add_title_label => 'Title';
  String get download_task_audiobook_needs_alignment =>
      'Audio only - an alignment file (subtitle) is still needed before this can open as a book.';
  String get download_task_audiobook_pair => 'Add alignment file';
  String get download_task_collection_unassigned => 'No collection';
  String get download_task_delete => 'Delete task';
  String download_task_delete_confirm({required Object title}) =>
      'Delete the download task for ${title}?';
  String get download_task_delete_files => 'Also delete downloaded files';
  String get download_task_delete_files_failed =>
      'The downloaded data could not be deleted; the download backend did not confirm it';
  String get download_task_details => 'View details';
  String get download_task_error_copied => 'Error details copied';
  String get download_task_error_detail_title => 'Error details';
  String get download_task_error_summary_backend_unavailable =>
      'Download backend is unavailable or no longer matches';
  String get download_task_error_summary_backend_unconfirmed =>
      'Torrent could not be confirmed by hash, title, and category';
  String get download_task_error_summary_generic => 'The task hit an error';
  String get download_task_error_summary_legacy =>
      'Legacy import needs manual attention';
  String get download_task_error_summary_source_missing =>
      'Managed video source is missing or inaccessible';
  String get download_task_error_summary_subtitle =>
      'Subtitles are unavailable or could not be installed';
  String get download_task_error_summary_torrent_info =>
      'Torrent identity is missing or unverifiable';
  String get download_task_error_view_detail => 'View details';
  String get download_task_eta => 'ETA';
  String get download_task_group_by => 'Group by';
  String get download_task_group_collection => 'Collection / series';
  String get download_task_group_kind => 'Media type';
  String get download_task_group_none => 'No grouping';
  String get download_task_group_status => 'Status';
  String get download_task_groups_collapse => 'Collapse all groups';
  String get download_task_groups_expand => 'Expand all groups';
  String get download_task_kind_all => 'All types';
  String get download_task_kind_filter => 'Filter by type';
  String get download_task_lifecycle_active => 'In progress';
  String get download_task_lifecycle_cancelled => 'Cancelled';
  String get download_task_lifecycle_completed => 'Completed';
  String get download_task_lifecycle_failed => 'Failed';
  String get download_task_lifecycle_needs_attention => 'Needs attention';
  String get download_task_location_missing =>
      'The task file location is unavailable.';
  String get download_task_location_open_failed =>
      'Could not open the file location.';
  String get download_task_no_match => 'No matching tasks';
  String get download_task_open_location => 'Show in folder';
  String get download_task_pause => 'Pause';
  String get download_task_priority => 'Queue priority';
  String get download_task_priority_high => 'High';
  String get download_task_priority_low => 'Low';
  String get download_task_priority_normal => 'Normal';
  String get download_task_ratio => 'Ratio';
  String get download_task_resume => 'Resume';
  String get download_task_search_hint => 'Search tasks';
  String get download_task_sort_created => 'Date added';
  String get download_task_sort_direction => 'Reverse sort order';
  String get download_task_sort_progress => 'Progress';
  String get download_task_sort_status => 'Status';
  String get download_task_stage_download => 'Download';
  String get download_task_stage_enqueue => 'Enqueue';
  String get download_task_stage_import => 'Import';
  String get download_task_stage_organize => 'Organize';
  String get download_task_stage_scrape => 'Scrape';
  String get download_task_stage_subtitle => 'Subtitles';
  String get download_task_status_active => 'In progress';
  String get download_task_status_attention => 'Needs attention';
  String get download_task_status_checking => 'Checking';
  String get download_task_status_completed => 'Completed';
  String get download_task_status_downloading => 'Downloading';
  String get download_task_status_error => 'Error';
  String get download_task_status_filter => 'Task status';
  String get download_task_status_metadata => 'Fetching metadata';
  String get download_task_status_moving => 'Moving';
  String get download_task_status_paused => 'Paused';
  String get download_task_status_queued => 'Queued';
  String get download_task_status_seeding => 'Seeding';
  String get download_task_status_stalled => 'Stalled';
  String get download_task_toggle_failed => 'Pause/resume failed';
  String get download_tasks_tab => 'Tasks';
  String get download_test_connection => 'Test connection';
  String get download_test_connection_failed =>
      'Connection failed. Check the address and credentials.';
  String download_test_connection_failed_reason({required Object message}) =>
      'Connection failed: ${message}';
  String download_test_connection_ok({required Object version}) =>
      'Connected (version: ${version})';
  String get download_tracker_auto_add =>
      'Automatically add subscription trackers to new downloads';
  String get download_tracker_auto_add_hint =>
      'The list is cached for 6 hours. A subscription failure will not block the download.';
  String download_tracker_fetch_failed({required Object message}) =>
      'Could not fetch trackers: ${message}';
  String download_tracker_preview_count({required Object count}) =>
      'Fetched ${count} trackers';
  String get download_tracker_preview_empty =>
      'Fetch the subscription to preview supported HTTP, HTTPS, and UDP trackers.';
  String get download_tracker_refresh => 'Fetch trackers';
  String get download_tracker_section => 'Tracker subscription';
  String get download_tracker_url => 'Subscription URL';
  String get download_video_source_required => 'Video source required';
  String get drag_drop_failed =>
      'Couldn\'t handle the dropped files. Please try again.';
  String get drag_drop_folder_source_added =>
      'Folder added as a library source and scanned.';
  String get drag_drop_folder_source_exists =>
      'That folder is already a library source.';
  String get drag_drop_manga_archive_unsupported =>
      'Can\'t import .cbr/.rar comic archives — repack as .cbz or a folder of images.';
  String get drag_drop_need_card_target =>
      'Drop subtitles or audio onto a book or video';
  String get drag_drop_unsupported_on_books =>
      'Drop book files here. Switch to Video or Dictionaries for those files.';
  String get drag_drop_unsupported_on_dictionary =>
      'Drop .zip, .dsl, or .mdx dictionary files here. CSS files only work together with a dictionary package.';
  String get drag_drop_unsupported_on_video =>
      'Drop videos, playlists, or subtitles here. Switch to Books or Dictionaries for those files.';
  String get edit_custom_theme => 'Edit custom theme';
  String get eink_mode => 'E-ink mode';
  String get eink_mode_hint =>
      'Pure black-and-white theme with no animations and line-style highlights, for e-ink displays';
  String get enable_swipe_to_close => 'Swipe to close popup';
  String get epub_delete_error => 'Failed to delete book';
  String get epub_delete_title => 'Delete book';
  String get epub_parse_fallback => 'Book metadata repaired from database';
  String get error_ankidroid_api => 'AnkiDroid error';
  String get error_ankidroid_api_content =>
      'There was an issue communicating with AnkiDroid.\n\nEnsure that the AnkiDroid background service is active and all relevant app permissions are granted in order to continue.';
  String get error_copied => 'Error copied to clipboard';
  String get error_load_failed => 'Something went wrong while loading';
  String get error_log_diagnostics_section =>
      'Diagnostics / forensics (not app errors)';
  String get error_log_empty => 'No error logs';
  String error_log_label({required Object n}) => 'Error Log (${n})';
  String get error_log_previous_run => 'Historical logs (before last run)';
  String get error_log_share_subject => 'Fushi Error Log';
  String get extension_popup_independent_size =>
      'Separate size for browser extension';
  String get extension_popup_independent_size_hint =>
      'Give the browser-extension lookup popup its own max size instead of following the in-app popup';
  String get extension_popup_max_height => 'Extension popup max height';
  String get extension_popup_max_width => 'Extension popup max width';
  String get external_window_capture_failed => 'Window capture failed';
  String get external_window_current_game => 'Current game';
  String get external_window_mining => 'External window mining';
  String get external_window_no_windows => 'No capturable windows found';
  String get external_window_none => 'No window bound (tap to select)';
  String get external_window_refresh => 'Refresh window list';
  String get external_window_select => 'Select target window';
  String get external_window_unbind => 'Unbind window';
  String get external_window_unsupported =>
      'External window mining is Windows-only';
  String get failed_online_service =>
      'Failed to communicate with online service';
  String get favorite_added => 'Sentence saved to favorites';
  String get favorite_removed => 'Sentence removed from favorites';
  String favorites({required Object n}) => 'Favorites (${n})';
  String field_fallback_used({
    required Object field,
    required Object secondField,
  }) => 'The ${field} field used ${secondField} as its fallback search term.';
  String file_count({required Object count}) => '${count} files';
  String get floating_dict_close => 'Close';
  String get floating_dict_title => 'Dictionary';
  String get floating_lyric_bg_opacity =>
      'Floating subtitle background opacity';
  String get floating_lyric_button_bg_opacity =>
      'Floating subtitle button background opacity';
  String get floating_lyric_click_lookup => 'Tap floating subtitle to look up';
  String get floating_lyric_click_lookup_hint =>
      'Keep this on with position lock if you still want word lookup.';
  String get floating_lyric_close => 'Close';
  String get floating_lyric_context_lines => 'Floating subtitle context lines';
  String get floating_lyric_context_lines_hint =>
      '0 shows only the current line (single-line, unchanged); set 1-3 to show that many lines before and after it';
  String get floating_lyric_corner_radius => 'Floating subtitle corner radius';
  String get floating_lyric_corner_radius_hint =>
      '0 keeps each platform\'s default corners; raise it to round the bar and buttons more';
  String get floating_lyric_font_size => 'Floating subtitle font size';
  String get floating_lyric_hint =>
      'Float the currently playing subtitle line on top of other apps.';
  String get floating_lyric_lock => 'Lock';
  String get floating_lyric_next => 'Next';
  String get floating_lyric_no_audio => 'This book has no audio to listen to';
  String get floating_lyric_permission_hint =>
      'Overlay permission is required to display floating lyrics.';
  String get floating_lyric_permission_hint_coloros =>
      'If the system keeps refusing the overlay permission: reinstall this app\'s APK once with a file manager, or turn off permission monitoring in Developer options, then try again.';
  String get floating_lyric_play_pause => 'Play';
  String get floating_lyric_previous => 'Previous';
  String get floating_lyric_text_opacity => 'Floating subtitle text opacity';
  String get floating_lyric_toggle_action => 'Floating subtitle';
  String get floating_lyric_topmost => 'Keep on top';
  String get floating_lyric_unavailable_hint =>
      'Could not show the floating subtitle window.';
  String get floating_lyric_unlock => 'Unlock';
  String get floating_lyric_width => 'Floating subtitle width';
  String get floating_lyric_width_hint =>
      '0 uses the platform default width; set a value to make the bar a fixed width';
  String get focus_navigation_enabled => 'Keyboard & gamepad focus navigation';
  String get focus_navigation_enabled_hint =>
      'Move focus with arrow keys or a gamepad and show a focus ring.';
  String get folder_picker_permission_required =>
      'Storage permission is required to browse folders';
  String get follow_audio_off_tooltip => 'Follow audio: OFF';
  String get follow_audio_on_tooltip => 'Follow audio: ON';
  String get font_desc_hina_mincho =>
      'Soft decorative Mincho · Pairs well with Noto Sans JP fallback';
  String get font_desc_klee_one =>
      'Handwritten textbook style · Clear and legible · Pairs well with Noto Sans JP fallback';
  String get font_desc_mplus_rounded_1c =>
      'Rounded cute style · Ideal for light novels · Pairs well with Noto Sans JP fallback';
  String get font_desc_noto_sans_jp =>
      'Google/Adobe Gothic · Japanese glyphs priority · Variable weight';
  String get font_desc_noto_sans_sc =>
      'Google/Adobe Gothic · Simplified Chinese glyphs priority · Use as fallback with Japanese fonts';
  String get font_desc_noto_sans_tc =>
      'Google/Adobe Gothic · Traditional Chinese glyphs priority';
  String get font_desc_noto_serif_jp =>
      'Google/Adobe Serif · Japanese glyphs priority · Ideal for vertical reading';
  String get font_desc_noto_serif_sc =>
      'Google/Adobe Serif · Simplified Chinese glyphs priority · Use as fallback with Japanese fonts';
  String get font_desc_noto_serif_tc =>
      'Google/Adobe Serif · Traditional Chinese glyphs priority · Ideal for vertical reading';
  String get font_desc_shippori_mincho =>
      'Elegant Mincho typeface · Great for literature · Pairs well with Noto Sans JP fallback';
  String get font_desc_zen_kaku_gothic_new =>
      'Modern Kaku Gothic · General reading · Pairs well with Noto Sans JP fallback';
  String get font_desc_zen_maru_gothic =>
      'Soft rounded Gothic · Pairs well with Noto Sans JP fallback';
  String get font_desc_zen_old_mincho =>
      'Vintage Mincho typeface · Classical literature style · Pairs well with Noto Sans JP fallback';
  String get font_source_file => 'File';
  String get font_source_system => 'System';
  String get font_target_app_ui => 'System UI font';
  String get font_target_body => 'Novel text font';
  String get font_target_dictionary => 'Dictionary font';
  String get font_target_game_lookup => 'Game lookup window font';
  String get font_target_video_subtitle => 'Video subtitle font';
  String get gal_card_lookup_independent_size =>
      'Independent in-game card size';
  String get gal_card_lookup_independent_size_hint =>
      'Size the in-game lookup card separately from the desktop overlay card';
  String get gal_card_lookup_max_height => 'In-game card max height';
  String get gal_card_lookup_max_width => 'In-game card max width';
  String get gal_hook_click_lookup => 'Tap a word to look it up';
  String get gal_hook_click_lookup_hint =>
      'Off means clicks on the caption never trigger a lookup — useful with click-through on, when you would rather not hit a word by accident.';
  String get gal_hook_fold_progressive_lines => 'Merge split dialogue lines';
  String get gal_hook_fold_progressive_lines_hint =>
      'Some engines redraw the whole line on every click, so one line is captured several times. Fold those snapshots into a single line.';
  String get gal_hook_ingame_lookup => 'In-game dictionary lookup';
  String get gal_hook_ingame_lookup_engine_unsupported =>
      'This game engine has no in-game lookup sensor yet';
  String get gal_hook_ingame_lookup_exe_hash_copied =>
      'Executable SHA-256 copied';
  String get gal_hook_ingame_lookup_exe_hash_copy =>
      'Copy game executable SHA-256';
  String get gal_hook_ingame_lookup_exe_hash_unavailable =>
      'Could not read the game executable';
  String get gal_hook_ingame_lookup_hint =>
      'Show the dictionary card inside the game window itself (KiriKiri engine, Windows only)';
  String get gal_hook_ingame_lookup_version_unsupported =>
      'This game version is not on the supported list yet';
  String get gal_hook_lookup_trigger => 'Lookup trigger';
  String get gal_hook_lookup_trigger_hint =>
      'Which mouse button looks up the word under the pointer. Independent of the switch above: you can turn tap-lookup off and still look up with a side button.';
  String get gal_hook_lookup_trigger_left => 'Left click';
  String get gal_hook_lookup_trigger_middle => 'Middle click';
  String get gal_hook_lookup_trigger_side => 'Side button';
  String get gal_hook_overlay_legibility_section => 'Window and readability';
  String get gal_hook_passthrough_blocks_mouse =>
      'Caption still catches clicks while clicking through';
  String get gal_hook_passthrough_blocks_mouse_hint =>
      'On: text lines still take clicks so you can tap a word. Off: the whole overlay is transparent to the mouse — you can click whatever is underneath, but tapping words no longer works.';
  String get gal_hook_text_alignment => 'Text alignment';
  String get gal_hook_text_alignment_center => 'Center';
  String get gal_hook_text_alignment_left => 'Left';
  String get gal_hook_text_background_color => 'Window background color';
  String get gal_hook_text_background_opacity => 'Window background opacity';
  String get gal_hook_text_background_opacity_hint =>
      'Set to 0% for a desktop-lyrics style transparent window.';
  String get gal_hook_text_bold => 'Bold text';
  String get gal_hook_text_bold_hint =>
      'Use semibold text for better readability over game graphics.';
  String get gal_hook_text_color => 'Text color';
  String get gal_hook_text_corner_radius => 'Window corner radius';
  String get gal_hook_text_corner_radius_hint =>
      'Adjust the background corner radius.';
  String get gal_hook_text_font => 'Game lookup window font';
  String get gal_hook_text_font_hint =>
      'Choose fonts from the managed font library. The first enabled font is used.';
  String get gal_hook_text_font_size => 'Galgame caption font size';
  String get gal_hook_text_font_size_hint =>
      'Drag the overlay\'s corner to resize the window; the caption size is set here.';
  String get gal_hook_text_letter_spacing => 'Letter spacing';
  String get gal_hook_text_letter_spacing_hint =>
      'Adjust spacing between characters without changing lookup hit testing.';
  String get gal_hook_text_line_height => 'Line height';
  String get gal_hook_text_line_height_hint =>
      'Adjust the vertical spacing of wrapped lines.';
  String get gal_hook_text_outline_color => 'Outline color';
  String get gal_hook_text_outline_width => 'Outline width';
  String get gal_hook_text_outline_width_hint =>
      'Set to 0 to disable the outline; the subtle shadow remains.';
  String get gal_hook_text_padding => 'Horizontal text padding';
  String get gal_hook_text_padding_hint =>
      'Keep text away from the window edges and resize grip.';
  String get gal_hook_text_vertical_alignment => 'Vertical alignment';
  String get gal_hook_text_vertical_alignment_center => 'Center';
  String get gal_hook_text_vertical_alignment_top => 'Top';
  String get gal_hook_toolbar_auto_hide => 'Auto-hide the toolbar';
  String get gal_hook_toolbar_auto_hide_hint =>
      'Hide the toolbar until the pointer reaches the caption box, LunaHook style. Hidden means really hidden — those pixels go back to the game.';
  String get gal_mining_animated_format => 'Game card animation format';
  String get gal_mining_image_mode => 'Galgame card image';
  String get gal_mining_image_mode_screenshot => 'Screenshot';
  String get gal_mining_image_mode_video_clip => 'Video clip';
  String get gal_mining_image_mode_video_clip_hint =>
      'Records the game window from the moment the line appears until you mine the card, mixed with the sentence audio. Falls back to an animated image or screenshot when recording has not started or fewer than 2 frames were captured.';
  String get gal_mining_still_format => 'Game card screenshot format';
  String get game_add => 'Add game';
  String get game_already_added => 'This game is already in the library';
  String get game_attach_and_capture => 'Attach and capture';
  String get game_audio_backend_engine => 'Engine PCM';
  String get game_audio_backend_loopback => 'System loopback (mixed)';
  String get game_audio_backend_none => 'No audio source';
  String get game_audio_backend_resource => 'Game resource audio';
  String get game_audio_duration => 'Audio duration';
  String get game_audio_fallback_clean => 'Clean sources only';
  String get game_audio_fallback_clean_hint =>
      'Uses game resource audio and engine PCM only. Lines with no voice are mined without audio instead of picking up BGM.';
  String get game_audio_fallback_disabled_missing =>
      'No matching game resource audio; fallback is disabled';
  String get game_audio_fallback_full => 'Allow mixed audio';
  String get game_audio_fallback_full_hint =>
      'Falls back to the system mix when no clean voice is captured; the clip may contain BGM and effects.';
  String get game_audio_fallback_policy => 'Audio fallback';
  String get game_audio_fallback_resource => 'Original resources only';
  String get game_audio_fallback_resource_hint =>
      'Requires the original voice file shipped with the game; mining is refused when it is missing.';
  String get game_audio_requires_thread =>
      'The audio capture source may be ready, but sentence audio does not exist until a thread is selected and a line is received.';
  String get game_audio_resource_id => 'Audio resource ID';
  String get game_audio_tracks => 'Active audio tracks';
  String get game_auto_cover => 'Fetch cover automatically';
  String get game_back_to_capture => 'Back to capture workspace';
  String get game_back_to_library => 'Back to game library';
  String get game_capture_active => 'Capture is active';
  String get game_capture_degraded_loopback =>
      'The game is running, but engine injection failed; falling back to system audio, which can mix in BGM and effects.';
  String get game_capture_description =>
      'Launch or attach a game, then monitor text, voice, screenshots and Anki output.';
  String get game_capture_empty_body =>
      'Launch or bind a game; text and sentence-audio status will appear here.';
  String get game_capture_empty_title => 'No lines received yet';
  String get game_capture_launch_failed => 'Game launch or capture failed';
  String get game_capture_launching => 'Launching game and starting capture...';
  String get game_capture_running => 'Capture session is running';
  String get game_capture_setup_hint =>
      'Choose the dialogue thread first. Fushi can only pair audio with lines from the selected thread.';
  String get game_capture_setup_title => 'Complete capture setup';
  String get game_capture_window_missing =>
      'The game process started but its window never appeared, so the game may not have launched. Try starting it again.';
  String get game_capture_workbench => 'Capture workspace';
  String get game_capture_workbench_tab => 'Capture workspace';
  String get game_captured_lines => 'Captured lines';
  String get game_card_mapping_missing =>
      'Anki field mappings are missing game-card tokens';
  String get game_card_sentence_audio_missing =>
      'The card was created without sentence audio; no other line\'s audio was substituted.';
  String get game_clear_events => 'Clear events';
  String get game_cover_not_found =>
      'No usable cover found in the game folder or executable';
  String get game_cover_searching => 'Looking for a cover...';
  String get game_cover_updated => 'Cover updated';
  String get game_dashboard => 'Home';
  String get game_detail_missing => 'This game is no longer in the library';
  String get game_detail_tab_edit => 'Edit';
  String get game_detail_tab_stats => 'Stats';
  String get game_detail_tab_summary => 'Overview';
  String get game_diagnostics => 'Compatibility diagnostics';
  String get game_diagnostics_subtitle =>
      'Session stages, endpoints, audio tracks and structured events';
  String game_drop_imported({required Object count}) =>
      'Added ${count} game(s)';
  String get game_drop_no_exe => 'No new game .exe among the dropped files';
  String get game_edit_developer => 'Developer';
  String get game_edit_display_name => 'Display name';
  String get game_edit_exe_path => 'Executable path';
  String get game_edit_invalid_date => 'Release date must be YYYY-MM-DD';
  String get game_edit_launch_args => 'Launch arguments';
  String get game_edit_launch_args_hint =>
      'Passed to the game on launch, e.g. -windowed';
  String get game_edit_nsfw => 'Adult title';
  String get game_edit_release_date => 'Release date (YYYY-MM-DD)';
  String get game_edit_save => 'Save';
  String get game_edit_saved => 'Saved';
  String get game_edit_summary => 'Description';
  String get game_edit_tags => 'Tags (comma separated)';
  String get game_edit_user_rating => 'My rating (0-10)';
  String get game_edit_user_review => 'My review';
  String get game_edit_workdir => 'Working directory';
  String get game_empty => 'No games added yet';
  String get game_endpoint_phase_connected => 'Connected';
  String get game_endpoint_phase_connecting => 'Connecting';
  String get game_endpoint_phase_retrying => 'Retrying';
  String get game_endpoint_phase_stopped => 'Stopped';
  String get game_endpoints_engine_active =>
      'Text is provided by the engine hook; these endpoints are optional';
  String get game_endpoints_hint =>
      'Ports for external text tools (Textractor / LunaTranslator etc.); ignore if you don\'t use them';
  String get game_event_all => 'All events';
  String get game_event_warnings => 'Warnings and errors';
  String get game_exe_missing => 'Game executable not found';
  String get game_filter => 'Filter';
  String get game_filter_all => 'All';
  String get game_filter_favorited => 'Favorited';
  String get game_filter_hide_nsfw => 'Hide adult titles';
  String get game_filter_local_only => 'Has local file';
  String get game_filter_metadata_only => 'Metadata only';
  String get game_filter_mined => 'Mined';
  String get game_filter_reset => 'Clear filters';
  String get game_filter_source => 'Availability';
  String get game_filter_status => 'Play status';
  String get game_filter_tags => 'Tags';
  String get game_filter_with_audio => 'With audio';
  String get game_focus_continue => 'Continue';
  String get game_follow_live => 'Follow live';
  String get game_health => 'Health status';
  String get game_health_anki => 'Anki output';
  String get game_health_audio => 'Audio source';
  String get game_health_helper => 'Hook helper';
  String get game_health_process => 'Game process';
  String get game_health_text => 'Text source';
  String get game_health_upscaling => 'Window upscaling';
  String get game_health_window => 'Game window';
  String get game_helper_bundle_missing =>
      'The galgame hook helper is not bundled with this build. Update Fushi to get it.';
  String get game_helper_download => 'Download';
  String game_helper_download_failed({required Object error}) =>
      'Engine component download failed: ${error}';
  String get game_helper_downloading => 'Downloading engine component…';
  String get game_helper_install_incomplete =>
      'Engine component install incomplete, please retry';
  String game_helper_needed_body({required Object size}) =>
      'Launching a galgame needs the engine-hook injector component (about ${size}). It contains process-injection code and ships separately from the app to avoid antivirus false positives. Download it now?';
  String get game_helper_needed_title => 'Galgame engine component required';
  String get game_helper_size_unknown => 'unknown size';
  String get game_helper_verification_failed =>
      'Engine component blocked: its checksum could not be verified (the .sha256 file from GitHub is unreachable, missing, or does not match). Fushi refuses to install unverified injector code.';
  String get game_home_subtitle => 'Game library and capture monitoring';
  String get game_hook_btn_close => 'Close the overlay';
  String get game_hook_btn_follow => 'Follow new lines';
  String get game_hook_btn_lock => 'Lock the position';
  String get game_hook_btn_passthrough => 'Click through to the game';
  String get game_hook_btn_recapture => 'Recapture the voice';
  String get game_hook_btn_replay => 'Replay this line\'s voice';
  String get game_hook_btn_topmost => 'Keep on top';
  String get game_hook_btn_transparency => 'Toggle the background';
  String get game_hook_btn_workbench => 'Open the capture workbench';
  String get game_hook_code_label => 'Label (optional)';
  String get game_hook_code_paste_body =>
      'The code is bound to the currently running game\'s executable, so Fushi can reuse it next time.';
  String get game_hook_code_paste_hint =>
      'Paste the raw code, e.g. /HQN4@4CE90:game.exe';
  String get game_hook_code_paste_invalid =>
      'That does not look like a hook code';
  String get game_hook_code_paste_saved => 'Hook code saved for this game';
  String get game_hook_code_paste_title => 'Paste a hook code';
  String get game_hook_fallback_all_audio_sources_failed =>
      'Neither the engine voice hook nor the system loopback could be started; no audio can be captured.';
  String get game_hook_fallback_engine_attach_failed =>
      'Attaching the engine voice hook to the running game failed; system mix is used instead.';
  String get game_hook_fallback_engine_pcm_unavailable =>
      'The engine voice hook is installed, but the game has not played any voice yet. System mix is used for now and will switch back automatically once the first voice arrives.';
  String get game_hook_fallback_launch_injection_failed =>
      'The game is running, but early engine injection failed; system mix is used instead.';
  String get game_hook_fallback_window_not_found =>
      'Audio capture is running, but the game window has not appeared yet, so screenshots are unavailable. It will bind automatically once the window shows up.';
  String get game_hook_line_unavailable =>
      'This captured line is no longer available.';
  String get game_hook_mining_no_session_lines =>
      'No captured lines yet, so there is nothing to attach this card to. Pick a different text thread in the workbench.';
  String get game_hook_reason_access_denied =>
      'The game runs with higher privileges; start Fushi as administrator and try again.';
  String get game_hook_reason_bitness_mismatch =>
      'Helper architecture does not match the game (32-bit vs 64-bit); reinstall the helper.';
  String get game_hook_reason_capability_probe_failed =>
      'The capture component did not answer the capability check. It was found on disk but could not run or did not respond in time - antivirus may be blocking it, Fushi may lack permission to launch it, or a leftover helper process may be stuck. Close every game, check your antivirus quarantine, then try again.';
  String get game_hook_reason_create_process_failed =>
      'The game could not be started from Fushi; check the executable path.';
  String get game_hook_reason_elevation_required =>
      'This game requires administrator rights; start Fushi as administrator and launch it again.';
  String get game_hook_reason_game_exe_missing =>
      'The game executable no longer exists at the saved path.';
  String get game_hook_reason_guarded_hook_failed =>
      'A profile-guarded hook could not be installed in time; retrying automatically.';
  String get game_hook_reason_handshake_timeout =>
      'The game was hooked but produced no text or audio in time; this engine may not be supported yet.';
  String get game_hook_reason_helper_missing =>
      'Voice-hook helper is not installed for this game architecture; install it and try again.';
  String get game_hook_reason_hook_dll_missing =>
      'The helper package is incomplete (hook library missing); reinstall it.';
  String get game_hook_reason_injection_failed =>
      'Injection into the game was blocked; add Fushi and the game to antivirus exclusions.';
  String get game_hook_reason_native_loopback_ack_timeout =>
      'The audio capture policy was not confirmed in time. Text capture still works; try again if game audio is missing.';
  String get game_hook_reason_protocol_mismatch =>
      'The capture component does not match this Fushi build. It ships inside Fushi, so there is nothing to install separately. First, fully close the game and launch it again: the game process may still hold the component injected by an earlier session. If it still mismatches, the component files on disk are older than Fushi, because the last Fushi update could not replace them while a game was running. Close every game, then run the Fushi installer again.';
  String get game_hook_reason_ready_timeout =>
      'The hook library did not finish loading in time; antivirus scanning can cause this.';
  String get game_hook_reason_resident_hook_mismatch =>
      'A previous capture session is still loaded in the game; restart the game once.';
  String get game_hook_reason_resume_failed =>
      'The launched game could not be resumed and was stopped; launch it again.';
  String get game_hook_reason_shared_memory_unavailable =>
      'The capture channel could not be opened; restart Fushi.';
  String get game_hook_reason_spawn_failed =>
      'The helper could not be started; check that antivirus has not removed or blocked it.';
  String get game_hook_reason_stale_session =>
      'A previous capture session has not been released yet; Fushi is retrying on its own, no action needed.';
  String get game_hook_reason_steam_timeout =>
      'Steam accepted the launch request but the game process never appeared.';
  String get game_hook_reason_target_missing =>
      'No game process or executable was selected for capture.';
  String get game_hook_recapture_empty =>
      'No audio captured in the recapture window';
  String get game_hook_recapture_saved => 'Recaptured voice saved to this line';
  String get game_hook_recapture_started =>
      'Recording — replay this line in the game';
  String get game_hook_recapture_unavailable =>
      'Voice recapture needs system loopback audio';
  String get game_import_drop_hint =>
      'You can also drag .exe files into the game library';
  String get game_japanese_locale => 'Japanese locale';
  String get game_japanese_locale_auto => 'Auto';
  String get game_japanese_locale_evidence_dir_file_name_chinese_patch =>
      'File names mark a Chinese patch';
  String get game_japanese_locale_evidence_dir_file_name_japanese =>
      'File names contain kana';
  String get game_japanese_locale_evidence_dir_text_gbk => 'Text files are GBK';
  String get game_japanese_locale_evidence_dir_text_shift_jis =>
      'Text files are Shift-JIS';
  String get game_japanese_locale_evidence_dir_text_simplified_hanzi =>
      'Text files contain Simplified Chinese';
  String get game_japanese_locale_evidence_exe_shift_jis_strings =>
      'Executable contains Shift-JIS strings';
  String get game_japanese_locale_evidence_manifest_utf8_code_page =>
      'Manifest declares a UTF-8 code page';
  String get game_japanese_locale_evidence_user_language_japanese =>
      'Content language is Japanese';
  String get game_japanese_locale_evidence_user_language_other =>
      'Content language is not Japanese';
  String get game_japanese_locale_evidence_version_info_chinese =>
      'Version resource is Chinese';
  String get game_japanese_locale_evidence_version_info_japanese =>
      'Version resource is Japanese';
  String get game_japanese_locale_hint =>
      'Chinese/English patched builds must turn this off, or the game crashes on launch';
  String get game_japanese_locale_off => 'Off';
  String get game_japanese_locale_on => 'Always on';
  String get game_kpi_total_games => 'Games';
  String get game_kpi_week => 'This week';
  String get game_latest_line => 'Latest line';
  String get game_launch => 'Launch';
  String get game_launch_and_capture => 'Launch and capture';
  String get game_launch_unsupported =>
      'Launching games is only supported on Windows';
  String get game_library => 'Game library';
  String get game_library_download_queued => 'Queued';
  String get game_library_download_retrying => 'Retrying';
  String get game_library_downloading => 'Downloading';
  String get game_line_audio_encoded => 'Audio extracted';
  String get game_line_audio_fallback => 'Fallback';
  String get game_line_audio_loopback_hint =>
      'System-mix fallback; may include BGM';
  String get game_line_audio_matched => 'Audio ready';
  String get game_line_audio_missing => 'No audio';
  String get game_line_audio_no_voice => 'No voice';
  String get game_line_audio_overlong => 'Overlong clip';
  String get game_line_audio_overlong_hint =>
      'Far longer than a single line; may include BGM or other mixed audio';
  String get game_line_audio_pending => 'Matching';
  String get game_line_audio_suppressed => 'Mix skipped';
  String get game_line_audio_suppressed_hint =>
      'No clean audio source produced audio for this line, and the system mix was skipped by your audio fallback policy. This does not mean the line has no voice.';
  String get game_line_audio_unavailable => 'Text only';
  String get game_line_copy_tooltip => 'Copy sentence';
  String get game_line_favorite_tooltip => 'Favorite this line';
  String get game_line_mined => 'Mined';
  String get game_line_preview_failed => 'No playable audio for this line';
  String get game_line_preview_tooltip => 'Play this line\'s audio';
  String get game_line_recapture => 'Recapture voice';
  String get game_line_recapture_stop => 'Finish recapture';
  String get game_line_track_applied => 'Voice track applied to this line';
  String get game_line_track_dialog_title => 'Voice track for this line';
  String get game_line_track_failed =>
      'That track has no audio around this line';
  String get game_line_track_tooltip => 'Pick the voice track for this line';
  String get game_line_track_use => 'Use for this line';
  String get game_line_tracks => 'Tracks for this line';
  String get game_line_tracks_hint =>
      'Preview each track at this line\'s moment, then exclude the BGM ones';
  String get game_line_unfavorite_tooltip => 'Remove favorite';
  String get game_live_lines => 'Live lines';
  String get game_lookup_attached_align_bottom => 'Bottom';
  String get game_lookup_attached_align_center => 'Center';
  String get game_lookup_attached_align_left => 'Left';
  String get game_lookup_attached_align_right => 'Right';
  String get game_lookup_attached_align_top => 'Top';
  String get game_lookup_attached_body_rect => 'Body rectangle';
  String get game_lookup_attached_calibrate => 'Calibrate';
  String get game_lookup_attached_calibration_commit => 'Save calibration';
  String get game_lookup_attached_calibration_failed =>
      'Calibration was not applied. Check the body text, target window, and all three probes.';
  String get game_lookup_attached_calibration_short_text =>
      'At least three characters are required for calibration probes.';
  String get game_lookup_attached_calibration_title => 'Calibrate body text';
  String get game_lookup_attached_font_family => 'Font family';
  String get game_lookup_attached_font_size => 'Font size / client height';
  String get game_lookup_attached_height => 'Height';
  String get game_lookup_attached_left => 'Left';
  String get game_lookup_attached_letter_spacing =>
      'Letter spacing / client height';
  String get game_lookup_attached_line_height => 'Line height';
  String get game_lookup_attached_mode => 'Mode';
  String get game_lookup_attached_mode_attached_only => 'Calibrated layer only';
  String get game_lookup_attached_mode_auto => 'Auto';
  String get game_lookup_attached_mode_native_only => 'Native only';
  String get game_lookup_attached_mode_off => 'Off';
  String get game_lookup_attached_native_status => 'Native';
  String get game_lookup_attached_no_ocr =>
      'No OCR · horizontal body text only';
  String get game_lookup_attached_preview => 'Current body text preview';
  String get game_lookup_attached_probe_end => 'Last glyph';
  String get game_lookup_attached_probe_middle => 'Middle glyph';
  String get game_lookup_attached_probe_start => 'First glyph';
  String get game_lookup_attached_probe_waiting =>
      'Waiting for matching in-game click';
  String get game_lookup_attached_probes_hint =>
      'Click the first, middle, and last highlighted glyphs in the game, then confirm each character below.';
  String get game_lookup_attached_profile => 'Profile';
  String get game_lookup_attached_profile_clear => 'Clear profile';
  String get game_lookup_attached_profile_clear_body =>
      'The saved rectangle, text layout, and executable-specific click authorization will be removed.';
  String get game_lookup_attached_profile_clear_title =>
      'Clear lookup profile?';
  String get game_lookup_attached_profile_missing => 'Not calibrated';
  String get game_lookup_attached_profile_ready => 'Calibrated';
  String get game_lookup_attached_provider => 'Provider';
  String get game_lookup_attached_provider_unknown => 'Not reported';
  String get game_lookup_attached_risk => 'Click risk';
  String get game_lookup_attached_risk_accept => 'Accept click risk';
  String get game_lookup_attached_risk_active =>
      'Risk accepted · may double-trigger';
  String get game_lookup_attached_risk_body =>
      'The input shield is not verified for this executable. Clicking a glyph may also advance dialogue or trigger a choice. This authorization is stored only for the current executable hash and is revoked after an update.';
  String get game_lookup_attached_risk_pending => 'Confirmation required';
  String get game_lookup_attached_risk_safe => 'Not authorized';
  String get game_lookup_attached_risk_title => 'Confirm raw-click risk';
  String get game_lookup_attached_shield => 'Input shield';
  String get game_lookup_attached_shield_faulted => 'Faulted';
  String get game_lookup_attached_shield_known_uncovered => 'Known uncovered';
  String get game_lookup_attached_shield_partial => 'Partial';
  String get game_lookup_attached_shield_unknown => 'Unknown';
  String get game_lookup_attached_shield_verified => 'Verified';
  String get game_lookup_attached_status => 'State';
  String get game_lookup_attached_text_align => 'Horizontal alignment';
  String get game_lookup_attached_thread_required =>
      'Select one body-text thread before calibration.';
  String get game_lookup_attached_title => 'In-game lookup';
  String get game_lookup_attached_top => 'Top';
  String get game_lookup_attached_vertical_align => 'Vertical alignment';
  String get game_lookup_attached_width => 'Width';
  String get game_manage_tracks => 'Manage audio tracks';
  String get game_meta_added => 'Added';
  String get game_meta_ranking => 'Ranking';
  String get game_meta_source => 'Data source';
  String get game_never_played => 'Never played';
  String get game_no_active_line =>
      'Select a line to inspect its sentence-audio state.';
  String get game_no_events => 'No session events yet';
  String get game_no_match => 'No games match the current filters';
  String get game_no_tracks => 'No audio-track data yet';
  String get game_open_capture_workspace => 'Open capture workspace';
  String get game_phase_attaching => 'Attaching';
  String get game_phase_degraded => 'Degraded';
  String get game_phase_error => 'Error';
  String get game_phase_idle => 'Idle';
  String get game_phase_injecting => 'Injecting';
  String get game_phase_launching => 'Launching';
  String get game_phase_resolving => 'Resolving';
  String get game_phase_running => 'Running';
  String get game_phase_stopping => 'Stopping';
  String get game_phase_waiting_signals => 'Waiting for signals';
  String get game_pipeline => 'Session pipeline';
  String get game_play_status => 'Play status';
  String get game_random_reroll => 'Shuffle';
  String get game_random_title => 'Pick for me';
  String get game_recently_played => 'Recently played';
  String get game_refresh_tracks => 'Refresh tracks';
  String get game_remove => 'Remove';
  String get game_remove_confirm =>
      'Remove this game from the library? Game files on disk will not be deleted.';
  String get game_rename => 'Rename';
  String get game_rename_label => 'Game name';
  String get game_scrape => 'Fetch metadata';
  String get game_scrape_applied => 'Metadata updated';
  String get game_scrape_failed => 'Metadata fetch failed';
  String get game_scrape_no_result => 'No matching entry found';
  String get game_scrape_query => 'Title or source ID';
  String get game_scrape_search => 'Search';
  String get game_scrape_search_failed =>
      'Search failed. Check your network and try again.';
  String get game_scrape_use => 'Use';
  String get game_search => 'Search games';
  String get game_session_events => 'Session events';
  String get game_session_idle => 'Capture has not started';
  String get game_session_japanese_locale => 'Japanese locale';
  String game_session_japanese_locale_evidence({required Object evidence}) =>
      'Evidence: ${evidence}';
  String get game_session_japanese_locale_evidence_insufficient =>
      'insufficient evidence';
  String get game_session_japanese_locale_hint =>
      'The game was started under a Japanese (CP932) locale. If its text looks garbled or a script error appears, set this game\'s Japanese locale to Never.';
  String get game_session_japanese_locale_skipped => 'Locale not applied';
  String game_session_japanese_locale_skipped_hint({
    required Object evidence,
  }) =>
      'The game was started without a Japanese locale (auto verdict: ${evidence}). If its text looks garbled, set this game\'s Japanese locale to Always on.';
  String get game_session_japanese_locale_skipped_hint_not_32bit =>
      'The game was started without a Japanese locale: the auto verdict says it needs one, but Locale Emulator only supports 32-bit games.';
  String get game_session_japanese_locale_skipped_hint_system_japanese =>
      'The game was started without a Japanese locale: this system already uses the Japanese (CP932) code page, so nothing needs to change.';
  String get game_session_listening => 'Listening';
  String get game_session_waiting_thread => 'Waiting for a dialogue thread';
  String get game_set_cover => 'Set cover';
  String get game_show_hook_text_window => 'Show Hook text window';
  String get game_site_score => 'Site rating';
  String get game_sort => 'Sort';
  String get game_sort_added => 'Date added';
  String get game_sort_last_played => 'Last played';
  String get game_sort_name => 'Name';
  String get game_sort_release => 'Release date';
  String get game_sort_site_score => 'Site rating';
  String get game_sort_user_rating => 'My rating';
  String get game_stat_by_game => 'By game';
  String get game_stat_daily => 'Daily play time';
  String get game_stat_delete_session => 'Delete this session';
  String get game_stat_last_played => 'Last played';
  String get game_stat_no_sessions => 'No play sessions recorded yet';
  String get game_stat_session_list => 'Session history';
  String get game_stat_sessions => 'Sessions';
  String get game_stat_today => 'Today\'s play time';
  String get game_stat_total_time => 'Total play time';
  String get game_statistics => 'Game statistics';
  String get game_status_dropped => 'Dropped';
  String get game_status_not_configured => 'Not verified';
  String get game_status_on_hold => 'On hold';
  String get game_status_played => 'Played';
  String get game_status_playing => 'Playing';
  String get game_status_ready => 'Ready';
  String get game_status_unset => 'Not set';
  String get game_status_waiting => 'Waiting';
  String get game_status_want_to_play => 'Want to play';
  String get game_stop_listening => 'Stop listeners';
  String get game_summary_aliases => 'Aliases';
  String get game_summary_all_titles => 'All titles';
  String get game_summary_average_hours => 'Average play time';
  String get game_summary_none =>
      'No description yet. Fetch metadata to fill it in.';
  String get game_summary_release_date => 'Release date';
  String get game_tags_clear => 'Clear selection';
  String get game_tags_title => 'Game tags';
  String get game_text_endpoints => 'Text endpoints';
  String get game_text_gaps => 'Sequence gaps';
  String get game_text_gaps_hint =>
      'Sequence gaps = dropped-line count in the hook text ring; 0 is normal';
  String get game_text_source_engine => 'Engine hook';
  String get game_text_source_unknown => 'Unknown source';
  String get game_text_source_websocket => 'WebSocket';
  String get game_text_thread => 'Text thread';
  String get game_text_thread_artifact_hint =>
      'Repeated-character artifact thread, no usable lines';
  String game_text_thread_audio_count({required Object count}) =>
      '${count} with audio';
  String get game_text_thread_hint =>
      'Choose the clean dialogue thread, like Luna Translator';
  String get game_text_thread_unset =>
      'No thread selected — pick one to start capturing';
  String get game_track_auto => 'Automatic selection';
  String get game_track_bgm => 'BGM / excluded';
  String get game_track_clips => 'Clips';
  String get game_track_energy => 'Energy';
  String get game_track_exclude_bgm => 'Mark as BGM';
  String get game_track_exclusion_hint =>
      'Mark a BGM/ambience track as excluded so auto-selection never treats it as voice — lines without speech no longer pick up BGM.';
  String get game_track_exclusion_title => 'Exclude audio tracks';
  String get game_track_preview => 'Preview this track';
  String get game_track_preview_failed =>
      'No recent audio could be captured from this track';
  String get game_track_preview_stop => 'Stop preview';
  String get game_track_restore => 'Restore track';
  String get game_track_select_as_voice => 'Use as voice track';
  String get game_track_select_requires_engine =>
      'Track selection requires an active engine hook session';
  String get game_track_silent_at_cue => 'No sound at this line';
  String get game_track_voice => 'Voice';
  String get game_tracks_loopback_hint =>
      'System loopback captures the whole system\'s mixed output as a single stream; per-track enumeration is not available.';
  String get game_tracks_pcm_only_hint =>
      'Per-track selection only affects capture while engine PCM is the active audio backend. The list below is read-only under the current backend.';
  String get game_tracks_resource_mode_hint =>
      'In game-resource audio mode, each voice line is extracted directly from game files, so no PCM track list exists here. Automatic or manual track selection only applies to engine PCM capture.';
  String get game_unread_lines => 'Unread';
  String get game_upscaling => 'Game window upscaling';
  String get game_upscaling_auto => 'Auto';
  String get game_upscaling_auto_hint =>
      'Use Magpie if it is already running; otherwise use the version bundled with Fushi. No download is needed.';
  String get game_upscaling_error_bundle_invalid =>
      'The bundled Magpie component is corrupted or did not pass verification. Reinstall or update Fushi.';
  String get game_upscaling_error_bundle_missing =>
      'Fushi installation is incomplete: the bundled Magpie component is missing. Reinstall or update Fushi.';
  String get game_upscaling_hint_external =>
      'A copy of Magpie was already running, so Fushi left it alone. Press Win+Shift+A to upscale the game window.';
  String get game_upscaling_hint_first_run =>
      'Magpie still had to set itself up this time. Press Win+Shift+A to upscale now — next time you start the game it will happen automatically.';
  String get game_upscaling_hint_manual =>
      'Press Win+Shift+A to upscale the game window.';
  String get game_upscaling_hint_not_installed =>
      'Magpie is not ready. Set window upscaling to Auto to use the copy bundled with Fushi; if it still does not start, update or reinstall Fushi.';
  String get game_upscaling_installed_only => 'Installed only';
  String get game_upscaling_installed_only_hint =>
      'Only use Magpie if it is already installed or running. Do not unpack Fushi\'s bundled version.';
  String get game_upscaling_off => 'Off';
  String get game_upscaling_off_hint => 'Never upscale the game window.';
  String get game_upscaling_pick_body =>
      'Upscales this game window with Magpie while a capture session is running. Set per game - it only helps for games whose native resolution is lower than your screen. Uses your GPU.';
  String game_upscaling_pick_title({required Object name}) =>
      'Window upscaling for ${name}';
  String get game_upscaling_status_active => 'Window upscaling is on';
  String get game_upscaling_status_failed => 'Window upscaling could not start';
  String get game_upscaling_status_manual =>
      'Window upscaling is ready, but did not start on its own';
  String get game_upscaling_status_unavailable =>
      'Window upscaling is not available';
  String get game_user_rating => 'My rating';
  String get game_user_tags_title => 'My tags';
  String get game_view_detail => 'View details';
  String get game_waiting_for_text => 'Waiting for text';
  String game_waveform_range_label({
    required Object start,
    required Object end,
    required Object duration,
    required Object total,
  }) => '${start} - ${end} (selected ${duration} / total ${total})';
  String get game_waveform_select_title => 'Select audio range';
  String get game_window_bound => 'Bound';
  String get game_window_missing => 'Not bound';
  String get games => 'Games';
  String get global_context_capture => 'Capture selection context';
  String get global_context_capture_hint =>
      'Read surrounding text from the foreground app to show the current sentence (Windows only)';
  String go_to_chapter({required Object n}) => 'Chapter ${n}';
  String get handlebar_audio => 'Audio';
  String get handlebar_book_cover => 'Book cover';
  String get handlebar_card_image => 'Card image (cover / GIF)';
  String get handlebar_clip_timestamp => 'Clip timestamp';
  String get handlebar_cue_sentence => 'Cue sentence';
  String handlebar_deprecated_label({required Object label}) =>
      '${label} (deprecated)';
  String get handlebar_document_title => 'Document title';
  String get handlebar_expression => 'Expression';
  String get handlebar_frequencies => 'Frequencies (HTML)';
  String get handlebar_frequency_harmonic_rank => 'Frequency (rank)';
  String get handlebar_furigana_plain => 'Furigana';
  String get handlebar_glossary => 'Glossary';
  String get handlebar_glossary_first => 'Glossary (first)';
  String get handlebar_phonetic_transcriptions => 'Phonetic transcriptions';
  String get handlebar_pitch_accent_categories => 'Pitch categories';
  String get handlebar_pitch_accent_positions => 'Pitch positions';
  String get handlebar_popup_selection_text => 'Popup selection text';
  String get handlebar_reading => 'Reading';
  String get handlebar_selected_glossary => 'Selected glossary';
  String get handlebar_sentence => 'Sentence';
  String get handlebar_sentence_audio => 'Sentence audio';
  String get handlebar_video_clip => 'Video clip (GIF)';
  String get harmonic_frequency => 'Aggregate word frequencies';
  String health_match_summary({required Object pct}) => 'Match ${pct}%';
  String get highlight_on_tap => 'Highlight text on tap';
  String get home_activity => 'Activity';
  String get home_activity_empty => 'No activity yet';
  String get home_continue => 'Continue';
  String get home_filter_added => 'Added';
  String get home_filter_all => 'All';
  String get home_filter_game => 'Game';
  String get home_filter_read => 'Read';
  String get home_filter_watch => 'Watch';
  String get home_recently_added => 'Recently added';
  String get home_remote_source => 'Remote';
  String home_session_count({required Object n}) => '${n} sessions';
  String get home_today => 'Today';
  String get home_yesterday => 'Yesterday';
  String get hover_auto_lookup => 'Look up on hover';
  String get hover_auto_lookup_hint =>
      'Look up automatically when the mouse hovers over a character; no need to click or hold Shift. Triggers at most one popup layer. Desktop only.';
  String get icon_custom => 'Custom';
  String get icon_custom_confirm_body =>
      'This will create a home screen shortcut with your chosen image. Continue?';
  String get icon_custom_confirm_title => 'Custom icon';
  String get icon_custom_hint =>
      'Tap an icon to switch, or pick a custom image below.';
  String get icon_default => 'Default';
  String get icon_shortcut_created => 'Home screen shortcut created.';
  String get icon_shortcut_unsupported =>
      'Shortcuts are not supported on this device.';
  String get icon_switch_success => 'App icon changed successfully.';
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  String get image_pause => 'Pause on image';
  String get image_pause_hint =>
      'Auto-pause when an image appears during playback.';
  String get image_pause_off => 'Off';
  String get image_search_label_after => 'found for';
  String get image_search_label_before => 'Selecting image ';
  String get image_search_label_middle => 'out of ';
  String get image_search_label_none_before => 'Selecting ';
  String get image_search_label_none_middle => 'no image ';
  String get import_complete => 'Dictionary import complete.';
  String import_duplicate({required Object name}) =>
      'A dictionary with the name『${name}』is already imported.';
  String get import_extract => 'Extracting files...';
  String get import_failed => 'Dictionary import failed.';
  String get import_in_progress => 'Import in progress';
  String import_name({required Object name}) => 'Importing 『${name}』...';
  String import_sidecar_audio({required Object count}) =>
      'Auto-attached ${count} audio file(s)';
  String import_sidecar_subtitle({required Object name}) =>
      'Auto-attached subtitle: ${name}';
  String get import_start => 'Preparing for import...';
  String get import_step_building_epub => 'Building EPUB…';
  String get import_step_converting_epub => 'Converting to EPUB…';
  String import_step_copying_file({required Object name}) => 'Copying ${name}…';
  String get import_step_done => 'Done';
  String get import_step_importing_epub => 'Importing EPUB…';
  String get import_step_matching => 'Audio alignment…';
  String get import_step_parsing => 'Parsing subtitles…';
  String get import_step_persisting => 'Saving files…';
  String get import_step_reading => 'Reading file…';
  String get import_step_reading_idb => 'Reading book info…';
  String get import_step_saving => 'Saving records…';
  String get import_theme => 'Import theme';
  String get import_theme_hint => 'Paste theme code';
  String get import_theme_invalid => 'Invalid theme code';
  String get import_theme_success => 'Theme imported';
  String import_unsupported_file_format({required Object ext}) =>
      'Unsupported file format: ${ext}';
  String get increase => 'Increase';
  String get info_empty_home_tab => 'History is empty';
  String init_error_message({required Object error}) =>
      'Initialization failed: ${error}';
  String get initialization_failed => 'Initialisation failed';
  String get interconnect_backup_backend =>
      'Use interconnect as the backup backend';
  String get interconnect_backup_backend_active =>
      'Backups already go to the Fushi Interconnect server. Pick another backend in Sync & backup to switch away.';
  String get interconnect_backup_backend_apply => 'Set as backup backend';
  String interconnect_backup_backend_current({required Object backend}) =>
      'Current backup backend: ${backend}';
  String get interconnect_backup_backend_hint =>
      'Back up and sync to the Fushi Interconnect server instead of a cloud drive. Everything the upload switches above allow is what gets written there.';
  String get interconnect_backup_backend_needs_pairing =>
      'Connect to a device above first.';
  String get interconnect_devices_hint =>
      'Peer addresses, pairing and LAN discovery';
  String get interconnect_devices_page => 'Pairing & devices';
  String interconnect_devices_paired_count({required Object n}) =>
      'Paired devices: ${n}';
  String get interconnect_enable => 'Enable interconnect';
  String get interconnect_enable_footer =>
      'How to use: on the device that holds your library, turn on the sync server switch below; on your other device, add the address of that server to pair with it. A device can act as only one role at a time — server or client.';
  String get interconnect_enable_hint =>
      'Connect to your other devices over the LAN. Works alongside a cloud backup backend — they don\'t conflict.';
  String get interconnect_host_hint =>
      'Port, TLS, access token and paired devices';
  String get interconnect_host_off => 'Off';
  String get interconnect_host_page => 'Host service';
  String interconnect_host_running({required Object port}) =>
      'Running on port ${port}';
  String get interconnect_moved_note =>
      'Connection & server settings are in the Fushi Interconnect category';
  String get interconnect_peer_list_empty =>
      'No peers added yet. Pick a discovered device from the LAN device list below to pair automatically, or add a peer address manually.';
  String get interconnect_peer_list_title => 'Added peers';
  String get interconnect_profile_download =>
      'Download configuration from host';
  String get interconnect_profile_download_desc =>
      'Import the host\'s active configuration as a new configuration here. Your current one is untouched.';
  String interconnect_profile_downloaded({required Object name}) =>
      'Configuration imported: ${name}';
  String interconnect_profile_failed({required Object message}) =>
      'Configuration transfer failed: ${message}';
  String get interconnect_profile_host_toggle =>
      'Allow paired devices to read/write configuration';
  String get interconnect_profile_host_toggle_desc =>
      'Off by default. Requires HTTPS and a paired-device token. Incoming configurations are always added as new ones.';
  String get interconnect_profile_section => 'Configuration file';
  String get interconnect_profile_unsupported =>
      'The paired host does not offer configuration transfer (needs HTTPS and a newer version).';
  String get interconnect_profile_upload => 'Upload configuration to host';
  String get interconnect_profile_upload_desc =>
      'Send this device\'s active configuration to the paired host, where it lands as a new configuration.';
  String interconnect_profile_uploaded({required Object name}) =>
      'Configuration uploaded: ${name}';
  String get interconnect_related_entry =>
      'Remote lookup, audio sources & remote entries';
  String get interconnect_related_entry_hint =>
      'Configured in the Lookup and Sync categories';
  String get interconnect_section_client => 'Connect to other devices';
  String get interconnect_section_delegate =>
      'Delegate to the Fushi Interconnect server';
  String get interconnect_section_related => 'Remote content & lookup';
  String get interconnect_share_favorites => 'Share favorites';
  String get interconnect_share_favorites_hint =>
      'Favorite words and sentences, including un-favoriting';
  String get interconnect_share_section => 'Share with paired devices';
  String get interconnect_share_section_footer =>
      'These are merged both ways with the paired device and are on by default. Turning one off stops both sending and receiving it.';
  String get interconnect_share_statistics => 'Share statistics';
  String get interconnect_share_statistics_hint =>
      'Reading and watching time, character counts, lookup and mining counters';
  String get interconnect_summary =>
      'Direct device-to-device sync & host this device as a server';
  String get interconnect_upload_audiobook_files => 'Upload audiobook files';
  String get interconnect_upload_audiobook_files_hint =>
      'Sync this device\'s audiobook audio and subtitle packages up to the interconnect peer (large).';
  String get interconnect_upload_content => 'Upload book files';
  String get interconnect_upload_content_hint =>
      'Sync this device\'s books and reading content up to the interconnect peer.';
  String get interconnect_upload_dictionary => 'Upload dictionaries';
  String get interconnect_upload_dictionary_hint =>
      'Sync this device\'s dictionaries up to the interconnect peer.';
  String get interconnect_upload_section => 'Upload to interconnect peer';
  String get interconnect_upload_section_footer =>
      'Choose what this device uploads to the connected peer. Independent from the cloud backup switches and off by default. These switches only apply while Enable interconnect is on: turning interconnect off stops every upload here.';
  String get interconnect_upload_video_files => 'Upload video files';
  String get interconnect_upload_video_files_hint =>
      'Sync this device\'s local video files up to the interconnect peer (large).';
  String get invert_audiobook_skip_direction =>
      'Invert bottom-bar skip buttons';
  String get invert_swipe_direction => 'Invert swipe page turn direction';
  String get invert_volume_buttons => 'Invert volume buttons';
  String get jellyfin_auto_list_hint =>
      'Off: entering the video page sends no request to the media server; pull to refresh in the video library to list items manually. Recommended for very large servers, where automatic enumeration looks like scraping and can trip abuse detection.';
  String get jellyfin_auto_list_title => 'Auto-list items on entering Video';
  String get jellyfin_libraries_hint =>
      'Select nothing to list every video library. Narrowing to the libraries you actually watch keeps huge servers from being enumerated in full.';
  String get jellyfin_libraries_load_failed =>
      'Could not load the library list';
  String get jellyfin_libraries_title => 'Libraries to list';
  String get jellyfin_server_url => 'Server URL';
  String get jellyfin_settings_hint =>
      'Videos on the server show up in the video library and stream directly.';
  String get jellyfin_settings_title => 'Media server (Jellyfin / Emby)';
  String get jellyfin_sign_in => 'Sign in';
  String get jellyfin_sign_in_failed => 'Sign-in failed';
  String get jellyfin_sign_out => 'Sign out';
  String get jump_to_char => 'Jump to character';
  String jump_to_char_current({
    required Object current,
    required Object total,
  }) => 'Current: ${current} / ${total}';
  String get jump_to_char_hint => 'Enter character position…';
  String get keep_screen_awake => 'Keep screen awake';
  String get library_empty_go_import => 'Go to import';
  String get library_search => 'Search library';
  String get library_view_browse => 'Discover';
  String get library_view_discover => 'Discover';
  String get library_view_import => 'Import';
  String get library_view_media => 'Library';
  String get library_view_shelf => 'Shelf';
  String get library_view_sources => 'Sources';
  String get loading_illustrations => 'Loading illustrations…';
  String get loading_slow_message =>
      'If your data storage location is on a network or removable drive that is currently disconnected, startup can stall. Tap Retry to launch using the default storage location for this session; your data stays where it is.';
  String get loading_slow_message_mobile =>
      'Startup is taking longer than usual — Fushi may be loading a large library or dictionaries. Please wait a moment, or tap Retry to reload. Your data is safe and won\'t be lost.';
  String get loading_slow_title => 'Startup is taking longer than usual';
  String get local_audio => 'Local audio';
  String get local_audio_add_db => 'Add local audio database';
  String get local_audio_edit_sources => 'Edit sources';
  String local_audio_import_failed_detail({required Object reason}) =>
      'Failed to import audio database: ${reason}';
  String get local_audio_imported => 'Audio database added';
  String get local_audio_invalid_db =>
      'This file isn\'t a usable audio database (not a Local Audio Server database, or it has no audio).';
  String get local_audio_no_sources => 'No sources found in this database';
  String get local_audio_reference_original =>
      'Reference original file (don\'t copy)';
  String get local_audio_reference_original_desc =>
      'Keep the database where it is and read from its original path; the source breaks if the file is moved or deleted.';
  String get local_audio_reference_unavailable =>
      'The selected file is a temporary copy. Importing a persistent copy instead.';
  String get local_audio_source_order_title => 'Source priority';
  String get log_copy_all => 'Copy all';
  String get log_export_failed => 'Export failed';
  String get log_export_file => 'Export to file';
  String get log_export_saved => 'Log saved';
  String get log_upload_action => 'Upload to server';
  String get log_upload_consent_agree => 'Agree & upload';
  String get log_upload_consent_body =>
      'The log text (which may include error messages, file paths, and book titles) plus your app version, platform, and device model will be uploaded to the developer\'s server to help diagnose issues. This only happens when you tap upload — nothing is sent automatically.';
  String get log_upload_consent_title => 'Upload log to server?';
  String get log_upload_failed => 'Upload failed';
  String get log_upload_in_progress => 'Uploading log…';
  String get log_upload_success => 'Log uploaded';
  String get log_upload_too_large => 'Log too large to upload';
  String get login => 'Login';
  String get lookup_audio_volume => 'Lookup audio volume';
  String get lookup_block_capture => 'Block screen capture';
  String get lookup_block_capture_hint =>
      'Excludes the lookup popup window from screenshots, screen recording, and live streaming (Windows). Turn this off to let screenshots, recording, and streaming capture the lookup popup.';
  String get low_memory_mode => 'Low memory mode';
  String get low_memory_mode_hint =>
      'Reduce cache and memory usage for low-end devices. Some changes take effect after restart.';
  String get low_memory_mode_suggestion =>
      'Try enabling Low Memory Mode in Settings → Miscellaneous.';
  String get lyrics_artist => 'Artist';
  String get lyrics_blur => 'Blur lyrics';
  String get lyrics_blur_hint =>
      'Blur the current line for listening immersion; hover or tap to reveal';
  String get lyrics_font_size => 'Lyrics font size';
  String get lyrics_font_size_hint =>
      'Lyrics font size is independent of book mode';
  String get lyrics_mode => 'Lyrics mode';
  String get lyrics_mode_hint_body =>
      'Lyrics mode has its own font size setting. You can adjust it in ⚙ Settings → Typography.';
  String get lyrics_mode_hint_title => 'Lyrics mode';
  String get lyrics_text_color => 'Lyrics text color';
  String get lyrics_text_color_hint =>
      'Use a custom color for lyrics text instead of following the theme';
  String get lyrics_title => 'Title';
  String get lyrics_vertical_writing => 'Vertical lyrics';
  String get lyrics_vertical_writing_hint =>
      'Read lyrics top-to-bottom, right-to-left (independent of book mode)';
  String get manage_audio_sources => 'Manage audio sources';
  String get manager => 'Dictionaries & sources';
  String get manga_default_zoom => 'Default zoom';
  String get manga_direction_ltr => 'Left to right';
  String get manga_direction_rtl => 'Right to left';
  String get manga_discovery_load_failed => 'Couldn\'t load the discover feed.';
  String get manga_discovery_match_none => 'No match found in enabled sources.';
  String get manga_discovery_match_running =>
      'Matching in your enabled sources...';
  String get manga_discovery_match_section => 'Read from a source';
  String get manga_discovery_section_latest_finished => 'Recently completed';
  String get manga_discovery_section_popular => 'Popular';
  String get manga_discovery_section_top_rated => 'Top rated';
  String manga_discovery_source_popular({required Object source}) =>
      'Popular on ${source}';
  String get manga_discovery_sources_browse => 'Browse a source';
  String get manga_discovery_status_cancelled => 'Cancelled';
  String get manga_discovery_status_finished => 'Completed';
  String get manga_discovery_status_hiatus => 'On hiatus';
  String get manga_discovery_status_not_yet_released => 'Not yet released';
  String get manga_discovery_status_releasing => 'Ongoing';
  String get manga_global_search_hint => 'Search every enabled source';
  String get manga_global_search_no_sources =>
      'No enabled manga sources yet. Add one in the Import tab.';
  String get manga_global_search_open_sources => 'Go to Import';
  String get manga_global_search_prompt =>
      'Type a title to search every enabled manga source at once.';
  String get manga_global_search_title => 'Search all sources';
  String get manga_google_lens_disclosure_accept => 'Agree and start OCR';
  String get manga_google_lens_disclosure_body =>
      'Recognizing this manga sends a reduced JPEG copy of each page without OCR text to Google. Results are cached on this device. The endpoint is unofficial and may stop working. Nothing is uploaded unless you agree.';
  String get manga_google_lens_disclosure_decline => 'Cancel';
  String get manga_google_lens_disclosure_title =>
      'Send manga pages to Google Lens?';
  String get manga_import_action => 'Import Manga';
  String manga_import_batch_done({
    required Object imported,
    required Object skipped,
    required Object failed,
  }) => 'Imported ${imported}, skipped ${skipped}, failed ${failed}.';
  String manga_import_batch_hint({required Object n}) =>
      'This folder holds ${n} volume files; each is imported as its own book, named after its file.';
  String get manga_import_detected_confirm => 'Import as manga';
  String manga_import_detected_message({required Object name}) =>
      '"${name}" is a manga file, so it will go through the manga importer instead of the book importer.';
  String get manga_import_detected_title => 'This looks like manga';
  String get manga_import_direct => 'Import without OCR';
  String get manga_import_folder_as_source_hint =>
      'Keep scanning this folder for new manga';
  String get manga_import_hint =>
      'Pick a manga folder, a .cbz/.zip page archive, a .pdf, or a .mokuro file.';
  String get manga_import_missing_input => 'Pick a manga file or folder first.';
  String get manga_import_pick_file => 'Pick manga file';
  String get manga_import_pick_folder => 'Pick manga folder';
  String get manga_interface_hide => 'Hide interface';
  String get manga_interface_show => 'Show interface';
  String get manga_jump_to_page => 'Jump to page';
  String get manga_library => 'Manga';
  String get manga_mode_toggle => 'Reading mode';
  String get manga_next_page => 'Next page';
  String manga_ocr_acceleration_degraded({
    required Object engine,
    required Object reason,
  }) => 'GPU acceleration unavailable, running OCR on ${engine}: ${reason}';
  String manga_ocr_acceleration_status({required Object engine}) =>
      'OCR acceleration: ${engine}';
  String get manga_ocr_default_engine => 'Default OCR engine';
  String get manga_ocr_delete => 'Delete models';
  String get manga_ocr_delete_confirm_message =>
      'This frees disk space. You can download them again later.';
  String get manga_ocr_delete_confirm_title => 'Delete OCR models?';
  String get manga_ocr_delete_done => 'Models deleted';
  String manga_ocr_delete_done_freed({required Object size}) =>
      'Models deleted, freed ${size}';
  String get manga_ocr_done => 'OCR complete';
  String get manga_ocr_download => 'Download models';
  String get manga_ocr_download_done => 'Models downloaded';
  String get manga_ocr_download_failed => 'Model download failed';
  String get manga_ocr_download_resume => 'Resume download';
  String manga_ocr_download_total_progress({
    required Object done,
    required Object total,
  }) => '${done} of ${total}';
  String manga_ocr_downloading_file({required Object file}) =>
      'Downloading ${file}…';
  String get manga_ocr_engine_auto => 'Automatic (never uploads to Lens)';
  String get manga_ocr_engine_auto_desc =>
      'Prefers an offline engine you already set up; never uploads to Lens on its own.';
  String get manga_ocr_engine_builtin => 'Built-in';
  String get manga_ocr_engine_external => 'External mokuro';
  String get manga_ocr_engine_external_desc =>
      'Calls a mokuro command line you installed yourself. Desktop only.';
  String get manga_ocr_engine_google_lens => 'Google Lens';
  String get manga_ocr_engine_google_lens_desc =>
      'Needs internet and uploads page images to Google. Fast with no download, but quality is below the local model.';
  String get manga_ocr_engine_local_onnx => 'Local ONNX';
  String get manga_ocr_engine_local_onnx_desc =>
      'Fully offline, best quality. Needs a one-time model download and is slow on old hardware.';
  String get manga_ocr_engine_none =>
      'No OCR engine available. Download built-in models or set the mokuro CLI path in settings.';
  String get manga_ocr_engine_paired_host_desc =>
      'Hands the work to the paired Fushi interconnect server. Nothing is downloaded here.';
  String get manga_ocr_engine_system => 'Device OCR';
  String get manga_ocr_engine_system_desc =>
      'Uses the text recognition built into your device. No download, fully offline, nothing uploaded — but noticeably weaker on vertical speech bubbles and handwriting than the local model.';
  String get manga_ocr_engine_system_unavailable =>
      'This device has no built-in text recognition available';
  String get manga_ocr_external_cli_hint =>
      'Leave empty to auto-detect (FUSHI_MOKURO / PATH)';
  String get manga_ocr_external_cli_label => 'External mokuro CLI path';
  String get manga_ocr_external_detect => 'Detect';
  String manga_ocr_external_detected({required Object version}) =>
      'Detected: ${version}';
  String get manga_ocr_external_not_found => 'mokuro not found';
  String get manga_ocr_import => 'Import local model';
  String get manga_ocr_import_copy_urls => 'Copy download links';
  String manga_ocr_import_done({required Object count}) =>
      'Imported ${count} file(s)';
  String get manga_ocr_import_failed => 'Model import failed';
  String get manga_ocr_import_intro =>
      'If the in-app download will not go through, download these files yourself and import them here. A zip containing them works too.';
  String get manga_ocr_import_matched_nothing =>
      'No usable model files were recognised';
  String get manga_ocr_import_pick_files => 'Pick files';
  String get manga_ocr_import_pick_folder => 'Pick folder';
  String get manga_ocr_import_running => 'Importing…';
  String manga_ocr_import_size_mismatch({
    required Object file,
    required Object expected,
    required Object actual,
  }) => '${file} has the wrong size: expected ${expected}, got ${actual}';
  String manga_ocr_import_still_missing({required Object count}) =>
      'Still missing ${count} file(s)';
  String get manga_ocr_import_title => 'Import a downloaded model';
  String get manga_ocr_import_urls_copied => 'Download links copied';
  String get manga_ocr_lens_language_label => 'Recognition language';
  String get manga_ocr_mobile_note =>
      'On mobile, these models power the local engine for whole-volume, tap and selected-area OCR in the manga reader.';
  String manga_ocr_model_disk_usage({required Object size}) =>
      'Using ${size} on disk';
  String manga_ocr_model_download_size({required Object size}) =>
      'Needs ${size}';
  String get manga_ocr_model_status_missing => 'OCR models not downloaded';
  String get manga_ocr_model_status_ready => 'OCR models ready';
  String get manga_ocr_model_unused_by_engine =>
      'The current engine doesn\'t use these local model files.';
  String get manga_ocr_section => 'Manga OCR';
  String get manga_ocr_section_summary =>
      'Built-in OCR models and external mokuro CLI';
  String get manga_ocr_unsupported =>
      'Built-in manga OCR isn\'t available on this platform yet.';
  String get manga_ocr_wizard_already_ocred =>
      'This volume already has OCR data on every page. Running OCR again would overwrite it.';
  String get manga_ocr_wizard_done => 'Manga imported';
  String get manga_ocr_wizard_failed => 'OCR failed';
  String get manga_ocr_wizard_has_mokuro =>
      'This folder already has a .mokuro file — use normal import instead.';
  String get manga_ocr_wizard_importing => 'Importing…';
  String get manga_ocr_wizard_no_images => 'No images found in this folder.';
  String manga_ocr_wizard_page_progress({
    required Object done,
    required Object total,
  }) => 'Page ${done} / ${total}';
  String get manga_ocr_wizard_pick_folder => 'Choose image folder';
  String get manga_ocr_wizard_run => 'Run OCR';
  String get manga_ocr_wizard_running => 'Running OCR…';
  String get manga_ocr_wizard_title => 'OCR import manga';
  String get manga_ocr_wizard_title_label => 'Title (optional)';
  String get manga_online_base_url_label => 'Online catalog URL';
  String get manga_online_catalog_title => 'Online catalog';
  String get manga_online_detail_load_failed => 'Could not load this manga.';
  String get manga_online_download_selected => 'Download selected';
  String get manga_online_downloaded => 'Imported';
  String get manga_online_error_view_detail => 'View details';
  String get manga_online_failed => 'Download failed';
  String get manga_online_load_failed => 'Failed to load catalog';
  String get manga_online_queue_added => 'Added to download queue';
  String manga_online_queue_progress({
    required Object done,
    required Object total,
  }) => 'Volume ${done} / ${total}';
  String get manga_online_queue_section => 'Manga catalog downloads';
  String manga_online_retry_waiting({
    required Object attempt,
    required Object total,
  }) => 'Retrying automatically (${attempt}/${total})';
  String get manga_online_search_hint => 'Search series';
  String get manga_online_series_empty => 'No volumes in this series.';
  String get manga_online_source_disabled =>
      'This internet source is disabled. Enable it in Sources to browse the catalog.';
  String get manga_online_stage_cbz => 'Downloading volume…';
  String get manga_online_stage_extract => 'Extracting…';
  String get manga_online_stage_mokuro => 'Downloading OCR data…';
  String get manga_page_animation => 'Page turn animation';
  String get manga_page_animation_fade => 'Fade';
  String get manga_page_animation_none => 'None';
  String get manga_page_animation_slide => 'Slide';
  String manga_page_number_hint({required Object total}) =>
      'Page number (1-${total})';
  String get manga_previous_page => 'Previous page';
  String get manga_reading_direction => 'Reading direction';
  String get manga_reading_mode_spread => 'Spread';
  String get manga_reading_mode_webtoon => 'Webtoon';
  String get manga_remote_ocr_cancelled =>
      'Remote OCR was cancelled on the host.';
  String get manga_remote_ocr_engine => 'Fushi Interconnect server';
  String get manga_remote_ocr_failed => 'Remote OCR failed';
  String get manga_remote_ocr_no_host =>
      'No Fushi Interconnect server with manga OCR is reachable.';
  String get manga_remote_ocr_not_ready =>
      'The Fushi Interconnect server\'s OCR models are not downloaded. Download them on the server first.';
  String get manga_remote_ocr_running =>
      'Fushi Interconnect server is running OCR…';
  String get manga_remote_ocr_unsupported =>
      'The Fushi Interconnect server does not support manga OCR.';
  String manga_remote_ocr_uploading({
    required Object done,
    required Object total,
  }) => 'Uploading pages ${done} / ${total}…';
  String get manga_section_viewing => 'Viewing and page turning';
  String get manga_series_all_read => 'Every chapter has been read';
  String get manga_series_chapters_action => 'Chapters';
  String get manga_series_first_chapter_reached => 'This is the first chapter';
  String get manga_series_last_chapter_reached => 'This is the newest chapter';
  String get manga_series_local_volume => 'Local volume';
  String get manga_series_mark_previous_read => 'Mark this and earlier as read';
  String get manga_series_mark_read => 'Mark as read';
  String get manga_series_mark_unread => 'Mark as unread';
  String get manga_series_next_chapter => 'Next chapter';
  String get manga_series_no_chapters => 'No chapters yet';
  String get manga_series_offline_hint =>
      'Showing the chapters saved on this device';
  String get manga_series_open_series => 'Series page';
  String get manga_series_page_count => 'Pages';
  String get manga_series_platform_unsupported =>
      'This source runtime is unavailable on this platform';
  String get manga_series_previous_chapter => 'Previous chapter';
  String manga_series_read_progress({
    required Object page,
    required Object total,
  }) => 'Read to page ${page} of ${total}';
  String manga_series_read_progress_partial({required Object page}) =>
      'Read to page ${page}';
  String get manga_series_refresh => 'Refresh chapters';
  String get manga_series_refresh_failed => 'Could not refresh from the source';
  String get manga_series_sort_newest => 'Newest first';
  String get manga_series_sort_oldest => 'Oldest first';
  String get manga_series_source_disabled =>
      'This source is not installed or is disabled';
  String get manga_series_unread_only => 'Unread only';
  String get manga_series_volume_info => 'Volume';
  String get manga_source_cloudflare_blocked =>
      'This source is protected by Cloudflare and can\'t be reached by the built-in reader yet.';
  String get manga_source_cloudflare_verify_hint =>
      'Complete the Cloudflare check below. Loading resumes automatically once it passes.';
  String get manga_source_cloudflare_verify_title => 'Site verification';
  String get manga_tap_zone_paging => 'Tap edges to turn pages';
  String get manga_tap_zone_paging_subtitle =>
      'Tap the left or right edge of the page to turn';
  String get manga_volume_key_paging => 'Volume keys turn pages';
  String get manga_volume_key_paging_subtitle =>
      'Use volume up and down to turn pages in the manga reader';
  String get manga_zoom => 'Zoom';
  String get manga_zoom_sensitivity => 'Zoom sensitivity';
  String get margin_bottom => 'Bottom margin';
  String get margin_left => 'Left margin';
  String get margin_right => 'Right margin';
  String get margin_top => 'Top margin';
  String get maximum_terms => 'Maximum dictionary headwords in result';
  String get media_file_location_failed => 'Could not open the file location.';
  String get media_file_location_open => 'Open file location';
  String get media_import_folder => 'Import folder';
  String get media_import_folder_as_source => 'Add as library source';
  String get media_import_folder_once => 'Import once only';
  String get media_source_add => 'Add source';
  String get media_source_add_local_folder => 'Local folder';
  String get media_source_add_network => 'Network';
  String media_source_count_book({required Object n}) => '${n} books';
  String media_source_count_manga({required Object n}) => '${n} volumes';
  String media_source_count_video({required Object n}) => '${n} videos';
  String media_source_last_scan({required Object time}) => 'Last scan ${time}';
  String get media_source_manage_title => 'Manage sources';
  String get media_source_network_label_optional => 'Display name (optional)';
  String get media_source_network_missing_fields =>
      'Enter host, username, remote path, and a password or key';
  String get media_source_network_remote_path => 'Remote path';
  String get media_source_network_subtitle =>
      'SFTP / FTP / WebDAV remote library';
  String get media_source_network_subtitle_video =>
      'WebDAV remote library (streams in place)';
  String get media_source_no_sources => 'No sources yet';
  String get media_source_open_folder => 'Open folder';
  String get media_source_remove => 'Remove source';
  String get media_source_remove_keeps_media =>
      'Removing a source does not delete imported media.';
  String get media_source_rescan => 'Rescan';
  String get media_source_scan_error => 'Scan failed';
  String get media_source_section_title => 'Library sources';
  String get media_tracking_access_token => 'Access token';
  String get media_tracking_access_token_hint =>
      'Create a personal access token with write permission';
  String get media_tracking_account => 'Bangumi account';
  String get media_tracking_add_mapping => 'Add mapping';
  String get media_tracking_all_synced => 'Everything sent';
  String get media_tracking_anime => 'Anime';
  String get media_tracking_card_title => 'Bangumi sync';
  String get media_tracking_chapter => 'Chapter';
  String get media_tracking_connect => 'Connect and verify';
  String get media_tracking_connected_as => 'Connected account';
  String get media_tracking_delete_mapping => 'Remove mapping';
  String get media_tracking_episode => 'Episode';
  String get media_tracking_game => 'Game';
  String get media_tracking_kind => 'Category';
  String get media_tracking_last_error => 'Last error';
  String get media_tracking_last_sync => 'Last sync';
  String media_tracking_linked_count({required Object n}) => '${n} linked';
  String get media_tracking_local_item => 'Local item';
  String get media_tracking_manage_links => 'Manage links';
  String get media_tracking_manga => 'Manga';
  String get media_tracking_manual_required => 'Needs manual link';
  String media_tracking_manual_required_count({required Object n}) =>
      '${n} items need manual links';
  String get media_tracking_manual_required_hint =>
      'These local items already have progress but are not linked to Bangumi.';
  String get media_tracking_mappings => 'Item mappings';
  String media_tracking_more_manual_required({required Object n}) =>
      '${n} more items need manual links';
  String get media_tracking_never_synced => 'Never synced';
  String get media_tracking_no_local_history =>
      'No local watch, reading, or game progress needs linking.';
  String get media_tracking_no_mappings =>
      'No manual mappings yet. Fushi matches automatically on the first completed episode or reading progress; add ambiguous items here.';
  String get media_tracking_not_connected =>
      'Not connected. Progress stays local and nothing reaches Bangumi.';
  String get media_tracking_novel => 'Novel';
  String get media_tracking_open_subject => 'Open on Bangumi';
  String get media_tracking_pending => 'Pending updates';
  String media_tracking_pending_count({required Object n}) =>
      '${n} waiting to send';
  String get media_tracking_progress_mode => 'Progress unit';
  String get media_tracking_progress_offset => 'Starting number';
  String get media_tracking_retry_mapping => 'Retry matching';
  String get media_tracking_retry_matched =>
      'Matched and queued current progress';
  String get media_tracking_retry_no_match =>
      'No match found. Try manual linking.';
  String get media_tracking_saved => 'Mapping saved';
  String get media_tracking_search => 'Search Bangumi';
  String get media_tracking_search_results => 'Bangumi results';
  String get media_tracking_signup => 'Create a Bangumi account';
  String get media_tracking_status => 'Collection status';
  String get media_tracking_summary =>
      'Automatically record anime, novel, and manga progress to Bangumi';
  String get media_tracking_sync_failed =>
      'Sync failed. The update remains queued.';
  String get media_tracking_sync_now => 'Sync now';
  String get media_tracking_sync_success => 'Sync completed';
  String get media_tracking_token_required =>
      'Enter and verify an access token first';
  String get media_tracking_unauthorized =>
      'Bangumi rejected the access token. Reconnect it in settings.';
  String get media_tracking_volume => 'Volume';
  String get media_tracking_watched_empty =>
      'No anime is marked as watched on this Bangumi account.';
  String media_tracking_watched_load_failed({required Object error}) =>
      'Could not load watched anime: ${error}';
  String media_tracking_watched_progress({required Object n}) =>
      'Watched ${n} episodes';
  String get media_tracking_watched_show => 'View all watched anime';
  String get media_tracking_watched_title => 'Watched on Bangumi';
  String get microphone_permission_denied =>
      'Microphone permission is required to record.';
  String get migration_batch_core_label => 'Settings, progress & statistics';
  String migration_batch_done({required Object batch}) => '${batch} exported';
  String migration_batch_running({required Object batch}) =>
      'Exporting ${batch}…';
  String get migration_download_fushi => 'Get Fushi';
  String get migration_export_done =>
      'Export complete. Open Fushi to import and verify.';
  String migration_export_failed({required Object error}) =>
      'Export failed: ${error}';
  String migration_import_counts_failed({required Object detail}) =>
      'Imported data is incomplete: ${detail}. Re-export the missing parts from Hibiki, then import again.';
  String get migration_import_detected =>
      'Hibiki migration data detected. Import it now?';
  String get migration_import_entry => 'Import from Hibiki';
  String get migration_import_entry_subtitle =>
      'Import data exported by the old Hibiki app';
  String get migration_import_nothing =>
      'No migration data found in the transfer folder.';
  String get migration_import_permission_body =>
      'The transfer folder was created by the old app. Without "All files access", Fushi cannot read it — the data is intact, it just cannot be opened.';
  String get migration_import_permission_grant => 'Grant permission';
  String get migration_import_permission_title => 'Storage permission required';
  String migration_import_running({required Object batch}) =>
      'Importing ${batch}…';
  String get migration_import_start => 'Start import';
  String get migration_import_success => 'Import complete and verified.';
  String migration_import_verify_failed({
    required Object batch,
    required Object detail,
  }) => '${batch} failed verification and was kept for re-export: ${detail}';
  String migration_import_verifying({
    required Object batch,
    required Object done,
    required Object total,
  }) => 'Verifying ${batch} (${done}/${total})';
  String get migration_import_verifying_hint =>
      'Checksumming the archives. Large libraries can take several minutes.';
  String get migration_include_local_audio =>
      'Also export local pronunciation audio (can be large)';
  String get migration_intro =>
      'Fushi is the new name of this app. Migration exports all your data in batches to a transfer folder, then Fushi imports and verifies it. Your data here stays untouched until you uninstall this app.';
  String get migration_open_fushi => 'Open Fushi';
  String get migration_readonly_note =>
      'Your data has been exported to Fushi. This app is now read-only: use Fushi for reading and mining. You can re-export at any time if Fushi reports missing data.';
  String get migration_reexport => 'Re-export';
  String get migration_settings_entry => 'Migrate to Fushi';
  String get migration_settings_entry_subtitle =>
      'Move all data to the new Fushi app';
  String get migration_start => 'Start migration';
  String get migration_target_missing =>
      'Fushi is not installed yet. Install Fushi first, then return here.';
  String get migration_uninstall_button => 'Uninstall Hibiki';
  String get migration_uninstall_prompt =>
      'Migration finished. Uninstall the old Hibiki app?';
  String get migration_uninstall_still_installed =>
      'Hibiki is still installed. You can uninstall it any time.';
  String get mihon_add_to_bookshelf => 'Add to manga shelf';
  String get mihon_chapters_title => 'Chapters';
  String get mihon_extension_disabled => 'Disabled';
  String get mihon_extension_error => 'Extension error';
  String get mihon_extension_import => 'Import local APK';
  String get mihon_extension_incompatible => 'Incompatible extension';
  String get mihon_extension_install => 'Install';
  String get mihon_extension_installed => 'Installed';
  String get mihon_extension_language_all => 'All languages';
  String get mihon_extension_language_filter => 'Language';
  String get mihon_extension_preview => 'Preview';
  String get mihon_extension_preview_discard => 'Discard';
  String get mihon_extension_preview_read_only =>
      'Preview is read-only. Install the extension to open and read.';
  String get mihon_extension_preview_source_select =>
      'Pick a source to preview';
  String get mihon_extension_preview_warning =>
      'Previewing runs this extension\'s code before it is installed. Nothing is added to your library until you choose to install.';
  String get mihon_extension_sources_included => 'Included sources';
  String get mihon_extension_sources_less => 'Show fewer sources';
  String mihon_extension_sources_more({required Object count}) =>
      'Show all ${count} sources';
  String get mihon_extension_uninstall => 'Uninstall';
  String get mihon_extension_update => 'Update';
  String get mihon_extension_warning =>
      'Third-party extensions execute code with Fushi permissions. Only install extensions and signers you trust.';
  String get mihon_extensions_title => 'Manga extensions';
  String get mihon_filter_ascending => 'Ascending';
  String get mihon_filter_descending => 'Descending';
  String get mihon_filter_exclude => 'Exclude';
  String get mihon_filter_ignore => 'Ignore';
  String get mihon_filter_include => 'Include';
  String get mihon_runtime_unavailable =>
      'Mihon extensions are unavailable on this platform.';
  String get mihon_signer_fingerprint => 'Signer SHA-256';
  String get mihon_signer_trust_title => 'Trust extension signer?';
  String get mihon_source_browse_mokuro => 'Built-in Mokuro catalog';
  String get mihon_source_clear_data => 'Clear source data';
  String get mihon_source_clear_data_hint =>
      'Clears this source preferences and cookies. Installed extensions are kept.';
  String get mihon_source_empty =>
      'No enabled manga sources. Install and enable an extension first.';
  String get mihon_source_latest => 'Latest';
  String get mihon_source_no_results => 'No manga found.';
  String get mihon_source_popular => 'Popular';
  String get mihon_source_preferences => 'Source preferences';
  String get mihon_source_search => 'Search manga';
  String get mihon_sources_title => 'Manga sources';
  String get mihon_store_add => 'Add extension store';
  String get mihon_store_edit => 'Edit repository URL';
  String get mihon_store_empty =>
      'No extension stores yet. Add a compatible Mihon store or import a local APK.';
  String mihon_store_extension_count({required Object count}) =>
      '${count} extensions';
  String get mihon_store_refresh => 'Refresh stores';
  String get mihon_store_remove => 'Remove extension store';
  String get mihon_store_url => 'Extension store URL';
  String get mihon_store_zero_extensions =>
      'This repository returned 0 extensions. Its address may point to an outdated index.';
  String get mining_animated_format_avif => 'AVIF (smallest)';
  String get mining_animated_format_gif => 'GIF (most compatible)';
  String get mining_animated_format_webp => 'WebP (wider support)';
  String get mining_audio_quality => 'Audio quality';
  String get mining_audio_quality_high => 'High';
  String get mining_audio_quality_hint =>
      'Higher bitrate is clearer but makes larger cards.';
  String get mining_audio_quality_max => 'Maximum';
  String get mining_audio_quality_standard => 'Standard';
  String get mining_image_quality => 'Image / GIF quality';
  String get mining_image_quality_hd => 'HD';
  String get mining_image_quality_hint =>
      'Higher is sharper but makes larger cards. Maximum keeps screenshots at the source resolution; animated GIFs stay capped so cards remain usable.';
  String get mining_image_quality_max => 'Maximum';
  String get mining_image_quality_standard => 'Standard';
  String get mining_image_quality_thrift => 'Data saver';
  String get mining_still_format_jpg => 'JPG (smaller)';
  String get mining_still_format_png => 'PNG (lossless)';
  String get module_disabled_hint =>
      'This feature module is turned off in Settings > Appearance > Feature modules.';
  String get module_downloads_hidden_hint =>
      'The Downloads tab is hidden in Settings → Appearance → Feature modules; turn it back on to manage subscriptions.';
  String get module_extension_label => 'Browser extension';
  String get move_down => 'Move down';
  String get move_up => 'Move up';
  String get name => 'Name';
  String get nav_browser_extension => 'Extension';
  String get nav_downloads => 'Downloads';
  String get nav_game => 'Game';
  String get nav_home => 'Home';
  String get nav_lookup => 'Lookup';
  String get nav_video => 'Video';
  String get network_proxy_address_hint =>
      'HTTP proxy server used by all public internet requests';
  String get network_proxy_auto_hint =>
      'Applies to every internet request the app makes: updates, cloud sync, dictionaries, downloads, subtitles and metadata. Leave blank for automatic: environment variables, then the enabled system proxy. P2P (torrent) transfers connect directly unless enabled below.';
  String get network_proxy_credentials_scope_hint =>
      'Credentials apply to HTTP requests only; the built-in torrent engine cannot use them';
  String get network_proxy_hint =>
      'host:port, e.g. 127.0.0.1:7890 (IPv4/host only)';
  String get network_proxy_invalid => 'Invalid proxy. Use host:port';
  String get network_proxy_label => 'Network proxy';
  String get network_proxy_mode_auto => 'Automatic';
  String get network_proxy_mode_auto_hint =>
      'Use environment variables, then the enabled system proxy';
  String get network_proxy_mode_direct => 'Direct';
  String get network_proxy_mode_direct_hint => 'Disable proxy use for the app';
  String get network_proxy_mode_label => 'Proxy mode';
  String get network_proxy_mode_manual => 'Manual';
  String get network_proxy_mode_manual_hint =>
      'Use the server and optional credentials below';
  String get network_proxy_p2p_label => 'P2P (torrent) proxy';
  String get network_proxy_p2p_mode_direct => 'Direct';
  String get network_proxy_p2p_mode_mixed => 'Mixed';
  String get network_proxy_p2p_mode_proxy => 'Via proxy';
  String get network_proxy_p2p_warning =>
      'Direct by default. Via proxy: all P2P traffic goes through the global proxy — speed may drop, and many proxy providers forbid BitTorrent traffic (throttling, warnings, or account termination). Mixed: tracker requests go through the proxy while DHT and peer connections stay direct — widest peer discovery, but your real IP is visible to trackers, DHT and peers (connectivity only, not privacy). Built-in engine only; external qBittorrent uses its own proxy settings.';
  String get network_proxy_password => 'Proxy password (optional)';
  String get network_proxy_username => 'Proxy username (optional)';
  String get next_sentence => 'Next sentence';
  String get no_audio_file => 'No audio file to save.';
  String get no_collections => 'No bookmarks or saved sentences';
  String get no_debug_logs => 'No debug logs.';
  String get no_illustrations_found => 'No illustrations found';
  String get no_results_found => 'No results found.';
  String get no_search_results => 'No search results found.';
  String get no_sentence_selected => 'No sentence selected';
  String get no_sentences_found => 'No sentences found';
  String get no_text => 'No text.';
  String get no_text_to_search => 'No text to search.';
  String get now_listening_label => 'Now listening';
  String get on_screen_keyboard => 'On-screen keyboard';
  String get onboarding_action_badge_optional => 'Optional';
  String get onboarding_action_badge_recommended => 'Recommended';
  String get onboarding_action_badge_required => 'Required';
  String get onboarding_action_next => 'Next';
  String get onboarding_action_skip => 'Skip for now';
  String get onboarding_action_start => 'Start using Fushi';
  String get onboarding_actions_more => 'Other ways';
  String get onboarding_anki_action_get_anki_desc =>
      'Opens the Anki download page. Keep Anki running while you make cards.';
  String get onboarding_anki_action_get_ankidroid_desc =>
      'Opens the store page. Fushi writes cards into AnkiDroid, so it must be installed first.';
  String get onboarding_anki_action_install_addon_desc =>
      'Unpacks the bundled AnkiConnect add-on into Anki. Restart Anki afterwards.';
  String get onboarding_anki_action_refresh_desc =>
      'Reloads decks and note types. Use it after creating a deck in Anki.';
  String get onboarding_anki_action_test_desc =>
      'Checks that Fushi can reach Anki and loads your decks and note types. Creates nothing.';
  String onboarding_anki_addon_failed({required Object message}) =>
      'Install failed: ${message}';
  String get onboarding_anki_addon_installed =>
      'AnkiConnect installed. Start or restart Anki, then test the connection.';
  String get onboarding_anki_addon_no_anki =>
      'Anki data folder not found. Install Anki, open it once, then try again.';
  String get onboarding_anki_backend_label => 'Connection';
  String get onboarding_anki_fsrs_body =>
      'Anki has FSRS built in — one of the best spaced-repetition algorithms around — but it keeps scheduling with SM-2 from the 1980s until you turn FSRS on. FSRS reads your real review history and predicts when you are about to forget, so you keep the same retention with fewer reviews. You flip this switch once, inside Anki; nothing changes on the Fushi side.';
  String get onboarding_anki_fsrs_step_optimize_desc =>
      'Press Optimize under the switch to fit the parameters to your own review history, then save. Below roughly 1000 reviews the defaults already beat SM-2, so just optimize again once you have studied for a while.';
  String get onboarding_anki_fsrs_step_optimize_title => 'Optimize, then save';
  String get onboarding_anki_fsrs_step_options_desktop_desc =>
      'In Anki, click the gear next to a deck and choose Options.';
  String get onboarding_anki_fsrs_step_options_mobile_desc =>
      'In AnkiDroid (2.17 or newer) or AnkiMobile, long-press the deck and choose Options.';
  String get onboarding_anki_fsrs_step_options_title => 'Open deck options';
  String get onboarding_anki_fsrs_step_toggle_desc =>
      'Scroll to the FSRS section at the bottom of the options page (older builds hide it under Advanced) and turn the switch on. It applies to your whole collection, so once is enough.';
  String get onboarding_anki_fsrs_step_toggle_title => 'Switch FSRS on';
  String get onboarding_anki_fsrs_title => 'Turn on FSRS in Anki';
  String get onboarding_anki_get_anki_action => 'Get Anki (desktop)';
  String get onboarding_anki_get_ankidroid_action => 'Get AnkiDroid';
  String get onboarding_anki_install_addon_action =>
      'Install AnkiConnect add-on';
  String get onboarding_anki_intro_body =>
      'Anki is a free spaced-repetition flashcard app. After a lookup, Fushi turns the word into a card with meaning, sentence, audio and screenshot in one tap.';
  String get onboarding_anki_mobile_ankiconnect_hint =>
      'Create cards into Anki on a computer in the same network: enable AnkiConnect in card creation settings and enter the computer\'s address.';
  String get onboarding_anki_mobile_ankiconnect_title =>
      'Advanced: use AnkiConnect from this device';
  String get onboarding_anki_setup_android_hint =>
      'Install AnkiDroid and open it once. On your first card, tap Allow in the permission dialog — nothing else to configure.';
  String get onboarding_anki_setup_desktop_hint =>
      'Install Anki, add the AnkiConnect add-on (one tap below, or add-on code 2055492159), and keep Anki running while you make cards.';
  String get onboarding_anki_setup_ios_hint =>
      'With AnkiMobile installed, cards are added directly. For the full feature set, connect to Anki on a computer in the same network via AnkiConnect.';
  String get onboarding_anki_status_pending => 'Not tested yet';
  String get onboarding_anki_test_action => 'Test connection';
  String onboarding_anki_test_success({required Object count}) =>
      'Connected: found ${count} decks';
  String get onboarding_click_lookup_intro =>
      'Tap any word in a book, manga or subtitle to see its definition. Try it on the practice sentence below.';
  String get onboarding_click_lookup_mine_body =>
      'Tap + on the entry to send the word, sentence, audio and image to the card creator.';
  String get onboarding_click_lookup_mine_title => 'Make a card';
  String get onboarding_click_lookup_nested_body =>
      'Tap a word inside a definition to go one level deeper. Go back or tap outside to close a level.';
  String get onboarding_click_lookup_nested_title => 'Keep exploring';
  String get onboarding_click_lookup_tap_desc =>
      'Tap (or left-click) a character; Fushi matches the longest word starting there. The sentence opens in the lookup page.';
  String get onboarding_click_lookup_tap_title => 'Tap a word';
  String get onboarding_feature_anki => 'Anki cards';
  String get onboarding_feature_anki_hint =>
      'Turn lookups into flashcards with one tap';
  String get onboarding_feature_backup => 'Backup & sync';
  String get onboarding_feature_backup_hint =>
      'Google Drive, WebDAV or a local file';
  String get onboarding_feature_books => 'Novels';
  String get onboarding_feature_books_hint =>
      'EPUB reading with lookup and audiobook sync';
  String get onboarding_feature_extension_hint =>
      'Look up words on any web page (desktop only)';
  String get onboarding_feature_fonts => 'Custom fonts';
  String get onboarding_feature_fonts_hint =>
      'Use your own fonts for the interface, book text and dictionary';
  String get onboarding_feature_games => 'Galgames';
  String get onboarding_feature_games_hint =>
      'Text-hook lookup while playing (Windows only)';
  String get onboarding_feature_interconnect => 'Device interconnect';
  String get onboarding_feature_interconnect_hint =>
      'Share libraries and progress across devices on your LAN';
  String get onboarding_feature_manga => 'Manga';
  String get onboarding_feature_manga_hint => 'Read manga with OCR lookup';
  String get onboarding_feature_manual_resources => 'Import my own resources';
  String get onboarding_feature_manual_resources_hint =>
      'Dictionaries, audiobooks and pronunciation sources from your own files';
  String get onboarding_feature_pack => 'Recommended pack';
  String get onboarding_feature_pack_hint =>
      'Japanese dictionaries plus JA/EN pronunciation audio in one download';
  String get onboarding_feature_video => 'Video';
  String get onboarding_feature_video_hint => 'Subtitle lookup and card mining';
  String get onboarding_features_modules_hint =>
      'Unchecked pages are hidden from the navigation bar. Change anytime in Settings → Appearance.';
  String get onboarding_features_modules_title => 'Library pages';
  String get onboarding_features_setup_hint =>
      'Only checked items get a step in this guide.';
  String get onboarding_features_setup_title => 'Set up next';
  String get onboarding_features_title => 'What will you use?';
  String get onboarding_finish_body =>
      'You can reopen this guide anytime from Settings → System.';
  String get onboarding_finish_summary_modules => 'Library pages shown';
  String get onboarding_finish_summary_none => 'None';
  String get onboarding_finish_summary_setup => 'Guided setup';
  String get onboarding_finish_title => 'All set';
  String get onboarding_first_anki_action => 'Open lookup and make a card';
  String get onboarding_first_anki_action_desc =>
      'Opens the practice sentence in the lookup page. Tap a word, tap +, check the fields and save.';
  String get onboarding_first_anki_card_intro =>
      'Anki is connected. Make one real card now so you know the whole path works.';
  String get onboarding_first_anki_lookup_desc =>
      'Open the practice sentence and tap a word.';
  String get onboarding_first_anki_lookup_title => 'Look up a word';
  String get onboarding_first_anki_plus_body =>
      'The card creator opens with the word, reading, meaning, sentence, audio and image filled in.';
  String get onboarding_first_anki_plus_title => 'Tap +';
  String get onboarding_first_anki_save_body =>
      'Confirm the deck and note type, then save. Open Anki to see the card.';
  String get onboarding_first_anki_save_title => 'Check and save';
  String get onboarding_global_lookup_android_body =>
      'Android hands selected text to Fushi through the text menu or Share sheet.';
  String get onboarding_global_lookup_android_continue_body =>
      'The lookup opens on top of the other app. Close it to return.';
  String get onboarding_global_lookup_android_continue_title =>
      'Read the popup';
  String get onboarding_global_lookup_android_open_body =>
      'Tap Fushi in the selection menu, or tap Share and pick Fushi.';
  String get onboarding_global_lookup_android_open_title => 'Choose Fushi';
  String get onboarding_global_lookup_android_select_desc =>
      'Long-press a word in another app and adjust the handles to cover it.';
  String get onboarding_global_lookup_android_select_title => 'Select text';
  String get onboarding_global_lookup_windows_action =>
      'Open shortcut settings';
  String get onboarding_global_lookup_windows_action_desc =>
      'Only if you want a different key combination.';
  String get onboarding_global_lookup_windows_body =>
      'Select text in any app and summon the dictionary without switching windows.';
  String get onboarding_global_lookup_windows_customize_body =>
      'Settings → Shortcuts → Global (app-external).';
  String get onboarding_global_lookup_windows_customize_title =>
      'Change the shortcut';
  String get onboarding_global_lookup_windows_select_desc =>
      'Highlight a word in any app and keep it selected.';
  String get onboarding_global_lookup_windows_select_title => 'Select text';
  String get onboarding_global_lookup_windows_shortcut_body =>
      'Fushi grabs the selection and opens a lookup card next to the pointer.';
  String get onboarding_global_lookup_windows_shortcut_press =>
      'Press the shortcut';
  String get onboarding_lookup_practice_action => 'Practise with this sentence';
  String get onboarding_lookup_practice_desc =>
      'Opens the lookup page with the sentence loaded. Tap a word there to see its definition; if nothing comes back, your dictionaries are not installed yet.';
  String get onboarding_manual_audiobook_action => 'Import a book with audio';
  String get onboarding_manual_audiobook_action_desc =>
      'Book or text, aligned subtitles and audio files. Subtitles are what lets Fushi sync audio to sentences.';
  String get onboarding_manual_dictionary_action => 'Import a dictionary';
  String get onboarding_manual_dictionary_action_desc =>
      'Opens dictionary management. Lookups only return results once a dictionary is installed.';
  String get onboarding_manual_pronunciation_action =>
      'Set up pronunciation audio';
  String get onboarding_manual_pronunciation_action_desc =>
      'Local or online sources for word pronunciation in dictionary entries. Separate from audiobook audio.';
  String get onboarding_online_services_account => 'Personal account required';
  String get onboarding_online_services_anidb =>
      'Identify anime and episodes by file fingerprint. Fushi has a registered app client; you still need your own AniDB account. Enter it in settings and enable file hash identification when wanted.';
  String get onboarding_online_services_body =>
      'Set up only the services you need, or skip this step. Selecting this tutorial does not enable services or submit credentials, and leaving it unselected does not change existing settings.';
  String get onboarding_online_services_build_missing =>
      'App credentials missing in this build';
  String get onboarding_online_services_configure =>
      'Open online service settings';
  String get onboarding_online_services_dandanplay =>
      'This build includes the danmaku service app credentials. Users do not need to apply for an API; enable online danmaku matching when wanted.';
  String get onboarding_online_services_dandanplay_missing =>
      'This build has no danmaku app credentials, so official online matching is unavailable. The developer provides these credentials; you do not need to register a personal API.';
  String get onboarding_online_services_embedded => 'App credentials included';
  String get onboarding_online_services_hint =>
      'Explore accounts, API keys and available services';
  String get onboarding_online_services_jimaku =>
      'Find subtitles. Register or sign in to Jimaku, generate a personal API key on your account page, then enter it in settings and enable this subtitle source.';
  String get onboarding_online_services_key => 'API key required';
  String get onboarding_online_services_link =>
      'Open official account / API page';
  String get onboarding_online_services_opensubtitles =>
      'Find and download subtitles. Register an account, create an API consumer and obtain an API key. User login is optional and uses the account download quota.';
  String get onboarding_online_services_opensubtitles_embedded =>
      'The app API key is included. You can optionally sign in to your OpenSubtitles account for your download allowance, or use your own API key.';
  String get onboarding_online_services_public =>
      'MAL / Jikan provides metadata; AniList supports discovery and related queries. Public read-only queries need no personal account or API key.';
  String get onboarding_online_services_ready => 'No registration required';
  String get onboarding_online_services_server => 'Connect an existing server';
  String get onboarding_online_services_servers =>
      'These services have no shared registration page. Enter your existing server address and the account or key provided by its administrator, or skip if you do not have a server.';
  String get onboarding_online_services_title => 'Online services (optional)';
  String get onboarding_online_services_tmdb =>
      'This build includes a TMDB key for metadata fallback and missing fields. Add your own key only if you want your own quota.';
  String get onboarding_online_services_tmdb_missing =>
      'This build has no TMDB key. Request an API key and enter it in settings if you need TMDB metadata fallback; MAL / Jikan remains available.';
  String get onboarding_pack_action_audio_desc =>
      'Add online pronunciation sources for languages the pack does not cover.';
  String get onboarding_pack_action_dictionary_desc =>
      'Learning another language? Import dictionaries for it here instead.';
  String get onboarding_pack_action_download_desc =>
      'Downloads from several sources at once in the background, then imports. Cancel anytime; it resumes where it stopped.';
  String get onboarding_pack_action_import_existing_desc =>
      'The pack is already on disk. Choose Merge in the confirmation dialog to keep your existing data.';
  String get onboarding_pack_action_pick_desc =>
      'Already have the pack zip? Import it from disk and skip the download.';
  String get onboarding_pack_action_website => 'Open the download page';
  String get onboarding_pack_action_website_desc =>
      'Chunk links for download managers. Come back and use Choose a pack file afterwards.';
  String get onboarding_pack_discard_confirm =>
      'The partial download on disk will be deleted. Downloading again later starts from zero.';
  String get onboarding_pack_discard_failed =>
      'Could not remove the downloaded files. Close any app using them, then try again.';
  String get onboarding_pack_discard_running => 'Removing downloaded files…';
  String get onboarding_pack_download_background_hint =>
      'The download keeps running in the background — you can move to the next step or close this guide. Progress, cancel and import live in Settings → System.';
  String get onboarding_pack_download_discard => 'Discard download';
  String onboarding_pack_download_failed({required Object message}) =>
      'Download failed: ${message}';
  String get onboarding_pack_download_finished =>
      'Recommended pack finished downloading. Import it from Settings → System.';
  String get onboarding_pack_download_ready_hint =>
      'Import the pack to use its dictionaries and pronunciation resources. You can do this later.';
  String get onboarding_pack_download_ready_notice =>
      'Recommended pack downloaded. Choose Import now in the bottom bar when you are ready.';
  String get onboarding_pack_download_resume => 'Resume download';
  String get onboarding_pack_downloading =>
      'Downloading… cancel anytime and resume later';
  String get onboarding_pack_import_now => 'Import now';
  String get onboarding_pack_intro =>
      'Japanese dictionaries, pitch accent, word frequency and JA/EN pronunciation audio in one download. Learning another language? Skip this and import your own dictionaries.';
  String get onboarding_pack_mini_bar_hide => 'Hide';
  String get onboarding_pack_paused_desc =>
      'Progress is kept on disk — resuming picks up where it stopped.';
  String onboarding_pack_pick_failed({required Object message}) =>
      'Could not use the chosen file: ${message}';
  String get onboarding_pack_pick_no_path =>
      'The system did not hand over a path for that file. Move the pack into device storage and pick it again, or grant all-files access.';
  String get onboarding_pack_status_downloading =>
      'Downloading recommended pack';
  String get onboarding_pack_status_paused =>
      'Recommended pack download paused';
  String get onboarding_pack_status_ready => 'Recommended pack downloaded';
  String get onboarding_pack_tutorial_desc =>
      'Try looking up a word with your new dictionaries and pronunciation resources.';
  String get onboarding_pack_tutorial_ready => 'Your resources are ready';
  String get onboarding_pack_tutorial_skip => 'Not now';
  String get onboarding_pack_tutorial_start => 'Start lookup tutorial';
  String get onboarding_reopen => 'Getting started guide';
  String get onboarding_sample_sentence_hint =>
      'Tap to open it in the lookup page, then tap any word.';
  String get onboarding_sample_sentence_label => 'Practice sentence';
  String get onboarding_step_anki_action => 'Card creation settings';
  String get onboarding_step_anki_action_desc =>
      'Template, field mapping, screenshots and audio. Deck and note type above are enough to start.';
  String get onboarding_step_anki_title => 'Set up Anki';
  String get onboarding_step_backup_action => 'Open backup settings';
  String get onboarding_step_backup_action_desc =>
      'Choose a backend and sign in, or export a local backup file.';
  String get onboarding_step_backup_body =>
      'Keep your library safe when you switch or lose a device.';
  String get onboarding_step_backup_title => 'Backup';
  String get onboarding_step_click_lookup_title => 'Tap to look up';
  String get onboarding_step_dictionary_action => 'Open dictionary manager';
  String get onboarding_step_extension_action => 'Open the install guide';
  String get onboarding_step_extension_action_desc =>
      'Shows how to install the extension and connect it to Fushi.';
  String get onboarding_step_extension_body =>
      'Look up words on any web page with the companion extension.';
  String get onboarding_step_extension_title => 'Browser extension';
  String get onboarding_step_first_anki_card_title => 'Your first card';
  String get onboarding_step_fonts_action_desc =>
      'Import font files and pick one per language.';
  String get onboarding_step_fonts_body =>
      'Use your own fonts for the interface, book text and dictionary.';
  String get onboarding_step_fonts_title => 'Fonts';
  String get onboarding_step_global_lookup_title => 'Look up outside Fushi';
  String get onboarding_step_interconnect_action =>
      'Open interconnect settings';
  String get onboarding_step_interconnect_action_desc =>
      'Enable interconnect and pair this device with your others.';
  String get onboarding_step_interconnect_body =>
      'Pair devices on your LAN to share one library and keep progress in sync.';
  String get onboarding_step_interconnect_title => 'Interconnect';
  String get onboarding_step_manual_resources_body =>
      'Import at least one dictionary before the lookup tutorial. Audiobooks and pronunciation audio are optional.';
  String get onboarding_step_manual_resources_title =>
      'Your own dictionaries and audio';
  String get onboarding_step_pack_download_action => 'Download and import';
  String get onboarding_step_pack_import_existing_action =>
      'Import the downloaded pack';
  String get onboarding_step_pack_pick_action => 'Choose a pack file';
  String get onboarding_step_pack_title => 'Recommended pack';
  String get onboarding_title => 'Getting started';
  String get onboarding_welcome_body =>
      'Pick your interface language and theme. The next few steps set up the rest.';
  String get onboarding_welcome_headline => 'Welcome to Fushi';
  String get options_collapse => 'Collapse in lookup';
  String get options_delete => 'Delete';
  String get options_edit => 'Edit';
  String get options_expand => 'Expand in lookup';
  String get options_github => 'View repository on GitHub';
  String get options_hide => 'Hide in lookup';
  String get options_language => 'Language settings';
  String get options_show => 'Show in lookup';
  String get options_website => 'Visit the official website';
  String get overlay_lookup_independent_size =>
      'Separate size for pop-out lookup';
  String get overlay_lookup_independent_size_hint =>
      'Give the app-external pop-out lookup window its own max size instead of following the in-app popup';
  String get overlay_lookup_max_height => 'Pop-out lookup max height';
  String get overlay_lookup_max_width => 'Pop-out lookup max width';
  String page_progress({required Object current, required Object total}) =>
      'Page ${current} / ${total}';
  String get paste => 'Paste';
  String get pause => 'Pause';
  String get pause_on_lookup => 'Pause on lookup';
  String get pdf_bookmark_added => 'Bookmark added';
  String get pdf_bookmarks => 'Bookmarks';
  String get pdf_bookmarks_empty => 'No bookmarks yet.';
  String get pdf_no_text_layer =>
      'This PDF has no text layer (scanned image), so lookup is unavailable.';
  String get pdf_outline => 'Contents';
  String get pdf_outline_empty => 'This PDF has no contents.';
  String get pick_image => 'Pick image';
  String get play => 'Play';
  String get play_from_cue => 'Play from sentence';
  String get playback_auto_pause => 'Subtitle pause playback mode';
  String get playback_speed => 'Speed';
  String get popup_append_sentence_tooltip => 'Add this sentence to the card';
  String get popup_auto_expand_dictionaries => 'Auto-expand rows';
  String get popup_auto_expand_dictionaries_hint =>
      'Keep the first N rows of dictionary blocks expanded even when \'Collapse dictionaries\' is on. The expanded count follows the column setting: rows x columns (0 = collapse all)';
  String get popup_bottom_docked => 'Bottom-docked popup';
  String get popup_bottom_docked_hint =>
      'Pin the lookup popup as a full-width panel at the bottom of the screen instead of following the looked-up word.';
  String get popup_clear_sentence_draft_tooltip => 'Clear added sentences';
  String get popup_compact_glossaries => 'Compact glossaries';
  String get popup_compact_glossaries_hint =>
      'Show dictionary glossary entries inline, separated by \' | \', instead of one per line in the lookup popup.';
  String get popup_ctx_adjust_button => 'Adjust context';
  String get popup_ctx_box_current => 'Current sentence';
  String get popup_ctx_box_empty => '(none)';
  String get popup_ctx_box_next => 'Next context';
  String get popup_ctx_box_prev => 'Previous context';
  String get popup_ctx_cancel => 'Cancel';
  String get popup_ctx_confirm => 'Confirm mining';
  String get popup_ctx_modal_count => 'Selected %d sentences';
  String get popup_ctx_modal_eyebrow => 'Adjust before mining';
  String get popup_ctx_modal_title => 'Select sentence context';
  String get popup_ctx_next_minus => 'Remove next';
  String get popup_ctx_next_plus => 'Add next';
  String get popup_ctx_prev_minus => 'Remove previous';
  String get popup_ctx_prev_plus => 'Add previous';
  String get popup_ctx_preview_audio => 'Preview audio';
  String get popup_ctx_preview_stop => 'Stop';
  String get popup_ctx_preview_unavailable => 'No audio for this sentence';
  String get popup_dictionary_max_columns =>
      'Max dictionary columns (auto-fill)';
  String get popup_dictionary_max_columns_hint =>
      'Auto-fills up to this many dictionary columns per row; narrower screens use fewer';
  String get popup_font_size_decrease => 'Smaller dictionary text';
  String get popup_font_size_increase => 'Larger dictionary text';
  String get popup_instant_scroll => 'Instant popup scroll';
  String get popup_instant_scroll_hint =>
      'Jump the lookup popup by fixed distances without animated scrolling for e-ink screens.';
  String get popup_max_height => 'Popup max height';
  String get popup_max_width => 'Popup max width';
  String get popup_no_audio_available => 'No audio available';
  String get popup_sentence_context_next_label => 'After';
  String get popup_sentence_context_prev_label => 'Before';
  String get popup_wheel_speed => 'Popup scroll speed';
  String get popup_wheel_speed_hint =>
      'Mouse-wheel scroll speed for the dictionary popup (also applies to the browser extension).';
  String get prev_sentence => 'Previous sentence';
  String get preview => 'Preview';
  String get preview_badge => 'Badge';
  String get preview_switch => 'Switch';
  String get processing_in_progress => 'Preparing images';
  String get profile_book_profile => 'Assign profile';
  String profile_confirm_delete({required Object name}) =>
      'Delete profile "${name}"?';
  String get profile_copy => 'Copy';
  String get profile_copy_suffix => '(Copy)';
  String get profile_create => 'Create profile';
  String get profile_delete => 'Delete';
  String get profile_export => 'Export';
  String get profile_export_failed => 'Export failed';
  String profile_follow_default_current({required Object name}) =>
      'Following default (${name})';
  String get profile_import => 'Import';
  String get profile_import_failed => 'Import failed';
  String get profile_import_invalid => 'Invalid profile file';
  String get profile_import_success => 'Profile imported';
  String get profile_label => 'Profile';
  String get profile_management => 'Profile management';
  String get profile_media_audiobook => 'Audiobook';
  String get profile_media_browser => 'Browser';
  String get profile_media_epub => 'Book';
  String get profile_media_game => 'Game';
  String get profile_media_lyrics => 'Lyrics mode';
  String get profile_media_manga => 'Manga';
  String get profile_media_none => 'None';
  String get profile_media_srtbook => 'Subtitle book';
  String get profile_media_type_bindings => 'Media type bindings';
  String get profile_media_video => 'Video';
  String get profile_name_hint => 'Profile name';
  String get profile_rename => 'Rename';
  String get quick_import_title => 'Quick import';
  String get reader_audiobook_current_chapter => 'Current chapter';
  String get reader_audiobook_tab_chapters => 'Chapters';
  String get reader_audiobook_tab_files => 'Audio files';
  String get reader_auto_hide_chrome_duration =>
      'Auto-hide floating controls after';
  String get reader_blur_images => 'Blur images (spoiler guard)';
  String get reader_content_timeout =>
      'Content loading timed out. Reopen if display is abnormal';
  String get reader_copy_image => 'Copy image';
  String get reader_font_size => 'Font size';
  String get reader_font_vpal => 'VPAL (vertical alt)';
  String get reader_font_weight => 'Font weight';
  String get reader_furigana_mode => 'Furigana';
  String get reader_furigana_mode_hint => '';
  String get reader_gallery_empty => 'No illustrations in this book';
  String get reader_gallery_jump => 'Jump to this illustration';
  String get reader_gallery_tooltip => 'Browse illustrations';
  String get reader_horizontal => 'Horizontal';
  String reader_image_copy_failed({required Object error}) =>
      'Failed to copy image: ${error}';
  String get reader_image_file_unavailable => 'Image file is unavailable.';
  String reader_image_share_failed({required Object error}) =>
      'Failed to share image: ${error}';
  String get reader_line_height => 'Line height';
  String get reader_merge_image_pages => 'Merge illustration pages into text';
  String get reader_merge_image_pages_subtitle =>
      'Standalone single-image chapters render inline in the adjacent text chapter instead of on their own page';
  String get reader_no_books_added => 'No books in library';
  String get reader_not_bound_cannot_rematch =>
      'Audiobook not bound to a book, cannot re-match';
  String get reader_open_failed => 'Failed to open book';
  String get reader_orient_mixed => 'Mixed';
  String get reader_orient_upright => 'Upright';
  String get reader_page_columns_auto => 'Auto';
  String get reader_paginated => 'Paginated';
  String get reader_paragraph_spacing => 'Paragraph spacing';
  String get reader_reader_styles => 'Prioritize book styles';
  String get reader_scroll => 'Scroll';
  String get reader_settings_section => 'Reader settings';
  String get reader_stats_finish_book => 'Book';
  String get reader_stats_finish_chapter => 'Chapter';
  String get reader_stats_session => 'This session';
  String get reader_stats_this_book => 'This book';
  String get reader_stats_time_to_finish => 'Time to finish';
  String get reader_text_indentation => 'Paragraph indent';
  String get reader_text_justify => 'Text justification';
  String get reader_theme => 'Theme';
  String get reader_theme_black => 'Black';
  String get reader_theme_dark => 'Dark';
  String get reader_theme_ecru => 'Ecru';
  String get reader_theme_eyecare => 'Eye care';
  String get reader_theme_gray => 'Gray';
  String get reader_theme_light => 'White';
  String get reader_theme_water => 'Water blue';
  String get reader_top_progress_floating => 'Floating reading progress';
  String get reader_unsupported_platform =>
      'The reader is not yet available on this platform.';
  String get reader_vert_kerning => 'Font kerning (vertical)';
  String get reader_vert_text_orient => 'Text orientation';
  String get reader_vertical => 'Vertical';
  String get reader_view_mode_label => 'Page / scroll';
  String get reader_vn => 'Visual novel';
  String get reader_writing_direction => 'Writing direction';
  String get reading_activity => 'Study activity';
  String get reading_progress => 'Reading progress';
  String get reading_section_mode => 'Mode & orientation';
  String get reading_statistics => 'Reading statistics';
  String get reading_stats_day_reset_hour => 'Day starts at';
  String get reading_stats_day_reset_hour_hint =>
      'Reading before this hour counts toward the previous day. Affects today and the last N days in statistics; only records written after the change use the new boundary.';
  String get reading_stats_idle_timeout => 'Idle timeout';
  String get reading_stats_idle_timeout_hint =>
      'Stop counting reading time after this many minutes without turning a page, scrolling, or looking up a word. Applies to novels, PDFs and manga only; video counts while playing.';
  String get record => 'Record';
  String get refresh => 'Refresh';
  String get rematch_adjust_window => 'Adjust search window and re-match';
  String get rematch_run => 'Re-run match';
  String get remote_audio_source => 'Remote audio';
  String get remote_book_audiobook_download_failed =>
      'Could not download audiobook for this book';
  String get remote_book_download => 'Download to this device';
  String get remote_book_download_failed => 'Could not download remote book';
  String get remote_book_downloaded => 'Downloaded remote book';
  String get remote_book_downloading => 'Downloading…';
  String get remote_book_info => 'Info';
  String get remote_book_info_has_audiobook => 'Includes audiobook';
  String get remote_book_list_failed =>
      'Couldn\'t fetch the remote library from the Fushi Interconnect server.';
  String get remote_book_unavailable => 'Fushi Interconnect server unavailable';
  String get remote_delete_audiobook_partial =>
      'Book deleted, but its audiobook could not be removed on the paired device';
  String get remote_delete_failed => 'Could not delete it on the paired device';
  String get remote_delete_unsupported =>
      'The paired device is too old to support remote deletion. Update Fushi there first.';
  String get remote_dict_lookup => 'Remote dictionary lookup';
  String get remote_dict_lookup_hint =>
      'When local dictionaries miss, query the configured Fushi server';
  String get remote_video_download => 'Download to this device';
  String get remote_video_download_failed => 'Could not download remote video';
  String get remote_video_downloaded => 'Downloaded remote video';
  String get remote_video_downloading => 'Downloading…';
  String get remote_video_info => 'Info';
  String get remote_video_info_has_subtitle => 'Includes subtitles';
  String get remote_video_info_no_subtitle => 'No subtitles';
  String remote_video_info_size({required Object size}) => 'Size: ${size}';
  String get remote_video_list_failed =>
      'Couldn\'t load remote videos. Make sure the other device is online and on the same network, then try again.';
  String get remote_video_unavailable =>
      'Fushi Interconnect server unavailable';
  String get rename_collection => 'Rename collection';
  String get render_restart_required => 'Takes effect after restarting the app';
  String get repeat_cue => 'Repeat sentence';
  String get reset => 'Reset';
  String get resource_version_batch => 'Batch';
  String resource_version_episode_count({required Object n}) => '${n} episodes';
  String get resource_version_show_files => 'Show files';
  String get resource_version_view_flat => 'All releases';
  String get retry => 'Retry';
  String get reverse_arrow_page_turn =>
      'Reverse keyboard left/right page-turn direction';
  String get reverse_navigation_bar => 'Reverse navigation bar';
  String get reverse_reader_bottom_bar => 'Reverse reader bottom bar';
  String get saved_tags => 'Tags saved.';
  String get scan_non_japanese_text => 'Scan non-Japanese text';
  String get scan_non_japanese_text_hint =>
      'When off, selection stops at non-Japanese characters';
  String get scrape_all => 'Scrape all';
  String scrape_all_confirm({required Object n}) =>
      'Match all ${n} library items by title. Only high-confidence matches are applied automatically — videos are scored on the title together with year, type and other signals, while books and games require a unique exact title. Covers you chose yourself are never overwritten (local images you set, entries you picked in the match dialog, and poster files placed in the folder), and ambiguous results stay pending for manual review.';
  String scrape_all_done({
    required Object applied,
    required Object review,
    required Object skipped,
    required Object failed,
  }) =>
      'Done: ${applied} applied, ${review} need review, ${skipped} skipped, ${failed} failed';
  String get scrape_all_empty =>
      'There are no items to scrape in this library.';
  String scrape_all_item({required Object title}) => 'Processing: ${title}';
  String scrape_all_running({required Object current, required Object total}) =>
      'Scraping ${current} / ${total}';
  String get scrape_all_start => 'Start';
  String scrape_all_title({required Object kind}) => 'Scrape all ${kind}';
  String get scrape_failure_detail_hide => 'Hide details';
  String get scrape_failure_detail_show => 'Show details';
  String get scrape_reason_network =>
      'Could not get a valid response from the cover source. Check your network and retry.';
  String get scrape_reason_server =>
      'The cover source returned an error. Try again later or pick another candidate.';
  String get search => 'Search';
  String get search_ellipsis => 'Search...';
  String get searching_in_progress => 'Searching for ';
  String get section_advanced_typography => 'Advanced';
  String get section_audiobook => 'Audiobook';
  String get section_epub => 'EPUB Library';
  String get section_floating_lyric => 'Floating lyric';
  String get section_interface => 'Interface';
  String get section_layout => 'Layout & display';
  String get section_navigation => 'Navigation';
  String get section_network => 'Network';
  String get section_page_turn_direction => 'Page-turn direction';
  String get section_services_metadata => 'Metadata scraping';
  String get section_services_resources => 'Resource indexers';
  String get section_services_subtitles => 'Subtitle sources';
  String get section_typography => 'Typography';
  String get section_update => 'Update settings';
  String get section_video_danmaku => 'Danmaku';
  String get section_video_library => 'Library';
  String get section_video_playback => 'Playback';
  String get section_video_subtitles => 'Subtitles';
  String get selection_copy_empty => 'No text selected.';
  String get selection_share_failed => 'Could not open the share sheet.';
  String get selection_web_search => 'Search the web';
  String get selection_web_search_unavailable => 'No app can search the web.';
  String get send => 'Send';
  String get series => 'Series';
  String get series_created => 'Series created';
  String get series_default_name => 'New series';
  String series_item_count({required Object n}) => '${n} items';
  String get series_name_hint => 'Series name';
  String get server_address => 'Server address';
  String get settings => 'Settings';
  String get settings_check_update_now => 'Check for updates';
  String get settings_content_language_description =>
      'Fallback language for content that does not declare one. Per-book, per-video, per-game and per-dictionary settings override this.';
  String get settings_content_language_title => 'Default content language';
  String get settings_content_language_unset => 'Not set';
  String get settings_destination_appearance => 'Appearance';
  String get settings_destination_card_creation => 'Card creation';
  String get settings_destination_diagnostics => 'Diagnostics';
  String get settings_destination_interconnect => 'Fushi Interconnect';
  String get settings_destination_listening => 'Listening';
  String get settings_destination_lookup => 'Lookup';
  String get settings_destination_manga_summary =>
      'Reader, OCR and online catalog';
  String get settings_destination_profiles => 'Configuration schemes';
  String get settings_destination_reading => 'Reading';
  String get settings_destination_reading_controls => 'Reading controls';
  String get settings_destination_services => 'Online services';
  String get settings_destination_services_summary =>
      'Third-party APIs, indexers and media servers';
  String get settings_destination_storage => 'Storage';
  String get settings_destination_storage_summary =>
      'Data location and disk usage';
  String get settings_destination_sync_backup => 'Sync & backup';
  String get settings_destination_system => 'System';
  String get settings_destination_system_summary =>
      'General, updates & diagnostics';
  String get settings_destination_tracking => 'Media tracking';
  String get settings_destination_video => 'Video';
  String get settings_downloads_open_page_hint =>
      'Open the Downloads page (tasks, resources, subscriptions)';
  String get settings_search_hint => 'Search settings';
  String get settings_search_no_results => 'No matching settings';
  String get settings_secret_hide => 'Hide value';
  String get settings_secret_show => 'Show value';
  String get settings_section_app_shell => 'App';
  String get settings_section_data_storage => 'Data storage location';
  String get settings_section_gal_hook_overlay => 'Galgame caption overlay';
  String get settings_section_general => 'General';
  String get settings_section_lookup_audio => 'Pronunciation & feedback';
  String get settings_section_lookup_content => 'Entry content';
  String get settings_section_lookup_integrations => 'External integrations';
  String get settings_section_lookup_popup_window => 'Popup window';
  String get settings_section_lookup_trigger => 'Lookup trigger';
  String get settings_section_modules => 'Feature modules';
  String get settings_section_page_turn_input => 'Page turning & interaction';
  String get settings_section_reader_chrome => 'Reader interface';
  String get settings_section_reading_stats => 'Reading statistics';
  String get settings_section_update_channel => 'Update channel';
  String get settings_services_link_subtitle =>
      'Jimaku, OpenSubtitles, Torznab, Jellyfin, AniDB and TMDB are configured together here';
  String get settings_view_changelog => 'View changelog';
  String get share => 'Share';
  String get share_theme => 'Share theme';
  String get shortcut_action_audiobook_next_sentence => 'Next sentence';
  String get shortcut_action_audiobook_play_pause => 'Play / pause';
  String get shortcut_action_audiobook_prev_sentence => 'Previous sentence';
  String get shortcut_action_audiobook_seek_clicked =>
      'Seek audio to clicked sentence';
  String get shortcut_action_dpad_down => 'D-pad down';
  String get shortcut_action_dpad_left => 'D-pad left';
  String get shortcut_action_dpad_right => 'D-pad right';
  String get shortcut_action_dpad_up => 'D-pad up';
  String get shortcut_action_global_back => 'Back / exit one level';
  String get shortcut_action_global_context_menu => 'Open context menu';
  String get shortcut_action_global_external_lookup =>
      'App-external lookup shortcut';
  String get shortcut_action_global_scroll_page_down =>
      'Scroll down one screen';
  String get shortcut_action_global_scroll_page_up => 'Scroll up one screen';
  String get shortcut_action_global_toggle_fullscreen => 'Toggle fullscreen';
  String get shortcut_action_home_focus_search => 'Focus search';
  String get shortcut_action_home_tab_books => 'Books tab';
  String get shortcut_action_home_tab_dict => 'Dictionary tab';
  String get shortcut_action_home_tab_next => 'Next tab';
  String get shortcut_action_home_tab_prev => 'Previous tab';
  String get shortcut_action_home_tab_settings => 'Settings tab';
  String get shortcut_action_manga_dismiss_dict => 'Close dictionary';
  String get shortcut_action_manga_page_backward => 'Previous page';
  String get shortcut_action_manga_page_forward => 'Next page';
  String get shortcut_action_manga_pan_down => 'Pan down';
  String get shortcut_action_manga_pan_left => 'Pan left';
  String get shortcut_action_manga_pan_right => 'Pan right';
  String get shortcut_action_manga_pan_up => 'Pan up';
  String get shortcut_action_manga_toggle_chrome => 'Toggle manga interface';
  String get shortcut_action_popup_mine_entry => 'Create card (mine)';
  String get shortcut_action_popup_next_entry => 'Next word entry';
  String get shortcut_action_popup_play_audio => 'Play word audio';
  String get shortcut_action_popup_prev_entry => 'Previous word entry';
  String get shortcut_action_reader_create_card_from_popup =>
      'Create card from popup';
  String get shortcut_action_reader_dismiss_dict => 'Dismiss dictionary';
  String get shortcut_action_reader_enter_caret => 'Enter lookup cursor';
  String get shortcut_action_reader_lookup_at_cursor =>
      'Lookup / activate cursor';
  String get shortcut_action_reader_open_audiobook => 'Open audiobook panel';
  String get shortcut_action_reader_open_gallery =>
      'Open illustrations gallery';
  String get shortcut_action_reader_open_menu => 'Open settings menu';
  String get shortcut_action_reader_open_navigation => 'Open navigation';
  String get shortcut_action_reader_open_statistics =>
      'Open reading statistics';
  String get shortcut_action_reader_page_backward => 'Previous page';
  String get shortcut_action_reader_page_forward => 'Next page';
  String get shortcut_action_reader_shift_lookup => 'Look up word at caret';
  String get shortcut_action_reader_toggle_chrome => 'Toggle controls';
  String get shortcut_action_reader_toggle_furigana => 'Toggle furigana';
  String get shortcut_action_video_align_subtitle_to_next =>
      'Align next subtitle to now';
  String get shortcut_action_video_align_subtitle_to_prev =>
      'Align previous subtitle to now';
  String get shortcut_action_video_cycle_secondary_subtitle_obscure =>
      'Cycle secondary subtitle obscure';
  String get shortcut_action_video_cycle_subtitle_obscure =>
      'Cycle subtitle obscure mode';
  String get shortcut_action_video_dismiss_dict => 'Dismiss dictionary';
  String get shortcut_action_video_enter_caret =>
      'Enter subtitle lookup cursor';
  String get shortcut_action_video_hold_speed => 'Hold for temporary speed';
  String get shortcut_action_video_next_chapter => 'Next chapter';
  String get shortcut_action_video_next_frame => 'Next frame';
  String get shortcut_action_video_next_subtitle => 'Next subtitle';
  String get shortcut_action_video_open_subtitle_align =>
      'Open subtitle waveform align';
  String get shortcut_action_video_pause => 'Pause';
  String get shortcut_action_video_play => 'Play';
  String get shortcut_action_video_previous_chapter => 'Previous chapter';
  String get shortcut_action_video_previous_frame => 'Previous frame';
  String get shortcut_action_video_previous_subtitle => 'Previous subtitle';
  String get shortcut_action_video_replay_current_subtitle =>
      'Replay current subtitle';
  String get shortcut_action_video_replay_previous_subtitle =>
      'Replay previous subtitle';
  String get shortcut_action_video_reset_speed => 'Reset speed';
  String get shortcut_action_video_screenshot => 'Screenshot';
  String get shortcut_action_video_search_subtitle_list =>
      'Search subtitle list';
  String get shortcut_action_video_seek_backward => 'Seek backward';
  String get shortcut_action_video_seek_forward => 'Seek forward';
  String get shortcut_action_video_speed_down => 'Slow down';
  String get shortcut_action_video_speed_up => 'Speed up';
  String get shortcut_action_video_subtitle_delay_decrease =>
      'Subtitle delay −';
  String get shortcut_action_video_subtitle_delay_increase =>
      'Subtitle delay +';
  String get shortcut_action_video_toggle_favorite_sentence =>
      'Favorite current sentence';
  String get shortcut_action_video_toggle_fullscreen => 'Toggle fullscreen';
  String get shortcut_action_video_toggle_immersive_lock =>
      'Toggle immersive lock';
  String get shortcut_action_video_toggle_mute => 'Toggle mute';
  String get shortcut_action_video_toggle_play_pause => 'Play / pause';
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle hide secondary subtitle';
  String get shortcut_action_video_toggle_shader_compare =>
      'Toggle shader compare';
  String get shortcut_action_video_toggle_subtitle_blur =>
      'Toggle subtitle blur';
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle hide subtitles';
  String get shortcut_action_video_toggle_subtitle_list =>
      'Toggle subtitle list';
  String get shortcut_action_video_volume_down => 'Volume down';
  String get shortcut_action_video_volume_up => 'Volume up';
  String get shortcut_assign_pick_action => 'Assign to action…';
  String get shortcut_clear => 'Clear';
  String shortcut_conflict({required Object s}) => 'Already used by: ${s}';
  String get shortcut_conflict_keep_both => 'Keep both';
  String get shortcut_conflict_keep_both_hint =>
      'Both actions keep this binding. Whichever scope resolves first wins at press time.';
  String shortcut_conflict_replace_confirm({required Object s}) =>
      'This shortcut is already used by ${s}. Move it to this action?';
  String get shortcut_gamepad => 'Gamepad';
  String get shortcut_gamepad_brand_label => 'Gamepad button style';
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  String get shortcut_gamepad_pick_list => 'Choose from list';
  String get shortcut_gamepad_unavailable_hint =>
      'GameInput component not detected — gamepad support is unavailable. Install the Windows Gaming Services to enable controller support.';
  String get shortcut_keyboard => 'Keyboard';
  String get shortcut_mouse_back => 'Back button';
  String get shortcut_mouse_button => 'Mouse button';
  String get shortcut_mouse_button_not_supported =>
      'This action only accepts mouse side buttons (back/forward).';
  String get shortcut_mouse_forward => 'Forward button';
  String get shortcut_mouse_left => 'Left click';
  String get shortcut_mouse_middle => 'Middle click';
  String get shortcut_mouse_right => 'Right click';
  String get shortcut_press_gamepad => 'Press a gamepad button...';
  String get shortcut_press_key => 'Press a key combination...';
  String get shortcut_press_mouse_button => 'Press a mouse button...';
  String get shortcut_press_wheel => 'Hold a modifier key and scroll here';
  String get shortcut_reset_confirm =>
      'Reset all shortcuts in this section to defaults?';
  String get shortcut_reset_defaults => 'Reset to defaults';
  String get shortcut_scope_audiobook => 'Audiobook';
  String get shortcut_scope_dictionary_popup => 'Dictionary popup';
  String get shortcut_scope_dictionary_popup_note =>
      'Works while the pointer is over a dictionary popup';
  String get shortcut_scope_gamepad => 'Gamepad';
  String get shortcut_scope_global => 'Global';
  String get shortcut_scope_global_external => 'Global (app-external)';
  String get shortcut_scope_global_external_desktop_note =>
      'Mouse triggers accept side buttons only (back/forward). Other buttons keep their normal meaning in other apps, so they are rejected here.';
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this shortcut.';
  String get shortcut_scope_home => 'Home';
  String get shortcut_scope_manga => 'Manga';
  String get shortcut_scope_reader => 'Reader';
  String get shortcut_scope_universal => 'Back / Exit';
  String get shortcut_scope_video => 'Video';
  String get shortcut_settings_title => 'Keyboard shortcuts';
  String get shortcut_stop_capture => 'Stop';
  String get shortcut_tap_to_assign => 'Not set · tap to assign';
  String get shortcut_view_list => 'List view';
  String get shortcut_view_visual => 'Controller layout';
  String get shortcut_wheel => 'Mouse wheel';
  String get shortcut_wheel_down => 'Wheel down';
  String get shortcut_wheel_needs_modifier =>
      'A bare wheel scrolls the popup — hold Alt / Ctrl / Shift while scrolling';
  String get shortcut_wheel_up => 'Wheel up';
  String get show_bottom_bar_cue => 'Show current sentence';
  String get show_expression_tags => 'Show expression tags';
  String get show_floating_lyric => 'Floating lyric overlay';
  String get show_media_notification => 'Show media notification';
  String get show_options => 'Show options';
  String get show_top_progress_bar => 'Reading progress indicator';
  String get skip_action => 'Skip action';
  String skip_action_seconds({required Object n}) => '${n} seconds';
  String get skip_action_sentence => '1 sentence';
  String get sort_by => 'Sort';
  String get sort_imported => 'Import date';
  String get sort_recent_read => 'Recently read';
  String get sort_recent_watched => 'Recently watched';
  String get sort_title => 'Name';
  String get source_description_epub => 'EPUB reading & dictionary lookup';
  String get source_name_bookshelf => 'Bookshelf';
  String get spread_auto => 'Auto';
  String get spread_direction => 'Spread direction';
  String get spread_direction_ltr => 'Left to right';
  String get spread_direction_rtl => 'Right to left';
  String get spread_mode => 'Spread mode';
  String get spread_off => 'Off';
  String get spread_on => 'On';
  String get srt_audio_unresolved => 'Audio file not found — please re-attach';
  String get srt_book_reimport => 'Re-import';
  String get srt_book_reimport_body_rebuilt =>
      'Book text rebuilt — reopen the book to read it';
  String get srt_book_reimport_no_cues =>
      'No subtitle lines found in that file';
  String get srt_book_reimport_subtitle_hint =>
      'Replacing the subtitle rebuilds the book text from the new cues.';
  String get srt_books_section => 'Subtitle audiobooks';
  String srt_delete_confirm({required Object title}) =>
      'Delete 『${title}』? This cannot be undone.';
  String get srt_delete_title => 'Delete subtitle book';
  String get srt_epub_not_ready => 'Book not ready — please re-import';
  String get srt_import => 'Import book';
  String get srt_import_audio_needs_subtitle =>
      'Audio must be paired with subtitles. To attach audio to an existing book, long-press the book on the shelf.';
  String get srt_import_author_hint => 'Author (optional)';
  String get srt_import_error => 'Import failed';
  String srt_import_files_selected({required Object n}) =>
      '${n} files selected';
  String get srt_import_hint_epub_or_srt =>
      'Pick a book or subtitle file to import.';
  String get srt_import_missing_input =>
      'Please pick at least a book or subtitle file';
  String get srt_import_missing_title => 'Please enter a book title';
  String get srt_import_pick_audio_dir => 'Pick audio directory';
  String get srt_import_pick_audio_files => 'Pick audio files';
  String get srt_import_pick_cover => 'Pick cover image';
  String get srt_import_pick_epub => 'Pick book file';
  String get srt_import_pick_subtitle_files => 'Pick subtitle files';
  String get srt_import_success => 'Book imported';
  String get srt_import_title_hint => 'Book title';
  String get startup_default_dictionary_tab => 'Open lookup on startup';
  String get startup_default_dictionary_tab_hint =>
      'Start the home screen on the lookup tab instead of the current default.';
  String get stash => 'Stash';
  String get stash_added_multiple =>
      'Multiple items have been added to the Stash.';
  String stash_added_single({required Object term}) =>
      '『${term}』has been added to the Stash.';
  String get stash_clear_description =>
      'All contents will be cleared. Are you sure?';
  String stash_clear_single({required Object term}) =>
      '『${term}』has been removed from the Stash.';
  String get stash_clear_title => 'Clear stash';
  String get stash_nothing_to_pop => 'No items to be popped from the Stash.';
  String get stash_placeholder => 'No items in the Stash';
  String get stat_all_time => 'All time';
  String get stat_analysis => 'Analysis';
  String get stat_bookshelf_compare => 'Bookshelf';
  String get stat_center_tab_overview => 'Overview';
  String get stat_center_title => 'Statistics center';
  String get stat_clear_all => 'Clear statistics';
  String get stat_clear_all_confirm => 'Clear';
  String get stat_clear_all_game_message =>
      'Clear all game play time and session counts? Your game library and activity timeline are kept. This cannot be undone.';
  String get stat_clear_all_reading_message =>
      'Clear all reading time, character counts, and lookup/mining counts? Your saved words, sentences, and mined cards are kept. This cannot be undone.';
  String get stat_clear_all_title => 'Clear all statistics';
  String get stat_clear_all_video_message =>
      'Clear all watch time, subtitle character counts, and lookup/mining counts? Your saved words, sentences, and mined cards are kept. This cannot be undone.';
  String get stat_daily_average => 'Daily avg';
  String get stat_delete_message =>
      'Delete this item\'s time, character count, and lookup/mining statistics? Your saved words and sentences are not affected.';
  String get stat_delete_title => 'Delete statistics';
  String get stat_detail_empty => 'No activity in this period';
  String get stat_detail_ungrouped => 'Ungrouped';
  String get stat_fastest_day => 'Fastest day';
  String get stat_favorited => 'Favorited';
  String get stat_favorited_sentence => 'Favorited sentences';
  String stat_format_chars({required Object n}) => '${n} characters';
  String stat_format_days({required Object n}) => '${n} days';
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h} hr ${m} min';
  String stat_format_minutes({required Object n}) => '${n} min';
  String stat_format_pages({required Object n}) => '${n} pages';
  String get stat_goal => 'Daily goal';
  String get stat_goal_daily => 'Daily goal';
  String get stat_goal_presets => 'Presets';
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} chars';
  String get stat_goal_reached => 'Goal reached';
  String stat_goal_recent_average({required Object n}) =>
      'Last 7 days: ${n} chars/day on average';
  String get stat_goal_set => 'Set goal';
  String get stat_goal_unit_chars => 'chars';
  String get stat_goal_weekly => 'Weekly goal';
  String get stat_hourly_band_epub => 'Text books';
  String get stat_hourly_band_manga => 'Manga';
  String get stat_hourly_band_pdf => 'PDF';
  String get stat_hourly_band_unattributed => 'Unsplit history';
  String get stat_hourly_unattributed_note =>
      'Hours recorded before per-format tracking existed have no type stored, so they cannot be split. They are shown as a combined total and are not assigned to any type.';
  String get stat_last_30_days => 'Last 30 days';
  String get stat_lookup => 'Lookups';
  String get stat_metric_chars => 'Characters';
  String get stat_metric_speed => 'Speed';
  String get stat_metric_time => 'Time';
  String get stat_mined => 'Cards mined';
  String get stat_no_data => 'No reading data yet';
  String get stat_range_and_trend => 'Range & trend';
  String get stat_recent_active => 'Active Days (7d)';
  String get stat_refresh => 'Refresh';
  String get stat_session_delete => 'Delete session';
  String get stat_session_delete_message =>
      'Delete this session\'s time, character and page counts? Your saved words and sentences are not affected.';
  String stat_sessions_count({required Object n}) => '${n} sessions';
  String get stat_sessions_empty => 'No sessions yet';
  String get stat_sessions_recent => 'Recent sessions';
  String get stat_sessions_show_all => 'All sessions';
  String get stat_slowest_day => 'Slowest day';
  String get stat_sort_by_chars => 'By characters';
  String get stat_sort_by_speed => 'By speed';
  String get stat_sort_by_time => 'By time';
  String get stat_source_breakdown => 'By source';
  String get stat_speed_anomaly => 'Anomaly';
  String get stat_speed_avg => 'Moving average';
  String stat_speed_cph({required Object n}) => '${n} chars/hr';
  String get stat_speed_summary => 'Speed summary';
  String get stat_streak => 'Streak';
  String get stat_this_month => 'This month';
  String get stat_this_week => 'This week';
  String get stat_today => 'Today';
  String get stat_today_hourly => 'Today by hour';
  String get stat_trend_daily => 'Daily';
  String get stat_trend_monthly => 'Monthly';
  String get stat_trend_weekly => 'Weekly';
  String get stat_typical_day => 'Typical day';
  String get stat_vs_prev => 'vs prev 14d';
  String get stat_weighted_avg_speed => 'Weighted avg';
  String get stop => 'Stop';
  String get storage_bundled_hint =>
      'Shipped with the installer; deleted files come back on the next update, listed for reference only.';
  String get storage_bundled_section => 'Bundled components';
  String get storage_category_backups => 'Leftover backup archives';
  String get storage_category_books => 'Books & audiobooks';
  String get storage_category_cache => 'Caches and temporary files';
  String get storage_category_covers => 'Covers & thumbnails';
  String get storage_category_custom_fonts => 'Custom fonts';
  String get storage_category_database => 'Database & internal data';
  String get storage_category_dictionaries => 'Dictionaries';
  String get storage_category_exports => 'Exports';
  String get storage_category_ocr_models => 'Manga OCR models';
  String get storage_category_other => 'Other uncategorised';
  String get storage_category_shaders => 'Video shaders';
  String get storage_category_subtitles => 'Subtitles';
  String get storage_category_video_downloads => 'Video downloads';
  String get storage_category_web => 'Web archive & browser data';
  String get storage_dictionary_delete_incomplete =>
      'Dictionary still present after deletion, see error log';
  String storage_entry_backups_label({required Object n}) =>
      '${n} archive(s) left by the last export';
  String storage_entry_database_snapshots_label({required Object n}) =>
      'Database backup snapshots (${n} files)';
  String get storage_entry_delete_backups_confirm_body =>
      'Delete these temporary local backup archives? Make sure you have saved or shared any copy you still need.';
  String get storage_entry_delete_book_confirm_body =>
      'This removes the book, its reading progress and paired audio copies from this device.';
  String storage_entry_delete_confirm_title({required Object name}) =>
      'Delete ${name}?';
  String get storage_entry_delete_database_snapshots_confirm_body =>
      'This removes all leftover database backup snapshots (corrupt-bak / pre-restore / legacy migration copies). The live database and its -wal/-shm sidecars are not touched.';
  String get storage_entry_delete_dictionary_confirm_body =>
      'This removes the dictionary and its imported data.';
  String get storage_entry_delete_done => 'Deleted';
  String storage_entry_delete_failed({required Object reason}) =>
      'Delete failed: ${reason}';
  String get storage_entry_delete_files_confirm_body =>
      'This deletes it from disk right away. Nothing in your library references it - it is cached, exported or re-downloadable data.';
  String get storage_entry_external_audio_hint =>
      'Audio references the original files, using no app storage';
  String storage_entry_more_rest({required Object n, required Object size}) =>
      '${n} more items, ${size} in total';
  String storage_modules_anime4k_delete_done({required Object n}) =>
      'Deleted ${n} shader files';
  String get storage_modules_anime4k_hint =>
      'Can be downloaded again anytime in video settings';
  String get storage_modules_anime4k_title => 'Anime4K shaders';
  String get storage_overview_refresh => 'Rescan';
  String get storage_overview_scanning => 'Scanning…';
  String get storage_overview_section => 'Disk usage';
  String get storage_overview_total => 'Total';
  String get storage_permissions =>
      'Please grant the following permissions for exporting to AnkiDroid.';
  String get storage_shaders_delete_anime4k => 'Delete Anime4K shaders';
  String get stream => 'Stream';
  String get subscription_edit_rule_hint =>
      'Identity and version rules cannot be changed here. Re-subscribe to switch versions - history is kept.';
  String get subscription_edit_title => 'Edit subscription';
  String get subscription_item_status_discovered => 'Pending';
  String get subscription_item_status_failed => 'Failed';
  String get subscription_item_status_processed => 'Imported';
  String get subscription_item_status_queued => 'Queued';
  String get subscription_item_status_skipped => 'Skipped';
  String get subscription_items_empty => 'No releases tracked yet';
  String subscription_last_matched({required Object time}) =>
      'Last match: ${time}';
  String get subscription_legacy_badge => 'Legacy';
  String get subscription_legacy_hint =>
      'Imported from the legacy system; automatic checks do not apply.';
  String get subscription_mode_one_shot => 'One-shot';
  String get subscription_mode_ongoing => 'Ongoing';
  String subscription_next_check({required Object time}) =>
      'Next check: ${time}';
  String get subscription_no_match => 'No matching subscriptions';
  String get subscription_search_hint => 'Search subscriptions';
  String get subscription_show_items => 'Episode history';
  String get subscription_sort_created => 'Date added';
  String get subscription_sort_last_checked => 'Last checked';
  String get subscription_sort_last_matched => 'Last match';
  String get subtitle_version_ai_translated => 'AI translated';
  String get subtitle_version_content_language => 'Content';
  String subtitle_version_episode_count({required Object n}) => '${n} episodes';
  String get subtitle_version_show_files => 'Show files';
  String subtitle_version_unnumbered_count({required Object n}) =>
      '${n} unnumbered';
  String get subtitle_version_view_files => 'File list';
  String get swipe_page_turn_sensitivity => 'Swipe page-turn sensitivity';
  String get sync_account => 'Account';
  String get sync_asset_dictionary => 'Dictionaries';
  String get sync_asset_dictionary_download => 'Download dictionaries';
  String get sync_asset_dictionary_upload => 'Upload dictionaries';
  String get sync_asset_download_action => 'Download';
  String get sync_asset_download_hint =>
      'Fetches what the remote has and this device does not - including entries you deleted locally.';
  String get sync_asset_legacy_notice_body =>
      'This device had automatic syncing on for dictionaries and local audio databases. That switch is gone - use the Upload / Download actions below when you want to transfer them. Nothing was deleted, but new dictionaries are no longer backed up automatically.';
  String get sync_asset_legacy_notice_dismiss => 'Got it';
  String get sync_asset_legacy_notice_title =>
      'Dictionary and audio sync is now manual';
  String get sync_asset_local_audio => 'Local audio databases';
  String get sync_asset_local_audio_download =>
      'Download local audio databases';
  String get sync_asset_local_audio_upload => 'Upload local audio databases';
  String get sync_asset_transfer_hint =>
      'Upload what only this device has, or download what only the remote has';
  String get sync_asset_transfer_menu => 'Transfer';
  String get sync_asset_upload_action => 'Upload';
  String get sync_asset_upload_hint =>
      'Sends what this device has and the remote does not. Packages can be large.';
  String get sync_audiobook => 'Sync audiobook position';
  String get sync_audiobook_files => 'Sync audiobook files';
  String get sync_audiobook_files_warning =>
      'Audio and subtitles can be large.';
  String sync_auth_error({required Object message}) =>
      'Authentication failed: ${message}';
  String get sync_auto_sync => 'Auto sync';
  String get sync_backend => 'Storage backend';
  String get sync_backend_dropbox => 'Dropbox';
  String get sync_backend_ftp => 'FTP';
  String get sync_backend_fushi_server => 'Fushi Interconnect';
  String get sync_backend_google_drive => 'Google Drive';
  String get sync_backend_onedrive => 'OneDrive';
  String get sync_backend_sftp => 'SFTP';
  String get sync_backend_webdav => 'WebDAV';
  String get sync_checking_account => 'Checking account…';
  String get sync_client_connected => 'Connected';
  String get sync_client_token => 'Peer access token';
  String get sync_client_token_manual => 'Enter token manually';
  String get sync_compare => 'Compare data';
  String get sync_compare_all_books => 'All books';
  String get sync_compare_all_local => 'All → local';
  String get sync_compare_all_remote => 'All → remote';
  String get sync_compare_all_skip => 'All → skip';
  String sync_compare_applied({required Object count}) =>
      'Applied ${count} changes';
  String sync_compare_apply({required Object count}) => 'Sync now (${count})';
  String get sync_compare_close => 'Close';
  String get sync_compare_conflicts => 'Conflicts';
  String get sync_compare_days => 'days';
  String get sync_compare_delete_audiobook => 'Delete audiobook on remote';
  String get sync_compare_delete_book => 'Delete book on remote';
  String sync_compare_delete_confirm({required Object name}) =>
      'Delete "${name}" from the remote? Local data is kept. This cannot be undone.';
  String get sync_compare_delete_dict => 'Delete dictionary on remote';
  String get sync_compare_deleted => 'Deleted from remote';
  String get sync_compare_dictionaries => 'Dictionaries';
  String get sync_compare_download => 'Download';
  String get sync_compare_empty => 'No books found';
  String get sync_compare_local => 'Local';
  String get sync_compare_no_content => 'Cloud data only — no book to download';
  String get sync_compare_no_data => 'No data';
  String get sync_compare_only_conflicts => 'Only conflicts';
  String get sync_compare_remote => 'Remote';
  String get sync_compare_select_all => 'Select all';
  String get sync_compare_skip => 'Skip';
  String get sync_compare_title => 'Local vs remote';
  String get sync_compare_unavailable => 'Set up a sync backend first';
  String get sync_compare_use_local => 'Local';
  String get sync_compare_use_remote => 'Remote';
  String get sync_connection_failed => 'Connection failed';
  String get sync_connection_success => 'Connection successful';
  String get sync_content => 'Upload book files';
  String get sync_content_warning =>
      'Large files will use storage space and data';
  String get sync_desktop_oauth_browser_open_failed =>
      'Could not open the browser. Copy the link and open it in a browser yourself.';
  String get sync_desktop_oauth_browser_reopen => 'Open browser again';
  String get sync_desktop_oauth_link_copy => 'Copy sign-in link';
  String get sync_desktop_oauth_link_copy_failed =>
      'Could not copy the link. Select the link text and copy it manually.';
  String get sync_desktop_oauth_waiting_body =>
      'The sign-in page was opened in your default browser. If nothing opened, or the page shows an error, copy the link and open it in another browser or a private window.';
  String get sync_desktop_oauth_waiting_title =>
      'Waiting for the browser sign-in';
  String get sync_err_auth_expired => 'Sign-in expired — please sign in again.';
  String get sync_err_browser_timeout =>
      'The browser never returned the authorization. Retry, and make sure your proxy lets 127.0.0.1 through.';
  String get sync_err_forbidden =>
      'The server refused this request. Your sign-in is fine - check the server\'s settings.';
  String sync_err_forbidden_detail({required Object reason}) =>
      'The server refused this request: ${reason} (your sign-in is fine)';
  String get sync_err_invalid_client =>
      'Client credentials are invalid for this build — please update the app.';
  String get sync_err_network =>
      'Cannot reach the server — check your network or proxy settings.';
  String get sync_err_not_configured =>
      'Google sync credentials are not configured in this build.';
  String get sync_err_peer_unreachable =>
      'Can\'t reach the Fushi Interconnect server - it may be offline or not running Fushi.';
  String get sync_err_quota => 'Cloud storage is full (quota reached).';
  String get sync_err_scope_upgrade =>
      'Sync permissions changed — please sign in to Google again to continue syncing.';
  String get sync_err_sign_in_cancelled => 'Sign-in cancelled.';
  String get sync_err_timeout =>
      'Connection timed out — the server did not respond in time. Check your network or proxy settings.';
  String sync_error({required Object message}) => 'Sync error: ${message}';
  String get sync_exit_warning =>
      'Sync is still in progress. Exiting now may cause data loss.';
  String get sync_exit_warning_title => 'Sync in progress';
  String get sync_host => 'Host';
  String get sync_interconnect_service_config_toggle =>
      'Sync service configuration from host';
  String get sync_interconnect_service_config_toggle_desc =>
      'Receive external service settings and API keys (Jimaku, TMDB, Torznab, OpenSubtitles, tracking) from the Fushi Interconnect server over the encrypted Interconnect channel. Requires TLS.';
  String get sync_lan_discovery => 'LAN devices';
  String get sync_lan_no_devices => 'No devices found';
  String get sync_lan_scan_failed =>
      'Scan failed — check network permissions or firewall.';
  String get sync_last_auto_disabled => 'Last sync: skipped - auto sync is off';
  String sync_last_completed({required Object count}) =>
      'Last sync: done (${count} channels)';
  String get sync_last_cooled_down => 'Last sync: skipped - synced recently';
  String get sync_last_failed => 'Last sync: failed';
  String get sync_last_no_channels =>
      'Last sync: nothing synced - no connected sync channel';
  String get sync_last_nothing => 'Last sync: nothing to sync';
  String get sync_not_signed_in => 'Not signed in';
  String get sync_now => 'Sync now';
  String sync_now_audio_in({required Object count}) => '↓${count} audiobooks';
  String sync_now_audio_out({required Object count}) => '↑${count} audiobooks';
  String sync_now_books_in({required Object count}) => '↓${count} books';
  String get sync_now_busy => 'A sync is already running';
  String sync_now_dicts_in({required Object count}) => '↓${count} dictionaries';
  String sync_now_dicts_out({required Object count}) =>
      '↑${count} dictionaries';
  String sync_now_done({required Object detail}) => 'Synced · ${detail}';
  String sync_now_failed_suffix({required Object count}) =>
      ' · ${count} failed';
  String get sync_now_hint => 'Run a full two-way sync with the cloud now';
  String sync_now_local_audio_in({required Object count}) =>
      '↓${count} audio sources';
  String sync_now_local_audio_out({required Object count}) =>
      '↑${count} audio sources';
  String get sync_now_no_changes => 'no changes';
  String get sync_pair_allow => 'Allow';
  String sync_pair_confirm_identity_body({required Object device}) =>
      'You are pairing with ${device}. Confirm this is the device you expect before continuing.';
  String get sync_pair_confirm_identity_title => 'Confirm device';
  String get sync_pair_continue => 'Continue';
  String get sync_pair_denied => 'The other device declined pairing';
  String get sync_pair_deny => 'Deny';
  String get sync_pair_enter_pin_body =>
      'Enter the 6-digit PIN shown on the other device.';
  String get sync_pair_enter_pin_title => 'Enter PIN';
  String get sync_pair_expired =>
      'Pairing timed out. Start pairing again from this device.';
  String get sync_pair_failed => 'Pairing failed';
  String get sync_pair_fingerprint_changed =>
      'Certificate changed — pairing aborted for safety (possible interception).';
  String get sync_pair_fingerprint_changed_body =>
      'This address was pinned to a different certificate before. Continue only if you know the peer reinstalled or reset it — otherwise someone may be intercepting the connection.';
  String get sync_pair_fingerprint_changed_title => 'Certificate changed';
  String get sync_pair_fingerprint_label => 'Certificate fingerprint';
  String get sync_pair_fingerprint_new_label => 'Seen now';
  String get sync_pair_fingerprint_retrust => 'Clear and trust again';
  String get sync_pair_fingerprint_stored_label => 'Pinned earlier';
  String get sync_pair_invalid_url => 'Invalid address format';
  String get sync_pair_not_fushi =>
      'No Fushi device found at this address. The address was saved.';
  String get sync_pair_not_fushi_discovered =>
      'No Fushi device found at this address.';
  String get sync_pair_pairing => 'Pairing…';
  String get sync_pair_peer_not_https =>
      'The peer isn\'t using HTTPS on this port. Use an http:// address.';
  String get sync_pair_peer_requires_https =>
      'This device only accepts HTTPS. Use an https:// address.';
  String get sync_pair_pin_label => 'Enter this PIN on the other device';
  String get sync_pair_pin_waiting =>
      'Waiting for the other device to enter this PIN…';
  String get sync_pair_pin_wrong => 'Wrong PIN — try again';
  String get sync_pair_rate_limited =>
      'Too many attempts. Wait a few minutes and try again.';
  String get sync_pair_repair => 'Pair again';
  String get sync_pair_request_body =>
      'A device is requesting to pair. Allow it to sync with this device?';
  String get sync_pair_request_title => 'Pairing request';
  String get sync_pair_success => 'Paired — token filled in';
  String get sync_pair_timeout => 'The peer did not respond in time.';
  String get sync_pair_tls_failed =>
      'Certificate check failed. The peer\'s certificate does not match the pinned one.';
  String get sync_pair_unavailable =>
      'The other device isn\'t ready or is on an older version. Update it and enable sync, then try again.';
  String get sync_pair_unknown_device => 'Unknown device';
  String get sync_pair_upgrade_required =>
      'The other device runs an older version that cannot pair securely from this network. Update it, then pair again.';
  String get sync_paired_peer_remove => 'Remove';
  String get sync_paired_peer_removed => 'Removed paired device';
  String get sync_paired_peer_unknown => 'Unknown device';
  String get sync_paired_peers_empty => 'No paired devices yet';
  String get sync_paired_peers_title => 'Paired devices';
  String get sync_password => 'Password';
  String sync_peer_book_delete_confirm({required Object name}) =>
      'Delete "${name}" from the peer device? Its files and reading progress there are removed for good, and this device has no copy. This cannot be undone.';
  String sync_peer_video_delete_confirm({required Object name}) =>
      'Remove "${name}" from the peer device\'s library? The peer\'s own imported video file is kept. This cannot be undone.';
  String get sync_port => 'Port';
  String get sync_private_key => 'Private key';
  String get sync_progress_asset_transfer => 'Preparing transfer';
  String get sync_progress_audiobooks => 'Syncing audiobooks';
  String get sync_progress_book => 'Syncing book';
  String sync_progress_book_titled({required Object title}) =>
      'Syncing ${title}';
  String get sync_progress_books => 'Importing books';
  String get sync_progress_collections => 'Syncing collections';
  String get sync_progress_dictionaries => 'Syncing dictionaries';
  String get sync_progress_local_audio => 'Syncing local audio';
  String get sync_progress_preparing => 'Preparing sync';
  String get sync_progress_reading => 'Syncing reading data';
  String get sync_progress_videos => 'Syncing videos';
  String get sync_role_locked_by_client =>
      'Already connected to another device. Remove the connection before hosting as a server.';
  String get sync_role_locked_by_server =>
      'This device is hosting as a server. Turn off the server before connecting to other devices.';
  String get sync_section_actions => 'Sync actions';
  String get sync_section_assets => 'Dictionaries & local audio transfer';
  String get sync_section_backup => 'Local backup';
  String get sync_section_content => 'What to sync';
  String get sync_section_host_server => 'This device as a sync server';
  String get sync_section_host_server_footer =>
      'Let other devices sync from this device. Independent of the sync backend above.';
  String get sync_section_method => 'Sync method';
  String get sync_section_when => 'When to sync';
  String get sync_server_copy_token => 'Copy token';
  String get sync_server_enable => 'Enable sync server';
  String get sync_server_mode_active => 'This device is a sync server';
  String get sync_server_mode_clients_drive =>
      'Connected clients start the sync — no manual sync needed here.';
  String get sync_server_port => 'Server port';
  String sync_server_port_in_use({required Object port}) =>
      'Port ${port} is already in use — pick a different port.';
  String get sync_server_regenerate_token => 'Regenerate token';
  String get sync_server_running => 'Server running';
  String get sync_server_settings => 'Server settings';
  String get sync_server_settings_hint =>
      'Credentials and connection test for the selected sync method';
  String get sync_server_stopped => 'Server stopped';
  String get sync_server_tls_enable => 'Interconnect encryption (HTTPS/TLS)';
  String get sync_server_tls_repair_hint =>
      'Changing this requires paired devices to pair again';
  String get sync_server_token => 'Access token';
  String get sync_show_remote_entries => 'Show remote entries';
  String get sync_show_remote_entries_warning =>
      'Show books and videos that exist on the Fushi Interconnect server or the cloud as placeholder cards you can download or stream.';
  String get sync_sign_in => 'Sign in';
  String get sync_sign_out => 'Sign out';
  String get sync_signed_in => 'Signed in';
  String get sync_statistics => 'Sync statistics';
  String get sync_summary => 'Cloud, LAN P2P & local backup';
  String get sync_test_connection => 'Test connection';
  String get sync_use_tls => 'Use TLS';
  String get sync_username => 'Username';
  String get sync_video_files => 'Upload video files';
  String get sync_video_files_warning => 'Video files can be very large.';
  String get sync_webdav_missing_fields => 'Missing fields';
  String sync_webdav_test_failed({required Object message}) =>
      'Connection failed: ${message}';
  String get sync_webdav_url => 'Server URL';
  String get tag_add_failed => 'Couldn\'t add the tag. Please try again.';
  String tag_added_to_book({required Object name}) =>
      'Tag "${name}" added to book.';
  String tag_added_to_collection({required Object name}) =>
      'Tag ${name} added to collection.';
  String tag_added_to_video({required Object name}) =>
      'Tag ${name} added to video.';
  String tag_already_on_book({required Object name}) =>
      'Tag "${name}" is already on this book.';
  String tag_already_on_collection({required Object name}) =>
      'Tag ${name} is already on this collection.';
  String tag_book_count({required Object count}) => '${count} book(s)';
  String get tag_clear_filter => 'Clear filter';
  String get tag_color => 'Color';
  String tag_delete_confirm({required Object name}) => 'Delete tag "${name}"?';
  String get tag_filter_title => 'Filter by tag';
  String get tag_label => 'Tags';
  String get tag_manage => 'Manage tags';
  String get tag_manage_title => 'Manage tags';
  String get tag_name_duplicate => 'A tag with this name already exists.';
  String get tag_name_empty => 'Tag name cannot be empty.';
  String get tag_name_hint => 'Tag name';
  String get tag_new => 'New tag';
  String get tag_no_books_for_filter => 'No books match the selected tags.';
  String get tag_no_tags_hint => 'No tags yet. Create one to get started.';
  String get tag_reorder_failed =>
      'Couldn\'t save the new tag order. Please try again.';
  String get tag_seed_stars => 'Add star rating tags';
  String get tag_seed_stars_added => 'Star rating tags added';
  String get tag_seed_stars_exists => 'Star rating tags already exist';
  String get tap_empty_hide_chrome => 'Floating control bar';
  String get text_segmentation => 'Text segmentation';
  String get texthooker => 'Texthooker';
  String get texthooker_enabled => 'Texthooker (receive text)';
  String get texthooker_enabled_hint =>
      'Connect to Textractor/mpv/agent and look up incoming text';
  String get theme_accent_auto_tone => 'Adjust tone for light and dark mode';
  String get theme_accent_auto_tone_desc =>
      'Off: the exact color is used. On: a lighter or darker tone is generated for each mode, so what you see differs from what you picked.';
  String get theme_accent_follow_system => 'Follow the system accent color';
  String get theme_accent_follow_system_desc =>
      'Use the wallpaper color on Android (Material You) or the OS accent color on desktop instead of a picked color.';
  String get theme_accent_follow_system_unavailable =>
      'The system does not expose an accent color on this device.';
  String get theme_accent_low_contrast_dark =>
      'Hard to see on the dark-mode background. Pick a lighter color.';
  String get theme_accent_low_contrast_light =>
      'Hard to see on the light-mode background. Pick a darker color.';
  String get theme_black => 'Pure black';
  String get theme_code_copied => 'Theme code copied to clipboard';
  String get theme_dark => 'Deep dark';
  String get theme_ecru => 'Ecru';
  String get theme_eyecare => 'Eye care';
  String get theme_gray => 'Gray dark';
  String get theme_light => 'White';
  String get theme_neutral_derived => 'Neutral derived colors';
  String get theme_neutral_derived_desc =>
      'Tags, selected items, menus and surfaces stay gray instead of taking on the accent\'s hue; only the accent color itself stands out (like the Windows light theme). White, gray or black accents do this automatically.';
  String get theme_preview_button => 'Button';
  String get theme_preview_card => 'Card';
  String get theme_preview_dark => 'Dark';
  String get theme_preview_hint =>
      'Pick a color to see where it is used outlined in the preview.';
  String get theme_preview_light => 'Light';
  String get theme_preview_tag => 'Tag';
  String get theme_role_accent => 'Accent color';
  String get theme_role_accent_desc =>
      'Used exactly as picked for buttons, switches, icons and progress bars. Every other color is derived from it.';
  String get theme_role_actual_color => 'Shown as';
  String get theme_role_audio_highlight => 'Current sentence';
  String get theme_role_audio_highlight_desc =>
      'Follows audiobook playback. Applies to every theme, not just this one.';
  String get theme_role_container => 'Control fill';
  String get theme_role_container_desc =>
      'Switch tracks, floating buttons and the play bar';
  String get theme_role_follows_theme => 'Follows theme';
  String get theme_role_link => 'Links';
  String get theme_role_link_desc =>
      'Hyperlinks inside books and the selection handles';
  String get theme_role_reader_background => 'Page background';
  String get theme_role_reader_background_desc =>
      'Reader page, toolbar and dictionary popup background';
  String get theme_role_reader_text => 'Body text';
  String get theme_role_reader_text_desc =>
      'Reader text, toolbar icons and dictionary popup text';
  String get theme_role_reset => 'Follow theme again';
  String get theme_role_secondary => 'Secondary accent';
  String get theme_role_secondary_desc =>
      'Tags, badges and selected list items';
  String get theme_role_selection => 'Lookup highlight';
  String get theme_role_selection_desc =>
      'Background of the word or sentence being looked up';
  String get theme_role_surface => 'Interface background';
  String get theme_role_surface_desc =>
      'Base color of pages, cards and menus; the other layers get a faint tint of gray from it.';
  String get theme_role_tertiary => 'Decoration color';
  String get theme_role_tertiary_desc => 'Collections and reading statistics';
  String get theme_section_accent => 'Interface colors';
  String get theme_section_audiobook => 'Audiobook';
  String get theme_section_fine_tune => 'Fine-tune derived colors';
  String get theme_section_reader => 'Reader';
  String get theme_water => 'Water blue';
  String toc_section({required Object n}) => 'Table of Contents (${n})';
  String get top_progress_pos_center => 'Center';
  String get top_progress_pos_left => 'Top-left';
  String get top_progress_pos_right => 'Top-right';
  String get top_progress_position => 'Progress position';
  String get torrent_upload_intro_body =>
      'Uploading (seeding) is off by default. Turn it on to share downloaded content back to the swarm — this uses your upload bandwidth. You can change this anytime in Settings.';
  String get torrent_upload_intro_confirm => 'Save';
  String get torrent_upload_intro_enable => 'Enable upload / seeding';
  String get torrent_upload_intro_keep_off => 'Keep off';
  String get torrent_upload_intro_title => 'Upload / seeding';
  String get undo => 'Undo';
  String get unit_milliseconds => 'ms';
  String get unit_pixels => 'px';
  String untitled_book({required Object id}) => 'Book ${id}';
  String get untitled_chapter => '(Untitled)';
  String get update_already_latest => 'You\'re on the latest version';
  String get update_app_store_open => 'Open App Store';
  String get update_auto_install => 'Auto-install updates';
  String get update_available => 'Update available';
  String update_cached_newer({required Object version}) =>
      'Update ${version} available (verifying…)';
  String update_cached_up_to_date({required Object version}) =>
      'On latest known version ${version} (checking…)';
  String get update_cancel => 'Cancel';
  String get update_cancelled => 'Download cancelled';
  String get update_cancelling => 'Cancelling…';
  String get update_channel_beta => 'Beta';
  String get update_channel_debug => 'Debug';
  String get update_channel_stable => 'Stable';
  String get update_check_failed => 'Update check failed';
  String get update_checking_now => 'Checking for updates…';
  String get update_connecting => 'Connecting…';
  String get update_debug_channel => 'Debug update channel';
  String get update_debug_channel_warning =>
      'Debug channel builds may be unstable. Use at your own risk.';
  String get update_download => 'Download';
  String get update_download_failed => 'Download failed';
  String get update_download_restarted_from_zero => 'restarted from zero';
  String update_download_resume_status({required Object status}) =>
      'Resume: ${status}';
  String get update_download_resumed => 'resumed';
  String update_download_size({
    required Object received,
    required Object total,
  }) => 'Downloaded: ${received} / ${total}';
  String update_download_source({required Object source}) =>
      'Source: ${source}';
  String get update_download_source_auto => 'Automatic (recommended)';
  String get update_download_source_cloudflare => 'Cloudflare mirror';
  String get update_download_source_github => 'GitHub direct';
  String get update_download_source_preference => 'Preferred download source';
  String get update_download_source_preference_hint =>
      'The selected source is tried first; unavailable sources still fall back automatically.';
  String update_download_source_proxy({required Object host}) =>
      'Proxy: ${host}';
  String update_download_source_unavailable({required Object source}) =>
      '${source} is not available for this file; falling back to the automatic order';
  String update_download_speed({required Object speed}) => 'Speed: ${speed}';
  String get update_downloading => 'Downloading update…';
  String get update_hide => 'Hide';
  String update_install_current_executable({required Object path}) =>
      'Running executable: ${path}';
  String update_install_deletefile_failure({
    required Object path,
    required Object code,
  }) => 'Installer failed to replace ${path} (code ${code})';
  String update_install_detected_location({
    required Object source,
    required Object path,
  }) => 'Detected install location (${source}): ${path}';
  String update_install_failure_summary({required Object summary}) =>
      'Reason: ${summary}';
  String update_install_gal_hook_holder({
    required Object pid,
    required Object path,
  }) =>
      'Galgame capture component in use: PID ${pid} - ${path} (this is the game you are playing, or its capture host). Close the game, then update again.';
  String get update_install_incomplete_message =>
      'The installer started, but Fushi is still on the previous version. Check the installer log below.';
  String get update_install_incomplete_title => 'Update did not finish';
  String update_install_installer_pid({required Object pid}) =>
      'Installer PID: ${pid}';
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi could not start the installer for version ${version}. Check the log path below.';
  String get update_install_launch_failed_title =>
      'Update installer did not start';
  String update_install_launcher_pid({required Object pid}) =>
      'Update launcher PID: ${pid}';
  String update_install_libmpv_holder({
    required Object pid,
    required Object path,
  }) => 'libmpv holder: PID ${pid} - ${path}';
  String get update_install_log_not_observed =>
      'Installer log was not created during the post-launch check.';
  String get update_install_log_observed =>
      'Installer log was created during the post-launch check.';
  String update_install_log_path({required Object path}) =>
      'Installer log: ${path}';
  String get update_install_manual_close_retry =>
      'Close Fushi from the listed PID/path, then retry the update or run the installer again.';
  String get update_install_parent_exit_not_observed =>
      'The update launcher did not observe Fushi exiting before the installer launch.';
  String get update_install_parent_exit_observed =>
      'Fushi exited before the installer was launched.';
  String update_install_path_mismatch({required Object warning}) =>
      'Install directory mismatch: ${warning}';
  String get update_install_permission_cancel => 'Cancel';
  String get update_install_permission_message =>
      'Please allow Fushi to install apps in system settings, then retry.';
  String get update_install_permission_retry => 'Retry install';
  String get update_install_permission_title => 'Allow installing updates';
  String get update_install_restart_windows_hint =>
      'If the listed processes are closed but libmpv-2.dll is still locked, restart Windows and install again.';
  String update_install_running_process({
    required Object pid,
    required Object path,
  }) => 'Running Fushi process: PID ${pid} - ${path}';
  String update_install_success_message({required Object version}) =>
      'Fushi was updated to version ${version}.';
  String get update_install_success_title => 'Update installed';
  String update_install_target_dir({required Object path}) =>
      'Install target: ${path}';
  String get update_installing => 'Installing…';
  String get update_mac_install_incomplete_message =>
      'The update could not be applied, so Fushi is still on the previous version. You can retry the update, or download the latest release manually.';
  String update_message({required Object version}) =>
      'Version ${version} is available.';
  String update_network_failure({
    required Object host,
    required Object reason,
  }) => 'Could not reach ${host}: ${reason}';
  String get update_never_remind => 'Don\'t remind me about updates';
  String get update_release_page_open => 'Release page';
  String get update_skip => 'Skip';
  String get update_testflight_open => 'Open TestFlight';
  String get url => 'URL';
  String get video_air_season_autumn => 'Fall';
  String get video_air_season_spring => 'Spring';
  String get video_air_season_summer => 'Summer';
  String get video_air_season_winter => 'Winter';
  String get video_ajatt_enabled_hint =>
      'Off means the AJATT archive is skipped when searching subtitles.';
  String get video_ajatt_settings_hint =>
      'Free Japanese subtitle archive (kitsunekko mirror). No account needed; subtitle files download from GitHub.';
  String get video_all_videos_grid_view => 'Grid view';
  String get video_all_videos_list_view => 'List view';
  String get video_anidb_hash_enabled => 'Identify files with AniDB ED2K';
  String get video_anidb_hash_hint =>
      'Requires an AniDB account and a registered client. Uploads only file size and hash. AniDB UDP login is unencrypted; enable only on a trusted network.';
  String get video_anidb_password => 'AniDB password';
  String get video_anidb_username => 'AniDB username';
  String get video_anilist_error_api_disabled =>
      'AniList has temporarily disabled its public API because of server-side stability problems. This is not a problem with your network or proxy - the request reached AniList and was refused. Please try again later.';
  String get video_anilist_error_rate_limited =>
      'AniList is rate-limiting this app right now. Wait a moment and retry.';
  String get video_anilist_error_unreachable =>
      'Cannot reach AniList (graphql.anilist.co). Check your network connection, or configure a proxy in download settings.';
  String get video_audio_track => 'Audio track';
  String get video_audio_track_empty => 'No switchable audio tracks';
  String video_audio_track_switched({required Object label}) =>
      'Audio track: ${label}';
  String get video_auto_play_next_cancel => 'Cancel';
  String video_auto_play_next_countdown({required Object seconds}) =>
      'Next episode in ${seconds}s';
  String get video_black_flash_notice_action => 'View suggestions';
  String get video_black_flash_notice_dont_show_again => 'Don\'t show again';
  String get video_bottom_next_cue => 'Next subtitle (forward a bit if none)';
  String get video_bottom_play_pause => 'Play / pause';
  String get video_bottom_prev_cue => 'Previous subtitle (back a bit if none)';
  String get video_bottom_seek_back => 'Back 10s';
  String get video_bottom_seek_back_label => '−10s';
  String get video_bottom_seek_forward => 'Forward 10s';
  String get video_bottom_seek_forward_label => '+10s';
  String get video_builtin_apibay_hint =>
      'Movies and TV shows. Public index, no account needed.';
  String get video_builtin_knaben_hint =>
      'Movies and TV shows. Aggregates several public indexers.';
  String get video_builtin_nyaa_hint =>
      'Anime only. Movies and TV shows are covered by the two public indexers below.';
  String get video_builtin_sources_hint =>
      'Ship with the app: no account, no API key. Turn one off to keep it out of resource searches.';
  String get video_builtin_sources_title => 'Built-in sources';
  String video_chapter_n({required Object n}) => 'Chapter ${n}';
  String get video_chapters => 'Chapters';
  String get video_chapters_empty => 'No chapters';
  String get video_clip_export => 'Clip export';
  String get video_clip_export_cancelled => 'Clip export cancelled';
  String video_clip_export_failed({required Object reason}) =>
      'Clip export failed: ${reason}';
  String get video_clip_export_ffmpeg_failed => 'ffmpeg failed';
  String get video_clip_export_ffmpeg_unavailable => 'ffmpeg is unavailable';
  String get video_clip_export_input_missing => 'Source video is unavailable';
  String get video_clip_export_invalid_range => 'No valid clip range';
  String get video_clip_export_output_missing => 'No output file was created';
  String get video_clip_export_remote_download_required =>
      'Download the remote video to this device before exporting a clip';
  String get video_clip_export_source_changed =>
      'Video source changed; clip export cancelled';
  String get video_clip_export_start => 'Start clip export';
  String get video_clip_export_stop => 'Stop and export clip';
  String video_clip_exported({required Object path}) =>
      'Clip exported: ${path}';
  String video_clip_exported_with_subtitles({required Object path}) =>
      'Clip exported with subtitles: ${path}';
  String get video_clip_exporting => 'Exporting clip…';
  String get video_collection_no_local_member =>
      'No local video in this collection';
  String get video_continue_watching => 'Continue watching';
  String get video_control_audio_track => 'Audio track';
  String video_control_custom_action({required Object index}) =>
      'Shortcut ${index}';
  String get video_control_custom_action_none => 'Not assigned';
  String get video_control_customize_hint =>
      'Choose where each button sits on the player, or move it out.';
  String get video_control_episode_list => 'Episode list';
  String get video_control_favorite_sentence => 'Favorite current sentence';
  String get video_control_fullscreen => 'Fullscreen';
  String get video_control_next_cue => 'Next subtitle';
  String get video_control_palette_hint =>
      'Drag a button into a slot to add it; a button can sit in several slots.';
  String get video_control_palette_title => 'All buttons';
  String get video_control_play_pause => 'Play/Pause';
  String get video_control_previous_cue => 'Previous subtitle';
  String get video_control_reject_required =>
      'Required controls must stay on the player.';
  String get video_control_reject_unavailable =>
      'This control cannot be placed there.';
  String get video_control_reject_volume_bottom =>
      'Volume can only sit on the bottom bar.';
  String get video_control_remove_from_slot => 'Move out';
  String get video_control_reset_layout => 'Reset player button layout';
  String get video_control_screenshot => 'Screenshot';
  String get video_control_seek_backward => 'Back 10s';
  String get video_control_seek_forward => 'Forward 10s';
  String get video_control_settings => 'Player settings';
  String get video_control_slot_bottom_center => 'Bottom bar (center)';
  String get video_control_slot_bottom_left => 'Bottom bar (left)';
  String get video_control_slot_bottom_right => 'Bottom bar (right)';
  String get video_control_slot_drop_hint => 'Drag a button here';
  String get video_control_slot_hidden => 'Removed from player';
  String get video_control_slot_screen_left => 'Screen left';
  String get video_control_slot_screen_right => 'Screen right';
  String get video_control_slot_top_center => 'Top bar (center)';
  String get video_control_slot_top_left => 'Top bar (left)';
  String get video_control_slot_top_right => 'Top bar (right)';
  String get video_control_speed => 'Speed';
  String get video_control_subtitle_list => 'Subtitle list';
  String get video_control_subtitle_track => 'Subtitle track';
  String get video_control_title => 'Video title';
  String get video_control_volume => 'Volume';
  String get video_danmaku_manual_bind_empty =>
      'No danmaku for this episode yet.';
  String get video_danmaku_manual_bind_failed =>
      'Couldn\'t load danmaku for this episode. Try again later.';
  String get video_danmaku_manual_bind_server_error =>
      'The danmaku server rejected the request. Try again later.';
  String get video_danmaku_manual_match_title => 'Match danmaku';
  String get video_danmaku_manual_network_error =>
      'Network error. Check your connection and try again.';
  String get video_danmaku_manual_no_result => 'No matching anime found.';
  String get video_danmaku_manual_search_action => 'Search';
  String get video_danmaku_manual_search_hint => 'Anime title';
  String get video_danmaku_manual_search_prompt =>
      'Search Dandanplay by anime title, then pick an episode.';
  String get video_danmaku_manual_server_error =>
      'Search failed. Try again later.';
  String video_delete_confirm({required Object title}) =>
      'Delete 『${title}』? This cannot be undone.';
  String get video_delete_title => 'Delete video';
  String get video_discovery_all_works => 'All titles';
  String get video_discovery_anidb_identity_confirm_hint =>
      'AniDB has more than one possible match. Pick the right work and the imported download will scrape with that identity directly; skip and you can assign it later from the pending list.';
  String get video_discovery_anidb_identity_confirm_title =>
      'Confirm the work identity';
  String get video_discovery_anidb_identity_not_found =>
      'Could not identify this work on AniDB. It will download normally and wait in the pending list for manual identification.';
  String video_discovery_cancel_downloads_body({required Object n}) =>
      '${n} download task(s) for this title will be stopped. Downloaded pieces stay on disk; you can start the download again later.';
  String get video_discovery_cancel_downloads_failed =>
      'Could not cancel the download. The task may have already finished, or the download backend is unavailable.';
  String get video_discovery_cancel_downloads_title => 'Cancel downloads?';
  String get video_discovery_details_load_failed =>
      'Could not load title details.';
  String get video_discovery_empty => 'No matching titles.';
  String get video_discovery_hot => 'Popular now';
  String get video_discovery_in_library => 'In library';
  String get video_discovery_load_failed => 'Could not load discovery results.';
  String get video_discovery_manual_identity_hint =>
      'Enter the title, external ID and year above to enable search';
  String get video_discovery_pipeline_idle =>
      'Not downloaded → Download → Organize → Subtitles → Scrape → Library';
  String get video_discovery_play => 'Play';
  String get video_discovery_provider_warning =>
      'Some providers are unavailable. Showing available results.';
  String get video_discovery_resource_search => 'Search resources';
  String get video_discovery_search_hint => 'Search movies, series, anime';
  String get video_discovery_search_results => 'Search results';
  String get video_discovery_seasonal_anime => 'Seasonal anime';
  String get video_discovery_sort_popularity => 'Popularity';
  String get video_discovery_sort_rating => 'Rating';
  String get video_discovery_sort_release => 'Release date';
  String get video_discovery_subscribe => 'Subscribe';
  String get video_discovery_subscription_manage => 'Manage subscription';
  String get video_discovery_subtitle_search => 'Search subtitles';
  String get video_double_tap_next_cue => 'Next line';
  String get video_double_tap_prev_cue => 'Previous line';
  String get video_download_backend_profile_id => 'Backend profile ID';
  String get video_download_local_root => 'Local root';
  String get video_download_path_mapping_add => 'Add path mapping';
  String get video_download_path_mapping_invalid =>
      'Enter a profile ID, remote root, and absolute local root.';
  String get video_download_path_mappings_hint =>
      'Map each qBittorrent remote root to a locally accessible folder.';
  String get video_download_path_mappings_title => 'qBittorrent path mappings';
  String get video_download_remote_root => 'Remote root';
  String get video_download_target_source_empty =>
      'No locally accessible video source is available. Add one on the Sources tab first.';
  String get video_download_target_source_hint =>
      'New downloads are organized into this local video source.';
  String get video_download_target_source_none => 'Choose a local video source';
  String get video_download_target_source_title => 'Default folder';
  String get video_drop_audio_unsupported =>
      'Drop subtitle files onto the current video. Audio files cannot be attached here.';
  String get video_drop_subtitle_only =>
      'Drop subtitle files onto the current video.';
  String get video_episode_list => 'Episodes';
  String get video_episode_list_empty => 'No episodes';
  String get video_external_api_key => 'API key';
  String get video_external_categories_invalid =>
      'Categories must be comma-separated numeric IDs.';
  String get video_external_enabled => 'Enabled';
  String get video_external_endpoint_invalid =>
      'Enter a valid endpoint without credentials, query parameters, or fragments.';
  String get video_external_insecure_http => 'Allow insecure HTTP';
  String get video_external_insecure_http_hint =>
      'Use only for a trusted local network endpoint.';
  String get video_external_password_optional => 'Password (optional)';
  String get video_external_remove => 'Remove';
  String get video_external_save_error =>
      'The configuration could not be saved. Check the highlighted fields.';
  String get video_external_settings_section =>
      'External resource and subtitle providers';
  String get video_external_username_optional => 'Username (optional)';
  String video_favorite_count({required Object count}) => '${count} favorites';
  String get video_file_error_content =>
      'Unable to load the video file. Please ensure this file exists and is located in a directory accessible by the application.';
  String get video_file_not_found => 'Video file not found';
  String get video_filter_series => 'Series';
  String get video_filter_series_in => 'In a series';
  String get video_filter_series_standalone => 'Not in a series';
  String get video_filter_watch_status => 'Watch status';
  String get video_filter_watch_status_completed => 'Completed';
  String get video_filter_watch_status_unwatched => 'Unwatched';
  String get video_filter_watch_status_watching => 'Watching';
  String get video_filter_year => 'Year';
  String get video_filter_year_unknown => 'Unknown year';
  String get video_hero_detail_view => 'Details';
  String video_hero_episodes_watched({required Object n}) => '${n} eps watched';
  String video_home_continue_episode_number({required Object n}) =>
      'Playing episode ${n}';
  String video_home_next_episode_number({required Object n}) =>
      'Next · Episode ${n}';
  String video_home_recent_episode_number({required Object n}) =>
      'Recently added · Episode ${n}';
  String video_home_remaining_minutes({required Object minutes}) =>
      '${minutes} min remaining';
  String video_home_subscription_unwatched_episode({
    required Object n,
    required Object count,
  }) => 'Episode ${n} · ${count} unwatched';
  String get video_home_subscription_updates => 'Updated, not watched';
  String get video_immersive_locked => 'Immersive mode on';
  String get video_immersive_mode_full => 'Full controls';
  String get video_immersive_mode_lookup_only => 'Lookup only';
  String get video_immersive_mode_seek_lookup => 'Shortcut + lookup';
  String get video_immersive_mode_unlock_only => 'Unlock only';
  String get video_immersive_unlock => 'Unlock';
  String get video_immersive_unlocked => 'Immersive mode off';
  String get video_import_action => 'Import video';
  String get video_import_confirm => 'Import';
  String get video_import_folder_as_source_hint =>
      'Keep scanning this folder for new videos';
  String get video_import_pick_subtitle => 'Pick subtitle';
  String get video_import_pick_video => 'Pick video file';
  String get video_import_stream_advanced => 'Advanced (anti-leech headers)';
  String get video_import_stream_referer => 'Referer (optional)';
  String get video_import_stream_subtitle_url_field =>
      'External subtitle URL (optional)';
  String get video_import_stream_url_field => 'Video stream URL';
  String get video_import_stream_url_hint =>
      'Play HLS/m3u8/mp4 stream URL (with optional external subtitle URL and anti-leech Referer/User-Agent)';
  String get video_import_stream_user_agent => 'User-Agent (optional)';
  String get video_import_subtitle_optional =>
      'Optional external subtitle (you can switch between embedded/external subtitles anytime during playback)';
  String get video_import_title => 'Import video';
  String get video_jimaku_anime_match => 'Anime match';
  String get video_jimaku_api_key => 'Jimaku API key';
  String get video_jimaku_api_key_hint =>
      'Get a free API key at jimaku.cc/account';
  String get video_jimaku_api_key_set => 'API key set';
  String get video_jimaku_api_key_settings_hint =>
      'Also editable in Settings → Video → Subtitles';
  String video_jimaku_batch_done({
    required Object done,
    required Object total,
  }) => 'Subtitles fetched: ${done}/${total}';
  String get video_jimaku_batch_download => 'Download all';
  String get video_jimaku_batch_title => 'Fetch subtitles for collection';
  String get video_jimaku_download_failed => 'Download failed';
  String get video_jimaku_downloaded => 'Subtitle downloaded and applied';
  String get video_jimaku_enabled_hint =>
      'Off means Jimaku is skipped even when an API key is saved.';
  String get video_jimaku_episode => 'Episode (optional)';
  String video_jimaku_episode_available({
    required Object count,
    required Object languages,
  }) => '${count} subtitles available · ${languages}';
  String get video_jimaku_episode_hint => 'Leave empty to list all';
  String video_jimaku_episode_unavailable({required Object episode}) =>
      'No subtitle found for episode ${episode}';
  String video_jimaku_episode_unlabeled({
    required Object episode,
    required Object count,
  }) =>
      'No subtitle labeled episode ${episode}; ${count} unlabeled files may still match';
  String get video_jimaku_fetch => 'Fetch subtitles (Jimaku)';
  String get video_jimaku_filter => 'Filter results (e.g. WEBRip, BD)';
  String get video_jimaku_find_sources => 'Find subtitles';
  String get video_jimaku_format => 'Format';
  String get video_jimaku_format_all => 'All';
  String get video_jimaku_language => 'Language';
  String get video_jimaku_language_all => 'All';
  String get video_jimaku_language_follow_video => 'Follow video language';
  String get video_jimaku_language_unknown => 'Language not labeled';
  String get video_jimaku_no_key => 'Enter your Jimaku API key first';
  String get video_jimaku_no_results => 'No subtitles found';
  String get video_jimaku_query => 'Series name';
  String get video_jimaku_scope_hint =>
      'Japanese subtitles for anime and Japanese live-action titles. A free API key is required.';
  String get video_jimaku_search => 'Search';
  String get video_jimaku_search_failed => 'Subtitle search failed';
  String get video_jimaku_series => 'Series';
  String get video_jimaku_series_lookup_degraded =>
      'Couldn\'t confirm the series on AniList this time, so these results come from a plain title search and may mix in other seasons of the same series.';
  String get video_jimaku_show_all_episodes => 'Show all episodes';
  String get video_jimaku_source => 'Subtitle source';
  String get video_jimaku_source_failed =>
      'Could not check subtitle availability. Try searching again.';
  String get video_jimaku_source_hint =>
      'Choose one Jimaku entry. Season packs are matched by episode automatically.';
  String get video_jimaku_source_loading => 'Checking subtitle availability...';
  String video_jimaku_source_summary({
    required Object files,
    required Object episodes,
    required Object languages,
  }) => '${files} subtitle files · ${episodes} episodes · ${languages}';
  String video_last_watched({required Object date}) => 'Last watched ${date}';
  String get video_library_all_videos => 'All videos';
  String get video_library_empty => 'No videos imported yet';
  String get video_library_empty_source_hint =>
      'Add a video folder from Sources to build your library';
  String get video_library_scrape_auto_backfill =>
      'Auto-fill missing series info';
  String get video_library_scrape_auto_backfill_hint =>
      'Entering the video library scrapes entries that still have no confirmed identity. Turn off to stop all background metadata downloads.';
  String video_library_scrape_pending_banner({required Object count}) =>
      '${count} works still need identity confirmation';
  String get video_library_scrape_pending_banner_action => 'Confirm';
  String get video_load_failed_back => 'Back';
  String get video_load_failed_generic => 'Couldn\'t load this video.';
  String get video_load_failed_network =>
      'Network error - check your connection and try again.';
  String get video_load_failed_not_found =>
      'This item was not found in your library.';
  String get video_load_failed_retry => 'Retry';
  String get video_load_failed_timeout =>
      'Connection timed out - the network is slow or the source is rate-limiting. Please try again.';
  String get video_load_failed_title => 'Video failed to load';
  String get video_load_failed_unavailable =>
      'Couldn\'t get the video stream - it may be unavailable, region or age restricted, or the source changed.';
  String get video_loading_buffering => 'Buffering…';
  String get video_loading_connecting => 'Connecting to stream…';
  String get video_loading_preparing => 'Preparing…';
  String get video_loading_subtitle => 'Downloading subtitles…';
  String get video_menu_fullscreen => 'Toggle fullscreen';
  String get video_menu_lock => 'Immersive / lock mode';
  String get video_menu_play_pause => 'Play / pause';
  String get video_menu_subtitle_track => 'Subtitle track';
  String get video_mining_animated_format => 'Video card animation format';
  String get video_mining_image_mode => 'Video card image';
  String get video_mining_image_mode_current_frame => 'Screenshot at mining';
  String get video_mining_image_mode_gif => 'Animated GIF (subtitle clip)';
  String get video_mining_image_mode_subtitle_start =>
      'Screenshot at subtitle start';
  String get video_mining_still_format => 'Video card screenshot format';
  String get video_mining_still_format_hint =>
      'Encoding used when the card image is a still screenshot. JPG is much smaller; PNG is lossless but several times larger. Animated covers are unaffected — they follow the animation format setting.';
  String get video_next_episode => 'Next episode';
  String get video_online_services_setup_description =>
      'Optional accounts and API keys can improve video identification and subtitle search. Basic playback works without them.';
  String get video_online_services_setup_dismiss => 'Never show again';
  String get video_online_services_setup_register =>
      'Learn about and register services';
  String get video_online_services_setup_settings => 'Open settings';
  String get video_online_services_setup_title =>
      'Configure optional online services';
  String get video_opensubtitles_app_key_hint =>
      'Leave blank to use the bundled app API key.';
  String get video_opensubtitles_endpoint => 'API endpoint';
  String get video_opensubtitles_languages_hint =>
      'Comma-separated language codes, for example zh-CN,en,ja';
  String get video_opensubtitles_settings_hint =>
      'API credentials are never exported in backups; they may sync to paired devices over Interconnect (can be turned off in Interconnect settings).';
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  String get video_opensubtitles_user_agent => 'User-Agent';
  String video_playlist_episodes({required Object count}) => '${count} eps';
  String get video_prev_episode => 'Previous episode';
  String get video_quality => 'Quality';
  String get video_quality_auto => 'Auto';
  String get video_quality_empty => 'No switchable quality for this video';
  String get video_quality_enhancement_hint =>
      'Turn this on to sharpen the picture with mpv\'s built-in high-quality scaling. Works for anime as well as live-action shows and movies. To go further with shaders like Anime4K, open Image enhancement while a video is playing and pick a level there.';
  String get video_quality_load_failed =>
      'Couldn\'t load qualities for this video.';
  String get video_quality_loading => 'Loading available qualities…';
  String video_quality_switched({required Object label}) => 'Quality: ${label}';
  String get video_recently_added_badge => 'NEW';
  String get video_rename => 'Rename';
  String get video_rename_hint => 'Title';
  String get video_render_skia_fix_confirm_action => 'Restart';
  String get video_render_skia_fix_confirm_body =>
      'This disables the Impeller renderer and restarts the app to apply.';
  String get video_render_skia_fix_confirm_title =>
      'Switch to Skia and restart?';
  String get video_render_skia_fix_hint =>
      'Use if audio plays but the video stays black. Disables Impeller; restarts to apply.';
  String get video_render_skia_fix_title =>
      'Screen black? Switch renderer (Skia)';
  String get video_resource_identity_provider => 'Resource identity source';
  String video_resource_missing_message({required Object title}) =>
      'The file for 『${title}』 could not be found. Its location may have changed, or the drive may not be connected. You can re-import it, or remove this entry.';
  String get video_resource_missing_reimport => 'Re-import';
  String get video_resource_missing_title => 'Video unavailable';
  String get video_resource_no_provider_hint =>
      'This search had no provider to query. Re-enable a built-in source, or add a Torznab indexer, under Settings, Downloads, External resource and subtitle providers.';
  String get video_resource_no_provider_title =>
      'No resource indexer configured';
  String get video_resource_relink_success => 'Video relinked';
  String get video_scrape_collection_rename_body =>
      'The matched entry has a different name. Renaming is optional: the cover and details are saved either way, and a rename also replaces the old name on your other synced devices.';
  String video_scrape_collection_rename_from({required Object name}) =>
      'Current name: ${name}';
  String get video_scrape_collection_rename_keep => 'Keep current name';
  String get video_scrape_collection_rename_title => 'Rename this collection?';
  String video_scrape_collection_rename_to({required Object name}) =>
      'New name: ${name}';
  String get video_scrape_diagnostic_confirm_body =>
      'The package includes relative file and folder names, scrape summaries, and original NFO contents. It does not add videos, subtitles, images, absolute paths, app configuration, or app credentials. Original NFO files are preserved unchanged and may contain personal information or secrets; review the package before sharing publicly.';
  String get video_scrape_diagnostic_confirm_title =>
      'Export scrape diagnostics?';
  String get video_scrape_diagnostic_export => 'Export scrape diagnostics';
  String video_scrape_diagnostic_failed({required Object reason}) =>
      'Could not export diagnostic package: ${reason}';
  String get video_scrape_diagnostic_saved => 'Diagnostic package saved';
  String get video_scrape_diagnostic_share_subject =>
      'Fushi video scrape diagnostics';
  String get video_scrape_episodes => 'Episodes';
  String get video_scrape_info => 'Series info';
  String video_scrape_rating_votes({required Object count}) =>
      '${count} ratings';
  String get video_scrape_tmdb_key_empty =>
      'Save a TMDB API key, then press Search. Results from other sources are not shown here.';
  String get video_scrape_tmdb_key_hint => 'Enter TMDB API key';
  String get video_scrape_tmdb_key_required => 'TMDB requires an API key';
  String get video_scrape_tmdb_key_save => 'Save';
  String get video_scrape_view_source => 'View source details';
  String get video_screenshot => 'Screenshot';
  String video_screenshot_failed_reason({required Object reason}) =>
      'Screenshot failed: ${reason}';
  String video_screenshot_ready({required Object file}) =>
      'Screenshot ready: ${file}';
  String video_screenshot_saved_to({required Object path}) =>
      'Screenshot saved: ${path}';
  String get video_secondary_subtitle_sources => 'Secondary subtitle';
  String get video_setting_auto_play_next => 'Auto-play next episode';
  String get video_setting_auto_scrape => 'Auto-fetch series info';
  String get video_setting_auto_scrape_hint =>
      'Automatically identify and fetch video metadata after library scans';
  String get video_setting_av_delay => 'Subtitle sync';
  String get video_setting_av_delay_hint =>
      'Positive = subtitle later (cues pushed back); negative = subtitle earlier. Use the slider, +/- buttons, or type a value.';
  String get video_setting_danmaku_area => 'Display area';
  String get video_setting_danmaku_area_hint =>
      'Fraction of the screen height danmaku may occupy, from the top.';
  String get video_setting_danmaku_block_rules => 'Block words / regex';
  String get video_setting_danmaku_block_rules_hint =>
      'One rule per line. Wrap a line in slashes like /pattern/ for a regular expression; otherwise it matches as case-insensitive text.';
  String get video_setting_danmaku_block_rules_placeholder =>
      'e.g. spoiler or /pattern/';
  String get video_setting_danmaku_enabled => 'Show danmaku';
  String get video_setting_danmaku_enabled_hint =>
      'Render local or matched danmaku over the video without blocking controls.';
  String get video_setting_danmaku_font_scale => 'Font size';
  String get video_setting_danmaku_font_scale_hint =>
      'Scale the danmaku text size.';
  String get video_setting_danmaku_manual_match => 'Manual match';
  String get video_setting_danmaku_manual_match_hint =>
      'Search Dandanplay by title and pick the episode when auto match fails or is wrong.';
  String get video_setting_danmaku_max_active => 'Active danmaku limit';
  String get video_setting_danmaku_max_active_hint =>
      'Caps comments rendered per frame to keep large files responsive.';
  String get video_setting_danmaku_online => 'Online Dandanplay match';
  String get video_setting_danmaku_online_hint =>
      'When no usable local sidecar exists, match the opened video with Dandanplay and fetch related comments.';
  String get video_setting_danmaku_opacity => 'Opacity';
  String get video_setting_danmaku_opacity_hint =>
      'Overall danmaku transparency.';
  String get video_setting_danmaku_server_url => 'Danmaku server URL';
  String get video_setting_danmaku_speed => 'Speed';
  String get video_setting_danmaku_speed_hint =>
      'Higher is faster; scrolling danmaku cross the screen sooner.';
  String get video_setting_double_tap => 'Double-tap seek';
  String get video_setting_double_tap_hint =>
      'Double-tap the left or right of the video to seek';
  String get video_setting_double_tap_off => 'Off';
  String get video_setting_double_tap_subtitle => 'Subtitle';
  String get video_setting_drag_seek_sensitivity => 'Drag-to-seek sensitivity';
  String get video_setting_drag_seek_sensitivity_high => 'High';
  String get video_setting_drag_seek_sensitivity_hint =>
      'How far one full-width swipe seeks on a touch screen: Low about 45s, Medium about 90s, High about 180s. Independent of the video\'s total length. Touch drag only; mouse and keyboard seeking are unaffected.';
  String get video_setting_drag_seek_sensitivity_low => 'Low';
  String get video_setting_drag_seek_sensitivity_medium => 'Medium';
  String get video_setting_hdr_auto => 'Auto';
  String get video_setting_hdr_compute_peak => 'Dynamic peak detection';
  String get video_setting_hdr_compute_peak_hint =>
      'Measure each frame\'s real peak brightness instead of trusting the stream metadata. Better highlights, costs some GPU.';
  String get video_setting_hdr_off => 'Off';
  String get video_setting_hdr_on => 'On';
  String get video_setting_hdr_output => 'HDR / 10-bit output';
  String get video_setting_hdr_output_always => 'Always';
  String get video_setting_hdr_output_auto => 'Auto';
  String get video_setting_hdr_output_hint =>
      'Windows only. Auto hands HDR sources straight to an HDR display through a native video window; Always uses that window for every video (10-bit output); Off keeps the standard renderer.';
  String get video_setting_hdr_output_off => 'Off';
  String get video_setting_hdr_tone_mapping => 'HDR tone mapping';
  String get video_setting_hdr_tone_mapping_hint =>
      'Curve used when an HDR source has to be squeezed onto an SDR display. Auto lets mpv pick per source.';
  String get video_setting_immersive_mode => 'Immersive mode';
  String get video_setting_immersive_mode_hint =>
      'Controls what remains available after pressing the side lock button';
  String get video_setting_jimaku_default_language =>
      'Default subtitle language';
  String get video_setting_jimaku_default_language_hint =>
      'Defaults to the video\'s own language (audio track / scraped metadata). Pick one to always prefer that language instead.';
  String get video_setting_lock_window_aspect => 'Lock window to video aspect';
  String get video_setting_long_press_speed => 'Long-press speed';
  String get video_setting_long_press_speed_hint =>
      'Temporarily use this speed while holding the video.';
  String get video_setting_mpv_aspect => 'Aspect ratio';
  String get video_setting_mpv_aspect_auto => 'Original';
  String get video_setting_mpv_brightness => 'Brightness';
  String get video_setting_mpv_channels => 'Channels';
  String get video_setting_mpv_channels_auto => 'Auto';
  String get video_setting_mpv_channels_mono => 'Mono';
  String get video_setting_mpv_channels_stereo => 'Stereo (downmix)';
  String get video_setting_mpv_contrast => 'Contrast';
  String get video_setting_mpv_correct_downscale => 'Linear downscaling';
  String get video_setting_mpv_deband => 'Debanding';
  String get video_setting_mpv_deinterlace => 'Deinterlace';
  String get video_setting_mpv_dither => 'Dithering';
  String get video_setting_mpv_gamma => 'Gamma';
  String get video_setting_mpv_group_advanced => 'Advanced';
  String get video_setting_mpv_group_audio => 'Audio';
  String get video_setting_mpv_group_color => 'Color';
  String get video_setting_mpv_group_decode => 'Decoding';
  String get video_setting_mpv_group_geometry => 'Geometry';
  String get video_setting_mpv_group_hdr => 'HDR';
  String get video_setting_mpv_group_playback => 'Playback';
  String get video_setting_mpv_group_quality => 'Image quality';
  String get video_setting_mpv_hue => 'Hue';
  String get video_setting_mpv_hwdec => 'Hardware decoding';
  String get video_setting_mpv_hwdec_auto => 'Auto (safe)';
  String get video_setting_mpv_hwdec_copy => 'Auto (copy)';
  String get video_setting_mpv_hwdec_off => 'Off';
  String get video_setting_mpv_interpolation => 'Motion interpolation';
  String get video_setting_mpv_loop => 'Loop file';
  String get video_setting_mpv_lua_scripts => 'Load Lua scripts';
  String get video_setting_mpv_lua_scripts_dir_copied => 'Folder path copied';
  String get video_setting_mpv_lua_scripts_dir_copy =>
      'Copy scripts folder path';
  String get video_setting_mpv_lua_scripts_empty =>
      'No scripts in the mpv_scripts folder yet';
  String get video_setting_mpv_lua_scripts_hint =>
      'Load all .lua files in the mpv_scripts folder into the player. Turning off takes effect the next time a video is opened.';
  String get video_setting_mpv_lua_scripts_import => 'Import Lua scripts';
  String get video_setting_mpv_lua_scripts_imported => 'Scripts imported';
  String get video_setting_mpv_lua_scripts_input_note =>
      'Keyboard and mouse input stays in the app and never reaches mpv: scripts that rely on key bindings or the OSC cannot be triggered. Scripts driven by properties/events and OSD messages work.';
  String get video_setting_mpv_lua_scripts_status_error => 'Error';
  String get video_setting_mpv_lua_scripts_status_loaded =>
      'Loaded, no errors reported';
  String get video_setting_mpv_lua_scripts_status_not_loaded =>
      'Not loaded in this player yet (turn on the switch or reopen the video)';
  String get video_setting_mpv_lua_scripts_unavailable =>
      'The bundled libmpv on this platform was built without Lua (-Dlua=disabled), so scripts cannot run here.';
  String get video_setting_mpv_normalize => 'Normalize downmix loudness';
  String get video_setting_mpv_panscan => 'Pan & scan (crop borders)';
  String get video_setting_mpv_pitch => 'Preserve pitch when speeding';
  String get video_setting_mpv_raw =>
      'Extra mpv options (one per line, key=value)';
  String get video_setting_mpv_raw_hint =>
      'Desktop only; options that cannot apply at runtime (e.g. vo, profile) are ignored. SVP/RIFE need external tools and are not supported.';
  String get video_setting_mpv_reset => 'Reset all';
  String get video_setting_mpv_rotate => 'Rotation';
  String get video_setting_mpv_saturation => 'Saturation';
  String get video_setting_mpv_sigmoid => 'Sigmoid upscaling';
  String get video_setting_mpv_sigmoid_hint =>
      'Sigmoid-curve upscaling reduces ringing but costs GPU. Off by default for performance; turn on if you want sharper upscaling.';
  String get video_setting_mpv_zoom => 'Zoom';
  String get video_setting_picture_fit => 'Picture scaling';
  String get video_setting_picture_fit_contain =>
      'Fit keep ratio add black bars';
  String get video_setting_picture_fit_cover => 'Fill keep ratio crop edges';
  String get video_setting_picture_fit_fill => 'Stretch to fill';
  String get video_setting_picture_fit_hint =>
      'How the picture fills the player area';
  String get video_setting_qb_category => 'qBittorrent category';
  String get video_setting_qb_category_hint =>
      'Downloads pushed by Fushi get this category; completion tracking only watches it.';
  String get video_setting_qb_password => 'WebUI password';
  String get video_setting_qb_url => 'qBittorrent WebUI URL';
  String get video_setting_qb_url_hint =>
      'e.g. http://127.0.0.1:8080. Leave empty to disable anime downloading.';
  String get video_setting_qb_username => 'WebUI username';
  String get video_setting_secondary_av_delay => 'Secondary subtitle sync';
  String get video_setting_secondary_av_delay_hint =>
      'Adjust the secondary subtitle offset independently. It follows the primary offset until set here.';
  String get video_setting_secondary_delay_follow => 'Follow primary';
  String get video_setting_secondary_subtitle_obscure =>
      'Obscure secondary subtitle';
  String get video_setting_secondary_subtitle_obscure_hint =>
      'Blur or hide the secondary (translation) subtitle';
  String get video_setting_seek_seconds => 'Seek seconds';
  String get video_setting_speed => 'Playback speed';
  String get video_setting_speed_step => 'Speed step';
  String get video_setting_subtitle_anchor => 'Main subtitle anchor';
  String get video_setting_subtitle_appearance => 'Subtitle appearance';
  String get video_setting_subtitle_backfill =>
      'Auto-fetch subtitles after scraping';
  String get video_setting_subtitle_backfill_hint =>
      'When a scrape finishes, videos that still have no subtitle get one from your configured online sources. Never replaces an existing subtitle.';
  String get video_setting_subtitle_bg_color => 'Background color';
  String get video_setting_subtitle_bg_opacity => 'Background opacity';
  String get video_setting_subtitle_drag_adjust => 'Drag to adjust position';
  String get video_setting_subtitle_font_size => 'Font size';
  String get video_setting_subtitle_font_weight => 'Font weight';
  String get video_setting_subtitle_no_background => 'No background';
  String get video_setting_subtitle_no_background_hint =>
      'Make the subtitle background transparent.';
  String get video_setting_subtitle_obscure => 'Obscure subtitles';
  String get video_setting_subtitle_obscure_blur => 'Blur';
  String get video_setting_subtitle_obscure_hide => 'Hide';
  String get video_setting_subtitle_obscure_hint =>
      'Choose how subtitles are obscured for listening practice: off, blurred (hover or tap to reveal), or hidden.';
  String get video_setting_subtitle_obscure_none => 'Off';
  String get video_setting_subtitle_obscure_reveal =>
      'Reveal when paused or hovered';
  String get video_setting_subtitle_obscure_reveal_hint =>
      'While subtitles are blurred or hidden, pausing, looking a word up, hovering (desktop) or tapping them reveals them temporarily. Turn this off to keep them obscured no matter what.';
  String get video_setting_subtitle_position => 'Vertical position';
  String get video_setting_subtitle_position_secondary =>
      'Secondary subtitle position';
  String get video_setting_subtitle_reset => 'Reset to default';
  String get video_setting_subtitle_respect_ass =>
      'Respect subtitle\'s own style';
  String get video_setting_subtitle_respect_ass_hint =>
      'Use the font, color, and outline built into .ass subtitles when available; turn off to force your appearance settings.';
  String get video_setting_subtitle_shadow => 'Shadow';
  String get video_setting_subtitle_sources_section =>
      'Online subtitle sources';
  String get video_setting_subtitle_sync_input => 'Offset (ms)';
  String get video_setting_subtitle_text_color => 'Text color';
  String get video_setting_tap_toggles_playback => 'Tap video to play/pause';
  String get video_setting_tap_toggles_playback_hint =>
      'Turn off so tapping the video only reveals the controls';
  String get video_setting_theme => 'Theme';
  String get video_setting_tmdb_key => 'Custom TMDB API key';
  String get video_setting_tmdb_key_hint =>
      'Optional. Leave empty to use the built-in key. Fill in your own only if scraping stops working or you want to use your own quota.';
  String get video_setting_torrent_active_downloads => 'Max active downloads';
  String get video_setting_torrent_active_seeds => 'Max active seeds';
  String get video_setting_torrent_anonymous => 'Anonymous mode';
  String get video_setting_torrent_antileech => 'Enable anti-leech';
  String get video_setting_torrent_backend_embedded => 'Built-in engine';
  String get video_setting_torrent_backend_qb => 'External qBittorrent';
  String get video_setting_torrent_ban_progress_cheat => 'Ban progress cheat';
  String get video_setting_torrent_ban_relative_cheat =>
      'Ban relative progress cheat';
  String get video_setting_torrent_ban_time => 'Ban duration (min)';
  String get video_setting_torrent_ban_time_hint => '0 = permanent';
  String get video_setting_torrent_connections_hint => '0 = engine default';
  String get video_setting_torrent_dht => 'DHT';
  String get video_setting_torrent_download_limit => 'Download limit (KB/s)';
  String get video_setting_torrent_encryption_disabled => 'Disabled';
  String get video_setting_torrent_encryption_forced => 'Force';
  String get video_setting_torrent_encryption_prefer => 'Prefer';
  String get video_setting_torrent_limit_hint => '0 = unlimited';
  String get video_setting_torrent_limit_lan => 'Apply limits to LAN peers';
  String get video_setting_torrent_limit_lan_hint =>
      'Off by default: transfers with peers on your local network ignore the limits above.';
  String get video_setting_torrent_listen_port => 'Listen port';
  String get video_setting_torrent_listen_port_hint => '0 = default (6881)';
  String get video_setting_torrent_lsd => 'Local peer discovery (LSD)';
  String get video_setting_torrent_max_connections => 'Max connections';
  String get video_setting_torrent_max_ip_ports => 'Max ports per IP';
  String get video_setting_torrent_memory_hint =>
      'Cap engine memory. 0 = auto (based on device RAM).';
  String get video_setting_torrent_memory_limit => 'Memory limit (MB)';
  String get video_setting_torrent_natpmp => 'NAT-PMP port mapping';
  String get video_setting_torrent_section_antileech => 'Anti-leech';
  String get video_setting_torrent_section_session => 'Session';
  String get video_setting_torrent_seed_ratio_hint =>
      'Stop uploading when uploaded/downloaded reaches this. 0 = unlimited.';
  String get video_setting_torrent_seed_ratio_limit => 'Seed ratio limit';
  String get video_setting_torrent_seed_time_hint =>
      'Stop uploading after seeding this long. 0 = unlimited.';
  String get video_setting_torrent_seed_time_limit =>
      'Seed time limit (minutes)';
  String get video_setting_torrent_upload_enabled => 'Enable upload / seeding';
  String get video_setting_torrent_upload_enabled_hint =>
      'Off by default. Seed back to the swarm after downloading.';
  String get video_setting_torrent_upload_limit => 'Upload limit (KB/s)';
  String get video_setting_torrent_upload_slots => 'Max upload slots';
  String get video_setting_torrent_upnp => 'UPnP port mapping';
  String get video_setting_torrent_zero_default => '0 = default';
  String get video_setting_torrent_zero_off => '0 = off';
  String get video_setting_youtube_quality => 'YouTube quality';
  String get video_setting_youtube_quality_hint =>
      'Start streams at the highest tier up to this target; Auto prefers smooth playback (hardware-friendly codec, up to 1080p)';
  String get video_settings_cat_audio => 'Audio';
  String get video_settings_cat_controls => 'Controls';
  String get video_settings_cat_danmaku => 'Danmaku';
  String get video_settings_cat_mpv => 'mpv';
  String get video_settings_cat_playback => 'Playback';
  String get video_settings_cat_shaders => 'Image enhancement';
  String get video_settings_cat_subtitle => 'Subtitles';
  String get video_settings_title => 'Video settings';
  String get video_shader_anime4k_hint =>
      'Pick a preset to download. After downloading, tick it in the list to enable. Desktop only.';
  String get video_shader_anime4k_title => 'Anime4K recommended shaders';
  String get video_shader_download_anime4k => 'Download Anime4K presets';
  String video_shader_download_done({required Object count}) =>
      'Downloaded ${count} shader(s)';
  String get video_shader_download_failed => 'Shader download failed';
  String video_shader_download_partial({
    required Object ok,
    required Object failed,
  }) => 'Downloaded ${ok} shader(s), ${failed} failed';
  String get video_shader_download_url => 'Download from link';
  String get video_shader_downloaded_label => 'Downloaded';
  String get video_shader_downloading => 'Downloading shaders…';
  String get video_shader_first_use_body =>
      'For sharper anime playback, open Image enhancement and click Download Anime4K presets. It downloads recommended shaders, then you can tick the installed ones to enable them.';
  String get video_shader_first_use_download => 'Download and enable';
  String get video_shader_first_use_title => 'Try Anime4K image enhancement';
  String get video_shader_import => 'Import shader (.glsl)';
  String video_shader_import_done({required Object count}) =>
      'Imported ${count} shader(s)';
  String get video_shader_import_from_mpv => 'Import from local mpv';
  String get video_shader_import_from_mpv_hint =>
      'Search local mpv automatically, or choose an mpv folder when none is found.';
  String get video_shader_mobile_perf_hint =>
      'On phones, Medium/High/Ultra use deblur-only Anime4K chains: the upscaling passes are left out, because your screen is no larger than the source, so they would cost a lot of GPU for little gain and slow the whole app down. Results still vary by device GPU, and shaders only apply on the standard GPU render path — drop a tier if you see dropped frames or heat.';
  String video_shader_mpv_dir_current({required Object path}) =>
      'mpv folder: ${path}';
  String get video_shader_mpv_dir_empty => 'No shaders found in that folder';
  String get video_shader_mpv_not_found => 'No local mpv shaders found';
  String get video_shader_mpv_pick_title => 'Import shaders from mpv';
  String get video_shader_pick_mpv_dir => 'Choose mpv folder';
  String get video_shader_preset_mode_a_fast =>
      'For most 1080p anime. Lighter GPU load.';
  String get video_shader_preset_mode_a_hq =>
      'Highest quality for 1080p anime. Needs a strong GPU.';
  String get video_shader_preset_mode_b_fast =>
      'For older 720p anime with resampling artifacts.';
  String get video_shader_preset_mode_b_hq =>
      'High quality for older 720p anime with resampling artifacts. Needs a strong GPU.';
  String get video_shader_preset_mode_c_fast =>
      'For old SD (480p) anime with compression smearing.';
  String get video_shader_preset_mode_c_hq =>
      'High quality for old SD (480p) anime with compression smearing. Needs a strong GPU.';
  String get video_shader_quality_tier => 'Quality enhancement';
  String get video_shader_section_advanced => 'Advanced (manual shaders)';
  String get video_shader_section_installed => 'Installed shaders';
  String get video_shader_showing_original => 'Shaders off (original)';
  String get video_shader_showing_shaded => 'Shaders on';
  String get video_shader_tier_custom_hint =>
      'Custom shader selection. Pick a tier above to switch to a preset.';
  String get video_shader_tier_high => 'High';
  String get video_shader_tier_high_hint =>
      'Anime4K HQ. Sharper; best for animation, also usable on live-action (smaller gain). Needs an upper-mid GPU (NVIDIA RTX 4060 / RTX 3070, AMD RX 6700 XT / RX 7700 XT).';
  String get video_shader_tier_low => 'Low';
  String get video_shader_tier_low_hint =>
      'mpv built-in sharpening (ewa_lanczossharp). Works on any video (animation and live-action). No download, lowest GPU load. Pick this on integrated or older cards (NVIDIA GTX 1050, AMD RX 560, Intel iGPU).';
  String get video_shader_tier_medium => 'Medium';
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast. Best for animation, but also works on live-action movies/TV (smaller gain). Runs on mid-range GPUs (NVIDIA GTX 1660 / RTX 3050, AMD RX 6600).';
  String get video_shader_tier_off => 'None';
  String get video_shader_tier_off_hint =>
      'No enhancement. Plays the original video as-is.';
  String get video_shader_tier_ultra => 'Ultra';
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A, VL + an extra deblur/denoise restore pass — the strongest reconstruction the video renderer can actually run: the High-tier VL chain plus one more restore pass for compressed sources. Also usable on live-action (smaller gain). Best on a strong GPU (NVIDIA RTX 5090, AMD RX 7900 XTX); pick a lower tier if yours is weaker.';
  String get video_shader_url_hint => 'Paste a shader .glsl link (e.g. GitHub)';
  String get video_shaders_empty => 'No shaders imported yet';
  String get video_source_grouping_change_hint =>
      'The next scan uses this setting. Existing collections and metadata are kept.';
  String get video_source_grouping_folder => 'By folder';
  String get video_source_grouping_folder_hint =>
      'Create one collection per first-level subfolder. Files directly in the selected folder share a collection. Metadata scraping is unavailable in this mode; switch to By work to scrape.';
  String get video_source_grouping_mode => 'Video organization';
  String get video_source_grouping_series => 'By work';
  String get video_source_grouping_series_hint =>
      'Recognize works and episodes from filenames, then match metadata.';
  String get video_source_scrape_action => 'Scrape this source';
  String get video_source_scrape_anidb_client => 'AniDB client name';
  String get video_source_scrape_anidb_client_hint =>
      'Fushi includes a registered app client. Leave this blank normally; set a custom registered client only if needed.';
  String get video_source_scrape_anidb_client_version => 'AniDB client version';
  String get video_source_scrape_anidb_client_version_hint =>
      'Only custom clients need their own registered version here. Fushi maintains the default app identity; your personal AniDB login is still required.';
  String get video_source_scrape_auto_after_scan => 'Scrape after scanning';
  String get video_source_scrape_auto_after_scan_hint =>
      'Run metadata scraping automatically after this source is scanned';
  String get video_source_scrape_background_hint =>
      'Tasks continue when this window is closed.';
  String get video_source_scrape_background_started =>
      'Scraping is running in the background';
  String get video_source_scrape_clear_all => 'Clear all scrape records';
  String get video_source_scrape_clear_all_busy =>
      'A video scan or scrape is still running. Try again after it finishes.';
  String get video_source_scrape_clear_all_completed =>
      'All video scrape records have been cleared.';
  String get video_source_scrape_clear_all_completed_protected =>
      'Scrape records were cleared. Modified or unverifiable sidecar files were kept.';
  String get video_source_scrape_clear_all_confirm_action => 'Clear';
  String get video_source_scrape_clear_all_confirm_body =>
      'This removes all scraped metadata and source bindings, clears the Series results, and deletes unmodified covers and NFO files generated by Fushi. Video files, library entries, groups, watch progress, subtitles, tags, manually selected covers, and user-modified sidecars are kept. This cannot be undone.';
  String get video_source_scrape_clear_all_confirm_title =>
      'Clear all video scrape records?';
  String get video_source_scrape_clear_all_failed =>
      'Could not clear all scrape records. No unverified user files were deleted.';
  String get video_source_scrape_clear_all_hint =>
      'Remove all video scrape metadata and Fushi-generated covers and NFO files.';
  String get video_source_scrape_clear_all_in_progress =>
      'A scrape-record cleanup is already in progress.';
  String get video_source_scrape_confirmation_hint =>
      'Multiple exact matches were found. Choose the correct work to save its provider binding.';
  String get video_source_scrape_confirmation_skip => 'Skip this work';
  String get video_source_scrape_confirmation_title => 'Confirm metadata match';
  String get video_source_scrape_enabled_toggle =>
      'Enable scraping for this source';
  String get video_source_scrape_enabled_toggle_hint =>
      'When off, manual, post-scan, post-download and background scraping all skip this source.';
  String get video_source_scrape_external_overwrite =>
      'Allow protected sidecar overwrite';
  String get video_source_scrape_external_overwrite_confirm_body =>
      'This batch may replace third-party NFO/images or Fushi files you edited. Media files are not changed. Continue?';
  String get video_source_scrape_external_overwrite_confirm_title =>
      'Overwrite protected sidecars?';
  String get video_source_scrape_external_overwrite_hint =>
      'Third-party or user-modified files remain protected until you confirm each manual scrape batch again.';
  String get video_source_scrape_image_policy => 'Image write policy';
  String video_source_scrape_last_summary({
    required Object status,
    required Object succeeded,
    required Object pending,
    required Object failed,
  }) =>
      'Last scrape (${status}): ${succeeded} succeeded, ${pending} pending, ${failed} failed';
  String get video_source_scrape_list_load_failed =>
      'Could not load this list. Try again.';
  String get video_source_scrape_list_reload => 'Reload';
  String get video_source_scrape_locale => 'Metadata language';
  String get video_source_scrape_locale_hint =>
      'Preferred language for TMDB fallback and supplementary details. MAL uses the titles and text supplied by MAL.';
  String get video_source_scrape_manual_ambiguous =>
      'Several works have this title. Open the pending works tab and select the specific item to match.';
  String get video_source_scrape_manual_by_id => 'Work ID';
  String get video_source_scrape_manual_by_title => 'By title';
  String get video_source_scrape_manual_current_work => 'Current work';
  String get video_source_scrape_manual_id_invalid =>
      'Enter a positive work ID or an official URL matching the selected source and type.';
  String get video_source_scrape_manual_query_hint =>
      'Search by title, or select MAL / TMDB movie / TMDB TV and enter an ID or official URL. Select a result to apply it to the current work.';
  String get video_source_scrape_manual_search_action => 'Search';
  String get video_source_scrape_manual_search_empty => 'No results';
  String get video_source_scrape_manual_search_hint =>
      'Search the metadata provider by title, then pick the correct work.';
  String get video_source_scrape_manual_search_title =>
      'Specify the work manually';
  String get video_source_scrape_manual_tmdb_movie => 'TMDB movie';
  String get video_source_scrape_manual_tmdb_tv => 'TMDB TV';
  String get video_source_scrape_nfo_policy => 'NFO write policy';
  String get video_source_scrape_pending_empty =>
      'No works need manual matching.';
  String get video_source_scrape_pending_tab => 'Unmatched';
  String get video_source_scrape_pending_works =>
      'Works awaiting identification';
  String get video_source_scrape_pending_works_hint =>
      'These entries have no confirmed identity yet. Search and pick the right work to scrape them.';
  String get video_source_scrape_phase_applying => 'Saving metadata';
  String get video_source_scrape_phase_fetching => 'Fetching metadata';
  String get video_source_scrape_phase_planning => 'Planning';
  String get video_source_scrape_phase_recognizing => 'Matching';
  String get video_source_scrape_phase_scanning => 'Scanning source';
  String get video_source_scrape_phase_writing_sidecars => 'Writing sidecars';
  String get video_source_scrape_policy_missing_only => 'Only when missing';
  String get video_source_scrape_policy_overwrite => 'Update Fushi files';
  String get video_source_scrape_policy_skip => 'Do not write';
  String video_source_scrape_progress({
    required Object phase,
    required Object current,
    required Object total,
  }) => '${phase} · ${current}/${total}';
  String get video_source_scrape_provider_policy =>
      'MAL (via Jikan) is the primary metadata source; TMDB is the fallback.';
  String get video_source_scrape_queue_cancel_all => 'Cancel all tasks';
  String get video_source_scrape_queue_remove => 'Remove from queue';
  String get video_source_scrape_queue_submitted => 'Submitted';
  String get video_source_scrape_queue_waiting => 'Queued';
  String get video_source_scrape_rescrape_source => 'Rescrape this source';
  String get video_source_scrape_run_detail_title => 'Scrape result';
  String get video_source_scrape_run_no_issues =>
      'No warnings or errors were recorded.';
  String get video_source_scrape_settings => 'Source scrape settings';
  String get video_source_scrape_status_interrupted => 'Interrupted';
  String get video_source_scrape_tasks_current => 'Current task';
  String get video_source_scrape_tasks_empty => 'No scrape tasks yet';
  String get video_source_scrape_tasks_history => 'Recent tasks';
  String get video_source_scrape_tasks_open => 'Background tasks';
  String get video_source_scrape_waiting_confirmation =>
      'Waiting for your confirmation';
  String get video_source_scrape_work_missing =>
      'This work is no longer in the current source plan (its files may have been renamed, moved or deleted). Rescrape the source to refresh the pending list.';
  String get video_source_scrape_write_images => 'Write image files';
  String get video_source_scrape_write_nfo => 'Write NFO files';
  String get video_specs_audio_tracks => 'Audio tracks';
  String get video_specs_bit_depth => 'Bit depth';
  String get video_specs_bitrate => 'Bitrate';
  String get video_specs_dynamic_range => 'Dynamic range';
  String get video_specs_frame_rate => 'Frame rate';
  String get video_specs_resolution => 'Resolution';
  String get video_specs_subtitle_tracks => 'Subtitle tracks';
  String get video_specs_title => 'Media info';
  String get video_specs_track_commentary => 'Commentary';
  String get video_specs_track_default => 'Default';
  String get video_specs_track_forced => 'Forced';
  String get video_specs_video_codec => 'Video codec';
  String get video_stat_by_video => 'By video';
  String get video_stat_completed => 'Completed';
  String get video_stat_no_data => 'No video statistics yet';
  String get video_statistics => 'Video statistics';
  String video_subscription_group_release_count({required Object count}) =>
      '${count} releases';
  String get video_subtitle_adjust_collapse => 'Collapse';
  String get video_subtitle_adjust_expand => 'Expand';
  String get video_subtitle_adjust_title => 'Subtitle adjustments';
  String get video_subtitle_anchor_bottom => 'Bottom';
  String get video_subtitle_anchor_top => 'Top';
  String get video_subtitle_attach_book_missing =>
      'This video isn\'t in your library, so the subtitle wasn\'t attached';
  String get video_subtitle_attach_playlist_hint =>
      'Open the playlist to attach a subtitle per episode';
  String video_subtitle_attached_to_video({
    required Object title,
    required Object count,
  }) => 'Subtitle attached to ${title} (${count} cues)';
  String get video_subtitle_auto_align => 'Auto-align subtitle';
  String video_subtitle_auto_align_done({required Object ms}) =>
      'Auto-aligned subtitle by ${ms} ms';
  String get video_subtitle_auto_align_low_confidence =>
      'Couldn\'t confidently auto-align (no clear voice match)';
  String get video_subtitle_auto_align_running => 'Auto-aligning subtitle…';
  String get video_subtitle_collection_language => 'Default subtitle language';
  String get video_subtitle_collection_language_hint =>
      'Applies to every episode in this collection. Empty = follow the video\'s own language.';
  String get video_subtitle_collection_members_hint =>
      'Episodes are matched by number from file names; season packs are split automatically.';
  String get video_subtitle_collection_release_group => 'Preferred version';
  String get video_subtitle_collection_release_group_any => 'Any version';
  String get video_subtitle_collection_release_group_hint =>
      'Batch downloads pick this version first so the whole season shares one timing.';
  String get video_subtitle_collection_settings =>
      'Collection subtitle settings';
  String get video_subtitle_color_note =>
      'Subtitle colors are set inside the video player.';
  String video_subtitle_delay_osd({required Object ms}) =>
      'Subtitle sync: ${ms} ms';
  String get video_subtitle_delete => 'Delete subtitle file';
  String video_subtitle_delete_confirm({required Object path}) =>
      'Delete this subtitle file from disk? This can\'t be undone.\n${path}';
  String video_subtitle_delete_failed({required Object label}) =>
      'Failed to delete subtitle file: ${label}';
  String video_subtitle_deleted({required Object label}) =>
      'Subtitle file deleted: ${label}';
  String get video_subtitle_drag_adjust_hint =>
      'Drag a subtitle up or down to reposition it';
  String video_subtitle_error_with_code({
    required Object msg,
    required Object code,
  }) => '${msg} (HTTP ${code})';
  String get video_subtitle_filter_all => 'All';
  String get video_subtitle_filter_favorites => 'Favorites';
  String get video_subtitle_filter_favorites_empty => 'No favorited lines yet';
  String get video_subtitle_graphic_hint =>
      'Graphic subtitle · shown on video · no word lookup';
  String video_subtitle_graphic_shown({required Object label}) =>
      'Graphic subtitle shown on video (no word lookup): ${label}';
  String get video_subtitle_import_failed => 'Failed to import subtitle';
  String get video_subtitle_import_file => 'Import subtitle file…';
  String get video_subtitle_import_unsupported => 'Unsupported subtitle format';
  String get video_subtitle_list => 'Subtitle list';
  String get video_subtitle_list_auto_scroll => 'Auto-scroll';
  String get video_subtitle_list_empty => 'No subtitles loaded';
  String get video_subtitle_list_export_favorites => 'Export favorited lines';
  String get video_subtitle_list_font_larger => 'Larger text';
  String get video_subtitle_list_font_smaller => 'Smaller text';
  String get video_subtitle_list_jump => 'Jump to this line';
  String get video_subtitle_list_loading => 'Loading subtitles...';
  String get video_subtitle_list_search => 'Search subtitles';
  String get video_subtitle_list_search_empty => 'No line matches';
  String get video_subtitle_list_search_hint => 'Type to filter lines';
  String video_subtitle_load_failed({required Object label}) =>
      'Couldn\'t load this subtitle (graphic or unsupported track): ${label}';
  String get video_subtitle_next_cue_align => 'Align next line to now';
  String get video_subtitle_no_provider_hint =>
      'Enter a Jimaku API key or enable OpenSubtitles under Settings, Downloads, External resource and subtitle providers.';
  String get video_subtitle_no_provider_title =>
      'No subtitle provider configured';
  String get video_subtitle_no_source_configured =>
      'No subtitle found · set up an online subtitle source';
  String get video_subtitle_off => 'Turn off subtitles';
  String get video_subtitle_prev_cue_align => 'Align previous line to now';
  String video_subtitle_read_failed({required Object label}) =>
      'Couldn\'t read this subtitle file (damaged or empty): ${label}';
  String get video_subtitle_remote_host => 'Fushi Interconnect server subtitle';
  String get video_subtitle_replay => 'Replay this line';
  String get video_subtitle_scope_collection => 'Whole collection';
  String get video_subtitle_scope_episode => 'This episode';
  String get video_subtitle_search_open => 'Search subtitles online';
  String get video_subtitle_secondary_delay_follow_osd =>
      'Secondary subtitle sync: follow primary';
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      'Secondary subtitle sync: ${ms} ms';
  String get video_subtitle_source_label => 'Source';
  String get video_subtitle_source_search_hint =>
      'Tap “Find subtitles” above, then pick a source here.';
  String video_subtitle_switched({required Object label}) =>
      'Subtitle: ${label}';
  String get video_subtitle_waveform_cue_list => 'Subtitle list';
  String get video_subtitle_waveform_jump_playhead => 'Jump to playhead';
  String get video_subtitle_waveform_legend_cue => 'Subtitle cue';
  String get video_subtitle_waveform_legend_energy => 'Loudness';
  String get video_subtitle_waveform_legend_playhead => 'Playhead';
  String get video_subtitle_waveform_open => 'Waveform alignment';
  String get video_subtitle_waveform_open_hint => 'Tap to zoom in and align';
  String get video_subtitle_waveform_scroll_hint =>
      'Drag to scan the timeline; use the controls below to align';
  String get video_subtitle_waveform_unavailable =>
      'Waveform unavailable on this device';
  String get video_subtitle_waveform_zoom_in => 'Zoom in';
  String get video_subtitle_waveform_zoom_out => 'Zoom out';
  String get video_subtitle_workbench_title => 'Subtitles';
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang} (auto-generated)';
  String get video_subtitle_youtube_empty => 'This caption track has no text';
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang} (translated)';
  String get video_torznab_add => 'Add indexer';
  String get video_torznab_api_key => 'API key';
  String get video_torznab_categories => 'Categories';
  String get video_torznab_categories_hint =>
      'Comma-separated numeric category IDs';
  String get video_torznab_endpoint => 'Endpoint';
  String get video_torznab_endpoint_hint =>
      'HTTPS is required except for loopback addresses.';
  String get video_torznab_name => 'Name';
  String get video_torznab_priority => 'Priority';
  String get video_torznab_settings_hint =>
      'Configure one or more Jackett, Prowlarr, or compatible Torznab endpoints. Secrets are never exported in backups; they may sync to paired devices over Interconnect (can be turned off in Interconnect settings).';
  String get video_torznab_settings_title => 'Torznab indexers';
  String video_watched_up_to({required Object time}) => 'Watched to ${time}';
  String get video_windows_black_flash_notice_body =>
      'On Windows, video may flash black under heavy GPU load. To reduce the load, try turning off Quality enhancement, Sigmoid upscaling and Debanding above, or switch Hardware decoding to Copy.';
  String get video_windows_black_flash_notice_title =>
      'Black flickering on Windows?';
  String get video_work_cast_crew => 'Cast and crew';
  String get video_work_content_rating => 'Content rating';
  String get video_work_countries => 'Countries';
  String get video_work_details => 'Details';
  String get video_work_external_ids => 'External IDs';
  String get video_work_extras => 'Extras';
  String get video_work_genres => 'Genres';
  String get video_work_keywords => 'Keywords';
  String get video_work_metadata_pending =>
      'Detailed metadata has not been scraped yet. Retry this source from Sources, then reopen the work.';
  String get video_work_studios => 'Studios';
  String get video_work_trailers => 'Trailers';
  String get video_work_voice_roles => 'Voice cast and characters';
  String get view_illustrations => 'Illustrations';
  String get volume_button_page_turning => 'Volume button page turning';
  String get volume_key_sentence_nav => 'Volume key sentence navigation';
  String get web_video_hide_native_subtitles => 'Hide site subtitles';
  String get web_video_hosting_builtin =>
      'Built-in (1080p; super-resolution, screenshots and cards available)';
  String get web_video_hosting_menu => 'Playback mode';
  String get web_video_hosting_windowed =>
      'Native window (4K, hardware DRM; cards are queued for later)';
  String get web_video_import_hint =>
      'This is a web page (not a direct stream). It will open in the built-in web player.';
  String get web_video_mine_queue_empty => 'No queued cards';
  String web_video_mine_queue_finished({
    required Object ok,
    required Object failed,
  }) => 'Cards created: ${ok}, failed: ${failed}';
  String get web_video_mine_queue_run => 'Create queued cards';
  String web_video_mine_queue_running({
    required Object done,
    required Object total,
  }) => 'Creating cards ${done}/${total}...';
  String get web_video_mine_queue_stop => 'Stop card creation';
  String web_video_mine_queued({required Object count}) =>
      'Queued for card creation (${count} pending)';
  String web_video_mine_switch_builtin({required Object count}) =>
      'Switch to built-in mode to create ${count} queued cards';
  String get web_video_no_tracks => 'No subtitles captured yet';
  String get web_video_track_live => 'Live captions (sampled from page)';
  String get web_video_track_menu => 'Subtitle track';
  String get wheel_page_turn_interval => 'Mouse wheel page-turn interval';
  String get word_favorite_added => 'Word saved to favorites';
  String get word_favorite_removed => 'Word removed from favorites';
  String get yomitan_api_key => 'Yomitan API key (optional)';
  String get yomitan_api_server => 'Yomitan API server';
  String get yomitan_api_server_hint =>
      'Let yomitan-api clients query Fushi\'s dictionaries (port 19633)';
  String get yomitan_api_server_started => 'Yomitan API server started';
  String get yomitan_port_kill_action => 'End process and retry';
  String get yomitan_port_kill_confirm => 'End process';
  String yomitan_port_kill_confirm_message({required Object process}) =>
      'The port is currently used by: ${process}';
  String yomitan_port_kill_confirm_title({required Object port}) =>
      'End the process using port ${port}?';
  String yomitan_port_kill_failed({required Object process}) =>
      'Could not end ${process}. Please end it manually, then retry.';
  String yomitan_port_kill_protected({required Object process}) =>
      '${process} is a critical system process — Fushi will not end it. Change the port instead.';
  String get yomitan_port_kill_self_instance =>
      'This process is another running instance of this app.';
  String get video_metadata_primary_provider => 'Primary metadata source';
  String get video_metadata_primary_provider_hint =>
      'The other source is used as a fallback when the primary source has no exact match or is unavailable.';
  String get video_metadata_provider_mal => 'MAL (via Jikan)';
  String get video_metadata_provider_tmdb => 'TMDB';
  String get video_source_scrape_provider_follow_global =>
      'Follow global default';
  String get discovery_filter_hide_zero_seeders => 'Hide unseeded';
  String get discovery_filter_hide_suspected_manga => 'Hide suspected manga';
  String discovery_hidden_zero_seeders_count({required Object n}) =>
      '${n} unseeded hidden';
  String discovery_hidden_suspected_manga_count({required Object n}) =>
      '${n} suspected manga hidden';
  String get discovery_hidden_show => 'Show';
  String get discovery_nyaa_filter_all => 'All';
  String get discovery_nyaa_filter_no_remakes => 'No remakes';
  String get discovery_nyaa_filter_trusted_only => 'Trusted only';
  String get discovery_badge_trusted => 'Trusted';
  String get discovery_badge_remake => 'Remake';
  String get discovery_content_hint_manga => 'Suspected manga';
  String get video_subtitle_retime_action => 'Retime with speech model';
  String get video_subtitle_retime_no_track => 'Load a subtitle track first';
  String get video_subtitle_retime_running =>
      'Retiming subtitles with the speech model…';
  String video_subtitle_retime_done({
    required Object matched,
    required Object total,
    required Object percent,
    required Object ms,
  }) =>
      'Retimed ${matched}/${total} lines (${percent}%), median shift ${ms} ms';
  String video_subtitle_retime_low_match({required Object percent}) =>
      'Only ${percent}% of lines matched. Check the spoken language and whether this subtitle belongs to this episode.';
  String video_subtitle_retime_dropped({required Object count}) =>
      '${count} malformed lines were left out';
  String get video_subtitle_retime_failed => 'Subtitle retiming failed';
  String get video_metadata_identifier_words => 'Identifier words';
  String get video_metadata_identifier_words_hint =>
      'Rewrite, block or offset titles before they are matched';
  String get video_metadata_identifier_words_empty => 'Not configured';
  String get video_metadata_identifier_words_invalid => 'Invalid rules';
  String get video_metadata_identifier_words_syntax =>
      'One rule per line, # starts a comment. Block: a regular expression. Replace: A => B. Episode offset: front <> back >> EP+1. Combined: A => B && front <> back >> EP+1.';
  String get video_source_scrape_metadata_locale => 'Metadata language';
  String get video_source_scrape_metadata_locale_hint =>
      'BCP-47 language tag such as ja or zh-CN. Leave empty to follow the global metadata language.';
  String get video_work_locked_fields => 'Locked fields';
  String get video_work_locked_fields_hint =>
      'Locked fields keep their current values the next time this work is scraped.';
  String get video_work_locked_fields_saved => 'Field locks saved';
  String get video_work_field_title => 'Title';
  String get video_work_field_original_title => 'Original title';
  String get video_work_field_overview => 'Overview';
  String get video_work_field_tagline => 'Tagline';
  String get video_work_field_rating => 'Rating';
  String get video_work_field_cover => 'Cover';
  String get video_work_field_backdrop => 'Backdrop';
  String get manga_discovery_section_publishing => 'Popular publishing manga';
  String get local_audio_file_unavailable =>
      'Audio database unavailable. Select the original DB file again.';
  String get local_audio_file_reselect => 'Select audio database again';
  String get download_request_failed =>
      'Could not create the download. Check the download settings and task list, then try again.';
  String get download_resource_resolve_failed =>
      'Could not fetch the download resource. Check the network and proxy settings, then try again.';
  String get download_torrent_invalid =>
      'The source returned invalid torrent data. Retry later or choose another source.';
  String get download_torrent_selection_failed =>
      'Could not uniquely match this volume in the torrent. Refresh the catalog or choose another source.';
  String get profile_language_bindings => 'Language bindings';
  String get profile_language_bindings_hint =>
      'Applies when an item has its content language set. EPUB books read it from the file; for other formats set it on the item itself.';
  String get video_shader_tier_low_hint_mobile =>
      'mpv\'s built-in sharpening (spline36 on phones). No download, no extra GPU passes. The safe choice if anything above this drops frames.';
  String get video_shader_tier_medium_hint_mobile =>
      'Anime4K deblur (S) at the source resolution. No upscaling passes, so the cost does not scale with your screen. Start here on phones.';
  String get video_shader_tier_high_hint_mobile =>
      'Anime4K deblur (M) at the source resolution. Larger kernel than Medium; still no upscaling passes. For faster phone GPUs.';
  String get video_shader_tier_ultra_hint_mobile =>
      'Anime4K deblur (M) plus an extra soft restore pass, both at the source resolution. Strongest phone tier; still no upscaling. Drop a tier if it drops frames.';
  String get dialog_background_close => 'Close (task keeps running)';
  String get reader_timer_show => 'Show reading timer';
  String media_source_root_already_added({required Object path}) =>
      'Already a source — rescanning: ${path}';
  String get audiobook_transcribe_model_discarded =>
      'The model file could not be read and was removed. Download it again.';
  String get collection_cover_set => 'Set cover';
  String get collection_cover_reset => 'Reset to default cover';
  String get collection_cover_updated => 'Cover updated';
  String get collection_cover_failed => 'Couldn\'t set the cover';
  String get collection_rescrape => 'Rescrape metadata and cover';
  String get collection_rescrape_not_planned =>
      'This collection isn\'t in any local video source\'s scrape plan';
  String get collection_rescrape_started => 'Rescrape queued';
  String get collection_rescrape_failed => 'Rescrape failed';
  String download_batch_done({required Object n}) => '${n} task(s) processed';
  String download_batch_unsupported({required Object n}) =>
      '${n} skipped (not supported)';
  String download_batch_failed({required Object n}) => '${n} failed';
  String download_batch_delete_confirm({required Object n}) =>
      'Delete ${n} download task(s)?';
  String get sync_err_pairing_rejected =>
      'The paired device rejected this device\'s credentials — pair again to resume syncing.';
  String get sync_err_not_paired =>
      'No paired device yet — set up pairing in Fushi Interconnect first.';
  String get anki_create_lapis_not_found =>
      'Anki said the Lapis deck and note type were created, but they are still missing when Hibiki reads the collection back. Open Anki, make sure it is not busy, and try again.';
  String get anki_lapis_suggest_title => 'Anki can\'t make cards yet';
  String get anki_lapis_suggest_body =>
      'The selected deck and note type can\'t produce a card Anki will accept. Hibiki can add its Lapis note type and deck and select them for you.';
  String get anki_lapis_suggest_dismiss => 'Keep current setup';
  String get reader_vn_settings => 'Visual novel settings';
  String get reader_vn_reveal_speed => 'Text reveal speed';
  String get reader_vn_reveal_instant => 'Instant';
  String get reader_vn_screen_mode => 'Screen content';
  String get reader_vn_screen_block => 'One block';
  String get reader_vn_screen_sentences => 'Sentences';
  String get reader_vn_sentences_per_screen => 'Sentences per screen';
  String get reader_vn_preserve_dialogue => 'Keep dialogue together';
  String get reader_vn_click_advance => 'Blank tap advances';
  String get reader_vn_merge_spoken_sentence =>
      'Keep spoken sentence on one screen';
  String get auto_add_char_position_to_tags =>
      'Auto-add mining position to tags';
  String get auto_add_char_position_to_tags_hint =>
      'Tags each card with chars_12345 — how many characters into the book it was mined.';
  String get settings_group_interface => 'Interface';
  String get settings_group_content => 'Content';
  String get settings_group_learning => 'Learning';
  String get settings_group_connections => 'Connections';
  String get settings_group_data => 'Data & device';
  String get settings_group_app => 'App';
  String get settings_destination_appearance_interaction =>
      'Appearance and interaction';
  String get settings_destination_profile_presets => 'Configuration presets';
  String get settings_destination_system_about => 'System and about';
  String get settings_service_configured => 'Configured';
  String get settings_service_not_configured => 'Not configured';
  String get settings_service_builtin => 'Built-in configuration';
  String get settings_anki_media => 'Card media';
  String get settings_downloads_advanced_title => 'Engine and seeding';
  String get settings_downloads_advanced_hint =>
      'Connections, memory, peer discovery and protection';
  String get settings_downloads_routing_title => 'Completed downloads';
  String get settings_downloads_routing_hint =>
      'Path mapping and target video source';
  String get settings_downloads_encryption_title => 'Peer encryption';
  String get settings_service_disabled => 'Disabled';
  String get anki_reposition_auto_title => 'Auto-reposition after mining';
  String get anki_reposition_auto_hint =>
      'Reposition new cards by frequency about 30 seconds after the last card is mined. AnkiConnect only.';
  String anki_reposition_auto_failed({required Object deck}) =>
      'Auto reposition failed for ${deck}';
  String get mihon_extension_download_count_unknown => 'No download data';
  String get mihon_extension_bulk_install => 'Bulk install';
  String get mihon_extension_min_downloads => 'Min downloads';
  String mihon_extension_download_count({required Object count}) =>
      '${count} downloads';
  String mihon_extension_bulk_install_confirm({required Object count}) =>
      'Install ${count} extensions from this repository? Extensions run code from their sources.';
  String mihon_extension_bulk_install_progress({
    required Object current,
    required Object total,
    required Object name,
  }) => 'Installing ${current}/${total}: ${name}';
  String mihon_extension_bulk_install_done({
    required Object installed,
    required Object skipped,
    required Object failed,
  }) => 'Installed ${installed}, skipped ${skipped}, failed ${failed}';
  String get mihon_extension_bulk_install_nothing =>
      'Every extension matching the current filters is already installed.';
  String get popup_dismiss_animation => 'Popup close animation';
  String get popup_dismiss_animation_hint =>
      'Play a slide-out animation when a lookup popup is closed by swiping. Turn it off to close instantly (always off in e-ink mode).';
  String get audiobook_transcribe_model_label => 'Model';
  String get audiobook_transcribe_model_fit_light =>
      'Light — fine on phones and desktop';
  String get audiobook_transcribe_model_fit_desktop =>
      'Large — best on a desktop GPU';
  String get audiobook_transcribe_model_fit_heavy_mobile =>
      'Large — runs on phones, but slowly';
  String get audiobook_transcribe_model_custom_badge => 'Added by you';
  String get audiobook_transcribe_model_custom_add => 'Add a local model…';
  String get audiobook_transcribe_model_custom_title => 'Add a local model';
  String get audiobook_transcribe_model_custom_intro =>
      'Point Hibiki at a folder holding a sherpa-onnx export (encoder / decoder / joiner, or a single CTC model, plus tokens.txt). The files stay where they are — only the small VAD model (640 KB) is fetched if the folder has none.';
  String get audiobook_transcribe_model_custom_pick => 'Choose folder';
  String get audiobook_transcribe_model_custom_name => 'Model name';
  String get audiobook_transcribe_model_custom_blank => 'Blank token';
  String get audiobook_transcribe_model_custom_blank_hint =>
      'The blank symbol in tokens.txt. sherpa-onnx exports use <blk>; Omnilingual uses <s>. Getting it wrong garbles the whole transcript.';
  String get audiobook_transcribe_model_custom_context =>
      'Decoder context size';
  String get audiobook_transcribe_model_custom_index => 'Index tensor type';
  String get audiobook_transcribe_model_custom_advanced => 'Advanced';
  String get audiobook_transcribe_model_custom_error_tokens =>
      'No tokens.txt in that folder.';
  String get audiobook_transcribe_model_custom_error_model =>
      'No .onnx model file in that folder.';
  String get audiobook_transcribe_model_custom_error_transducer =>
      'Found an encoder but no decoder / joiner next to it.';
  String get audiobook_transcribe_model_custom_detach => 'Remove from list';
  String get audiobook_transcribe_model_custom_detach_hint =>
      'Only removes it from the model list. Your files are not deleted.';
  String audiobook_transcribe_model_custom_added({required Object name}) =>
      'Added ${name}';
  String get manga_source_interconnect_subtitle =>
      'Browse the manga library on the Fushi Interconnect server';
  String get manga_source_interconnect_disabled =>
      'Turn on Fushi Interconnect in settings to use this source';
  String get import_step_importing_book => 'Importing book…';
  String get audiobook_transcribe_engine_system => 'System speech (Apple)';
  String get audiobook_transcribe_engine_system_hint =>
      'Uses the built-in speech model — no 1 GB download from us. The system still fetches its own language assets the first time, and keeps them shared across apps.';
  String get audiobook_transcribe_engine_system_install => 'Install language';
  String get audiobook_transcribe_engine_system_installing =>
      'Asking the system to install the language…';
  String get audiobook_transcribe_engine_system_no_pause =>
      'This engine can\'t pause mid-file — stopping discards the current file\'s progress.';
  String get storage_models_components => 'Models and components';
  String get settings_group_tools => 'Tools';
  String get mihon_source_login => 'Log in';
  String get mihon_source_login_hint =>
      'Sign in on the site, then tap Done to save the session';
  String get mihon_source_login_done => 'Done';
  String get mihon_source_login_empty =>
      'No session cookies were captured; nothing was saved';
  String get mihon_source_login_saved => 'Signed in to this source';
  String get media_source_rename => 'Rename';
  String get media_source_rename_label => 'Source name';
  String get book_rename => 'Rename';
  String get book_rename_label => 'Title';
  String get dict_rename => 'Rename';
  String get dict_rename_label => 'Dictionary name';
  String get shortcut_action_global_external_open_lookup_page =>
      'Bring to front and open lookup page';
  String get stat_session_edit => 'Edit session';
  String get stat_session_edit_date => 'Date';
  String get stat_session_edit_date_invalid => 'Enter the date as YYYY-MM-DD.';
  String get stat_session_edit_chars => 'Characters';
  String get stat_session_edit_chars_invalid =>
      'Characters must be a whole number of 0 or more.';
  String get stat_session_edit_message =>
      'Changing the date moves the whole session and keeps its time of day. The character count is split back across the session\'s segments.';
  String get stat_sessions_clear_all => 'Clear all sessions';
  String get stat_sessions_clear_all_title => 'Clear all session records';
  String stat_sessions_clear_all_message({required Object n}) =>
      'Clear all ${n} session records? Their time, character and page counts go away. Your saved words and sentences, mined cards and game library are kept. This cannot be undone.';
  String stat_sessions_clear_all_ack({required Object n}) =>
      'I understand this deletes all ${n} session records.';
  String get stat_clear_all_overview_message =>
      'Clear reading, watching and game statistics all at once? Time, character counts and lookup/mining counts across all three go away. Your saved words and sentences, mined cards, game library and activity timeline are kept. This cannot be undone.';
  String get video_discovery_provider_rate_limited =>
      'Some sources are rate limited; showing the rest';
  String get video_discovery_provider_failed =>
      'Some sources failed temporarily; showing the rest';
  String get collection_rescrape_pick_work => 'Pick a work to rescrape';
  String get updates_center_title => 'Updates';
  String get updates_center_empty => 'No updates yet';
  String get updates_center_empty_hint =>
      'Subscribed anime, manga chapters, extension and app releases show up here.';
  String get updates_mark_all_seen => 'Mark all as read';
  String get updates_filter_all => 'All';
  String get updates_kind_video_episode => 'Anime episodes';
  String get updates_kind_manga_chapter => 'Manga chapters';
  String get updates_kind_manga_extension => 'Manga extensions';
  String get updates_kind_app_release => 'App releases';
  String get updates_notify_section => 'Update notifications';
  String get updates_notify_video_episode => 'Notify about new anime episodes';
  String get updates_notify_video_episode_hint =>
      'Alert when a subscribed series finishes downloading a new episode.';
  String get updates_notify_manga_chapter => 'Notify about new manga chapters';
  String get updates_notify_manga_chapter_hint =>
      'Check followed online manga for new chapters in the background.';
  String get updates_notify_manga_extension =>
      'Notify about manga extension updates';
  String get updates_notify_manga_extension_hint =>
      'Alert when an installed extension has a newer version in its repository.';
  String get updates_notify_app_release => 'Notify about app releases';
  String get updates_notify_app_release_hint =>
      'Alert when a newer Fushi release is available.';
  String get updates_system_notifications => 'System notifications';
  String get updates_system_notifications_hint =>
      'Also send a system notification. Turning this off keeps the in-app badge.';
  String get updates_check_now => 'Check for updates now';
  String get updates_checking => 'Checking...';
  String updates_notification_summary({
    required Object first,
    required Object count,
  }) => '${first} and ${count} more';
  String get audiobook_transcribe_run_location => 'Run on';
  String get audiobook_transcribe_run_local => 'This device';
  String audiobook_transcribe_run_remote({required Object device}) =>
      '${device} (interconnect host)';
  String audiobook_transcribe_remote_uploading({
    required Object device,
    required Object done,
    required Object total,
  }) => 'Uploading audio to ${device}… (${done}/${total})';
  String audiobook_transcribe_remote_running({
    required Object device,
    required Object percent,
  }) => 'Transcribing on ${device}… ${percent}%';
  String audiobook_transcribe_remote_model_missing({required Object device}) =>
      '${device} has no model for this language';
  String get download_target_label => 'Download on';
  String get download_target_local => 'This device';
  String download_target_remote({required Object device}) =>
      '${device} (interconnect host)';
  String download_remote_jobs_title({required Object device}) =>
      'Tasks on ${device}';
  String get download_remote_jobs_empty => 'No tasks on the host yet';
  String get subscription_run_location => 'Run on';
  String get subscription_run_local => 'This device';
  String get subscription_remote_empty => 'No subscriptions on the host';
  String get subscription_remote_unsupported =>
      'The host has no download backend configured';
  String subscription_run_remote({required Object device}) => 'Host ${device}';
  String subscription_remote_section_title({required Object device}) =>
      'Subscriptions on ${device}';
  String subscription_remote_provider_unavailable({required Object provider}) =>
      'The host has no indexer for this resource (${provider})';
  String get video_load_failed_not_opened =>
      'The player couldn\'t open this video. The file may be in use, or the video engine needs the app restarted.';
  String get browser_extension_test_page_title => 'Try the browser extension';
  String get browser_extension_test_page_intro =>
      'This page is served by Fushi itself, so the extension can inject it. Try the two things below.';
  String get browser_extension_test_page_probe_checking =>
      'Checking whether the extension is injected…';
  String get browser_extension_test_page_probe_ok =>
      'The extension is injected on this page.';
  String get browser_extension_test_page_probe_missing =>
      'The extension was not injected. Load it in your browser and reload this page.';
  String get browser_extension_test_page_step_popup_title =>
      'Open the extension from the toolbar';
  String get browser_extension_test_page_step_popup_body =>
      'Click the Fushi icon in the top-right toolbar; the extension popup should open.';
  String get browser_extension_test_page_step_lookup_title =>
      'Look a word up with Shift';
  String get browser_extension_test_page_step_lookup_body =>
      'Hold Shift and hover a word in the sentence below; the dictionary popup should appear.';
  String get browser_extension_test_page_sample_label => 'Practice sentence';
  String get browser_extension_test_page_action => 'Open the test page';
  String get browser_extension_test_page_action_desc =>
      'Opens a page served by Fushi in your browser to check the toolbar popup and Shift lookup.';
  String get browser_extension_test_page_server_off =>
      'Enable the lookup server first, then try again.';
  String get video_source_scrape_locale_follow_ui =>
      'Leave empty to follow the interface language';
  String get popup_history_back => 'Back';
  String get popup_history_forward => 'Forward';
  String get manga_cover_cache_max_age => 'Cover cache retention';
  String get manga_cover_cache_max_age_subtitle =>
      'Online source covers are re-downloaded after this many days';
  String get updates_notification_open_video_episode => 'Play';
  String get updates_notification_open_manga_chapter => 'Read';
  String get updates_notification_open_manga_extension => 'Update';
  String get updates_notification_open_app_release => 'Download';
  String get updates_notification_view_all => 'View updates';
  String get updates_notification_header => 'Subscription updates';
  String get remote_collection_download_members => 'Download remote episodes';
  String get remote_collection_download_nothing =>
      'No remote episodes to download';
  String remote_collection_download_started({required Object count}) =>
      'Downloading ${count} remote episode(s) in the background';
  String remote_collection_download_done({
    required Object ok,
    required Object failed,
  }) => 'Downloaded ${ok} remote episode(s), ${failed} failed';
  String get remote_collection_scrape_on_host => 'Scrape on host';
  String get remote_collection_scrape_push_to_host =>
      'Scrape here and send to host';
  String get remote_collection_scrape_unavailable =>
      'Remote scraping is not available for this host';
  String get remote_collection_scrape_done => 'Metadata updated from host';
  String get remote_collection_scrape_failed =>
      'Remote scrape failed: the work is not in the host library plan';
  String remote_collection_scrape_identity_conflict({
    required Object provider,
    required Object id,
  }) => 'The host already binds this work to ${provider} ID ${id}. Replace it?';
  String get remote_collection_scrape_pick_work =>
      'Choose which work to scrape';
  String get manga_chapter_not_downloaded =>
      'This chapter has not been downloaded yet';
  String get manga_chapter_download_queued => 'Added to the download queue';
  String get manga_chapter_download_action => 'Download';
  String get manga_chapter_download_delete_action => 'Delete download';
  String get manga_chapter_download_retry_action => 'Retry download';
  String get manga_chapter_download_status_queued => 'Queued';
  String manga_chapter_download_status_downloading({
    required Object done,
    required Object total,
  }) => 'Downloading ${done}/${total}';
  String get manga_chapter_download_status_downloaded => 'Downloaded';
  String get manga_chapter_download_status_failed => 'Download failed';
  String get stat_reading_speed => 'Reading speed';
  String get settings_study_diag_export => 'Export study diagnostics log';
  String get settings_study_diag_export_hint =>
      'Page credits, segment open/close, audiobook resume and jump trace, for troubleshooting reading-speed anomalies. Saved as a text file.';
  String get study_diag_share_subject => 'Fushi study diagnostics';
  String get reader_furigana_off => 'Off';
  String get reader_furigana_toggle => 'Toggle';
  String get reader_furigana_hidden => 'Hidden';
  String get manga_series_download_all => 'Download all';
  String get manga_series_download_all_none =>
      'Every chapter is already downloaded or queued';
  String get manga_series_auto_ocr => 'Recognize after download';
  String get manga_series_ocr_all_downloaded => 'Recognize all downloaded';
  String get manga_series_ocr_all_none =>
      'No downloaded chapter needs recognition';
  String get manga_series_ocr_queued => 'Recognition queued';
  String get manga_series_ocr_no_engine => 'No OCR engine is available';
  String get manga_chapter_ocr_action => 'Recognize this chapter';
  String get manga_series_subscribe => 'Subscribe';
  String get manga_series_unsubscribe => 'Unsubscribe';
  String get manga_series_auto_download => 'Auto-download new chapters';
  String get manga_online_download_all => 'Download all';
  String get manga_online_select_all => 'Select all';
  String manga_series_download_all_queued({required Object count}) =>
      '${count} chapters queued';
  String get manga_chapter_locked_title => 'Chapter locked';
  String get manga_chapter_locked_hint =>
      'The source requires signing in and purchasing or renting this chapter before it can be downloaded.';
  String get manga_chapter_locked_download_anyway => 'Download anyway';
  String manga_series_download_all_locked_skipped({required Object count}) =>
      'Skipped ${count} locked chapters';
  String get mihon_sources_search_hint => 'Search sources';
  String get mihon_source_login_forward => 'Forward';
  String get reader_furigana_dimmed => 'Dimmed';
  String get mihon_source_login_import_browser => 'Import from browser';
  String get mihon_source_login_import_hint =>
      'The site was opened in your browser. The Fushi extension will send its session here; sign in there if needed, then tap Done.';
  String mihon_source_login_import_received({required Object count}) =>
      'Imported ${count} cookies from the browser';
  String get mihon_source_login_import_none =>
      'No session received from the browser yet';
  String get mihon_extension_update_all => 'Update all';
  String get mihon_extension_update_all_nothing =>
      'Every installed extension is already up to date.';
  String mihon_extension_update_all_confirm({required Object count}) =>
      'Update ${count} installed extensions to the newest version in their repositories?';
  String mihon_extension_update_all_progress({
    required Object current,
    required Object total,
    required Object name,
  }) => 'Updating ${current}/${total}: ${name}';
  String mihon_extension_update_all_done({
    required Object installed,
    required Object skipped,
    required Object failed,
  }) => 'Updated ${installed}, skipped ${skipped}, failed ${failed}';
  String get mihon_sources_sort_by_downloads => 'Sort by downloads';
  String get mihon_sources_sort_by_downloads_done =>
      'Sources reordered by extension downloads';
  String get mihon_sources_sort_by_downloads_no_data =>
      'No download counts available yet; refresh the extension repositories first';
  String manga_series_ocr_running({
    required Object chapter,
    required Object done,
    required Object total,
  }) => 'Recognizing ${chapter}: page ${done}/${total}';
  String manga_series_ocr_queued_count({required Object count}) =>
      '${count} chapters waiting';
  String manga_chapter_ocr_status_running({
    required Object done,
    required Object total,
  }) => 'Recognizing ${done}/${total}';
  String get manga_chapter_ocr_status_queued => 'Waiting for recognition';
  String get manga_ocr_boxes_toggle => 'Show recognized text regions';
  String get remote_manga_added_to_shelf =>
      'Added to the manga shelf; chapters download from the peer';
  String get backup_category_games => 'Games';
  String get backup_category_games_desc =>
      'Game library, metadata sources and covers';
  String get options_github_sponsors => 'Support Fushi on GitHub Sponsors';
  String get shortcut_action_global_scroll_line_down => 'Scroll down one step';
  String get shortcut_action_global_scroll_line_up => 'Scroll up one step';
  String get shortcut_action_global_scroll_to_top => 'Scroll to top';
  String get shortcut_action_global_scroll_to_bottom => 'Scroll to bottom';
  String get mining_audio_head_pad => 'Audio padding before sentence';
  String get mining_audio_head_pad_hint =>
      'Extra audio kept before the subtitle starts, so the first syllable is not clipped. Never runs into the previous line.';
  String get mining_audio_tail_pad => 'Audio padding after sentence';
  String get mining_audio_tail_pad_hint =>
      'Extra audio kept after the subtitle ends, so trailing sounds are not cut short. Never runs into the next line.';
  String mining_audio_pad_readout({required Object ms}) => '${ms} ms';
  String get audiobook_transcribe_model_scope_dedicated =>
      'Dedicated — most accurate for this language';
  String get audiobook_transcribe_model_scope_multilingual =>
      'Multilingual — wide coverage, less accurate per language';
  String audiobook_transcribe_elapsed_total({required Object elapsed}) =>
      'Total time ${elapsed}';
  String get manga_ocr_settings_open => 'OCR settings';
  String get manga_chrome_floating => 'Floating toolbar';
  String get manga_chrome_floating_subtitle =>
      'Hide the toolbar over the page; tap the middle of the page or hover at the top edge to reveal it. Off keeps the toolbar pinned above the page.';
  String get popup_ctx_edit_start => 'Edit sentence';
  String get popup_ctx_edit_confirm => 'Confirm edit';
  String get popup_ctx_edit_cancel => 'Discard edit';
  String get card_source_review_title =>
      'Reviewing card source · Reading progress is preserved';
  String get card_source_review_continue => 'Continue reading here';
  String get card_source_review_return => 'Return';
  String get card_source_review_changes => 'Choose fields to update';
  String get card_source_review_save => 'Save selected changes';
  String get card_source_review_missing =>
      'The original note could not be found. Sync Anki or connect the Fushi Interconnect server it lives on.';
  String get card_source_review_failed =>
      'Changes were not saved. The note may have changed or the device is unavailable.';
  String get card_source_review_saved => 'Original note updated';
  String get card_source_review_no_changes => 'No fields selected for updating';
  String get card_source_review_media_missing =>
      'Source media is unavailable on this device. Import or download it first.';
  String get card_source_review_invalid =>
      'This source link is invalid or uses an unsupported version.';
  String get card_source_review_local_required =>
      'Download this video before reviewing it without changing server progress.';
  String get card_source_review_before => 'Original';
  String get card_source_review_after => 'Updated';
  String get card_source_review_conflict_warning =>
      'Avoid editing this note in Anki and Fushi at the same time. If a conflict occurs, your changes stay in a local draft.';
  String get card_source_review_draft_saved =>
      'Changes remain in a local draft. Resume it to review and submit again.';
  String get card_source_review_draft_resume => 'Resume draft';
  String get card_source_review_draft_discard => 'Discard draft';
  String get card_source_review_draft_existing =>
      'A draft already exists. Resume or discard it before making another edit.';
  String get card_source_review_fingerprint_mismatch =>
      'This file does not match the card source. Open the matching file to continue.';
  String get card_source_review_source => 'Card source';
  String get card_source_review_video_title =>
      'Reviewing card clip · Watch progress is preserved';
  String get card_source_review_video_watching =>
      'Watching normally · Watch progress is being saved';
  String get card_source_review_video_return =>
      'Return to original watch position';
  String get card_source_review_video_continue => 'Continue watching here';
  String get handlebar_source_link => 'Source link';
  String get remote_book_audiobook_download => 'Download audiobook from peer';
  String manga_series_no_chapters_in_language({required Object language}) =>
      'This source only lists ${language} chapters';
  String manga_series_try_sibling_language({required Object language}) =>
      'Try ${language}';
  String get manga_series_remove_from_bookshelf => 'Remove from manga shelf';
  String get manga_series_remove_confirm =>
      'Remove this series from the shelf? Downloaded chapters and reading progress will be deleted.';
  String get manga_chapter_locked_login_unsupported_hint =>
      'This chapter must be purchased or rented on the site; signing in inside the app cannot unlock this kind of series yet.';
  String get reader_volume_open => 'Open this volume';
  String get reader_volume_peek_failed => 'Could not read this volume';
  String get web_video_player_unavailable =>
      'The built-in web page player is temporarily disabled; this address cannot be played inside the app for now.';
  String get video_mining_image_mode_video_clip => 'Video clip with sound';
  String get video_mining_image_mode_video_clip_hint =>
      'Export picture and sentence sound together in one MP4. Anki plays it through its media player; autoplay follows the card settings. Playback may open in a separate player depending on the client.';
  String get reader_gallery_title => 'Illustrations';
  String reader_gallery_unlocked_count({
    required Object unlocked,
    required Object total,
  }) => 'Unlocked ${unlocked} / ${total}';
  String get reader_gallery_filter_unlocked => 'Unlocked';
  String get reader_gallery_filter_all => 'All';
  String get reader_gallery_position_jump => 'Jump to current reading position';
  String get reader_gallery_position_current => 'Current reading position';
  String get reader_gallery_locked_title => 'Not reached yet';
  String reader_gallery_locked_unlock_hint({required Object chapter}) =>
      'Unlocks automatically once you reach ${chapter}';
  String get reader_gallery_locked_blur_hint =>
      'Image blur is on; reveal to view';
  String get reader_gallery_locked_back => 'Back to last seen';
  String get reader_gallery_locked_reveal => 'View anyway';
  String get reader_gallery_unlocked_empty => 'No unlocked illustrations yet';
  String get reader_stats_title => 'Book statistics';
  String get reader_stats_clock_running => 'Timing';
  String get reader_stats_clock_paused => 'Paused';
  String get reader_stats_clock_pause => 'Pause timer';
  String get reader_stats_clock_resume => 'Resume timer';
  String reader_stats_chars_per_hour({required Object n}) => '${n} chars/h';
  String get reader_stats_position => 'Reading position';
  String get reader_stats_position_chapter => 'Chapter';
  String get reader_stats_position_book => 'Book';
  String reader_stats_position_progress({
    required Object current,
    required Object total,
  }) => '${current} / ${total} chars';
  String get reader_stats_book_total => 'Book total';
  String reader_stats_lookups({required Object n}) => 'Lookups ${n}';
  String reader_stats_cards({required Object n}) => 'Cards ${n}';
  String get reader_stats_remaining_chapter => 'Chapter remaining';
  String get reader_stats_remaining_book => 'Book remaining';
  String get reader_stats_full_records_open => 'Open full records';
  String get reader_control_title => 'Book title';
  String get reader_control_slot_hidden => 'Remove from reader';
  String get reader_control_reject_required =>
      'Required buttons must stay on the reader.';
  String get reader_control_reject_title =>
      'The book title only fits the top center; nothing else goes there.';
  String get reader_control_editor_title => 'Reader button layout';
  String get reader_control_editor_hint =>
      'Drag buttons between the top and bottom bars, or remove them.';
  String get reader_control_reset_layout =>
      'Restore default reader button layout';
  String get manga_rescan_empty => 'No text was recognized in this box.';
  String get manga_rescan_failed => 'Re-OCR of the selected area failed';
  String get manga_rescan_hint =>
      'Drag a box over the text you want to re-run OCR on. The result replaces the existing text layer inside that box.';
  String get manga_rescan_region_updated =>
      'Selected area re-recognized and saved to the page';
  String get manga_rescan_run => 'Re-OCR selected area';
  String get manga_rescan_running => 'Recognizing the selected box...';
  String get manga_rescan_undo_failed =>
      'Could not restore the previous text layer';
  String get manga_rescan_undone =>
      'Restored the text layer from before the re-scan';
  String get manga_tap_ocr_notice_body =>
      'This page has no text data yet. Fushi will recognise it with the OCR engine you picked in settings, then you can tap words to look them up. You can change the engine or turn this off in Settings › Manga OCR.';
  String get manga_tap_ocr_notice_confirm => 'Recognise now';
  String get manga_tap_ocr_notice_title => 'Tap to recognise';
  String get manga_tap_ocr_online_lens_only =>
      'Online chapters are not stored locally, so only Google Lens can read them — the page image is uploaded to Google.';
  String get manga_tap_ocr_running => 'Recognising this page…';
  String get manga_tap_to_ocr => 'Tap to recognise';
  String get manga_tap_to_ocr_desc =>
      'Tap an unrecognised speech bubble to recognise the page and look words up right away.';
  String get mihon_in_bookshelf => 'In manga shelf';
  String get reader_furigana_hide => 'Hide';
  String get reader_furigana_partial => 'Partial';
  String get reader_furigana_show => 'Show';
  String get reader_gallery => 'Gallery';
  String get reader_gallery_current => 'Reading here';
  String get web_video_platform_unsupported =>
      'The built-in web player is only available on Windows for now.';
  String get audiobook_transcribe_alignment_hint =>
      'Generated text is aligned to the audio in a second model pass before saving. The alignment model is downloaded if needed.';
  String get popup_full_width => 'Full-width popup';
  String get popup_full_width_hint =>
      'Ignore the maximum width and let the popup span the available width. Its position still follows the selected word.';
  String get video_mining_image_mode_hint =>
      'Whether the video card cover is an animation of the subtitle clip or a single still frame — and which frame';
  String get gal_mining_image_mode_hint =>
      'Galgame scenes barely move within one line, so a still screenshot is usually smaller and just as useful.';
  String get video_mining_animated_format_hint =>
      'AVIF is far smaller than GIF at the same quality, and its top quality tier allows a higher resolution and frame rate than GIF or WebP. Falls back to GIF automatically when the bundled encoder cannot produce it.';
  String get gal_mining_animated_format_hint =>
      'Same formats as video cards, stored separately: a galgame frame barely moves within one line, so the trade-off differs.';
  String get gal_mining_still_format_hint =>
      'Same formats as video cards, stored separately. Game window grabs come in as PNG: keeping PNG is lossless but several times larger, while JPG matches how these screenshots were compressed before.';
  String get custom_fonts_default => 'Default (Yu Gothic UI)';
  String get custom_fonts_default_hint =>
      'Use the built-in Yu Gothic UI rendering for the Galgame Hook overlay.';
  String get gal_hook_text_font_family => 'Galgame caption font';
  String get gal_mining_screenshot_size => 'Galgame screenshot size';
  String get gal_mining_screenshot_size_full_hd =>
      'Up to 1920 × 1080 (recommended)';
  String get gal_mining_screenshot_size_hd => 'Up to 1280 × 720';
  String get gal_mining_screenshot_size_hint =>
      'Applies to still screenshots and animated-capture fallbacks. Keeps the aspect ratio, never enlarges, and saves as JPEG at quality 90.';
  String get gal_mining_screenshot_size_original => 'Original size (JPEG)';
  String get game_attach_mode_last_used => 'Last used';
  String get game_attach_mode_luna_safe => 'Luna safe attachment (recommended)';
  String get game_attach_mode_luna_safe_hint =>
      'Do not inject into the game. Use Luna original text and system loopback audio to avoid double-hook conflicts.';
  String get game_attach_mode_native => 'Fushi native attachment';
  String get game_attach_mode_native_hint =>
      'Inject Fushi into the game to capture native text and clean audio. Do not use it together with LunaTranslator.';
  String get game_attach_mode_title => 'Choose attachment mode';
  String get game_line_bulk_text_hint =>
      'Bulk text detected. Character lookup is paused.';
  String get game_luna_audio_lead_in => 'Complete sentence start';
  String get game_luna_audio_lead_in_hint =>
      'If the beginning of this sentence is cut off, increase this value.';
  String get game_luna_audio_per_game_hint =>
      'Saved separately for each attached game.';
  String get game_luna_audio_tail_trim => 'Remove next-line audio';
  String get game_luna_audio_tail_trim_hint =>
      'If the end of this sentence includes the next line, increase this value.';
  String get game_luna_audio_timing => 'Audio alignment';
  String get game_text_source_luna => 'LunaTranslator (external original text)';
  String get game_text_source_luna_connected =>
      'Connected. Fushi will use the original text selected in LunaTranslator.';
  String get game_text_source_luna_waiting =>
      'Start LunaTranslator and enable Network Service. Fushi will reconnect automatically.';
  String get game_text_thread_recommended => 'Recommended';
  String get game_text_threads_dormant_hide => 'Hide threads without text';
  String game_text_threads_dormant_show({required Object count}) =>
      'Show threads without text (${count})';
  String get video_setting_subtitle_language_filter => 'Subtitle language';
  String get video_setting_subtitle_language_filter_all => 'All';
  String get video_setting_subtitle_language_filter_chinese => 'Chinese';
  String get video_setting_subtitle_language_filter_hint =>
      'Filter Chinese and Japanese content inside the selected subtitle track.';
  String get video_setting_subtitle_language_filter_japanese => 'Japanese';
  String get game_lookup_samples_title => 'Calibrate with samples';
  String get game_lookup_samples_capture => 'Capture current line';
  String get game_lookup_samples_hint =>
      'Wait until the line is fully visible, then capture it. Capture several different lines before adjusting the layout.';
  String get game_lookup_samples_empty => 'No samples yet';
  String get game_lookup_samples_remove => 'Remove sample';
  String get game_lookup_samples_reference => 'Calibration sample';
  String get game_lookup_samples_validation => 'Validation sample';
  String get game_lookup_samples_boxes => 'Show click areas';
  String get game_lookup_samples_native_hint =>
      'The boxes show the areas used to select characters. Adjust the layout until they cover the original text.';
  String get game_lookup_samples_unavailable =>
      'This layout cannot cover the complete line. Adjust the area or font size.';
  String get game_lookup_samples_save => 'Save draft';
  String get game_lookup_samples_apply => 'Use draft for live calibration';
  String get game_lookup_samples_saved => 'Draft saved on this device';
  String get game_lookup_samples_saved_hint =>
      'Samples and screenshots stay on this device. Saving a draft does not enable lookup.';
  String get game_lookup_samples_busy => 'Working…';
  String get game_lookup_samples_load_failed =>
      'The saved sample draft could not be read.';
  String get game_lookup_samples_limit =>
      'Keep up to eight samples. Remove a sample before capturing another.';
  String get game_lookup_samples_hover =>
      'Move the pointer over a box to inspect its character.';
  String get game_lookup_samples_anchor_hint =>
      'Select a character, then click its center in the screenshot. Add points near the beginning and end of a line.';
  String get game_lookup_samples_fit => 'Align from marked points';
  String get game_lookup_samples_clear_anchors => 'Clear marked points';
  String get game_lookup_samples_fit_insufficient =>
      'Mark at least two characters on the same line in a calibration sample.';
  String get game_lookup_samples_fit_failed =>
      'The marked points do not fit one layout. Check the points or adjust the font and wrapping.';
  String get game_lookup_samples_residual => 'Point error';
  String get game_lookup_samples_measured => 'Measured samples';
  String get game_lookup_samples_validation_hint =>
      'Validation points are checked but do not change the fitted layout.';
  String get game_lookup_samples_region_mode => 'Move/resize area';
  String get game_lookup_samples_point_mode => 'Mark characters';
  String get game_lookup_samples_pan_mode => 'Pan image';
  String get game_lookup_samples_region_title =>
      'Dialogue area (orange outline)';
  String get game_lookup_samples_layout_title =>
      'Character layout (blue boxes)';
  String get game_lookup_samples_region_hint =>
      'Drag inside the orange outline to move it; drag its handles to resize. Width and height control wrapping space, not character size.';
  String get game_lookup_samples_points_hint =>
      'Mark 3–5 spread-out characters in each of several training samples. Avoid punctuation. Points need not be perfect: select, drag, or nudge them later. Two points provide only a rough estimate.';
  String get game_lookup_samples_point_selected => 'Selected character';
  String get game_lookup_samples_point_remove => 'Remove selected point';
  String get game_lookup_samples_nudge_left =>
      'Move left by one screenshot pixel';
  String get game_lookup_samples_nudge_right =>
      'Move right by one screenshot pixel';
  String get game_lookup_samples_nudge_up => 'Move up by one screenshot pixel';
  String get game_lookup_samples_nudge_down =>
      'Move down by one screenshot pixel';
  String get game_lookup_samples_zoom_in => 'Zoom in';
  String get game_lookup_samples_zoom_out => 'Zoom out';
  String get game_lookup_samples_zoom_reset => 'Fit screenshot';
  String get game_lookup_samples_pixel_hint =>
      'Values are screenshot pixels. Enter a number and press Enter, or use the minus/plus buttons.';
  String get game_lookup_samples_font_hint =>
      'An empty font uses Yu Gothic. A font or size mismatch may prevent all sentences from aligning.';
  String get game_lookup_samples_residual_hint =>
      'Distance from your reference points, not measured accuracy of the game glyphs.';
  String get game_lookup_samples_few_points =>
      'Few training points: alignment is sensitive to small marking errors. Add spread-out points in multiple samples before judging accuracy.';
  String get game_lookup_attached_calibration_preparing =>
      'Preparing click protection. Do not click the game dialogue yet.';
  String get game_lookup_attached_calibration_paused =>
      'Calibration is paused while the game is hidden or in the background. Return with Alt+Tab and wait for the character highlights before clicking. You can still adjust and confirm here.';
  String get game_lookup_attached_calibration_unavailable =>
      'Calibration is unavailable. Stop clicking the game dialogue; adjust the parameters or cancel calibration.';
  String get game_lookup_attached_calibration_ended =>
      'Calibration has ended. Close this dialog before starting again.';
  String get game_lookup_attached_calibration_region_help =>
      'Adjust the region here, or drag it over a screenshot in the sample editor. The game overlay only accepts highlighted character probes.';
  String get game_lookup_attached_calibration_text_changed =>
      'The dialogue changed. Cancel and reopen calibration for the current line.';
  String get game_lookup_attached_calibration_ready =>
      'Probe clicks are ready. Click inside the highlighted character boxes in order; clicks outside those boxes still control the game.';
  String get game_lookup_samples_auto_align => 'Align from screenshot';
  String get game_lookup_samples_auto_failed =>
      'No reliable regular grid was found. Use a complete multiline sample, keep the dialogue inside the frame, and exclude the speaker and buttons. Your draft has not changed.';
  String get game_lookup_samples_auto_success =>
      'Grid measured. Check that each box contains its character and that subsequent lines match before applying.';
  String get game_lookup_samples_auto_grid =>
      'Measured grid · no font adjustment required';
  String get game_lookup_samples_auto_multiline =>
      'Select or capture one complete sample with two or more lines; a short line cannot determine the wrap position.';
  String get game_lookup_samples_auto_unsupported =>
      'This sample contains character widths that the grid method cannot verify. Use manual layout for now.';
  String get game_lookup_samples_auto_hint =>
      'Frame the dialogue roughly and automatically measure character spacing, line spacing, and wrapping. Training samples contribute together; validation samples check the result.';
  String get game_lookup_samples_manual_layout => 'Manual layout (advanced)';
  String get game_lookup_samples_capture_failed =>
      'Could not capture a sample. Try again; if it still fails, keep this window open and report this message.';
  String get game_lookup_samples_auto_pending =>
      'Not automatically aligned yet. Let the yellow frame contain each line of dialogue, then select “Align from screenshot”. You do not need to adjust font size, character spacing, or click character centres first.';
  String get game_lookup_samples_auto_rows_missing =>
      'No clear dialogue lines were found. Check that the yellow frame contains the complete dialogue but not the speaker name or interface buttons.';
  String get game_lookup_samples_auto_inconsistent =>
      'The samples have inconsistent wrapping or character grids, so one layout cannot be applied. Check whether the highlighted sample captured the complete dialogue.';
  String get game_lookup_samples_auto_preview_failed =>
      'The automatic measurement did not pass the complete-dialogue check, so this result was not applied.';
  String game_lookup_samples_auto_sample_failed({
    required Object sample,
    required Object reason,
  }) => 'Sample ${sample}: ${reason}';
  String get game_lookup_samples_capture_changed =>
      'The dialogue or window changed while capturing. Keep a complete line visible, then capture again.';
  String get game_lookup_samples_capture_source =>
      'There is no dialogue available to capture. Confirm that the game is attached and dialogue text is being received.';
  String get game_lookup_samples_capture_window =>
      'Could not get the complete game image. Confirm that the game window is not minimized, then capture again.';
  String get game_lookup_samples_capture_overlay =>
      'Could not safely hide or restore the lookup layer. Close the calibration window, reattach to the game, and try again.';
  String get game_lookup_samples_capture_unsupported =>
      'This text contains a ruby format that is not supported yet. Capture a normal dialogue line instead.';
  String get game_lookup_samples_save_failed =>
      'The draft could not be written to disk. The current samples remain in this window; try saving again.';
  String get game_lookup_samples_search_title =>
      'Recognition region (orange frame)';
  String get game_lookup_samples_search_hint =>
      'Enclose all dialogue text. Recognition stays inside this frame and keeps your selection. Character boxes are computed separately. Moving the frame requires aligning again.';
  String game_lookup_samples_current({
    required Object sample,
    required Object total,
  }) => 'Current sample: ${sample} of ${total}';
  String get game_lookup_samples_auto_current_hint =>
      'Use the selected screenshot only. It should show the complete dialogue across at least two lines.';
  String get game_lookup_samples_auto_all_hint =>
      'Use all calibration samples together. Validation samples only check the result.';
  String get game_lookup_samples_advanced => 'Advanced options';
  String get game_lookup_samples_advanced_hint =>
      'Extra samples, pixel values, manual layout, and overlay inspection';
  String get game_lookup_samples_fit_all =>
      'Fit all calibration samples together';
  String get game_lookup_samples_fit_all_hint =>
      'Use this when several complete samples share one grid. Validation samples remain checks.';
  String get game_lookup_samples_auto_align_current =>
      'Align current screenshot';
  String get game_lookup_samples_auto_align_all =>
      'Align all calibration samples';
  String get game_lookup_samples_pixel_advanced_hint =>
      'These are source screenshot pixels for the orange recognition frame. They are a manual backup, not character size.';
  String get game_lookup_samples_capture_unavailable =>
      'This window could not be captured. Your saved calibration is unchanged; the capture failure has been logged for diagnosis.';
  String get game_lookup_samples_dialogue => 'Dialogue calibration';
  String get game_lookup_samples_narration => 'Narration calibration';
  String get game_lookup_samples_auto_text_alignment_failed =>
      'The detected text does not match the hooked text closely enough.';
  String get game_lookup_samples_auto_text_alignment_weak =>
      'The detected text only weakly matches the hooked text.';
  String get game_lookup_samples_auto_geometry_weak =>
      'There are not enough well-spread character positions to determine the layout.';
  String get game_lookup_samples_auto_indent_ambiguous =>
      'The continuation line start could not be determined.';
  String get game_lookup_samples_auto_line_wrap_inconsistent =>
      'The measured character widths cannot reproduce the sample\'s line wrapping.';
  String get game_lookup_samples_auto_geometry_out_of_bounds =>
      'The fitted layout extends beyond the screenshot.';
  String get game_lookup_samples_auto_preview_unavailable =>
      'The native layout preview was unavailable.';
  String get game_lookup_samples_auto_preview_text_overflow =>
      'The fitted text exceeds the calibrated body region.';
  String game_lookup_samples_diagnostic({
    required Object reason,
    required Object detail,
  }) => 'Diagnostic: ${reason}${detail}';
  String get game_lookup_samples_capture_replace => 'Replace current sample';
  String get game_lookup_samples_auto_line_spacing_missing =>
      'Reliable line spacing could not be measured. Try a complete two- or three-line sample.';
  String get game_lookup_samples_auto_character_positions_inconsistent =>
      'The generated cells differ too much from the detected positions. This result was not applied.';
  String get game_lookup_samples_capture_surface_mapping =>
      'The game window and the upscaled image cannot be aligned right now, so a calibration screenshot cannot be captured.';
}
