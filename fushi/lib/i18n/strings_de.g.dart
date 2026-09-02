part of 'strings.g.dart';

// Path: <root>
class _StringsDe extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsDe.build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.de,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super.build(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <de>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  @override
  late final _StringsDe _root = this; // ignore: unused_field

  // Translations
  @override
  String get action_exit => 'Beenden';
  @override
  String get action_favorite => 'Favorit';
  @override
  String activity_days_ago({required Object n}) => 'vor ${n} T.';
  @override
  String activity_hours_ago({required Object n}) => 'vor ${n} Std.';
  @override
  String get activity_just_now => 'Gerade eben';
  @override
  String activity_minutes_ago({required Object n}) => 'vor ${n} Min.';
  @override
  String get add_to_collection => 'Zur Sammlung hinzufügen';
  @override
  String get anime_download_back => 'Zurück';
  @override
  String get anime_download_batch => 'Batch';
  @override
  String get anime_download_category_all => 'Alle';
  @override
  String get anime_download_category_english => 'Englisch übersetzt';
  @override
  String get anime_download_category_non_english => 'Nicht-Englisch';
  @override
  String get anime_download_category_raw => 'Roh';
  @override
  String get anime_download_delete => 'Löschen';
  @override
  String anime_download_episode_count({required Object count}) => 'EP ${count}';
  @override
  String get anime_download_generic_download => 'Herunterladen';
  @override
  String get anime_download_generic_hint => 'Magnet-Link';
  @override
  String get anime_download_generic_title =>
      'Link einfügen (Bücher, Videos, alles)';
  @override
  String get anime_download_include_subs => 'Untertitel einschließen';
  @override
  String get anime_download_kind_auto => 'Automatisch';
  @override
  String get anime_download_kind_book => 'Buch';
  @override
  String get anime_download_kind_video => 'Video';
  @override
  String get anime_download_magnet_invalid => 'Ungültiger Magnet-Link';
  @override
  String get anime_download_no_results => 'Keine Ergebnisse';
  @override
  String get anime_download_no_subs => 'Keine Untertitel';
  @override
  String get anime_download_no_tasks => 'Noch keine Download-Aufgaben';
  @override
  String get anime_download_nyaa_query => 'Nyaa-Suchbegriffe';
  @override
  String get anime_download_play_now => 'Während des Downloads abspielen';
  @override
  String get anime_download_play_now_fail =>
      'Noch nicht bereit (Metadaten ausstehend oder Verbindung fehlgeschlagen) – versuche es später erneut';
  @override
  String get anime_download_play_now_ok =>
      'Importiert – öffne es aus der Videobibliothek, um es während des Downloads abzuspielen';
  @override
  String get anime_download_push => 'Download übertragen';
  @override
  String get anime_download_push_failed =>
      'Übertragung an qBittorrent fehlgeschlagen';
  @override
  String get anime_download_pushed =>
      'Übertragen – wird nach Abschluss automatisch importiert';
  @override
  String get anime_download_refresh => 'Aktualisieren';
  @override
  String get anime_download_relocate => 'Umbenennen / verschieben';
  @override
  String anime_download_relocate_engine_failed({required Object reason}) =>
      'Fehlgeschlagen, nichts geändert: ${reason}';
  @override
  String get anime_download_relocate_hint =>
      'Fushi benennt um/verschiebt über die Download-Engine, sodass das Seeding nicht unterbrochen wird. Umbenennen im Explorer kann nicht rückgängig gemacht werden.';
  @override
  String anime_download_relocate_library_failed({required Object reason}) =>
      'Dateien verschoben, aber die Bibliothek zeigt noch auf den alten Pfad: ${reason}';
  @override
  String get anime_download_relocate_move_title => 'In Ordner verschieben';
  @override
  String get anime_download_relocate_no_files =>
      'Diese Aufgabe hat noch keine Dateien zum Umbenennen (Metadaten nicht bereit)';
  @override
  String anime_download_relocate_ok({required Object rows}) =>
      'Umbenannt / verschoben; ${rows} Bibliothekseinträge aktualisiert';
  @override
  String get anime_download_relocate_pick_folder => 'Zielordner auswählen';
  @override
  String get anime_download_relocate_rename_title => 'Datei umbenennen';
  @override
  String get anime_download_retry => 'Erneut versuchen';
  @override
  String get anime_download_search => 'Suchen';
  @override
  String get anime_download_search_error_proxy_hint =>
      'Wenn die Seite nicht direkt erreichbar ist, konfiguriere einen Netzwerk-Proxy in den Download-Einstellungen.';
  @override
  String get anime_download_search_failed =>
      'Suche fehlgeschlagen oder Zeitüberschreitung. Tippe auf „Erneut versuchen".';
  @override
  String get anime_download_search_hint => 'Anime-Titel';
  @override
  String get anime_download_search_start_hint =>
      'Suche oben nach einem Titel – Torrents und Untertitel werden automatisch zugeordnet. Downloads sind nicht auf Videos beschränkt: Bücher, Manga, Hörbücher und Spiele werden ebenfalls importiert.';
  @override
  String get anime_download_sort_date => 'Veröffentlicht';
  @override
  String get anime_download_sort_seeders => 'Seeder';
  @override
  String get anime_download_sort_size => 'Größe';
  @override
  String get anime_download_store_unavailable =>
      'Download-Plan-Speicher ist nicht verfügbar';
  @override
  String get anime_download_subs_badge => 'Untertitel';
  @override
  String get anime_download_subs_failed =>
      'Untertitelsuche fehlgeschlagen. Tippe auf „Erneut versuchen".';
  @override
  String get anime_download_subs_need_key =>
      'Gib oben einen Jimaku-API-Schlüssel ein, um Untertitel zu suchen.';
  @override
  String get anime_download_tasks => 'Download-Aufgaben';
  @override
  String get anime_download_title => 'Anime-Download';
  @override
  String get anime_download_trusted => 'Vertrauenswürdig';
  @override
  String get anime_download_trusted_only => 'Nur vertrauenswürdige';
  @override
  String get anki_allow_duplicates => 'Duplikate erlauben';
  @override
  String get anki_allow_duplicates_hint =>
      'Duplikatprüfung beim Hinzufügen von Karten überspringen';
  @override
  String get anki_card_action_failed =>
      'Kartenaktion fehlgeschlagen. Bitte versuche es erneut.';
  @override
  String get anki_compact_glossaries => 'Kompakte Glossare';
  @override
  String get anki_compact_glossaries_hint =>
      'Kompaktes Format für Glossareinträge verwenden';
  @override
  String get anki_connect_api_key => 'API-Schlüssel';
  @override
  String get anki_connect_host => 'Host';
  @override
  String get anki_connect_port => 'Port';
  @override
  String get anki_create_lapis => 'Lapis-Stapel erstellen';
  @override
  String get anki_create_lapis_exists =>
      'Lapis-Notiztyp und -Stapel sind bereits vorhanden – ausgewählt.';
  @override
  String anki_create_lapis_failed({required Object error}) =>
      'Lapis-Stapel konnte nicht erstellt werden: ${error}';
  @override
  String get anki_create_lapis_hint =>
      'Fügt den Lapis-Notiztyp und einen Lapis-Stapel zu Anki hinzu und wählt sie aus.';
  @override
  String get anki_create_lapis_success =>
      'Lapis-Notiztyp und -Stapel erstellt.';
  @override
  String get anki_deck => 'Stapel';
  @override
  String get anki_duplicate_scope => 'Duplikatprüfungsbereich';
  @override
  String get anki_duplicate_scope_collection => 'Gesamte Sammlung';
  @override
  String get anki_duplicate_scope_deck => 'Ausgewähltes Deck (und Unterdecks)';
  @override
  String get anki_duplicate_scope_deck_root => 'Stammdeck (alle Unterdecks)';
  @override
  String get anki_duplicate_scope_hint =>
      'Welche Decks durchsucht werden, um zu prüfen, ob eine Karte bereits existiert. Nur AnkiConnect; AnkiDroid durchsucht immer die gesamte Sammlung.';
  @override
  String get anki_error_collection_unavailable =>
      'AnkiDroids Sammlung ist derzeit nicht verfügbar. Öffne AnkiDroid mindestens einmal, stelle sicher, dass es nicht synchronisiert und die API aktiviert ist, und versuche es erneut.';
  @override
  String get anki_error_connection_refused =>
      'Verbindung zu Anki fehlgeschlagen: Verbindung abgelehnt. Stelle sicher, dass Anki Desktop läuft und das AnkiConnect-Add-on installiert ist.';
  @override
  String get anki_error_connection_timeout =>
      'Verbindung zu Anki fehlgeschlagen: Zeitüberschreitung. Prüfe Host, Port und Firewall-Einstellungen.';
  @override
  String get anki_error_connection_unknown =>
      'Export zu Anki fehlgeschlagen: ein unerwarteter Verbindungsfehler ist aufgetreten. Einzelheiten im Fehlerprotokoll.';
  @override
  String get anki_error_http =>
      'Export zu Anki fehlgeschlagen: beim Verbinden mit AnkiConnect ist ein HTTP-Fehler aufgetreten.';
  @override
  String get anki_error_permission_denied =>
      'AnkiDroid hat keine Kartenzugriffsberechtigung erteilt. Genehmige den angezeigten Berechtigungsdialog und tippe dann erneut auf die Schaltfläche zum Exportieren.';
  @override
  String get anki_fetch => 'Stapel & Notiztypen aktualisieren';
  @override
  String get anki_fetching => 'Wird abgerufen...';
  @override
  String get anki_field_mappings => 'Feldzuordnungen';
  @override
  String get anki_field_not_mapped => 'Nicht zugeordnet';
  @override
  String get anki_mine_to_server => 'An gekoppeltes Gerät senden';
  @override
  String get anki_mine_to_server_hint =>
      'Erstellte Karten an das Anki des gekoppelten Hosts senden (dessen Decks und Einstellungen) statt an dieses Gerät. Erfordert eine Interconnect-Kopplung.';
  @override
  String get anki_mined_action_add_duplicate => 'Als neue Karte hinzufügen';
  @override
  String get anki_mined_action_overwrite => 'Diese Karte überschreiben';
  @override
  String get anki_mined_action_view => 'In Anki anzeigen / öffnen';
  @override
  String get anki_mined_card_subtitle =>
      'Wähle, was mit der übereinstimmenden Karte geschehen soll.';
  @override
  String get anki_mined_card_title => 'Karte bereits in Anki';
  @override
  String anki_mined_multiple_matches({required Object count}) =>
      '${count} übereinstimmende Karten';
  @override
  String get anki_not_configured =>
      'Tippe auf Aktualisieren, um deine Anki-Stapel und Notiztypen zu laden.';
  @override
  String get anki_note_open_failed => 'Konnte die Karte nicht in Anki öffnen.';
  @override
  String get anki_note_type => 'Notiztyp';
  @override
  String get anki_note_viewer_empty => 'Diese Karte hat keine lesbaren Felder.';
  @override
  String get anki_note_viewer_open_in_anki => 'In Anki öffnen';
  @override
  String get anki_note_viewer_title => 'Vorhandene Karte';
  @override
  String get anki_open_no_card =>
      'Keine Karte für dieses Wort in Anki gefunden.';
  @override
  String get anki_overwrite_scope => 'Überschreibungsbereich';
  @override
  String get anki_overwrite_scope_all => 'Alle passenden Karten';
  @override
  String get anki_overwrite_scope_hint =>
      'Welche bereits erstellten Karten das grüne ✓ überschreiben kann';
  @override
  String get anki_overwrite_scope_latest => 'Nur neueste Karte';
  @override
  String get anki_refresh_hint =>
      'Nach dem Erstellen oder Umbenennen eines Stapels oder Notiztyps in Anki hier tippen, um zu aktualisieren.';
  @override
  String anki_select_handlebar({required Object field}) =>
      'Wert für ${field} auswählen';
  @override
  String get anki_settings_label => 'Anki-Einstellungen';
  @override
  String get anki_tag_default_section => 'Standard-Tags';
  @override
  String get anki_tag_include_category => 'Tag für Quellkategorie hinzufügen';
  @override
  String get anki_tag_include_category_hint =>
      'Bücher erhalten „book“, Videos „video“, Spiele „game“';
  @override
  String get anki_tag_include_fushi => 'Tag „fushi“ hinzufügen';
  @override
  String get anki_tag_include_fushi_hint =>
      'Jede von Fushi erstellte Karte kennzeichnen';
  @override
  String get anki_tags => 'Tags';
  @override
  String get anki_tags_hint =>
      'Leerzeichen-getrennte Tags, die jeder Karte hinzugefügt werden';
  @override
  String get app_icon_label => 'App-Symbol';
  @override
  String get app_icon_presets => 'Vorlagen';
  @override
  String get app_ui_scale => 'UI-Größe';
  @override
  String get app_ui_scale_hint =>
      'Scales app text and spacing. Lower it on large screens if controls feel oversized.';
  @override
  String get app_version => 'App-Version';
  @override
  String get apply_theme => 'Design anwenden';
  @override
  String get audio_clip_failed =>
      'Audioausschnitt konnte nicht extrahiert werden – die Audioquelle fehlt möglicherweise oder ist nicht lesbar';
  @override
  String get audio_import => 'Audio importieren';
  @override
  String get audio_panel_add_audio => 'Audio hinzufügen';
  @override
  String get audio_panel_auto => 'Automatisch';
  @override
  String get audio_panel_pick_new_subtitle => 'Neue Untertiteldatei auswählen';
  @override
  String get audio_source_added => 'Audioquelle hinzugefügt';
  @override
  String audio_source_dns_error({required Object host}) =>
      'Verbindung zur Audioquelle fehlgeschlagen: "${host}" kann nicht aufgelöst werden — überprüfen Sie Ihr Netzwerk oder entfernen Sie diese Quelle in den Einstellungen';
  @override
  String get audio_source_edit_target_gone =>
      'Diese Audioquelle existiert nicht mehr – Bearbeitung verworfen';
  @override
  String get audio_source_edit_url => 'Audioquellen-Link bearbeiten';
  @override
  String audio_source_error({required Object detail}) =>
      'Audioquellen-Fehler: ${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi Interconnect';
  @override
  String get audio_source_loopback_warning =>
      'Zeigt auf dieses Gerät – nach Gerätewechsel neu zuweisen';
  @override
  String audio_source_request_error({required Object detail}) =>
      'Audioquellen-Anfrage fehlgeschlagen: ${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      'Audioquellen-Timeout: "${host}" — Server antwortet nicht, versuchen Sie es später oder ändern Sie die Quelle';
  @override
  String get audio_source_updated => 'Audioquelle aktualisiert';
  @override
  String get audio_source_url_invalid =>
      'Der Link muss http(s) sein und einen Platzhalter für Begriff oder Lesung enthalten';
  @override
  String get audio_unavailable => 'Kein Audio gefunden.';
  @override
  String get audio_volume => 'Lautstärke';
  @override
  String get audiobook_attached => 'Hörbuch angehängt';
  @override
  String get audiobook_audio_missing => 'Audiodatei fehlt';
  @override
  String get audiobook_background_play => 'Nach Verlassen weiterspielen';
  @override
  String get audiobook_background_play_hint =>
      'Wenn deaktiviert, stoppt das Hörbuch beim Verlassen des Lesers. Aktiviere die Option, um im Hintergrund weiterzuspielen.';
  @override
  String get audiobook_export_clip => 'Clip-Video exportieren';
  @override
  String get audiobook_export_clip_failed => 'Clip-Export fehlgeschlagen';
  @override
  String get audiobook_export_clip_in_progress => 'Exportiere Clip…';
  @override
  String get audiobook_export_clip_no_selection =>
      'Wähle zuerst Text aus, um einen Clip zu exportieren';
  @override
  String get audiobook_export_clip_no_text =>
      'Diese Auswahl enthält keinen darstellbaren Text';
  @override
  String get audiobook_export_clip_saved => 'Clip gespeichert';
  @override
  String get audiobook_export_clip_unsupported_range =>
      'Diese Auswahl kann nicht exportiert werden (überschreitet Kapitel- oder Audiodateigrenzen)';
  @override
  String get audiobook_import => 'Hörbuch importieren';
  @override
  String get audiobook_import_error => 'Import fehlgeschlagen';
  @override
  String audiobook_import_error_copy_failed({required Object name}) =>
      'Datei konnte nicht kopiert werden: ${name}';
  @override
  String audiobook_import_error_disk_full({required Object size}) =>
      'Nicht genügend Speicherplatz. Benötigt: ${size}';
  @override
  String get audiobook_import_success => 'Hörbuch importiert';
  @override
  String get audiobook_load_error => 'Hörbuch konnte nicht geladen werden.';
  @override
  String get audiobook_pick_alignment => 'Ausrichtungsdatei auswählen';
  @override
  String get audiobook_reference_original => 'Originaldateien referenzieren';
  @override
  String get audiobook_reference_original_desc =>
      'Audio am Originalort belassen und von dort abspielen; das Buch funktioniert nicht mehr, wenn die Datei verschoben oder gelöscht wird.';
  @override
  String get audiobook_relocate => 'Datei verschieben';
  @override
  String get audiobook_relocate_done => 'Audio verschoben';
  @override
  String get auto_add_book_name_to_tags =>
      'Buchtitel automatisch zu Tags hinzufügen';
  @override
  String auto_chapter({required Object n}) => 'Kapitel ${n}';
  @override
  String get auto_read_on_lookup =>
      'Wort bei Nachschlagen automatisch vorlesen';
  @override
  String get auto_search => 'Automatische Suche';
  @override
  String get auto_search_debounce_delay =>
      'Verzögerung der automatischen Suche';
  @override
  String get auto_select_search_window => 'Suchfenster automatisch auswählen';
  @override
  String get auto_select_search_window_hint =>
      'Mehrere Fenstergrößen beim Import testen und die mit der besten Trefferquote auswählen';
  @override
  String get av_sync => 'A/V-Sync';
  @override
  String get av_sync_reset => 'Zurücksetzen';
  @override
  String get back => 'Zurück';
  @override
  String get background_color => 'Hintergrundfarbe';
  @override
  String get background_color_desc => 'Hintergrund der Reader-Seite';
  @override
  String get backup_category_audiobooks => 'Hörbuch-Audio';
  @override
  String get backup_category_audiobooks_desc => 'Hörbuch-Audio und Ausrichtung';
  @override
  String get backup_category_books => 'Bücher';
  @override
  String get backup_category_books_desc =>
      'Buchdateien (EPUB und extrahierte Inhalte)';
  @override
  String get backup_category_dictionary => 'Wörterbücher';
  @override
  String get backup_category_dictionary_desc =>
      'Importierte Wörterbücher und ihre Dateien';
  @override
  String get backup_category_fonts => 'Eigene Schriften';
  @override
  String get backup_category_fonts_desc =>
      'Importierte benutzerdefinierte Schriftdateien';
  @override
  String get backup_category_local_audio => 'Lokale Audiodatenbanken';
  @override
  String get backup_category_local_audio_desc =>
      'Lokale Aussprache-Audiodatenbanken';
  @override
  String get backup_category_profiles => 'Profile';
  @override
  String get backup_category_profiles_desc => 'Konfigurationsprofile';
  @override
  String get backup_category_progress => 'Lesefortschritt';
  @override
  String get backup_category_progress_desc => 'Lesepositionen und Lesezeichen';
  @override
  String get backup_category_settings => 'Einstellungen';
  @override
  String get backup_category_settings_desc => 'App- und Reader-Einstellungen';
  @override
  String get backup_category_statistics => 'Statistiken';
  @override
  String get backup_category_statistics_desc =>
      'Lese-, Video- und Mining-Statistiken';
  @override
  String get backup_category_videos => 'Videos';
  @override
  String get backup_category_videos_desc => 'Lokale Videodateien';
  @override
  String get backup_export => 'Backup exportieren';
  @override
  String get backup_export_books_all => 'Alle Bücher';
  @override
  String backup_export_books_selected({required Object count}) =>
      '${count} Bücher ausgewählt';
  @override
  String get backup_export_categories_hint =>
      'Wähle aus, was in die Sicherung aufgenommen werden soll. Bücher abwählen entfernt diese vollständig – ihre Inhalte und Einträge werden mit entfernt.';
  @override
  String get backup_export_categories_title =>
      'Wähle aus, was exportiert werden soll';
  @override
  String get backup_export_choose_books => 'Bücher auswählen';
  @override
  String get backup_export_choose_videos => 'Videos auswählen';
  @override
  String backup_export_failed({required Object message}) =>
      'Backup-Export fehlgeschlagen: ${message}';
  @override
  String get backup_export_hint =>
      'Wähle aus, was enthalten sein soll; die Datenbank (Bücher, Fortschritt, Statistiken) ist immer enthalten. Deaktiviere große Elemente (lokale Audios, Videos), um das Backup zu verkleinern.';
  @override
  String get backup_export_no_books => 'Keine Bücher zur Auswahl';
  @override
  String get backup_export_no_videos => 'Keine Videos zur Auswahl';
  @override
  String get backup_export_select_all => 'Alle auswählen';
  @override
  String get backup_export_select_none => 'Keine auswählen';
  @override
  String get backup_export_success => 'Backup erfolgreich exportiert';
  @override
  String get backup_export_videos_all => 'Alle Videos';
  @override
  String backup_export_videos_selected({required Object count}) =>
      '${count} Videos ausgewählt';
  @override
  String get backup_exporting => 'Backup wird erstellt…';
  @override
  String get backup_import => 'Backup importieren';
  @override
  String backup_import_confirm({
    required Object date,
    required Object bookCount,
    required Object statsCount,
  }) =>
      'Dadurch werden alle aktuellen Daten durch das Backup vom ${date} ersetzt.\n\n${bookCount} Bücher, ${statsCount} Statistikeinträge.\n\nNach der Wiederherstellung wird die App neu gestartet.';
  @override
  String get backup_import_confirm_title => 'Backup wiederherstellen?';
  @override
  String get backup_import_contents_hint =>
      'Element abwählen, um es zu überspringen.';
  @override
  String get backup_import_contents_title => 'Diese Sicherung enthält';
  @override
  String backup_import_failed({required Object message}) =>
      'Backup-Import fehlgeschlagen: ${message}';
  @override
  String get backup_import_hint =>
      'Aus einer Backup-Datei wiederherstellen. Die App wird neu gestartet.';
  @override
  String get backup_import_invalid => 'Ungültige Backup-Datei';
  @override
  String backup_import_merge_preview({
    required Object bookCount,
    required Object progressCount,
  }) =>
      'Zusammenführung fügt ${bookCount} Bücher hinzu und aktualisiert ${progressCount} Lesepositionen.';
  @override
  String get backup_import_mode_label => 'Importmodus';
  @override
  String get backup_import_mode_merge =>
      'In aktuelle Bibliothek zusammenführen';
  @override
  String get backup_import_mode_overwrite => 'Gesamte Bibliothek überschreiben';
  @override
  String get backup_import_overlay_title => 'Sicherung wird importiert';
  @override
  String get backup_import_overlay_warning =>
      'Deine Daten werden wiederhergestellt. Bitte schließe die App nicht.';
  @override
  String get backup_import_preserve_sync_note =>
      'Deine Sync-Einstellungen auf diesem Gerät (Konto und Zugangsdaten) bleiben erhalten.';
  @override
  String get backup_import_restart_button => 'Jetzt neu starten';
  @override
  String get backup_import_settings_off_hint =>
      'Schriften/Darstellung/Profile dieses Geräts behalten; nur Bücher & Lesedaten wiederherstellen.';
  @override
  String get backup_import_settings_on_hint =>
      'Vollständige Wiederherstellung: Schriften, Darstellung und Profile stammen aus dem Backup.';
  @override
  String get backup_import_settings_toggle =>
      'Einstellungen & Profile importieren';
  @override
  String get backup_import_success => 'Backup wiederhergestellt. Neustart…';
  @override
  String get backup_import_validating_hint =>
      'Die Sicherungsdatei wird geprüft und in der Vorschau angezeigt. Dies kann einen Moment dauern.';
  @override
  String get backup_import_validating_title => 'Sicherung wird gelesen…';
  @override
  String backup_schema_newer({required Object version}) =>
      'Dieses Backup erfordert eine neuere Version der App (Schema ${version}). Bitte zuerst aktualisieren.';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      '${n} Element(e) zur Sammlung hinzugefügt.';
  @override
  String batch_delete_confirm({required Object n}) =>
      '${n} Buch/Bücher löschen? Dies kann nicht rückgängig gemacht werden.';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      '${n} Video(s) löschen? Dies kann nicht rückgängig gemacht werden.';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      '${n} Medien löschen und ${m} Sammlung(en) auflösen? Dies kann nicht rückgängig gemacht werden.';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      '${n} Medien gelöscht, ${m} Sammlung(en) aufgelöst.';
  @override
  String batch_delete_success({required Object n}) =>
      '${n} Buch/Bücher gelöscht.';
  @override
  String batch_delete_success_video({required Object n}) =>
      '${n} Video(s) gelöscht.';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      '${m} Sammlung(en) auflösen? Die Gruppierung wird entfernt; die Medien bleiben erhalten.';
  @override
  String batch_dissolve_success({required Object m}) =>
      '${m} Sammlung(en) aufgelöst.';
  @override
  String get batch_invert_selection => 'Auswahl umkehren';
  @override
  String get batch_select => 'Auswählen';
  @override
  String get batch_select_all => 'Alle';
  @override
  String batch_selected_count({required Object n}) => '${n} ausgewählt';
  @override
  String get batch_tag_add => 'Hinzufügen';
  @override
  String batch_tag_added({required Object name, required Object n}) =>
      'Tag "${name}" zu ${n} Buch/Büchern hinzugefügt.';
  @override
  String batch_tag_added_video({required Object name, required Object n}) =>
      'Tag „${name}" zu ${n} Video(s) hinzugefügt.';
  @override
  String get batch_tag_apply => 'Anwenden';
  @override
  String get batch_tag_keep => 'Behalten';
  @override
  String get batch_tag_remove => 'Entfernen';
  @override
  String batch_tag_removed({required Object name, required Object n}) =>
      'Tag "${name}" von ${n} Buch/Büchern entfernt.';
  @override
  String batch_tag_removed_video({required Object name, required Object n}) =>
      'Tag „${name}" von ${n} Video(s) entfernt.';
  @override
  String get batch_tag_title => 'Tags verwalten';
  @override
  String get book_continue_reading => 'Continue Reading';
  @override
  String get book_css_editor_cancel => 'Abbrechen';
  @override
  String get book_css_editor_confirm_reset =>
      'CSS für diese Datei auf Standard zurücksetzen?';
  @override
  String get book_css_editor_confirm_reset_all =>
      'CSS für ALLE Dateien auf Standard zurücksetzen?';
  @override
  String get book_css_editor_discard => 'Verwerfen';
  @override
  String get book_css_editor_edit_css => 'Buch-CSS bearbeiten';
  @override
  String get book_css_editor_no_css_files =>
      'Keine CSS-Dateien in diesem Buch gefunden.';
  @override
  String get book_css_editor_no_extract_dir =>
      'Buchverzeichnis nicht gefunden. Importieren Sie das Buch erneut, um CSS zu bearbeiten.';
  @override
  String get book_css_editor_reset_all => 'Alle zurücksetzen';
  @override
  String get book_css_editor_reset_current => 'Aktuelle zurücksetzen';
  @override
  String get book_css_editor_reset_done => 'CSS wurde zurückgesetzt.';
  @override
  String get book_css_editor_save => 'Speichern';
  @override
  String get book_css_editor_saved => 'CSS gespeichert.';
  @override
  String get book_css_editor_title => 'Buch-CSS-Editor';
  @override
  String get book_css_editor_unsaved_changes => 'Ungespeicherte Änderungen';
  @override
  String get book_css_editor_unsaved_changes_message =>
      'Sie haben ungespeicherte Änderungen. Verwerfen?';
  @override
  String get book_directory_not_found => 'Buchverzeichnis nicht gefunden.';
  @override
  String get book_edit_author => 'Autor';
  @override
  String get book_file_not_found => 'Buchdatei nicht gefunden';
  @override
  String get book_import_duplicate_cancel => 'Nein, abbrechen';
  @override
  String get book_import_duplicate_cancelled => 'Import abgebrochen';
  @override
  String get book_import_duplicate_keep => 'Ja, Suffix hinzufügen';
  @override
  String book_import_duplicate_message({required Object name}) =>
      'Ein Buch namens „${name}“ existiert bereits. Trotzdem importieren? „Ja“ importiert mit nummeriertem Suffix; „Nein“ bricht ab.';
  @override
  String get book_import_duplicate_title => 'Doppeltes Buch';
  @override
  String get book_mark_completed_action => 'Als abgeschlossen markieren';
  @override
  String get book_mark_uncompleted_action =>
      'Als nicht abgeschlossen markieren';
  @override
  String get book_marked_completed => 'Als abgeschlossen markiert';
  @override
  String get book_marked_uncompleted => 'Als nicht abgeschlossen markiert';
  @override
  String get book_mode => 'Buchmodus';
  @override
  String book_read_progress({required Object percent}) => '${percent}% gelesen';
  @override
  String get book_scrape_cover => 'Cover online suchen';
  @override
  String get book_scrape_empty => 'Keine passenden Cover gefunden';
  @override
  String get book_scrape_failed => 'Cover konnte nicht abgerufen werden';
  @override
  String get book_scrape_hint => 'Buchtitel / Autor';
  @override
  String get book_scrape_search => 'Suchen';
  @override
  String get book_scrape_search_failed =>
      'Suche fehlgeschlagen. Tippe auf „Suchen", um es erneut zu versuchen.';
  @override
  String get book_scrape_title => 'Cover online zuordnen';
  @override
  String get book_scrape_use => 'Verwenden';
  @override
  String get book_search => 'Im Buch suchen';
  @override
  String get book_search_hint => 'Suchtext eingeben…';
  @override
  String get book_search_no_results => 'Keine Ergebnisse gefunden';
  @override
  String book_search_results({required Object n}) => '${n} Ergebnis(se)';
  @override
  String get books => 'Bücher';
  @override
  String get browser_extension_enable_server_first =>
      'Tipp: Aktiviere zuerst oben den „Yomitan API-Server" und setze einen API-Schlüssel, damit die Erweiterung automatisch mit einer funktionierenden Verbindung konfiguriert wird.';
  @override
  String get browser_extension_mobile_unsupported =>
      'Mobile Browser können diese Erweiterung nicht laden. Nutze stattdessen die App-interne Suche im Reader oder Videoplayer.';
  @override
  String get browser_extension_page_intro =>
      'Auf dem Desktop kannst du Wörter nachschlagen, Untertitel analysieren und Karten direkt in Chrome oder Edge erstellen. Bereite die Erweiterung unten vor und lade sie dann in deinem Browser.';
  @override
  String get browser_extension_prepare_button =>
      'Erweiterungsdateien vorbereiten';
  @override
  String get browser_extension_prepare_hint =>
      'Startet den Nachschlage-Server und entpackt die Erweiterung lokal; der Ordnerpfad wird in die Zwischenablage kopiert.';
  @override
  String get browser_extension_reinstall_button =>
      'Erneut vorbereiten / aktualisieren';
  @override
  String get browser_extension_server_off => 'Nachschlage-Server aus';
  @override
  String get browser_extension_server_on => 'Nachschlage-Server an';
  @override
  String get browser_extension_status_connected => 'Erweiterung verbunden';
  @override
  String get browser_extension_status_never => 'Erweiterung noch nicht erkannt';
  @override
  String get browser_extension_step_dev_mode =>
      'Aktiviere den „Entwicklermodus" (Schalter oben rechts).';
  @override
  String get browser_extension_step_done_auto =>
      'Fertig. Die Erweiterung ist bereits für die Verbindung mit Fushi eingerichtet – nichts muss manuell eingegeben werden.';
  @override
  String get browser_extension_step_load_unpacked =>
      'Klicke auf „Entpackte Erweiterung laden".';
  @override
  String get browser_extension_step_open_page =>
      'Öffne die Browser-Erweiterungsseite:';
  @override
  String get browser_extension_step_pick_folder =>
      'Wähle den Erweiterungsordner unten aus (der Pfad wurde bereits in deine Zwischenablage kopiert).';
  @override
  String get browser_extension_step_verify =>
      'Überprüfe, ob die Erweiterung geladen und verbunden ist';
  @override
  String get browser_extension_verify_button => 'Verbindung prüfen';
  @override
  String get browser_extension_verify_checking => 'Wird geprüft…';
  @override
  String get browser_extension_verify_connected =>
      'Erweiterung erkannt und verbunden.';
  @override
  String get browser_extension_verify_not_detected =>
      'Noch keine Erweiterung erkannt. Stelle sicher, dass sie in deinem Browser geladen und aktiviert ist, und prüfe dann erneut.';
  @override
  String get browser_extension_version_app => 'In App enthalten';
  @override
  String get browser_extension_version_browser => 'Im Browser geladen';
  @override
  String get browser_extension_version_label => 'Erweiterungsversion';
  @override
  String get browser_extension_version_mismatch =>
      'Die im Browser geladene Erweiterung ist veraltet. Bereite die Erweiterung bei Bedarf erneut vor und lade sie dann über die Erweiterungsseite deines Browsers neu (chrome://extensions).';
  @override
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      'Port ${port} wird von einem anderen Prozess verwendet (normalerweise die Yomitan-API-Komponente – ein Python-Prozess, der von deinem Browser gestartet wurde). Beende diesen Prozess oder deaktiviere die Yomitan-API in Yomitans erweiterten Einstellungen, dann aktiviere den Yomitan-API-Server in Fushi erneut.';
  @override
  String get cancel => 'Abbrechen';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      'Karten-Cover auf Standbild zurückgefallen (animierter Clip nicht verfügbar): ${reason}';
  @override
  String get card_duplicate => 'Doppelte Karte — nicht exportiert.';
  @override
  String get card_export_failed => 'Kartenexport fehlgeschlagen.';
  @override
  String card_export_failed_detail({required Object reason}) =>
      'Karte konnte nicht exportiert werden: ${reason}';
  @override
  String get card_export_not_configured =>
      'Anki nicht konfiguriert. Öffnen Sie die Anki-Einstellungen und tippen Sie auf Abrufen.';
  @override
  String card_exported({required Object deck}) =>
      'Karte exportiert nach『${deck}』.';
  @override
  String card_exported_audio_failed({required Object reason}) =>
      'Karte exportiert, aber das Audio konnte nicht heruntergeladen werden (${reason}).';
  @override
  String get card_mined_no_sentence_captured =>
      'Karte erstellt, aber kein Satz erfasst (wähle das Wort erneut aus, oder dieser Text enthält keinen erkennbaren Satz).';
  @override
  String get card_mined_unmapped_sentence_audio_field =>
      'Karte mit Satz-Audio erstellt, aber dein Anki-Notiztyp hat kein Feld, das {sentence-audio} zugeordnet ist. Ordne ein Feld {sentence-audio} zu.';
  @override
  String get card_mined_unmapped_sentence_field =>
      'Karte erstellt, aber dein Anki-Notiztyp hat kein Feld für den Satz. Verwende Einstellungen -> „Lapis-Deck erstellen" oder ordne ein Feld {sentence} zu.';
  @override
  String get card_mined_without_sentence_audio =>
      'Karte ohne Satz-Audio erstellt (keines für diese Auswahl gefunden).';
  @override
  String get card_mining_pending => 'Karte wird hinzugefügt…';
  @override
  String card_overwritten({required Object deck}) =>
      'Karte in 『${deck}』 überschrieben.';
  @override
  String get change_source => 'Quelle ändern';
  @override
  String get changelog_empty =>
      'Kein Änderungsprotokoll gefunden. Überprüfe deine Netzwerk- oder Proxy-Einstellungen.';
  @override
  String get changelog_open_releases => 'Release-Seite öffnen';
  @override
  String get changelog_prerelease => 'Vorabversion';
  @override
  String chapter_progress({
    required Object idx,
    required Object total,
    required Object suffix,
    required Object pct,
  }) => 'Kapitel ${idx} / ${total}${suffix} · ${pct}%';
  @override
  String get clear => 'Leeren';
  @override
  String get clear_dictionary_description =>
      'Alle Wörterbuchergebnisse werden aus dem Verlauf gelöscht. Sind Sie sicher?';
  @override
  String get clear_dictionary_title => 'Wörterbuch-Ergebnisverlauf löschen';
  @override
  String get lookup_block_capture => 'Bildschirmaufnahme blockieren';
  @override
  String get lookup_block_capture_hint =>
      'Schließt die Nachschlage- und Zwischenablage-Popupfenster von Screenshots, Bildschirmaufnahmen und Livestreaming aus (Windows). Deaktiviere dies, um Screenshots, Aufnahmen und Streaming das Erfassen des Nachschlage-Popups zu ermöglichen.';
  @override
  String get collapse_dictionaries => 'Wörterbücher einklappen';
  @override
  String get collection_bookmark => 'Lesezeichen';
  @override
  String get collection_clear_confirm =>
      'Ausgewählte Sammlungen dauerhaft löschen? Dies kann nicht rückgängig gemacht werden.';
  @override
  String get collection_clear_scope => 'Bereich leeren';
  @override
  String get collection_collapse => 'Einklappen';
  @override
  String collection_continue_progress({required Object n}) =>
      'Fortsetzen · EP ${n}';
  @override
  String get collection_empty => 'Sammlung ist leer';
  @override
  String get collection_expand => 'Ausklappen';
  @override
  String get collection_export_all_books => 'Alle Bücher';
  @override
  String get collection_export_all_mined => 'Alle gesammelten Sätze';
  @override
  String get collection_export_all_words => 'Alle Lieblingswörter';
  @override
  String get collection_export_dedupe => 'Nach Satz deduplizieren';
  @override
  String get collection_export_failed => 'Export fehlgeschlagen';
  @override
  String get collection_export_favorites_scope => 'Lieblingssätze';
  @override
  String get collection_export_format => 'Format';
  @override
  String get collection_export_mined_title => 'Mined Sentences';
  @override
  String get collection_export_no_items => 'Nichts zum Exportieren';
  @override
  String get collection_export_pick_book => 'Buch auswählen';
  @override
  String get collection_export_save => 'Save Export';
  @override
  String get collection_export_saved => 'Export gespeichert';
  @override
  String get collection_export_scope => 'Exportbereich';
  @override
  String get collection_export_sentences_title => 'Favorite Sentences';
  @override
  String get collection_export_words_title => 'Favorite Words';
  @override
  String get collection_loading_hint =>
      'Sammlungen werden geladen und Audiodateien zugeordnet…';
  @override
  String get collection_member_removed => 'Aus Sammlung entfernt';
  @override
  String get collection_merge_title => 'Sammlungen zusammenführen';
  @override
  String get collection_merged => 'Sammlungen zusammengeführt.';
  @override
  String get collection_mined => 'Erstellt';
  @override
  String get collection_open => 'Öffnen';
  @override
  String get collection_play => 'Abspielen';
  @override
  String get collection_remove_member => 'Aus Sammlung entfernen';
  @override
  String get collection_remove_member_confirm =>
      'Dieses Element aus der Sammlung entfernen? Das Element selbst bleibt erhalten.';
  @override
  String get collection_sentence => 'Satz';
  @override
  String get collection_sort_by_imported => 'Nach Importdatum sortieren';
  @override
  String get collection_sort_by_title => 'Nach Name sortieren';
  @override
  String get collection_view_all => 'Alle anzeigen';
  @override
  String collection_watched_progress({
    required Object done,
    required Object total,
  }) => '${done}/${total} angesehen';
  @override
  String get collection_word => 'Wort';
  @override
  String get collections => 'Sammlungen';
  @override
  String get color_container => 'Container';
  @override
  String get color_container_desc =>
      'Schalterleisten, Wiedergabeleisten-Hintergrund';
  @override
  String get color_link => 'Linkfarbe';
  @override
  String get color_link_desc => 'Hyperlink-Farbe im Reader';
  @override
  String get color_primary => 'Primär';
  @override
  String get color_primary_desc =>
      'Audio-Hervorhebung, Schaltflächen, Schalter';
  @override
  String get color_sentence_audio_highlight => 'Audio-Hervorhebung';
  @override
  String get color_sentence_audio_highlight_desc =>
      'Untertitel-Synchronisierung des Hörbuchs';
  @override
  String get color_secondary => 'Sekundär';
  @override
  String get color_secondary_desc =>
      'Wörterbucheinträge, Bücherregal-Abzeichen';
  @override
  String get color_tertiary => 'Tertiär';
  @override
  String get color_tertiary_desc => 'Sammlungen, Lesestatistiken';
  @override
  String get columns_per_page => 'Spalten pro Seite';
  @override
  String get combine_into_series => 'Zu Serie zusammenfassen';
  @override
  String get copied => 'Kopiert';
  @override
  String get copied_to_clipboard => 'In die Zwischenablage kopiert.';
  @override
  String get copy => 'Kopieren';
  @override
  String get copy_error => 'Fehler kopieren';
  @override
  String get crash_dump_empty => 'Keine Absturzberichte';
  @override
  String crash_dump_label({required Object n}) => 'Absturzberichte (${n})';
  @override
  String get crash_dump_open_folder => 'Berichtsordner öffnen';
  @override
  String get crash_dump_privacy_notice =>
      'Absturzberichte (.dmp) enthalten einen Schnappschuss des Prozessspeichers und können den von dir gelesenen Text, nachgeschlagene Wörter oder andere In-App-Daten enthalten. Teile sie nur mit Entwicklern, denen du vertraust.';
  @override
  String get crash_dump_share => 'Bericht teilen';
  @override
  String get crash_dump_share_subject => 'Fushi Absturzbericht';
  @override
  String get create_series => 'Serie erstellen';
  @override
  String get creator_action_add_to_stash => 'Zur Ablage hinzufügen';
  @override
  String get creator_action_copy_to_clipboard => 'In Zwischenablage kopieren';
  @override
  String get creator_action_play_audio => 'Audio abspielen';
  @override
  String get creator_action_share => 'Teilen';
  @override
  String get creator_enhancement_audio_recorder => 'Aufnahme';
  @override
  String get creator_enhancement_camera => 'Kamera';
  @override
  String get creator_enhancement_clear_field => 'Feld leeren';
  @override
  String get creator_enhancement_crop_image => 'Bild zuschneiden';
  @override
  String get creator_enhancement_local_audio => 'Lokales Audio';
  @override
  String get creator_enhancement_open_stash => 'Ablage öffnen';
  @override
  String get creator_enhancement_pick_audio => 'Audio wählen';
  @override
  String get creator_enhancement_pick_image => 'Bild wählen';
  @override
  String get creator_enhancement_pop_from_stash => 'Aus Ablage nehmen';
  @override
  String get creator_enhancement_save_tags => 'Tags speichern';
  @override
  String get creator_enhancement_search_dictionary => 'Wörterbuch durchsuchen';
  @override
  String get creator_enhancement_sentence_picker => 'Satz wählen';
  @override
  String get creator_enhancement_text_segmentation => 'Textsegmentierung';
  @override
  String get creator_export_card => 'Karte erstellen';
  @override
  String get creator_field_audio => 'Wort-Audio';
  @override
  String get creator_field_audio_sentence => 'Satz-Audio';
  @override
  String get creator_field_cloze_after => 'Nach der Lücke';
  @override
  String get creator_field_cloze_before => 'Vor der Lücke';
  @override
  String get creator_field_cloze_inside => 'Lückeninhalt';
  @override
  String get creator_field_collapsed_meaning => 'Eingeklappte Bedeutung';
  @override
  String get creator_field_context => 'Kontext';
  @override
  String get creator_field_cue_sentence => 'Untertitel-Satz';
  @override
  String get creator_field_expanded_meaning => 'Erweiterte Bedeutung';
  @override
  String get creator_field_frequency => 'Häufigkeit';
  @override
  String get creator_field_furigana => 'Furigana';
  @override
  String get creator_field_hidden_meaning => 'Versteckte Bedeutung';
  @override
  String get creator_field_image => 'Bild';
  @override
  String get creator_field_meaning => 'Bedeutung';
  @override
  String get creator_field_notes => 'Notizen';
  @override
  String get creator_field_pitch_accent => 'Tonakzent';
  @override
  String get creator_field_reading => 'Lesung';
  @override
  String get creator_field_sentence => 'Satz';
  @override
  String get creator_field_tags => 'Tags';
  @override
  String get creator_field_term => 'Begriff';
  @override
  String get custom_dict_css => 'Benutzerdefiniertes CSS';
  @override
  String get custom_dict_css_global => 'Global (alle Wörterbücher)';
  @override
  String get custom_fonts => 'Benutzerdefinierte Schriften';
  @override
  String get custom_fonts_add_system => 'Systemschrift hinzufügen';
  @override
  String get custom_fonts_archive_error =>
      'Archiv konnte nicht entpackt werden';
  @override
  String get custom_fonts_catalog_title => 'Schriftbibliothek';
  @override
  String get custom_fonts_download_failed => 'Download fehlgeschlagen';
  @override
  String get custom_fonts_downloading => 'Wird heruntergeladen...';
  @override
  String get custom_fonts_drag_hint => 'Ziehen, um Schriftpriorität zu ändern';
  @override
  String get custom_fonts_empty =>
      'Keine benutzerdefinierten Schriften hinzugefügt';
  @override
  String get custom_fonts_font_roles => 'Schriftartrollen';
  @override
  String get custom_fonts_import_file => 'Schriftdatei importieren';
  @override
  String get custom_fonts_import_url => 'Von URL importieren';
  @override
  String custom_fonts_imported_count({required Object count}) =>
      '${count} Schrift(en) importiert';
  @override
  String get custom_fonts_manage => 'Schriften verwalten';
  @override
  String get custom_fonts_no_fonts_in_archive =>
      'Keine Schriftdateien im Archiv gefunden';
  @override
  String get custom_fonts_recommended => 'Empfohlene Schriften';
  @override
  String get custom_fonts_removed => 'Schrift entfernt';
  @override
  String get custom_fonts_search_hint => 'Schriften suchen';
  @override
  String get custom_theme => 'Benutzerdefiniertes Design';
  @override
  String custom_theme_default_name({required Object n}) =>
      'Benutzerdefiniert ${n}';
  @override
  String get custom_theme_long_press_hint =>
      'Tippen zum Wechseln · Gedrückt halten zum Bearbeiten';
  @override
  String get custom_theme_name => 'Name';
  @override
  String get dark_mode => 'Dunkler Modus';
  @override
  String get dark_mode_dark => 'Dunkel';
  @override
  String get dark_mode_light => 'Hell';
  @override
  String get dark_mode_system => 'System';
  @override
  String data_root_unavailable_message({required Object path}) =>
      'Dein konfigurierter Datenspeicherort ${path} ist vorübergehend nicht erreichbar (das Laufwerk schläft möglicherweise, ist beschäftigt oder getrennt). Deine Daten sind dort sicher und unberührt – nichts geht verloren. Tippe auf „Erneut versuchen", sobald das Laufwerk bereit ist, um deine Daten zu laden, oder starte vorerst mit dem Standardspeicherort (deine vorhandenen Daten werden NICHT verändert).';
  @override
  String get data_root_unavailable_title => 'Datenspeicherort antwortet nicht';
  @override
  String get data_root_use_default_button => 'Mit Standardspeicherort starten';
  @override
  String get data_storage_change_button => 'Speicherort ändern';
  @override
  String get data_storage_change_confirm_body =>
      'Fushi verschiebt alle deine Daten in den neuen Ordner und startet dann neu. Schließe die App nicht während des Verschiebens.';
  @override
  String get data_storage_change_confirm_title => 'Datenspeicherort ändern?';
  @override
  String get data_storage_location_default => 'Standardspeicherort';
  @override
  String get data_storage_location_hint =>
      'Wo Fushi deine Bibliothek, Hörbücher und Datenbank speichert. Nur Desktop.';
  @override
  String get data_storage_location_title => 'Datenspeicherort';
  @override
  String data_storage_migrate_failed({required Object message}) =>
      'Daten konnten nicht verschoben werden: ${message}';
  @override
  String get data_storage_migrate_failed_restart => 'Neu starten';
  @override
  String get data_storage_migrate_failed_suggestions =>
      'Bitte versuche es mit einem anderen, leeren Ordner erneut. Wähle nicht den Installationsordner der App und stelle sicher, dass keine Dateien an diesem Speicherort in Verwendung sind.';
  @override
  String get data_storage_migrate_failed_title =>
      'Datenmigration fehlgeschlagen';
  @override
  String data_storage_migrate_overlay_progress({
    required Object copied,
    required Object total,
  }) => 'Dateien werden kopiert: ${copied} / ${total}';
  @override
  String get data_storage_migrate_overlay_title =>
      'Deine Daten werden verschoben';
  @override
  String get data_storage_migrate_overlay_warning =>
      'Bitte lass die App geöffnet. Schließe oder fahre deinen Computer nicht herunter, bis der Vorgang abgeschlossen ist.';
  @override
  String get data_storage_migrate_success => 'Daten verschoben. Neustart…';
  @override
  String get data_storage_migrating => 'Daten werden verschoben…';
  @override
  String get data_storage_reject_install_dir =>
      'Dieser Ordner ist der Installationsort der App und kann deine Daten nicht speichern. Bitte wähle einen anderen, leeren Ordner.';
  @override
  String get data_storage_restart_failed =>
      'Daten verschoben, aber automatischer Neustart fehlgeschlagen. Bitte öffne Fushi manuell erneut.';
  @override
  String db_downgrade_message({
    required Object dbVersion,
    required Object appVersion,
  }) =>
      'Diese Datenbank wurde von einer neueren Fushi-Version erstellt (Schema v${dbVersion}). Deine aktuelle App ist zu alt (v${appVersion}). Das Öffnen wurde zum Schutz deiner Daten blockiert. Bitte aktualisiere die App und versuche es erneut.';
  @override
  String get db_downgrade_title => 'Fushi aktualisieren';
  @override
  String get db_unrecoverable_message =>
      'Die Datenbank konnte auch nach automatischer Reparatur nicht geöffnet werden. Sie ist wahrscheinlich beschädigt. Du kannst eine Sicherung in den Einstellungen wiederherstellen oder die App-Daten löschen, um neu zu beginnen.';
  @override
  String get db_unrecoverable_title => 'Datenbank beschädigt';
  @override
  String get debug_log_share_subject => 'Fushi Debug-Log';
  @override
  String debug_log_title({required Object count}) => 'Debug-Log (${count})';
  @override
  String get debug_log_toggle => 'Debug-Log aktivieren';
  @override
  String get decrease => 'Verringern';
  @override
  String get deduplicate_pitch_accents => 'Tonhöhenakzente deduplizieren';
  @override
  String get delete_collection => 'Sammlung löschen';
  @override
  String get delete_collection_also_books =>
      'Auch die enthaltenen Bücher löschen';
  @override
  String get delete_collection_also_videos =>
      'Auch die Videos löschen (deine originalen Videodateien bleiben erhalten)';
  @override
  String get delete_custom_theme => 'Theme löschen';
  @override
  String get delete_custom_theme_confirm =>
      'Dieses benutzerdefinierte Theme löschen? Dies kann nicht rückgängig gemacht werden.';
  @override
  String get delete_in_progress => 'Löschvorgang läuft';
  @override
  String get delete_prompt_delete_selected => 'Ausgewählte löschen';
  @override
  String get delete_prompt_message =>
      'Diese Elemente wurden auf einem anderen Gerät gelöscht. Auch hier löschen?';
  @override
  String get delete_prompt_select_all => 'Alle auswählen';
  @override
  String get delete_prompt_title => 'Auf anderem Gerät gelöscht';
  @override
  String get delete_scope_keep_local_desc =>
      'Andere Geräte behalten ihre Kopie';
  @override
  String get delete_scope_sync_everywhere => 'Von allen Geräten löschen';
  @override
  String get delete_scope_sync_everywhere_desc =>
      'Andere Geräte bestätigen die Löschung bei der nächsten Synchronisierung';
  @override
  String get design_system_auto => 'Automatisch';
  @override
  String get design_system_hint => 'Steuert den visuellen Stil der App';
  @override
  String get design_system_label => 'Designsystem';
  @override
  String get dialog_add => 'HINZUFÜGEN';
  @override
  String get dialog_append => 'ANHÄNGEN';
  @override
  String get dialog_cancel => 'ABBRECHEN';
  @override
  String get dialog_clear => 'LEEREN';
  @override
  String get dialog_clear_all_dictionaries => 'Alle Wörterbücher löschen';
  @override
  String get dialog_close => 'SCHLIESSEN';
  @override
  String get dialog_connect => 'VERBINDEN';
  @override
  String get dialog_content_dictionary_clear =>
      'Das Löschen der Wörterbuchdatenbank entfernt auch alle Suchergebnisse aus dem Verlauf.';
  @override
  String get dialog_content_dictionary_delete =>
      'Das Löschen eines einzelnen Wörterbuchs kann länger dauern als das Leeren der gesamten Datenbank. Dies löscht auch alle Suchergebnisse aus dem Verlauf.';
  @override
  String get dialog_create => 'ERSTELLEN';
  @override
  String get dialog_crop => 'ZUSCHNEIDEN';
  @override
  String get dialog_delete => 'LÖSCHEN';
  @override
  String get dialog_done => 'FERTIG';
  @override
  String get dialog_edit => 'BEARBEITEN';
  @override
  String get dialog_edit_info => 'Info bearbeiten';
  @override
  String get dialog_exit => 'BEENDEN';
  @override
  String get dialog_export => 'EXPORTIEREN';
  @override
  String get dialog_import => 'IMPORTIEREN';
  @override
  String get dialog_import_dictionary => 'Wörterbuch importieren';
  @override
  String get dialog_import_folder => 'Ordner-Wörterbuch importieren';
  @override
  String get dialog_importing => 'IMPORTIEREN…';
  @override
  String get dialog_launch_ankidroid => 'ANKIDROID STARTEN';
  @override
  String get dialog_ok => 'OK';
  @override
  String get dialog_play => 'ABSPIELEN';
  @override
  String get dialog_read => 'LESEN';
  @override
  String get dialog_record => 'AUFNEHMEN';
  @override
  String get dialog_replace => 'Ersetzen';
  @override
  String get dialog_save => 'SPEICHERN';
  @override
  String get dialog_search => 'SUCHEN';
  @override
  String get dialog_select => 'AUSWÄHLEN';
  @override
  String get dialog_share => 'TEILEN';
  @override
  String get dialog_stash => 'MERKEN';
  @override
  String get dialog_stop => 'STOPPEN';
  @override
  String get dialog_title_dictionary_clear => 'Alle Wörterbücher löschen?';
  @override
  String dialog_title_dictionary_delete({required Object name}) =>
      '『${name}』löschen?';
  @override
  String get dict_auto_update => 'Automatisch aktualisieren';
  @override
  String get dict_auto_update_hint =>
      'Beim Start nach Wörterbuch-Updates suchen';
  @override
  String dict_auto_update_last({required Object time}) =>
      'Letzte erfolgreiche Prüfung: ${time}';
  @override
  String get dict_auto_update_never => 'Nie';
  @override
  String get dict_category_frequency => 'Häufigkeit';
  @override
  String get dict_category_grammar => 'Grammatik';
  @override
  String get dict_category_ja_en => 'Japanisch–Englisch';
  @override
  String get dict_category_ja_ja => 'Japanisch–Japanisch';
  @override
  String get dict_category_ja_other => 'Sonstiges Japanisch';
  @override
  String get dict_category_kanji => 'Kanji';
  @override
  String get dict_category_names => 'Namen';
  @override
  String get dict_category_supplementary => 'Ergänzend';
  @override
  String get dict_download_browse => 'Wörterbücher herunterladen';
  @override
  String dict_download_button({required Object count}) =>
      'Herunterladen (${count})';
  @override
  String get dict_download_complete => 'Download abgeschlossen.';
  @override
  String dict_download_failed({required Object error}) =>
      'Download fehlgeschlagen: ${error}';
  @override
  String get dict_download_installed => 'Installiert';
  @override
  String get dict_download_language => 'Deine Sprache';
  @override
  String dict_download_partial({
    required Object success,
    required Object total,
    required Object error,
  }) => '${success} / ${total} OK. Fehlgeschlagen: ${error}';
  @override
  String get dict_download_select_title => 'Wörterbücher auswählen';
  @override
  String dict_downloading({required Object name}) =>
      '${name} wird heruntergeladen…';
  @override
  String dict_import_failed_summary({required Object n}) =>
      'Import von ${n} Wörterbuch/-büchern fehlgeschlagen';
  @override
  String get dict_import_started =>
      'Wörterbücher werden im Hintergrund importiert…';
  @override
  String dict_import_success_summary({required Object n}) =>
      '${n} Wörterbuch/-bücher importiert';
  @override
  String get dict_update_check => 'Nach Updates suchen';
  @override
  String get dict_update_checking => 'Suche nach Updates…';
  @override
  String dict_update_done({required Object name}) => '${name} aktualisiert.';
  @override
  String dict_update_failed({required Object error}) =>
      'Update fehlgeschlagen: ${error}';
  @override
  String get dict_update_interval_daily => 'Täglich';
  @override
  String get dict_update_interval_monthly => 'Monatlich';
  @override
  String get dict_update_interval_weekly => 'Wöchentlich';
  @override
  String get dict_update_latest => 'Bereits aktuell.';
  @override
  String dict_update_name_mismatch_body({
    required Object incoming,
    required Object existing,
  }) =>
      'Die ausgewählte Datei ist „${incoming}“, aber du aktualisierst „${existing}“. Trotzdem ersetzen?';
  @override
  String get dict_update_name_mismatch_title => 'Namen stimmen nicht überein';
  @override
  String get dict_update_none => 'Alle Wörterbücher sind aktuell.';
  @override
  String dict_update_summary({
    required Object updated,
    required Object current,
    required Object failed,
  }) =>
      '${updated} aktualisiert, ${current} aktuell, ${failed} fehlgeschlagen.';
  @override
  String get dict_update_tooltip => 'Wörterbuch aktualisieren';
  @override
  String dict_update_updating({required Object name}) =>
      '${name} wird aktualisiert…';
  @override
  String get dictionaries => 'Wörterbücher';
  @override
  String get dictionaries_delete_failed =>
      'Löschen der Wörterbücher fehlgeschlagen';
  @override
  String get dictionaries_deleting_data => 'Wörterbuchdaten werden gelöscht...';
  @override
  String get dictionaries_menu_empty => 'Importieren Sie ein Wörterbuch';
  @override
  String get dictionary_delete_failed =>
      'Löschen des Wörterbuchs fehlgeschlagen';
  @override
  String get dictionary_font_size => 'Wörterbuch-Schriftgröße';
  @override
  String get dictionary_font_size_zoom_hint =>
      'Strg + Mausrad zoomt den Popup-Inhalt';
  @override
  String get dictionary_section_frequency => 'Häufigkeitswörterbücher';
  @override
  String get dictionary_section_kanji => 'Kanji-Wörterbücher';
  @override
  String get dictionary_section_pitch => 'Tonhöhenwörterbücher';
  @override
  String get dictionary_section_term => 'Begriffswörterbücher';
  @override
  String get dictionary_settings => 'Wörterbuch-Einstellungen';
  @override
  String get dictionary_type_frequency => 'Häufigkeit';
  @override
  String get dictionary_type_pitch => 'Tonhöhe';
  @override
  String get dictionary_type_term => 'Begriff';
  @override
  String get dictionary_unrecognized_format => 'Wörterbuchformat nicht erkannt';
  @override
  String get dismiss_swipe_sensitivity => 'Wisch-Empfindlichkeit zum Schließen';
  @override
  String get display_settings => 'Typografie-Einstellungen';
  @override
  String get download_backend_not_configured =>
      'Download-Backend ist noch nicht konfiguriert.';
  @override
  String get download_clear_finished => 'Abgeschlossene löschen';
  @override
  String get download_detail_backend_offline =>
      'Das ursprüngliche Download-Backend ist offline. Gespeicherte Aufgabeninformationen werden angezeigt; Live-Parameter sind nicht verfügbar.';
  @override
  String get download_open_settings => 'Einstellungen öffnen';
  @override
  String get download_save_root_change => 'Ordner ändern';
  @override
  String get download_save_root_create_failed =>
      'Dieser Ordner kann nicht erstellt werden. Überprüfe das Laufwerk und die Berechtigungen.';
  @override
  String get download_save_root_fallback_warning =>
      'Der konfigurierte Download-Ordner ist nicht verfügbar, daher wird der Standardordner verwendet.';
  @override
  String get download_save_root_hint =>
      'Neue Downloads werden hier gespeichert. Bestehende Aufgaben behalten ihren ursprünglichen Ordner.';
  @override
  String get download_save_root_not_absolute =>
      'Bitte wähle einen absoluten Ordnerpfad.';
  @override
  String get download_save_root_not_writable =>
      'Dieser Ordner ist nicht beschreibbar.';
  @override
  String get download_save_root_reset => 'Standard wiederherstellen';
  @override
  String get download_save_root_title => 'Download-Ordner';
  @override
  String get download_settings => 'Download-Einstellungen';
  @override
  String get download_status_cancelled => 'Abgebrochen';
  @override
  String get download_status_queued => 'In Warteschlange';
  @override
  String download_subscription_after_episode({required Object episode}) =>
      'Nach Episode ${episode}';
  @override
  String get download_subscription_check_all => 'Alle prüfen';
  @override
  String get download_subscription_check_now => 'Jetzt prüfen';
  @override
  String download_subscription_choice_hint({
    required Object group,
    required Object resolution,
  }) =>
      'Folge ${group} · ${resolution}. Neue Einzelepisoden-Veröffentlichungen werden in die Warteschlange gestellt.';
  @override
  String get download_subscription_created =>
      'Download in Warteschlange und Abonnement erstellt';
  @override
  String get download_subscription_delete => 'Abonnement löschen';
  @override
  String download_subscription_delete_confirm({required Object title}) =>
      'Das Abonnement für ${title} löschen? Heruntergeladene Aufgaben bleiben erhalten.';
  @override
  String get download_subscription_download_and_create =>
      'Herunterladen und abonnieren';
  @override
  String get download_subscription_empty_body =>
      'Wähle unter „Entdecken" eine Einzelepisoden-Veröffentlichung und verwende „Herunterladen und abonnieren".';
  @override
  String get download_subscription_empty_title => 'Noch keine Abonnements';
  @override
  String download_subscription_last_checked({required Object time}) =>
      'Zuletzt geprüft: ${time}';
  @override
  String download_subscription_latest_episode({required Object episode}) =>
      'Zuletzt eingereiht: Episode ${episode}';
  @override
  String get download_subscription_never_checked => 'Noch nie geprüft';
  @override
  String get download_subscription_running_hint =>
      'Fushi prüft aktivierte Abonnements alle 15 Minuten, solange die App läuft.';
  @override
  String get download_subscription_unavailable_hint =>
      'Wähle eine Einzelepisoden-Veröffentlichung mit einer erkennbaren Release-Gruppe zum Abonnieren.';
  @override
  String get download_subscriptions_tab => 'Abonnements';
  @override
  String download_task_action_failed({required Object error}) =>
      'Die Aufgabenaktion ist fehlgeschlagen: ${error}';
  @override
  String get download_task_delete => 'Aufgabe löschen';
  @override
  String download_task_delete_confirm({required Object title}) =>
      'Die Download-Aufgabe für ${title} löschen?';
  @override
  String get download_task_delete_files =>
      'Auch heruntergeladene Dateien löschen';
  @override
  String get download_task_details => 'Details anzeigen';
  @override
  String get download_tasks_tab => 'Aufgaben';
  @override
  String get download_test_connection => 'Verbindung testen';
  @override
  String get download_test_connection_failed =>
      'Verbindung fehlgeschlagen. Überprüfe die Adresse und Anmeldedaten.';
  @override
  String download_test_connection_ok({required Object version}) =>
      'Verbunden (Version: ${version})';
  @override
  String get drag_drop_need_card_target =>
      'Untertitel oder Audio auf ein Buch oder Video ziehen';
  @override
  String get drag_drop_unsupported_on_books =>
      'Buchdateien hier ablegen. Für solche Dateien zu Video oder Wörterbücher wechseln.';
  @override
  String get drag_drop_unsupported_on_dictionary =>
      'Wörterbuchdateien (.zip, .dsl oder .mdx) hier ablegen. CSS-Dateien funktionieren nur zusammen mit einem Wörterbuchpaket.';
  @override
  String get drag_drop_unsupported_on_video =>
      'Videos, Playlists oder Untertitel hier ablegen. Für solche Dateien zu Bücher oder Wörterbücher wechseln.';
  @override
  String get edit_custom_theme => 'Benutzerdefiniertes Theme bearbeiten';
  @override
  String get eink_mode => 'E-Ink-Modus';
  @override
  String get eink_mode_hint =>
      'Reines Schwarz-Weiß-Theme ohne Animationen und mit Linien-Hervorhebungen, für E-Ink-Displays';
  @override
  String get enable_swipe_to_close => 'Wischen zum Schließen des Popups';
  @override
  String get epub_delete_error => 'Buch konnte nicht gelöscht werden';
  @override
  String get epub_delete_title => 'Buch löschen';
  @override
  String get epub_parse_fallback =>
      'Buch-Metadaten aus Datenbank wiederhergestellt';
  @override
  String get error_ankidroid_api => 'AnkiDroid-Fehler';
  @override
  String get error_ankidroid_api_content =>
      'Bei der Kommunikation mit AnkiDroid ist ein Fehler aufgetreten.\n\nStellen Sie sicher, dass der AnkiDroid-Hintergrunddienst aktiv ist und alle erforderlichen App-Berechtigungen erteilt wurden.';
  @override
  String get error_copied => 'Fehler in die Zwischenablage kopiert';
  @override
  String get error_load_failed => 'Beim Laden ist etwas schiefgelaufen';
  @override
  String get error_log_diagnostics_section =>
      'Diagnose / Forensik (keine App-Fehler)';
  @override
  String get error_log_empty => 'Keine Fehlerprotokolle';
  @override
  String error_log_label({required Object n}) => 'Fehlerprotokoll (${n})';
  @override
  String get error_log_previous_run =>
      'Vorherige Protokolle (vor dem letzten Start)';
  @override
  String get error_log_share_subject => 'Fushi Fehlerprotokoll';
  @override
  String get extension_popup_independent_size =>
      'Separate Größe für Browser-Erweiterung';
  @override
  String get extension_popup_independent_size_hint =>
      'Dem Nachschlage-Popup der Browser-Erweiterung eine eigene Maximalgröße geben, statt dem In-App-Popup zu folgen';
  @override
  String get extension_popup_max_height => 'Erweiterungs-Popup max. Höhe';
  @override
  String get extension_popup_max_width => 'Erweiterungs-Popup max. Breite';
  @override
  String get external_window_capture_failed => 'Fensteraufnahme fehlgeschlagen';
  @override
  String get external_window_current_game => 'Aktuelles Spiel';
  @override
  String get external_window_mining => 'Externes Fenster-Mining';
  @override
  String get external_window_no_windows => 'Keine erfassbaren Fenster gefunden';
  @override
  String get external_window_none =>
      'Kein Fenster gebunden (tippen zum Auswählen)';
  @override
  String get external_window_refresh => 'Fensterliste aktualisieren';
  @override
  String get external_window_select => 'Zielfenster auswählen';
  @override
  String get external_window_unbind => 'Fenster lösen';
  @override
  String get external_window_unsupported =>
      'Externes Fenster-Mining ist nur unter Windows verfügbar';
  @override
  String get failed_online_service =>
      'Kommunikation mit dem Onlinedienst fehlgeschlagen';
  @override
  String get favorite_added => 'Satz in Favoriten gespeichert';
  @override
  String get favorite_removed => 'Satz aus Favoriten entfernt';
  @override
  String favorites({required Object n}) => 'Favoriten (${n})';
  @override
  String field_fallback_used({
    required Object field,
    required Object secondField,
  }) =>
      'Das Feld ${field} hat ${secondField} als Ersatz-Suchbegriff verwendet.';
  @override
  String file_count({required Object count}) => '${count} Dateien';
  @override
  String get floating_dict_close => 'Schließen';
  @override
  String get floating_dict_title => 'Wörterbuch';
  @override
  String get floating_lyric_bg_opacity =>
      'Hintergrund-Deckkraft des schwebenden Untertitels';
  @override
  String get floating_lyric_button_bg_opacity =>
      'Deckkraft des Hintergrunds der schwebenden Untertitel-Tasten';
  @override
  String get floating_lyric_click_lookup =>
      'Schwebenden Untertitel zum Nachschlagen antippen';
  @override
  String get floating_lyric_click_lookup_hint =>
      'Lass dies bei gesperrter Position an, wenn du weiterhin Wörter nachschlagen möchtest.';
  @override
  String get floating_lyric_close => 'Schließen';
  @override
  String get floating_lyric_context_lines =>
      'Kontextzeilen der schwebenden Untertitel';
  @override
  String get floating_lyric_context_lines_hint =>
      '0 zeigt nur die aktuelle Zeile (einzeilig, unverändert); 1–3 zeigt so viele Zeilen davor und danach';
  @override
  String get floating_lyric_corner_radius =>
      'Eckenradius der schwebenden Untertitel';
  @override
  String get floating_lyric_corner_radius_hint =>
      '0 behält die plattformüblichen Ecken bei; höhere Werte runden Leiste und Schaltflächen stärker ab';
  @override
  String get floating_lyric_font_size =>
      'Schriftgröße der schwebenden Untertitel';
  @override
  String get floating_lyric_hint =>
      'Aktuellen Satz über anderen Apps anzeigen.';
  @override
  String get floating_lyric_lock => 'Sperren';
  @override
  String get floating_lyric_next => 'Weiter';
  @override
  String get floating_lyric_no_audio =>
      'Dieses Buch hat kein Audio zum Anhören';
  @override
  String get floating_lyric_permission_hint =>
      'Overlay-Berechtigung ist erforderlich, um schwebende Untertitel anzuzeigen.';
  @override
  String get floating_lyric_permission_hint_coloros =>
      'Falls das System die Overlay-Berechtigung immer wieder verweigert: Installieren Sie die APK einmal über einen Dateimanager neu, oder deaktivieren Sie die Berechtigungsüberwachung in den Entwickleroptionen und versuchen Sie es erneut.';
  @override
  String get floating_lyric_play_pause => 'Abspielen';
  @override
  String get floating_lyric_previous => 'Zurück';
  @override
  String get floating_lyric_text_opacity =>
      'Deckkraft des schwebenden Untertiteltexts';
  @override
  String get floating_lyric_toggle_action => 'Schwebender Untertitel';
  @override
  String get floating_lyric_unavailable_hint =>
      'Das schwebende Untertitelfenster konnte nicht angezeigt werden.';
  @override
  String get floating_lyric_unlock => 'Entsperren';
  @override
  String get floating_lyric_width => 'Breite der schwebenden Untertitel';
  @override
  String get floating_lyric_width_hint =>
      '0 verwendet die Standard-Plattformbreite; ein Wert legt eine feste Breite für die Leiste fest';
  @override
  String get focus_navigation_enabled =>
      'Fokusnavigation per Tastatur & Gamepad';
  @override
  String get focus_navigation_enabled_hint =>
      'Fokus mit Pfeiltasten oder Gamepad bewegen und einen Fokusrahmen anzeigen.';
  @override
  String get folder_picker_permission_required =>
      'Speicherberechtigung erforderlich, um Ordner zu durchsuchen';
  @override
  String get follow_audio_off_tooltip => 'Audio-Verfolgung: AUS';
  @override
  String get follow_audio_on_tooltip => 'Audio-Verfolgung: AN';
  @override
  String get font_color => 'Schriftfarbe';
  @override
  String get font_color_desc => 'Textfarbe im Reader';
  @override
  String get font_desc_hina_mincho =>
      'Weiches dekoratives Mincho · Passt gut zu Noto Sans JP';
  @override
  String get font_desc_klee_one =>
      'Handschrift-Lehrbuchstil · Klar und lesbar · Passt gut zu Noto Sans JP';
  @override
  String get font_desc_mplus_rounded_1c =>
      'Niedlicher runder Stil · Ideal für Light Novels · Passt gut zu Noto Sans JP';
  @override
  String get font_desc_noto_sans_jp =>
      'Google/Adobe Gothic · Japanische Glyphen bevorzugt · Variables Gewicht';
  @override
  String get font_desc_noto_sans_sc =>
      'Google/Adobe Gothic · Vereinfachtes Chinesisch bevorzugt · Als Ersatzschrift verwenden';
  @override
  String get font_desc_noto_sans_tc =>
      'Google/Adobe Gothic · Traditionelles Chinesisch bevorzugt';
  @override
  String get font_desc_noto_serif_jp =>
      'Google/Adobe Serif · Japanische Glyphen bevorzugt · Ideal für vertikales Lesen';
  @override
  String get font_desc_noto_serif_sc =>
      'Google/Adobe Serif · Vereinfachtes Chinesisch bevorzugt · Als Ersatzschrift verwenden';
  @override
  String get font_desc_noto_serif_tc =>
      'Google/Adobe Serif · Traditionelle chinesische Zeichen priorisiert · Ideal für vertikales Lesen';
  @override
  String get font_desc_shippori_mincho =>
      'Elegante Mincho · Ideal für Literatur · Passt gut zu Noto Sans JP';
  @override
  String get font_desc_zen_kaku_gothic_new =>
      'Modernes Kaku Gothic · Allgemeines Lesen · Passt gut zu Noto Sans JP';
  @override
  String get font_desc_zen_maru_gothic =>
      'Weiches rundes Gothic · Passt gut zu Noto Sans JP';
  @override
  String get font_desc_zen_old_mincho =>
      'Vintage Mincho · Klassischer Literaturstil · Passt gut zu Noto Sans JP';
  @override
  String get font_source_file => 'Datei';
  @override
  String get font_source_system => 'System';
  @override
  String get font_target_app_ui => 'System-UI-Schrift';
  @override
  String get font_target_body => 'Romantext-Schrift';
  @override
  String get font_target_dictionary => 'Wörterbuch-Schrift';
  @override
  String get font_target_video_subtitle => 'Video Subtitle Font';
  @override
  String get gal_hook_text_font_size => 'Galgame-Untertitel-Schriftgröße';
  @override
  String get gal_hook_text_font_size_hint =>
      'Ziehen Sie die Ecke des Overlays, um das Fenster zu verkleinern/vergrößern; die Untertitelgröße wird hier eingestellt.';
  @override
  String get game_add => 'Spiel hinzufügen';
  @override
  String get game_already_added => 'Dieses Spiel ist bereits in der Bibliothek';
  @override
  String get game_audio_backend_engine => 'Engine-PCM';
  @override
  String get game_audio_backend_loopback => 'System-Loopback (gemischt)';
  @override
  String get game_audio_backend_none => 'Keine Audioquelle';
  @override
  String get game_audio_backend_resource => 'Spiel-Ressourcen-Audio';
  @override
  String get game_audio_duration => 'Audiodauer';
  @override
  String get game_audio_fallback_disabled_missing =>
      '未找到与该句匹配的游戏资源音频；已关闭降级，未制卡';
  @override
  String get game_audio_resource_id => '音频资源 ID';
  @override
  String get game_audio_tracks => 'Aktive Audiospuren';
  @override
  String get game_auto_cover => 'Cover automatisch abrufen';
  @override
  String get game_back_to_capture => 'Zurück zum Aufnahme-Arbeitsbereich';
  @override
  String get game_back_to_library => 'Zurück zur Spielebibliothek';
  @override
  String get game_capture_active => 'Aufnahme ist aktiv';
  @override
  String get game_capture_degraded_loopback =>
      'Das Spiel läuft, aber die Engine-Injektion ist fehlgeschlagen; es wird auf Systemaudio zurückgegriffen, das BGM und Effekte mitmischen kann.';
  @override
  String get game_capture_description =>
      'Starten oder verknüpfen Sie ein Spiel und überwachen Sie Text, Stimme, Screenshots und Anki-Ausgabe.';
  @override
  String get game_capture_empty_body =>
      'Starten oder verknüpfen Sie ein Spiel; Text- und Satzaudio-Status werden hier angezeigt.';
  @override
  String get game_capture_empty_title => 'Noch keine Zeilen empfangen';
  @override
  String get game_capture_launch_failed =>
      'Spielstart oder Aufnahme fehlgeschlagen';
  @override
  String get game_capture_launching =>
      'Spiel wird gestartet und Aufnahme beginnt …';
  @override
  String get game_capture_running => 'Aufnahmesitzung läuft';
  @override
  String get game_capture_window_missing =>
      'Der Spielprozess wurde gestartet, aber das Fenster ist nie erschienen – das Spiel wurde möglicherweise nicht gestartet. Versuchen Sie es erneut.';
  @override
  String get game_capture_workbench => 'Aufnahme-Arbeitsbereich';
  @override
  String get game_captured_lines => 'Aufgenommene Zeilen';
  @override
  String get game_card_mapping_missing =>
      'Anki-Feldzuordnungen fehlen Spielkarten-Tokens';
  @override
  String get game_card_sentence_audio_missing =>
      'Die Karte wurde ohne Satzaudio erstellt; Audio einer anderen Zeile wurde nicht ersetzt.';
  @override
  String get game_clear_events => 'Ereignisse löschen';
  @override
  String get game_cover_not_found =>
      'Kein verwendbares Cover im Spielordner oder in der ausführbaren Datei gefunden';
  @override
  String get game_cover_searching => 'Suche nach Cover …';
  @override
  String get game_cover_updated => 'Cover aktualisiert';
  @override
  String get game_dashboard => 'Startseite';
  @override
  String get game_detail_missing =>
      'Dieses Spiel ist nicht mehr in der Bibliothek';
  @override
  String get game_detail_tab_edit => 'Bearbeiten';
  @override
  String get game_detail_tab_stats => 'Statistiken';
  @override
  String get game_detail_tab_summary => 'Übersicht';
  @override
  String get game_diagnostics => 'Kompatibilitätsdiagnose';
  @override
  String get game_diagnostics_subtitle =>
      'Sitzungsphasen, Endpunkte, Audiospuren und strukturierte Ereignisse';
  @override
  String game_drop_imported({required Object count}) =>
      '${count} Spiel(e) hinzugefügt';
  @override
  String get game_drop_no_exe =>
      'Keine neue Spiel-.exe unter den abgelegten Dateien';
  @override
  String get game_edit_developer => 'Entwickler';
  @override
  String get game_edit_display_name => 'Anzeigename';
  @override
  String get game_edit_exe_path => 'Pfad der ausführbaren Datei';
  @override
  String get game_edit_invalid_date =>
      'Erscheinungsdatum muss im Format JJJJ-MM-TT sein';
  @override
  String get game_edit_launch_args => 'Startargumente';
  @override
  String get game_edit_launch_args_hint =>
      'Werden beim Start an das Spiel übergeben, z. B. -windowed';
  @override
  String get game_edit_nsfw => 'Erwachsenentitel';
  @override
  String get game_edit_release_date => 'Erscheinungsdatum (JJJJ-MM-TT)';
  @override
  String get game_edit_save => 'Speichern';
  @override
  String get game_edit_saved => 'Gespeichert';
  @override
  String get game_edit_summary => 'Beschreibung';
  @override
  String get game_edit_tags => 'Tags (kommagetrennt)';
  @override
  String get game_edit_user_rating => 'Meine Bewertung (0–10)';
  @override
  String get game_edit_user_review => 'Meine Rezension';
  @override
  String get game_edit_workdir => 'Arbeitsverzeichnis';
  @override
  String get game_empty => 'Noch keine Spiele hinzugefügt';
  @override
  String get game_endpoint_phase_connected => 'Verbunden';
  @override
  String get game_endpoint_phase_connecting => 'Verbindung wird hergestellt';
  @override
  String get game_endpoint_phase_retrying => 'Erneuter Versuch';
  @override
  String get game_endpoint_phase_stopped => 'Gestoppt';
  @override
  String get game_endpoints_engine_active =>
      'Text wird vom Engine-Hook bereitgestellt; diese Endpunkte sind optional';
  @override
  String get game_endpoints_hint =>
      'Ports für externe Texttools (Textractor / LunaTranslator usw.); ignorieren, wenn nicht verwendet';
  @override
  String get game_event_all => 'Alle Ereignisse';
  @override
  String get game_event_warnings => 'Warnungen und Fehler';
  @override
  String get game_exe_missing => 'Ausführbare Spieldatei nicht gefunden';
  @override
  String get game_filter => 'Filter';
  @override
  String get game_filter_all => 'Alle';
  @override
  String get game_filter_favorited => 'Favorisiert';
  @override
  String get game_filter_hide_nsfw => 'Erwachsenentitel ausblenden';
  @override
  String get game_filter_local_only => 'Mit lokaler Datei';
  @override
  String get game_filter_metadata_only => 'Nur Metadaten';
  @override
  String get game_filter_mined => 'Gemined';
  @override
  String get game_filter_reset => 'Filter zurücksetzen';
  @override
  String get game_filter_source => 'Verfügbarkeit';
  @override
  String get game_filter_status => 'Spielstatus';
  @override
  String get game_filter_tags => 'Tags';
  @override
  String get game_filter_with_audio => 'Mit Audio';
  @override
  String get game_focus_continue => 'Fortsetzen';
  @override
  String get game_follow_live => 'Live folgen';
  @override
  String get game_health => 'Statusbericht';
  @override
  String get game_health_anki => 'Anki-Ausgabe';
  @override
  String get game_health_audio => 'Audioquelle';
  @override
  String get game_health_helper => 'Hook-Helper';
  @override
  String get game_health_process => 'Spielprozess';
  @override
  String get game_health_text => 'Textquelle';
  @override
  String get game_health_upscaling => 'Fenster-Hochskalierung';
  @override
  String get game_health_window => 'Spielfenster';
  @override
  String get game_helper_download => 'Herunterladen';
  @override
  String game_helper_download_failed({required Object error}) =>
      'Download der Engine-Komponente fehlgeschlagen: ${error}';
  @override
  String get game_helper_downloading =>
      'Engine-Komponente wird heruntergeladen …';
  @override
  String get game_helper_install_incomplete =>
      'Installation der Engine-Komponente unvollständig, bitte erneut versuchen';
  @override
  String game_helper_needed_body({required Object size}) =>
      'Zum Starten eines Galgame wird die Engine-Hook-Injektor-Komponente benötigt (ca. ${size}). Sie enthält Prozess-Injektionscode und wird separat von der App bereitgestellt, um Fehlalarme von Antivirenprogrammen zu vermeiden. Jetzt herunterladen?';
  @override
  String get game_helper_needed_title =>
      'Galgame-Engine-Komponente erforderlich';
  @override
  String get game_helper_size_unknown => 'unbekannte Größe';
  @override
  String get game_helper_verification_failed =>
      'Engine-Komponente blockiert: Die Prüfsumme konnte nicht verifiziert werden (die .sha256-Datei von GitHub ist nicht erreichbar, fehlt oder stimmt nicht überein). Fushi verweigert die Installation von nicht verifiziertem Injektorcode.';
  @override
  String get game_home_subtitle => 'Spielebibliothek und Aufnahmeüberwachung';
  @override
  String get game_hook_fallback_all_audio_sources_failed =>
      'Weder der Engine-Voice-Hook noch der System-Loopback konnten gestartet werden; es kann kein Audio aufgenommen werden.';
  @override
  String get game_hook_fallback_engine_attach_failed =>
      'Das Anhängen des Engine-Voice-Hooks an das laufende Spiel ist fehlgeschlagen; stattdessen wird der Systemmix verwendet.';
  @override
  String get game_hook_fallback_engine_pcm_unavailable =>
      'Der Engine-Voice-Hook ist installiert, aber das Spiel hat noch keine Stimme abgespielt. Der Systemmix wird vorerst verwendet und wechselt automatisch zurück, sobald die erste Stimme eintrifft.';
  @override
  String get game_hook_fallback_launch_injection_failed =>
      'Das Spiel läuft, aber die frühe Engine-Injektion ist fehlgeschlagen; stattdessen wird der Systemmix verwendet.';
  @override
  String get game_hook_fallback_window_not_found =>
      'Die Audioaufnahme läuft, aber das Spielfenster ist noch nicht erschienen, daher sind Screenshots nicht verfügbar. Es wird automatisch verknüpft, sobald das Fenster erscheint.';
  @override
  String get game_hook_line_unavailable =>
      'Diese aufgenommene Zeile ist nicht mehr verfügbar.';
  @override
  String get game_hook_reason_access_denied =>
      'Das Spiel läuft mit höheren Berechtigungen; starten Sie Fushi als Administrator und versuchen Sie es erneut.';
  @override
  String get game_hook_reason_bitness_mismatch =>
      'Die Helper-Architektur stimmt nicht mit dem Spiel überein (32-Bit vs. 64-Bit); installieren Sie den Helper neu.';
  @override
  String get game_hook_reason_create_process_failed =>
      'Das Spiel konnte nicht aus Fushi gestartet werden; überprüfen Sie den Pfad der ausführbaren Datei.';
  @override
  String get game_hook_reason_elevation_required =>
      'Dieses Spiel erfordert Administratorrechte; starten Sie Fushi als Administrator und starten Sie es erneut.';
  @override
  String get game_hook_reason_game_exe_missing =>
      'Die ausführbare Spieldatei existiert nicht mehr am gespeicherten Pfad.';
  @override
  String get game_hook_reason_guarded_hook_failed =>
      'Ein profilgeschützter Hook konnte nicht rechtzeitig installiert werden; automatischer erneuter Versuch.';
  @override
  String get game_hook_reason_handshake_timeout =>
      'Das Spiel wurde gehookt, aber hat keine Text- oder Audioausgabe rechtzeitig geliefert; diese Engine wird möglicherweise noch nicht unterstützt.';
  @override
  String get game_hook_reason_helper_missing =>
      'Voice-Hook-Helper ist für diese Spielarchitektur nicht installiert; installieren Sie ihn und versuchen Sie es erneut.';
  @override
  String get game_hook_reason_hook_dll_missing =>
      'Das Helper-Paket ist unvollständig (Hook-Bibliothek fehlt); installieren Sie es neu.';
  @override
  String get game_hook_reason_injection_failed =>
      'Die Injektion in das Spiel wurde blockiert; fügen Sie Fushi und das Spiel zu den Antivirus-Ausnahmen hinzu.';
  @override
  String get game_hook_reason_ready_timeout =>
      'Die Hook-Bibliothek konnte nicht rechtzeitig geladen werden; Antivirus-Scans können dies verursachen.';
  @override
  String get game_hook_reason_resume_failed =>
      'Das gestartete Spiel konnte nicht fortgesetzt werden und wurde gestoppt; starten Sie es erneut.';
  @override
  String get game_hook_reason_shared_memory_unavailable =>
      'Der Aufnahmekanal konnte nicht geöffnet werden; starten Sie Fushi neu.';
  @override
  String get game_hook_reason_spawn_failed =>
      'Der Helper konnte nicht gestartet werden; überprüfen Sie, ob das Antivirusprogramm ihn entfernt oder blockiert hat.';
  @override
  String get game_hook_reason_resident_hook_mismatch =>
      'Eine vorherige Aufnahmesitzung ist noch im Spiel geladen; starten Sie das Spiel einmal neu.';
  @override
  String get game_hook_reason_steam_timeout =>
      'Steam hat die Startanfrage akzeptiert, aber der Spielprozess ist nie erschienen.';
  @override
  String get game_hook_reason_target_missing =>
      'Kein Spielprozess oder keine ausführbare Datei für die Aufnahme ausgewählt.';
  @override
  String get game_hook_recapture_empty =>
      'Kein Audio im Wiederaufnahmefenster aufgenommen';
  @override
  String get game_hook_recapture_saved =>
      'Wiederaufgenommene Stimme für diese Zeile gespeichert';
  @override
  String get game_hook_recapture_started =>
      'Aufnahme — spielen Sie diese Zeile im Spiel erneut ab';
  @override
  String get game_hook_recapture_unavailable =>
      'Stimmwiederaufnahme benötigt System-Loopback-Audio';
  @override
  String get game_kpi_total_games => 'Spiele';
  @override
  String get game_kpi_week => 'Diese Woche';
  @override
  String get game_latest_line => 'Letzte Zeile';
  @override
  String get game_launch => 'Starten';
  @override
  String get game_launch_and_capture => 'Starten und aufnehmen';
  @override
  String get game_launch_unsupported =>
      'Spiele starten wird nur unter Windows unterstützt';
  @override
  String get game_library => 'Spielebibliothek';
  @override
  String get game_line_audio_encoded => 'Audio extrahiert';
  @override
  String get game_line_audio_fallback => 'Fallback';
  @override
  String get game_line_audio_matched => 'Audio bereit';
  @override
  String get game_line_audio_missing => 'Kein Audio';
  @override
  String get game_line_audio_pending => 'Zuordnung';
  @override
  String get game_line_audio_unavailable => 'Nur Text';
  @override
  String get game_line_favorite_tooltip => 'Diese Zeile favorisieren';
  @override
  String get game_line_mined => 'Gemined';
  @override
  String get game_line_preview_failed =>
      'Kein abspielbares Audio für diese Zeile';
  @override
  String get game_line_preview_tooltip => 'Audio dieser Zeile abspielen';
  @override
  String get game_line_track_applied =>
      'Stimmenspur auf diese Zeile angewendet';
  @override
  String get game_line_track_dialog_title => 'Stimmenspur für diese Zeile';
  @override
  String get game_line_track_failed =>
      'Diese Spur hat kein Audio in der Nähe dieser Zeile';
  @override
  String get game_line_track_tooltip => 'Stimmenspur für diese Zeile auswählen';
  @override
  String get game_line_unfavorite_tooltip => 'Favorit entfernen';
  @override
  String get game_live_lines => 'Live-Zeilen';
  @override
  String get game_manage_tracks => 'Audiospuren verwalten';
  @override
  String get game_meta_added => 'Hinzugefügt';
  @override
  String get game_meta_ranking => 'Ranking';
  @override
  String get game_meta_source => 'Datenquelle';
  @override
  String get game_never_played => 'Nie gespielt';
  @override
  String get game_no_active_line =>
      'Wählen Sie eine Zeile aus, um ihren Satzaudio-Status zu prüfen.';
  @override
  String get game_no_events => 'Noch keine Sitzungsereignisse';
  @override
  String get game_no_match => 'Keine Spiele entsprechen den aktuellen Filtern';
  @override
  String get game_no_tracks => 'Noch keine Audiospurdaten';
  @override
  String get game_open_capture_workspace => 'Aufnahme-Arbeitsbereich öffnen';
  @override
  String get game_phase_attaching => 'Verknüpfen';
  @override
  String get game_phase_degraded => 'Eingeschränkt';
  @override
  String get game_phase_error => 'Fehler';
  @override
  String get game_phase_idle => 'Inaktiv';
  @override
  String get game_phase_injecting => 'Injizieren';
  @override
  String get game_phase_launching => 'Starten';
  @override
  String get game_phase_resolving => 'Auflösen';
  @override
  String get game_phase_running => 'Läuft';
  @override
  String get game_phase_stopping => 'Wird gestoppt';
  @override
  String get game_phase_waiting_signals => 'Warte auf Signale';
  @override
  String get game_pipeline => 'Sitzungs-Pipeline';
  @override
  String get game_play_status => 'Spielstatus';
  @override
  String get game_random_reroll => 'Mischen';
  @override
  String get game_random_title => 'Für mich auswählen';
  @override
  String get game_recently_played => 'Zuletzt gespielt';
  @override
  String get game_refresh_tracks => 'Spuren aktualisieren';
  @override
  String get game_remove => 'Entfernen';
  @override
  String get game_rename => 'Umbenennen';
  @override
  String get game_rename_label => 'Spielname';
  @override
  String get game_scrape => 'Metadaten abrufen';
  @override
  String get game_scrape_applied => 'Metadaten aktualisiert';
  @override
  String get game_scrape_failed => 'Metadatenabruf fehlgeschlagen';
  @override
  String get game_scrape_no_result => 'Kein passender Eintrag gefunden';
  @override
  String get game_scrape_query => 'Titel oder Quell-ID';
  @override
  String get game_search => 'Spiele suchen';
  @override
  String get game_session_events => 'Sitzungsereignisse';
  @override
  String get game_session_idle => 'Aufnahme wurde nicht gestartet';
  @override
  String get game_session_listening => 'Überwachung';
  @override
  String get game_set_cover => 'Cover festlegen';
  @override
  String get game_show_hook_text_window => 'Hook-Textfenster anzeigen';
  @override
  String get game_site_score => 'Seitenbewertung';
  @override
  String get game_sort => 'Sortieren';
  @override
  String get game_sort_added => 'Hinzugefügt am';
  @override
  String get game_sort_last_played => 'Zuletzt gespielt';
  @override
  String get game_sort_name => 'Name';
  @override
  String get game_sort_release => 'Erscheinungsdatum';
  @override
  String get game_sort_site_score => 'Seitenbewertung';
  @override
  String get game_sort_user_rating => 'Meine Bewertung';
  @override
  String get game_stat_daily => 'Tägliche Spielzeit';
  @override
  String get game_stat_delete_session => 'Diese Sitzung löschen';
  @override
  String get game_stat_last_played => 'Zuletzt gespielt';
  @override
  String get game_stat_no_sessions => 'Noch keine Spielsitzungen aufgezeichnet';
  @override
  String get game_stat_session_list => 'Sitzungsverlauf';
  @override
  String get game_stat_sessions => 'Sitzungen';
  @override
  String get game_stat_today => 'Heutige Spielzeit';
  @override
  String get game_stat_total_time => 'Gesamtspielzeit';
  @override
  String get game_status_dropped => 'Abgebrochen';
  @override
  String get game_status_not_configured => 'Nicht verifiziert';
  @override
  String get game_status_on_hold => 'Pausiert';
  @override
  String get game_status_played => 'Gespielt';
  @override
  String get game_status_playing => 'Spielt gerade';
  @override
  String get game_status_ready => 'Bereit';
  @override
  String get game_status_unset => 'Nicht festgelegt';
  @override
  String get game_status_waiting => 'Wartend';
  @override
  String get game_status_want_to_play => 'Möchte spielen';
  @override
  String get game_stop_listening => 'Überwachung stoppen';
  @override
  String get game_summary_aliases => 'Alternativnamen';
  @override
  String get game_summary_all_titles => 'Alle Titel';
  @override
  String get game_summary_average_hours => 'Durchschnittliche Spielzeit';
  @override
  String get game_summary_none =>
      'Noch keine Beschreibung. Metadaten abrufen, um sie auszufüllen.';
  @override
  String get game_summary_release_date => 'Erscheinungsdatum';
  @override
  String get game_tags_clear => 'Auswahl aufheben';
  @override
  String get game_tags_title => 'Spiel-Tags';
  @override
  String get game_text_endpoints => 'Text-Endpunkte';
  @override
  String get game_text_gaps => 'Sequenzlücken';
  @override
  String get game_text_gaps_hint =>
      'Sequenzlücken = Anzahl verlorener Zeilen im Hook-Text-Ring; 0 ist normal';
  @override
  String get game_text_source_engine => 'Engine-Hook';
  @override
  String get game_text_source_unknown => 'Unbekannte Quelle';
  @override
  String get game_text_source_websocket => 'WebSocket';
  @override
  String get game_text_thread => 'Text-Thread';
  @override
  String game_text_thread_audio_count({required Object count}) =>
      '${count} mit Audio';
  @override
  String get game_text_thread_hint =>
      'Wählen Sie den sauberen Dialog-Thread, wie bei Luna Translator';
  @override
  String get game_track_auto => 'Automatische Auswahl';
  @override
  String get game_track_clips => 'Clips';
  @override
  String get game_track_energy => 'Energie';
  @override
  String get game_track_exclude_bgm => 'Als BGM markieren';
  @override
  String get game_track_exclusion_hint =>
      'Markieren Sie eine BGM-/Ambiente-Spur als ausgeschlossen, damit die automatische Auswahl sie nie als Stimme behandelt — Zeilen ohne Sprache nehmen dann kein BGM mehr auf.';
  @override
  String get game_track_exclusion_title => 'Audiospuren ausschließen';
  @override
  String get game_track_preview => 'Diese Spur vorhören';
  @override
  String get game_track_preview_failed =>
      'Es konnte kein aktuelles Audio von dieser Spur aufgenommen werden';
  @override
  String get game_track_preview_stop => 'Vorschau stoppen';
  @override
  String get game_track_restore => 'Spur wiederherstellen';
  @override
  String get game_track_select_as_voice => 'Als Stimmenspur verwenden';
  @override
  String get game_track_select_requires_engine =>
      'Spurauswahl erfordert eine aktive Engine-Hook-Sitzung';
  @override
  String get game_track_voice => 'Stimme';
  @override
  String get game_tracks_loopback_hint =>
      'System-Loopback nimmt die gesamte gemischte Systemausgabe als einzelnen Stream auf; eine Auflistung pro Spur ist nicht verfügbar.';
  @override
  String get game_tracks_pcm_only_hint =>
      'Die Spurauswahl betrifft nur die Aufnahme, wenn Engine-PCM das aktive Audio-Backend ist. Die Liste unten ist mit dem aktuellen Backend schreibgeschützt.';
  @override
  String get game_tracks_resource_mode_hint =>
      'Im Spiel-Ressourcen-Audiomodus wird jede Stimmlinie direkt aus Spieldateien extrahiert, daher gibt es hier keine PCM-Spurliste. Automatische oder manuelle Spurauswahl gilt nur für Engine-PCM-Aufnahme.';
  @override
  String get game_unread_lines => 'Ungelesen';
  @override
  String get game_upscaling => 'Spielfenster-Hochskalierung';
  @override
  String get game_upscaling_auto => 'Automatisch';
  @override
  String get game_upscaling_hint_external =>
      'Eine Kopie von Magpie lief bereits, daher hat Fushi sie nicht angerührt. Drücken Sie Win+Umschalt+A, um das Spielfenster hochzuskalieren.';
  @override
  String get game_upscaling_hint_first_run =>
      'Magpie musste sich diesmal erst einrichten. Drücken Sie Win+Umschalt+A zum Hochskalieren — beim nächsten Spielstart geschieht es automatisch.';
  @override
  String get game_upscaling_hint_manual =>
      'Drücken Sie Win+Umschalt+A, um das Spielfenster hochzuskalieren.';
  @override
  String get game_upscaling_installed_only => 'Nur installiert';
  @override
  String get game_upscaling_off => 'Aus';
  @override
  String get game_upscaling_status_active => 'Fenster-Hochskalierung ist aktiv';
  @override
  String get game_upscaling_status_failed =>
      'Fenster-Hochskalierung konnte nicht gestartet werden';
  @override
  String get game_upscaling_status_manual =>
      'Fenster-Hochskalierung ist bereit, wurde aber nicht automatisch gestartet';
  @override
  String get game_upscaling_status_unavailable =>
      'Fenster-Hochskalierung ist nicht verfügbar';
  @override
  String get game_user_rating => 'Meine Bewertung';
  @override
  String get game_view_detail => 'Details anzeigen';
  @override
  String get game_waiting_for_text => 'Warte auf Text';
  @override
  String game_waveform_range_label({
    required Object start,
    required Object end,
    required Object duration,
    required Object total,
  }) => '${start} – ${end} (ausgewählt ${duration} / gesamt ${total})';
  @override
  String get game_waveform_select_title => 'Audiobereich auswählen';
  @override
  String get game_window_bound => 'Verknüpft';
  @override
  String get game_window_missing => 'Nicht verknüpft';
  @override
  String get games => 'Spiele';
  @override
  String get global_context_capture => 'Auswahlkontext erfassen';
  @override
  String get global_context_capture_hint =>
      'Umgebenden Text der Vordergrund-App lesen, um den aktuellen Satz anzuzeigen (nur Windows)';
  @override
  String go_to_chapter({required Object n}) => 'Kapitel ${n}';
  @override
  String get handlebar_audio => 'Audio';
  @override
  String get handlebar_book_cover => 'Buchcover';
  @override
  String get handlebar_card_image => 'Card Image (Cover / GIF)';
  @override
  String get handlebar_cue_sentence => 'Untertitel-Satz';
  @override
  String handlebar_deprecated_label({required Object label}) =>
      '${label} (veraltet)';
  @override
  String get handlebar_document_title => 'Dokumenttitel';
  @override
  String get handlebar_expression => 'Ausdruck';
  @override
  String get handlebar_frequencies => 'Häufigkeiten (HTML)';
  @override
  String get handlebar_frequency_harmonic_rank => 'Häufigkeit (Rang)';
  @override
  String get handlebar_furigana_plain => 'Furigana';
  @override
  String get handlebar_glossary => 'Glossar';
  @override
  String get handlebar_glossary_first => 'Glossar (Erste)';
  @override
  String get handlebar_pitch_accent_categories => 'Tonhöhenkategorien';
  @override
  String get handlebar_pitch_accent_positions => 'Tonhöhenpositionen';
  @override
  String get handlebar_popup_selection_text => 'Popup-Auswahltext';
  @override
  String get handlebar_reading => 'Lesung';
  @override
  String get handlebar_selected_glossary => 'Ausgewähltes Glossar';
  @override
  String get handlebar_sentence => 'Satz';
  @override
  String get handlebar_sentence_audio => 'Sentence Audio';
  @override
  String get handlebar_video_clip => 'Video Clip (GIF)';
  @override
  String get harmonic_frequency => 'Worthäufigkeiten aggregieren';
  @override
  String health_match_summary({required Object pct}) =>
      'Übereinstimmung ${pct}%';
  @override
  String get highlight_on_tap => 'Text beim Antippen hervorheben';
  @override
  String get home_activity => 'Aktivität';
  @override
  String get home_activity_empty => 'Noch keine Aktivität';
  @override
  String get home_continue => 'Fortsetzen';
  @override
  String get home_filter_added => 'Hinzugefügt';
  @override
  String get home_filter_all => 'Alle';
  @override
  String get home_filter_game => 'Spiel';
  @override
  String get home_filter_read => 'Lesen';
  @override
  String get home_filter_watch => 'Ansehen';
  @override
  String get home_recently_added => 'Kürzlich hinzugefügt';
  @override
  String get home_remote_source => 'Remote';
  @override
  String home_session_count({required Object n}) => '${n} Sitzungen';
  @override
  String get home_today => 'Heute';
  @override
  String get home_yesterday => 'Gestern';
  @override
  String get hover_auto_lookup => 'Beim Überfahren nachschlagen';
  @override
  String get hover_auto_lookup_hint =>
      'Automatisch nachschlagen, wenn die Maus über ein Zeichen fährt; ohne Klicken oder Shift zu halten. Erzeugt höchstens eine Popup-Ebene. Nur Desktop.';
  @override
  String get icon_custom => 'Benutzerdefiniert';
  @override
  String get icon_custom_confirm_body =>
      'Dies erstellt eine Verknüpfung auf dem Startbildschirm mit dem gewählten Bild. Fortfahren?';
  @override
  String get icon_custom_confirm_title => 'Benutzerdefiniertes Symbol';
  @override
  String get icon_custom_hint =>
      'Tippen Sie auf ein Symbol zum Wechseln oder wählen Sie unten ein eigenes Bild.';
  @override
  String get icon_default => 'Standard';
  @override
  String get icon_full => 'Vollständig';
  @override
  String get icon_shortcut_created => 'Startbildschirm-Verknüpfung erstellt.';
  @override
  String get icon_shortcut_unsupported =>
      'Verknüpfungen werden auf diesem Gerät nicht unterstützt.';
  @override
  String get icon_switch_success => 'App-Symbol erfolgreich geändert.';
  @override
  String get icon_transparent => 'Transparent';
  @override
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  @override
  String get image_pause => 'Bei Bild pausieren';
  @override
  String get image_pause_hint =>
      'Automatisch pausieren, wenn ein Bild während der Wiedergabe erscheint.';
  @override
  String get image_pause_off => 'Aus';
  @override
  String get image_search_label_after => 'gefunden für';
  @override
  String get image_search_label_before => 'Bild auswählen ';
  @override
  String get image_search_label_middle => 'von ';
  @override
  String get image_search_label_none_before => 'Auswählen ';
  @override
  String get image_search_label_none_middle => 'kein Bild ';
  @override
  String get import_complete => 'Wörterbuchimport abgeschlossen.';
  @override
  String import_duplicate({required Object name}) =>
      'Ein Wörterbuch mit dem Namen『${name}』ist bereits importiert.';
  @override
  String get import_extract => 'Dateien werden extrahiert...';
  @override
  String get import_failed => 'Wörterbuchimport fehlgeschlagen.';
  @override
  String get import_in_progress => 'Import läuft';
  @override
  String import_name({required Object name}) => '『${name}』wird importiert...';
  @override
  String import_sidecar_audio({required Object count}) =>
      '${count} Audiodatei(en) automatisch angehängt';
  @override
  String import_sidecar_subtitle({required Object name}) =>
      'Automatisch angehängter Untertitel: ${name}';
  @override
  String get import_start => 'Import wird vorbereitet...';
  @override
  String get import_step_building_epub => 'EPUB wird erstellt…';
  @override
  String get import_step_converting_epub => 'Wird in EPUB konvertiert…';
  @override
  String import_step_copying_file({required Object name}) =>
      '${name} wird kopiert…';
  @override
  String get import_step_done => 'Fertig';
  @override
  String get import_step_importing_epub => 'EPUB wird importiert…';
  @override
  String get import_step_matching => 'Audio-Abgleich…';
  @override
  String get import_step_parsing => 'Untertitel werden analysiert…';
  @override
  String get import_step_persisting => 'Dateien werden gespeichert…';
  @override
  String get import_step_reading => 'Datei wird gelesen…';
  @override
  String get import_step_reading_idb => 'Buchinformationen werden gelesen…';
  @override
  String get import_step_saving => 'Einträge werden gespeichert…';
  @override
  String get import_theme => 'Theme importieren';
  @override
  String get import_theme_hint => 'Theme-Code einfügen';
  @override
  String get import_theme_invalid => 'Ungültiger Theme-Code';
  @override
  String get import_theme_success => 'Theme importiert';
  @override
  String import_unsupported_file_format({required Object ext}) =>
      'Nicht unterstütztes Dateiformat: ${ext}';
  @override
  String get increase => 'Erhöhen';
  @override
  String get info_empty_home_tab => 'Verlauf ist leer';
  @override
  String init_error_message({required Object error}) =>
      'Initialisierung fehlgeschlagen: ${error}';
  @override
  String get initialization_failed => 'Initialisierung fehlgeschlagen';
  @override
  String get interconnect_backup_backend =>
      'Interconnect als Sicherungs-Backend verwenden';
  @override
  String get interconnect_backup_backend_active =>
      'Sicherungen gehen bereits an das gekoppelte Gerät. Wählen Sie ein anderes Backend unter Synchronisierung & Sicherung, um zu wechseln.';
  @override
  String get interconnect_backup_backend_apply =>
      'Als Sicherungs-Backend festlegen';
  @override
  String interconnect_backup_backend_current({required Object backend}) =>
      'Aktuelles Sicherungs-Backend: ${backend}';
  @override
  String get interconnect_backup_backend_hint =>
      'Sichern und synchronisieren Sie zum gekoppelten Gerät statt zu einem Cloud-Speicher. Alles, was die Upload-Schalter des gekoppelten Geräts oben erlauben, wird dorthin geschrieben.';
  @override
  String get interconnect_backup_backend_needs_pairing =>
      'Verbinden Sie zuerst ein Gerät oben.';
  @override
  String get interconnect_enable => 'Interconnect aktivieren';
  @override
  String get interconnect_enable_hint =>
      'Verbinden Sie sich über das LAN mit Ihren anderen Geräten. Funktioniert neben einem Cloud-Sicherungs-Backend — es gibt keine Konflikte.';
  @override
  String get interconnect_moved_note =>
      'Verbindungs- und Servereinstellungen befinden sich in der Kategorie Fushi Interconnect';
  @override
  String get interconnect_section_client => 'Mit anderen Geräten verbinden';
  @override
  String get interconnect_section_delegate =>
      'An das gekoppelte Gerät delegieren';
  @override
  String get interconnect_section_related => 'Remote-Inhalte & Nachschlagen';
  @override
  String get interconnect_summary =>
      'Direkte Gerät-zu-Gerät-Synchronisierung & dieses Gerät als Server bereitstellen';
  @override
  String get interconnect_upload_audiobook_files => 'Hörbuchdateien hochladen';
  @override
  String get interconnect_upload_audiobook_files_hint =>
      'Audio- und Untertitelpakete der Hörbücher dieses Geräts zum Interconnect-Peer synchronisieren (groß).';
  @override
  String get interconnect_upload_content => 'Buchdateien hochladen';
  @override
  String get interconnect_upload_content_hint =>
      'Bücher und Leseinhalte dieses Geräts zum Interconnect-Peer synchronisieren.';
  @override
  String get interconnect_upload_dictionary => 'Wörterbücher hochladen';
  @override
  String get interconnect_upload_dictionary_hint =>
      'Wörterbücher dieses Geräts zum Interconnect-Peer synchronisieren.';
  @override
  String get interconnect_upload_section => 'Zum Interconnect-Peer hochladen';
  @override
  String get interconnect_upload_video_files => 'Videodateien hochladen';
  @override
  String get interconnect_upload_video_files_hint =>
      'Lokale Videodateien dieses Geräts zum Interconnect-Peer synchronisieren (groß).';
  @override
  String get invert_audiobook_skip_direction =>
      'Vor-/Zurückspringen-Tasten der unteren Leiste umkehren';
  @override
  String get invert_swipe_direction => 'Wischrichtung zum Blättern umkehren';
  @override
  String get invert_volume_buttons => 'Lautstärketasten invertieren';
  @override
  String get jump_to_char => 'Zur Zeichenposition springen';
  @override
  String jump_to_char_current({
    required Object current,
    required Object total,
  }) => 'Aktuell: ${current} / ${total}';
  @override
  String get jump_to_char_hint => 'Zeichenposition eingeben…';
  @override
  String get keep_screen_awake => 'Bildschirm eingeschaltet lassen';
  @override
  String get library_search => 'Bibliothek durchsuchen';
  @override
  String get loading_illustrations => 'Illustrationen werden geladen…';
  @override
  String get loading_slow_message =>
      'Wenn sich Ihr Datenspeicherort auf einem Netzwerk- oder Wechseldatenträger befindet, der derzeit nicht verbunden ist, kann der Start stocken. Tippen Sie auf Wiederholen, um für diese Sitzung den Standardspeicherort zu verwenden; Ihre Daten bleiben, wo sie sind.';
  @override
  String get loading_slow_message_mobile =>
      'Der Start dauert länger als üblich — Fushi lädt möglicherweise eine große Bibliothek oder Wörterbücher. Bitte warten Sie einen Moment, oder tippen Sie auf Wiederholen zum Neuladen. Ihre Daten sind sicher und gehen nicht verloren.';
  @override
  String get loading_slow_title => 'Der Start dauert länger als üblich';
  @override
  String get local_audio => 'Lokales Audio';
  @override
  String get local_audio_add_db => 'Lokale Audiodatenbank hinzufügen';
  @override
  String get local_audio_edit_sources => 'Quellen bearbeiten';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      'Audiodatenbank-Import fehlgeschlagen: ${reason}';
  @override
  String get local_audio_imported => 'Audiodatenbank hinzugefügt';
  @override
  String get local_audio_invalid_db =>
      'Diese Datei ist keine verwendbare Audiodatenbank (keine Local Audio Server-Datenbank oder sie enthält kein Audio).';
  @override
  String get local_audio_no_sources =>
      'Keine Quellen in dieser Datenbank gefunden';
  @override
  String get local_audio_reference_original =>
      'Originaldatei referenzieren (nicht kopieren)';
  @override
  String get local_audio_reference_original_desc =>
      'Die Datenbank am Originalort belassen und von dort lesen; die Quelle bricht ab, wenn die Datei verschoben oder gelöscht wird.';
  @override
  String get local_audio_source_order_title => 'Quellenpriorität';
  @override
  String get log_copy_all => 'Alles kopieren';
  @override
  String get log_export_failed => 'Export fehlgeschlagen';
  @override
  String get log_export_file => 'In Datei exportieren';
  @override
  String get log_export_saved => 'Log gespeichert';
  @override
  String get log_upload_action => 'An Server hochladen';
  @override
  String get log_upload_consent_agree => 'Zustimmen & hochladen';
  @override
  String get log_upload_consent_body =>
      'Der Log-Text (der Fehlermeldungen, Dateipfade und Buchtitel enthalten kann) sowie deine App-Version, Plattform und dein Gerätemodell werden zur Fehlerdiagnose an den Server des Entwicklers hochgeladen. Dies geschieht nur, wenn du auf Hochladen tippst – es wird nichts automatisch gesendet.';
  @override
  String get log_upload_consent_title => 'Log an Server hochladen?';
  @override
  String get log_upload_failed => 'Upload fehlgeschlagen';
  @override
  String get log_upload_in_progress => 'Log wird hochgeladen…';
  @override
  String get log_upload_success => 'Log hochgeladen';
  @override
  String get log_upload_too_large => 'Log zu groß zum Hochladen';
  @override
  String get login => 'Anmelden';
  @override
  String get lookup_audio_volume => 'Nachschlage-Audiolautstärke';
  @override
  String get low_memory_mode => 'Speichersparmodus';
  @override
  String get low_memory_mode_hint =>
      'Reduziert Cache- und Speicherverbrauch für leistungsschwache Geräte. Einige Änderungen werden nach Neustart wirksam.';
  @override
  String get low_memory_mode_suggestion =>
      'Versuchen Sie, den Speichersparmodus unter Einstellungen → Verschiedenes zu aktivieren.';
  @override
  String get lyrics_artist => 'Künstler';
  @override
  String get lyrics_blur => 'Liedtext unscharf';
  @override
  String get lyrics_blur_hint =>
      'Die aktuelle Zeile für Hörimmersion unscharf stellen; darüber fahren oder tippen zum Aufdecken';
  @override
  String get lyrics_font_size => 'Liedtext-Schriftgröße';
  @override
  String get lyrics_font_size_hint =>
      'Die Schriftgröße der Liedtexte ist unabhängig vom Buchmodus';
  @override
  String get lyrics_mode => 'Liedtext-Modus';
  @override
  String get lyrics_mode_hint_body =>
      'Der Liedtextmodus hat eine eigene Schriftgrößeneinstellung. Du kannst sie unter ⚙ Einstellungen → Typografie anpassen.';
  @override
  String get lyrics_mode_hint_title => 'Liedtextmodus';
  @override
  String get lyrics_text_color => 'Liedtext-Farbe';
  @override
  String get lyrics_text_color_hint =>
      'Für den Liedtext eine eigene Farbe verwenden, statt dem Theme zu folgen';
  @override
  String get lyrics_title => 'Titel';
  @override
  String get lyrics_vertical_writing => 'Vertikaler Liedtext';
  @override
  String get lyrics_vertical_writing_hint =>
      'Liedtext von oben nach unten, rechts nach links lesen (unabhängig vom Buchmodus)';
  @override
  String get manage_audio_sources => 'Audioquellen verwalten';
  @override
  String get manager => 'Verwalter';
  @override
  String get manga_mode_toggle => 'Reading Mode';
  @override
  String get manga_ocr_delete => 'Modelle löschen';
  @override
  String get manga_ocr_delete_confirm_message =>
      'Dies gibt Speicherplatz frei. Sie können sie später erneut herunterladen.';
  @override
  String get manga_ocr_delete_confirm_title => 'OCR-Modelle löschen?';
  @override
  String get manga_ocr_delete_done => 'Modelle gelöscht';
  @override
  String get manga_ocr_download => 'Modelle herunterladen';
  @override
  String get manga_ocr_download_done => 'Modelle heruntergeladen';
  @override
  String get manga_ocr_download_failed => 'Modell-Download fehlgeschlagen';
  @override
  String manga_ocr_downloading_file({required Object file}) =>
      '${file} wird heruntergeladen …';
  @override
  String get manga_ocr_engine_builtin => 'Integriert';
  @override
  String get manga_ocr_engine_external => 'Externes Mokuro';
  @override
  String get manga_ocr_engine_none =>
      'Keine OCR-Engine verfügbar. Laden Sie die integrierten Modelle herunter oder legen Sie den Mokuro-CLI-Pfad in den Einstellungen fest.';
  @override
  String get manga_ocr_external_cli_hint =>
      'Leer lassen für automatische Erkennung (FUSHI_MOKURO / PATH)';
  @override
  String get manga_ocr_external_cli_label => 'Externer Mokuro-CLI-Pfad';
  @override
  String get manga_ocr_external_detect => 'Erkennen';
  @override
  String manga_ocr_external_detected({required Object version}) =>
      'Erkannt: ${version}';
  @override
  String get manga_ocr_external_not_found => 'Mokuro nicht gefunden';
  @override
  String get manga_ocr_model_status_missing =>
      'OCR-Modelle nicht heruntergeladen';
  @override
  String get manga_ocr_model_status_ready => 'OCR-Modelle bereit';
  @override
  String get manga_ocr_section => 'Manga-OCR';
  @override
  String get manga_ocr_section_summary =>
      'Integrierte OCR-Modelle und externes Mokuro-CLI';
  @override
  String get manga_ocr_unsupported =>
      'Die integrierte Manga-OCR ist auf dieser Plattform noch nicht verfügbar.';
  @override
  String get manga_ocr_wizard_done => 'Manga importiert';
  @override
  String get manga_ocr_wizard_failed => 'OCR fehlgeschlagen';
  @override
  String get manga_ocr_wizard_has_mokuro =>
      'Dieser Ordner enthält bereits eine .mokuro-Datei — verwende stattdessen den normalen Import.';
  @override
  String get manga_ocr_wizard_importing => 'Importiere…';
  @override
  String get manga_ocr_wizard_no_images =>
      'Keine Bilder in diesem Ordner gefunden.';
  @override
  String manga_ocr_wizard_page_progress({
    required Object done,
    required Object total,
  }) => 'Seite ${done} / ${total}';
  @override
  String get manga_ocr_wizard_pick_folder => 'Bildordner auswählen';
  @override
  String get manga_ocr_wizard_run => 'OCR starten';
  @override
  String get manga_ocr_wizard_running => 'OCR läuft…';
  @override
  String get manga_ocr_wizard_title => 'Manga per OCR importieren';
  @override
  String get manga_ocr_wizard_title_label => 'Titel (optional)';
  @override
  String get manga_online_base_url_label => 'Online-Katalog-URL';
  @override
  String get manga_online_catalog_title => 'Online-Katalog';
  @override
  String get manga_online_download_selected => 'Ausgewählte herunterladen';
  @override
  String get manga_online_downloaded => 'Importiert';
  @override
  String get manga_online_failed => 'Download fehlgeschlagen';
  @override
  String get manga_online_load_failed => 'Katalog konnte nicht geladen werden';
  @override
  String get manga_online_queue_added =>
      'Zur Download-Warteschlange hinzugefügt';
  @override
  String manga_online_queue_progress({
    required Object done,
    required Object total,
  }) => 'Band ${done} / ${total}';
  @override
  String get manga_online_queue_section => 'Manga-Katalog-Downloads';
  @override
  String get manga_online_search_hint => 'Serie suchen';
  @override
  String get manga_online_stage_cbz => 'Band wird heruntergeladen…';
  @override
  String get manga_online_stage_extract => 'Wird entpackt…';
  @override
  String get manga_online_stage_mokuro => 'OCR-Daten werden heruntergeladen…';
  @override
  String get manga_reading_mode_spread => 'Doppelseite';
  @override
  String get manga_reading_mode_webtoon => 'Webtoon';
  @override
  String get manga_remote_ocr_cancelled =>
      'Remote-OCR wurde auf dem Host abgebrochen.';
  @override
  String get manga_remote_ocr_engine => 'Gekoppelter Host';
  @override
  String get manga_remote_ocr_failed => 'Remote-OCR fehlgeschlagen';
  @override
  String get manga_remote_ocr_no_host =>
      'Kein gekoppelter Host mit Manga-OCR erreichbar.';
  @override
  String get manga_remote_ocr_not_ready =>
      'Die OCR-Modelle des gekoppelten Hosts sind nicht heruntergeladen. Lade sie zuerst auf dem Host herunter.';
  @override
  String get manga_remote_ocr_running => 'Gekoppelter Host führt OCR aus…';
  @override
  String get manga_remote_ocr_unsupported =>
      'Der gekoppelte Host unterstützt keine Manga-OCR.';
  @override
  String manga_remote_ocr_uploading({
    required Object done,
    required Object total,
  }) => 'Seiten hochladen ${done} / ${total}…';
  @override
  String get margin_bottom => 'Unterer Rand';
  @override
  String get margin_left => 'Linker Rand';
  @override
  String get margin_right => 'Rechter Rand';
  @override
  String get margin_top => 'Oberer Rand';
  @override
  String get maximum_terms => 'Maximale Wörterbuch-Stichwörter im Ergebnis';
  @override
  String get media_source_add => 'Add Source';
  @override
  String get media_source_add_local_folder => 'Local Folder';
  @override
  String get media_source_add_network => 'Netzwerk';
  @override
  String media_source_count_book({required Object n}) => '${n} Bücher';
  @override
  String media_source_count_video({required Object n}) => '${n} Videos';
  @override
  String media_source_last_scan({required Object time}) =>
      'Letzter Scan ${time}';
  @override
  String get media_source_manage_title => 'Manage Sources';
  @override
  String get media_source_network_label_optional => 'Anzeigename (optional)';
  @override
  String get media_source_network_missing_fields =>
      'Host, Benutzername, Remote-Pfad und ein Passwort oder Schlüssel eingeben';
  @override
  String get media_source_network_remote_path => 'Remote-Pfad';
  @override
  String get media_source_network_subtitle =>
      'SFTP / FTP / WebDAV Remote-Bibliothek';
  @override
  String get media_source_no_sources => 'Noch keine Quellen';
  @override
  String get media_source_open_folder => 'Open Folder';
  @override
  String get media_source_remove => 'Remove Source';
  @override
  String get media_source_remove_keeps_media =>
      'Das Entfernen einer Quelle löscht keine importierten Medien.';
  @override
  String get media_source_rescan => 'Erneut scannen';
  @override
  String get media_source_scan_error => 'Scan fehlgeschlagen';
  @override
  String get media_tracking_access_token => 'Zugriffstoken';
  @override
  String get media_tracking_access_token_hint =>
      'Erstelle ein persönliches Zugriffstoken mit Schreibberechtigung';
  @override
  String get media_tracking_account => 'Bangumi-Konto';
  @override
  String get media_tracking_add_mapping => 'Zuordnung hinzufügen';
  @override
  String get media_tracking_anime => 'Anime';
  @override
  String get media_tracking_chapter => 'Kapitel';
  @override
  String get media_tracking_connect => 'Verbinden und prüfen';
  @override
  String get media_tracking_connected_as => 'Verbundenes Konto';
  @override
  String get media_tracking_delete_mapping => 'Zuordnung entfernen';
  @override
  String get media_tracking_episode => 'Folge';
  @override
  String get media_tracking_kind => 'Kategorie';
  @override
  String get media_tracking_local_item => 'Lokales Element';
  @override
  String get media_tracking_manga => 'Manga';
  @override
  String get media_tracking_mappings => 'Elementzuordnungen';
  @override
  String get media_tracking_no_mappings =>
      'Noch keine manuellen Zuordnungen. Fushi ordnet automatisch bei der ersten abgeschlossenen Folge oder dem Lesefortschritt zu; mehrdeutige Elemente hier hinzufügen.';
  @override
  String get media_tracking_novel => 'Roman';
  @override
  String get media_tracking_pending => 'Ausstehende Aktualisierungen';
  @override
  String get media_tracking_progress_mode => 'Fortschrittseinheit';
  @override
  String get media_tracking_progress_offset => 'Startnummer';
  @override
  String get media_tracking_saved => 'Zuordnung gespeichert';
  @override
  String get media_tracking_search => 'Bangumi durchsuchen';
  @override
  String get media_tracking_search_results => 'Bangumi-Ergebnisse';
  @override
  String get media_tracking_summary =>
      'Anime-, Roman- und Manga-Fortschritt automatisch bei Bangumi aufzeichnen';
  @override
  String get media_tracking_sync_failed =>
      'Synchronisierung fehlgeschlagen. Die Aktualisierung bleibt in der Warteschlange.';
  @override
  String get media_tracking_sync_now => 'Jetzt synchronisieren';
  @override
  String get media_tracking_sync_success => 'Synchronisierung abgeschlossen';
  @override
  String get media_tracking_token_required =>
      'Zuerst ein Zugriffstoken eingeben und verifizieren';
  @override
  String get media_tracking_volume => 'Band';
  @override
  String get microphone_permission_denied =>
      'Für die Aufnahme ist die Mikrofonberechtigung erforderlich.';
  @override
  String get mining_audio_quality => 'Audioqualität';
  @override
  String get mining_audio_quality_high => 'Hoch';
  @override
  String get mining_audio_quality_hint =>
      'Höhere Bitrate klingt klarer, erzeugt aber größere Karten.';
  @override
  String get mining_audio_quality_max => 'Maximum';
  @override
  String get mining_audio_quality_standard => 'Standard';
  @override
  String get mining_image_quality => 'Bild- / GIF-Qualität';
  @override
  String get mining_image_quality_hd => 'HD';
  @override
  String get mining_image_quality_hint =>
      'Höher ist schärfer, erzeugt aber größere Karten. Maximum behält Screenshots in Originalauflösung; animierte GIFs bleiben begrenzt, damit die Karten nutzbar bleiben.';
  @override
  String get mining_image_quality_max => 'Maximum';
  @override
  String get mining_image_quality_standard => 'Standard';
  @override
  String get mining_image_quality_thrift => 'Datensparmodus';
  @override
  String get move_down => 'Nach unten';
  @override
  String get move_up => 'Nach oben';
  @override
  String get name => 'Name';
  @override
  String get nav_browser_extension => 'Erweiterung';
  @override
  String get nav_downloads => 'Downloads';
  @override
  String get nav_game => 'Spiel';
  @override
  String get nav_home => 'Startseite';
  @override
  String get nav_lookup => 'Nachschlagen';
  @override
  String get nav_video => 'Video';
  @override
  String get next_sentence => 'Nächster Satz';
  @override
  String get no_audio_file => 'Keine Audiodatei zum Speichern.';
  @override
  String get no_collections => 'Keine Lesezeichen oder gespeicherten Sätze';
  @override
  String get no_debug_logs => 'Keine Debug-Logs.';
  @override
  String get no_illustrations_found => 'Keine Illustrationen gefunden';
  @override
  String get no_results_found => 'Keine Ergebnisse gefunden.';
  @override
  String get no_search_results => 'Keine Suchergebnisse gefunden.';
  @override
  String get no_sentence_selected => 'Kein Satz ausgewählt';
  @override
  String get no_sentences_found => 'Keine Sätze gefunden';
  @override
  String get no_text => 'Kein Text.';
  @override
  String get no_text_to_search => 'Kein Text zum Suchen.';
  @override
  String get now_listening_label => 'Wird gerade gehört';
  @override
  String get on_screen_keyboard => 'Bildschirmtastatur';
  @override
  String get options_collapse => 'Bei Suche einklappen';
  @override
  String get options_delete => 'Löschen';
  @override
  String get options_edit => 'Bearbeiten';
  @override
  String get options_expand => 'Bei Suche ausklappen';
  @override
  String get options_github => 'Repository auf GitHub anzeigen';
  @override
  String get options_hide => 'Bei Suche ausblenden';
  @override
  String get options_language => 'Spracheinstellungen';
  @override
  String get options_show => 'Bei Suche anzeigen';
  @override
  String get overlay_lookup_independent_size =>
      'Eigene Größe für externes Nachschlage-Fenster';
  @override
  String get overlay_lookup_independent_size_hint =>
      'Dem externen Nachschlage-Fenster eine eigene Maximalgröße geben, anstatt dem In-App-Popup zu folgen';
  @override
  String get overlay_lookup_max_height =>
      'Max. Höhe des externen Nachschlage-Fensters';
  @override
  String get overlay_lookup_max_width =>
      'Max. Breite des externen Nachschlage-Fensters';
  @override
  String page_progress({required Object current, required Object total}) =>
      'Seite ${current} / ${total}';
  @override
  String get paste => 'Einfügen';
  @override
  String get pause => 'Pause';
  @override
  String get pause_on_lookup => 'Bei Nachschlagen pausieren';
  @override
  String get pdf_bookmark_added => 'Lesezeichen hinzugefügt';
  @override
  String get pdf_bookmarks => 'Lesezeichen';
  @override
  String get pdf_bookmarks_empty => 'Noch keine Lesezeichen.';
  @override
  String get pdf_no_text_layer =>
      'Dieses PDF hat keine Textebene (gescanntes Bild), daher ist die Nachschlagefunktion nicht verfügbar.';
  @override
  String get pdf_outline => 'Inhaltsverzeichnis';
  @override
  String get pdf_outline_empty => 'Dieses PDF hat kein Inhaltsverzeichnis.';
  @override
  String get pick_image => 'Bild auswählen';
  @override
  String get play => 'Abspielen';
  @override
  String get play_from_cue => 'Ab diesem Satz abspielen';
  @override
  String get playback_auto_pause => 'Untertitel-Pause-Wiedergabemodus';
  @override
  String get playback_speed => 'Geschwindigkeit';
  @override
  String get popup_append_sentence_tooltip =>
      'Diesen Satz zur Karte hinzufügen';
  @override
  String get popup_auto_expand_dictionaries => 'Zeilen automatisch aufklappen';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      'Die ersten N Zeilen der Wörterbuchblöcke aufgeklappt lassen, auch wenn „Wörterbücher einklappen" aktiviert ist. Die Anzahl folgt der Spalteneinstellung: Zeilen × Spalten (0 = alle einklappen)';
  @override
  String get popup_bottom_docked => 'Unten angedocktes Popup';
  @override
  String get popup_bottom_docked_hint =>
      'Verankert das Nachschlage-Popup als bildschirmbreite Leiste am unteren Rand, statt dem nachgeschlagenen Wort zu folgen.';
  @override
  String get popup_clear_sentence_draft_tooltip => 'Hinzugefügte Sätze leeren';
  @override
  String get popup_ctx_adjust_button => 'Kontext anpassen';
  @override
  String get popup_ctx_box_current => 'Current';
  @override
  String get popup_ctx_box_empty => '(leer)';
  @override
  String get popup_ctx_box_next => 'After';
  @override
  String get popup_ctx_box_prev => 'Before';
  @override
  String get popup_ctx_cancel => 'Abbrechen';
  @override
  String get popup_ctx_confirm => 'Confirm';
  @override
  String get popup_ctx_modal_count => 'Selected %d';
  @override
  String get popup_ctx_modal_eyebrow => 'Before mining';
  @override
  String get popup_ctx_modal_title => 'Satzkontext auswählen';
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
      'Max. Wörterbuchspalten (auto-fill)';
  @override
  String get popup_dictionary_max_columns_hint =>
      'Füllt automatisch bis zu dieser Anzahl Wörterbuchspalten pro Zeile; schmalere Bildschirme verwenden weniger';
  @override
  String get popup_font_size_decrease => 'Wörterbuchtext verkleinern';
  @override
  String get popup_font_size_increase => 'Wörterbuchtext vergrößern';
  @override
  String get popup_instant_scroll => 'Sofortiges Popup-Scrollen';
  @override
  String get popup_instant_scroll_hint =>
      'Lässt das Nachschlage-Popup ohne Scroll-Animation um feste Distanzen springen – für E-Ink-Bildschirme.';
  @override
  String get popup_max_height => 'Maximale Popup-Höhe';
  @override
  String get popup_max_width => 'Maximale Popup-Breite';
  @override
  String get popup_no_audio_available => 'Keine Audiowiedergabe verfügbar';
  @override
  String get popup_sentence_context_next_label => 'Danach';
  @override
  String get popup_sentence_context_prev_label => 'Davor';
  @override
  String get popup_wheel_speed => 'Popup-Scrollgeschwindigkeit';
  @override
  String get popup_wheel_speed_hint =>
      'Mausrad-Scrollgeschwindigkeit für das Wörterbuch-Popup (gilt auch für die Browser-Erweiterung).';
  @override
  String get prev_sentence => 'Vorheriger Satz';
  @override
  String get preview => 'Vorschau';
  @override
  String get preview_badge => 'Abzeichen';
  @override
  String get preview_switch => 'Schalter';
  @override
  String get processing_in_progress => 'Bilder werden verarbeitet';
  @override
  String get profile_book_profile => 'Profil zuweisen';
  @override
  String profile_confirm_delete({required Object name}) =>
      'Profil "${name}" löschen?';
  @override
  String get profile_copy => 'Kopieren';
  @override
  String get profile_copy_suffix => '(Kopie)';
  @override
  String get profile_create => 'Profil erstellen';
  @override
  String get profile_delete => 'Löschen';
  @override
  String get profile_export => 'Exportieren';
  @override
  String get profile_export_failed => 'Export fehlgeschlagen';
  @override
  String profile_follow_default_current({required Object name}) =>
      'Folgt Standard (${name})';
  @override
  String get profile_import => 'Importieren';
  @override
  String get profile_import_failed => 'Import fehlgeschlagen';
  @override
  String get profile_import_invalid => 'Ungültige Profildatei';
  @override
  String get profile_import_success => 'Profil importiert';
  @override
  String get profile_label => 'Profil';
  @override
  String get profile_management => 'Profilverwaltung';
  @override
  String get profile_media_audiobook => 'Hörbuch';
  @override
  String get profile_media_epub => 'Buch';
  @override
  String get profile_media_lyrics => 'Liedtext-Modus';
  @override
  String get profile_media_none => 'Keine';
  @override
  String get profile_media_srtbook => 'Untertitelbuch';
  @override
  String get profile_media_type_bindings => 'Medientyp-Zuordnungen';
  @override
  String get profile_media_video => 'Video';
  @override
  String get profile_name_hint => 'Profilname';
  @override
  String get profile_rename => 'Umbenennen';
  @override
  String get reader_auto_hide_chrome_duration =>
      'Schwebende Steuerelemente ausblenden nach';
  @override
  String get reader_content_timeout =>
      'Zeitüberschreitung beim Laden des Inhalts. Bei fehlerhafter Anzeige erneut öffnen';
  @override
  String get reader_copy_image => 'Bild kopieren';
  @override
  String get reader_gallery => 'Galerie';
  @override
  String get reader_gallery_current => 'Aktuelle Leseposition';
  @override
  String get reader_gallery_empty => 'Keine Illustrationen in diesem Buch';
  @override
  String get reader_gallery_jump => 'Zu dieser Illustration springen';
  @override
  String get reader_gallery_tooltip => 'Illustrationen durchblättern';
  @override
  String reader_image_copy_failed({required Object error}) =>
      'Bild konnte nicht kopiert werden: ${error}';
  @override
  String get reader_image_file_unavailable => 'Bilddatei ist nicht verfügbar.';
  @override
  String reader_image_share_failed({required Object error}) =>
      'Bild konnte nicht geteilt werden: ${error}';
  @override
  String get reader_open_failed => 'Buch konnte nicht geöffnet werden';
  @override
  String get reader_settings_section => 'Reader-Einstellungen';
  @override
  String get reader_theme_black => 'Schwarz';
  @override
  String get reader_theme_dark => 'Dunkel';
  @override
  String get reader_theme_ecru => 'Ecru';
  @override
  String get reader_theme_eyecare => 'Eye Care';
  @override
  String get reader_theme_gray => 'Grau';
  @override
  String get reader_theme_light => 'Weiß';
  @override
  String get reader_theme_water => 'Wasserblau';
  @override
  String get reader_top_progress_floating => 'Schwebende Leseanzeige';
  @override
  String get reader_unsupported_platform =>
      'Der Leser ist auf dieser Plattform noch nicht verfügbar.';
  @override
  String get reading_activity => 'Lernaktivität';
  @override
  String get reading_progress => 'Lesefortschritt';
  @override
  String get reading_section_mode => 'Modus & Ausrichtung';
  @override
  String get reading_statistics => 'Lesestatistik';
  @override
  String get record => 'Aufnehmen';
  @override
  String get refresh => 'Aktualisieren';
  @override
  String get rematch_adjust_window => 'Suchfenster anpassen und neu abgleichen';
  @override
  String get rematch_run => 'Abgleich erneut starten';
  @override
  String get remote_audio_source => 'Remote-Audio';
  @override
  String get remote_book_audiobook_download_failed =>
      'Hörbuch für dieses Buch konnte nicht heruntergeladen werden';
  @override
  String get remote_book_download => 'Auf dieses Gerät herunterladen';
  @override
  String get remote_book_download_failed =>
      'Remote-Buch konnte nicht heruntergeladen werden';
  @override
  String get remote_book_downloaded => 'Remote-Buch heruntergeladen';
  @override
  String get remote_book_downloading => 'Wird heruntergeladen…';
  @override
  String get remote_book_info => 'Info';
  @override
  String get remote_book_info_has_audiobook => 'Enthält Hörbuch';
  @override
  String get remote_book_unavailable => 'Gekoppeltes Gerät nicht verfügbar';
  @override
  String get remote_dict_lookup => 'Wörterbuchabfrage über Remote';
  @override
  String get remote_dict_lookup_hint =>
      'Wenn lokale Wörterbücher nichts finden, den konfigurierten Fushi-Server abfragen';
  @override
  String get remote_video_download => 'Auf dieses Gerät herunterladen';
  @override
  String get remote_video_download_failed =>
      'Remote-Video konnte nicht heruntergeladen werden';
  @override
  String get remote_video_downloaded => 'Remote-Video heruntergeladen';
  @override
  String get remote_video_downloading => 'Wird heruntergeladen…';
  @override
  String get remote_video_info => 'Info';
  @override
  String get remote_video_info_has_subtitle => 'Enthält Untertitel';
  @override
  String get remote_video_info_no_subtitle => 'Keine Untertitel';
  @override
  String remote_video_info_size({required Object size}) => 'Größe: ${size}';
  @override
  String get remote_video_list_failed =>
      'Remote-Videos konnten nicht geladen werden. Stelle sicher, dass das andere Gerät eingeschaltet und im selben Netzwerk ist, und versuche es erneut.';
  @override
  String get remote_video_unavailable => 'Gekoppeltes Gerät nicht verfügbar';
  @override
  String get rename_collection => 'Sammlung umbenennen';
  @override
  String get render_restart_required => 'Wird nach Neustart der App wirksam';
  @override
  String get repeat_cue => 'Satz wiederholen';
  @override
  String get reset => 'Zurücksetzen';
  @override
  String get retry => 'Wiederholen';
  @override
  String get reverse_arrow_page_turn =>
      'Links/Rechts-Blätterrichtung der Tastatur umkehren';
  @override
  String get reverse_navigation_bar => 'Navigationsleiste umkehren';
  @override
  String get reverse_reader_bottom_bar => 'Untere Leserleiste umkehren';
  @override
  String get audiobook_rematch_all_zero =>
      'Alle Fenster mit 0% bewertet, bitte manuell anpassen';
  @override
  String audiobook_rematch_auto_failed({required Object error}) =>
      'Automatischer Abgleich fehlgeschlagen: ${error}';
  @override
  String get audiobook_rematch_auto_match => 'Automatischer Abgleich';
  @override
  String audiobook_rematch_auto_picked({
    required Object window,
    required Object pct,
  }) => 'Automatisch ${window} ausgewählt (Treffer ${pct}%)';
  @override
  String audiobook_rematch_default_value({required Object n}) =>
      'Standard ${n}';
  @override
  String audiobook_rematch_health_label({
    required Object pct,
    required Object detail,
  }) => '${pct} übereinstimmend — ${detail}';
  @override
  String get audiobook_rematch_matching => 'Abgleich läuft...';
  @override
  String get audiobook_rematch_no_chapters => 'EPUB hat keinen Kapiteltext';
  @override
  String get audiobook_rematch_no_cues_to_match => 'Keine Cues zum Abgleichen';
  @override
  String get audiobook_rematch_no_sections =>
      'Kein Kapiteltext gefunden, automatischer Abgleich nicht möglich';
  @override
  String get audiobook_rematch_no_stored_cues =>
      'Keine gespeicherten Cues, erneuter Abgleich nicht möglich';
  @override
  String audiobook_rematch_failed({required Object error}) =>
      'Neuabgleich fehlgeschlagen: ${error}';
  @override
  String audiobook_rematch_result({
    required Object pct,
    required Object window,
  }) => 'Neu abgeglichen: ${pct}% (Fenster: ${window})';
  @override
  String get audiobook_rematch_search_window => 'Suchfenster';
  @override
  String get audiobook_rematch_similarity_threshold => 'Ähnlichkeitsschwelle';
  @override
  String get audiobook_rematch_threshold_hint =>
      'Mindestähnlichkeit für unscharfen Abgleich (Dice-Koeffizient). Senken, um mehr Textunterschiede zu tolerieren, aber zu niedrig verursacht Fehlabgleiche.';
  @override
  String get audiobook_rematch_window_hint =>
      'Anzahl der Zeichen, die pro Cue im Text vorwärts durchsucht werden. Anpassen, wenn die Trefferquote niedrig ist; zu groß kann den Cursor bei kurzen verrauschten Cues verzerren.';
  @override
  String get saved_tags => 'Tags gespeichert.';
  @override
  String get scan_non_japanese_text => 'Nicht-japanischen Text scannen';
  @override
  String get scan_non_japanese_text_hint =>
      'Wenn deaktiviert, stoppt die Auswahl bei nicht-japanischen Zeichen';
  @override
  String get search => 'Suchen';
  @override
  String get search_ellipsis => 'Suchen...';
  @override
  String get searching_in_progress => 'Suche nach ';
  @override
  String get section_advanced_colors => 'Erweitert';
  @override
  String get section_advanced_typography => 'Erweitert';
  @override
  String get section_audiobook => 'Hörbuch';
  @override
  String get section_audiobook_lyrics => 'Hörbuch & Liedtext';
  @override
  String get section_epub => 'EPUB-Bibliothek';
  @override
  String get section_floating_lyric => 'Schwebendes Liedtext-Overlay';
  @override
  String get section_interface => 'Oberfläche';
  @override
  String get section_layout => 'Layout & Anzeige';
  @override
  String get section_navigation => 'Navigation';
  @override
  String get section_page_turn_direction => 'Blätterrichtung';
  @override
  String get section_reader_colors => 'Reader-Farben';
  @override
  String get section_system_theme => 'Systemfarbe';
  @override
  String get section_typography => 'Typografie';
  @override
  String get section_update => 'Update-Einstellungen';
  @override
  String get section_video_danmaku => 'Danmaku';
  @override
  String get section_video_library => 'Bibliothek';
  @override
  String get section_video_playback => 'Wiedergabe';
  @override
  String get section_video_subtitles => 'Untertitel';
  @override
  String get seed_color => 'Grundfarbe';
  @override
  String get seed_color_desc => 'Erzeugt alle folgenden Standardfarben';
  @override
  String get selection_color => 'Auswahlhervorhebung';
  @override
  String get selection_color_desc => 'Textauswahl-Hervorhebung im Reader';
  @override
  String get send => 'Senden';
  @override
  String get series => 'Serie';
  @override
  String get series_created => 'Serie erstellt';
  @override
  String get series_default_name => 'Neue Serie';
  @override
  String series_item_count({required Object n}) => '${n} Elemente';
  @override
  String get series_name_hint => 'Serienname';
  @override
  String get server_address => 'Serveradresse';
  @override
  String get settings => 'Einstellungen';
  @override
  String get settings_check_update_now => 'Nach Updates suchen';
  @override
  String get settings_destination_appearance => 'Erscheinungsbild';
  @override
  String get settings_destination_card_creation => 'Kartenerstellung';
  @override
  String get settings_destination_diagnostics => 'Diagnose';
  @override
  String get settings_destination_interconnect => 'Fushi Interconnect';
  @override
  String get settings_destination_listening => 'Hören';
  @override
  String get settings_destination_lookup => 'Nachschlagen';
  @override
  String get settings_destination_profiles => 'Konfigurationsprofile';
  @override
  String get settings_destination_reading => 'Lesen';
  @override
  String get settings_destination_reading_controls => 'Lesesteuerung';
  @override
  String get settings_destination_sync_backup => 'Sync & Backup';
  @override
  String get settings_destination_system => 'System';
  @override
  String get settings_destination_system_summary =>
      'Allgemein, Updates & Diagnose';
  @override
  String get settings_destination_tracking => 'Medienverfolgung';
  @override
  String get settings_destination_video => 'Video';
  @override
  String get settings_search_hint => 'Einstellungen durchsuchen';
  @override
  String get settings_search_no_results => 'Keine passenden Einstellungen';
  @override
  String get settings_secret_hide => 'Wert ausblenden';
  @override
  String get settings_secret_show => 'Wert anzeigen';
  @override
  String get settings_section_app_shell => 'App';
  @override
  String get settings_section_data_storage => 'Datenspeicherort';
  @override
  String get settings_section_gal_hook_overlay => 'Galgame-Untertitel-Overlay';
  @override
  String get settings_section_general => 'Allgemein';
  @override
  String get settings_section_lookup_audio => 'Aussprache & Feedback';
  @override
  String get settings_section_lookup_content => 'Eintragsinhalt';
  @override
  String get settings_section_lookup_integrations => 'Externe Integrationen';
  @override
  String get settings_section_lookup_popup_window => 'Popup-Fenster';
  @override
  String get settings_section_lookup_trigger => 'Nachschlage-Auslöser';
  @override
  String get settings_section_page_turn_input =>
      'Seitenumblättern & Interaktion';
  @override
  String get settings_section_reader_chrome => 'Reader-Oberfläche';
  @override
  String get settings_section_update_channel => 'Update-Kanal';
  @override
  String get settings_view_changelog => 'Änderungsprotokoll anzeigen';
  @override
  String get share => 'Teilen';
  @override
  String get share_theme => 'Theme teilen';
  @override
  String get shortcut_action_audiobook_next_sentence => 'Nächster Satz';
  @override
  String get shortcut_action_audiobook_play_pause => 'Wiedergabe / Pause';
  @override
  String get shortcut_action_audiobook_prev_sentence => 'Vorheriger Satz';
  @override
  String get shortcut_action_audiobook_seek_clicked =>
      'Audio zum angeklickten Satz springen';
  @override
  String get shortcut_action_dpad_down => 'D-pad unten';
  @override
  String get shortcut_action_dpad_left => 'D-pad links';
  @override
  String get shortcut_action_dpad_right => 'D-pad rechts';
  @override
  String get shortcut_action_dpad_up => 'D-pad oben';
  @override
  String get shortcut_action_global_back => 'Zurück';
  @override
  String get shortcut_action_global_external_lookup =>
      'App-external lookup hotkey';
  @override
  String get shortcut_action_global_scroll_page_down =>
      'Eine Bildschirmseite nach unten scrollen';
  @override
  String get shortcut_action_global_scroll_page_up =>
      'Eine Bildschirmseite nach oben scrollen';
  @override
  String get shortcut_action_global_toggle_fullscreen => 'Vollbild umschalten';
  @override
  String get shortcut_action_home_focus_search => 'Suche fokussieren';
  @override
  String get shortcut_action_home_tab_books => 'Tab „Bücher“';
  @override
  String get shortcut_action_home_tab_dict => 'Tab „Wörterbuch“';
  @override
  String get shortcut_action_home_tab_next => 'Nächster Tab';
  @override
  String get shortcut_action_home_tab_prev => 'Vorheriger Tab';
  @override
  String get shortcut_action_home_tab_settings => 'Tab „Einstellungen“';
  @override
  String get shortcut_action_popup_next_entry => 'Nächster Worteintrag';
  @override
  String get shortcut_action_popup_prev_entry => 'Vorheriger Worteintrag';
  @override
  String get shortcut_action_reader_create_card_from_popup =>
      'Karte aus Popup erstellen';
  @override
  String get shortcut_action_reader_dismiss_dict => 'Wörterbuch schließen';
  @override
  String get shortcut_action_reader_enter_caret =>
      'Nachschlage-Cursor aktivieren';
  @override
  String get shortcut_action_reader_lookup_at_cursor =>
      'Nachschlagen / Cursor aktivieren';
  @override
  String get shortcut_action_reader_open_menu => 'Open Settings Menu';
  @override
  String get shortcut_action_reader_open_navigation => 'Open Navigation';
  @override
  String get shortcut_action_reader_page_backward => 'Vorherige Seite';
  @override
  String get shortcut_action_reader_page_forward => 'Nächste Seite';
  @override
  String get shortcut_action_reader_shift_lookup => 'Shift-Nachschlagen';
  @override
  String get shortcut_action_reader_toggle_chrome => 'Steuerung umschalten';
  @override
  String get shortcut_action_reader_toggle_furigana => 'Furigana umschalten';
  @override
  String get shortcut_action_video_align_subtitle_to_next =>
      'Nächsten Untertitel auf jetzt ausrichten';
  @override
  String get shortcut_action_video_align_subtitle_to_prev =>
      'Vorherigen Untertitel auf jetzt ausrichten';
  @override
  String get shortcut_action_video_cycle_secondary_subtitle_obscure =>
      'Cycle Secondary Subtitle Obscure';
  @override
  String get shortcut_action_video_cycle_subtitle_obscure =>
      'Cycle Subtitle Obscure Mode';
  @override
  String get shortcut_action_video_next_chapter => 'Nächstes Kapitel';
  @override
  String get shortcut_action_video_next_frame => 'Nächstes Bild';
  @override
  String get shortcut_action_video_next_subtitle => 'Nächster Untertitel';
  @override
  String get shortcut_action_video_open_subtitle_align =>
      'Untertitel-Wellenform-Ausrichtung öffnen';
  @override
  String get shortcut_action_video_pause => 'Pause';
  @override
  String get shortcut_action_video_play => 'Wiedergabe';
  @override
  String get shortcut_action_video_previous_chapter => 'Vorheriges Kapitel';
  @override
  String get shortcut_action_video_previous_frame => 'Vorheriges Bild';
  @override
  String get shortcut_action_video_previous_subtitle => 'Voriger Untertitel';
  @override
  String get shortcut_action_video_replay_current_subtitle =>
      'Aktuellen Untertitel erneut abspielen';
  @override
  String get shortcut_action_video_replay_previous_subtitle =>
      'Vorigen Untertitel erneut abspielen';
  @override
  String get shortcut_action_video_reset_speed =>
      'Geschwindigkeit zurücksetzen';
  @override
  String get shortcut_action_video_screenshot => 'Screenshot';
  @override
  String get shortcut_action_video_seek_backward => 'Zurückspulen';
  @override
  String get shortcut_action_video_seek_forward => 'Vorspulen';
  @override
  String get shortcut_action_video_speed_down => 'Langsamer';
  @override
  String get shortcut_action_video_speed_up => 'Schneller';
  @override
  String get shortcut_action_video_subtitle_delay_decrease =>
      'Untertitelverzögerung −';
  @override
  String get shortcut_action_video_subtitle_delay_increase =>
      'Untertitelverzögerung +';
  @override
  String get shortcut_action_video_toggle_favorite_sentence =>
      'Aktuellen Satz favorisieren';
  @override
  String get shortcut_action_video_toggle_fullscreen => 'Vollbild umschalten';
  @override
  String get shortcut_action_video_toggle_immersive_lock =>
      'Immersive Sperre umschalten';
  @override
  String get shortcut_action_video_toggle_mute => 'Stummschaltung umschalten';
  @override
  String get shortcut_action_video_toggle_play_pause => 'Wiedergabe / Pause';
  @override
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle Hide Secondary Subtitle';
  @override
  String get shortcut_action_video_toggle_shader_compare =>
      'Shader-Vergleich umschalten';
  @override
  String get shortcut_action_video_toggle_subtitle_blur =>
      'Untertitel-Unschärfe umschalten';
  @override
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle Hide Subtitles';
  @override
  String get shortcut_action_video_toggle_subtitle_list =>
      'Untertitelliste umschalten';
  @override
  String get shortcut_action_video_volume_down => 'Leiser';
  @override
  String get shortcut_action_video_volume_up => 'Lauter';
  @override
  String get shortcut_assign_pick_action => 'Aktion zuweisen…';
  @override
  String get shortcut_clear => 'Löschen';
  @override
  String shortcut_conflict({required Object s}) => 'Bereits belegt durch: ${s}';
  @override
  String shortcut_conflict_replace_confirm({required Object s}) =>
      'Dieses Tastenkürzel wird bereits von „${s}“ verwendet. Auf diese Aktion verschieben?';
  @override
  String get shortcut_gamepad => 'Gamepad';
  @override
  String get shortcut_gamepad_brand_label => 'Gamepad-Tastenstil';
  @override
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  @override
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  @override
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  @override
  String get shortcut_gamepad_pick_list => 'Aus Liste wählen';
  @override
  String get shortcut_gamepad_unavailable_hint =>
      'GameInput-Komponente nicht erkannt — Gamepad-Unterstützung ist nicht verfügbar. Installiere die Windows Gaming Services, um Controller-Unterstützung zu aktivieren.';
  @override
  String get shortcut_keyboard => 'Tastatur';
  @override
  String get shortcut_mouse_back => 'Zurück-Taste';
  @override
  String get shortcut_mouse_button => 'Maustaste';
  @override
  String get shortcut_mouse_forward => 'Vorwärts-Taste';
  @override
  String get shortcut_mouse_left => 'Linksklick';
  @override
  String get shortcut_mouse_middle => 'Mittelklick';
  @override
  String get shortcut_mouse_right => 'Rechtsklick';
  @override
  String get shortcut_press_gamepad => 'Drücke eine Gamepad-Taste…';
  @override
  String get shortcut_press_key => 'Tastenkombination drücken...';
  @override
  String get shortcut_press_mouse_button => 'Drücke eine Maustaste…';
  @override
  String get shortcut_press_wheel =>
      'Halte eine Modifikatortaste gedrückt und scrolle hier';
  @override
  String get shortcut_reset_confirm =>
      'Alle Tastenkürzel in diesem Bereich auf Standard zurücksetzen?';
  @override
  String get shortcut_reset_defaults => 'Auf Standard zurücksetzen';
  @override
  String get shortcut_scope_audiobook => 'Hörbuch';
  @override
  String get shortcut_scope_dictionary_popup => 'Wörterbuch-Popup';
  @override
  String get shortcut_scope_dictionary_popup_note =>
      'Funktioniert, wenn der Mauszeiger über einem Wörterbuch-Popup ist';
  @override
  String get shortcut_scope_gamepad => 'Gamepad';
  @override
  String get shortcut_scope_global => 'Global';
  @override
  String get shortcut_scope_global_external => 'Global (app-extern)';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this hotkey.';
  @override
  String get shortcut_scope_home => 'Start';
  @override
  String get shortcut_scope_reader => 'Leser';
  @override
  String get shortcut_scope_video => 'Video';
  @override
  String get shortcut_settings_title => 'Tastenkürzel';
  @override
  String get shortcut_stop_capture => 'Stopp';
  @override
  String get shortcut_tap_to_assign => 'Nicht belegt · Tippen zum Zuweisen';
  @override
  String get shortcut_view_list => 'Listenansicht';
  @override
  String get shortcut_view_visual => 'Controller-Layout';
  @override
  String get shortcut_wheel => 'Mausrad';
  @override
  String get shortcut_wheel_down => 'Rad nach unten';
  @override
  String get shortcut_wheel_needs_modifier =>
      'Das Mausrad allein scrollt das Popup — halte Alt / Strg / Umschalt beim Scrollen gedrückt';
  @override
  String get shortcut_wheel_up => 'Rad nach oben';
  @override
  String get show_bottom_bar_cue => 'Aktuellen Satz anzeigen';
  @override
  String get show_expression_tags => 'Ausdrucks-Tags anzeigen';
  @override
  String get show_floating_lyric => 'Schwebende Textzeile';
  @override
  String get show_media_notification => 'Medienbenachrichtigung anzeigen';
  @override
  String get show_options => 'Optionen anzeigen';
  @override
  String get show_top_progress_bar => 'Lesefortschritt-Anzeige';
  @override
  String get skip_action => 'Aktion überspringen';
  @override
  String skip_action_seconds({required Object n}) => '${n} Sekunden';
  @override
  String get skip_action_sentence => '1 Satz';
  @override
  String get sort_by => 'Sortieren';
  @override
  String get sort_imported => 'Importdatum';
  @override
  String get sort_recent_read => 'Zuletzt gelesen';
  @override
  String get sort_recent_watched => 'Zuletzt angesehen';
  @override
  String get sort_title => 'Name';
  @override
  String get source_description_epub => 'EPUB lesen & Wörterbuch-Nachschlagen';
  @override
  String get source_name_bookshelf => 'Bücherregal';
  @override
  String get spread_auto => 'Automatisch';
  @override
  String get spread_direction => 'Spreizrichtung';
  @override
  String get spread_direction_ltr => 'Links nach rechts';
  @override
  String get spread_direction_rtl => 'Rechts nach links';
  @override
  String get spread_mode => 'Spreizmodus';
  @override
  String get spread_off => 'Aus';
  @override
  String get spread_on => 'Ein';
  @override
  String get srt_audio_unresolved =>
      'Audiodatei nicht gefunden — bitte erneut anhängen';
  @override
  String get srt_books_section => 'Untertitel-Hörbücher';
  @override
  String srt_delete_confirm({required Object title}) =>
      '『${title}』löschen? Dies kann nicht rückgängig gemacht werden.';
  @override
  String get srt_delete_title => 'Untertitel-Buch löschen';
  @override
  String get srt_epub_not_ready =>
      'Buch nicht bereit — bitte erneut importieren';
  @override
  String get srt_import => 'Buch importieren';
  @override
  String get srt_import_audio_needs_subtitle =>
      'Audio muss mit Untertiteln gepaart werden. Um Audio an ein bestehendes EPUB anzuhängen, drücken Sie lange auf das Buch im Regal.';
  @override
  String get srt_import_author_hint => 'Autor (optional)';
  @override
  String get srt_import_error => 'Import fehlgeschlagen';
  @override
  String srt_import_files_selected({required Object n}) =>
      '${n} Dateien ausgewählt';
  @override
  String get srt_import_hint_epub_or_srt =>
      'Wählen Sie eine EPUB- oder Untertiteldatei zum Importieren.';
  @override
  String get srt_import_missing_input =>
      'Bitte wählen Sie mindestens ein EPUB oder eine Untertiteldatei aus';
  @override
  String get srt_import_missing_title => 'Bitte geben Sie einen Buchtitel ein';
  @override
  String get srt_import_pick_audio_dir => 'Audioverzeichnis auswählen';
  @override
  String get srt_import_pick_audio_files => 'Audiodateien auswählen';
  @override
  String get srt_import_pick_cover => 'Coverbild auswählen';
  @override
  String get srt_import_pick_epub => 'EPUB auswählen';
  @override
  String get srt_import_pick_subtitle_files => 'Untertiteldateien auswählen';
  @override
  String get srt_import_success => 'Buch importiert';
  @override
  String get srt_import_title_hint => 'Buchtitel';
  @override
  String get startup_default_dictionary_tab => 'Beim Start Nachschlagen öffnen';
  @override
  String get startup_default_dictionary_tab_hint =>
      'Startet den Startbildschirm im Nachschlagen-Tab statt mit dem aktuellen Standard.';
  @override
  String get stash => 'Merkliste';
  @override
  String get stash_added_multiple =>
      'Mehrere Einträge wurden zur Merkliste hinzugefügt.';
  @override
  String stash_added_single({required Object term}) =>
      '『${term}』wurde zur Merkliste hinzugefügt.';
  @override
  String get stash_clear_description =>
      'Alle Inhalte werden gelöscht. Sind Sie sicher?';
  @override
  String stash_clear_single({required Object term}) =>
      '『${term}』wurde aus der Merkliste entfernt.';
  @override
  String get stash_clear_title => 'Merkliste leeren';
  @override
  String get stash_nothing_to_pop =>
      'Keine Einträge zum Entnehmen aus der Merkliste.';
  @override
  String get stash_placeholder => 'Keine Einträge in der Merkliste';
  @override
  String get stat_all_time => 'Gesamt';
  @override
  String get stat_bookshelf_compare => 'Bücherregal';
  @override
  String get stat_clear_all => 'Statistiken löschen';
  @override
  String get stat_clear_all_confirm => 'Löschen';
  @override
  String get stat_clear_all_reading_message =>
      'Alle Lesezeiten, Zeichenanzahlen und Nachschlage-/Mining-Zähler löschen? Gespeicherte Wörter, Sätze und erstellte Karten bleiben erhalten. Dies kann nicht rückgängig gemacht werden.';
  @override
  String get stat_clear_all_title => 'Alle Statistiken löschen';
  @override
  String get stat_clear_all_video_message =>
      'Alle Wiedergabezeiten, Untertitel-Zeichenanzahlen und Nachschlage-/Mining-Zähler löschen? Gespeicherte Wörter, Sätze und erstellte Karten bleiben erhalten. Dies kann nicht rückgängig gemacht werden.';
  @override
  String get stat_daily_average => 'Tagesschnitt';
  @override
  String get stat_delete_message =>
      'Zeit, Zeichenanzahl und Nachschlage-/Mining-Statistiken dieses Elements löschen? Gespeicherte Wörter und Sätze sind nicht betroffen.';
  @override
  String get stat_delete_title => 'Statistiken löschen';
  @override
  String get stat_fastest_day => 'Fastest Day';
  @override
  String get stat_favorited => 'Favorisiert';
  @override
  String get stat_favorited_sentence => 'Favorisierte Sätze';
  @override
  String stat_format_chars({required Object n}) => '${n} Zeichen';
  @override
  String stat_format_chars_wan({required Object n}) => '${n}万 Zeichen';
  @override
  String stat_format_days({required Object n}) => '${n} Tage';
  @override
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h} Std. ${m} Min.';
  @override
  String stat_format_minutes({required Object n}) => '${n} Min.';
  @override
  String get stat_goal => 'Daily Goal';
  @override
  String get stat_goal_daily => 'Daily Goal';
  @override
  String get stat_goal_presets => 'Vorlagen';
  @override
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} Zeichen';
  @override
  String get stat_goal_reached => 'Ziel erreicht';
  @override
  String stat_goal_recent_average({required Object n}) =>
      'Letzte 7 Tage: Ø ${n} Zeichen/Tag';
  @override
  String get stat_goal_set => 'Set Goal';
  @override
  String get stat_goal_unit_chars => 'Zeichen';
  @override
  String get stat_goal_weekly => 'Weekly Goal';
  @override
  String get stat_last_30_days => 'Letzte 30 Tage';
  @override
  String get stat_lookup => 'Nachschlagungen';
  @override
  String get stat_metric_chars => 'Zeichen';
  @override
  String get stat_metric_speed => 'Geschwindigkeit';
  @override
  String get stat_metric_time => 'Zeit';
  @override
  String get stat_mined => 'Erstellte Karten';
  @override
  String get stat_no_data => 'Noch keine Lesedaten';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => 'Aktive Tage (7T)';
  @override
  String get stat_refresh => 'Aktualisieren';
  @override
  String get stat_slowest_day => 'Slowest Day';
  @override
  String get stat_sort_by_chars => 'Nach Zeichen';
  @override
  String get stat_sort_by_speed => 'Nach Geschwindigkeit';
  @override
  String get stat_sort_by_time => 'Nach Zeit';
  @override
  String get stat_speed_anomaly => 'Anomalie';
  @override
  String get stat_speed_avg => 'Gleitender Durchschnitt';
  @override
  String stat_speed_cph({required Object n}) => '${n} Zeichen/Std.';
  @override
  String get stat_speed_summary => 'Speed Summary';
  @override
  String get stat_streak => 'Serie';
  @override
  String get stat_this_month => 'Dieser Monat';
  @override
  String get stat_this_week => 'Diese Woche';
  @override
  String get stat_today => 'Heute';
  @override
  String get stat_today_hourly => 'Heute nach Stunde';
  @override
  String get stat_trend_daily => 'Täglich';
  @override
  String get stat_trend_monthly => 'Monatlich';
  @override
  String get stat_trend_weekly => 'Wöchentlich';
  @override
  String get stat_typical_day => 'Typical Day';
  @override
  String get stat_vs_prev => 'vs. vorige 14T';
  @override
  String get stat_weighted_avg_speed => 'Weighted Avg';
  @override
  String get stop => 'Stoppen';
  @override
  String get storage_permissions =>
      'Bitte erteilen Sie die folgenden Berechtigungen für den Export zu AnkiDroid.';
  @override
  String get stream => 'Stream';
  @override
  String get swipe_page_turn_sensitivity =>
      'Empfindlichkeit für Wisch-Blättern';
  @override
  String get sync_account => 'Konto';
  @override
  String get sync_audiobook => 'Hörbuchposition synchronisieren';
  @override
  String get sync_audiobook_files => 'Hörbuchdateien synchronisieren';
  @override
  String get sync_audiobook_files_warning =>
      'Audio und Untertitel können groß sein.';
  @override
  String sync_auth_error({required Object message}) =>
      'Authentifizierung fehlgeschlagen: ${message}';
  @override
  String get sync_auto_sync => 'Auto-Sync';
  @override
  String get sync_backend => 'Speicher-Backend';
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
  String get sync_checking_account => 'Konto wird überprüft…';
  @override
  String get sync_client_connected => 'Verbunden';
  @override
  String get sync_client_token => 'Peer-Zugriffstoken';
  @override
  String get sync_client_token_manual => 'Token manuell eingeben';
  @override
  String get sync_compare => 'Daten vergleichen';
  @override
  String get sync_compare_all_books => 'Alle Bücher';
  @override
  String get sync_compare_all_local => 'Alle → Lokal';
  @override
  String get sync_compare_all_remote => 'Alle → Remote';
  @override
  String get sync_compare_all_skip => 'Alle → Überspringen';
  @override
  String sync_compare_applied({required Object count}) =>
      '${count} Änderungen angewendet';
  @override
  String sync_compare_apply({required Object count}) =>
      'Jetzt synchronisieren (${count})';
  @override
  String get sync_compare_close => 'Schließen';
  @override
  String get sync_compare_conflicts => 'Konflikte';
  @override
  String get sync_compare_days => 'Tage';
  @override
  String get sync_compare_delete_audiobook => 'Hörbuch auf Remote löschen';
  @override
  String get sync_compare_delete_book => 'Buch auf Remote löschen';
  @override
  String sync_compare_delete_confirm({required Object name}) =>
      '„${name}“ vom Remote löschen? Lokale Daten bleiben erhalten. Dies kann nicht rückgängig gemacht werden.';
  @override
  String get sync_compare_delete_dict => 'Wörterbuch auf Remote löschen';
  @override
  String get sync_compare_deleted => 'Von Remote gelöscht';
  @override
  String get sync_compare_dictionaries => 'Wörterbücher';
  @override
  String get sync_compare_download => 'Herunterladen';
  @override
  String get sync_compare_empty => 'Keine Bücher gefunden';
  @override
  String get sync_compare_local => 'Lokal';
  @override
  String get sync_compare_no_content =>
      'Nur Cloud-Daten – kein Buch zum Herunterladen';
  @override
  String get sync_compare_no_data => 'Keine Daten';
  @override
  String get sync_compare_remote => 'Remote';
  @override
  String get sync_compare_select_all => 'Alle auswählen';
  @override
  String get sync_compare_skip => 'Überspringen';
  @override
  String get sync_compare_title => 'Lokal vs. Remote';
  @override
  String get sync_compare_unavailable => 'Set up sync first';
  @override
  String get sync_compare_use_local => 'Lokal';
  @override
  String get sync_compare_use_remote => 'Remote';
  @override
  String get sync_connection_failed => 'Verbindung fehlgeschlagen';
  @override
  String get sync_connection_success => 'Verbindung erfolgreich';
  @override
  String get sync_content => 'Buchdateien synchronisieren';
  @override
  String get sync_content_warning =>
      'Große Dateien verbrauchen Speicherplatz und Datenvolumen';
  @override
  String get sync_err_auth_expired =>
      'Anmeldung abgelaufen – bitte erneut anmelden.';
  @override
  String get sync_err_invalid_client =>
      'Die Client-Anmeldedaten sind für diesen Build ungültig – bitte aktualisiere die App.';
  @override
  String get sync_err_network =>
      'Server nicht erreichbar – prüfe dein Netzwerk oder die Proxy-Einstellungen.';
  @override
  String get sync_err_not_configured =>
      'Google-Sync-Anmeldedaten sind in diesem Build nicht konfiguriert.';
  @override
  String get sync_err_quota => 'Cloud-Speicher ist voll (Kontingent erreicht).';
  @override
  String get sync_err_scope_upgrade =>
      'Synchronisierungsberechtigungen geändert — bitte melde dich erneut bei Google an, um die Synchronisierung fortzusetzen.';
  @override
  String get sync_err_timeout =>
      'Zeitüberschreitung – der Server hat nicht rechtzeitig geantwortet.';
  @override
  String sync_error({required Object message}) =>
      'Synchronisierungsfehler: ${message}';
  @override
  String get sync_exit_warning =>
      'Die Synchronisierung läuft noch. Wenn du jetzt beendest, können Daten verloren gehen.';
  @override
  String get sync_exit_warning_title => 'Sync läuft';
  @override
  String get sync_host => 'Host';
  @override
  String get sync_lan_discovery => 'LAN-Geräte';
  @override
  String get sync_lan_no_devices => 'Keine Geräte gefunden';
  @override
  String get sync_lan_scan_failed =>
      'Suche fehlgeschlagen – prüfe Netzwerkberechtigungen oder Firewall.';
  @override
  String get sync_not_signed_in => 'Nicht angemeldet';
  @override
  String get sync_now => 'Jetzt synchronisieren';
  @override
  String sync_now_audio_in({required Object count}) => '↓${count} Hörbücher';
  @override
  String sync_now_audio_out({required Object count}) => '↑${count} Hörbücher';
  @override
  String sync_now_books_in({required Object count}) => '↓${count} Bücher';
  @override
  String get sync_now_busy => 'Eine Synchronisierung läuft bereits';
  @override
  String sync_now_dicts_in({required Object count}) => '↓${count} Wörterbücher';
  @override
  String sync_now_dicts_out({required Object count}) =>
      '↑${count} Wörterbücher';
  @override
  String sync_now_done({required Object detail}) =>
      'Synchronisiert · ${detail}';
  @override
  String sync_now_failed_suffix({required Object count}) =>
      ' · ${count} fehlgeschlagen';
  @override
  String get sync_now_hint =>
      'Jetzt eine vollständige bidirektionale Synchronisierung mit der Cloud durchführen';
  @override
  String sync_now_local_audio_in({required Object count}) =>
      '↓${count} Audioquellen';
  @override
  String sync_now_local_audio_out({required Object count}) =>
      '↑${count} Audioquellen';
  @override
  String get sync_now_no_changes => 'keine Änderungen';
  @override
  String get sync_pair_allow => 'Erlauben';
  @override
  String sync_pair_confirm_identity_body({required Object device}) =>
      'Du koppelst mit ${device}. Bestätige, dass dies das erwartete Gerät ist, bevor du fortfährst.';
  @override
  String get sync_pair_confirm_identity_title => 'Gerät bestätigen';
  @override
  String get sync_pair_continue => 'Weiter';
  @override
  String get sync_pair_denied => 'Das andere Gerät hat die Kopplung abgelehnt';
  @override
  String get sync_pair_deny => 'Ablehnen';
  @override
  String get sync_pair_enter_pin_body =>
      'Gib die 6-stellige PIN ein, die auf dem anderen Gerät angezeigt wird.';
  @override
  String get sync_pair_enter_pin_title => 'PIN eingeben';
  @override
  String get sync_pair_failed => 'Kopplung fehlgeschlagen';
  @override
  String get sync_pair_fingerprint_changed =>
      'Zertifikat geändert — Kopplung aus Sicherheitsgründen abgebrochen (mögliches Abfangen).';
  @override
  String get sync_pair_fingerprint_label => 'Zertifikat-Fingerabdruck';
  @override
  String get sync_pair_not_fushi =>
      'Kein Fushi-Gerät an dieser Adresse gefunden. Die Adresse wurde gespeichert.';
  @override
  String get sync_pair_pairing => 'Koppeln…';
  @override
  String get sync_pair_pin_label => 'Diese PIN auf dem anderen Gerät eingeben';
  @override
  String get sync_pair_pin_waiting =>
      'Warte darauf, dass das andere Gerät diese PIN eingibt…';
  @override
  String get sync_pair_pin_wrong => 'Falsche PIN — erneut versuchen';
  @override
  String get sync_pair_repair => 'Erneut koppeln';
  @override
  String get sync_pair_request_body =>
      'Ein Gerät möchte sich koppeln. Synchronisierung mit diesem Gerät erlauben?';
  @override
  String get sync_pair_request_title => 'Kopplungsanfrage';
  @override
  String get sync_pair_success => 'Gekoppelt – Token eingetragen';
  @override
  String get sync_pair_unavailable =>
      'Das andere Gerät ist nicht bereit oder hat eine ältere Version. Aktualisiere es, aktiviere die Synchronisierung und versuche es erneut.';
  @override
  String get sync_pair_unknown_device => 'Unbekanntes Gerät';
  @override
  String get sync_paired_peer_remove => 'Entfernen';
  @override
  String get sync_paired_peer_removed => 'Gekoppeltes Gerät entfernt';
  @override
  String get sync_paired_peer_unknown => 'Unbekanntes Gerät';
  @override
  String get sync_paired_peers_empty => 'Noch keine gekoppelten Geräte';
  @override
  String get sync_paired_peers_title => 'Gekoppelte Geräte';
  @override
  String get sync_password => 'Passwort';
  @override
  String get sync_port => 'Port';
  @override
  String get sync_private_key => 'Privater Schlüssel';
  @override
  String get sync_progress_audiobooks => 'Hörbücher werden synchronisiert';
  @override
  String get sync_progress_books => 'Bücher werden importiert';
  @override
  String get sync_progress_dictionaries => 'Wörterbücher werden synchronisiert';
  @override
  String get sync_progress_local_audio => 'Lokales Audio wird synchronisiert';
  @override
  String get sync_progress_reading => 'Lesedaten werden synchronisiert';
  @override
  String get sync_progress_videos => 'Videos synchronisieren';
  @override
  String get sync_role_locked_by_client =>
      'Bereits mit einem anderen Gerät verbunden. Entferne die Verbindung, bevor du als Server agierst.';
  @override
  String get sync_role_locked_by_server =>
      'Dieses Gerät fungiert als Server. Schalte den Server aus, bevor du dich mit anderen Geräten verbindest.';
  @override
  String get sync_section_actions => 'Sync-Aktionen';
  @override
  String get sync_section_backup => 'Lokales Backup';
  @override
  String get sync_section_content => 'Was synchronisiert wird';
  @override
  String get sync_section_host_server => 'Dieses Gerät als Sync-Server';
  @override
  String get sync_section_host_server_footer =>
      'Lass andere Geräte von diesem Gerät synchronisieren. Unabhängig vom obigen Sync-Backend.';
  @override
  String get sync_section_method => 'Sync-Methode';
  @override
  String get sync_server_copy_token => 'Token kopieren';
  @override
  String get sync_server_enable => 'Sync-Server aktivieren';
  @override
  String get sync_server_mode_active => 'Dieses Gerät ist ein Sync-Server';
  @override
  String get sync_server_mode_clients_drive =>
      'Verbundene Clients starten die Synchronisierung – hier ist keine manuelle Synchronisierung nötig.';
  @override
  String get sync_server_port => 'Server-Port';
  @override
  String sync_server_port_in_use({required Object port}) =>
      'Port ${port} wird bereits verwendet – wähle einen anderen Port.';
  @override
  String get sync_server_regenerate_token => 'Token neu erzeugen';
  @override
  String get sync_server_running => 'Server läuft';
  @override
  String get sync_server_stopped => 'Server gestoppt';
  @override
  String get sync_server_tls_enable =>
      'Interconnect-Verschlüsselung (HTTPS/TLS)';
  @override
  String get sync_server_tls_repair_hint =>
      'Eine Änderung erfordert ein erneutes Koppeln der Geräte';
  @override
  String get sync_server_token => 'Zugriffstoken';
  @override
  String get sync_show_remote_entries => 'Remote-Einträge anzeigen';
  @override
  String get sync_show_remote_entries_warning =>
      'Bücher und Videos anzeigen, die auf gekoppelten Geräten oder in der Cloud vorhanden sind, als Platzhalterkarten zum Herunterladen oder Streamen.';
  @override
  String get sync_sign_in => 'Anmelden';
  @override
  String get sync_sign_out => 'Abmelden';
  @override
  String get sync_signed_in => 'Angemeldet';
  @override
  String get sync_statistics => 'Statistiken synchronisieren';
  @override
  String get sync_summary => 'Cloud, LAN P2P & lokales Backup';
  @override
  String get sync_test_connection => 'Verbindung testen';
  @override
  String get sync_use_tls => 'TLS verwenden';
  @override
  String get sync_username => 'Benutzername';
  @override
  String get sync_video_files => 'Videodateien hochladen';
  @override
  String get sync_video_files_warning => 'Videodateien können sehr groß sein.';
  @override
  String get sync_webdav_missing_fields => 'Fehlende Felder';
  @override
  String sync_webdav_test_failed({required Object message}) =>
      'Verbindung fehlgeschlagen: ${message}';
  @override
  String get sync_webdav_url => 'Server-URL';
  @override
  String tag_added_to_book({required Object name}) =>
      'Tag "${name}" zum Buch hinzugefügt.';
  @override
  String tag_added_to_collection({required Object name}) =>
      'Tag ${name} zur Sammlung hinzugefügt.';
  @override
  String tag_added_to_video({required Object name}) =>
      'Tag „${name}“ zum Video hinzugefügt.';
  @override
  String tag_already_on_book({required Object name}) =>
      'Tag "${name}" ist bereits auf diesem Buch.';
  @override
  String tag_already_on_collection({required Object name}) =>
      'Tag ${name} ist bereits in dieser Sammlung.';
  @override
  String tag_book_count({required Object count}) => '${count} Buch/Bücher';
  @override
  String get tag_clear_filter => 'Filter löschen';
  @override
  String get tag_color => 'Farbe';
  @override
  String tag_delete_confirm({required Object name}) => 'Tag "${name}" löschen?';
  @override
  String get tag_filter_title => 'Nach Tag filtern';
  @override
  String get tag_label => 'Tags';
  @override
  String get tag_manage => 'Tags verwalten';
  @override
  String get tag_manage_title => 'Tags verwalten';
  @override
  String get tag_name_duplicate =>
      'Ein Tag mit diesem Namen existiert bereits.';
  @override
  String get tag_name_empty => 'Tag-Name darf nicht leer sein.';
  @override
  String get tag_name_hint => 'Tag-Name';
  @override
  String get tag_new => 'Neuer Tag';
  @override
  String get tag_no_books_for_filter =>
      'Keine Bücher entsprechen den ausgewählten Tags.';
  @override
  String get tag_no_tags_hint =>
      'Noch keine Tags. Erstellen Sie einen, um zu beginnen.';
  @override
  String get tag_seed_stars => 'Sternebewertungs-Tags hinzufügen';
  @override
  String get tag_seed_stars_added => 'Sternebewertungs-Tags hinzugefügt';
  @override
  String get tag_seed_stars_exists =>
      'Sternebewertungs-Tags existieren bereits';
  @override
  String get tap_empty_hide_chrome => 'Schwebende Steuerleiste';
  @override
  String get text_segmentation => 'Textsegmentierung';
  @override
  String get texthooker => 'Texthooker';
  @override
  String get texthooker_enabled => 'Texthooker (Text empfangen)';
  @override
  String get texthooker_enabled_hint =>
      'Mit Textractor/mpv/Agent verbinden und eingehenden Text nachschlagen';
  @override
  String get theme_black => 'Reinschwarz';
  @override
  String get theme_code_copied => 'Theme-Code in die Zwischenablage kopiert';
  @override
  String get theme_dark => 'Tief-Dunkel';
  @override
  String get theme_ecru => 'Ecru';
  @override
  String get theme_eyecare => 'Eye Care';
  @override
  String get theme_gray => 'Grau-Dunkel';
  @override
  String get theme_light => 'Weiß';
  @override
  String get theme_seed_preview_hint =>
      'Die Farbfelder unten zeigen eine Vorschau der tatsächlich aus deiner Startfarbe generierten Farben. Um eine bestimmte Farbe als Primär-Akzentfarbe festzulegen, aktiviere den Schalter „Primär“ und wähle sie ausdrücklich.';
  @override
  String get theme_water => 'Wasserblau';
  @override
  String toc_section({required Object n}) => 'Inhaltsverzeichnis (${n})';
  @override
  String get top_progress_pos_center => 'Mitte';
  @override
  String get top_progress_pos_left => 'Oben links';
  @override
  String get top_progress_pos_right => 'Oben rechts';
  @override
  String get top_progress_position => 'Fortschrittsposition';
  @override
  String get torrent_upload_intro_body =>
      'Hochladen (Seeding) ist standardmäßig deaktiviert. Aktiviere es, um heruntergeladene Inhalte zurück an den Schwarm zu teilen — dies nutzt deine Upload-Bandbreite. Du kannst dies jederzeit in den Einstellungen ändern.';
  @override
  String get torrent_upload_intro_confirm => 'Speichern';
  @override
  String get torrent_upload_intro_enable => 'Upload / Seeding aktivieren';
  @override
  String get torrent_upload_intro_keep_off => 'Deaktiviert lassen';
  @override
  String get torrent_upload_intro_title => 'Upload / Seeding';
  @override
  String get reader_blur_images => 'Bilder unscharf (Spoiler-Schutz)';
  @override
  String get reader_font_size => 'Schriftgröße';
  @override
  String get reader_font_vpal => 'VPAL (Vertikale Alt.)';
  @override
  String get reader_furigana_hide => 'Ausblenden';
  @override
  String get reader_furigana_mode => 'Furigana';
  @override
  String get reader_furigana_mode_hint => '';
  @override
  String get reader_furigana_partial => 'Teilweise';
  @override
  String get reader_furigana_show => 'Anzeigen';
  @override
  String get reader_furigana_toggle => 'Umschalten';
  @override
  String get reader_horizontal => 'Horizontal';
  @override
  String get reader_line_height => 'Zeilenhöhe';
  @override
  String get reader_merge_image_pages => 'Illustrationsseiten in Text einfügen';
  @override
  String get reader_merge_image_pages_subtitle =>
      'Einzelne Bildkapitel werden inline im angrenzenden Textkapitel dargestellt, statt auf einer eigenen Seite';
  @override
  String get reader_no_books_added => 'Keine Bücher in der Bibliothek';
  @override
  String get reader_not_bound_cannot_rematch =>
      'Hörbuch nicht mit einem Buch verknüpft, Neuabgleich nicht möglich';
  @override
  String get reader_orient_mixed => 'Gemischt';
  @override
  String get reader_orient_upright => 'Aufrecht';
  @override
  String get reader_page_columns_auto => 'Automatisch';
  @override
  String get reader_paginated => 'Seitenweise';
  @override
  String get reader_paragraph_spacing => 'Absatzabstand';
  @override
  String get reader_reader_styles => 'Buchstile bevorzugen';
  @override
  String get reader_scroll => 'Scrollen';
  @override
  String get reader_text_indentation => 'Absatzeinzug';
  @override
  String get reader_text_justify => 'Blocksatz';
  @override
  String get reader_theme => 'Design';
  @override
  String get reader_vert_kerning => 'Zeichenabstand (vertikal)';
  @override
  String get reader_vert_text_orient => 'Textausrichtung';
  @override
  String get reader_vertical => 'Vertikal';
  @override
  String get reader_view_mode_label => 'Seiten / Scrollen';
  @override
  String get reader_vn => 'Visual Novel';
  @override
  String get reader_writing_direction => 'Schreibrichtung';
  @override
  String get undo => 'Rückgängig';
  @override
  String get unit_milliseconds => 'ms';
  @override
  String get unit_pixels => 'px';
  @override
  String untitled_book({required Object id}) => 'Buch ${id}';
  @override
  String get untitled_chapter => '(Ohne Titel)';
  @override
  String get update_already_latest => 'Du verwendest die neueste Version';
  @override
  String get update_auto_install => 'Updates automatisch installieren';
  @override
  String get update_available => 'Update verfügbar';
  @override
  String update_cached_newer({required Object version}) =>
      'Update ${version} verfügbar (wird überprüft…)';
  @override
  String update_cached_up_to_date({required Object version}) =>
      'Auf letzter bekannter Version ${version} (wird geprüft…)';
  @override
  String get update_cancel => 'Abbrechen';
  @override
  String get update_cancelled => 'Download abgebrochen';
  @override
  String get update_cancelling => 'Wird abgebrochen…';
  @override
  String get update_channel_beta => 'Beta';
  @override
  String get update_channel_debug => 'Debug';
  @override
  String get update_channel_stable => 'Stabil';
  @override
  String get update_check_failed => 'Update-Prüfung fehlgeschlagen';
  @override
  String get update_checking_now => 'Suche nach Updates…';
  @override
  String get update_connecting => 'Verbinde…';
  @override
  String get update_debug_channel => 'Debug-Update-Kanal';
  @override
  String get update_debug_channel_warning =>
      'Debug-Kanal-Builds können instabil sein. Verwendung auf eigene Gefahr.';
  @override
  String get update_download => 'Herunterladen';
  @override
  String get update_download_failed => 'Download fehlgeschlagen';
  @override
  String get update_download_restarted_from_zero => 'von vorn begonnen';
  @override
  String update_download_resume_status({required Object status}) =>
      'Fortsetzen: ${status}';
  @override
  String get update_download_resumed => 'fortgesetzt';
  @override
  String update_download_size({
    required Object received,
    required Object total,
  }) => 'Heruntergeladen: ${received} / ${total}';
  @override
  String update_download_source({required Object source}) =>
      'Quelle: ${source}';
  @override
  String update_download_speed({required Object speed}) =>
      'Geschwindigkeit: ${speed}';
  @override
  String get update_downloading => 'Update wird heruntergeladen…';
  @override
  String get update_hide => 'Ausblenden';
  @override
  String update_install_current_executable({required Object path}) =>
      'Laufende Anwendung: ${path}';
  @override
  String update_install_deletefile_failure({
    required Object path,
    required Object code,
  }) =>
      'Das Installationsprogramm konnte ${path} nicht ersetzen (Code ${code})';
  @override
  String update_install_detected_location({
    required Object source,
    required Object path,
  }) => 'Erkannter Installationsort (${source}): ${path}';
  @override
  String update_install_failure_summary({required Object summary}) =>
      'Grund: ${summary}';
  @override
  String get update_install_incomplete_message =>
      'Das Installationsprogramm wurde gestartet, aber Fushi läuft noch in der vorherigen Version. Prüfe das Installationsprotokoll unten.';
  @override
  String get update_install_incomplete_title => 'Update nicht abgeschlossen';
  @override
  String update_install_installer_pid({required Object pid}) =>
      'Installer-PID: ${pid}';
  @override
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi konnte das Installationsprogramm für Version ${version} nicht starten. Prüfe den Protokollpfad unten.';
  @override
  String get update_install_launch_failed_title =>
      'Update-Installationsprogramm nicht gestartet';
  @override
  String update_install_launcher_pid({required Object pid}) =>
      'Update-Launcher-PID: ${pid}';
  @override
  String update_install_libmpv_holder({
    required Object pid,
    required Object path,
  }) => 'libmpv-Halter: PID ${pid} - ${path}';
  @override
  String get update_install_log_not_observed =>
      'Das Installationsprotokoll wurde bei der Prüfung nach dem Start nicht erstellt.';
  @override
  String get update_install_log_observed =>
      'Das Installationsprotokoll wurde bei der Prüfung nach dem Start erstellt.';
  @override
  String update_install_log_path({required Object path}) =>
      'Installationsprotokoll: ${path}';
  @override
  String get update_install_manual_close_retry =>
      'Schließe Fushi über die aufgeführte PID/den aufgeführten Pfad und versuche dann das Update erneut oder starte das Installationsprogramm noch einmal.';
  @override
  String get update_install_parent_exit_not_observed =>
      'Der Update-Launcher hat nicht festgestellt, dass Fushi vor dem Start des Installationsprogramms beendet wurde.';
  @override
  String get update_install_parent_exit_observed =>
      'Fushi wurde beendet, bevor das Installationsprogramm gestartet wurde.';
  @override
  String update_install_path_mismatch({required Object warning}) =>
      'Installationsverzeichnis stimmt nicht überein: ${warning}';
  @override
  String get update_install_permission_cancel => 'Abbrechen';
  @override
  String get update_install_permission_message =>
      'Bitte erlaube Fushi in den Systemeinstellungen, Apps zu installieren, und versuche es erneut.';
  @override
  String get update_install_permission_retry => 'Installation wiederholen';
  @override
  String get update_install_permission_title => 'Updates-Installation erlauben';
  @override
  String get update_install_restart_windows_hint =>
      'Wenn die aufgeführten Prozesse geschlossen sind, libmpv-2.dll aber weiterhin gesperrt ist, starte Windows neu und installiere erneut.';
  @override
  String update_install_running_process({
    required Object pid,
    required Object path,
  }) => 'Laufender Fushi-Prozess: PID ${pid} - ${path}';
  @override
  String update_install_success_message({required Object version}) =>
      'Fushi wurde auf Version ${version} aktualisiert.';
  @override
  String get update_install_success_title => 'Update installiert';
  @override
  String update_install_target_dir({required Object path}) =>
      'Installationsziel: ${path}';
  @override
  String get update_installing => 'Wird installiert…';
  @override
  String get update_mac_install_incomplete_message =>
      'Das Update konnte nicht angewendet werden, daher ist Fushi noch auf der vorherigen Version. Du kannst das Update erneut versuchen oder die neueste Version manuell herunterladen.';
  @override
  String update_message({required Object version}) =>
      'Version ${version} ist verfügbar.';
  @override
  String update_network_failure({
    required Object host,
    required Object reason,
  }) => '${host} konnte nicht erreicht werden: ${reason}';
  @override
  String get update_never_remind => 'Nicht mehr erinnern';
  @override
  String get update_skip => 'Überspringen';
  @override
  String get url => 'URL';
  @override
  String get video_audio_track => 'Tonspur';
  @override
  String get video_audio_track_empty => 'Keine umschaltbaren Audiospuren';
  @override
  String video_audio_track_switched({required Object label}) =>
      'Tonspur: ${label}';
  @override
  String get video_auto_play_next_cancel => 'Abbrechen';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      'Nächste Folge in ${seconds} s';
  @override
  String get video_black_flash_notice_action => 'Vorschläge anzeigen';
  @override
  String get video_black_flash_notice_dont_show_again => 'Nicht mehr anzeigen';
  @override
  String get video_bottom_next_cue =>
      'Nächster Untertitel (falls keiner, etwas vor)';
  @override
  String get video_bottom_play_pause => 'Wiedergabe / Pause';
  @override
  String get video_bottom_prev_cue =>
      'Voriger Untertitel (falls keiner, etwas zurück)';
  @override
  String get video_bottom_seek_back => '10 s zurück';
  @override
  String get video_bottom_seek_back_label => '−10s';
  @override
  String get video_bottom_seek_forward => '10 s vor';
  @override
  String get video_bottom_seek_forward_label => '+10s';
  @override
  String video_chapter_n({required Object n}) => 'Kapitel ${n}';
  @override
  String get video_chapters => 'Kapitel';
  @override
  String get video_chapters_empty => 'Keine Kapitel';
  @override
  String get video_clip_export => 'Clip-Export';
  @override
  String get video_clip_export_cancelled => 'Clip-Export abgebrochen';
  @override
  String video_clip_export_failed({required Object reason}) =>
      'Clip-Export fehlgeschlagen: ${reason}';
  @override
  String get video_clip_export_ffmpeg_failed => 'ffmpeg fehlgeschlagen';
  @override
  String get video_clip_export_ffmpeg_unavailable =>
      'ffmpeg ist nicht verfügbar';
  @override
  String get video_clip_export_input_missing =>
      'Quellvideo ist nicht verfügbar';
  @override
  String get video_clip_export_invalid_range => 'Kein gültiger Clip-Bereich';
  @override
  String get video_clip_export_output_missing =>
      'Es wurde keine Ausgabedatei erstellt';
  @override
  String get video_clip_export_remote_download_required =>
      'Lade das Remote-Video auf dieses Gerät herunter, bevor du einen Clip exportierst';
  @override
  String get video_clip_export_source_changed =>
      'Videoquelle geändert; Clip-Export abgebrochen';
  @override
  String get video_clip_export_start => 'Clip-Export starten';
  @override
  String get video_clip_export_stop => 'Stoppen und Clip exportieren';
  @override
  String video_clip_exported({required Object path}) =>
      'Clip exportiert: ${path}';
  @override
  String video_clip_exported_with_subtitles({required Object path}) =>
      'Clip mit Untertiteln exportiert: ${path}';
  @override
  String get video_clip_exporting => 'Clip wird exportiert…';
  @override
  String get video_continue_watching => 'Continue Watching';
  @override
  String get video_control_audio_track => 'Tonspur';
  @override
  String get video_control_customize_hint =>
      'Wähle für jede Taste die Position auf dem Player oder entferne sie.';
  @override
  String get video_control_episode_list => 'Folgenliste';
  @override
  String get video_control_favorite_sentence => 'Aktuellen Satz favorisieren';
  @override
  String get video_control_fullscreen => 'Vollbild';
  @override
  String get video_control_next_cue => 'Nächster Untertitel';
  @override
  String get video_control_palette_hint =>
      'Ziehe eine Taste in einen Platz, um sie hinzuzufügen; eine Taste kann an mehreren Plätzen sitzen.';
  @override
  String get video_control_palette_title => 'Alle Tasten';
  @override
  String get video_control_play_pause => 'Wiedergabe/Pause';
  @override
  String get video_control_previous_cue => 'Voriger Untertitel';
  @override
  String get video_control_reject_required =>
      'Erforderliche Bedienelemente müssen auf dem Player bleiben.';
  @override
  String get video_control_reject_unavailable =>
      'Dieses Bedienelement kann dort nicht platziert werden.';
  @override
  String get video_control_reject_volume_bottom =>
      'Die Lautstärke kann nur auf der unteren Leiste sitzen.';
  @override
  String get video_control_remove_from_slot => 'Entfernen';
  @override
  String get video_control_reset_layout => 'Player-Tastenlayout zurücksetzen';
  @override
  String get video_control_screenshot => 'Screenshot';
  @override
  String get video_control_seek_backward => '10 s zurück';
  @override
  String get video_control_seek_forward => '10 s vor';
  @override
  String get video_control_settings => 'Player-Einstellungen';
  @override
  String get video_control_slot_bottom_center => 'Untere Leiste (Mitte)';
  @override
  String get video_control_slot_bottom_left => 'Untere Leiste (links)';
  @override
  String get video_control_slot_bottom_right => 'Untere Leiste (rechts)';
  @override
  String get video_control_slot_drop_hint => 'Taste hierher ziehen';
  @override
  String get video_control_slot_hidden => 'Vom Player entfernt';
  @override
  String get video_control_slot_screen_left => 'Bildschirm links';
  @override
  String get video_control_slot_screen_right => 'Bildschirm rechts';
  @override
  String get video_control_slot_top_center => 'Obere Leiste (Mitte)';
  @override
  String get video_control_slot_top_left => 'Obere Leiste (links)';
  @override
  String get video_control_slot_top_right => 'Obere Leiste (rechts)';
  @override
  String get video_control_speed => 'Geschwindigkeit';
  @override
  String get video_control_subtitle_list => 'Untertitelliste';
  @override
  String get video_control_subtitle_track => 'Untertitelspur';
  @override
  String get video_control_title => 'Videotitel';
  @override
  String get video_control_volume => 'Lautstärke';
  @override
  String get video_danmaku_manual_bind_empty =>
      'Noch keine Danmaku für diese Folge.';
  @override
  String get video_danmaku_manual_bind_failed =>
      'Danmaku für diese Folge konnte nicht geladen werden. Versuche es später erneut.';
  @override
  String get video_danmaku_manual_bind_server_error =>
      'Der Danmaku-Server hat die Anfrage abgelehnt. Versuche es später erneut.';
  @override
  String get video_danmaku_manual_match_title => 'Danmaku zuordnen';
  @override
  String get video_danmaku_manual_network_error =>
      'Netzwerkfehler. Prüfe deine Verbindung und versuche es erneut.';
  @override
  String get video_danmaku_manual_no_result => 'Kein passender Anime gefunden.';
  @override
  String get video_danmaku_manual_search_action => 'Suchen';
  @override
  String get video_danmaku_manual_search_hint => 'Anime-Titel';
  @override
  String get video_danmaku_manual_search_prompt =>
      'Dandanplay nach Anime-Titel durchsuchen, dann eine Folge auswählen.';
  @override
  String get video_danmaku_manual_server_error =>
      'Suche fehlgeschlagen. Versuche es später erneut.';
  @override
  String video_delete_confirm({required Object title}) =>
      '『${title}』 löschen? Dies kann nicht rückgängig gemacht werden.';
  @override
  String get video_delete_title => 'Video löschen';
  @override
  String get video_double_tap_next_cue => 'Nächste Zeile';
  @override
  String get video_double_tap_prev_cue => 'Vorherige Zeile';
  @override
  String get video_drop_audio_unsupported =>
      'Untertiteldateien auf das aktuelle Video ziehen. Audiodateien können hier nicht angehängt werden.';
  @override
  String get video_drop_subtitle_only =>
      'Untertiteldateien auf das aktuelle Video ziehen.';
  @override
  String get video_episode_list => 'Folgen';
  @override
  String get video_episode_list_empty => 'Keine Folgen';
  @override
  String video_favorite_count({required Object count}) => '${count} Favoriten';
  @override
  String get video_file_error_content =>
      'Die Videodatei kann nicht geladen werden. Bitte stellen Sie sicher, dass die Datei existiert und sich in einem für die App zugänglichen Verzeichnis befindet.';
  @override
  String get video_file_not_found => 'Videodatei nicht gefunden';
  @override
  String get video_immersive_locked => 'Immersiver Modus an';
  @override
  String get video_immersive_mode_full => 'Alle Bedienelemente';
  @override
  String get video_immersive_mode_lookup_only => 'Nur Nachschlagen';
  @override
  String get video_immersive_mode_seek_lookup => 'Tastenkürzel + Nachschlagen';
  @override
  String get video_immersive_mode_unlock_only => 'Nur Entsperren';
  @override
  String get video_immersive_unlock => 'Entsperren';
  @override
  String get video_immersive_unlocked => 'Immersiver Modus aus';
  @override
  String get video_import_action => 'Video importieren';
  @override
  String get video_import_confirm => 'Importieren';
  @override
  String get video_import_pick_subtitle => 'Untertitel auswählen';
  @override
  String get video_import_pick_video => 'Videodatei auswählen';
  @override
  String get video_import_stream_advanced => 'Erweitert (Anti-Leech-Header)';
  @override
  String get video_import_stream_referer => 'Referer (optional)';
  @override
  String get video_import_stream_subtitle_url_field =>
      'Externe Untertitel-URL (optional)';
  @override
  String get video_import_stream_url_field => 'Video-Stream-URL';
  @override
  String get video_import_stream_url_hint =>
      'HLS/m3u8/mp4-Stream-URL abspielen (mit optionaler externer Untertitel-URL und Anti-Leech-Referer/User-Agent)';
  @override
  String get video_import_stream_user_agent => 'User-Agent (optional)';
  @override
  String get video_import_subtitle_optional =>
      'Optionaler externer Untertitel (du kannst während der Wiedergabe jederzeit zwischen eingebetteten/externen Untertiteln wechseln)';
  @override
  String get video_import_title => 'Video importieren';
  @override
  String get video_jimaku_anime_match => 'Anime-Abgleich';
  @override
  String get video_jimaku_api_key => 'Jimaku-API-Schlüssel';
  @override
  String get video_jimaku_api_key_hint =>
      'Kostenlosen API-Schlüssel unter jimaku.cc/account holen';
  @override
  String get video_jimaku_api_key_set => 'API-Schlüssel gesetzt';
  @override
  String video_jimaku_batch_done({
    required Object done,
    required Object total,
  }) => 'Untertitel abgerufen: ${done}/${total}';
  @override
  String get video_jimaku_batch_download => 'Alle herunterladen';
  @override
  String get video_jimaku_batch_title => 'Untertitel für Sammlung abrufen';
  @override
  String get video_jimaku_download_failed => 'Download fehlgeschlagen';
  @override
  String get video_jimaku_downloaded =>
      'Untertitel heruntergeladen und angewendet';
  @override
  String get video_jimaku_episode => 'Episode (optional)';
  @override
  String get video_jimaku_episode_hint => 'Leer lassen, um alle anzuzeigen';
  @override
  String get video_jimaku_fetch => 'Untertitel holen (Jimaku)';
  @override
  String get video_jimaku_filter => 'Ergebnisse filtern (z. B. WEBRip, BD)';
  @override
  String get video_jimaku_find_sources => 'Untertitel suchen';
  @override
  String get video_jimaku_language => 'Sprache';
  @override
  String get video_jimaku_language_all => 'Alle';
  @override
  String get video_jimaku_no_key =>
      'Gib zuerst deinen Jimaku-API-Schlüssel ein';
  @override
  String get video_jimaku_no_results => 'Keine Untertitel gefunden';
  @override
  String get video_jimaku_query => 'Serienname';
  @override
  String get video_jimaku_search => 'Suchen';
  @override
  String get video_jimaku_series => 'Serie';
  @override
  String get video_jimaku_show_all_episodes => 'Alle Episoden anzeigen';
  @override
  String get video_jimaku_source => 'Untertitelquelle';
  @override
  String get video_jimaku_source_hint =>
      'Wählen Sie einen Jimaku-Eintrag. Staffelpakete werden automatisch nach Episode zugeordnet.';
  @override
  String video_last_watched({required Object date}) =>
      'Zuletzt angesehen ${date}';
  @override
  String get video_library_empty => 'Noch keine Videos importiert';
  @override
  String get video_load_failed_back => 'Zurück';
  @override
  String get video_load_failed_generic =>
      'Dieses Video konnte nicht geladen werden.';
  @override
  String get video_load_failed_network =>
      'Netzwerkfehler – prüfen Sie Ihre Verbindung und versuchen Sie es erneut.';
  @override
  String get video_load_failed_not_found =>
      'Dieses Element wurde in Ihrer Bibliothek nicht gefunden.';
  @override
  String get video_load_failed_retry => 'Erneut versuchen';
  @override
  String get video_load_failed_timeout =>
      'Verbindungszeitüberschreitung – das Netzwerk ist langsam oder die Quelle drosselt. Bitte versuchen Sie es erneut.';
  @override
  String get video_load_failed_title => 'Video konnte nicht geladen werden';
  @override
  String get video_load_failed_unavailable =>
      'Der Videostream konnte nicht abgerufen werden – er ist möglicherweise nicht verfügbar, regions- oder altersbeschränkt, oder die Quelle hat sich geändert.';
  @override
  String get video_loading_buffering => 'Wird gepuffert…';
  @override
  String get video_loading_connecting =>
      'Verbindung zum Stream wird hergestellt…';
  @override
  String get video_loading_preparing => 'Wird vorbereitet…';
  @override
  String get video_loading_subtitle => 'Untertitel werden heruntergeladen…';
  @override
  String get video_menu_fullscreen => 'Vollbild umschalten';
  @override
  String get video_menu_lock => 'Immersiver / Sperrmodus';
  @override
  String get video_menu_play_pause => 'Wiedergabe / Pause';
  @override
  String get video_menu_subtitle_track => 'Untertitelspur';
  @override
  String get video_mining_image_mode => 'Videokartenbild';
  @override
  String get video_mining_image_mode_current_frame => 'Screenshot beim Mining';
  @override
  String get video_mining_image_mode_gif => 'Animiertes GIF (Untertitelclip)';
  @override
  String get video_mining_image_mode_hint =>
      'Ob das Videokarten-Cover eine Animation des Untertitelclips oder ein einzelnes Standbild ist – und welches Bild';
  @override
  String get video_mining_image_mode_subtitle_start =>
      'Screenshot bei Untertitelbeginn';
  @override
  String get video_next_episode => 'Nächste Folge';
  @override
  String video_playlist_episodes({required Object count}) => '${count} Folgen';
  @override
  String get video_prev_episode => 'Vorige Folge';
  @override
  String get video_quality => 'Qualität';
  @override
  String get video_quality_auto => 'Automatisch';
  @override
  String get video_quality_empty =>
      'Keine umschaltbare Qualität für dieses Video';
  @override
  String get video_quality_enhancement_hint =>
      'Schalte dies ein, um das Bild mit mpvs integrierter hochwertiger Skalierung zu schärfen. Funktioniert sowohl bei Anime als auch bei Realfilm-Serien und Filmen. Für mehr mit Shadern wie Anime4K öffne während der Wiedergabe die Bildverbesserung und wähle dort eine Stufe.';
  @override
  String get video_quality_load_failed =>
      'Qualitätsstufen für dieses Video konnten nicht geladen werden.';
  @override
  String get video_quality_loading =>
      'Verfügbare Qualitätsstufen werden geladen…';
  @override
  String video_quality_switched({required Object label}) =>
      'Qualität: ${label}';
  @override
  String get video_rename => 'Umbenennen';
  @override
  String get video_rename_hint => 'Titel';
  @override
  String get video_render_skia_fix_confirm_action => 'Neustart';
  @override
  String get video_render_skia_fix_confirm_body =>
      'Dies deaktiviert den Impeller-Renderer und startet die App neu, um die Änderung anzuwenden.';
  @override
  String get video_render_skia_fix_confirm_title =>
      'Zu Skia wechseln und neu starten?';
  @override
  String get video_render_skia_fix_hint =>
      'Verwenden Sie dies, wenn der Ton abgespielt wird, aber das Video schwarz bleibt. Deaktiviert Impeller; Neustart zur Anwendung.';
  @override
  String get video_render_skia_fix_title =>
      'Schwarzer Bildschirm? Renderer wechseln (Skia)';
  @override
  String video_resource_missing_message({required Object title}) =>
      'Die Datei für 『${title}』 konnte nicht gefunden werden. Der Speicherort hat sich möglicherweise geändert oder das Laufwerk ist nicht verbunden. Sie können sie erneut importieren oder diesen Eintrag entfernen.';
  @override
  String get video_resource_missing_reimport => 'Erneut importieren';
  @override
  String get video_resource_missing_title => 'Video nicht verfügbar';
  @override
  String get video_resource_relink_success => 'Video neu verknüpft';
  @override
  String get video_scrape_episodes => 'Episoden';
  @override
  String get video_scrape_info => 'Serieninformationen';
  @override
  String video_scrape_rating_votes({required Object count}) =>
      '${count} Bewertungen';
  @override
  String get video_screenshot => 'Screenshot';
  @override
  String video_screenshot_failed_reason({required Object reason}) =>
      'Screenshot fehlgeschlagen: ${reason}';
  @override
  String video_screenshot_ready({required Object file}) =>
      'Screenshot bereit: ${file}';
  @override
  String video_screenshot_saved_to({required Object path}) =>
      'Screenshot gespeichert: ${path}';
  @override
  String get video_secondary_subtitle_hint =>
      'Vom Player gerendert (nicht nachschlagbar)';
  @override
  String get video_secondary_subtitle_sources => 'Sekundärer Untertitel';
  @override
  String get video_setting_auto_play_next =>
      'Nächste Folge automatisch abspielen';
  @override
  String get video_setting_auto_scrape => 'Serieninfo automatisch abrufen';
  @override
  String get video_setting_av_delay => 'Untertitel-Synchronisierung';
  @override
  String get video_setting_av_delay_hint =>
      'Positiv = Untertitel später (Cues nach hinten verschoben); negativ = Untertitel früher. Nutze den Schieberegler, die +/- Tasten oder gib einen Wert ein.';
  @override
  String get video_setting_danmaku_area => 'Anzeigebereich';
  @override
  String get video_setting_danmaku_area_hint =>
      'Anteil der Bildschirmhöhe, den Danmaku von oben einnehmen darf.';
  @override
  String get video_setting_danmaku_block_rules => 'Wörter / Regex blockieren';
  @override
  String get video_setting_danmaku_block_rules_hint =>
      'Eine Regel pro Zeile. Umschließen Sie eine Zeile mit Schrägstrichen wie /Muster/ für einen regulären Ausdruck; andernfalls wird als Groß-/Kleinschreibung-unabhängiger Text verglichen.';
  @override
  String get video_setting_danmaku_block_rules_placeholder =>
      'z. B. Spoiler oder /Muster/';
  @override
  String get video_setting_danmaku_enabled => 'Danmaku anzeigen';
  @override
  String get video_setting_danmaku_enabled_hint =>
      'Lokale oder zugeordnete Danmaku über dem Video einblenden, ohne die Bedienelemente zu blockieren.';
  @override
  String get video_setting_danmaku_font_scale => 'Schriftgröße';
  @override
  String get video_setting_danmaku_font_scale_hint =>
      'Danmaku-Textgröße skalieren.';
  @override
  String get video_setting_danmaku_manual_match => 'Manueller Abgleich';
  @override
  String get video_setting_danmaku_manual_match_hint =>
      'Bei Dandanplay nach Titel suchen und die Episode auswählen, wenn der automatische Abgleich fehlschlägt oder falsch ist.';
  @override
  String get video_setting_danmaku_max_active => 'Limit für aktive Danmaku';
  @override
  String get video_setting_danmaku_max_active_hint =>
      'Begrenzt die pro Frame gerenderten Kommentare, um große Dateien flüssig zu halten.';
  @override
  String get video_setting_danmaku_online => 'Online-Abgleich mit Dandanplay';
  @override
  String get video_setting_danmaku_online_hint =>
      'Wenn keine nutzbare lokale Sidecar-Datei vorhanden ist, das geöffnete Video mit Dandanplay abgleichen und zugehörige Kommentare abrufen.';
  @override
  String get video_setting_danmaku_opacity => 'Deckkraft';
  @override
  String get video_setting_danmaku_opacity_hint =>
      'Allgemeine Danmaku-Transparenz.';
  @override
  String get video_setting_danmaku_server_url => 'Danmaku-Server-URL';
  @override
  String get video_setting_danmaku_speed => 'Geschwindigkeit';
  @override
  String get video_setting_danmaku_speed_hint =>
      'Höher ist schneller; Lauf-Danmaku überqueren den Bildschirm schneller.';
  @override
  String get video_setting_double_tap => 'Doppeltipp-Spulen';
  @override
  String get video_setting_double_tap_hint =>
      'Doppeltippen links oder rechts auf das Video zum Spulen';
  @override
  String get video_setting_double_tap_off => 'Aus';
  @override
  String get video_setting_double_tap_subtitle => 'Untertitel';
  @override
  String get video_setting_immersive_mode => 'Immersiver Modus';
  @override
  String get video_setting_immersive_mode_hint =>
      'Steuert, was nach Drücken der seitlichen Sperrtaste verfügbar bleibt';
  @override
  String get video_setting_lock_window_aspect =>
      'Fenster auf Videoverhältnis sperren';
  @override
  String get video_setting_long_press_speed =>
      'Geschwindigkeit bei langem Drücken';
  @override
  String get video_setting_long_press_speed_hint =>
      'Während des Haltens auf dem Video vorübergehend diese Geschwindigkeit verwenden.';
  @override
  String get video_setting_mpv_aspect => 'Seitenverhältnis';
  @override
  String get video_setting_mpv_aspect_auto => 'Original';
  @override
  String get video_setting_mpv_brightness => 'Helligkeit';
  @override
  String get video_setting_mpv_channels => 'Kanäle';
  @override
  String get video_setting_mpv_channels_auto => 'Automatisch';
  @override
  String get video_setting_mpv_channels_mono => 'Mono';
  @override
  String get video_setting_mpv_channels_stereo => 'Stereo (Downmix)';
  @override
  String get video_setting_mpv_contrast => 'Kontrast';
  @override
  String get video_setting_mpv_correct_downscale =>
      'Lineare Herunterskalierung';
  @override
  String get video_setting_mpv_deband => 'Entbänderung';
  @override
  String get video_setting_mpv_deinterlace => 'Deinterlacing';
  @override
  String get video_setting_mpv_dither => 'Dithering';
  @override
  String get video_setting_mpv_gamma => 'Gamma';
  @override
  String get video_setting_mpv_group_advanced => 'Erweitert';
  @override
  String get video_setting_mpv_group_audio => 'Audio';
  @override
  String get video_setting_mpv_group_color => 'Farbe';
  @override
  String get video_setting_mpv_group_decode => 'Dekodierung';
  @override
  String get video_setting_mpv_group_geometry => 'Geometrie';
  @override
  String get video_setting_mpv_group_playback => 'Wiedergabe';
  @override
  String get video_setting_mpv_group_quality => 'Bildqualität';
  @override
  String get video_setting_mpv_hue => 'Farbton';
  @override
  String get video_setting_mpv_hwdec => 'Hardware-Dekodierung';
  @override
  String get video_setting_mpv_hwdec_auto => 'Automatisch (sicher)';
  @override
  String get video_setting_mpv_hwdec_copy => 'Automatisch (Kopie)';
  @override
  String get video_setting_mpv_hwdec_off => 'Aus';
  @override
  String get video_setting_mpv_interpolation => 'Bewegungsinterpolation';
  @override
  String get video_setting_mpv_loop => 'Datei wiederholen';
  @override
  String get video_setting_mpv_normalize => 'Downmix-Lautstärke normalisieren';
  @override
  String get video_setting_mpv_panscan => 'Pan & Scan (Ränder beschneiden)';
  @override
  String get video_setting_mpv_pitch =>
      'Tonhöhe beim Beschleunigen beibehalten';
  @override
  String get video_setting_mpv_raw =>
      'Zusätzliche mpv-Optionen (eine pro Zeile, key=value)';
  @override
  String get video_setting_mpv_raw_hint =>
      'Nur Desktop; Optionen, die zur Laufzeit nicht angewendet werden können (z. B. vo, profile), werden ignoriert. SVP/RIFE benötigen externe Tools und werden nicht unterstützt.';
  @override
  String get video_setting_mpv_reset => 'Alle zurücksetzen';
  @override
  String get video_setting_mpv_rotate => 'Drehung';
  @override
  String get video_setting_mpv_saturation => 'Sättigung';
  @override
  String get video_setting_mpv_sigmoid => 'Sigmoid-Hochskalierung';
  @override
  String get video_setting_mpv_sigmoid_hint =>
      'Sigmoid-Kurven-Hochskalierung reduziert Klingeln, kostet aber GPU-Leistung. Standardmäßig aus für bessere Leistung; aktivieren Sie es für schärfere Hochskalierung.';
  @override
  String get video_setting_mpv_zoom => 'Zoom';
  @override
  String get video_setting_picture_fit => 'Bildskalierung';
  @override
  String get video_setting_picture_fit_contain =>
      'Einpassen, Verhältnis halten, schwarze Balken hinzufügen';
  @override
  String get video_setting_picture_fit_cover =>
      'Füllen, Verhältnis halten, Ränder beschneiden';
  @override
  String get video_setting_picture_fit_fill => 'Auf Vollbild strecken';
  @override
  String get video_setting_picture_fit_hint =>
      'Wie das Bild den Player-Bereich ausfüllt';
  @override
  String get video_setting_qb_category => 'qBittorrent-Kategorie';
  @override
  String get video_setting_qb_category_hint =>
      'Von Fushi übertragene Downloads erhalten diese Kategorie; die Abschlussverfolgung überwacht nur diese.';
  @override
  String get video_setting_qb_password => 'WebUI-Passwort';
  @override
  String get video_setting_qb_url => 'qBittorrent WebUI-URL';
  @override
  String get video_setting_qb_url_hint =>
      'z. B. http://127.0.0.1:8080. Leer lassen, um Anime-Downloads zu deaktivieren.';
  @override
  String get video_setting_qb_username => 'WebUI-Benutzername';
  @override
  String get video_setting_secondary_subtitle_obscure =>
      'Sekundären Untertitel verbergen';
  @override
  String get video_setting_secondary_subtitle_obscure_hint =>
      'Den sekundären (Übersetzungs-)Untertitel weichzeichnen oder ausblenden';
  @override
  String get video_setting_seek_seconds => 'Spulschritt (Sekunden)';
  @override
  String get video_setting_speed => 'Wiedergabegeschwindigkeit';
  @override
  String get video_setting_speed_step => 'Geschwindigkeitsstufe';
  @override
  String get video_setting_subtitle_appearance => 'Untertitel-Darstellung';
  @override
  String get video_setting_subtitle_bg_color => 'Hintergrundfarbe';
  @override
  String get video_setting_subtitle_bg_opacity => 'Hintergrund-Deckkraft';
  @override
  String get video_setting_subtitle_font_size => 'Schriftgröße';
  @override
  String get video_setting_subtitle_font_weight => 'Schriftstärke';
  @override
  String get video_setting_subtitle_no_background => 'Kein Hintergrund';
  @override
  String get video_setting_subtitle_no_background_hint =>
      'Macht den Untertitelhintergrund transparent.';
  @override
  String get video_setting_subtitle_obscure => 'Untertitel verbergen';
  @override
  String get video_setting_subtitle_obscure_blur => 'Weichzeichnen';
  @override
  String get video_setting_subtitle_obscure_hide => 'Ausblenden';
  @override
  String get video_setting_subtitle_obscure_hint =>
      'Wählen Sie, wie Untertitel für Hörübungen verborgen werden: aus, weichgezeichnet (Hover oder Tippen zum Aufdecken) oder ausgeblendet.';
  @override
  String get video_setting_subtitle_obscure_none => 'Aus';
  @override
  String get video_setting_subtitle_position => 'Vertikale Position';
  @override
  String get video_setting_subtitle_reset => 'Auf Standard zurücksetzen';
  @override
  String get video_setting_subtitle_respect_ass =>
      'Eigenen Stil des Untertitels beibehalten';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      'Schriftart, Farbe und Umriss aus .ass-Untertiteln verwenden, wenn verfügbar; deaktivieren, um Ihre Darstellungseinstellungen zu erzwingen.';
  @override
  String get video_setting_subtitle_shadow => 'Schatten';
  @override
  String get video_setting_subtitle_sync_input => 'Versatz (ms)';
  @override
  String get video_setting_subtitle_text_color => 'Textfarbe';
  @override
  String get video_setting_theme => 'Design';
  @override
  String get video_setting_torrent_active_downloads => 'Max. aktive Downloads';
  @override
  String get video_setting_torrent_active_seeds => 'Max. aktive Seeds';
  @override
  String get video_setting_torrent_anonymous => 'Anonymer Modus';
  @override
  String get video_setting_torrent_antileech => 'Anti-Leech aktivieren';
  @override
  String get video_setting_torrent_backend_qb => 'Externes qBittorrent';
  @override
  String get video_setting_torrent_ban_progress_cheat =>
      'Fortschrittsbetrug sperren';
  @override
  String get video_setting_torrent_ban_relative_cheat =>
      'Relativen Fortschrittsbetrug sperren';
  @override
  String get video_setting_torrent_ban_time => 'Sperrdauer (Min.)';
  @override
  String get video_setting_torrent_ban_time_hint => '0 = dauerhaft';
  @override
  String get video_setting_torrent_connections_hint => '0 = Standardwert';
  @override
  String get video_setting_torrent_dht => 'DHT';
  @override
  String get video_setting_torrent_download_limit => 'Download-Limit (KB/s)';
  @override
  String get video_setting_torrent_encryption_disabled => 'Deaktiviert';
  @override
  String get video_setting_torrent_encryption_forced => 'Erzwingen';
  @override
  String get video_setting_torrent_encryption_prefer => 'Bevorzugen';
  @override
  String get video_setting_torrent_limit_hint => '0 = unbegrenzt';
  @override
  String get video_setting_torrent_listen_port => 'Lausch-Port';
  @override
  String get video_setting_torrent_listen_port_hint => '0 = Standard (6881)';
  @override
  String get video_setting_torrent_lsd => 'Lokale Peer-Erkennung (LSD)';
  @override
  String get video_setting_torrent_max_connections => 'Max. Verbindungen';
  @override
  String get video_setting_torrent_max_ip_ports => 'Max. Ports pro IP';
  @override
  String get video_setting_torrent_memory_hint =>
      'Arbeitsspeicher der Engine begrenzen. 0 = automatisch (basierend auf Geräte-RAM).';
  @override
  String get video_setting_torrent_memory_limit => 'Speicherlimit (MB)';
  @override
  String get video_setting_torrent_natpmp => 'NAT-PMP-Portweiterleitung';
  @override
  String get video_setting_torrent_section_antileech => 'Anti-Leech';
  @override
  String get video_setting_torrent_section_session => 'Sitzung';
  @override
  String get video_setting_torrent_seed_ratio_hint =>
      'Upload stoppen, wenn Upload/Download diesen Wert erreicht. 0 = unbegrenzt.';
  @override
  String get video_setting_torrent_seed_ratio_limit => 'Seed-Verhältnis-Limit';
  @override
  String get video_setting_torrent_seed_time_hint =>
      'Upload nach dieser Seeding-Dauer stoppen. 0 = unbegrenzt.';
  @override
  String get video_setting_torrent_seed_time_limit =>
      'Seeding-Zeitlimit (Minuten)';
  @override
  String get video_setting_torrent_upload_enabled =>
      'Upload / Seeding aktivieren';
  @override
  String get video_setting_torrent_upload_enabled_hint =>
      'Standardmäßig aus. Nach dem Download an den Schwarm zurück-seeden.';
  @override
  String get video_setting_torrent_upload_limit => 'Upload-Limit (KB/s)';
  @override
  String get video_setting_torrent_upload_slots => 'Max. Upload-Slots';
  @override
  String get video_setting_torrent_upnp => 'UPnP-Portweiterleitung';
  @override
  String get video_setting_torrent_zero_default => '0 = Standard';
  @override
  String get video_setting_torrent_zero_off => '0 = aus';
  @override
  String get video_settings_cat_audio => 'Audio';
  @override
  String get video_settings_cat_controls => 'Bedienelemente';
  @override
  String get video_settings_cat_danmaku => 'Danmaku';
  @override
  String get video_settings_cat_mpv => 'mpv';
  @override
  String get video_settings_cat_playback => 'Wiedergabe';
  @override
  String get video_settings_cat_shaders => 'Bildverbesserung';
  @override
  String get video_settings_cat_subtitle => 'Untertitel';
  @override
  String get video_settings_title => 'Videoeinstellungen';
  @override
  String get video_shader_anime4k_hint =>
      'Wähle eine Voreinstellung zum Herunterladen. Nach dem Download in der Liste aktivieren. Nur Desktop.';
  @override
  String get video_shader_anime4k_title => 'Empfohlene Anime4K-Shader';
  @override
  String get video_shader_download_anime4k =>
      'Anime4K-Voreinstellungen herunterladen';
  @override
  String video_shader_download_done({required Object count}) =>
      '${count} Shader heruntergeladen';
  @override
  String get video_shader_download_failed => 'Shader-Download fehlgeschlagen';
  @override
  String video_shader_download_partial({
    required Object ok,
    required Object failed,
  }) => '${ok} Shader heruntergeladen, ${failed} fehlgeschlagen';
  @override
  String get video_shader_download_url => 'Über Link herunterladen';
  @override
  String get video_shader_downloaded_label => 'Heruntergeladen';
  @override
  String get video_shader_downloading => 'Shader werden heruntergeladen…';
  @override
  String get video_shader_first_use_body =>
      '想让动画画面更清晰，可以进入“画质增强”并点击“下载 Anime4K 推荐着色器”。下载后在已安装列表里勾选即可启用。';
  @override
  String get video_shader_first_use_download => 'Herunterladen und aktivieren';
  @override
  String get video_shader_first_use_title => '试试 Anime4K 画质增强';
  @override
  String get video_shader_import => 'Shader importieren (.glsl)';
  @override
  String video_shader_import_done({required Object count}) =>
      '${count} Shader importiert';
  @override
  String get video_shader_import_from_mpv => 'Aus lokalem mpv importieren';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自动搜索本机 mpv；未找到时可手动选择 mpv 目录。';
  @override
  String get video_shader_mobile_perf_hint =>
      'Auf Handys werden Shader nur über den Standard-GPU-Renderpfad angewendet und die Wirkung variiert je nach Geräte-GPU; höhere Stufen können Frames verwerfen oder das Gerät erhitzen. Probiere zuerst Niedrig/Mittel und prüfe das Ergebnis auf deinem Gerät.';
  @override
  String video_shader_mpv_dir_current({required Object path}) =>
      'mpv-Ordner: ${path}';
  @override
  String get video_shader_mpv_dir_empty =>
      'Keine Shader in diesem Ordner gefunden';
  @override
  String get video_shader_mpv_not_found => 'Keine lokalen mpv-Shader gefunden';
  @override
  String get video_shader_mpv_pick_title => 'Shader aus mpv importieren';
  @override
  String get video_shader_pick_mpv_dir => 'Specify mpv folder';
  @override
  String get video_shader_preset_mode_a_fast =>
      'Für die meisten 1080p-Anime. Geringere GPU-Last.';
  @override
  String get video_shader_preset_mode_a_hq =>
      'Höchste Qualität für 1080p-Anime. Benötigt eine starke GPU.';
  @override
  String get video_shader_preset_mode_b_fast =>
      'Für ältere 720p-Anime mit Resampling-Artefakten.';
  @override
  String get video_shader_preset_mode_b_hq =>
      'Hohe Qualität für ältere 720p-Anime mit Resampling-Artefakten. Benötigt eine starke GPU.';
  @override
  String get video_shader_preset_mode_c_fast =>
      'Für alte SD-Anime (480p) mit Kompressionsschmieren.';
  @override
  String get video_shader_preset_mode_c_hq =>
      'Hohe Qualität für alte SD-Anime (480p) mit Kompressionsschmieren. Benötigt eine starke GPU.';
  @override
  String get video_shader_quality_tier => 'Qualitätsverbesserung';
  @override
  String get video_shader_section_advanced => 'Erweitert (manuelle Shader)';
  @override
  String get video_shader_section_installed => 'Installierte Shader';
  @override
  String get video_shader_showing_original => 'Shader aus (Original)';
  @override
  String get video_shader_showing_shaded => 'Shader an';
  @override
  String get video_shader_tier_custom_hint =>
      'Eigene Shader-Auswahl. Wähle oben eine Stufe, um zu einer Voreinstellung zu wechseln.';
  @override
  String get video_shader_tier_high => 'Hoch';
  @override
  String get video_shader_tier_high_hint =>
      'Anime4K HQ. Schärfer; am besten für Anime, auch bei Realfilm nutzbar (geringerer Effekt). Benötigt eine obere Mittelklasse-GPU (NVIDIA RTX 4060 / RTX 3070, AMD RX 6700 XT / RX 7700 XT).';
  @override
  String get video_shader_tier_low => 'Niedrig';
  @override
  String get video_shader_tier_low_hint =>
      'mpv-integrierte Schärfung (ewa_lanczossharp). Funktioniert bei jedem Video (Anime und Realfilm). Kein Download, geringste GPU-Last. Wähle dies bei integrierten oder älteren Grafikkarten (NVIDIA GTX 1050, AMD RX 560, Intel iGPU).';
  @override
  String get video_shader_tier_medium => 'Mittel';
  @override
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast. Am besten für Anime, funktioniert aber auch bei Realfilmen/-Serien (geringerer Effekt). Läuft auf Mittelklasse-GPUs (NVIDIA GTX 1660 / RTX 3050, AMD RX 6600).';
  @override
  String get video_shader_tier_off => 'Keine';
  @override
  String get video_shader_tier_off_hint =>
      'Keine Verbesserung. Spielt das Originalvideo unverändert ab.';
  @override
  String get video_shader_tier_ultra => 'Ultra';
  @override
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A (UL, Ultra-Large-Netzwerk). Stärkste Anime4K-Rekonstruktion; auch bei Realfilm nutzbar (geringerer Effekt). Benötigt eine Spitzen-GPU (NVIDIA RTX 4080 / RTX 5090, AMD RX 7900 XTX). Wähle eine niedrigere Stufe, wenn deine GPU schwächer ist.';
  @override
  String get video_shader_url_hint =>
      'Shader-.glsl-Link einfügen (z. B. GitHub)';
  @override
  String get video_shaders_empty => 'Noch keine Shader importiert';
  @override
  String get video_stat_by_video => 'Nach Video';
  @override
  String get video_stat_completed => 'Abgeschlossen';
  @override
  String get video_stat_no_data => 'Noch keine Videostatistik';
  @override
  String get video_statistics => 'Videostatistik';
  @override
  String get video_subtitle_attach_playlist_hint =>
      'Öffne die Playlist, um pro Folge einen Untertitel anzuhängen';
  @override
  String video_subtitle_attached_to_video({
    required Object title,
    required Object count,
  }) => 'Untertitel an ${title} angehängt (${count} Cues)';
  @override
  String get video_subtitle_auto_align => 'Untertitel automatisch ausrichten';
  @override
  String video_subtitle_auto_align_done({required Object ms}) =>
      'Untertitel automatisch um ${ms} ms ausgerichtet';
  @override
  String get video_subtitle_auto_align_low_confidence =>
      'Automatische Ausrichtung nicht sicher möglich (keine eindeutige Sprachübereinstimmung)';
  @override
  String get video_subtitle_auto_align_running =>
      'Untertitel werden automatisch ausgerichtet…';
  @override
  String get video_subtitle_color_note =>
      'Untertitelfarben werden im Videoplayer eingestellt.';
  @override
  String video_subtitle_delay_osd({required Object ms}) =>
      'Untertitel-Sync: ${ms} ms';
  @override
  String get video_subtitle_filter_all => 'Alle';
  @override
  String get video_subtitle_filter_favorites => 'Favoriten';
  @override
  String get video_subtitle_filter_favorites_empty =>
      'Noch keine favorisierten Zeilen';
  @override
  String get video_subtitle_graphic_hint =>
      'Grafikuntertitel · im Bild angezeigt · kein Nachschlagen';
  @override
  String video_subtitle_graphic_shown({required Object label}) =>
      'Grafikuntertitel im Bild angezeigt (kein Nachschlagen): ${label}';
  @override
  String get video_subtitle_import_failed => 'Untertitel-Import fehlgeschlagen';
  @override
  String get video_subtitle_import_file => 'Untertiteldatei importieren…';
  @override
  String get video_subtitle_import_unsupported =>
      'Nicht unterstütztes Untertitelformat';
  @override
  String get video_subtitle_list => 'Untertitelliste';
  @override
  String get video_subtitle_list_auto_scroll => 'Automatisch scrollen';
  @override
  String get video_subtitle_list_empty => 'Keine Untertitel geladen';
  @override
  String get video_subtitle_list_font_larger => 'Größerer Text';
  @override
  String get video_subtitle_list_font_smaller => 'Kleinerer Text';
  @override
  String get video_subtitle_list_jump => 'Zu dieser Zeile springen';
  @override
  String get video_subtitle_list_loading => 'Untertitel werden geladen…';
  @override
  String video_subtitle_load_failed({required Object label}) =>
      'Dieser Untertitel konnte nicht geladen werden (Grafik- oder nicht unterstützte Spur): ${label}';
  @override
  String get video_subtitle_off => 'Untertitel ausschalten';
  @override
  String get video_subtitle_remote_host => 'Untertitel vom gekoppelten Gerät';
  @override
  String video_subtitle_switched({required Object label}) =>
      'Untertitel: ${label}';
  @override
  String get video_subtitle_waveform_cue_list => 'Untertitelliste';
  @override
  String get video_subtitle_waveform_jump_playhead =>
      'Zum Abspielkopf springen';
  @override
  String get video_subtitle_waveform_legend_cue => 'Untertitel-Cue';
  @override
  String get video_subtitle_waveform_legend_energy => 'Lautstärke';
  @override
  String get video_subtitle_waveform_legend_playhead => 'Abspielkopf';
  @override
  String get video_subtitle_waveform_open => 'Wellenform-Ausrichtung';
  @override
  String get video_subtitle_waveform_open_hint =>
      'Tippen zum Vergrößern und Ausrichten';
  @override
  String get video_subtitle_waveform_scroll_hint =>
      'Ziehen, um die Zeitleiste zu durchsuchen; verwenden Sie die Steuerelemente unten zum Ausrichten';
  @override
  String get video_subtitle_waveform_unavailable =>
      'Wellenform auf diesem Gerät nicht verfügbar';
  @override
  String get video_subtitle_waveform_zoom_in => 'Vergrößern';
  @override
  String get video_subtitle_waveform_zoom_out => 'Verkleinern';
  @override
  String get video_subtitle_youtube_empty =>
      'Diese Untertitelspur enthält keinen Text';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang} (übersetzt)';
  @override
  String video_watched_up_to({required Object time}) => 'Angesehen bis ${time}';
  @override
  String get video_windows_black_flash_notice_body =>
      'Unter Windows kann das Video bei hoher GPU-Last schwarz aufblitzen. Um die Last zu reduzieren, versuchen Sie, Qualitätsverbesserung, Sigmoid-Hochskalierung und Debanding oben zu deaktivieren oder stellen Sie die Hardware-Dekodierung auf Kopieren um.';
  @override
  String get video_windows_black_flash_notice_title =>
      'Schwarzes Flackern unter Windows?';
  @override
  String get view_illustrations => 'Illustrationen';
  @override
  String get volume_button_page_turning =>
      'Seitenblättern mit Lautstärketasten';
  @override
  String get volume_key_sentence_nav => 'Satznavigation mit Lautstärketasten';
  @override
  String get wheel_page_turn_interval => 'Mausrad-Blätterintervall';
  @override
  String get word_favorite_added => 'Wort in Favoriten gespeichert';
  @override
  String get word_favorite_removed => 'Wort aus Favoriten entfernt';
  @override
  String get yomitan_api_key => 'Yomitan-API-Schlüssel (optional)';
  @override
  String get yomitan_api_server => 'Yomitan-API-Server';
  @override
  String get yomitan_api_server_hint =>
      'yomitan-api-Clients Fushis Wörterbücher abfragen lassen (Port 19633)';
  @override
  String get yomitan_api_server_started => 'Yomitan-API-Server gestartet';
  @override
  String get yomitan_port_kill_action => 'Prozess beenden und erneut versuchen';
  @override
  String get yomitan_port_kill_confirm => 'Prozess beenden';
  @override
  String yomitan_port_kill_confirm_message({required Object process}) =>
      'Der Port wird derzeit verwendet von: ${process}';
  @override
  String yomitan_port_kill_confirm_title({required Object port}) =>
      'Prozess beenden, der Port ${port} verwendet?';
  @override
  String yomitan_port_kill_failed({required Object process}) =>
      '${process} konnte nicht beendet werden. Bitte beenden Sie ihn manuell und versuchen Sie es erneut.';
  @override
  String yomitan_port_kill_protected({required Object process}) =>
      '${process} ist ein kritischer Systemprozess – Fushi wird ihn nicht beenden. Ändern Sie stattdessen den Port.';
  @override
  String get yomitan_port_kill_self_instance =>
      'Dieser Prozess ist eine weitere laufende Instanz dieser App.';
  @override
  String get game_track_bgm => 'BGM / ausgeschlossen';
  @override
  String get game_line_audio_no_voice => 'Keine Stimme';
  @override
  String get game_line_audio_overlong => 'Überlanger Clip';
  @override
  String get game_line_audio_overlong_hint =>
      'Viel länger als eine einzelne Zeile; kann BGM oder andere gemischte Audioinhalte enthalten';
  @override
  String get game_line_audio_loopback_hint =>
      'System-Mix-Fallback; kann BGM enthalten';
  @override
  String get game_line_recapture => 'Stimme erneut aufnehmen';
  @override
  String get game_line_recapture_stop => 'Aufnahme beenden';
  @override
  String get game_line_tracks => 'Spuren für diese Zeile';
  @override
  String get game_line_tracks_hint =>
      'Vorschau jeder Spur an der Stelle dieser Zeile, dann die BGM-Spuren ausschließen';
  @override
  String get game_line_track_use => 'Für diese Zeile verwenden';
  @override
  String get game_user_tags_title => 'Meine Tags';
  @override
  String get anki_lapis_section => 'Lapis-Kartenstil';
  @override
  String get anki_lapis_font_scale => 'Kartenschriftgröße';
  @override
  String get anki_lapis_font_scale_hint =>
      'Skaliert alle Lapis-Schriftgrößen; wird über „Stil auf Anki anwenden" wirksam.';
  @override
  String get anki_lapis_custom_css => 'Benutzerdefiniertes CSS';
  @override
  String get anki_lapis_custom_css_hint =>
      'Wird dem Lapis-Stylesheet in einem geschützten Benutzerbereich angehängt.';
  @override
  String get anki_lapis_apply => 'Stil auf Anki anwenden';
  @override
  String get anki_lapis_apply_done =>
      'Lapis-Stil angewendet. Zuvor wurde eine Sicherung erstellt.';
  @override
  String anki_lapis_apply_failed({required Object error}) =>
      'Stil konnte nicht angewendet werden: ${error}';
  @override
  String get anki_lapis_up_to_date => 'Lapis-Stil ist bereits aktuell.';
  @override
  String get anki_lapis_foreign_edit_title => 'Vorlage in Anki geändert';
  @override
  String get anki_lapis_foreign_edit_body =>
      'Die Lapis-Vorlage in Anki weicht von der zuletzt von Fushi angewendeten ab – sie wurde möglicherweise manuell bearbeitet. Beim Anwenden wird sie überschrieben; zuvor wird eine Sicherung erstellt. Fortfahren?';
  @override
  String get anki_lapis_backup => 'Lapis-Vorlage sichern';
  @override
  String anki_lapis_backup_done({required Object path}) =>
      'Vorlage gesichert: ${path}';
  @override
  String anki_lapis_backup_failed({required Object error}) =>
      'Sicherung fehlgeschlagen: ${error}';
  @override
  String get anki_lapis_not_found =>
      'Lapis-Notiztyp wurde in Anki nicht gefunden.';
  @override
  String get anki_lapis_restore => 'Aus Sicherung wiederherstellen';
  @override
  String get anki_lapis_restore_empty => 'Noch keine Sicherungen vorhanden.';
  @override
  String get anki_lapis_restore_confirm =>
      'Die Lapis-Vorlage in Anki mit dieser Sicherung überschreiben? Der aktuelle Stand wird zuvor gesichert.';
  @override
  String get anki_lapis_restore_done => 'Vorlage wiederhergestellt.';
  @override
  String anki_lapis_restore_failed({required Object error}) =>
      'Wiederherstellung fehlgeschlagen: ${error}';
  @override
  String get anki_dedup_section => 'Anki-Medienspeicher-Optimierung';
  @override
  String get anki_dedup_scan => 'Nach Duplikaten suchen (keine Änderungen)';
  @override
  String get anki_dedup_run => 'Jetzt deduplizieren';
  @override
  String get anki_dedup_report_title => 'Medien-Deduplizierungsbericht';
  @override
  String anki_dedup_report_body({
    required Object groups,
    required Object removed,
    required Object size,
    required Object notes,
    required Object models,
    required Object skipped,
  }) =>
      '${groups} Duplikatgruppen; ${removed} zusätzliche Kopien (${size}); ${notes} Notizen und ${models} Notiztypen umgeschrieben; ${skipped} übersprungen.';
  @override
  String get anki_dedup_report_dry_note =>
      'Nur Scan – es wurden keine Änderungen vorgenommen.';
  @override
  String get anki_dedup_report_clean =>
      'Keine byte-identischen Duplikate gefunden.';
  @override
  String anki_dedup_failed({required Object error}) =>
      'Deduplizierung fehlgeschlagen: ${error}';
  @override
  String get anki_dedup_unavailable =>
      'Erfordert Anki auf diesem Computer (AnkiConnect).';
  @override
  String get anki_dedup_run_hint =>
      'Scannt zuerst und listet genau auf, was gelöscht werden würde; nichts wird entfernt, bis Sie bestätigen.';
  @override
  String get anki_dedup_plan_title => 'Zu löschende Dateien';
  @override
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '${count} zusätzliche Kopien, ${size} rückgewinnbar. Eine Kopie jeder Datei wird behalten und jede Referenz wird zuvor darauf umgeleitet; nichts wird neu kodiert.';
  @override
  String anki_dedup_plan_entry({
    required Object file,
    required Object size,
    required Object canonical,
  }) => '${file} löschen (${size}) – ${canonical} wird behalten';
  @override
  String get anki_dedup_plan_delete => 'Diese Dateien löschen';
  @override
  String get anki_dedup_plan_journal =>
      'Ein Protokoll aller Umschreibungen und Löschungen wird zuvor im Sicherungsordner erstellt.';
  @override
  String get manga_ocr_default_engine => 'Standard-OCR-Engine';
  @override
  String get manga_ocr_engine_auto => 'Automatisch (lädt nie zu Lens hoch)';
  @override
  String get manga_ocr_engine_local_onnx => 'Lokales ONNX';
  @override
  String get manga_ocr_engine_google_lens => 'Google Lens';
  @override
  String get manga_google_lens_disclosure_title =>
      'Manga-Seiten an Google Lens senden?';
  @override
  String get manga_google_lens_disclosure_body =>
      'Beim Erkennen dieses Manga wird eine reduzierte JPEG-Kopie jeder Seite ohne OCR-Text an Google gesendet. Ergebnisse werden auf diesem Gerät zwischengespeichert. Der Endpunkt ist inoffiziell und kann jederzeit aufhören zu funktionieren. Ohne Ihre Zustimmung wird nichts hochgeladen.';
  @override
  String get manga_google_lens_disclosure_accept => 'Zustimmen und OCR starten';
  @override
  String get manga_google_lens_disclosure_decline => 'Abbrechen';
  @override
  String get manga_reading_direction => 'Leserichtung';
  @override
  String get manga_direction_rtl => 'Rechts nach links';
  @override
  String get manga_direction_ltr => 'Links nach rechts';
  @override
  String get manga_zoom => 'Zoom';
  @override
  String get manga_jump_to_page => 'Zu Seite springen';
  @override
  String get manga_previous_page => 'Vorherige Seite';
  @override
  String get manga_next_page => 'Nächste Seite';
  @override
  String manga_page_number_hint({required Object total}) =>
      'Seitenzahl (1-${total})';
  @override
  String get manga_import_direct => 'Ohne OCR importieren';
  @override
  String get manga_library => 'Manga';
  @override
  String get manga_import_action => 'Manga importieren';
  @override
  String get game_scrape_search => 'Suchen';
  @override
  String get game_scrape_use => 'Verwenden';
  @override
  String get game_scrape_search_failed =>
      'Suche fehlgeschlagen. Prüfen Sie Ihr Netzwerk und versuchen Sie es erneut.';
  @override
  String get game_remove_confirm =>
      'Dieses Spiel aus der Bibliothek entfernen? Spieldateien auf der Festplatte werden nicht gelöscht.';
  @override
  String manga_ocr_acceleration_status({required Object engine}) =>
      'OCR-Beschleunigung: ${engine}';
  @override
  String manga_ocr_acceleration_degraded({
    required Object engine,
    required Object reason,
  }) =>
      'GPU-Beschleunigung nicht verfügbar, OCR läuft auf ${engine}: ${reason}';
  @override
  String get media_tracking_status => 'Sammlungsstatus';
  @override
  String get media_tracking_signup => 'Bangumi-Konto erstellen';
  @override
  String get media_tracking_game => 'Spiel';
  @override
  String get download_rate_limit_lan_exempt =>
      'Gilt nicht innerhalb Ihres lokalen Netzwerks; LAN-Übertragungen laufen immer mit voller Geschwindigkeit.';
  @override
  String get scrape_reason_network =>
      'Es konnte keine gültige Antwort von der Cover-Quelle erhalten werden. Prüfen Sie Ihr Netzwerk und versuchen Sie es erneut.';
  @override
  String get scrape_reason_server =>
      'Die Cover-Quelle hat einen Fehler zurückgegeben. Versuchen Sie es später erneut oder wählen Sie einen anderen Kandidaten.';
  @override
  String get common_more_actions => 'Weitere Aktionen';
  @override
  String get collection_already_has_item =>
      'Dieses Element ist bereits in der Sammlung.';
  @override
  String get drag_drop_manga_archive_unsupported =>
      'Import von .cbr/.rar-Comic-Archiven nicht möglich – packen Sie sie als .cbz oder Bilderordner um.';
  @override
  String get collection_add_failed =>
      'Das Element konnte nicht zur Sammlung hinzugefügt werden. Bitte versuchen Sie es erneut.';
  @override
  String get anki_dedup_auto => 'Automatische Verarbeitung';
  @override
  String get anki_dedup_auto_hint =>
      'Standardmäßig aus. Wenn aktiviert, scannt Fushi beim Start (höchstens einmal pro Woche) und zeigt Ihnen zuerst die Liste – nichts wird gelöscht, bis Sie bestätigen.';
  @override
  String get anki_dedup_auto_delete => 'Automatisch ohne Nachfrage löschen';
  @override
  String get anki_dedup_auto_delete_hint =>
      'Überspringt den Bestätigungsdialog. Es werden nur byte-identische Kopien entfernt und nichts wird neu kodiert, aber das Löschen kann nicht rückgängig gemacht werden.';
  @override
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      '${count} doppelte Anki-Mediendateien gefunden (${size} rückgewinnbar)';
  @override
  String get anki_dedup_auto_review => 'Überprüfen';
  @override
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      '${count} doppelte Anki-Mediendateien entfernt, ${size} freigegeben';
  @override
  String anki_lapis_backup_done_pruned({
    required Object path,
    required Object count,
  }) =>
      'Gesichert unter ${path} (${count} alte Sicherungen nach der 90-Tage-/10-behalten-Regel bereinigt)';
  @override
  String get game_audio_fallback_policy => 'Audio-Fallback';
  @override
  String get game_audio_fallback_full => 'Gemischtes Audio erlauben';
  @override
  String get game_audio_fallback_clean => 'Nur saubere Quellen';
  @override
  String get game_audio_fallback_resource => 'Nur Originalressourcen';
  @override
  String get game_track_silent_at_cue => 'Kein Ton bei dieser Zeile';
  @override
  String get game_audio_fallback_full_hint =>
      'Fällt auf den System-Mix zurück, wenn keine saubere Stimme aufgenommen wird; der Clip kann BGM und Effekte enthalten.';
  @override
  String get game_audio_fallback_clean_hint =>
      'Verwendet nur Spielressourcen-Audio und Engine-PCM. Zeilen ohne Stimme werden ohne Audio erstellt, anstatt BGM aufzunehmen.';
  @override
  String get game_audio_fallback_resource_hint =>
      'Erfordert die originale Sprachdatei des Spiels; Mining wird verweigert, wenn sie fehlt.';
  @override
  String get game_line_audio_suppressed => 'Mix übersprungen';
  @override
  String get game_line_audio_suppressed_hint =>
      'Keine saubere Audioquelle hat Audio für diese Zeile produziert, und der System-Mix wurde durch Ihre Audio-Fallback-Richtlinie übersprungen. Das bedeutet nicht, dass die Zeile keine Stimme hat.';
  @override
  String get video_setting_torrent_limit_lan => 'Limits auf LAN-Peers anwenden';
  @override
  String get video_setting_torrent_limit_lan_hint =>
      'Standardmäßig aus: Übertragungen mit Peers in Ihrem lokalen Netzwerk ignorieren die obigen Limits.';
  @override
  String get download_rate_limit_lan_included =>
      'Gilt auch innerhalb Ihres lokalen Netzwerks.';
  @override
  String get video_collection_no_local_member =>
      'Kein lokales Video in dieser Sammlung';
  @override
  String get gal_mining_image_mode => 'Galgame-Kartenbild';
  @override
  String get gal_mining_image_mode_screenshot => 'Screenshot';
  @override
  String get gal_mining_image_mode_hint =>
      'Galgame-Szenen bewegen sich innerhalb einer Zeile kaum, daher ist ein Standbild meist kleiner und genauso nützlich.';
  @override
  String get shortcut_scope_manga => 'Manga';
  @override
  String get shortcut_action_manga_page_forward => 'Nächste Seite';
  @override
  String get shortcut_action_manga_page_backward => 'Vorherige Seite';
  @override
  String get shortcut_action_manga_dismiss_dict => 'Wörterbuch schließen';
  @override
  String get video_setting_jimaku_default_language =>
      'Standard-Untertitelsprache';
  @override
  String get video_jimaku_api_key_settings_hint =>
      'Auch in Einstellungen → Video → Untertitel bearbeitbar';
  @override
  String get anime_download_subs_episodes_unverified =>
      'Episodennummern sind für dieses Paket nicht verifiziert – Untertitel können aus einer anderen Staffel stammen.';
  @override
  String get anime_download_subs_deferred =>
      'Untertitel werden nach dem Download anhand der tatsächlichen Dateien des Pakets zugeordnet';
  @override
  String get anime_download_subs_pending =>
      'Untertitel: ausstehend bis Download abgeschlossen';
  @override
  String get anime_download_subs_unmatched =>
      'Untertitel: keine Übereinstimmung für dieses Paket';
  @override
  String get stat_source_breakdown => 'Nach Quelle';
  @override
  String stat_format_pages({required Object n}) => '${n} Seiten';
  @override
  String anime_download_subs_season_mismatch({required Object season}) =>
      'Kein Untertiteleintrag passt zu Staffel ${season} dieses Pakets – nicht automatisch ausgewählt. Wählen Sie manuell, wenn Sie es trotzdem möchten.';
  @override
  String get media_tracking_card_title => 'Bangumi-Synchronisierung';
  @override
  String get media_tracking_not_connected =>
      'Nicht verbunden. Der Fortschritt bleibt lokal und nichts wird an Bangumi gesendet.';
  @override
  String get media_tracking_last_sync => 'Letzte Synchronisierung';
  @override
  String get media_tracking_never_synced => 'Nie synchronisiert';
  @override
  String media_tracking_linked_count({required Object n}) => '${n} verknüpft';
  @override
  String media_tracking_pending_count({required Object n}) =>
      '${n} warten auf Senden';
  @override
  String get media_tracking_all_synced => 'Alles gesendet';
  @override
  String get media_tracking_unauthorized =>
      'Bangumi hat das Zugriffstoken abgelehnt. Verbinden Sie es in den Einstellungen erneut.';
  @override
  String get media_tracking_open_subject => 'Auf Bangumi öffnen';
  @override
  String get media_tracking_manage_links => 'Verknüpfungen verwalten';
  @override
  String get media_tracking_last_error => 'Letzter Fehler';
  @override
  String get shortcut_action_popup_mine_entry => 'Karte erstellen (Mining)';
  @override
  String get game_upscaling_auto_hint =>
      'Magpie verwenden, wenn es bereits läuft; andernfalls die in Fushi mitgelieferte Version verwenden. Kein Download erforderlich.';
  @override
  String get game_upscaling_installed_only_hint =>
      'Magpie nur verwenden, wenn es bereits installiert ist oder läuft. Die mitgelieferte Version von Fushi nicht entpacken.';
  @override
  String get game_upscaling_off_hint => 'Spielfenster nie hochskalieren.';
  @override
  String get game_helper_bundle_missing =>
      'Der Galgame-Hook-Helper ist in diesem Build nicht enthalten. Aktualisieren Sie Fushi, um ihn zu erhalten.';
  @override
  String game_upscaling_pick_title({required Object name}) =>
      'Fenster-Hochskalierung für ${name}';
  @override
  String get game_upscaling_pick_body =>
      'Skaliert dieses Spielfenster mit Magpie hoch, während eine Aufnahmesitzung läuft. Pro Spiel einstellbar – hilft nur bei Spielen, deren native Auflösung niedriger als Ihr Bildschirm ist. Verwendet Ihre GPU.';
  @override
  String get game_upscaling_hint_not_installed =>
      'Magpie ist nicht bereit. Setzen Sie die Fenster-Hochskalierung auf Automatisch, um die mit Fushi mitgelieferte Kopie zu verwenden; wenn es trotzdem nicht startet, aktualisieren oder installieren Sie Fushi neu.';
  @override
  String media_source_count_manga({required Object n}) => '${n} Bände';
  @override
  String get library_view_shelf => 'Regal';
  @override
  String get library_view_browse => 'Entdecken';
  @override
  String get library_view_media => 'Bibliothek';
  @override
  String get scrape_failure_detail_show => 'Details anzeigen';
  @override
  String get scrape_failure_detail_hide => 'Details ausblenden';
  @override
  String get media_tracking_retry_mapping => 'Zuordnung erneut versuchen';
  @override
  String get media_tracking_retry_matched =>
      'Zugeordnet und aktueller Fortschritt in Warteschlange';
  @override
  String get media_tracking_retry_no_match =>
      'Keine Übereinstimmung gefunden. Versuchen Sie manuelle Verknüpfung.';
  @override
  String get game_statistics => 'Spielstatistiken';
  @override
  String get game_stat_by_game => 'Nach Spiel';
  @override
  String get stat_clear_all_game_message =>
      'Alle Spielzeiten und Sitzungszähler löschen? Ihre Spielebibliothek und Aktivitätszeitleiste bleiben erhalten. Dies kann nicht rückgängig gemacht werden.';
  @override
  String batch_selection_stale_skipped({
    required Object m,
    required Object n,
  }) =>
      '${m} von ${n} ausgewählten Elementen übersprungen, die nicht mehr existieren';
  @override
  String get game_text_thread_unset =>
      'Kein Thread ausgewählt – wählen Sie einen, um die Erfassung zu starten';
  @override
  String get media_tracking_watched_show => 'Alle gesehenen Anime anzeigen';
  @override
  String get media_tracking_watched_title => 'Auf Bangumi angesehen';
  @override
  String get media_tracking_watched_empty =>
      'Auf diesem Bangumi-Konto ist kein Anime als angesehen markiert.';
  @override
  String media_tracking_watched_load_failed({required Object error}) =>
      'Angesehene Anime konnten nicht geladen werden: ${error}';
  @override
  String media_tracking_watched_progress({required Object n}) =>
      '${n} Episoden angesehen';
  @override
  String get media_tracking_manual_required =>
      'Manuelle Verknüpfung erforderlich';
  @override
  String media_tracking_manual_required_count({required Object n}) =>
      '${n} Elemente benötigen manuelle Verknüpfungen';
  @override
  String get media_tracking_manual_required_hint =>
      'Diese lokalen Elemente haben bereits Fortschritt, sind aber nicht mit Bangumi verknüpft.';
  @override
  String get media_tracking_no_local_history =>
      'Kein lokaler Ansehen-, Lese- oder Spielfortschritt muss verknüpft werden.';
  @override
  String media_tracking_more_manual_required({required Object n}) =>
      '${n} weitere Elemente benötigen manuelle Verknüpfungen';
  @override
  String get manga_import_hint =>
      'Wählen Sie einen Manga-Ordner, ein .cbz/.zip-Seitenarchiv, eine .pdf oder eine .mokuro-Datei.';
  @override
  String get manga_import_pick_file => 'Manga-Datei auswählen';
  @override
  String get manga_import_pick_folder => 'Manga-Ordner auswählen';
  @override
  String get manga_import_missing_input =>
      'Wählen Sie zuerst eine Manga-Datei oder einen Ordner.';
  @override
  String get manga_import_detected_title => 'Dies sieht nach Manga aus';
  @override
  String get manga_import_detected_confirm => 'Als Manga importieren';
  @override
  String manga_import_detected_message({required Object name}) =>
      '„${name}" ist eine Manga-Datei und wird daher über den Manga-Importer statt den Buch-Importer importiert.';
  @override
  String get video_jimaku_source_loading =>
      'Untertitelverfügbarkeit wird geprüft...';
  @override
  String get video_jimaku_source_failed =>
      'Untertitelverfügbarkeit konnte nicht geprüft werden. Versuchen Sie erneut zu suchen.';
  @override
  String get video_jimaku_language_unknown => 'Sprache nicht gekennzeichnet';
  @override
  String video_jimaku_source_summary({
    required Object files,
    required Object episodes,
    required Object languages,
  }) => '${files} Untertiteldateien · ${episodes} Episoden · ${languages}';
  @override
  String video_jimaku_episode_unlabeled({
    required Object episode,
    required Object count,
  }) =>
      'Kein Untertitel für Episode ${episode} gekennzeichnet; ${count} nicht gekennzeichnete Dateien könnten trotzdem passen';
  @override
  String video_jimaku_episode_unavailable({required Object episode}) =>
      'Kein Untertitel für Episode ${episode} gefunden';
  @override
  String video_jimaku_episode_available({
    required Object count,
    required Object languages,
  }) => '${count} Untertitel verfügbar · ${languages}';
  @override
  String get manga_online_source_disabled =>
      'Diese Internetquelle ist deaktiviert. Aktivieren Sie sie unter Quellen, um den Katalog zu durchsuchen.';
  @override
  String get selection_web_search => 'Im Web suchen';
  @override
  String get selection_web_search_unavailable =>
      'Keine App kann die Websuche durchführen.';
  @override
  String get selection_share_failed =>
      'Das Teilen-Menü konnte nicht geöffnet werden.';
  @override
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang} (automatisch generiert)';
  @override
  String get anki_dedup_progress_title => 'Medien werden dedupliziert';
  @override
  String anki_dedup_progress_scanning({required Object count}) =>
      'Medienordner wird gescannt… (${count} Dateien gefunden)';
  @override
  String anki_dedup_progress_hashing({
    required Object done,
    required Object total,
  }) => 'Dateien gleicher Größe werden verglichen… (${done} / ${total})';
  @override
  String anki_dedup_progress_resolving({
    required Object done,
    required Object total,
  }) => 'Duplikate werden verarbeitet… (${done} / ${total})';
  @override
  String anki_dedup_progress_freed({required Object size}) =>
      'Bisher ${size} freigegeben';
  @override
  String get anki_dedup_cancelling => 'Wird abgebrochen…';
  @override
  String get anki_dedup_cancelled =>
      'Deduplizierung abgebrochen; abgeschlossene Änderungen werden beibehalten.';
  @override
  String get anki_dedup_report_cancelled_note =>
      'Vorzeitig abgebrochen – die folgenden Zahlen decken nur den abgeschlossenen Teil ab.';
  @override
  String get anki_dedup_plan_busy_note =>
      'Anki reagiert möglicherweise nicht, während der Vorgang läuft; verwenden Sie Anki erst nach Abschluss.';
  @override
  String get video_setting_subtitle_position_secondary =>
      'Position des zweiten Untertitels';
  @override
  String get dict_download_learning_language => 'Lernsprache';
  @override
  String get dict_category_bilingual => 'Zweisprachig';
  @override
  String get dict_category_monolingual => 'Einsprachig';
  @override
  String get shortcut_action_video_hold_speed =>
      'Halten für temporäre Geschwindigkeit';
  @override
  String get handlebar_phonetic_transcriptions => 'Lautschrift';
  @override
  String get sync_progress_preparing => 'Synchronisierung wird vorbereitet';
  @override
  String get sync_progress_collections => 'Sammlungen werden synchronisiert';
  @override
  String get sync_progress_book => 'Buch wird synchronisiert';
  @override
  String sync_progress_book_titled({required Object title}) =>
      '${title} wird synchronisiert';
  @override
  String sync_last_completed({required Object count}) =>
      'Letzte Synchronisierung: abgeschlossen (${count} Kanäle)';
  @override
  String get sync_last_no_channels =>
      'Letzte Synchronisierung: nichts synchronisiert – kein verbundener Sync-Kanal';
  @override
  String get sync_last_nothing =>
      'Letzte Synchronisierung: nichts zu synchronisieren';
  @override
  String get sync_last_auto_disabled =>
      'Letzte Synchronisierung: übersprungen – Auto-Sync ist deaktiviert';
  @override
  String get sync_last_cooled_down =>
      'Letzte Synchronisierung: übersprungen – kürzlich synchronisiert';
  @override
  String get sync_last_failed => 'Letzte Synchronisierung: fehlgeschlagen';
  @override
  String anime_download_no_results_detail({
    required Object query,
    required Object filters,
  }) =>
      'Der Dienst hat erfolgreich geantwortet, aber 0 Ergebnisse zurückgegeben. Abfrage: ${query}; Filter: ${filters}. Versuchen Sie einen anderen Titel oder lockern Sie die Filter.';
  @override
  String get anime_download_streaming_ready =>
      'In der Bibliothek · Download läuft weiter';
  @override
  String get anime_download_unfiltered => 'Kein Vertrauensfilter';
  @override
  String get interconnect_enable_footer =>
      'So funktioniert es: Aktivieren Sie auf dem Gerät, das Ihre Bibliothek enthält, den Sync-Server-Schalter unten; fügen Sie auf Ihrem anderen Gerät die Adresse dieses Servers hinzu, um sich zu koppeln. Ein Gerät kann jeweils nur eine Rolle haben – Server oder Client.';
  @override
  String get interconnect_peer_list_title => 'Hinzugefügte Geräte';
  @override
  String get interconnect_peer_list_empty =>
      'Noch keine Geräte hinzugefügt. Wählen Sie ein erkanntes Gerät aus der LAN-Geräteliste unten zum automatischen Koppeln, oder fügen Sie eine Geräteadresse manuell hinzu.';
  @override
  String get anki_lapis_visual_editor => 'Visueller Editor';
  @override
  String get anki_lapis_visual_editor_hint =>
      'Vorschau der Lapis-Karte ansehen, dann Stil, Position und Feldzuordnung jedes Bereichs ändern, ohne CSS zu schreiben.';
  @override
  String get anki_lapis_visual_front => 'Vorderseite';
  @override
  String get anki_lapis_visual_back => 'Rückseite';
  @override
  String get anki_lapis_visual_preview => 'Lapis-Kartenvorschau';
  @override
  String get anki_lapis_visual_select_field => 'Bereich zum Bearbeiten wählen';
  @override
  String get anki_lapis_visual_reset_field => 'Feld zurücksetzen';
  @override
  String anki_lapis_visual_font_size({required Object percent}) =>
      'Schriftgröße: ${percent}%';
  @override
  String get anki_lapis_visual_bold => 'Fett';
  @override
  String get anki_lapis_visual_alignment => 'Ausrichtung';
  @override
  String get anki_lapis_visual_color => 'Textfarbe';
  @override
  String get anki_lapis_visual_default => 'Standard';
  @override
  String get anki_lapis_visual_advanced_css => 'Erweitertes CSS';
  @override
  String get anki_lapis_visual_field_expression => 'Wort';
  @override
  String get anki_lapis_visual_field_reading => 'Lesung';
  @override
  String get anki_lapis_visual_field_sentence => 'Satz';
  @override
  String get anki_lapis_visual_field_primary_definition => 'Hauptdefinition';
  @override
  String get anki_lapis_visual_field_glossaries => 'Weitere Definitionen';
  @override
  String get anki_lapis_visual_target_card_content => 'Karteninhalt';
  @override
  String get anki_lapis_visual_target_definition => 'Definition';
  @override
  String get anki_lapis_visual_target_inside_definition =>
      'Innerhalb der Definition';
  @override
  String get anki_lapis_visual_field_definition_info => 'Definitionsanzeige';
  @override
  String get anki_lapis_visual_field_definition_box => 'Definitionsrahmen';
  @override
  String get anki_lapis_visual_field_definition_content => 'Gesamte Definition';
  @override
  String get anki_lapis_visual_field_selected_definition =>
      'Ausgewählte Definition';
  @override
  String get anki_lapis_visual_field_dictionary_entry => 'Wörterbucheintrag';
  @override
  String get anki_lapis_visual_field_dictionary_name => 'Wörterbuchname';
  @override
  String get anki_lapis_visual_field_definition_example =>
      'Definitionsbeispiel';
  @override
  String get anki_lapis_visual_line_height => 'Zeilenhöhe';
  @override
  String get anki_lapis_visual_background_color => 'Hintergrundhervorhebung';
  @override
  String get anki_lapis_visual_box_layout => 'Rahmenaussehen';
  @override
  String get anki_lapis_visual_border_width => 'Rahmen';
  @override
  String get anki_lapis_visual_border_color => 'Rahmenfarbe';
  @override
  String get anki_lapis_visual_corner_radius => 'Eckenradius';
  @override
  String get anki_lapis_visual_padding => 'Innenabstand';
  @override
  String get anki_lapis_visual_margin => 'Außenabstand';
  @override
  String get anki_lapis_visual_field_definition_info_note =>
      'Nur auf Karten mit mehr als einem Definitionsblock sichtbar; Karten mit einer einzelnen Definition blenden dies aus.';
  @override
  String get anki_lapis_visual_field_dictionary_name_note =>
      'Auf Fushi-Karten enthält dieses Label auch die Wortart-Tags, daher können die beiden nicht separat gestaltet werden.';
  @override
  String get game_upscaling_error_bundle_missing =>
      'Fushi-Installation ist unvollständig: die mitgelieferte Magpie-Komponente fehlt. Installieren Sie Fushi neu oder aktualisieren Sie es.';
  @override
  String get game_upscaling_error_bundle_invalid =>
      'Die mitgelieferte Magpie-Komponente ist beschädigt oder hat die Verifizierung nicht bestanden. Installieren Sie Fushi neu oder aktualisieren Sie es.';
  @override
  String download_test_connection_failed_reason({required Object message}) =>
      'Verbindung fehlgeschlagen: ${message}';
  @override
  String get delete_disclosure_will_delete_label => 'Wird gelöscht';
  @override
  String get delete_disclosure_will_keep_label => 'Wird beibehalten';
  @override
  String get delete_disclosure_book_records =>
      'Lesefortschritt, Lesezeichen, Tags und Untertiteldaten';
  @override
  String get delete_disclosure_book_extracted =>
      'Die Buchdateien, die Fushi in seinen eigenen Speicher extrahiert hat';
  @override
  String get delete_disclosure_book_audiobook =>
      'Das Audio und die zugeordneten Untertitel des angehängten Hörbuchs, falls vorhanden';
  @override
  String get delete_disclosure_source_kept =>
      'Die Originaldateien, die Sie importiert haben (Buch, Untertitel, Audio)';
  @override
  String get delete_disclosure_stats_kept => 'Lesestatistiken';
  @override
  String get delete_disclosure_audiobook_files =>
      'Das Audio und die zugeordneten Untertitel, die Fushi in seinen eigenen Speicher kopiert hat';
  @override
  String get delete_disclosure_audiobook_book_kept =>
      'Das Buch selbst und sein Lesefortschritt';
  @override
  String get delete_disclosure_audiobook_source_kept =>
      'Die Original-Audiodateien, die Sie importiert haben';
  @override
  String get audiobook_delete => 'Hörbuch löschen';
  @override
  String get audiobook_delete_confirm =>
      'Angehängtes Hörbuch löschen? Die Audiodateien werden von diesem Gerät entfernt.';
  @override
  String get delete_collection_confirm =>
      'Nur die Gruppierung wird entfernt. Die enthaltenen Einträge bleiben erhalten.';
  @override
  String get shortcut_action_video_enter_caret =>
      'Untertitel-Nachschlagecursor aktivieren';
  @override
  String get audiobook_export_clip_too_long =>
      'Ausgewähltes Audio ist zu lang zum Exportieren (Limit: 5 Minuten)';
  @override
  String get sync_err_forbidden =>
      'Der Server hat diese Anfrage abgelehnt. Ihre Anmeldung ist in Ordnung – überprüfen Sie die Servereinstellungen.';
  @override
  String sync_err_forbidden_detail({required Object reason}) =>
      'Der Server hat diese Anfrage abgelehnt: ${reason} (Ihre Anmeldung ist in Ordnung)';
  @override
  String get collection_group_extras => 'Extras & PV';
  @override
  String collection_group_season({required Object n}) => 'Staffel ${n}';
  @override
  String get collection_sort_by_season => 'Nach Staffel sortieren';
  @override
  String get mining_animated_format_avif => 'AVIF (kleinste)';
  @override
  String get mining_animated_format_webp => 'WebP (breitere Unterstützung)';
  @override
  String get mining_animated_format_gif => 'GIF (höchste Kompatibilität)';
  @override
  String get video_mining_animated_format => 'Animationsformat für Videokarten';
  @override
  String get video_mining_animated_format_hint =>
      'AVIF ist bei gleicher Qualität deutlich kleiner als GIF, und die höchste Qualitätsstufe erlaubt eine höhere Auflösung und Bildrate als GIF oder WebP. Fällt automatisch auf GIF zurück, wenn der mitgelieferte Encoder es nicht erzeugen kann.';
  @override
  String get gal_mining_animated_format => 'Animationsformat für Spielkarten';
  @override
  String get gal_mining_animated_format_hint =>
      'Gleiche Formate wie Videokarten, separat gespeichert: ein Galgame-Frame bewegt sich innerhalb einer Zeile kaum, daher ist der Kompromiss anders.';
  @override
  String get scrape_all => 'Alle abrufen';
  @override
  String scrape_all_title({required Object kind}) => 'Alle ${kind} abrufen';
  @override
  String scrape_all_running({required Object current, required Object total}) =>
      'Abrufen ${current} / ${total}';
  @override
  String scrape_all_item({required Object title}) => 'Verarbeitung: ${title}';
  @override
  String scrape_all_done({
    required Object applied,
    required Object review,
    required Object skipped,
    required Object failed,
  }) =>
      'Fertig: ${applied} angewendet, ${review} zur Überprüfung, ${skipped} übersprungen, ${failed} fehlgeschlagen';
  @override
  String get scrape_all_empty =>
      'Es gibt keine Einträge zum Abrufen in dieser Bibliothek.';
  @override
  String get scrape_all_start => 'Starten';
  @override
  String collection_hero_total_episodes({required Object count}) =>
      '${count} Episoden';
  @override
  String get video_scrape_collection_rename_title =>
      'Diese Sammlung umbenennen?';
  @override
  String get video_scrape_collection_rename_body =>
      'Der gefundene Eintrag hat einen anderen Namen. Die Umbenennung ist optional: Cover und Details werden in jedem Fall gespeichert, und eine Umbenennung ersetzt den alten Namen auch auf Ihren anderen synchronisierten Geräten.';
  @override
  String video_scrape_collection_rename_from({required Object name}) =>
      'Aktueller Name: ${name}';
  @override
  String video_scrape_collection_rename_to({required Object name}) =>
      'Neuer Name: ${name}';
  @override
  String get video_scrape_collection_rename_keep =>
      'Aktuellen Namen beibehalten';
  @override
  String get download_task_toggle_failed =>
      'Pausieren/Fortsetzen fehlgeschlagen';
  @override
  String get download_task_eta => 'Verbleibend';
  @override
  String get download_task_ratio => 'Verhältnis';
  @override
  String get download_task_status_downloading => 'Wird heruntergeladen';
  @override
  String get download_task_status_seeding => 'Wird verteilt';
  @override
  String get download_task_status_completed => 'Abgeschlossen';
  @override
  String get download_task_status_paused => 'Pausiert';
  @override
  String get download_task_status_queued => 'In Warteschlange';
  @override
  String get download_task_status_stalled => 'Blockiert';
  @override
  String get download_task_status_checking => 'Wird überprüft';
  @override
  String get download_task_status_metadata => 'Metadaten werden abgerufen';
  @override
  String get download_task_status_moving => 'Wird verschoben';
  @override
  String get download_task_status_error => 'Fehler';
  @override
  String get download_task_pause => 'Pausieren';
  @override
  String get download_task_resume => 'Fortsetzen';
  @override
  String get download_airing_calendar_title => 'Sendekalender';
  @override
  String get download_airing_calendar_show_all => 'Alle dieser Saison anzeigen';
  @override
  String get download_airing_calendar_empty_guidance =>
      'Noch nichts anzuzeigen: Verknüpfen Sie eine Sammlung mit AniList oder fügen Sie ein Download-Abonnement hinzu, dann erscheinen die Sendezeiten hier.';
  @override
  String get download_airing_calendar_error =>
      'Sendezeitplan konnte nicht geladen werden';
  @override
  String get download_airing_calendar_in_library => 'In der Bibliothek';
  @override
  String get download_airing_calendar_subscribed => 'Abonniert';
  @override
  String download_airing_calendar_episode_label({required Object episode}) =>
      'Ep ${episode}';
  @override
  String get download_airing_calendar_week_prev => 'Vorherige Woche';
  @override
  String get download_airing_calendar_week_next => 'Nächste Woche';
  @override
  String get download_airing_calendar_week_empty =>
      'Keine Ausstrahlungen diese Woche';
  @override
  String get video_jimaku_format => 'Format';
  @override
  String get video_jimaku_format_all => 'Alle';
  @override
  String get video_setting_tmdb_key => 'Eigener TMDB-API-Schlüssel';
  @override
  String get video_setting_tmdb_key_hint =>
      'Optional. Leer lassen, um den integrierten Schlüssel zu verwenden. Nur ausfüllen, wenn das Abrufen nicht mehr funktioniert oder Sie Ihr eigenes Kontingent nutzen möchten.';
  @override
  String get about_tmdb_attribution =>
      'Diese Anwendung verwendet TMDB und die TMDB-APIs, ist jedoch nicht von TMDB unterstützt, zertifiziert oder anderweitig genehmigt.';
  @override
  String get anki_lapis_visual_layout => 'Layout';
  @override
  String get anki_lapis_visual_layout_hint =>
      'Verwendet Lapis\' eigene Layout-Schalter, sodass Desktop- und Mobile-Anki beide folgen.';
  @override
  String get anki_lapis_visual_layout_sentence => 'Satzposition';
  @override
  String get anki_lapis_visual_layout_sentence_above => 'Über den Definitionen';
  @override
  String get anki_lapis_visual_layout_sentence_below =>
      'Unter den Definitionen';
  @override
  String get anki_lapis_visual_layout_picture => 'Bildposition';
  @override
  String get anki_lapis_visual_layout_picture_right => 'Rechts vom Wort';
  @override
  String get anki_lapis_visual_layout_picture_left => 'Links vom Wort';
  @override
  String get anki_lapis_visual_layout_picture_alt => 'Im Satz';
  @override
  String get anki_lapis_visual_layout_audio => 'Audio-Schaltflächen';
  @override
  String get anki_lapis_visual_layout_audio_header => 'Neben der Lesung';
  @override
  String get anki_lapis_visual_layout_audio_fixed => 'Am unteren Rand fixiert';
  @override
  String get anki_lapis_visual_layout_audio_alt => 'Im Satz';
  @override
  String get anki_lapis_visual_mapping_hint =>
      'Anki-Felder, die den ausgewählten Bereich füllen. Änderungen werden zusammen mit dem Stil gespeichert.';
  @override
  String get anki_lapis_visual_mapping_none =>
      'Dieser Bereich wird von der Vorlage selbst gezeichnet und hat kein eigenes Feld.';
  @override
  String get anki_lapis_visual_color_custom => 'Benutzerdefiniert';
  @override
  String get anki_lapis_visual_color_picker_title => 'Farbe auswählen';
  @override
  String get video_scrape_tmdb_key_hint => 'TMDB-API-Schlüssel eingeben';
  @override
  String get video_scrape_tmdb_key_required =>
      'TMDB erfordert einen API-Schlüssel';
  @override
  String get video_scrape_tmdb_key_save => 'Speichern';
  @override
  String get video_scrape_tmdb_key_empty =>
      'Speichern Sie einen TMDB-API-Schlüssel und drücken Sie dann Suchen. Ergebnisse aus anderen Quellen werden hier nicht angezeigt.';
  @override
  String get download_detail_tab_overview => 'Übersicht';
  @override
  String get download_detail_tab_files => 'Dateien';
  @override
  String get download_detail_tab_peers => 'Peers';
  @override
  String get download_detail_tab_trackers => 'Tracker';
  @override
  String get download_detail_backend_unsupported =>
      'Vom aktuellen Download-Backend nicht unterstützt';
  @override
  String get download_detail_task_gone => 'Aufgabe im Backend nicht gefunden';
  @override
  String get download_detail_task_missing =>
      'Das ursprüngliche Download-Backend ist online, aber dieser Torrent ist nicht mehr vorhanden. Live-Peers und Tracker können nicht wiederhergestellt werden; gespeicherte Aufgabeninformationen werden angezeigt.';
  @override
  String get download_detail_section_transfer => 'Übertragung';
  @override
  String get download_detail_section_network => 'Netzwerk';
  @override
  String get download_detail_section_task => 'Aufgabe';
  @override
  String get download_detail_seeds_label => 'Seeds';
  @override
  String get download_detail_leechers_label => 'Leecher';
  @override
  String get download_detail_connections_label => 'Verbindungen';
  @override
  String get download_detail_content_path_label => 'Inhaltspfad';
  @override
  String get download_detail_time_active => 'Aktive Zeit';
  @override
  String get download_detail_time_seeding => 'Verteilungszeit';
  @override
  String get download_detail_total_size_label => 'Gesamtgröße';
  @override
  String get download_detail_listen_port => 'Lausch-Port';
  @override
  String get download_detail_dht_nodes => 'DHT-Knoten';
  @override
  String get download_detail_hash_label => 'Info-Hash';
  @override
  String get download_detail_port_mapping => 'Port-Weiterleitung';
  @override
  String get download_detail_session_rates => 'Sitzungsraten';
  @override
  String get download_detail_pieces_label => 'Teile';
  @override
  String get download_detail_priority_skip => 'Nicht herunterladen';
  @override
  String get download_detail_raw_state_label => 'Backend-Status';
  @override
  String get download_detail_remaining_label => 'Verbleibend';
  @override
  String get download_detail_save_path_label => 'Speicherpfad';
  @override
  String get download_detail_priority_normal => 'Normal';
  @override
  String get download_detail_priority_high => 'Hoch';
  @override
  String get download_detail_tracker_working => 'Funktioniert';
  @override
  String get download_detail_tracker_updating => 'Wird aktualisiert';
  @override
  String get download_detail_tracker_not_contacted => 'Noch nicht kontaktiert';
  @override
  String get download_detail_tracker_not_working => 'Funktioniert nicht';
  @override
  String get download_detail_tracker_disabled => 'Deaktiviert';
  @override
  String get download_detail_no_peers => 'Keine verbundenen Peers';
  @override
  String get download_detail_no_trackers => 'Keine Tracker';
  @override
  String get video_filter_year => 'Jahr';
  @override
  String get video_filter_year_unknown => 'Unbekanntes Jahr';
  @override
  String get video_filter_watch_status => 'Wiedergabestatus';
  @override
  String get video_filter_watch_status_unwatched => 'Nicht angesehen';
  @override
  String get video_filter_watch_status_watching => 'Wird angesehen';
  @override
  String get video_filter_watch_status_completed => 'Abgeschlossen';
  @override
  String get video_hero_detail_view => 'Details';
  @override
  String video_hero_episodes_watched({required Object n}) =>
      '${n} Episoden angesehen';
  @override
  String get video_recently_added_badge => 'NEU';
  @override
  String get video_air_season_winter => 'Winter';
  @override
  String get video_air_season_spring => 'Frühling';
  @override
  String get video_air_season_summer => 'Sommer';
  @override
  String get video_air_season_autumn => 'Herbst';
  @override
  String get delete_scope_no_channel =>
      'Keine Synchronisierung konfiguriert – diese Löschung betrifft nur dieses Gerät';
  @override
  String get mihon_sources_title => 'Manga-Quellen';
  @override
  String get mihon_extensions_title => 'Manga-Erweiterungen';
  @override
  String get mihon_store_add => 'Erweiterungsshop hinzufügen';
  @override
  String get mihon_store_url => 'URL des Erweiterungsshops';
  @override
  String get mihon_store_empty =>
      'Noch keine Erweiterungsshops. Fügen Sie einen kompatiblen Mihon-Shop hinzu oder importieren Sie eine lokale APK.';
  @override
  String get mihon_extension_import => 'Lokale APK importieren';
  @override
  String get mihon_extension_warning =>
      'Drittanbieter-Erweiterungen führen Code mit Fushi-Berechtigungen aus. Installieren Sie nur Erweiterungen und Signierer, denen Sie vertrauen.';
  @override
  String get mihon_extension_install => 'Installieren';
  @override
  String get mihon_extension_update => 'Aktualisieren';
  @override
  String get mihon_extension_uninstall => 'Deinstallieren';
  @override
  String get mihon_extension_installed => 'Installiert';
  @override
  String get mihon_extension_disabled => 'Deaktiviert';
  @override
  String get mihon_source_empty =>
      'Keine aktivierten Manga-Quellen. Installieren und aktivieren Sie zuerst eine Erweiterung.';
  @override
  String get mihon_source_popular => 'Beliebt';
  @override
  String get mihon_source_latest => 'Neueste';
  @override
  String get mihon_source_search => 'Manga suchen';
  @override
  String get mihon_source_preferences => 'Quelleneinstellungen';
  @override
  String get mihon_source_clear_data => 'Quellendaten löschen';
  @override
  String get mihon_source_clear_data_hint =>
      'Löscht die Einstellungen und Cookies dieser Quelle. Installierte Erweiterungen bleiben erhalten.';
  @override
  String get mihon_signer_trust_title => 'Erweiterungssignierer vertrauen?';
  @override
  String get mihon_signer_fingerprint => 'Signierer SHA-256';
  @override
  String get mihon_runtime_unavailable =>
      'Mihon-Erweiterungen sind auf dieser Plattform nicht verfügbar.';
  @override
  String get mihon_extension_incompatible => 'Inkompatible Erweiterung';
  @override
  String get mihon_store_refresh => 'Shops aktualisieren';
  @override
  String get mihon_source_browse_mokuro => 'Integrierter Mokuro-Katalog';
  @override
  String get mihon_source_no_results => 'Kein Manga gefunden.';
  @override
  String get mihon_chapters_title => 'Kapitel';
  @override
  String get mihon_extension_language_filter => 'Sprache';
  @override
  String get mihon_extension_language_all => 'Alle Sprachen';
  @override
  String get mihon_filter_ignore => 'Ignorieren';
  @override
  String get mihon_filter_include => 'Einschließen';
  @override
  String get mihon_filter_exclude => 'Ausschließen';
  @override
  String get mihon_filter_ascending => 'Aufsteigend';
  @override
  String get mihon_filter_descending => 'Absteigend';
  @override
  String get mihon_add_to_bookshelf => 'Zum Manga-Regal hinzufügen';
  @override
  String get mihon_in_bookshelf => 'Im Manga-Regal';
  @override
  String scrape_all_confirm({required Object n}) =>
      'Alle ${n} Bibliothekseinträge nach Titel abgleichen. Nur Treffer mit hoher Konfidenz werden automatisch angewendet – Videos werden anhand von Titel zusammen mit Jahr, Typ und weiteren Signalen bewertet, während Bücher und Spiele einen eindeutigen exakten Titeltreffer erfordern. Selbst gewählte Cover werden nie überschrieben (lokale Bilder, die Sie gesetzt haben, Einträge, die Sie im Abgleichdialog gewählt haben, und Posterdateien im Ordner), und mehrdeutige Ergebnisse bleiben zur manuellen Überprüfung ausstehend.';
  @override
  String get collection_related_title => 'Verwandte Werke';
  @override
  String get collection_relation_prequel => 'Prequel';
  @override
  String get collection_relation_sequel => 'Sequel';
  @override
  String get collection_relation_side_story => 'Nebengeschichte';
  @override
  String get collection_relation_movie => 'Film';
  @override
  String get collection_relation_spin_off => 'Spin-off';
  @override
  String get collection_relation_other => 'Verwandt';
  @override
  String get collection_relation_download => 'Herunterladen';
  @override
  String get collection_relation_bind => 'An bestehende Sammlung binden';
  @override
  String get collection_episode_rename => 'Episoden nach Abruf umbenennen';
  @override
  String get collection_episode_rename_title => 'Episoden umbenennen';
  @override
  String get collection_episode_rename_empty => 'Nichts umzubenennen';
  @override
  String get collection_episode_download => 'Diese Episode herunterladen';
  @override
  String get collection_episode_fill_missing => 'Fehlende Episoden ergänzen';
  @override
  String get collection_episode_no_missing => 'Keine fehlenden Episoden';
  @override
  String get collection_split_by_season => 'Nach Staffel aufteilen';
  @override
  String get collection_split_keep_original => 'Originalsammlung beibehalten';
  @override
  String get collection_split_confirm => 'Aufteilen';
  @override
  String collection_relation_bound({required Object name}) =>
      'Gebunden an ${name}';
  @override
  String collection_episode_rename_apply({required Object n}) =>
      '${n} Episoden umbenennen';
  @override
  String collection_split_done({required Object n}) =>
      'In ${n} Sammlungen aufgeteilt';
  @override
  String collection_episode_watched_at({required Object position}) =>
      'Angesehen bis ${position}';
  @override
  String collection_episode_rename_partial({
    required Object n,
    required Object m,
  }) => '${n} Episoden umbenannt, ${m} fehlgeschlagen';
  @override
  String get sync_err_browser_timeout =>
      'Der Browser hat die Autorisierung nicht zurückgegeben. Versuchen Sie es erneut und stellen Sie sicher, dass Ihr Proxy 127.0.0.1 durchlässt.';
  @override
  String get manga_rescan_running => 'Ausgewählter Bereich wird erkannt...';
  @override
  String get manga_rescan_empty => 'In diesem Bereich wurde kein Text erkannt.';
  @override
  String get stat_hourly_band_epub => 'Textbücher';
  @override
  String get stat_hourly_band_pdf => 'PDF';
  @override
  String get stat_hourly_band_manga => 'Manga';
  @override
  String get stat_hourly_band_unattributed => 'Unaufgeteilter Verlauf';
  @override
  String get stat_hourly_unattributed_note =>
      'Stunden, die vor der formatspezifischen Erfassung aufgezeichnet wurden, haben keinen gespeicherten Typ und können daher nicht aufgeteilt werden. Sie werden als Gesamtsumme angezeigt und keinem Typ zugeordnet.';
  @override
  String get book_convert_to_manga_action => 'In Manga umwandeln';
  @override
  String get book_convert_to_book_action => 'Zurück in Buch umwandeln';
  @override
  String get book_convert_running => 'Wird umgewandelt…';
  @override
  String get book_convert_done => 'Umwandlung abgeschlossen';
  @override
  String get book_convert_failed => 'Umwandlung fehlgeschlagen';
  @override
  String get book_convert_blocked_already =>
      'Dieses Buch ist bereits in diesem Format.';
  @override
  String get book_convert_blocked_text_only =>
      'Dies ist ein Textbuch ohne Seitenbilder. Nur gescannte Bildbücher können zu Manga werden.';
  @override
  String get book_convert_blocked_no_original =>
      'Dieses Manga wurde aus Bildern importiert, daher gibt es kein Originalbuch zur Rückumwandlung.';
  @override
  String get book_convert_blocked_source_missing =>
      'Die Quelldateien sind nicht mehr auf der Festplatte.';
  @override
  String manga_online_retry_waiting({
    required Object attempt,
    required Object total,
  }) => 'Automatischer Wiederholungsversuch (${attempt}/${total})';
  @override
  String get manga_ocr_wizard_already_ocred =>
      'Dieses Volume hat bereits OCR-Daten auf jeder Seite. Eine erneute OCR würde diese überschreiben.';
  @override
  String get shortcut_scope_universal => 'Zurück / Beenden';
  @override
  String get game_attach_and_capture => 'Anhängen und aufnehmen';
  @override
  String get remote_delete_failed =>
      'Konnte auf dem gekoppelten Gerät nicht gelöscht werden';
  @override
  String get remote_delete_unsupported =>
      'Das gekoppelte Gerät ist zu alt, um Remote-Löschung zu unterstützen. Aktualisieren Sie dort zuerst Fushi.';
  @override
  String get anki_lapis_visual_blocks => 'Benutzerdefinierte Bereiche';
  @override
  String get anki_lapis_visual_blocks_hint =>
      'Vorhandene Felder an anderer Stelle auf der Karte anzeigen. Nur Anzeige: Kein Anki-Feld wird hinzugefügt oder gelöscht.';
  @override
  String get anki_lapis_visual_block_add => 'Bereich hinzufügen';
  @override
  String get anki_lapis_visual_block_delete => 'Bereich löschen';
  @override
  String anki_lapis_visual_block_name({required Object index}) =>
      'Bereich ${index}';
  @override
  String get anki_lapis_visual_block_anchor => 'Position auf der Karte';
  @override
  String get anki_lapis_visual_block_anchor_top => 'Oben auf der Karte';
  @override
  String get anki_lapis_visual_block_anchor_above_sentence => 'Unter dem Wort';
  @override
  String get anki_lapis_visual_block_anchor_above_definition =>
      'Unter dem Satz';
  @override
  String get anki_lapis_visual_block_anchor_below_definition =>
      'Unter den Definitionen';
  @override
  String get anki_lapis_visual_block_anchor_bottom => 'Unten auf der Karte';
  @override
  String get anki_lapis_visual_block_fields => 'Hier angezeigte Felder';
  @override
  String get anki_lapis_visual_block_no_fields =>
      'Noch keine Felder ausgewählt';
  @override
  String get anki_lapis_visual_block_needs_note_type =>
      'Wählen Sie zuerst einen Notiztyp, um Felder auszuwählen.';
  @override
  String get anki_lapis_restore_factory =>
      'Lapis auf Werkseinstellungen zurücksetzen';
  @override
  String get anki_lapis_restore_factory_hint =>
      'Den Lapis-Notiztyp in Anki mit der in Fushi enthaltenen Version überschreiben und alle Anpassungen hier zurücksetzen.';
  @override
  String get anki_lapis_restore_factory_confirm =>
      'Dies überschreibt das Lapis-Styling und die Kartenvorlagen in Anki mit Fushi\'s mitgelieferter Version und setzt Schriftgröße, benutzerdefiniertes CSS und benutzerdefinierte Bereiche zurück. Eine Sicherung des aktuellen Zustands wird vorher erstellt. Kartendaten werden nicht verändert.';
  @override
  String get anki_lapis_restore_factory_done =>
      'Lapis auf Werkseinstellungen zurückgesetzt';
  @override
  String anki_lapis_restore_factory_failed({required Object error}) =>
      'Wiederherstellung fehlgeschlagen: ${error}';
  @override
  String get anki_lapis_visual_select_field_hint =>
      'Klicken Sie auf einen Teil der Vorschau oder wählen Sie unten einen aus. Was Sie auswählen, wird von den darunter liegenden Steuerelementen bearbeitet.';
  @override
  String get anki_lapis_visual_editing_now => 'Wird bearbeitet';
  @override
  String get mihon_extension_preview => 'Vorschau';
  @override
  String get mihon_extension_preview_warning =>
      'Die Vorschau führt den Code dieser Erweiterung aus, bevor sie installiert wird. Nichts wird Ihrer Bibliothek hinzugefügt, bis Sie die Installation wählen.';
  @override
  String get mihon_extension_preview_discard => 'Verwerfen';
  @override
  String get mihon_extension_preview_source_select =>
      'Quelle für Vorschau wählen';
  @override
  String get mihon_extension_sources_included => 'Enthaltene Quellen';
  @override
  String get mihon_extension_preview_read_only =>
      'Vorschau ist schreibgeschützt. Installieren Sie die Erweiterung zum Öffnen und Lesen.';
  @override
  String get selection_copy_empty => 'Kein Text ausgewählt.';
  @override
  String get video_library_empty_source_hint =>
      'Fügen Sie einen Videoordner aus den Quellen hinzu, um Ihre Bibliothek aufzubauen';
  @override
  String get video_source_scrape_action => 'Diese Quelle abrufen';
  @override
  String get video_source_scrape_settings => 'Quellen-Abrufeinstellungen';
  @override
  String get video_source_scrape_auto_after_scan => 'Nach dem Scannen abrufen';
  @override
  String get video_source_scrape_auto_after_scan_hint =>
      'Metadaten automatisch abrufen, nachdem diese Quelle gescannt wurde';
  @override
  String get video_source_scrape_write_nfo => 'NFO-Dateien schreiben';
  @override
  String get video_source_scrape_write_images => 'Bilddateien schreiben';
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
  }) =>
      'Letzter Abruf (${status}): ${succeeded} erfolgreich, ${pending} ausstehend, ${failed} fehlgeschlagen';
  @override
  String get video_source_scrape_phase_planning => 'Planung';
  @override
  String get video_source_scrape_phase_recognizing => 'Abgleich';
  @override
  String get video_source_scrape_phase_fetching => 'Metadaten werden abgerufen';
  @override
  String get video_source_scrape_phase_applying =>
      'Metadaten werden gespeichert';
  @override
  String get video_source_scrape_phase_writing_sidecars =>
      'Begleitdateien werden geschrieben';
  @override
  String get video_source_scrape_status_interrupted => 'Unterbrochen';
  @override
  String get video_source_scrape_locale => 'Metadatensprache';
  @override
  String get video_source_scrape_locale_hint =>
      'Bevorzugte Sprache für Titel, Zusammenfassungen und Bilder';
  @override
  String get video_source_scrape_confirmation_title =>
      'Metadaten-Abgleich bestätigen';
  @override
  String get video_source_scrape_confirmation_hint =>
      'Es wurden mehrere exakte Treffer gefunden. Wählen Sie das richtige Werk, um seine Anbieterzuordnung zu speichern.';
  @override
  String get video_source_scrape_confirmation_skip =>
      'Dieses Werk überspringen';
  @override
  String get video_source_scrape_nfo_policy => 'NFO-Schreibrichtlinie';
  @override
  String get video_source_scrape_image_policy => 'Bild-Schreibrichtlinie';
  @override
  String get video_source_scrape_policy_skip => 'Nicht schreiben';
  @override
  String get video_source_scrape_policy_missing_only => 'Nur wenn fehlend';
  @override
  String get video_source_scrape_policy_overwrite =>
      'Fushi-Dateien aktualisieren';
  @override
  String get video_source_scrape_external_overwrite =>
      'Überschreiben geschützter Sidecar-Dateien erlauben';
  @override
  String get video_source_scrape_external_overwrite_hint =>
      'Dateien von Drittanbietern oder vom Benutzer geänderte Dateien bleiben geschützt, bis Sie jeden manuellen Scrape-Vorgang erneut bestätigen.';
  @override
  String get video_source_scrape_external_overwrite_confirm_title =>
      'Geschützte Sidecars überschreiben?';
  @override
  String get video_source_scrape_external_overwrite_confirm_body =>
      'Dieser Vorgang kann NFO-/Bilddateien von Drittanbietern oder von Ihnen bearbeitete Fushi-Dateien ersetzen. Mediendateien werden nicht geändert. Fortfahren?';
  @override
  String get video_source_scrape_tasks_open => 'Hintergrundaufgaben';
  @override
  String get video_source_scrape_background_started =>
      'Scraping läuft im Hintergrund';
  @override
  String get video_source_scrape_tasks_current => 'Aktuelle Aufgabe';
  @override
  String get video_source_scrape_tasks_history => 'Letzte Aufgaben';
  @override
  String get video_source_scrape_tasks_empty => 'Noch keine Scrape-Aufgaben';
  @override
  String get video_source_scrape_waiting_confirmation =>
      'Wartet auf Ihre Bestätigung';
  @override
  String get video_source_scrape_phase_scanning => 'Quelle wird gescannt';
  @override
  String get video_library_all_videos => 'Alle Videos';
  @override
  String get video_work_voice_roles => 'Sprecher und Figuren';
  @override
  String get video_work_cast_crew => 'Besetzung und Stab';
  @override
  String get video_work_trailers => 'Trailer';
  @override
  String get video_work_extras => 'Extras';
  @override
  String get video_work_details => 'Details';
  @override
  String get video_work_external_ids => 'Externe IDs';
  @override
  String get video_work_metadata_pending =>
      'Detaillierte Metadaten wurden noch nicht abgerufen. Starten Sie den Scrape-Vorgang dieser Quelle unter Quellen neu und öffnen Sie das Werk erneut.';
  @override
  String get video_work_genres => 'Genres';
  @override
  String get video_work_keywords => 'Schlagwörter';
  @override
  String get video_work_studios => 'Studios';
  @override
  String get video_work_countries => 'Länder';
  @override
  String get video_work_content_rating => 'Altersfreigabe';
  @override
  String get video_all_videos_list_view => 'Listenansicht';
  @override
  String get video_all_videos_grid_view => 'Rasteransicht';
  @override
  String video_home_continue_episode_number({required Object n}) =>
      'Wiedergabe Folge ${n}';
  @override
  String video_home_next_episode_number({required Object n}) =>
      'Nächste · Folge ${n}';
  @override
  String video_home_recent_episode_number({required Object n}) =>
      'Kürzlich hinzugefügt · Folge ${n}';
  @override
  String video_home_remaining_minutes({required Object minutes}) =>
      '${minutes} Min. verbleibend';
  @override
  String get video_subtitle_replay => 'Diese Zeile wiederholen';
  @override
  String get manga_ocr_done => 'OCR abgeschlossen';
  @override
  String get settings_destination_manga_summary =>
      'Reader, OCR und Online-Katalog';
  @override
  String get manga_page_animation => 'Seitenumblätter-Animation';
  @override
  String get manga_page_animation_none => 'Keine';
  @override
  String get manga_page_animation_slide => 'Gleiten';
  @override
  String get manga_page_animation_fade => 'Verblassen';
  @override
  String get manga_default_zoom => 'Standard-Zoom';
  @override
  String get manga_zoom_sensitivity => 'Zoom-Empfindlichkeit';
  @override
  String get manga_volume_key_paging => 'Lautstärketasten zum Blättern';
  @override
  String get manga_volume_key_paging_subtitle =>
      'Lautstärke hoch und runter zum Seitenumblättern im Manga-Reader verwenden';
  @override
  String get manga_tap_zone_paging => 'Ränder antippen zum Blättern';
  @override
  String get manga_tap_zone_paging_subtitle =>
      'Linken oder rechten Seitenrand antippen zum Umblättern';
  @override
  String get manga_section_viewing => 'Anzeige und Seitenumblättern';
  @override
  String get game_capture_setup_title => 'Aufnahme-Einrichtung abschließen';
  @override
  String get game_capture_setup_hint =>
      'Wählen Sie zuerst den Dialog-Thread. Fushi kann Audio nur mit Zeilen des ausgewählten Threads verknüpfen.';
  @override
  String get game_audio_requires_thread =>
      'Die Audio-Aufnahmequelle ist möglicherweise bereit, aber Satzaudio existiert erst, wenn ein Thread ausgewählt und eine Zeile empfangen wurde.';
  @override
  String get game_session_waiting_thread => 'Warte auf einen Dialog-Thread';
  @override
  String get anki_connect_use_on_mobile => 'Use AnkiConnect on Android';
  @override
  String get anki_connect_use_on_mobile_hint =>
      'Nur in einem vertrauenswürdigen Netzwerk verwenden. AnkiConnect nutzt unverschlüsseltes HTTP; konfigurieren Sie einen passenden API-Schlüssel, dann aktualisieren Sie Decks und Notiztypen nach dem Wechsel.';
  @override
  String get anki_connect_api_key_hint =>
      'Erforderlich für Remote-AnkiConnect; muss mit dem im Add-on konfigurierten Schlüssel übereinstimmen';
  @override
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before enabling the Android backend.';
  @override
  String anki_connect_backend_switch_failed({required Object error}) =>
      'Anki-Backend konnte nicht gewechselt werden: ${error}';
  @override
  String get migration_settings_entry => 'Zu Fushi migrieren';
  @override
  String get migration_settings_entry_subtitle =>
      'Alle Daten in die neue Fushi-App verschieben';
  @override
  String get migration_intro =>
      'Fushi ist der neue Name dieser App. Die Migration exportiert alle Ihre Daten in Stapeln in einen Übertragungsordner, dann importiert und verifiziert Fushi sie. Ihre Daten hier bleiben unverändert, bis Sie diese App deinstallieren.';
  @override
  String get migration_target_missing =>
      'Fushi ist noch nicht installiert. Installieren Sie zuerst Fushi, dann kommen Sie hierher zurück.';
  @override
  String get migration_download_fushi => 'Fushi herunterladen';
  @override
  String get migration_start => 'Migration starten';
  @override
  String get migration_open_fushi => 'Fushi öffnen';
  @override
  String get migration_include_local_audio =>
      'Auch lokale Aussprache-Audiodateien exportieren (kann groß sein)';
  @override
  String migration_batch_running({required Object batch}) =>
      '${batch} wird exportiert…';
  @override
  String migration_batch_done({required Object batch}) => '${batch} exportiert';
  @override
  String get migration_export_done =>
      'Export abgeschlossen. Öffnen Sie Fushi zum Importieren und Verifizieren.';
  @override
  String migration_export_failed({required Object error}) =>
      'Export fehlgeschlagen: ${error}';
  @override
  String get migration_readonly_note =>
      'Ihre Daten wurden nach Fushi exportiert. Diese App ist jetzt schreibgeschützt: Verwenden Sie Fushi zum Lesen und Kartenerstellen. Sie können jederzeit erneut exportieren, wenn Fushi fehlende Daten meldet.';
  @override
  String get migration_reexport => 'Erneut exportieren';
  @override
  String get migration_batch_core_label =>
      'Einstellungen, Fortschritt & Statistiken';
  @override
  String get migration_import_entry => 'Aus Hibiki importieren';
  @override
  String get migration_import_entry_subtitle =>
      'Von der alten Hibiki-App exportierte Daten importieren';
  @override
  String get migration_import_detected =>
      'Hibiki-Migrationsdaten erkannt. Jetzt importieren?';
  @override
  String get migration_import_start => 'Import starten';
  @override
  String migration_import_running({required Object batch}) =>
      '${batch} wird importiert…';
  @override
  String migration_import_verify_failed({
    required Object batch,
    required Object detail,
  }) =>
      '${batch} hat die Verifizierung nicht bestanden und wurde für den erneuten Export beibehalten: ${detail}';
  @override
  String migration_import_counts_failed({required Object detail}) =>
      'Importierte Daten sind unvollständig: ${detail}. Exportieren Sie die fehlenden Teile erneut aus Hibiki und importieren Sie sie dann erneut.';
  @override
  String get migration_import_success =>
      'Import abgeschlossen und verifiziert.';
  @override
  String get migration_import_nothing =>
      'Keine Migrationsdaten im Übertragungsordner gefunden.';
  @override
  String get migration_uninstall_prompt =>
      'Migration abgeschlossen. Die alte Hibiki-App deinstallieren?';
  @override
  String get migration_uninstall_button => 'Hibiki deinstallieren';
  @override
  String get migration_uninstall_still_installed =>
      'Hibiki ist noch installiert. Sie können es jederzeit deinstallieren.';
  @override
  String get migration_import_permission_title =>
      'Speicherberechtigung erforderlich';
  @override
  String get migration_import_permission_body =>
      'Der Übertragungsordner wurde von der alten App erstellt. Ohne „Zugriff auf alle Dateien" kann Fushi ihn nicht lesen – die Daten sind intakt, können aber nicht geöffnet werden.';
  @override
  String get migration_import_permission_grant => 'Berechtigung erteilen';
  @override
  String migration_import_verifying({
    required Object batch,
    required Object done,
    required Object total,
  }) => '${batch} wird verifiziert (${done}/${total})';
  @override
  String get migration_import_verifying_hint =>
      'Archive werden überprüft. Große Bibliotheken können mehrere Minuten dauern.';
  @override
  String get game_line_copy_tooltip => 'Satz kopieren';
  @override
  String get game_japanese_locale_auto => 'Automatisch';
  @override
  String get game_japanese_locale_on => 'Immer aktiv';
  @override
  String get game_japanese_locale_off => 'Aus';
  @override
  String get game_japanese_locale => 'Japanische Locale';
  @override
  String get game_japanese_locale_hint =>
      'Chinesische/Englische Patch-Versionen müssen dies deaktivieren, sonst stürzt das Spiel beim Start ab';
  @override
  String get video_scrape_diagnostic_export => 'Scrape-Diagnose exportieren';
  @override
  String get video_scrape_diagnostic_confirm_title =>
      'Scrape-Diagnose exportieren?';
  @override
  String get video_scrape_diagnostic_saved => 'Diagnosepaket gespeichert';
  @override
  String video_scrape_diagnostic_failed({required Object reason}) =>
      'Diagnosepaket konnte nicht exportiert werden: ${reason}';
  @override
  String get video_scrape_diagnostic_share_subject =>
      'Fushi Video-Scrape-Diagnose';
  @override
  String get video_scrape_diagnostic_confirm_body =>
      'Das Paket enthält relative Datei- und Ordnernamen, Scrape-Zusammenfassungen und originale NFO-Inhalte. Es enthält keine Videos, Untertitel, Bilder, absolute Pfade, App-Konfiguration oder App-Zugangsdaten. Originale NFO-Dateien werden unverändert beibehalten und können persönliche Informationen oder Geheimnisse enthalten; prüfen Sie das Paket vor dem öffentlichen Teilen.';
  @override
  String get video_discovery_search_hint => 'Filme, Serien, Anime suchen';
  @override
  String get video_discovery_hot => 'Gerade beliebt';
  @override
  String get video_discovery_seasonal_anime => 'Saisonaler Anime';
  @override
  String get video_discovery_all_works => 'Alle Titel';
  @override
  String get video_discovery_search_results => 'Suchergebnisse';
  @override
  String get video_discovery_provider_warning =>
      'Einige Anbieter sind nicht verfügbar. Verfügbare Ergebnisse werden angezeigt.';
  @override
  String get video_discovery_load_failed =>
      'Entdeckungsergebnisse konnten nicht geladen werden.';
  @override
  String get video_discovery_empty => 'Keine passenden Titel.';
  @override
  String get video_discovery_resource_search => 'Ressourcen suchen';
  @override
  String get video_discovery_subtitle_search => 'Untertitel suchen';
  @override
  String get video_discovery_subscribe => 'Abonnieren';
  @override
  String get video_discovery_subscription_manage => 'Abonnement verwalten';
  @override
  String get video_discovery_pipeline_idle =>
      'Nicht heruntergeladen → Herunterladen → Organisieren → Untertitel → Scrapen → Bibliothek';
  @override
  String get video_discovery_details_load_failed =>
      'Titeldetails konnten nicht geladen werden.';
  @override
  String get video_discovery_sort_popularity => 'Beliebtheit';
  @override
  String get video_discovery_sort_rating => 'Bewertung';
  @override
  String get video_discovery_sort_release => 'Erscheinungsdatum';
  @override
  String get video_discovery_in_library => 'In der Bibliothek';
  @override
  String get video_discovery_play => 'Abspielen';
  @override
  String get download_resources_tab => 'Ressourcen';
  @override
  String get video_external_settings_section =>
      'Externe Ressourcen- und Untertitelanbieter';
  @override
  String get video_torznab_settings_title => 'Torznab-Indexer';
  @override
  String get video_torznab_add => 'Indexer hinzufügen';
  @override
  String get video_torznab_name => 'Name';
  @override
  String get video_torznab_endpoint => 'Endpunkt';
  @override
  String get video_torznab_endpoint_hint =>
      'HTTPS ist erforderlich, außer für Loopback-Adressen.';
  @override
  String get video_torznab_api_key => 'API-Schlüssel';
  @override
  String get video_torznab_priority => 'Priorität';
  @override
  String get video_torznab_categories => 'Kategorien';
  @override
  String get video_torznab_categories_hint =>
      'Kommagetrennte numerische Kategorie-IDs';
  @override
  String get video_external_enabled => 'Aktiviert';
  @override
  String get video_external_insecure_http => 'Unsicheres HTTP erlauben';
  @override
  String get video_external_insecure_http_hint =>
      'Nur für einen vertrauenswürdigen lokalen Netzwerk-Endpunkt verwenden.';
  @override
  String get video_external_endpoint_invalid =>
      'Geben Sie einen gültigen Endpunkt ohne Zugangsdaten, Abfrageparameter oder Fragmente ein.';
  @override
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  @override
  String get video_opensubtitles_user_agent => 'User-Agent';
  @override
  String get video_opensubtitles_languages_hint =>
      'Kommagetrennte Sprachcodes, z. B. zh-CN,en,ja';
  @override
  String get video_download_path_mappings_title =>
      'qBittorrent-Pfadzuordnungen';
  @override
  String get video_download_path_mappings_hint =>
      'Ordnen Sie jeden qBittorrent-Remote-Stamm einem lokal zugänglichen Ordner zu.';
  @override
  String get video_download_path_mapping_add => 'Pfadzuordnung hinzufügen';
  @override
  String get video_download_backend_profile_id => 'Backend-Profil-ID';
  @override
  String get video_download_remote_root => 'Remote-Stamm';
  @override
  String get video_download_local_root => 'Lokaler Stamm';
  @override
  String get video_download_target_source_title =>
      'Standard-Videoquelle für verwaltete Downloads';
  @override
  String get video_download_target_source_hint =>
      'Neue Downloads werden in dieser lokalen Videoquelle organisiert.';
  @override
  String get video_download_target_source_none =>
      'Lokale Videoquelle auswählen';
  @override
  String get video_external_remove => 'Entfernen';
  @override
  String get video_external_username_optional => 'Benutzername (optional)';
  @override
  String get video_external_password_optional => 'Passwort (optional)';
  @override
  String get video_external_api_key => 'API-Schlüssel';
  @override
  String get video_external_save_error =>
      'Die Konfiguration konnte nicht gespeichert werden. Überprüfen Sie die hervorgehobenen Felder.';
  @override
  String get video_external_categories_invalid =>
      'Kategorien müssen kommagetrennte numerische IDs sein.';
  @override
  String get video_download_path_mapping_invalid =>
      'Geben Sie eine Profil-ID, einen Remote-Stamm und einen absoluten lokalen Stamm ein.';
  @override
  String get video_opensubtitles_endpoint => 'API-Endpunkt';
  @override
  String get video_download_target_source_empty =>
      'Keine lokal zugängliche Videoquelle verfügbar. Fügen Sie zuerst eine auf dem Quellen-Tab hinzu.';
  @override
  String get video_setting_drag_seek_sensitivity =>
      'Wischempfindlichkeit beim Spulen';
  @override
  String get video_setting_drag_seek_sensitivity_hint =>
      'Wie weit ein vollständiger Wisch auf dem Touchscreen spult: Niedrig ca. 45s, Mittel ca. 90s, Hoch ca. 180s. Unabhängig von der Gesamtlänge des Videos. Nur Touch-Wischen; Maus- und Tastatursteuerung sind nicht betroffen.';
  @override
  String get video_setting_drag_seek_sensitivity_low => 'Niedrig';
  @override
  String get video_setting_drag_seek_sensitivity_medium => 'Mittel';
  @override
  String get video_setting_drag_seek_sensitivity_high => 'Hoch';
  @override
  String video_subtitle_read_failed({required Object label}) =>
      'Diese Untertiteldatei konnte nicht gelesen werden (beschädigt oder leer): ${label}';
  @override
  String dict_downloading_size({
    required Object name,
    required Object done,
    required Object total,
  }) => '${name} wird heruntergeladen (${done} / ${total})';
  @override
  String get video_subtitle_attach_book_missing =>
      'Dieses Video ist nicht in Ihrer Bibliothek, daher wurde der Untertitel nicht zugeordnet';
  @override
  String get dict_download_hide => 'Im Hintergrund ausführen';
  @override
  String get dict_download_progress_show => 'Fortschritt anzeigen';
  @override
  String get dict_download_cancelled => 'Download abgebrochen.';
  @override
  String get dict_download_import_uncancellable =>
      'Import kann nicht unterbrochen werden';
  @override
  String get dict_download_busy => 'Ein Wörterbuch-Download läuft bereits.';
  @override
  String get gal_hook_ingame_lookup => 'Wörterbuchsuche im Spiel';
  @override
  String get gal_hook_ingame_lookup_hint =>
      'Wörterbuchkarte direkt im Spielfenster anzeigen (KiriKiri-Engine, nur Windows)';
  @override
  String download_subscription_start_episode({required Object episode}) =>
      '从第 ${episode} 集开始';
  @override
  String get drag_drop_failed =>
      'Die abgelegten Dateien konnten nicht verarbeitet werden. Bitte versuchen Sie es erneut.';
  @override
  String get tag_add_failed =>
      'Tag konnte nicht hinzugefügt werden. Bitte versuchen Sie es erneut.';
  @override
  String get tag_reorder_failed =>
      'Neue Tag-Reihenfolge konnte nicht gespeichert werden. Bitte versuchen Sie es erneut.';
  @override
  String get download_task_error_summary_source_missing =>
      'Verwaltete Videoquelle fehlt oder ist nicht erreichbar';
  @override
  String get download_task_error_summary_backend_unconfirmed =>
      'Torrent konnte nicht per Hash, Titel und Kategorie bestätigt werden';
  @override
  String get download_task_error_summary_subtitle =>
      'Untertitel sind nicht verfügbar oder konnten nicht installiert werden';
  @override
  String get download_task_error_summary_backend_unavailable =>
      'Download-Backend ist nicht verfügbar oder stimmt nicht mehr überein';
  @override
  String get download_task_error_summary_legacy =>
      'Alt-Import benötigt manuelle Aufmerksamkeit';
  @override
  String get download_task_error_summary_torrent_info =>
      'Torrent-Identität fehlt oder ist nicht überprüfbar';
  @override
  String get download_task_error_summary_generic =>
      'Die Aufgabe ist auf einen Fehler gestoßen';
  @override
  String get download_task_error_view_detail => 'Details anzeigen';
  @override
  String get download_task_error_detail_title => 'Fehlerdetails';
  @override
  String get download_task_error_copied => 'Fehlerdetails kopiert';
  @override
  String get download_task_lifecycle_active => 'In Bearbeitung';
  @override
  String get download_task_lifecycle_needs_attention =>
      'Erfordert Aufmerksamkeit';
  @override
  String get download_task_location_missing =>
      'Der Dateispeicherort der Aufgabe ist nicht verfügbar.';
  @override
  String get download_task_location_open_failed =>
      'Dateispeicherort konnte nicht geöffnet werden.';
  @override
  String get download_task_open_location => 'Im Ordner anzeigen';
  @override
  String get download_task_lifecycle_completed => 'Abgeschlossen';
  @override
  String get download_task_lifecycle_failed => 'Fehlgeschlagen';
  @override
  String get download_task_lifecycle_cancelled => 'Abgebrochen';
  @override
  String get download_task_stage_enqueue => 'Einreihen';
  @override
  String get download_task_stage_download => 'Herunterladen';
  @override
  String get download_task_stage_organize => 'Organisieren';
  @override
  String get download_task_stage_subtitle => 'Untertitel';
  @override
  String get download_task_stage_import => 'Importieren';
  @override
  String get download_task_stage_scrape => 'Scrapen';
  @override
  String get video_discovery_manual_identity_hint =>
      'Geben Sie oben Titel, externe ID und Jahr ein, um die Suche zu aktivieren';
  @override
  String get collection_split_move_to => 'Verschieben nach';
  @override
  String get collection_split_new_group => 'Neue Gruppe';
  @override
  String collection_split_selected({required Object n}) => '${n} ausgewählt';
  @override
  String get sync_pair_rate_limited =>
      'Zu viele Versuche. Warten Sie einige Minuten und versuchen Sie es erneut.';
  @override
  String get sync_pair_tls_failed =>
      'Zertifikatsprüfung fehlgeschlagen. Das Zertifikat des Gegenübers stimmt nicht mit dem gespeicherten überein.';
  @override
  String get sync_pair_timeout =>
      'Das Gegenüber hat nicht rechtzeitig geantwortet.';
  @override
  String get sync_pair_expired =>
      'Kopplung abgelaufen. Starten Sie die Kopplung erneut von diesem Gerät.';
  @override
  String get sync_pair_upgrade_required =>
      'Das andere Gerät verwendet eine ältere Version, die aus diesem Netzwerk nicht sicher koppeln kann. Aktualisieren Sie es und koppeln Sie erneut.';
  @override
  String get sync_pair_fingerprint_changed_title => 'Zertifikat geändert';
  @override
  String get sync_pair_fingerprint_stored_label => 'Zuvor gespeichert';
  @override
  String get sync_pair_fingerprint_new_label => 'Aktuell erkannt';
  @override
  String get sync_pair_fingerprint_retrust => 'Löschen und erneut vertrauen';
  @override
  String get sync_pair_fingerprint_changed_body =>
      'Diese Adresse war zuvor an ein anderes Zertifikat gebunden. Fahren Sie nur fort, wenn Sie wissen, dass das Gegenüber neu installiert oder zurückgesetzt wurde – andernfalls könnte jemand die Verbindung abfangen.';
  @override
  String get interconnect_upload_section_footer =>
      'Wählen Sie, was dieses Gerät an das verbundene Gegenüber hochlädt. Unabhängig von den Cloud-Sicherungsschaltern und standardmäßig deaktiviert. Diese Schalter gelten nur, solange Interconnect aktiviert ist: Das Deaktivieren von Interconnect stoppt jeden Upload hier.';
  @override
  String get remote_delete_audiobook_partial =>
      'Buch gelöscht, aber das Hörbuch konnte auf dem gekoppelten Gerät nicht entfernt werden';
  @override
  String get download_detail_task_queued =>
      'In Warteschlange: Wartet darauf, dass andere Downloads einen Slot freigeben. Diese Aufgabe wurde noch nicht an den Downloader übergeben, daher gibt es keine Live-Peer- oder Tracker-Daten.';
  @override
  String video_subscription_group_release_count({required Object count}) =>
      '${count} Veröffentlichungen';
  @override
  String get download_task_priority => 'Warteschlangenpriorität';
  @override
  String get download_task_priority_high => 'Hoch';
  @override
  String get download_task_priority_normal => 'Normal';
  @override
  String get download_task_priority_low => 'Niedrig';
  @override
  String get library_view_import => 'Importieren';
  @override
  String get quick_import_title => 'Schnellimport';
  @override
  String get media_source_section_title => 'Bibliotheksquellen';
  @override
  String get media_import_folder => 'Ordner importieren';
  @override
  String get media_import_folder_as_source =>
      'Als Bibliotheksquelle hinzufügen';
  @override
  String get book_import_folder_as_source_hint =>
      'Diesen Ordner weiterhin nach neuen Büchern durchsuchen';
  @override
  String get media_import_folder_once => 'Nur einmal importieren';
  @override
  String get library_empty_go_import => 'Zum Import';
  @override
  String get game_import_drop_hint =>
      'Sie können auch .exe-Dateien in die Spielebibliothek ziehen';
  @override
  String get library_view_sources => 'Quellen';
  @override
  String get video_setting_secondary_av_delay =>
      'Sekundäre Untertitelsynchronisation';
  @override
  String get video_setting_secondary_av_delay_hint =>
      'Den Versatz des sekundären Untertitels unabhängig anpassen. Er folgt dem primären Versatz, bis er hier eingestellt wird.';
  @override
  String get video_setting_secondary_delay_follow => 'Primärem folgen';
  @override
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      'Sekundäre Untertitelsynchronisation: ${ms} ms';
  @override
  String get video_subtitle_secondary_delay_follow_osd =>
      'Sekundäre Untertitelsynchronisation: folgt primärem';
  @override
  String get video_setting_subtitle_anchor => 'Hauptuntertitel-Anker';
  @override
  String get video_subtitle_anchor_bottom => 'Unten';
  @override
  String get video_subtitle_anchor_top => 'Oben';
  @override
  String get video_setting_subtitle_drag_adjust => 'Zum Anpassen ziehen';
  @override
  String get video_subtitle_drag_adjust_hint =>
      'Einen Untertitel nach oben oder unten ziehen, um ihn neu zu positionieren';
  @override
  String get anki_connect_mobile_disabled_key_cleared =>
      'AnkiConnect benötigt auf Mobilgeräten einen API-Schlüssel, daher wurde der Schalter nach dem Löschen wieder deaktiviert. Anki verwendet jetzt wieder das integrierte Backend.';
  @override
  String manga_import_batch_hint({required Object n}) =>
      'Dieser Ordner enthält ${n} Banddateien; jede wird als eigenes Buch importiert, benannt nach der Datei.';
  @override
  String manga_import_batch_done({
    required Object imported,
    required Object skipped,
    required Object failed,
  }) =>
      '${imported} importiert, ${skipped} übersprungen, ${failed} fehlgeschlagen.';
  @override
  String get srt_book_reimport => 'Erneut importieren';
  @override
  String get srt_book_reimport_subtitle_hint =>
      'Das Ersetzen des Untertitels baut den Buchtext aus den neuen Cues neu auf.';
  @override
  String get srt_book_reimport_no_cues =>
      'Keine Untertitelzeilen in dieser Datei gefunden';
  @override
  String get srt_book_reimport_body_rebuilt =>
      'Buchtext neu aufgebaut – öffnen Sie das Buch erneut zum Lesen';
  @override
  String get video_setting_torrent_backend_embedded => 'Integrierte Engine';
  @override
  String get download_backend_unsupported_note =>
      'Die integrierte Engine ist auf dieser Plattform nicht verfügbar. Downloads verwenden externes qBittorrent.';
  @override
  String get aidoku_runtime_unavailable =>
      'Aidoku-Erweiterungen sind derzeit nur auf macOS verfügbar.';
  @override
  String get aidoku_extensions_title => 'Aidoku-Erweiterungen';
  @override
  String get aidoku_extension_empty =>
      'Keine Aidoku-Erweiterungen installiert.';
  @override
  String get aidoku_extension_remove => 'Aidoku-Erweiterung entfernen';
  @override
  String get aidoku_extension_warning =>
      'Aidoku-Erweiterungen führen WebAssembly-Code von Drittanbietern mit Netzwerkzugriff aus. Fahren Sie nur mit vertrauenswürdigen Quellen fort.';
  @override
  String get aidoku_webview_unsupported =>
      'Diese Quelle erfordert Aidoku-WebView-APIs, die noch nicht unterstützt werden.';
  @override
  String get aidoku_extension_imported => 'Aidoku-Erweiterung importiert';
  @override
  String get aidoku_extension_import => 'Aidoku-Erweiterung importieren (.aix)';
  @override
  String get aidoku_extension_confirm_title =>
      'Aidoku-Erweiterung installieren?';
  @override
  String get aidoku_extension_version => 'Version';
  @override
  String get aidoku_repository_url => 'Repository-URL';
  @override
  String get aidoku_repository_sources => 'Repository-Quellen';
  @override
  String get aidoku_repository_identity_mismatch =>
      'Das heruntergeladene Paket stimmt nicht mit dem Repository-Index überein.';
  @override
  String get aidoku_repository_installed => 'Installiert';
  @override
  String get aidoku_repository_search => 'Repository-Quellen durchsuchen';
  @override
  String get aidoku_repository_install => 'Installieren';
  @override
  String get aidoku_repository_update => 'Aktualisieren';
  @override
  String get aidoku_repository_add => 'Aidoku-Repository hinzufügen';
  @override
  String get aidoku_repository_added => 'Aidoku-Repository hinzugefügt';
  @override
  String get aidoku_repository_browse => 'Repository durchsuchen';
  @override
  String get aidoku_repository_hint =>
      'Fügen Sie eine Aidoku-Repository-Homepage oder index.min.json-URL ein. Das Community-Repository ist standardmäßig vorausgefüllt.';
  @override
  String get aidoku_repository_remove => 'Repository entfernen';
  @override
  String get aidoku_repository_empty => 'Keine Aidoku-Repositorys hinzugefügt.';
  @override
  String get dict_language_tooltip => 'Inhaltssprache';
  @override
  String get dict_language_title => 'Inhaltssprache des Wörterbuchs';
  @override
  String get dict_language_description =>
      'Bestimmt, welche Schriftart den Text dieses Wörterbuchs rendert. Automatisch verwendet die vom Wörterbuch deklarierte Sprache.';
  @override
  String get dict_language_auto => 'Automatisch';
  @override
  String get book_language_action => 'Inhaltssprache';
  @override
  String get book_language_description =>
      'Bestimmt, welche Schriftart den Text dieses Buches rendert. Automatisch verwendet die im EPUB deklarierte Sprache.';
  @override
  String get local_audio_reference_unavailable =>
      'Ohne Zugriff auf alle Dateien kann die Originaldatei nicht referenziert werden; stattdessen wurde eine Kopie importiert.';
  @override
  String get video_collection_scrape => 'Info & Cover scrapen';
  @override
  String get update_testflight_open => 'TestFlight öffnen';
  @override
  String get update_app_store_open => 'App Store öffnen';
  @override
  String get update_release_page_open => 'Release-Seite';
  @override
  String update_install_gal_hook_holder({
    required Object pid,
    required Object path,
  }) =>
      'Galgame-Aufnahmekomponente in Verwendung: PID ${pid} – ${path} (dies ist das Spiel, das Sie spielen, oder sein Aufnahme-Host). Schließen Sie das Spiel und aktualisieren Sie erneut.';
  @override
  String get game_hook_reason_protocol_mismatch =>
      'Die Aufnahmekomponente passt nicht zu diesem Fushi-Build. Sie ist in Fushi enthalten, es muss also nichts separat installiert werden. Schließen Sie zuerst das Spiel vollständig und starten Sie es erneut: Der Spielprozess hält möglicherweise noch die von einer früheren Sitzung injizierte Komponente. Wenn es weiterhin nicht übereinstimmt, sind die Komponentendateien auf der Festplatte älter als Fushi, weil das letzte Fushi-Update sie nicht ersetzen konnte, während ein Spiel lief. Schließen Sie alle Spiele und führen Sie den Fushi-Installer erneut aus.';
  @override
  String get video_mining_still_format => 'Screenshot-Format für Videokarten';
  @override
  String get video_mining_still_format_hint =>
      'Kodierung, wenn das Kartenbild ein Standbild ist. JPG ist viel kleiner; PNG ist verlustfrei, aber um ein Vielfaches größer. Animierte Cover sind nicht betroffen – sie folgen der Animations-Formateinstellung.';
  @override
  String get mining_still_format_jpg => 'JPG (kleiner)';
  @override
  String get mining_still_format_png => 'PNG (verlustfrei)';
  @override
  String get gal_mining_still_format => 'Screenshot-Format für Spielkarten';
  @override
  String get gal_mining_still_format_hint =>
      'Gleiche Formate wie Videokarten, separat gespeichert. Spielfenster-Aufnahmen kommen als PNG: PNG beibehalten ist verlustfrei, aber um ein Vielfaches größer, während JPG der bisherigen Komprimierung dieser Screenshots entspricht.';
  @override
  String get manga_source_cloudflare_blocked =>
      'Diese Quelle ist durch Cloudflare geschützt und kann vom integrierten Reader noch nicht erreicht werden.';
  @override
  String get manga_global_search_title => 'Alle Quellen durchsuchen';
  @override
  String get manga_global_search_hint => 'Jede aktivierte Quelle durchsuchen';
  @override
  String get manga_global_search_prompt =>
      'Geben Sie einen Titel ein, um alle aktivierten Manga-Quellen gleichzeitig zu durchsuchen.';
  @override
  String get anki_connect_addon_install => 'AnkiConnect installieren';
  @override
  String get anki_connect_addon_install_hint =>
      'Lädt AnkiConnect von AnkiWeb herunter und übergibt es dem laufenden Anki. Anki wird Sie zur Bestätigung auffordern und dann einen Neustart empfehlen.';
  @override
  String get anki_connect_addon_handed =>
      'AnkiConnect an Anki übergeben. Bestätigen Sie die Aufforderung in Anki und starten Sie Anki wie empfohlen neu.';
  @override
  String get anki_connect_addon_anki_not_running =>
      'Kein laufendes Anki gefunden. Starten Sie zuerst Anki Desktop und versuchen Sie es erneut.';
  @override
  String anki_connect_addon_download_failed({required Object error}) =>
      'AnkiConnect konnte nicht von AnkiWeb heruntergeladen werden: ${error}';
  @override
  String get anki_connect_addon_invalid =>
      'AnkiWeb hat etwas zurückgegeben, das kein verwendbares Add-on-Paket ist.';
  @override
  String anki_connect_addon_launch_failed({required Object error}) =>
      'Das Add-on konnte nicht an Anki übergeben werden: ${error}';
  @override
  String get settings_content_language_title => 'Standard-Inhaltssprache';
  @override
  String get settings_content_language_unset => 'Nicht festgelegt';
  @override
  String get settings_content_language_description =>
      'Fallback-Sprache für Inhalte, die keine eigene deklarieren. Individuelle Einstellungen pro Buch, Video, Spiel und Wörterbuch überschreiben dies.';
  @override
  String get manga_ocr_lens_language_label => 'Erkennungssprache';
  @override
  String get sync_err_peer_unreachable =>
      'Das gekoppelte Gerät ist nicht erreichbar – es ist möglicherweise offline oder Fushi läuft nicht.';
  @override
  String get remote_book_list_failed =>
      'Die Remote-Bibliothek konnte nicht vom gekoppelten Gerät abgerufen werden.';
  @override
  String get video_torznab_settings_hint =>
      'Konfigurieren Sie einen oder mehrere Jackett-, Prowlarr- oder kompatible Torznab-Endpunkte. Geheimnisse werden niemals in Sicherungen exportiert; sie können über Interconnect mit gekoppelten Geräten synchronisiert werden (kann in den Interconnect-Einstellungen deaktiviert werden).';
  @override
  String get video_opensubtitles_settings_hint =>
      'API-Zugangsdaten werden niemals in Sicherungen exportiert; sie können über Interconnect mit gekoppelten Geräten synchronisiert werden (kann in den Interconnect-Einstellungen deaktiviert werden).';
  @override
  String get sync_interconnect_service_config_toggle =>
      'Dienstkonfiguration vom Host synchronisieren';
  @override
  String get sync_interconnect_service_config_toggle_desc =>
      'Externe Diensteinstellungen und API-Schlüssel (Jimaku, TMDB, Torznab, OpenSubtitles, Tracking) vom gekoppelten Host über den verschlüsselten Interconnect-Kanal empfangen. Erfordert TLS.';
  @override
  String get video_setting_subtitle_backfill =>
      'Untertitel nach dem Scrapen automatisch abrufen';
  @override
  String get video_setting_subtitle_backfill_hint =>
      'Wenn ein Scrape-Vorgang abgeschlossen ist, erhalten Videos ohne Untertitel einen von Ihren konfigurierten Online-Quellen. Bestehende Untertitel werden niemals ersetzt.';
  @override
  String get video_setting_subtitle_sources_section =>
      'Online-Untertitelquellen';
  @override
  String get video_subtitle_no_source_configured =>
      'Kein Untertitel gefunden · richten Sie eine Online-Untertitelquelle ein';
  @override
  String get anime_download_subs_retrying =>
      'Untertitel: noch nicht verfügbar – wird automatisch erneut versucht';
  @override
  String get video_jimaku_language_follow_video => 'Videosprache übernehmen';
  @override
  String get video_setting_jimaku_default_language_hint =>
      'Standardmäßig wird die eigene Sprache des Videos verwendet (Audiospur / gescrapte Metadaten). Wählen Sie eine aus, um stattdessen immer diese Sprache zu bevorzugen.';
  @override
  String get onboarding_title => 'Erste Schritte';
  @override
  String get onboarding_welcome_headline => 'Willkommen!';
  @override
  String get onboarding_feature_anki => 'Anki-Karteikarten';
  @override
  String get onboarding_feature_anki_hint =>
      'AnkiConnect oder AnkiDroid verbinden, um Karteikarten zu erstellen';
  @override
  String get onboarding_feature_backup => 'Sicherung & Synchronisierung';
  @override
  String get onboarding_feature_backup_hint =>
      'Sichern Sie Ihre Daten auf Google Drive, WebDAV und anderen Backends';
  @override
  String get onboarding_feature_interconnect => 'Geräte-Interconnect';
  @override
  String get onboarding_feature_interconnect_hint =>
      'Geräte in Ihrem LAN koppeln, um Bibliotheken und Fortschritt zu teilen';
  @override
  String get onboarding_step_dictionary_action => 'Wörterbuchverwaltung öffnen';
  @override
  String get onboarding_step_anki_title => 'Anki einrichten';
  @override
  String get onboarding_step_anki_action =>
      'Kartenerstell-Einstellungen öffnen';
  @override
  String get onboarding_step_backup_title => 'Sicherung einrichten';
  @override
  String get onboarding_step_backup_body =>
      'Wählen Sie ein Sicherungs-Backend und melden Sie sich an, oder exportieren Sie eine lokale Sicherungsdatei.';
  @override
  String get onboarding_step_backup_action => 'Sicherungseinstellungen öffnen';
  @override
  String get onboarding_step_interconnect_title => 'Interconnect einrichten';
  @override
  String get onboarding_step_interconnect_body =>
      'Aktivieren Sie Interconnect und koppeln Sie andere Geräte in Ihrem LAN, um Bibliotheken, Fortschritt und Nachschlagewerke zu teilen.';
  @override
  String get onboarding_step_interconnect_action =>
      'Interconnect-Einstellungen öffnen';
  @override
  String get onboarding_finish_title => 'Alles bereit';
  @override
  String get onboarding_finish_body =>
      'Sie können diese Anleitung jederzeit unter Einstellungen → System erneut aufrufen.';
  @override
  String get onboarding_action_next => 'Weiter';
  @override
  String get onboarding_action_finish => 'Fertig';
  @override
  String get onboarding_action_skip => 'Vorerst überspringen';
  @override
  String get onboarding_reopen => 'Erste-Schritte-Anleitung';
  @override
  String get onboarding_welcome_body =>
      'Stellen Sie zuerst Ihre Oberflächensprache und das Design ein – die nächsten Schritte führen Sie durch den Rest.';
  @override
  String get onboarding_features_title => 'Wählen Sie, was Sie nutzen';
  @override
  String get onboarding_features_modules_label =>
      'Bibliotheks-Tabs (nicht markierte werden in der Navigationsleiste ausgeblendet; jederzeit in den Einstellungen änderbar)';
  @override
  String get onboarding_features_setup_label =>
      'Was als Nächstes eingerichtet wird';
  @override
  String get onboarding_feature_manga => 'Manga-Bibliothek';
  @override
  String get onboarding_feature_manga_hint =>
      'Manga lesen mit OCR-Nachschlagen';
  @override
  String get onboarding_feature_video => 'Videothek';
  @override
  String get onboarding_feature_video_hint =>
      'Videos mit Untertitel-Nachschlagen und Kartenerstellen ansehen';
  @override
  String get onboarding_feature_games => 'Galgame-Bibliothek';
  @override
  String get onboarding_feature_games_hint =>
      'Galgames mit Text-Hook-Nachschlagen starten (nur Windows)';
  @override
  String get onboarding_feature_pack =>
      'Empfohlenes Paket (Wörterbücher + Audio)';
  @override
  String get onboarding_feature_pack_hint =>
      'Ein Download richtet japanische Wörterbücher plus JA/EN-Aussprache-Audio ein';
  @override
  String get onboarding_step_pack_title => 'Empfohlenes Paket installieren';
  @override
  String get onboarding_step_pack_body =>
      'Das empfohlene Paket enthält japanische Wort-, Akzent- und Häufigkeitswörterbücher sowie japanische/englische Aussprachedatenbanken. Laden Sie es hier herunter und importieren Sie es; der Import ersetzt lokale Daten, führen Sie ihn daher bei einer Neuinstallation aus. Sie lernen eine andere Sprache? Verwenden Sie die Wörterbuchverwaltung, um eigene Wörterbücher zu importieren.';
  @override
  String get onboarding_step_pack_download_action =>
      'Herunterladen und importieren';
  @override
  String get onboarding_step_pack_import_existing_action =>
      'Heruntergeladenes Paket importieren';
  @override
  String get onboarding_step_pack_pick_action => 'Lokale Paketdatei auswählen';
  @override
  String get onboarding_pack_downloading =>
      'Wird heruntergeladen… jederzeit abbrechbar, wird beim nächsten Mal fortgesetzt';
  @override
  String onboarding_pack_download_failed({required Object message}) =>
      'Download fehlgeschlagen: ${message}';
  @override
  String get onboarding_step_extension_title => 'Browser-Erweiterung';
  @override
  String get onboarding_step_extension_body =>
      'Installieren Sie die Browser-Erweiterung, um Wörter auf beliebigen Webseiten nachzuschlagen.';
  @override
  String get onboarding_step_extension_action =>
      'Erweiterungs-Anleitung öffnen';
  @override
  String get onboarding_step_fonts_title => 'Leseschriften';
  @override
  String get onboarding_step_fonts_body =>
      'Importieren Sie benutzerdefinierte Schriften und wählen Sie, welche für Oberfläche, Buchtext und Wörterbuch verwendet werden.';
  @override
  String get settings_section_modules => 'Funktionsmodule';
  @override
  String get module_toggle_hint =>
      'Diesen Bibliotheks-Tab in der Navigationsleiste anzeigen; ausschalten zum Ausblenden';
  @override
  String get video_setting_youtube_quality => 'YouTube-Qualität';
  @override
  String get video_setting_youtube_quality_hint =>
      'Streams mit der höchsten Stufe bis zu diesem Ziel starten; Auto bevorzugt flüssige Wiedergabe (hardwarefreundlicher Codec, bis 1080p)';
  @override
  String get library_view_discover => 'Entdecken';
  @override
  String get manga_discovery_section_trending => 'Im Trend';
  @override
  String get manga_discovery_section_popular => 'Beliebt';
  @override
  String get manga_discovery_section_top_rated => 'Bestbewertet';
  @override
  String get manga_discovery_section_latest_finished =>
      'Kürzlich abgeschlossen';
  @override
  String get manga_discovery_load_failed =>
      'Der Entdecken-Feed konnte nicht geladen werden.';
  @override
  String get manga_discovery_match_section => 'Aus einer Quelle lesen';
  @override
  String get manga_discovery_match_running =>
      'Suche in Ihren aktivierten Quellen...';
  @override
  String get manga_discovery_match_none =>
      'Kein Treffer in aktivierten Quellen gefunden.';
  @override
  String get manga_discovery_status_releasing => 'Laufend';
  @override
  String get manga_discovery_status_finished => 'Abgeschlossen';
  @override
  String get manga_discovery_status_hiatus => 'Pausiert';
  @override
  String get manga_discovery_status_cancelled => 'Eingestellt';
  @override
  String get manga_discovery_status_not_yet_released => 'Noch nicht erschienen';
  @override
  String manga_discovery_source_popular({required Object source}) =>
      'Beliebt auf ${source}';
  @override
  String get mihon_extension_error => 'Erweiterungsfehler';
  @override
  String get discovery_all_sources => 'Alle Quellen';
  @override
  String get discovery_search_hint => 'Online-Ressourcen durchsuchen';
  @override
  String get discovery_enter_query_hint => 'Stichwort zum Suchen eingeben';
  @override
  String get discovery_empty => 'Keine Ergebnisse';
  @override
  String get discovery_partial_failure => 'Einige Quellen sind nicht verfügbar';
  @override
  String get discovery_load_more => 'Mehr laden';
  @override
  String get discovery_download_queued => 'Zu Downloads hinzugefügt';
  @override
  String get discovery_torrent_pushed => 'Torrent-Aufgabe hinzugefügt';
  @override
  String get discovery_torrent_failed =>
      'Torrent-Aufgabe konnte nicht hinzugefügt werden';
  @override
  String get discovery_kind_novel => 'Romane';
  @override
  String get discovery_kind_audiobook => 'Hörbücher';
  @override
  String get discovery_source_pick_hint =>
      'Wählen Sie eine Quelle zum Durchstöbern, oder geben Sie ein Stichwort ein, um alle Quellen zu durchsuchen';
  @override
  String get discovery_source_query_required =>
      'Diese Quelle unterstützt nur Stichwortsuche';
  @override
  String get manga_discovery_sources_browse => 'Eine Quelle durchstöbern';
  @override
  String get discovery_kind_manga => 'Manga';
  @override
  String get game_capture_workbench_tab => 'Erfassungsarbeitsbereich';
  @override
  String get video_builtin_sources_title => 'Integrierte Quellen';
  @override
  String get video_resource_no_provider_title =>
      'Kein Ressourcen-Indexer konfiguriert';
  @override
  String get video_subtitle_no_provider_title =>
      'Kein Untertitelanbieter konfiguriert';
  @override
  String get video_subtitle_no_provider_hint =>
      'Geben Sie einen Jimaku-API-Schlüssel ein oder aktivieren Sie OpenSubtitles unter Einstellungen, Downloads, Externe Ressourcen- und Untertitelanbieter.';
  @override
  String get anime_download_require_subs => 'Untertitel erforderlich';
  @override
  String get video_jimaku_scope_hint =>
      'Japanische Untertitel für Anime und japanische Live-Action-Titel. Ein kostenloser API-Schlüssel ist erforderlich.';
  @override
  String get video_builtin_apibay_hint =>
      'Filme und Serien. Öffentlicher Index, kein Konto erforderlich.';
  @override
  String get video_builtin_knaben_hint =>
      'Filme und Serien. Bündelt mehrere öffentliche Indexer.';
  @override
  String get video_jimaku_enabled_hint =>
      'Aus bedeutet, dass Jimaku übersprungen wird, auch wenn ein API-Schlüssel gespeichert ist.';
  @override
  String get discovery_sources_settings_title => 'Entdecken-Quellen';
  @override
  String get discovery_sources_settings_hint =>
      'Welche integrierten Quellen an der Suche unter „Alle Quellen" auf der Entdecken-Seite teilnehmen. Eine einzelne Quelle im Dropdown auszuwählen funktioniert immer, auch wenn sie hier deaktiviert ist.';
  @override
  String get video_builtin_sources_hint =>
      'Mit der App mitgeliefert: kein Konto, kein API-Schlüssel. Deaktivieren, um sie aus Ressourcensuchen auszuschließen.';
  @override
  String get video_builtin_nyaa_hint =>
      'Nur Anime. Filme und Serien werden von den beiden öffentlichen Indexern unten abgedeckt.';
  @override
  String get video_resource_no_provider_hint =>
      'Diese Suche hatte keinen Anbieter zum Abfragen. Aktivieren Sie eine integrierte Quelle erneut oder fügen Sie einen Torznab-Indexer unter Einstellungen, Downloads, Externe Ressourcen- und Untertitelanbieter hinzu.';
  @override
  String discovery_source_kinds_label({required Object kinds}) =>
      'Umfasst: ${kinds}';
  @override
  String get video_source_scrape_rescrape_source =>
      'Diese Quelle erneut scrapen';
  @override
  String get video_source_scrape_run_detail_title => 'Scrape-Ergebnis';
  @override
  String get video_source_scrape_run_no_issues =>
      'Keine Warnungen oder Fehler aufgezeichnet.';
  @override
  String get video_source_scrape_manual_search_title => 'Werk manuell angeben';
  @override
  String get video_source_scrape_manual_search_hint =>
      'Suchen Sie beim Metadatenanbieter nach Titel und wählen Sie das richtige Werk aus.';
  @override
  String get video_source_scrape_manual_search_action => 'Suchen';
  @override
  String get video_source_scrape_manual_search_empty => 'Keine Ergebnisse';
  @override
  String get profile_media_manga => 'Manga';
  @override
  String get profile_media_game => 'Spiel';
  @override
  String get profile_media_browser => 'Browser';
  @override
  String get mihon_store_remove => 'Erweiterungs-Store entfernen';
  @override
  String get video_import_folder_as_source_hint =>
      'Diesen Ordner weiterhin nach neuen Videos durchsuchen';
  @override
  String get manga_import_folder_as_source_hint =>
      'Diesen Ordner weiterhin nach neuem Manga durchsuchen';
  @override
  String get download_no_managed_video_source =>
      'Noch keine verwaltete Videoquelle. Füge einen lokalen Ordner für die heruntergeladenen Dateien hinzu, damit fertige Videos in der Bibliothek landen.';
  @override
  String get download_add_video_source => 'Videoquelle hinzufügen';
  @override
  String get video_subtitle_prev_cue_align =>
      'Vorherige Zeile auf jetzt ausrichten';
  @override
  String get video_subtitle_next_cue_align =>
      'Nächste Zeile auf jetzt ausrichten';
  @override
  String video_control_custom_action({required Object index}) =>
      'Tastenkürzel ${index}';
  @override
  String get video_control_custom_action_none => 'Nicht zugewiesen';
  @override
  String get settings_destination_storage => 'Speicher';
  @override
  String get settings_destination_storage_summary =>
      'Datenspeicherort und Speicherbelegung';
  @override
  String get storage_overview_section => 'Speicherbelegung';
  @override
  String get storage_overview_total => 'Gesamt';
  @override
  String get storage_overview_refresh => 'Neu scannen';
  @override
  String get storage_overview_scanning => 'Wird gescannt…';
  @override
  String get storage_category_books => 'Bücher & Hörbücher';
  @override
  String get storage_category_dictionaries => 'Wörterbücher';
  @override
  String get storage_category_video_downloads => 'Video-Downloads';
  @override
  String get storage_category_covers => 'Cover & Vorschaubilder';
  @override
  String get storage_category_subtitles => 'Untertitel';
  @override
  String get storage_category_shaders => 'Video-Shader';
  @override
  String get storage_category_custom_fonts => 'Benutzerdefinierte Schriften';
  @override
  String get storage_category_web => 'Webarchiv & Browserdaten';
  @override
  String get storage_category_exports => 'Exporte';
  @override
  String get storage_category_database => 'Datenbank & interne Daten';
  @override
  String get storage_category_ocr_models => 'Manga-OCR-Modelle';
  @override
  String storage_entry_more_rest({required Object n, required Object size}) =>
      '${n} weitere Einträge, insgesamt ${size}';
  @override
  String storage_entry_delete_confirm_title({required Object name}) =>
      '${name} löschen?';
  @override
  String get storage_entry_delete_book_confirm_body =>
      'Dies entfernt das Buch, seinen Lesefortschritt und verknüpfte Audiokopien von diesem Gerät.';
  @override
  String get storage_entry_delete_dictionary_confirm_body =>
      'Dies entfernt das Wörterbuch und seine importierten Daten.';
  @override
  String get storage_entry_delete_done => 'Gelöscht';
  @override
  String storage_entry_delete_failed({required Object reason}) =>
      'Löschen fehlgeschlagen: ${reason}';
  @override
  String get storage_modules_anime4k_title => 'Anime4K-Shader';
  @override
  String get storage_modules_anime4k_hint =>
      'Können jederzeit in den Videoeinstellungen erneut heruntergeladen werden';
  @override
  String storage_modules_anime4k_delete_done({required Object n}) =>
      '${n} Shader-Dateien gelöscht';
  @override
  String get storage_bundled_section => 'Mitgelieferte Komponenten';
  @override
  String get storage_bundled_hint =>
      'Mit dem Installationsprogramm ausgeliefert; gelöschte Dateien werden beim nächsten Update wiederhergestellt, nur zur Information aufgelistet.';
  @override
  String get storage_dictionary_delete_incomplete =>
      'Wörterbuch nach dem Löschen noch vorhanden, siehe Fehlerprotokoll';
  @override
  String get module_extension_label => 'Browser-Erweiterung';
  @override
  String get onboarding_feature_books => 'Roman-Bibliothek';
  @override
  String get onboarding_feature_books_hint =>
      'EPUB-Romane mit Wörterbuch-Nachschlagen und Hörbuch-Synchronisation lesen';
  @override
  String get onboarding_feature_extension_hint =>
      'Wörter auf beliebigen Webseiten nachschlagen (nur Desktop)';
  @override
  String get video_setting_tap_toggles_playback =>
      'Tippen zum Abspielen/Pausieren';
  @override
  String get video_setting_tap_toggles_playback_hint =>
      'Deaktivieren, damit Tippen auf das Video nur die Steuerung einblendet';
  @override
  String get manga_ocr_engine_auto_desc =>
      'Bevorzugt eine bereits eingerichtete Offline-Engine; lädt niemals eigenständig zu Lens hoch.';
  @override
  String get manga_ocr_engine_local_onnx_desc =>
      'Vollständig offline, beste Qualität. Einmaliger Modell-Download erforderlich, auf älterer Hardware langsam.';
  @override
  String get manga_ocr_engine_google_lens_desc =>
      'Benötigt Internet und lädt Seitenbilder zu Google hoch. Schnell ohne Download, aber Qualität unter dem lokalen Modell.';
  @override
  String get manga_ocr_engine_external_desc =>
      'Ruft eine selbst installierte Mokuro-Befehlszeile auf. Nur Desktop.';
  @override
  String get manga_ocr_engine_paired_host_desc =>
      'Übergibt die Arbeit an ein gekoppeltes Gerät in Ihrem Netzwerk. Hier wird nichts heruntergeladen.';
  @override
  String manga_ocr_model_disk_usage({required Object size}) =>
      'Belegt ${size} auf dem Datenträger';
  @override
  String manga_ocr_model_download_size({required Object size}) =>
      'Benötigt ${size}';
  @override
  String manga_ocr_delete_done_freed({required Object size}) =>
      'Modelle gelöscht, ${size} freigegeben';
  @override
  String get manga_ocr_model_unused_by_engine =>
      'Die aktuelle Engine verwendet diese lokalen Modelldateien nicht.';
  @override
  String manga_ocr_download_total_progress({
    required Object done,
    required Object total,
  }) => '${done} von ${total}';
  @override
  String get media_source_network_subtitle_video =>
      'WebDAV-Remote-Bibliothek (Streaming vor Ort)';
  @override
  String get jellyfin_settings_title => 'Medienserver (Jellyfin / Emby)';
  @override
  String get jellyfin_server_url => 'Server-URL';
  @override
  String get jellyfin_sign_in => 'Anmelden';
  @override
  String get jellyfin_sign_out => 'Abmelden';
  @override
  String get jellyfin_sign_in_failed => 'Anmeldung fehlgeschlagen';
  @override
  String get jellyfin_settings_hint =>
      'Videos auf dem Server erscheinen in der Videobibliothek und werden direkt gestreamt.';
  @override
  String get video_setting_mpv_lua_scripts => 'Lua-Skripte laden';
  @override
  String get video_setting_mpv_lua_scripts_hint =>
      'Alle .lua-Dateien im Ordner mpv_scripts in den Player laden. Das Deaktivieren wird beim nächsten Öffnen eines Videos wirksam.';
  @override
  String get video_setting_mpv_lua_scripts_import => 'Lua-Skripte importieren';
  @override
  String get video_setting_mpv_lua_scripts_imported => 'Skripte importiert';
  @override
  String get video_setting_mpv_lua_scripts_dir_copy =>
      'Skript-Ordnerpfad kopieren';
  @override
  String get video_setting_mpv_lua_scripts_dir_copied => 'Ordnerpfad kopiert';
  @override
  String get interconnect_share_statistics => 'Statistiken teilen';
  @override
  String get interconnect_share_statistics_hint =>
      'Lese- und Wiedergabezeit, Zeichenanzahl, Nachschlage- und Mining-Zähler';
  @override
  String get interconnect_share_favorites => 'Favoriten teilen';
  @override
  String get interconnect_share_favorites_hint =>
      'Favorisierte Wörter und Sätze, einschließlich Aufheben der Favorisierung';
  @override
  String get interconnect_share_section => 'Mit gekoppelten Geräten teilen';
  @override
  String get interconnect_share_section_footer =>
      'Diese werden in beide Richtungen mit dem gekoppelten Gerät zusammengeführt und sind standardmäßig aktiviert. Das Deaktivieren stoppt sowohl das Senden als auch das Empfangen.';
  @override
  String get game_hook_mining_no_session_lines =>
      'Noch keine erfassten Zeilen, daher kann diese Karte nirgends zugeordnet werden. Wählen Sie einen anderen Text-Thread im Arbeitsbereich.';
  @override
  String get shortcut_action_manga_pan_up => 'Nach oben schwenken';
  @override
  String get shortcut_action_manga_pan_down => 'Nach unten schwenken';
  @override
  String get shortcut_action_manga_pan_left => 'Nach links schwenken';
  @override
  String get shortcut_action_manga_pan_right => 'Nach rechts schwenken';
  @override
  String get drag_drop_folder_source_added =>
      'Ordner als Bibliotheksquelle hinzugefügt und gescannt.';
  @override
  String get drag_drop_folder_source_exists =>
      'Dieser Ordner ist bereits eine Bibliotheksquelle.';
  @override
  String get sync_pair_invalid_url => 'Ungültiges Adressformat';
  @override
  String get sync_pair_peer_requires_https =>
      'Dieses Gerät akzeptiert nur HTTPS. Verwenden Sie eine https://-Adresse.';
  @override
  String get sync_pair_peer_not_https =>
      'Das Gerät verwendet auf diesem Port kein HTTPS. Verwenden Sie eine http://-Adresse.';
  @override
  String get sync_pair_not_fushi_discovered =>
      'Kein Fushi-Gerät unter dieser Adresse gefunden.';
  @override
  String get shortcut_action_popup_play_audio => 'Wort-Audio abspielen';
  @override
  String get sync_progress_asset_transfer => 'Übertragung wird vorbereitet';
  @override
  String get sync_asset_dictionary_upload => 'Wörterbücher hochladen';
  @override
  String get sync_asset_dictionary_download => 'Wörterbücher herunterladen';
  @override
  String get sync_asset_local_audio_upload =>
      'Lokale Audiodatenbanken hochladen';
  @override
  String get sync_asset_local_audio_download =>
      'Lokale Audiodatenbanken herunterladen';
  @override
  String get sync_asset_upload_hint =>
      'Sendet, was dieses Gerät hat und das entfernte nicht. Pakete können groß sein.';
  @override
  String get sync_asset_upload_action => 'Hochladen';
  @override
  String get sync_asset_download_action => 'Herunterladen';
  @override
  String get sync_asset_download_hint =>
      'Holt, was das entfernte Gerät hat und dieses nicht – einschließlich lokal gelöschter Einträge.';
  @override
  String get sync_asset_legacy_notice_title =>
      'Wörterbuch- und Audio-Synchronisation ist jetzt manuell';
  @override
  String get sync_asset_legacy_notice_body =>
      'Auf diesem Gerät war die automatische Synchronisation für Wörterbücher und lokale Audiodatenbanken aktiviert. Dieser Schalter existiert nicht mehr – verwenden Sie die Hochladen-/Herunterladen-Aktionen unten, wenn Sie sie übertragen möchten. Nichts wurde gelöscht, aber neue Wörterbücher werden nicht mehr automatisch gesichert.';
  @override
  String get sync_asset_legacy_notice_dismiss => 'Verstanden';
  @override
  String get download_task_add => 'Aufgabe hinzufügen';
  @override
  String get download_task_add_pick_torrent => 'Torrent-Datei auswählen';
  @override
  String get download_task_add_title_label => 'Titel';
  @override
  String get download_task_add_content_kind => 'Inhaltstyp';
  @override
  String get download_task_add_invalid =>
      'Nicht erkannter Magnet-Link oder Torrent-Datei';
  @override
  String get download_task_add_submitted => 'Aufgabe hinzugefügt';
  @override
  String get download_task_search_hint => 'Aufgaben durchsuchen';
  @override
  String get download_task_sort_created => 'Hinzugefügt am';
  @override
  String get download_task_sort_progress => 'Fortschritt';
  @override
  String get download_task_sort_status => 'Status';
  @override
  String get download_task_no_match => 'Keine passenden Aufgaben';
  @override
  String subtitle_version_episode_count({required Object n}) => '${n} Episoden';
  @override
  String subtitle_version_unnumbered_count({required Object n}) =>
      '${n} unnummeriert';
  @override
  String get subtitle_version_ai_translated => 'KI-übersetzt';
  @override
  String get subtitle_version_content_language => 'Inhalt';
  @override
  String get subtitle_version_show_files => 'Dateien anzeigen';
  @override
  String get subtitle_version_view_files => 'Dateiliste';
  @override
  String get resource_version_batch => 'Sammelpaket';
  @override
  String get resource_version_view_flat => 'Alle Veröffentlichungen';
  @override
  String get subscription_mode_one_shot => 'Einmalig';
  @override
  String get subscription_mode_ongoing => 'Fortlaufend';
  @override
  String get subscription_legacy_badge => 'Altbestand';
  @override
  String get subscription_legacy_hint =>
      'Aus dem alten System importiert; automatische Prüfungen gelten nicht.';
  @override
  String subscription_next_check({required Object time}) =>
      'Nächste Prüfung: ${time}';
  @override
  String subscription_last_matched({required Object time}) =>
      'Letzter Treffer: ${time}';
  @override
  String get subscription_item_status_discovered => 'Ausstehend';
  @override
  String get subscription_item_status_queued => 'In Warteschlange';
  @override
  String get subscription_item_status_processed => 'Importiert';
  @override
  String get subscription_item_status_skipped => 'Übersprungen';
  @override
  String get subscription_item_status_failed => 'Fehlgeschlagen';
  @override
  String get subscription_items_empty =>
      'Noch keine Veröffentlichungen verfolgt';
  @override
  String get subscription_edit_title => 'Abonnement bearbeiten';
  @override
  String get subscription_edit_rule_hint =>
      'Identitäts- und Versionsregeln können hier nicht geändert werden. Abonnieren Sie erneut, um Versionen zu wechseln – der Verlauf bleibt erhalten.';
  @override
  String get subscription_search_hint => 'Abonnements durchsuchen';
  @override
  String get subscription_sort_last_checked => 'Zuletzt geprüft';
  @override
  String get subscription_sort_last_matched => 'Letzter Treffer';
  @override
  String get subscription_show_items => 'Episodenverlauf';
  @override
  String get subscription_sort_created => 'Hinzugefügt am';
  @override
  String get subscription_no_match => 'Keine passenden Abonnements';
  @override
  String get download_subscription_start_episode_invalid =>
      'Geben Sie eine ganze Zahl ein (0 oder größer) oder lassen Sie das Feld leer';
  @override
  String get download_subscription_source_unavailable =>
      'Aktuelles Ziel (nicht verfügbar)';
  @override
  String resource_version_episode_count({required Object n}) => '${n} Episoden';
  @override
  String get resource_version_show_files => 'Dateien anzeigen';
  @override
  String get manga_online_detail_load_failed =>
      'Dieser Manga konnte nicht geladen werden.';
  @override
  String get manga_online_error_view_detail => 'Details anzeigen';
  @override
  String get discovery_sources_unavailable =>
      'Alle Quellen sind nicht verfügbar';
  @override
  String get font_target_game_lookup => 'Schrift für Spiel-Nachschlagefenster';
  @override
  String get gal_hook_text_font => 'Schrift für Spiel-Nachschlagefenster';
  @override
  String get gal_hook_text_font_hint =>
      'Wählen Sie Schriften aus der verwalteten Schriftbibliothek. Die erste aktivierte Schrift wird verwendet.';
  @override
  String get gal_hook_text_letter_spacing => 'Zeichenabstand';
  @override
  String get gal_hook_text_letter_spacing_hint =>
      'Abstand zwischen Zeichen anpassen, ohne die Nachschlage-Treffererkennung zu beeinflussen.';
  @override
  String get gal_hook_text_line_height => 'Zeilenhöhe';
  @override
  String get gal_hook_text_line_height_hint =>
      'Den vertikalen Abstand umbrochener Zeilen anpassen.';
  @override
  String get gal_hook_text_bold => 'Fettschrift';
  @override
  String get gal_hook_text_bold_hint =>
      'Halbfetten Text für bessere Lesbarkeit über Spielgrafiken verwenden.';
  @override
  String get gal_hook_text_alignment => 'Textausrichtung';
  @override
  String get gal_hook_text_alignment_center => 'Zentriert';
  @override
  String get gal_hook_text_alignment_left => 'Links';
  @override
  String get gal_hook_text_color => 'Textfarbe';
  @override
  String get gal_hook_overlay_legibility_section => 'Fenster und Lesbarkeit';
  @override
  String get gal_hook_text_background_color => 'Fensterhintergrundfarbe';
  @override
  String get gal_hook_text_background_opacity => 'Fensterhintergrund-Deckkraft';
  @override
  String get gal_hook_text_background_opacity_hint =>
      'Auf 0 % setzen für ein transparentes Fenster im Desktop-Lyrics-Stil.';
  @override
  String get gal_hook_text_outline_color => 'Umrissfarbe';
  @override
  String get gal_hook_text_outline_width => 'Umrissbreite';
  @override
  String get gal_hook_text_outline_width_hint =>
      'Auf 0 setzen, um den Umriss zu deaktivieren; der dezente Schatten bleibt erhalten.';
  @override
  String get gal_hook_text_padding => 'Horizontaler Textabstand';
  @override
  String get gal_hook_text_padding_hint =>
      'Text von den Fensterrändern und dem Größenänderungsgriff fernhalten.';
  @override
  String get gal_hook_text_corner_radius => 'Fenster-Eckenradius';
  @override
  String get gal_hook_text_corner_radius_hint =>
      'Den Eckenradius des Hintergrunds anpassen.';
  @override
  String get storage_shaders_delete_anime4k => 'Anime4K-Shader löschen';
  @override
  String get video_jimaku_series_lookup_degraded =>
      'Die Serie konnte diesmal nicht auf AniList bestätigt werden, daher stammen diese Ergebnisse aus einer einfachen Titelsuche und können andere Staffeln derselben Serie enthalten.';
  @override
  String get dict_style_tab_visual => 'Visuell';
  @override
  String get dict_style_tab_code => 'CSS';
  @override
  String get dict_style_scope_all => 'Alle Wörterbücher';
  @override
  String get dict_style_part_entry_card => 'Eintragskarte';
  @override
  String get dict_style_part_expression => 'Stichwort';
  @override
  String get dict_style_part_ruby => 'Furigana';
  @override
  String get dict_style_part_deinflection_tag => 'Deinflektionskette';
  @override
  String get dict_style_part_frequency => 'Häufigkeit';
  @override
  String get dict_style_part_pitch => 'Tonhöhenakzent';
  @override
  String get dict_style_part_dictionary_label => 'Wörterbuchname';
  @override
  String get dict_style_part_glossary_content => 'Definition';
  @override
  String get dict_style_part_glossary_tag => 'Definitions-Tags';
  @override
  String get dict_style_prop_text_color => 'Textfarbe';
  @override
  String get dict_style_prop_background => 'Hervorhebung';
  @override
  String get dict_style_prop_bold => 'Fett';
  @override
  String get dict_style_prop_italic => 'Kursiv';
  @override
  String get dict_style_prop_underline => 'Unterstrichen';
  @override
  String get dict_style_prop_font_scale => 'Schriftgröße';
  @override
  String get dict_style_prop_corner_radius => 'Eckenradius';
  @override
  String get dict_style_part_reset => 'Teil zurücksetzen';
  @override
  String get dict_style_reset_all => 'Alles zurücksetzen';
  @override
  String get dict_style_global_only => 'Nur für alle Wörterbücher einstellbar';
  @override
  String get dict_style_preview_title => 'Vorschau';
  @override
  String get dict_style_pick_hint =>
      'Tippen Sie auf einen Teil in der Vorschau, um dorthin zu springen';
  @override
  String get dict_style_prop_default => 'Standard';
  @override
  String get dict_style_part_expression_tag => 'Ausdruck-Tags';
  @override
  String get dict_style_prop_on => 'An';
  @override
  String get dict_style_prop_off => 'Aus';
  @override
  String get dict_style_title => 'Wörterbuch-Gestaltung';
  @override
  String get video_source_scrape_anidb_client => 'AniDB-Clientname';
  @override
  String get video_source_scrape_anidb_client_hint =>
      'Registrierter AniDB-HTTP-API-Clientname; leer lassen, um nur den zwischengespeicherten Titelkatalog zu verwenden';
  @override
  String get video_source_scrape_anidb_client_version => 'AniDB-Clientversion';
  @override
  String get video_source_scrape_anidb_client_version_hint =>
      'Positive, bei AniDB registrierte Version; die HTTP-API bleibt deaktiviert, bis beide Felder gültig sind';
  @override
  String get video_scrape_view_source => 'Quelldetails anzeigen';
  @override
  String get video_setting_auto_scrape_hint =>
      'Videometadaten nach Bibliotheksscans automatisch identifizieren und abrufen';
  @override
  String get video_resource_identity_provider => 'Ressourcen-Identitätsquelle';
  @override
  String get video_source_scrape_clear_all => 'Alle Scrape-Einträge löschen';
  @override
  String get video_source_scrape_clear_all_hint =>
      'Alle Video-Scrape-Metadaten sowie von Fushi generierte Cover und NFO-Dateien entfernen.';
  @override
  String get video_source_scrape_clear_all_confirm_title =>
      'Alle Video-Scrape-Einträge löschen?';
  @override
  String get video_source_scrape_clear_all_confirm_body =>
      'Dies entfernt alle gescrapten Metadaten und Quellzuordnungen, leert die Serien-Ergebnisse und löscht unveränderte, von Fushi generierte Cover und NFO-Dateien. Videodateien, Bibliothekseinträge, Gruppen, Wiedergabefortschritt, Untertitel, Tags, manuell ausgewählte Cover und vom Benutzer bearbeitete Sidecar-Dateien bleiben erhalten. Dies kann nicht rückgängig gemacht werden.';
  @override
  String get video_source_scrape_clear_all_confirm_action => 'Löschen';
  @override
  String get video_source_scrape_clear_all_completed =>
      'Alle Video-Scrape-Einträge wurden gelöscht.';
  @override
  String get video_source_scrape_clear_all_completed_protected =>
      'Scrape-Einträge wurden gelöscht. Geänderte oder nicht verifizierbare Sidecar-Dateien wurden beibehalten.';
  @override
  String get video_source_scrape_clear_all_busy =>
      'Ein Video-Scan oder Scrape läuft noch. Versuchen Sie es erneut, wenn er abgeschlossen ist.';
  @override
  String get video_source_scrape_clear_all_failed =>
      'Scrape-Einträge konnten nicht vollständig gelöscht werden. Keine unverifizierten Benutzerdateien wurden gelöscht.';
  @override
  String get video_source_scrape_clear_all_in_progress =>
      'Eine Scrape-Bereinigung läuft bereits.';
  @override
  String get game_session_japanese_locale => 'Japanische Gebietseinstellung';
  @override
  String get game_session_japanese_locale_hint =>
      'Das Spiel wurde unter einer japanischen (CP932) Gebietseinstellung gestartet. Wenn der Text verstümmelt aussieht oder ein Skriptfehler auftritt, setzen Sie die japanische Gebietseinstellung dieses Spiels auf „Nie".';
  @override
  String get onboarding_anki_intro_body =>
      'Anki ist eine kostenlose Lernkarten-App mit verteilter Wiederholung: Neue Wörter werden zu Karten, und Wiederholungen werden entlang der Vergessenskurve geplant. Nach dem Nachschlagen kann Fushi das Wort mit einem Tipp in eine Anki-Karte verwandeln – mit Bedeutung, Satz, Audio und Screenshot.';
  @override
  String get onboarding_anki_setup_desktop_hint =>
      'Installieren Sie die Anki-Desktop-App und fügen Sie dann das AnkiConnect-Add-on hinzu: Öffnen Sie in Anki Werkzeuge – Add-ons – Add-ons herunterladen und geben Sie den Code 2055492159 ein. Lassen Sie Anki beim Erstellen von Karten geöffnet.';
  @override
  String get onboarding_anki_setup_ios_hint =>
      'Mit installiertem AnkiMobile funktioniert das Hinzufügen von Karten sofort. Für den vollen Funktionsumfang verbinden Sie sich über AnkiConnect mit Anki auf einem Computer im selben Netzwerk.';
  @override
  String get onboarding_anki_backend_label => 'Verbindung';
  @override
  String get onboarding_anki_test_action => 'Verbindung testen';
  @override
  String onboarding_anki_test_success({required Object count}) =>
      'Verbunden: ${count} Stapel gefunden';
  @override
  String get onboarding_anki_get_anki_action => 'Anki herunterladen (Desktop)';
  @override
  String get onboarding_anki_get_ankidroid_action => 'AnkiDroid herunterladen';
  @override
  String get onboarding_anki_mobile_ankiconnect_title =>
      'Erweitert: AnkiConnect auf diesem Gerät verwenden';
  @override
  String get onboarding_anki_mobile_ankiconnect_hint =>
      'Dieses Gerät kann auch Karten in Anki erstellen, das auf einem Computer im selben Netzwerk läuft: Aktivieren Sie AnkiConnect in den Kartenerstellungs-Einstellungen und geben Sie die Computeradresse ein.';
  @override
  String get onboarding_anki_setup_android_hint =>
      'Installieren Sie AnkiDroid und öffnen Sie es einmal, um die Ersteinrichtung abzuschließen. Tippen Sie zurück in Fushi bei Ihrer ersten Karte im Berechtigungsdialog auf „Zulassen" – keine AnkiDroid-Einstellungen müssen geändert werden.';
  @override
  String get onboarding_anki_install_addon_action =>
      'AnkiConnect-Add-on installieren';
  @override
  String get onboarding_anki_addon_installed =>
      'AnkiConnect ist installiert. Starten Sie Anki (neu) und tippen Sie dann auf „Verbindung testen".';
  @override
  String get onboarding_anki_addon_no_anki =>
      'Anki-Datenordner nicht gefunden. Installieren Sie Anki und öffnen Sie es einmal, dann versuchen Sie es erneut.';
  @override
  String onboarding_anki_addon_failed({required Object message}) =>
      'Installation fehlgeschlagen: ${message}';
  @override
  String get game_hook_reason_capability_probe_failed =>
      'Die Erfassungskomponente hat die Fähigkeitsprüfung nicht beantwortet. Sie wurde auf dem Datenträger gefunden, konnte aber nicht ausgeführt werden oder hat nicht rechtzeitig geantwortet – möglicherweise blockiert ein Antivirenprogramm sie, Fushi fehlt die Berechtigung zum Starten, oder ein verbleibender Helper-Prozess hängt. Schließen Sie alle Spiele, prüfen Sie die Quarantäne Ihres Antivirenprogramms und versuchen Sie es erneut.';
  @override
  String get download_backend_setup_title => 'Download-Backend einrichten';
  @override
  String get download_backend_setup_intro =>
      'Wähle, welche Engine deine Downloads ausführt. Du kannst das jederzeit in den Download-Einstellungen ändern.';
  @override
  String get download_backend_embedded_hint =>
      'Empfohlen. Downloads laufen direkt in Fushi - nichts weiter zu installieren.';
  @override
  String get download_backend_qb_hint =>
      'Fushi mit einer qBittorrent WebUI verbinden, die du bereits betreibst.';
  @override
  String get download_backend_setup_start => 'Jetzt einrichten';
  @override
  String get download_backend_embedded_unavailable =>
      'In dieser Installation fehlt die Laufzeit der integrierten Engine. Installiere das vollständige Paket neu oder nutze stattdessen ein externes qBittorrent.';
  @override
  String get download_backend_qb_url_invalid =>
      'Gib eine vollständige Adresse ein, z. B. http://127.0.0.1:8080';
  @override
  String get mihon_store_zero_extensions =>
      'Dieses Repository hat 0 Erweiterungen zurückgegeben. Seine Adresse verweist möglicherweise auf einen veralteten Index.';
  @override
  String get mihon_store_edit => 'Repository-URL bearbeiten';
  @override
  String get manga_ocr_download_resume => 'Download fortsetzen';
  @override
  String get manga_ocr_import => 'Lokales Modell importieren';
  @override
  String get manga_ocr_import_title => 'Heruntergeladenes Modell importieren';
  @override
  String get manga_ocr_import_intro =>
      'Wenn der Download in der App nicht durchgeht, lade diese Dateien selbst herunter und importiere sie hier. Ein zip mit diesen Dateien funktioniert ebenfalls.';
  @override
  String get manga_ocr_import_copy_urls => 'Download-Links kopieren';
  @override
  String get manga_ocr_import_urls_copied => 'Download-Links kopiert';
  @override
  String get manga_ocr_import_pick_folder => 'Ordner wählen';
  @override
  String get manga_ocr_import_pick_files => 'Dateien wählen';
  @override
  String get manga_ocr_import_running => 'Wird importiert…';
  @override
  String manga_ocr_import_done({required Object count}) =>
      '${count} Datei(en) importiert';
  @override
  String get manga_ocr_import_matched_nothing =>
      'Keine brauchbaren Modelldateien erkannt';
  @override
  String manga_ocr_import_size_mismatch({
    required Object file,
    required Object expected,
    required Object actual,
  }) =>
      '${file} hat die falsche Größe: erwartet ${expected}, tatsächlich ${actual}';
  @override
  String manga_ocr_import_still_missing({required Object count}) =>
      'Es fehlen weiterhin ${count} Datei(en)';
  @override
  String get manga_ocr_import_failed => 'Modellimport fehlgeschlagen';
  @override
  String get manga_tap_ocr_notice_title => 'Zum Erkennen tippen';
  @override
  String get manga_tap_ocr_notice_body =>
      'Diese Seite hat noch keine Textdaten. Fushi erkennt sie mit der OCR-Engine, die du in den Einstellungen gewählt hast; danach kannst du Wörter antippen, um sie nachzuschlagen. Unter Einstellungen › Manga-OCR kannst du die Engine wechseln oder dieses Verhalten abschalten.';
  @override
  String get manga_tap_ocr_notice_confirm => 'Jetzt erkennen';
  @override
  String get manga_tap_ocr_running => 'Seite wird erkannt…';
  @override
  String get manga_tap_to_ocr => 'Zum Erkennen tippen';
  @override
  String get manga_tap_to_ocr_desc =>
      'Tippe auf eine noch nicht erkannte Sprechblase, um die Seite zu erkennen und Wörter direkt nachzuschlagen.';
  @override
  String get manga_ocr_engine_system => 'Geräte-OCR';
  @override
  String get manga_ocr_engine_system_desc =>
      'Nutzt die Texterkennung deines Geräts. Kein Download, vollständig offline, nichts wird hochgeladen — bei senkrechten Sprechblasen und Handschrift aber deutlich schwächer als das lokale Modell.';
  @override
  String get manga_ocr_engine_system_unavailable =>
      'Auf diesem Gerät ist keine integrierte Texterkennung verfügbar';
  @override
  String get manga_tap_ocr_online_lens_only =>
      'Online-Kapitel liegen nicht lokal vor, daher kann sie nur Google Lens lesen — das Seitenbild wird zu Google hochgeladen.';
  @override
  String get settings_destination_services => 'Onlinedienste';
  @override
  String get settings_destination_services_summary =>
      'Drittanbieter-APIs, Indexer und Medienserver';
  @override
  String get section_services_subtitles => 'Untertitelquellen';
  @override
  String get section_services_resources => 'Ressourcen-Indexer';
  @override
  String get section_services_metadata => 'Metadaten-Scraping';
  @override
  String get settings_services_link_subtitle =>
      'Jimaku, OpenSubtitles, Torznab, Jellyfin, AniDB und TMDB werden hier gemeinsam konfiguriert';
  @override
  String get game_hook_btn_replay => 'Stimme dieser Zeile erneut abspielen';
  @override
  String get game_hook_btn_recapture => 'Stimme neu aufnehmen';
  @override
  String get game_hook_btn_follow => 'Neuen Zeilen folgen';
  @override
  String get game_hook_btn_passthrough => 'Klicks zum Spiel durchreichen';
  @override
  String get game_hook_btn_transparency => 'Hintergrund umschalten';
  @override
  String get game_hook_btn_lock => 'Position sperren';
  @override
  String get game_hook_btn_workbench => 'Aufnahme-Werkbank öffnen';
  @override
  String get game_hook_btn_topmost => 'Immer im Vordergrund';
  @override
  String get game_hook_btn_close => 'Overlay schließen';
  @override
  String get video_jimaku_search_failed => 'Untertitelsuche fehlgeschlagen';
  @override
  String video_subtitle_error_with_code({
    required Object msg,
    required Object code,
  }) => '${msg} (HTTP ${code})';
  @override
  String get manga_rescan_run => 'Ausgewählten Bereich neu erkennen';
  @override
  String get manga_rescan_failed =>
      'Neuerkennung des ausgewählten Bereichs fehlgeschlagen';
  @override
  String get manga_rescan_region_updated =>
      'Ausgewählter Bereich neu erkannt und in die Seite übernommen';
  @override
  String get manga_ocr_mobile_note =>
      'Auf Mobilgeräten versorgen diese Modelle die lokale Engine für Ganzband-, Tipp- und Bereichs-OCR im Manga-Reader.';
  @override
  String get manga_rescan_hint =>
      'Ziehe einen Rahmen über den Text, der neu erkannt werden soll. Das Ergebnis ersetzt die vorhandene Textebene innerhalb des Rahmens.';
  @override
  String get manga_rescan_undone =>
      'Textebene von vor der Neuerkennung wiederhergestellt';
  @override
  String get manga_rescan_undo_failed =>
      'Die vorherige Textebene konnte nicht wiederhergestellt werden';
  @override
  String get module_tool_toggle_hint =>
      'Diesen Tab in der Navigationsleiste anzeigen; ausschalten, um ihn auszublenden';
  @override
  String get module_downloads_hidden_hint =>
      'Der Tab „Downloads“ ist unter Einstellungen → Erscheinungsbild → Funktionsmodule ausgeblendet; schalte ihn wieder ein, um Abos zu verwalten.';
  @override
  String get book_file_location_open => 'Speicherort öffnen';
  @override
  String get book_file_location_failed =>
      'Der Speicherort dieses Buchs konnte nicht geöffnet werden.';
  @override
  String storage_entry_database_snapshots_label({required Object n}) =>
      'Datenbank-Backup-Snapshots (${n} Dateien)';
  @override
  String get storage_entry_delete_database_snapshots_confirm_body =>
      'Damit werden alle übrig gebliebenen Datenbank-Backup-Snapshots entfernt (corrupt-bak / pre-restore / alte Migrationskopien). Die aktive Datenbank und ihre -wal/-shm-Begleitdateien bleiben unangetastet.';
  @override
  String get manga_global_search_no_sources =>
      'Noch keine aktivierten Manga-Quellen. Füge eine im Tab „Importieren“ hinzu.';
  @override
  String get manga_global_search_open_sources => 'Zum Import';
  @override
  String get settings_downloads_open_page_hint =>
      'Download-Seite öffnen (Aufgaben, Ressourcen, Abos)';
  @override
  String get download_video_source_required => 'Videoquelle erforderlich';
  @override
  String get game_hook_reason_stale_session =>
      'Eine frühere Aufnahmesitzung wurde noch nicht freigegeben; Fushi versucht es von selbst erneut, du musst nichts tun.';
  @override
  String get video_subtitle_delete => 'Untertiteldatei löschen';
  @override
  String video_subtitle_delete_confirm({required Object path}) =>
      'Diese Untertiteldatei von der Festplatte löschen? Das kann nicht rückgängig gemacht werden.\n${path}';
  @override
  String video_subtitle_deleted({required Object label}) =>
      'Untertiteldatei gelöscht: ${label}';
  @override
  String video_subtitle_delete_failed({required Object label}) =>
      'Untertiteldatei konnte nicht gelöscht werden: ${label}';
  @override
  String get shortcut_action_manga_toggle_chrome =>
      'Manga-Oberfläche umschalten';
  @override
  String get manga_interface_hide => 'Oberfläche ausblenden';
  @override
  String get manga_interface_show => 'Oberfläche einblenden';
  @override
  String get gal_hook_text_vertical_alignment => 'Vertikale Ausrichtung';
  @override
  String get gal_hook_text_vertical_alignment_center => 'Mittig';
  @override
  String get gal_hook_text_vertical_alignment_top => 'Oben';
  @override
  String get storage_entry_external_audio_hint =>
      'Audio verweist auf die Originaldateien und belegt keinen App-Speicher';
  @override
  String get jellyfin_auto_list_title =>
      'Beim Öffnen von Video automatisch auflisten';
  @override
  String get jellyfin_auto_list_hint =>
      'Aus: Beim Öffnen der Videoseite geht keine Anfrage an den Medienserver; ziehe in der Videobibliothek zum Aktualisieren, um manuell aufzulisten. Empfohlen für sehr große Server, wo automatisches Auflisten wie Scraping aussieht und die Missbrauchserkennung auslösen kann.';
  @override
  String get jellyfin_libraries_title => 'Aufzulistende Bibliotheken';
  @override
  String get jellyfin_libraries_hint =>
      'Nichts auswählen listet jede Videobibliothek auf. Auf die Bibliotheken zu beschränken, die du wirklich schaust, verhindert, dass riesige Server komplett durchlaufen werden.';
  @override
  String get jellyfin_libraries_load_failed =>
      'Bibliotheksliste konnte nicht geladen werden';
  @override
  String get video_filter_series => 'Serie';
  @override
  String get video_filter_series_in => 'In einer Serie';
  @override
  String get video_filter_series_standalone => 'Nicht in einer Serie';
  @override
  String get manga_source_cloudflare_verify_title => 'Website-Überprüfung';
  @override
  String get manga_source_cloudflare_verify_hint =>
      'Schließe die Cloudflare-Prüfung unten ab. Der Ladevorgang wird nach dem Bestehen automatisch fortgesetzt.';
  @override
  String get db_cannot_open_title => 'Datenspeicherort nicht verfügbar';
  @override
  String get db_cannot_open_message =>
      'Fushi konnte seine Datenbank am konfigurierten Datenspeicherort nicht öffnen oder anlegen. Nichts ist beschädigt – der Ordner fehlt möglicherweise, ist schreibgeschützt oder liegt auf einem getrennten Laufwerk. Prüfe den Datenspeicherort unter Einstellungen oder starte neu, um den Standardspeicherort zu verwenden.';
  @override
  String get anki_error_field_mapping_mismatch =>
      'Keine deiner Feldzuordnungen passt zum ausgewählten Notiztyp, deshalb hat Anki die Karte abgelehnt. Öffne die Anki-Einstellungen, um die Felder neu zuzuordnen, oder verwende „Lapis-Stapel erstellen“.';
  @override
  String get anki_error_first_field_empty =>
      'Das erste Feld des ausgewählten Notiztyps ist leer, und Anki lehnt eine solche Notiz ab. Ordne ihm in den Anki-Einstellungen ein Feld zu.';
  @override
  String get storage_category_cache => 'Zwischenspeicher und temporäre Dateien';
  @override
  String get storage_category_other => 'Sonstiges, nicht zugeordnet';
  @override
  String get collection_export_pick_source => 'Quelle auswählen';
  @override
  String get collection_export_all_sources => 'Alle Quellen';
  @override
  String get video_subtitle_list_search => 'Untertitel durchsuchen';
  @override
  String get video_subtitle_list_search_hint => 'Tippen, um Zeilen zu filtern';
  @override
  String get video_subtitle_list_search_empty => 'Keine passende Zeile';
  @override
  String get video_subtitle_list_export_favorites =>
      'Favorisierte Zeilen exportieren';
  @override
  String get shortcut_action_video_search_subtitle_list =>
      'Untertitelliste durchsuchen';
  @override
  String get game_hook_code_paste_title => 'Hook-Code einfügen';
  @override
  String get game_hook_code_paste_hint =>
      'Füge den rohen Code ein, z. B. /HQN4@4CE90:game.exe';
  @override
  String get game_hook_code_paste_body =>
      'Der Code wird an die ausführbare Datei des laufenden Spiels gebunden, damit Fushi ihn beim nächsten Mal wiederverwenden kann.';
  @override
  String get game_hook_code_paste_saved =>
      'Hook-Code für dieses Spiel gespeichert';
  @override
  String get game_hook_code_paste_invalid =>
      'Das sieht nicht nach einem Hook-Code aus';
  @override
  String get game_hook_code_label => 'Bezeichnung (optional)';
  @override
  String get discovery_game_type_all => 'Alle';
  @override
  String get discovery_game_type_raw => 'Unübersetzt';
  @override
  String get discovery_game_type_translated => 'Übersetzt';
  @override
  String get discovery_game_type_mobile => 'Mobil';
  @override
  String get discovery_game_type_unlabelled => 'Ohne Kennzeichnung';
  @override
  String get game_library_downloading => 'Wird heruntergeladen';
  @override
  String get game_library_download_queued => 'In Warteschlange';
  @override
  String get game_library_download_retrying => 'Erneuter Versuch';
  @override
  String get delete_disclosure_audio_source_files =>
      'Die Original-Audiodateien, die Sie importiert haben';
  @override
  String get delete_local_files => 'Lokale Dateien ebenfalls löschen';
  @override
  String get delete_local_files_video_desc =>
      'Die Videodatei wird von diesem Gerät entfernt und der zugehörige Download-Auftrag ebenfalls gelöscht. Das lässt sich nicht rückgängig machen.';
  @override
  String get delete_local_files_audio_desc =>
      'Die ursprünglichen Audiodateien werden von diesem Gerät entfernt; die Original-Buch- und Untertiteldateien bleiben erhalten. Das lässt sich nicht rückgängig machen.';
  @override
  String get delete_disclosure_book_source_kept =>
      'Die von dir importierten Original-Buch- und Untertiteldateien';
  @override
  String get download_task_delete_files_failed =>
      'Die heruntergeladenen Daten konnten nicht gelöscht werden; der Download-Dienst hat es nicht bestätigt';
  @override
  String delete_local_files_failed({required Object n}) =>
      '${n} lokale Datei(en) konnten nicht gelöscht werden; sie sind möglicherweise noch in Benutzung';
  @override
  String batch_hidden_by_filter_note({required Object n}) =>
      'Weitere ${n} ausgewählte Elemente sind durch den aktuellen Filter ausgeblendet und werden nicht bearbeitet.';
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
  String get download_direct_queue_section => 'Direct downloads';
  @override
  String get download_task_kind_all => 'All types';
  @override
  String get download_task_kind_filter => 'Filter by type';
  @override
  String get manga_online_series_empty => 'Diese Serie enthält keine Bände.';
  @override
  String sync_peer_book_delete_confirm({required Object name}) =>
      '„${name}“ vom Partnergerät löschen? Die dortigen Dateien und der Lesefortschritt werden endgültig entfernt, und auf diesem Gerät liegt keine Kopie. Dies kann nicht rückgängig gemacht werden.';
  @override
  String sync_peer_video_delete_confirm({required Object name}) =>
      '„${name}“ aus der Bibliothek des Partnergeräts entfernen? Die vom Partner selbst importierte Videodatei bleibt erhalten. Dies kann nicht rückgängig gemacht werden.';
  @override
  String get storage_entry_delete_files_confirm_body =>
      'Wird sofort von der Festplatte gelöscht. Nichts in deiner Bibliothek verweist darauf – es sind zwischengespeicherte, exportierte oder erneut herunterladbare Daten.';
  @override
  String get manga_series_refresh => 'Kapitel aktualisieren';
  @override
  String get manga_series_refresh_failed =>
      'Aktualisierung von der Quelle fehlgeschlagen';
  @override
  String get manga_series_source_disabled =>
      'Diese Quelle ist nicht installiert oder deaktiviert';
  @override
  String get manga_series_platform_unsupported =>
      'Diese Quelle ist auf dieser Plattform nicht verfügbar';
  @override
  String get manga_series_offline_hint =>
      'Es werden die auf diesem Gerät gespeicherten Kapitel angezeigt';
  @override
  String get manga_series_no_chapters => 'Noch keine Kapitel';
  @override
  String get manga_series_all_read => 'Alle Kapitel wurden gelesen';
  @override
  String get manga_series_sort_newest => 'Neueste zuerst';
  @override
  String get manga_series_sort_oldest => 'Älteste zuerst';
  @override
  String get manga_series_unread_only => 'Nur ungelesene';
  @override
  String get manga_series_mark_read => 'Als gelesen markieren';
  @override
  String get manga_series_mark_unread => 'Als ungelesen markieren';
  @override
  String get manga_series_mark_previous_read =>
      'Dieses und ältere als gelesen markieren';
  @override
  String get manga_series_local_volume => 'Lokaler Band';
  @override
  String get manga_series_volume_info => 'Band';
  @override
  String get manga_series_page_count => 'Seiten';
  @override
  String get manga_series_chapters_action => 'Kapitel';
  @override
  String get manga_series_next_chapter => 'Nächstes Kapitel';
  @override
  String get manga_series_previous_chapter => 'Vorheriges Kapitel';
  @override
  String get manga_series_last_chapter_reached => 'Das ist das neueste Kapitel';
  @override
  String get manga_series_first_chapter_reached => 'Das ist das erste Kapitel';
  @override
  String get manga_series_open_series => 'Werkseite';
  @override
  String manga_series_read_progress({
    required Object page,
    required Object total,
  }) => 'Bis Seite ${page} von ${total} gelesen';
  @override
  String manga_series_read_progress_partial({required Object page}) =>
      'Bis Seite ${page} gelesen';
  @override
  String mihon_store_extension_count({required Object count}) =>
      '${count} Erweiterungen';
  @override
  String mihon_extension_sources_more({required Object count}) =>
      'Alle ${count} Quellen anzeigen';
  @override
  String get mihon_extension_sources_less => 'Weniger Quellen anzeigen';
  @override
  String get options_website => 'Offizielle Website besuchen';
  @override
  String get video_setting_mpv_group_hdr => 'HDR';
  @override
  String get video_setting_hdr_tone_mapping => 'HDR-Tonemapping';
  @override
  String get video_setting_hdr_tone_mapping_hint =>
      'Kurve, mit der eine HDR-Quelle auf ein SDR-Display gebracht wird. „Automatisch“ überlässt mpv die Wahl je Quelle.';
  @override
  String get video_setting_hdr_compute_peak =>
      'Dynamische Spitzenwerterkennung';
  @override
  String get video_setting_hdr_compute_peak_hint =>
      'Misst die echte Spitzenhelligkeit jedes Bildes, statt den Metadaten der Quelle zu vertrauen. Bessere Lichter, kostet etwas GPU-Leistung.';
  @override
  String get video_setting_hdr_auto => 'Automatisch';
  @override
  String get video_setting_hdr_on => 'An';
  @override
  String get video_setting_hdr_off => 'Aus';
  @override
  String get video_discovery_cancel_downloads_title => 'Downloads abbrechen?';
  @override
  String video_discovery_cancel_downloads_body({required Object n}) =>
      '${n} Download-Aufgabe(n) für diesen Titel werden gestoppt. Bereits geladene Teile bleiben auf der Festplatte; du kannst den Download später erneut starten.';
  @override
  String get video_discovery_cancel_downloads_failed =>
      'Download konnte nicht abgebrochen werden. Die Aufgabe ist möglicherweise schon fertig, oder das Download-Backend ist nicht verfügbar.';
  @override
  String get gal_hook_click_lookup => 'Wort antippen zum Nachschlagen';
  @override
  String get gal_hook_click_lookup_hint =>
      'Aus bedeutet, dass Klicks auf den Text nie ein Nachschlagen auslösen – praktisch bei aktiviertem Durchklicken, wenn du nicht versehentlich ein Wort treffen willst.';
  @override
  String get gal_hook_lookup_trigger => 'Auslöser fürs Nachschlagen';
  @override
  String get gal_hook_lookup_trigger_hint =>
      'Welche Maustaste das Wort unter dem Zeiger nachschlägt. Unabhängig vom Schalter oben: Du kannst Tippen-zum-Nachschlagen ausschalten und trotzdem mit einer Seitentaste nachschlagen.';
  @override
  String get gal_hook_lookup_trigger_left => 'Left click';
  @override
  String get gal_hook_lookup_trigger_middle => 'Middle click';
  @override
  String get gal_hook_lookup_trigger_side => 'Side button';
  @override
  String get gal_hook_toolbar_auto_hide =>
      'Werkzeugleiste automatisch ausblenden';
  @override
  String get gal_hook_toolbar_auto_hide_hint =>
      'Blendet die Leiste aus, bis der Zeiger den Textkasten erreicht – wie bei LunaHook. Ausgeblendet heißt wirklich weg: Diese Pixel gehören wieder dem Spiel.';
  @override
  String get gal_hook_passthrough_blocks_mouse =>
      'Text nimmt Klicks trotz Durchklicken an';
  @override
  String get gal_hook_passthrough_blocks_mouse_hint =>
      'An: Textzeilen nehmen weiter Klicks an, du kannst also ein Wort antippen. Aus: Das gesamte Overlay ist für die Maus durchlässig – du klickst, was darunter liegt, aber Wörter antippen geht nicht mehr.';
  @override
  String get floating_lyric_topmost => 'Immer im Vordergrund';
  @override
  String get gal_hook_fold_progressive_lines =>
      'Aufgeteilte Dialogzeilen zusammenfassen';
  @override
  String get gal_hook_fold_progressive_lines_hint =>
      'Manche Engines zeichnen bei jedem Klick die ganze Zeile neu, sodass eine Zeile mehrfach erfasst wird. Diese Schnappschüsse zu einer Zeile zusammenfalten.';
  @override
  String get gal_hook_ingame_lookup_engine_unsupported =>
      'Diese Spiel-Engine unterstützt die Suche im Spiel noch nicht';
  @override
  String get gal_hook_ingame_lookup_version_unsupported =>
      'Diese Spielversion steht noch nicht auf der Liste der unterstützten Versionen';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copy =>
      'SHA-256 der Spieldatei kopieren';
  @override
  String get gal_hook_ingame_lookup_exe_hash_unavailable =>
      'Die Spieldatei konnte nicht gelesen werden';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copied =>
      'SHA-256 der Spieldatei kopiert';
  @override
  String get download_tracker_section => 'Tracker-Abonnement';
  @override
  String get download_tracker_auto_add =>
      'Abonnierte Tracker automatisch zu neuen Downloads hinzufügen';
  @override
  String get download_tracker_auto_add_hint =>
      'Die Liste wird 6 Stunden zwischengespeichert. Ein fehlgeschlagenes Abonnement blockiert den Download nicht.';
  @override
  String get download_tracker_url => 'Abonnement-URL';
  @override
  String get download_tracker_refresh => 'Tracker abrufen';
  @override
  String get download_tracker_preview_empty =>
      'Rufe das Abonnement ab, um die unterstützten HTTP-, HTTPS- und UDP-Tracker anzuzeigen.';
  @override
  String download_tracker_preview_count({required Object count}) =>
      '${count} Tracker abgerufen';
  @override
  String download_tracker_fetch_failed({required Object message}) =>
      'Tracker konnten nicht abgerufen werden: ${message}';
  @override
  String get anki_connect_port_auto_fix => 'Auf freien Port wechseln';
  @override
  String get anki_connect_port_auto_fix_hint =>
      'Wählt einen freien Port und trägt ihn sowohl in Hibiki als auch in die AnkiConnect-Add-on-Konfiguration ein. Starte Anki neu, damit es wirkt.';
  @override
  String anki_connect_port_auto_fix_done({required Object port}) =>
      'AnkiConnect nutzt jetzt Port ${port}. Starte Anki neu und versuche es erneut.';
  @override
  String anki_connect_port_auto_fix_manual({required Object port}) =>
      'Hibiki nutzt jetzt Port ${port}, aber die AnkiConnect-Add-on-Konfiguration wurde nicht gefunden. Setze webBindPort in Anki (Werkzeuge → Add-ons → AnkiConnect → Konfiguration) ebenfalls auf ${port} und starte Anki neu.';
  @override
  String get anki_connect_port_auto_fix_none =>
      'Auf diesem Rechner wurde kein freier Port gefunden.';
  @override
  String get onboarding_action_badge_required => 'Erforderlich';
  @override
  String get onboarding_action_badge_recommended => 'Empfohlen';
  @override
  String get onboarding_action_badge_optional => 'Optional';
  @override
  String get onboarding_pack_action_download_desc =>
      'Lädt das gesamte Paket im Hintergrund herunter und importiert es anschließend. Jederzeit abbrechbar; der Download wird an der Abbruchstelle fortgesetzt.';
  @override
  String get onboarding_pack_action_import_existing_desc =>
      'Das Paket ist bereits heruntergeladen; hier wird es importiert. Wähle im Bestätigungsdialog „Zusammenführen“, dann bleiben deine vorhandenen Daten unangetastet.';
  @override
  String get onboarding_pack_action_pick_desc =>
      'Du hast das Paket-ZIP bereits anderweitig bekommen? Importiere es von der Festplatte und überspringe den Download komplett.';
  @override
  String get onboarding_pack_action_website =>
      'Download-Seite der Website öffnen';
  @override
  String get onboarding_pack_action_website_desc =>
      'Öffnet die offizielle Website im Browser. Im Paket-Abschnitt findest du Teil-Links, die du einem Downloadmanager übergeben kannst; komm danach hierher zurück und importiere das Ergebnis über „Lokale Paketdatei wählen“.';
  @override
  String get onboarding_pack_action_dictionary_desc =>
      'Du lernst eine andere Sprache als Japanisch? Überspring das Paket und importiere hier stattdessen Wörterbücher für deine Sprache.';
  @override
  String get onboarding_pack_action_audio_desc =>
      'Woher die Aussprache-Audios kommen. Japanisch und Englisch deckt das Paket bereits ab; für andere Sprachen fügst du hier Online-Quellen hinzu.';
  @override
  String get onboarding_anki_action_test_desc =>
      'Prüft, ob Fushi Anki erreicht, und lädt deine Stapel und Notiztypen. Es wird noch nichts angelegt.';
  @override
  String get onboarding_anki_action_refresh_desc =>
      'Lädt Stapel und Notiztypen erneut aus Anki. Nutze das, nachdem du in Anki einen neuen Stapel angelegt hast.';
  @override
  String get onboarding_anki_action_get_ankidroid_desc =>
      'Öffnet die Store-Seite von AnkiDroid. Fushi schreibt seine Karten dorthin, es muss also zuerst installiert sein.';
  @override
  String get onboarding_anki_action_get_anki_desc =>
      'Öffnet die Download-Seite von Anki. Installiere Anki und lass es beim Kartenerstellen laufen.';
  @override
  String get onboarding_anki_action_install_addon_desc =>
      'Entpackt das mitgelieferte AnkiConnect-Add-on für dich nach Anki – darüber spricht Fushi mit Anki. Starte Anki danach neu.';
  @override
  String get onboarding_step_anki_action_desc =>
      'Kartenvorlage, Feldzuordnung, Screenshots und Audio: die Details dazu, wie eine erzeugte Karte aussieht. Stapel und Notiztyp oben genügen zum Loslegen – öffne das hier nur, wenn du ändern willst, wie Karten gebaut werden.';
  @override
  String get onboarding_step_backup_action_desc =>
      'Wähle ein Backup-Backend und melde dich an, damit deine Bibliothek einen Geräteverlust oder -wechsel übersteht.';
  @override
  String get onboarding_step_interconnect_action_desc =>
      'Koppelt dieses Gerät mit deinen anderen Geräten, um eine Bibliothek zu teilen und den Fortschritt synchron zu halten.';
  @override
  String get onboarding_step_extension_action_desc =>
      'Zeigt, wie du die Browser-Erweiterung installierst und mit Fushi verbindest, damit du auch auf Webseiten nachschlagen kannst.';
  @override
  String get onboarding_step_fonts_action_desc =>
      'Eigene Schriftdateien hinzufügen und festlegen, welche Schrift jede Sprache verwendet.';
  @override
  String get onboarding_pack_sources_hint =>
      'Wird parallel in Teilstücken gleichzeitig von GitHub, der offiziellen Website und einem Ersatz-Spiegel geladen, jedes Teilstück mit Prüfsumme. Fushi misst die Quellen währenddessen und gibt der aktuell schnellsten mehr Teilstücke – hier gibt es also nichts auszuwählen.';
  @override
  String get video_setting_hdr_output => 'HDR-/10-Bit-Ausgabe';
  @override
  String get video_setting_hdr_output_hint =>
      'Nur Windows. „Automatisch“ reicht HDR-Quellen über ein natives Videofenster direkt an ein HDR-Display weiter; „Immer“ nutzt dieses Fenster für jedes Video (10-Bit-Ausgabe); „Aus“ behält den Standard-Renderer.';
  @override
  String get video_setting_hdr_output_auto => 'Automatisch';
  @override
  String get video_setting_hdr_output_always => 'Immer';
  @override
  String get video_setting_hdr_output_off => 'Aus';
  @override
  String get network_proxy_auto_hint =>
      'Gilt für alle Internetanfragen der App: Updates, Cloud-Sync, Wörterbücher, Downloads, Untertitel und Metadaten. Leer lassen für automatisch: Umgebungsvariablen, dann der aktivierte System-Proxy. P2P-(Torrent-)Übertragungen verbinden sich standardmäßig direkt und lassen sich unten separat aktivieren.';
  @override
  String get network_proxy_hint =>
      'Host:Port, z. B. 127.0.0.1:7890 (nur IPv4/Host)';
  @override
  String get network_proxy_invalid => 'Ungültiger Proxy. Verwende Host:Port';
  @override
  String get network_proxy_label => 'Netzwerk-Proxy';
  @override
  String get section_network => 'Netzwerk';
  @override
  String get network_proxy_p2p_label => 'P2P (torrent) proxy';
  @override
  String get network_proxy_p2p_warning =>
      'Direct by default. Via proxy: all P2P traffic goes through the global proxy — speed may drop, and many proxy providers forbid BitTorrent traffic (throttling, warnings, or account termination). Mixed: tracker requests go through the proxy while DHT and peer connections stay direct — widest peer discovery, but your real IP is visible to trackers, DHT and peers (connectivity only, not privacy). Built-in engine only; external qBittorrent uses its own proxy settings.';
  @override
  String get video_ajatt_settings_hint =>
      'Kostenloses Archiv japanischer Untertitel (kitsunekko-Spiegel). Kein Konto nötig; Untertiteldateien werden von GitHub geladen.';
  @override
  String get video_ajatt_enabled_hint =>
      'Aus bedeutet, dass das AJATT-Archiv bei der Untertitelsuche übersprungen wird.';
  @override
  String get video_subtitle_workbench_title => 'Untertitel';
  @override
  String get video_subtitle_scope_episode => 'Diese Folge';
  @override
  String get video_subtitle_scope_collection => 'Ganze Sammlung';
  @override
  String get video_subtitle_search_open => 'Untertitel online suchen';
  @override
  String get video_subtitle_collection_settings =>
      'Untertitel-Einstellungen der Sammlung';
  @override
  String get video_subtitle_collection_language => 'Standard-Untertitelsprache';
  @override
  String get video_subtitle_collection_language_hint =>
      'Gilt für jede Folge dieser Sammlung. Leer = der Sprache des Videos folgen.';
  @override
  String get video_subtitle_collection_release_group => 'Bevorzugte Version';
  @override
  String get video_subtitle_collection_release_group_hint =>
      'Sammel-Downloads wählen zuerst diese Version, damit die ganze Staffel dasselbe Timing teilt.';
  @override
  String get video_subtitle_collection_release_group_any => 'Beliebige Version';
  @override
  String get video_subtitle_source_label => 'Quelle';
  @override
  String get video_subtitle_collection_members_hint =>
      'Folgen werden anhand der Nummer im Dateinamen zugeordnet; Staffelpakete werden automatisch aufgeteilt.';
  @override
  String get video_subtitle_adjust_title => 'Untertitel anpassen';
  @override
  String get video_subtitle_adjust_collapse => 'Einklappen';
  @override
  String get video_subtitle_adjust_expand => 'Ausklappen';
  @override
  String get settings_section_reading_stats => 'Lesestatistik';
  @override
  String get reading_stats_idle_timeout => 'Inaktivitäts-Timeout';
  @override
  String get reading_stats_idle_timeout_hint =>
      'Lesezeit nach so vielen Minuten ohne Umblättern, Scrollen oder Wortsuche nicht mehr zählen. Gilt nur für Romane, PDFs und Manga; Video zählt, solange es läuft.';
  @override
  String get web_video_track_menu => 'Untertitelspur';
  @override
  String get web_video_track_live => 'Live-Untertitel (von der Seite erfasst)';
  @override
  String get web_video_no_tracks => 'Noch keine Untertitel erfasst';
  @override
  String get web_video_hide_native_subtitles => 'Website-Untertitel ausblenden';
  @override
  String get web_video_import_hint =>
      'Dies ist eine Webseite (kein direkter Stream). Sie wird im integrierten Web-Player geöffnet.';
  @override
  String get web_video_platform_unsupported =>
      'Der integrierte Web-Player ist derzeit nur unter Windows verfügbar.';
  @override
  String get web_video_mine_queue_run => 'Wartende Karten erstellen';
  @override
  String get web_video_mine_queue_stop => 'Kartenerstellung stoppen';
  @override
  String get web_video_mine_queue_empty => 'Keine wartenden Karten';
  @override
  String web_video_mine_queued({required Object count}) =>
      'Für die Kartenerstellung vorgemerkt (${count} ausstehend)';
  @override
  String web_video_mine_queue_running({
    required Object done,
    required Object total,
  }) => 'Karten werden erstellt ${done}/${total}…';
  @override
  String web_video_mine_queue_finished({
    required Object ok,
    required Object failed,
  }) => 'Karten erstellt: ${ok}, fehlgeschlagen: ${failed}';
  @override
  String get web_video_hosting_menu => 'Wiedergabemodus';
  @override
  String get web_video_hosting_builtin =>
      'Integriert (1080p; Hochskalierung, Screenshots und Karten verfügbar)';
  @override
  String get web_video_hosting_windowed =>
      'Natives Fenster (4K, Hardware-DRM; Karten werden später erstellt)';
  @override
  String web_video_mine_switch_builtin({required Object count}) =>
      'In den integrierten Modus wechseln, um ${count} wartende Karten zu erstellen';
  @override
  String get onboarding_step_click_lookup_title => 'Zum Nachschlagen tippen';
  @override
  String get onboarding_click_lookup_tap_title => 'Auf den Text tippen';
  @override
  String get onboarding_click_lookup_nested_title => 'Im Popup weitersuchen';
  @override
  String get onboarding_click_lookup_nested_body =>
      'Tippen Sie in einer Bedeutung auf ein weiteres Wort, um eine tiefere Ebene zu öffnen. Mit Zurück oder einem Tipp außerhalb schließen Sie eine Ebene.';
  @override
  String get onboarding_click_lookup_mine_title =>
      'Das Ergebnis in eine Karte verwandeln';
  @override
  String get onboarding_click_lookup_mine_body =>
      'Wenn die Bedeutung passt, tippen Sie auf +, um Wort, Satz, Audio und Bild an den Kartenersteller zu senden.';
  @override
  String get onboarding_step_global_lookup_title =>
      'Text außerhalb von Fushi nachschlagen';
  @override
  String get onboarding_global_lookup_windows_body =>
      'Unter Windows markieren Sie Text in einer anderen App und rufen das Wörterbuch auf, ohne zu Fushi zurückzuwechseln.';
  @override
  String get onboarding_global_lookup_windows_select_title =>
      'Text in einer beliebigen App markieren';
  @override
  String get onboarding_global_lookup_windows_shortcut_title =>
      'Ctrl+Alt+D drücken';
  @override
  String get onboarding_global_lookup_windows_shortcut_body =>
      'Das ist das voreingestellte globale Tastenkürzel. Fushi übernimmt die aktuelle Auswahl und öffnet eine Nachschlagekarte neben dem Mauszeiger.';
  @override
  String get onboarding_global_lookup_windows_customize_title =>
      'Tastenkürzel bei Bedarf ändern';
  @override
  String get onboarding_global_lookup_windows_customize_body =>
      'Öffnen Sie Einstellungen → Tastenkürzel → Global (außerhalb der App), um eine andere Tastenkombination zuzuweisen.';
  @override
  String get onboarding_global_lookup_windows_action =>
      'Tastenkürzel-Einstellungen öffnen';
  @override
  String get onboarding_global_lookup_windows_action_desc =>
      'Hier ändern Sie das Tastenkürzel zum Nachschlagen außerhalb der App. Die Voreinstellung Ctrl+Alt+D funktioniert bereits, daher ist das optional.';
  @override
  String get onboarding_global_lookup_android_body =>
      'Unter Android übergibt das System markierten Text über das Textmenü oder das Teilen-Menü an Fushi. Ein frei belegbares globales Tastenkürzel gibt es dort nicht.';
  @override
  String get onboarding_global_lookup_android_select_title =>
      'Text in einer anderen App markieren';
  @override
  String get onboarding_global_lookup_android_open_title => 'Fushi auswählen';
  @override
  String get onboarding_global_lookup_android_open_body =>
      'Tippen Sie im Textauswahlmenü auf Fushi. Wird es nicht angezeigt, tippen Sie auf Teilen und wählen Fushi im Teilen-Menü.';
  @override
  String get onboarding_global_lookup_android_continue_title =>
      'Das eigenständige Popup nutzen';
  @override
  String get onboarding_global_lookup_android_continue_body =>
      'Das Nachschlagen öffnet sich getrennt von der Ursprungs-App. Sie können darin weitere Wörter antippen und kehren nach dem Schließen dorthin zurück, wo Sie waren.';
  @override
  String get onboarding_feature_manual_resources =>
      'Wörterbücher und Audio manuell importieren';
  @override
  String get onboarding_feature_manual_resources_hint =>
      'Supplement the recommended pack, or import your own dictionaries, audiobooks, and pronunciation sources';
  @override
  String get onboarding_step_manual_resources_title =>
      'Wörterbücher und Audio manuell vorbereiten';
  @override
  String get onboarding_step_manual_resources_body =>
      'Use this alongside the recommended pack or on its own. Import at least one dictionary before the lookup tutorial; audiobook and pronunciation audio are optional supplements.';
  @override
  String get onboarding_manual_dictionary_action =>
      'Ein Wörterbuch importieren';
  @override
  String get onboarding_manual_dictionary_action_desc =>
      'Öffnen Sie die Wörterbuchverwaltung und importieren Sie mindestens eine unterstützte Wörterbuchdatei oder ein Archiv. Die Nachschlage-Anleitungen bringen erst etwas, wenn eine Abfrage eine Bedeutung liefert.';
  @override
  String get onboarding_manual_audiobook_action =>
      'Ein Buch mit Hörbuch-Audio importieren';
  @override
  String get onboarding_manual_audiobook_action_desc =>
      'Öffnen Sie den Buchimport und wählen Sie das Buch oder den Text, passende Untertitel und eine oder mehrere Audiodateien. Ohne Untertitel kann Fushi das Audio nicht satzweise zuordnen.';
  @override
  String get onboarding_manual_pronunciation_action =>
      'Aussprache-Audio für Wörter einrichten';
  @override
  String get onboarding_manual_pronunciation_action_desc =>
      'Fügen Sie lokale oder Online-Aussprachequellen hinzu, die Wörterbucheinträge verwenden. Das ist unabhängig vom Hörbuch-Audio eines Buchs.';
  @override
  String get onboarding_lookup_verify_action => 'Ein Wort im Wörterbuch prüfen';
  @override
  String get onboarding_lookup_verify_action_desc =>
      'Öffnen Sie das Nachschlagen, geben Sie ein beliebiges Wort ein, das Sie lernen, und fahren Sie erst fort, wenn das installierte Wörterbuch eine Bedeutung liefert. Die Anleitung gibt kein Beispielwort fest vor.';
  @override
  String get onboarding_step_first_anki_card_title =>
      'Ihre erste Anki-Karte erstellen';
  @override
  String get onboarding_step_first_anki_card_body =>
      'Dieser Schritt erscheint nur, wenn diese Einrichtung bereits mit Anki verbunden ist und ein nutzbarer Stapel samt Notiztyp ausgewählt wurde.';
  @override
  String get onboarding_first_anki_lookup_title =>
      'Mit einem echten Wörterbuchtreffer beginnen';
  @override
  String get onboarding_first_anki_lookup_body =>
      'Schlagen Sie ein Wort nach, das Ihr installiertes Wörterbuch tatsächlich kennt. Es gibt kein festes Übungswort, das in Ihrem Wörterbuch fehlen könnte.';
  @override
  String get onboarding_first_anki_plus_title =>
      'Auf das Plus-Symbol am Eintrag tippen';
  @override
  String get onboarding_first_anki_plus_body =>
      'Das Plus öffnet den Kartenersteller mit dem aktuellen Wort, der Lesung, der Bedeutung, dem Satz, dem Audio und dem verfügbaren Bildkontext.';
  @override
  String get onboarding_first_anki_save_title => 'Prüfen und speichern';
  @override
  String get onboarding_first_anki_save_body =>
      'Bestätigen Sie Zielstapel, Notiztyp und die Feldvorschau und speichern Sie dann. Öffnen Sie Anki, um zu prüfen, ob die erste Karte angekommen ist.';
  @override
  String get onboarding_first_anki_action =>
      'Nachschlagen öffnen und eine Karte erstellen';
  @override
  String get onboarding_first_anki_action_desc =>
      'Nehmen Sie ein Wort mit sichtbarer Bedeutung, tippen Sie auf sein Plus-Symbol, prüfen Sie die Felder und speichern Sie es im verbundenen Anki-Stapel.';
  @override
  String get onboarding_step_click_lookup_body =>
      'Prüfen Sie zuerst ein Wort, das Ihr installiertes Wörterbuch tatsächlich kennt. Üben Sie dann mit demselben Wort das direkte Nachschlagen in Büchern, im OCR-Text von Manga und in Videountertiteln.';
  @override
  String get onboarding_click_lookup_tap_body =>
      'Tippen Sie auf dem Handy auf ein Zeichen des geprüften Wortes, am Computer klicken Sie es mit links an. Fushi setzt dort an und findet die längste passende Wortform.';
  @override
  String get onboarding_global_lookup_windows_select_body =>
      'Markieren Sie dasselbe Wort, für das Sie bereits eine Wörterbuchbedeutung geprüft haben, und lassen Sie die Auswahl bestehen.';
  @override
  String get onboarding_global_lookup_android_select_body =>
      'Halten Sie dasselbe geprüfte Wort gedrückt und ziehen Sie dann die Auswahlpunkte so, dass es vollständig markiert ist.';
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
  String get delete_choices_remember => 'Diese Auswahl merken';
  @override
  String get network_proxy_mode_label => 'Proxy-Modus';
  @override
  String get network_proxy_mode_auto => 'Automatisch';
  @override
  String get network_proxy_mode_auto_hint =>
      'Umgebungsvariablen verwenden, dann den aktivierten Systemproxy';
  @override
  String get network_proxy_mode_direct => 'Direkt';
  @override
  String get network_proxy_mode_direct_hint =>
      'Proxy-Nutzung für die App deaktivieren';
  @override
  String get network_proxy_mode_manual => 'Manuell';
  @override
  String get network_proxy_mode_manual_hint =>
      'Server und optionale Zugangsdaten unten verwenden';
  @override
  String get network_proxy_address_hint =>
      'HTTP-Proxyserver für alle Anfragen ins öffentliche Internet';
  @override
  String get network_proxy_username => 'Proxy-Benutzername (optional)';
  @override
  String get network_proxy_password => 'Proxy-Passwort (optional)';
  @override
  String get storage_entry_delete_backups_confirm_body =>
      'Diese temporären lokalen Backup-Archive löschen? Stelle sicher, dass du jede noch benötigte Kopie gespeichert oder geteilt hast.';
  @override
  String get update_download_source_preference => 'Bevorzugte Downloadquelle';
  @override
  String get update_download_source_preference_hint =>
      'Die gewählte Quelle wird zuerst versucht; nicht verfügbare Quellen weichen weiterhin automatisch aus.';
  @override
  String get update_download_source_auto => 'Automatisch (empfohlen)';
  @override
  String get update_download_source_cloudflare => 'Cloudflare-Spiegel';
  @override
  String get update_download_source_github => 'GitHub direkt';
  @override
  String update_download_source_proxy({required Object host}) =>
      'Proxy: ${host}';
  @override
  String get storage_category_backups => 'Übrig gebliebene Backup-Archive';
  @override
  String storage_entry_backups_label({required Object n}) =>
      '${n} Archiv(e) vom letzten Export übrig';
  @override
  String update_download_source_unavailable({required Object source}) =>
      '${source} ist für diese Datei nicht verfügbar; es wird auf die automatische Reihenfolge zurückgegriffen';
  @override
  String get network_proxy_credentials_scope_hint =>
      'Zugangsdaten gelten nur für HTTP-Anfragen; die integrierte Torrent-Engine kann sie nicht verwenden';
  @override
  String get anki_error_paired_device_unreachable =>
      'Couldn\'t create the card because no paired device could be reached. Make sure Fushi is running on the paired device, or turn off Mine to paired device in Anki settings to create cards locally.';
  @override
  String get video_source_scrape_enabled_toggle_hint =>
      'When off, manual, post-scan, post-download and background scraping all skip this source.';
  @override
  String get video_source_scrape_work_missing =>
      'This work is no longer in the current source plan (its files may have been renamed, moved or deleted). Rescrape the source to refresh the pending list.';
  @override
  String get video_source_scrape_pending_works =>
      'Works awaiting identification';
  @override
  String get video_source_scrape_pending_works_hint =>
      'These entries have no confirmed identity yet. Search and pick the right work to scrape them.';
  @override
  String get video_source_scrape_enabled_toggle =>
      'Enable scraping for this source';
  @override
  String get video_library_scrape_auto_backfill =>
      'Auto-fill missing series info';
  @override
  String get video_library_scrape_auto_backfill_hint =>
      'Entering the video library scrapes entries that still have no confirmed identity. Turn off to stop all background metadata downloads.';
  @override
  String get stat_detail_ungrouped => 'Ungrouped';
  @override
  String get stat_detail_empty => 'No activity in this period';
  @override
  String get stat_center_title => 'Statistics center';
  @override
  String get stat_center_tab_overview => 'Overview';
  @override
  String get shortcut_action_video_dismiss_dict => 'Dismiss dictionary';
  @override
  String get video_discovery_anidb_identity_confirm_title =>
      'Confirm the work identity';
  @override
  String get video_discovery_anidb_identity_confirm_hint =>
      'AniDB has more than one possible match. Pick the right work and the imported download will scrape with that identity directly; skip and you can assign it later from the pending list.';
  @override
  String get video_discovery_anidb_identity_not_found =>
      'Could not identify this work on AniDB. It will download normally and wait in the pending list for manual identification.';
  @override
  String get network_proxy_p2p_mode_direct => 'Direct';
  @override
  String get network_proxy_p2p_mode_proxy => 'Via proxy';
  @override
  String get network_proxy_p2p_mode_mixed => 'Mixed';
}
