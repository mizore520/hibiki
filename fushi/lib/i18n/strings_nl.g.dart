part of 'strings.g.dart';

// Path: <root>
class _StringsNl extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsNl.build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.nl,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super.build(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <nl>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  @override
  late final _StringsNl _root = this; // ignore: unused_field

  // Translations
  @override
  String get action_exit => 'Afsluiten';
  @override
  String get action_favorite => 'Favoriet';
  @override
  String activity_days_ago({required Object n}) => '${n} d geleden';
  @override
  String activity_hours_ago({required Object n}) => '${n} u geleden';
  @override
  String get activity_just_now => 'Zojuist';
  @override
  String activity_minutes_ago({required Object n}) => '${n} min geleden';
  @override
  String get add_to_collection => 'Aan collectie toevoegen';
  @override
  String get anime_download_back => 'Terug';
  @override
  String get anime_download_batch => 'Batch';
  @override
  String get anime_download_category_all => 'Alles';
  @override
  String get anime_download_category_english => 'Engels vertaald';
  @override
  String get anime_download_category_non_english => 'Niet-Engels';
  @override
  String get anime_download_category_raw => 'Raw';
  @override
  String get anime_download_delete => 'Verwijderen';
  @override
  String anime_download_episode_count({required Object count}) =>
      'Afl. ${count}';
  @override
  String get anime_download_generic_download => 'Downloaden';
  @override
  String get anime_download_generic_hint => 'Magnetlink';
  @override
  String get anime_download_generic_title =>
      'Plak een link (boeken, video\'s, alles)';
  @override
  String get anime_download_include_subs => 'Ondertitels toevoegen';
  @override
  String get anime_download_kind_auto => 'Automatisch';
  @override
  String get anime_download_kind_book => 'Boek';
  @override
  String get anime_download_kind_video => 'Video';
  @override
  String get anime_download_magnet_invalid => 'Ongeldige magnetlink';
  @override
  String get anime_download_no_results => 'Geen resultaten';
  @override
  String get anime_download_no_subs => 'Geen ondertitels';
  @override
  String get anime_download_no_tasks => 'Nog geen downloadtaken';
  @override
  String get anime_download_nyaa_query => 'Nyaa zoektermen';
  @override
  String get anime_download_play_now => 'Afspelen tijdens downloaden';
  @override
  String get anime_download_play_now_fail =>
      'Nog niet gereed (metadata wordt opgehaald of verbinding mislukt) — probeer het later opnieuw';
  @override
  String get anime_download_play_now_ok =>
      'Geïmporteerd — open het vanuit de videobibliotheek om af te spelen tijdens het downloaden';
  @override
  String get anime_download_push => 'Download doorsturen';
  @override
  String get anime_download_push_failed =>
      'Doorsturen naar qBittorrent mislukt';
  @override
  String get anime_download_pushed =>
      'Doorgestuurd — wordt automatisch geïmporteerd na voltooiing';
  @override
  String get anime_download_refresh => 'Vernieuwen';
  @override
  String get anime_download_relocate => 'Hernoemen / verplaatsen';
  @override
  String anime_download_relocate_engine_failed({required Object reason}) =>
      'Mislukt, niets gewijzigd: ${reason}';
  @override
  String get anime_download_relocate_hint =>
      'Fushi hernoemt/verplaatst via de download-engine, zodat het seeden niet onderbroken wordt. Hernoemen in Verkenner kan niet ongedaan worden gemaakt.';
  @override
  String anime_download_relocate_library_failed({required Object reason}) =>
      'Bestanden verplaatst, maar de bibliotheek verwijst nog naar het oude pad: ${reason}';
  @override
  String get anime_download_relocate_move_title => 'Verplaatsen naar map';
  @override
  String get anime_download_relocate_no_files =>
      'Deze taak heeft nog geen bestanden om te hernoemen (metadata niet gereed)';
  @override
  String anime_download_relocate_ok({required Object rows}) =>
      'Hernoemd / verplaatst; ${rows} bibliotheekitems bijgewerkt';
  @override
  String get anime_download_relocate_pick_folder => 'Kies doelmap';
  @override
  String get anime_download_relocate_rename_title => 'Bestand hernoemen';
  @override
  String get anime_download_retry => 'Opnieuw';
  @override
  String get anime_download_search => 'Zoeken';
  @override
  String get anime_download_search_error_proxy_hint =>
      'Als de site niet direct bereikbaar is, stel dan een netwerkproxy in bij de downloadinstellingen.';
  @override
  String get anime_download_search_failed =>
      'Zoeken mislukt of verlopen. Tik op opnieuw.';
  @override
  String get anime_download_search_hint => 'Animetitel';
  @override
  String get anime_download_search_start_hint =>
      'Zoek hierboven op titel — torrents en ondertitels worden automatisch gekoppeld. Downloads zijn niet beperkt tot video: boeken, manga, luisterboeken en games worden ook geïmporteerd.';
  @override
  String get anime_download_sort_date => 'Gepubliceerd';
  @override
  String get anime_download_sort_seeders => 'Seeders';
  @override
  String get anime_download_sort_size => 'Grootte';
  @override
  String get anime_download_store_unavailable =>
      'Downloadplanopslag is niet beschikbaar';
  @override
  String get anime_download_subs_badge => 'Subs';
  @override
  String get anime_download_subs_failed =>
      'Ondertitels zoeken mislukt. Tik op opnieuw.';
  @override
  String get anime_download_subs_need_key =>
      'Voer hierboven een Jimaku API-sleutel in om ondertitels te zoeken.';
  @override
  String get anime_download_tasks => 'Downloadtaken';
  @override
  String get anime_download_title => 'Anime downloaden';
  @override
  String get anime_download_trusted => 'Vertrouwd';
  @override
  String get anime_download_trusted_only => 'Alleen vertrouwd';
  @override
  String get anki_allow_duplicates => 'Duplicaten toestaan';
  @override
  String get anki_allow_duplicates_hint =>
      'Duplicaatcontrole overslaan bij het toevoegen van kaarten';
  @override
  String get anki_card_action_failed =>
      'Kaartactie mislukt. Probeer het opnieuw.';
  @override
  String get anki_compact_glossaries => 'Compacte woordenlijsten';
  @override
  String get anki_compact_glossaries_hint =>
      'Compact formaat gebruiken voor woordenlijstvermeldingen';
  @override
  String get anki_connect_api_key => 'API-sleutel';
  @override
  String get anki_connect_host => 'Host';
  @override
  String get anki_connect_port => 'Poort';
  @override
  String get anki_create_lapis => 'Lapis-deck maken';
  @override
  String get anki_create_lapis_exists =>
      'Lapis-notitietype en -deck bestaan al — geselecteerd.';
  @override
  String anki_create_lapis_failed({required Object error}) =>
      'Kan Lapis-deck niet maken: ${error}';
  @override
  String get anki_create_lapis_hint =>
      'Voegt het Lapis-notitietype en een Lapis-deck toe aan Anki en selecteert ze daarna.';
  @override
  String get anki_create_lapis_success =>
      'Lapis-notitietype en -deck aangemaakt.';
  @override
  String get anki_deck => 'Stapel';
  @override
  String get anki_duplicate_scope => 'Duplicaatcontrole-bereik';
  @override
  String get anki_duplicate_scope_collection => 'Gehele collectie';
  @override
  String get anki_duplicate_scope_deck => 'Geselecteerd deck (en subdekken)';
  @override
  String get anki_duplicate_scope_deck_root => 'Hoofddeck (alle subdekken)';
  @override
  String get anki_duplicate_scope_hint =>
      'Welke dekken worden doorzocht bij het controleren of een kaart al bestaat. Alleen AnkiConnect; AnkiDroid doorzoekt altijd de gehele collectie.';
  @override
  String get anki_error_collection_unavailable =>
      'De collectie van AnkiDroid is momenteel niet beschikbaar. Open AnkiDroid ten minste één keer, zorg dat het niet aan het synchroniseren is en dat de API is ingeschakeld, en probeer het opnieuw.';
  @override
  String get anki_error_connection_refused =>
      'Kon geen verbinding maken met Anki: verbinding geweigerd. Controleer of Anki Desktop draait en de AnkiConnect-add-on is geïnstalleerd.';
  @override
  String get anki_error_connection_timeout =>
      'Kon geen verbinding maken met Anki: time-out van de verbinding. Controleer de host, poort en firewallinstellingen.';
  @override
  String get anki_error_connection_unknown =>
      'Kon niet exporteren naar Anki: er is een onverwachte verbindingsfout opgetreden. Zie het foutenlogboek voor details.';
  @override
  String get anki_error_http =>
      'Kon niet exporteren naar Anki: er is een HTTP-fout opgetreden tijdens het contact met AnkiConnect.';
  @override
  String get anki_error_permission_denied =>
      'AnkiDroid heeft geen toestemming voor kaarttoegang verleend. Keur het systeemtoestemmingsvenster goed dat zojuist verscheen en tik dan opnieuw op de knop om te exporteren.';
  @override
  String get anki_fetch => 'Decks & notitietypen vernieuwen';
  @override
  String get anki_fetching => 'Ophalen...';
  @override
  String get anki_field_mappings => 'Veldtoewijzingen';
  @override
  String get anki_field_not_mapped => 'Niet toegewezen';
  @override
  String get anki_mine_to_server => 'Kaarten naar gekoppeld apparaat sturen';
  @override
  String get anki_mine_to_server_hint =>
      'Stuur gedolven kaarten naar de Anki van het gekoppelde apparaat (diens dekken en instellingen) in plaats van dit apparaat. Vereist een interconnectkoppeling.';
  @override
  String get anki_mined_action_add_duplicate => 'Als nieuwe kaart toevoegen';
  @override
  String get anki_mined_action_overwrite => 'Deze kaart overschrijven';
  @override
  String get anki_mined_action_view => 'Bekijken / openen in Anki';
  @override
  String get anki_mined_card_subtitle =>
      'Kies wat je wilt doen met de overeenkomende kaart.';
  @override
  String get anki_mined_card_title => 'Kaart al in Anki';
  @override
  String anki_mined_multiple_matches({required Object count}) =>
      '${count} overeenkomende kaarten';
  @override
  String get anki_not_configured =>
      'Tik op Vernieuwen om je Anki-decks en notitietypen te laden.';
  @override
  String get anki_note_open_failed => 'Kon de kaart niet openen in Anki.';
  @override
  String get anki_note_type => 'Notitietype';
  @override
  String get anki_note_viewer_empty => 'Deze kaart heeft geen leesbare velden.';
  @override
  String get anki_note_viewer_open_in_anki => 'Openen in Anki';
  @override
  String get anki_note_viewer_title => 'Bestaande kaart';
  @override
  String get anki_open_no_card => 'Geen kaart gevonden voor dit woord in Anki.';
  @override
  String get anki_overwrite_scope => 'Overschrijfbereik';
  @override
  String get anki_overwrite_scope_all => 'Alle overeenkomende kaarten';
  @override
  String get anki_overwrite_scope_hint =>
      'Welke reeds gemaakte kaarten de groene ✓ mag overschrijven';
  @override
  String get anki_overwrite_scope_latest => 'Alleen de nieuwste kaart';
  @override
  String get anki_refresh_hint =>
      'Tik hier om te vernieuwen nadat je in Anki een deck of notitietype hebt gemaakt of hernoemd.';
  @override
  String anki_select_handlebar({required Object field}) =>
      'Selecteer waarde voor ${field}';
  @override
  String get anki_settings_label => 'Anki-instellingen';
  @override
  String get anki_tag_default_section => 'Standaardtags';
  @override
  String get anki_tag_include_category => 'Tag voor broncategorie toevoegen';
  @override
  String get anki_tag_include_category_hint =>
      'Boeken krijgen "book", video\'s krijgen "video", games krijgen "game"';
  @override
  String get anki_tag_include_fushi => 'Tag "fushi" toevoegen';
  @override
  String get anki_tag_include_fushi_hint =>
      'Markeer elke kaart die met Fushi is gemaakt';
  @override
  String get anki_tags => 'Tags';
  @override
  String get anki_tags_hint =>
      'Door spaties gescheiden tags die aan elke kaart worden toegevoegd';
  @override
  String get app_icon_label => 'App-icoon';
  @override
  String get app_icon_presets => 'Voorinstellingen';
  @override
  String get app_ui_scale => 'UI-grootte';
  @override
  String get app_ui_scale_hint =>
      'Scales app text and spacing. Lower it on large screens if controls feel oversized.';
  @override
  String get app_version => 'App-versie';
  @override
  String get apply_theme => 'Thema toepassen';
  @override
  String get audio_clip_failed =>
      'Kan het audiofragment niet uitsnijden — de audiobron ontbreekt mogelijk of is onleesbaar';
  @override
  String get audio_import => 'Audio importeren';
  @override
  String get audio_panel_add_audio => 'Audio toevoegen';
  @override
  String get audio_panel_auto => 'Automatisch';
  @override
  String get audio_panel_pick_new_subtitle => 'Nieuw ondertitelbestand kiezen';
  @override
  String get audio_source_added => 'Audiobron toegevoegd';
  @override
  String audio_source_dns_error({required Object host}) =>
      'Audiobron verbinding mislukt: kan "${host}" niet oplossen — controleer uw netwerk of verwijder deze bron in instellingen';
  @override
  String get audio_source_edit_target_gone =>
      'Die audiobron bestaat niet meer — bewerking verworpen';
  @override
  String get audio_source_edit_url => 'Audiobronlink bewerken';
  @override
  String audio_source_error({required Object detail}) =>
      'Audiobron fout: ${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi Interconnect';
  @override
  String get audio_source_loopback_warning =>
      'Verwijst naar dit apparaat — wijzig het na het wisselen van apparaat';
  @override
  String audio_source_request_error({required Object detail}) =>
      'Audiobron verzoek mislukt: ${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      'Audiobron time-out: "${host}" — server reageert niet, probeer later opnieuw of wijzig de bron';
  @override
  String get audio_source_updated => 'Audiobron bijgewerkt';
  @override
  String get audio_source_url_invalid =>
      'Link moet http(s) zijn en een term- of leeswijze-plaatshouder bevatten';
  @override
  String get audio_unavailable => 'Geen audio gevonden.';
  @override
  String get audio_volume => 'Volume';
  @override
  String get audiobook_attached => 'Audioboek gekoppeld';
  @override
  String get audiobook_audio_missing => 'Audiobestand ontbreekt';
  @override
  String get audiobook_background_play => 'Blijven afspelen na afsluiten';
  @override
  String get audiobook_background_play_hint =>
      'Indien uit, stopt het luisterboek wanneer je de lezer verlaat. Schakel in om op de achtergrond door te spelen.';
  @override
  String get audiobook_export_clip => 'Clipvideo exporteren';
  @override
  String get audiobook_export_clip_failed => 'Clip exporteren mislukt';
  @override
  String get audiobook_export_clip_in_progress => 'Clip wordt geëxporteerd…';
  @override
  String get audiobook_export_clip_no_selection =>
      'Selecteer eerst tekst om een clip te exporteren';
  @override
  String get audiobook_export_clip_no_text =>
      'Deze selectie bevat geen tekst om te renderen';
  @override
  String get audiobook_export_clip_saved => 'Clip opgeslagen';
  @override
  String get audiobook_export_clip_unsupported_range =>
      'Deze selectie kan niet worden geëxporteerd (kruist een hoofdstuk- of audiobestandsgrens)';
  @override
  String get audiobook_import => 'Audioboek importeren';
  @override
  String get audiobook_import_error => 'Importeren mislukt';
  @override
  String audiobook_import_error_copy_failed({required Object name}) =>
      'Kan bestand niet kopiëren: ${name}';
  @override
  String audiobook_import_error_disk_full({required Object size}) =>
      'Onvoldoende schijfruimte. Vereist: ${size}';
  @override
  String get audiobook_import_success => 'Audioboek geïmporteerd';
  @override
  String get audiobook_load_error => 'Kan audioboek niet laden.';
  @override
  String get audiobook_pick_alignment => 'Kies uitlijningsbestand';
  @override
  String get audiobook_reference_original => 'Originele bestanden refereren';
  @override
  String get audiobook_reference_original_desc =>
      'Bewaar audio op de huidige locatie en speel af vanaf het oorspronkelijke pad; het boek werkt niet meer als het bestand wordt verplaatst of verwijderd.';
  @override
  String get audiobook_relocate => 'Bestand verplaatsen';
  @override
  String get audiobook_relocate_done => 'Audio verplaatst';
  @override
  String get auto_add_book_name_to_tags =>
      'Boektitel automatisch aan labels toevoegen';
  @override
  String auto_chapter({required Object n}) => 'Hoofdstuk ${n}';
  @override
  String get auto_read_on_lookup => 'Woord automatisch voorlezen bij opzoeken';
  @override
  String get auto_search => 'Automatisch zoeken';
  @override
  String get auto_search_debounce_delay => 'Vertraging automatisch zoeken';
  @override
  String get auto_select_search_window => 'Automatisch zoekvenster selecteren';
  @override
  String get auto_select_search_window_hint =>
      'Test meerdere venstergroottes bij import en kies die met het beste trefpercentage';
  @override
  String get av_sync => 'A/V-sync';
  @override
  String get av_sync_reset => 'Herstellen';
  @override
  String get back => 'Terug';
  @override
  String get background_color => 'Achtergrondkleur';
  @override
  String get background_color_desc => 'Achtergrond van de lezerpagina';
  @override
  String get backup_category_audiobooks => 'Luisterboekaudio';
  @override
  String get backup_category_audiobooks_desc =>
      'Luisterboek-audio en uitlijning';
  @override
  String get backup_category_books => 'Boeken';
  @override
  String get backup_category_books_desc =>
      'Boekbestanden (EPUB en uitgepakte inhoud)';
  @override
  String get backup_category_dictionary => 'Woordenboeken';
  @override
  String get backup_category_dictionary_desc =>
      'Geïmporteerde woordenboeken en hun bestanden';
  @override
  String get backup_category_fonts => 'Aangepaste lettertypen';
  @override
  String get backup_category_fonts_desc =>
      'Geïmporteerde aangepaste lettertypen';
  @override
  String get backup_category_local_audio => 'Lokale audiodatabases';
  @override
  String get backup_category_local_audio_desc =>
      'Lokale uitspraakaudiodatabases';
  @override
  String get backup_category_profiles => 'Profielen';
  @override
  String get backup_category_profiles_desc => 'Configuratieprofielen';
  @override
  String get backup_category_progress => 'Leesvoortgang';
  @override
  String get backup_category_progress_desc => 'Leesposities en bladwijzers';
  @override
  String get backup_category_settings => 'Instellingen';
  @override
  String get backup_category_settings_desc => 'App- en lezerinstellingen';
  @override
  String get backup_category_statistics => 'Statistieken';
  @override
  String get backup_category_statistics_desc =>
      'Lees-, video- en kaartdelvenstatistieken';
  @override
  String get backup_category_videos => 'Video\'s';
  @override
  String get backup_category_videos_desc => 'Lokale videobestanden';
  @override
  String get backup_export => 'Back-up exporteren';
  @override
  String get backup_export_books_all => 'Alle boeken';
  @override
  String backup_export_books_selected({required Object count}) =>
      '${count} boeken geselecteerd';
  @override
  String get backup_export_categories_hint =>
      'Vink aan wat in de back-up moet. Boeken uitvinken verwijdert die boeken volledig — hun inhoud en gegevens gaan mee.';
  @override
  String get backup_export_categories_title => 'Kies wat je wilt exporteren';
  @override
  String get backup_export_choose_books => 'Boeken kiezen';
  @override
  String get backup_export_choose_videos => 'Video\'s kiezen';
  @override
  String backup_export_failed({required Object message}) =>
      'Back-up exporteren mislukt: ${message}';
  @override
  String get backup_export_hint =>
      'Kies wat je wilt opnemen; de database (boeken, voortgang, statistieken) wordt altijd opgenomen. Schakel grote items (lokale audio, video\'s) uit om de back-up te verkleinen.';
  @override
  String get backup_export_no_books => 'Geen boeken om uit te kiezen';
  @override
  String get backup_export_no_videos => 'Geen video\'s om uit te kiezen';
  @override
  String get backup_export_select_all => 'Alles selecteren';
  @override
  String get backup_export_select_none => 'Niets selecteren';
  @override
  String get backup_export_success => 'Back-up geëxporteerd';
  @override
  String get backup_export_videos_all => 'Alle video\'s';
  @override
  String backup_export_videos_selected({required Object count}) =>
      '${count} video\'s geselecteerd';
  @override
  String get backup_exporting => 'Back-up maken…';
  @override
  String get backup_import => 'Back-up importeren';
  @override
  String backup_import_confirm({
    required Object date,
    required Object bookCount,
    required Object statsCount,
  }) =>
      'Dit vervangt alle huidige gegevens door de back-up van ${date}.\n\n${bookCount} boeken, ${statsCount} statistiekrecords.\n\nDe app wordt na het herstellen opnieuw gestart.';
  @override
  String get backup_import_confirm_title => 'Back-up herstellen?';
  @override
  String get backup_import_contents_hint =>
      'Vink een item uit om het over te slaan.';
  @override
  String get backup_import_contents_title => 'Deze back-up bevat';
  @override
  String backup_import_failed({required Object message}) =>
      'Back-up importeren mislukt: ${message}';
  @override
  String get backup_import_hint =>
      'Herstel vanuit een back-upbestand. De app wordt opnieuw gestart.';
  @override
  String get backup_import_invalid => 'Ongeldig back-upbestand';
  @override
  String backup_import_merge_preview({
    required Object bookCount,
    required Object progressCount,
  }) =>
      'Samenvoegen voegt ${bookCount} boeken toe en werkt ${progressCount} leesposities bij.';
  @override
  String get backup_import_mode_label => 'Importmodus';
  @override
  String get backup_import_mode_merge => 'Samenvoegen met huidige bibliotheek';
  @override
  String get backup_import_mode_overwrite => 'Gehele bibliotheek overschrijven';
  @override
  String get backup_import_overlay_title => 'Back-up importeren';
  @override
  String get backup_import_overlay_warning =>
      'Je gegevens worden hersteld. Sluit de app niet.';
  @override
  String get backup_import_preserve_sync_note =>
      'Je syncinstellingen op dit apparaat (account en inloggegevens) blijven behouden.';
  @override
  String get backup_import_restart_button => 'Nu herstarten';
  @override
  String get backup_import_settings_off_hint =>
      'Behoud de lettertypen/weergave/profielen van dit apparaat; herstel alleen boeken en leesgegevens.';
  @override
  String get backup_import_settings_on_hint =>
      'Volledig herstel: lettertypen, weergave en profielen komen uit de back-up.';
  @override
  String get backup_import_settings_toggle =>
      'Instellingen en profielen importeren';
  @override
  String get backup_import_success => 'Back-up hersteld. Opnieuw starten…';
  @override
  String get backup_import_validating_hint =>
      'Het back-upbestand wordt gecontroleerd en bekeken. Dit kan even duren.';
  @override
  String get backup_import_validating_title => 'Back-up inlezen…';
  @override
  String backup_schema_newer({required Object version}) =>
      'Deze back-up vereist een nieuwere versie van de app (schema ${version}). Werk eerst bij.';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      '${n} item(s) aan de collectie toegevoegd.';
  @override
  String batch_delete_confirm({required Object n}) =>
      '${n} boek(en) verwijderen? Dit kan niet ongedaan worden gemaakt.';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      '${n} video(\'s) verwijderen? Dit kan niet ongedaan worden gemaakt.';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      '${n} media verwijderen en ${m} collectie(s) ontbinden? Dit kan niet ongedaan worden gemaakt.';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      '${n} media verwijderd, ${m} collectie(s) ontbonden.';
  @override
  String batch_delete_success({required Object n}) =>
      '${n} boek(en) verwijderd.';
  @override
  String batch_delete_success_video({required Object n}) =>
      '${n} video(\'s) verwijderd.';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      '${m} collectie(s) ontbinden? De groepering wordt verwijderd; de media blijft behouden.';
  @override
  String batch_dissolve_success({required Object m}) =>
      '${m} collectie(s) ontbonden.';
  @override
  String get batch_invert_selection => 'Omkeren';
  @override
  String get batch_select => 'Selecteren';
  @override
  String get batch_select_all => 'Alles';
  @override
  String batch_selected_count({required Object n}) => '${n} geselecteerd';
  @override
  String get batch_tag_add => 'Toevoegen';
  @override
  String batch_tag_added({required Object name, required Object n}) =>
      'Tag "${name}" toegevoegd aan ${n} boek(en).';
  @override
  String batch_tag_added_video({required Object name, required Object n}) =>
      'Tag "${name}" toegevoegd aan ${n} video(\'s).';
  @override
  String get batch_tag_apply => 'Toepassen';
  @override
  String get batch_tag_keep => 'Behouden';
  @override
  String get batch_tag_remove => 'Verwijderen';
  @override
  String batch_tag_removed({required Object name, required Object n}) =>
      'Tag "${name}" verwijderd van ${n} boek(en).';
  @override
  String batch_tag_removed_video({required Object name, required Object n}) =>
      'Tag "${name}" verwijderd van ${n} video(\'s).';
  @override
  String get batch_tag_title => 'Tags beheren';
  @override
  String get book_continue_reading => 'Continue Reading';
  @override
  String get book_css_editor_cancel => 'Annuleren';
  @override
  String get book_css_editor_confirm_reset =>
      'CSS van dit bestand herstellen naar standaard?';
  @override
  String get book_css_editor_confirm_reset_all =>
      'CSS van ALLE bestanden herstellen naar standaard?';
  @override
  String get book_css_editor_discard => 'Verwerpen';
  @override
  String get book_css_editor_edit_css => 'Boek-CSS bewerken';
  @override
  String get book_css_editor_no_css_files =>
      'Geen CSS-bestanden gevonden in dit boek.';
  @override
  String get book_css_editor_no_extract_dir =>
      'Boekmap niet gevonden. Importeer het boek opnieuw om CSS te bewerken.';
  @override
  String get book_css_editor_reset_all => 'Alles herstellen';
  @override
  String get book_css_editor_reset_current => 'Huidig herstellen';
  @override
  String get book_css_editor_reset_done => 'CSS is hersteld.';
  @override
  String get book_css_editor_save => 'Opslaan';
  @override
  String get book_css_editor_saved => 'CSS opgeslagen.';
  @override
  String get book_css_editor_title => 'Boek CSS-editor';
  @override
  String get book_css_editor_unsaved_changes => 'Niet-opgeslagen wijzigingen';
  @override
  String get book_css_editor_unsaved_changes_message =>
      'Je hebt niet-opgeslagen wijzigingen. Verwerpen?';
  @override
  String get book_directory_not_found => 'Boekmap niet gevonden.';
  @override
  String get book_edit_author => 'Auteur';
  @override
  String get book_file_not_found => 'Boekbestand niet gevonden';
  @override
  String get book_import_duplicate_cancel => 'Nee, annuleren';
  @override
  String get book_import_duplicate_cancelled => 'Import geannuleerd';
  @override
  String get book_import_duplicate_keep => 'Ja, achtervoegsel toevoegen';
  @override
  String book_import_duplicate_message({required Object name}) =>
      'Er bestaat al een boek met de naam "${name}". Toch importeren? "Ja" importeert met een genummerd achtervoegsel; "Nee" annuleert.';
  @override
  String get book_import_duplicate_title => 'Dubbel boek';
  @override
  String get book_mark_completed_action => 'Markeren als voltooid';
  @override
  String get book_mark_uncompleted_action => 'Markeren als niet voltooid';
  @override
  String get book_marked_completed => 'Gemarkeerd als voltooid';
  @override
  String get book_marked_uncompleted => 'Gemarkeerd als niet voltooid';
  @override
  String get book_mode => 'Boekmodus';
  @override
  String book_read_progress({required Object percent}) => '${percent}% gelezen';
  @override
  String get book_scrape_cover => 'Omslag online zoeken';
  @override
  String get book_scrape_empty => 'Geen overeenkomende omslagen';
  @override
  String get book_scrape_failed => 'Omslag ophalen mislukt';
  @override
  String get book_scrape_hint => 'Boektitel / auteur';
  @override
  String get book_scrape_search => 'Zoeken';
  @override
  String get book_scrape_search_failed =>
      'Zoeken mislukt. Tik op Zoeken om opnieuw te proberen.';
  @override
  String get book_scrape_title => 'Omslag online koppelen';
  @override
  String get book_scrape_use => 'Gebruiken';
  @override
  String get book_search => 'Zoeken in boek';
  @override
  String get book_search_hint => 'Voer zoektekst in…';
  @override
  String get book_search_no_results => 'Geen resultaten gevonden';
  @override
  String book_search_results({required Object n}) =>
      '${n} resultaat/resultaten';
  @override
  String get books => 'Boeken';
  @override
  String get browser_extension_enable_server_first =>
      'Tip: schakel eerst "Yomitan API-server" in en stel hierboven een API-sleutel in, zodat de extensie automatisch geconfigureerd wordt met een werkende verbinding.';
  @override
  String get browser_extension_mobile_unsupported =>
      'Mobiele browsers kunnen deze extensie niet laden. Gebruik in plaats daarvan het opzoeken in de app in de lezer of videospeler.';
  @override
  String get browser_extension_page_intro =>
      'Op desktop kun je woorden opzoeken, ondertitels ontleden en kaarten delven rechtstreeks in Chrome of Edge. Bereid de extensie hieronder voor en laad deze vervolgens in je browser.';
  @override
  String get browser_extension_prepare_button =>
      'Extensiebestanden voorbereiden';
  @override
  String get browser_extension_prepare_hint =>
      'Start de opzoekserver en pakt de extensie lokaal uit; het mappad wordt naar het klembord gekopieerd.';
  @override
  String get browser_extension_reinstall_button =>
      'Opnieuw voorbereiden / vernieuwen';
  @override
  String get browser_extension_server_off => 'Opzoekserver uit';
  @override
  String get browser_extension_server_on => 'Opzoekserver aan';
  @override
  String get browser_extension_status_connected => 'Extensie verbonden';
  @override
  String get browser_extension_status_never => 'Extensie nog niet gedetecteerd';
  @override
  String get browser_extension_step_dev_mode =>
      'Schakel "Ontwikkelaarsmodus" in (schakelaar rechtsboven).';
  @override
  String get browser_extension_step_done_auto =>
      'Klaar. De extensie is al ingesteld om verbinding te maken met Fushi voor opzoekacties — niets handmatig in te vullen.';
  @override
  String get browser_extension_step_load_unpacked =>
      'Klik op "Uitgepakt laden".';
  @override
  String get browser_extension_step_open_page =>
      'Open de browser-extensiepagina:';
  @override
  String get browser_extension_step_pick_folder =>
      'Selecteer de extensiemap hieronder (het pad staat al op je klembord).';
  @override
  String get browser_extension_step_verify =>
      'Controleer of de extensie geladen en verbonden is';
  @override
  String get browser_extension_verify_button => 'Verbinding controleren';
  @override
  String get browser_extension_verify_checking => 'Controleren…';
  @override
  String get browser_extension_verify_connected =>
      'Extensie gedetecteerd en verbonden.';
  @override
  String get browser_extension_verify_not_detected =>
      'Nog geen extensie gedetecteerd. Zorg dat deze geladen en ingeschakeld is in je browser en controleer opnieuw.';
  @override
  String get browser_extension_version_app => 'Meegeleverd met app';
  @override
  String get browser_extension_version_browser => 'Geladen in browser';
  @override
  String get browser_extension_version_label => 'Extensieversie';
  @override
  String get browser_extension_version_mismatch =>
      'De extensie in je browser is verouderd. Bereid de extensie indien nodig opnieuw voor en herlaad deze vanuit je browser-extensiepagina (chrome://extensions).';
  @override
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      'Poort ${port} is in gebruik door een ander proces (meestal de yomitan-api-component — een Python-proces gestart door je browser). Beëindig dat proces, of schakel Yomitan API uit in de geavanceerde instellingen van Yomitan, en schakel de Yomitan API-server in Fushi opnieuw in.';
  @override
  String get cancel => 'Annuleren';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      'Kaartomslag teruggevallen op een stilstaand beeld (geanimeerde clip niet beschikbaar): ${reason}';
  @override
  String get card_duplicate => 'Dubbele kaart — niet geëxporteerd.';
  @override
  String get card_export_failed => 'Exporteren van kaart mislukt.';
  @override
  String card_export_failed_detail({required Object reason}) =>
      'Kaart exporteren mislukt: ${reason}';
  @override
  String get card_export_not_configured =>
      'Anki niet geconfigureerd. Open Anki-instellingen en tik op Ophalen.';
  @override
  String card_exported({required Object deck}) =>
      'Kaart geëxporteerd naar 『${deck}』.';
  @override
  String card_exported_audio_failed({required Object reason}) =>
      'Kaart geëxporteerd, maar de audio kon niet worden gedownload (${reason}).';
  @override
  String get card_mined_no_sentence_captured =>
      'Kaart aangemaakt, maar er is geen zin vastgelegd (selecteer het woord opnieuw, of deze tekst bevat geen herkenbare zin).';
  @override
  String get card_mined_unmapped_sentence_audio_field =>
      'Kaart aangemaakt met zinsaudio, maar je Anki-notetype heeft geen veld dat eraan is gekoppeld. Koppel een veld aan {sentence-audio}.';
  @override
  String get card_mined_unmapped_sentence_field =>
      'Kaart aangemaakt, maar je Anki-notetype heeft geen veld gekoppeld aan de zin. Gebruik Instellingen → \'Lapis-deck aanmaken\' of koppel een veld aan {sentence}.';
  @override
  String get card_mined_without_sentence_audio =>
      'Kaart aangemaakt zonder zinsaudio (geen gevonden voor deze selectie).';
  @override
  String get card_mining_pending => 'Kaart toevoegen…';
  @override
  String card_overwritten({required Object deck}) =>
      'Kaart overschreven in 『${deck}』.';
  @override
  String get change_source => 'Bron wijzigen';
  @override
  String get changelog_empty =>
      'Geen changelog gevonden. Controleer je netwerk- of proxyinstellingen.';
  @override
  String get changelog_open_releases => 'Releasepagina openen';
  @override
  String get changelog_prerelease => 'Prerelease';
  @override
  String chapter_progress({
    required Object idx,
    required Object total,
    required Object suffix,
    required Object pct,
  }) => 'Hoofdstuk ${idx} / ${total}${suffix} · ${pct}%';
  @override
  String get clear => 'Wissen';
  @override
  String get clear_dictionary_description =>
      'Dit wist alle woordenboekresultaten uit de geschiedenis. Weet je het zeker?';
  @override
  String get clear_dictionary_title => 'Woordenboekresultaten wissen';
  @override
  String get lookup_block_capture => 'Schermopname blokkeren';
  @override
  String get lookup_block_capture_hint =>
      'Sluit het opzoek- en klembordpopupvenster uit van schermafbeeldingen, schermopnames en livestreaming (Windows). Schakel dit uit om schermafbeeldingen, opnames en streaming het opzoekpopup te laten vastleggen.';
  @override
  String get collapse_dictionaries => 'Woordenboeken inklappen';
  @override
  String get collection_bookmark => 'Bladwijzer';
  @override
  String get collection_clear_confirm =>
      'De geselecteerde collecties permanent verwijderen? Dit kan niet ongedaan worden gemaakt.';
  @override
  String get collection_clear_scope => 'Bereik wissen';
  @override
  String get collection_collapse => 'Inklappen';
  @override
  String collection_continue_progress({required Object n}) =>
      'Verder · Afl. ${n}';
  @override
  String get collection_empty => 'Collectie is leeg';
  @override
  String get collection_expand => 'Uitklappen';
  @override
  String get collection_export_all_books => 'Alle boeken';
  @override
  String get collection_export_all_mined => 'Alle gedolven zinnen';
  @override
  String get collection_export_all_words => 'Alle favoriete woorden';
  @override
  String get collection_export_dedupe => 'Ontdubbelen op zin';
  @override
  String get collection_export_failed => 'Exporteren mislukt';
  @override
  String get collection_export_favorites_scope => 'Favoriete zinnen';
  @override
  String get collection_export_format => 'Formaat';
  @override
  String get collection_export_mined_title => 'Mined Sentences';
  @override
  String get collection_export_no_items => 'Niets om te exporteren';
  @override
  String get collection_export_pick_book => 'Kies een boek';
  @override
  String get collection_export_save => 'Save Export';
  @override
  String get collection_export_saved => 'Export opgeslagen';
  @override
  String get collection_export_scope => 'Exportbereik';
  @override
  String get collection_export_sentences_title => 'Favorite Sentences';
  @override
  String get collection_export_words_title => 'Favorite Words';
  @override
  String get collection_loading_hint =>
      'Collecties en bijpassende audiobestanden laden…';
  @override
  String get collection_member_removed => 'Verwijderd uit collectie';
  @override
  String get collection_merge_title => 'Collecties samenvoegen';
  @override
  String get collection_merged => 'Collecties samengevoegd.';
  @override
  String get collection_mined => 'Gemaakt';
  @override
  String get collection_open => 'Openen';
  @override
  String get collection_play => 'Afspelen';
  @override
  String get collection_remove_member => 'Verwijderen uit collectie';
  @override
  String get collection_remove_member_confirm =>
      'Dit item uit de collectie verwijderen? Het item zelf wordt bewaard.';
  @override
  String get collection_sentence => 'Zin';
  @override
  String get collection_sort_by_imported => 'Sorteren op importdatum';
  @override
  String get collection_sort_by_title => 'Sorteren op naam';
  @override
  String get collection_view_all => 'Alles bekijken';
  @override
  String collection_watched_progress({
    required Object done,
    required Object total,
  }) => '${done}/${total} bekeken';
  @override
  String get collection_word => 'Woord';
  @override
  String get collections => 'Collecties';
  @override
  String get color_container => 'Container';
  @override
  String get color_container_desc => 'Schakelbanen, achtergrond afspeelbalk';
  @override
  String get color_link => 'Linkkleur';
  @override
  String get color_link_desc => 'Hyperlinkkleur in de lezer';
  @override
  String get color_primary => 'Primair';
  @override
  String get color_primary_desc => 'Audiomarkering, knoppen, schakelaars';
  @override
  String get color_sentence_audio_highlight => 'Audiomarkering';
  @override
  String get color_sentence_audio_highlight_desc =>
      'Markering van ondertitelsynchronisatie van het luisterboek';
  @override
  String get color_secondary => 'Secundair';
  @override
  String get color_secondary_desc =>
      'Woordenboekvermeldingen, boekenplankbadges';
  @override
  String get color_tertiary => 'Tertiair';
  @override
  String get color_tertiary_desc => 'Collecties, leesstatistieken';
  @override
  String get columns_per_page => 'Kolommen per pagina';
  @override
  String get combine_into_series => 'Samenvoegen tot serie';
  @override
  String get copied => 'Gekopieerd';
  @override
  String get copied_to_clipboard => 'Gekopieerd naar klembord.';
  @override
  String get copy => 'Kopiëren';
  @override
  String get copy_error => 'Fout kopiëren';
  @override
  String get crash_dump_empty => 'Geen crashdumps';
  @override
  String crash_dump_label({required Object n}) => 'Crashdumps (${n})';
  @override
  String get crash_dump_open_folder => 'Dumpmap openen';
  @override
  String get crash_dump_privacy_notice =>
      'Crashdumps (.dmp) bevatten een momentopname van het procesgeheugen en kunnen tekst bevatten die je aan het lezen was, woorden die je hebt opgezocht of andere gegevens binnen de app. Deel ze alleen met ontwikkelaars die je vertrouwt.';
  @override
  String get crash_dump_share => 'Dump delen';
  @override
  String get crash_dump_share_subject => 'Fushi-crashdump';
  @override
  String get create_series => 'Serie aanmaken';
  @override
  String get creator_action_add_to_stash => 'Toevoegen aan opslag';
  @override
  String get creator_action_copy_to_clipboard => 'Kopiëren naar klembord';
  @override
  String get creator_action_play_audio => 'Audio afspelen';
  @override
  String get creator_action_share => 'Delen';
  @override
  String get creator_enhancement_audio_recorder => 'Opname';
  @override
  String get creator_enhancement_camera => 'Camera';
  @override
  String get creator_enhancement_clear_field => 'Veld wissen';
  @override
  String get creator_enhancement_crop_image => 'Afbeelding bijsnijden';
  @override
  String get creator_enhancement_local_audio => 'Lokale audio';
  @override
  String get creator_enhancement_open_stash => 'Opslag openen';
  @override
  String get creator_enhancement_pick_audio => 'Audio kiezen';
  @override
  String get creator_enhancement_pick_image => 'Afbeelding kiezen';
  @override
  String get creator_enhancement_pop_from_stash => 'Uit opslag halen';
  @override
  String get creator_enhancement_save_tags => 'Tags opslaan';
  @override
  String get creator_enhancement_search_dictionary => 'Woordenboek doorzoeken';
  @override
  String get creator_enhancement_sentence_picker => 'Zin kiezen';
  @override
  String get creator_enhancement_text_segmentation => 'Tekstsegmentatie';
  @override
  String get creator_export_card => 'Kaart maken';
  @override
  String get creator_field_audio => 'Woordaudio';
  @override
  String get creator_field_audio_sentence => 'Zinaudio';
  @override
  String get creator_field_cloze_after => 'Na de opening';
  @override
  String get creator_field_cloze_before => 'Vóór de opening';
  @override
  String get creator_field_cloze_inside => 'Inhoud van de opening';
  @override
  String get creator_field_collapsed_meaning => 'Ingevouwen betekenis';
  @override
  String get creator_field_context => 'Context';
  @override
  String get creator_field_cue_sentence => 'Ondertitelzin';
  @override
  String get creator_field_expanded_meaning => 'Uitgevouwen betekenis';
  @override
  String get creator_field_frequency => 'Frequentie';
  @override
  String get creator_field_furigana => 'Furigana';
  @override
  String get creator_field_hidden_meaning => 'Verborgen betekenis';
  @override
  String get creator_field_image => 'Afbeelding';
  @override
  String get creator_field_meaning => 'Betekenis';
  @override
  String get creator_field_notes => 'Notities';
  @override
  String get creator_field_pitch_accent => 'Toonaccent';
  @override
  String get creator_field_reading => 'Lezing';
  @override
  String get creator_field_sentence => 'Zin';
  @override
  String get creator_field_tags => 'Tags';
  @override
  String get creator_field_term => 'Term';
  @override
  String get custom_dict_css => 'Aangepaste CSS';
  @override
  String get custom_dict_css_global => 'Globaal (alle woordenboeken)';
  @override
  String get custom_fonts => 'Aangepaste lettertypen';
  @override
  String get custom_fonts_add_system => 'Systeemlettertype toevoegen';
  @override
  String get custom_fonts_archive_error => 'Archief kon niet worden uitgepakt';
  @override
  String get custom_fonts_catalog_title => 'Lettertypebibliotheek';
  @override
  String get custom_fonts_download_failed => 'Download mislukt';
  @override
  String get custom_fonts_downloading => 'Downloaden...';
  @override
  String get custom_fonts_drag_hint =>
      'Sleep om letterpypeprioriteit te wijzigen';
  @override
  String get custom_fonts_empty => 'Geen aangepaste lettertypen toegevoegd';
  @override
  String get custom_fonts_font_roles => 'Lettertyperol';
  @override
  String get custom_fonts_import_file => 'Lettertypebestand importeren';
  @override
  String get custom_fonts_import_url => 'Importeren vanaf URL';
  @override
  String custom_fonts_imported_count({required Object count}) =>
      '${count} lettertype(n) geïmporteerd';
  @override
  String get custom_fonts_manage => 'Lettertypen beheren';
  @override
  String get custom_fonts_no_fonts_in_archive =>
      'Geen lettertypebestanden gevonden in archief';
  @override
  String get custom_fonts_recommended => 'Aanbevolen lettertypen';
  @override
  String get custom_fonts_removed => 'Lettertype verwijderd';
  @override
  String get custom_fonts_search_hint => 'Lettertypen zoeken';
  @override
  String get custom_theme => 'Aangepast thema';
  @override
  String custom_theme_default_name({required Object n}) => 'Aangepast ${n}';
  @override
  String get custom_theme_long_press_hint =>
      'Tik om te wisselen · houd ingedrukt om te bewerken';
  @override
  String get custom_theme_name => 'Naam';
  @override
  String get dark_mode => 'Donkere modus';
  @override
  String get dark_mode_dark => 'Donker';
  @override
  String get dark_mode_light => 'Licht';
  @override
  String get dark_mode_system => 'Systeem';
  @override
  String data_root_unavailable_message({required Object path}) =>
      'Je ingestelde datalocatie ${path} is tijdelijk onbereikbaar (de schijf slaapt mogelijk, is bezet of niet verbonden). Je gegevens zijn veilig en onaangeroerd — er gaat niets verloren. Tik op Opnieuw als de schijf gereed is om je gegevens te laden, of start met de standaardlocatie voor nu (je bestaande gegevens worden NIET gewijzigd).';
  @override
  String get data_root_unavailable_title => 'Datalocatie reageert niet';
  @override
  String get data_root_use_default_button => 'Starten met standaardlocatie';
  @override
  String get data_storage_change_button => 'Locatie wijzigen';
  @override
  String get data_storage_change_confirm_body =>
      'Fushi verplaatst al je gegevens naar de nieuwe map en herstart dan. Sluit de app niet tijdens het verplaatsen.';
  @override
  String get data_storage_change_confirm_title => 'Dataopslaglocatie wijzigen?';
  @override
  String get data_storage_location_default => 'Standaardlocatie';
  @override
  String get data_storage_location_hint =>
      'Waar Fushi je bibliotheek, luisterboeken en database bewaart. Alleen desktop.';
  @override
  String get data_storage_location_title => 'Dataopslaglocatie';
  @override
  String data_storage_migrate_failed({required Object message}) =>
      'Kan gegevens niet verplaatsen: ${message}';
  @override
  String get data_storage_migrate_failed_restart => 'Herstarten';
  @override
  String get data_storage_migrate_failed_suggestions =>
      'Probeer het opnieuw met een andere, lege map. Kies niet de installatiemap van de app en zorg dat geen bestanden op die locatie in gebruik zijn.';
  @override
  String get data_storage_migrate_failed_title => 'Datamigratie mislukt';
  @override
  String data_storage_migrate_overlay_progress({
    required Object copied,
    required Object total,
  }) => 'Bestanden kopiëren: ${copied} / ${total}';
  @override
  String get data_storage_migrate_overlay_title => 'Je gegevens verplaatsen';
  @override
  String get data_storage_migrate_overlay_warning =>
      'Houd de app open. Sluit de app niet af en schakel je computer niet uit totdat het klaar is.';
  @override
  String get data_storage_migrate_success => 'Gegevens verplaatst. Herstarten…';
  @override
  String get data_storage_migrating => 'Gegevens verplaatsen…';
  @override
  String get data_storage_reject_install_dir =>
      'Die map is de installatielocatie van de app en kan je gegevens niet opslaan. Kies een andere, lege map.';
  @override
  String get data_storage_restart_failed =>
      'Gegevens verplaatst, maar automatisch herstarten mislukt. Open Fushi handmatig opnieuw.';
  @override
  String db_downgrade_message({
    required Object dbVersion,
    required Object appVersion,
  }) =>
      'Deze database is gemaakt door een nieuwere versie van Fushi (schema v${dbVersion}). Je huidige app is te oud (v${appVersion}). Het openen is geblokkeerd om je gegevens te beschermen. Werk de app bij en probeer het opnieuw.';
  @override
  String get db_downgrade_title => 'Fushi bijwerken';
  @override
  String get db_unrecoverable_message =>
      'De database kon niet worden geopend, zelfs niet na automatisch herstel. Het is waarschijnlijk beschadigd. Je kunt een back-up herstellen bij Instellingen, of appgegevens wissen om opnieuw te beginnen.';
  @override
  String get db_unrecoverable_title => 'Database beschadigd';
  @override
  String get debug_log_share_subject => 'Fushi-debuglog';
  @override
  String debug_log_title({required Object count}) => 'Debug-logboek (${count})';
  @override
  String get debug_log_toggle => 'Debug-log inschakelen';
  @override
  String get decrease => 'Verlagen';
  @override
  String get deduplicate_pitch_accents => 'Toonhoogteaccenten dedupliceren';
  @override
  String get delete_collection => 'Collectie verwijderen';
  @override
  String get delete_collection_also_books => 'Ook de boeken erin verwijderen';
  @override
  String get delete_collection_also_videos =>
      'Ook de video\'s verwijderen (behoudt je originele videobestanden)';
  @override
  String get delete_custom_theme => 'Thema verwijderen';
  @override
  String get delete_custom_theme_confirm =>
      'Dit aangepaste thema verwijderen? Dit kan niet ongedaan worden gemaakt.';
  @override
  String get delete_in_progress => 'Verwijderen bezig';
  @override
  String get delete_prompt_delete_selected => 'Geselecteerde verwijderen';
  @override
  String get delete_prompt_message =>
      'Deze items zijn verwijderd op een ander apparaat. Hier ook verwijderen?';
  @override
  String get delete_prompt_select_all => 'Alles selecteren';
  @override
  String get delete_prompt_title => 'Verwijderd op een ander apparaat';
  @override
  String get delete_scope_keep_local_desc =>
      'Andere apparaten behouden hun kopie';
  @override
  String get delete_scope_sync_everywhere => 'Overal verwijderen';
  @override
  String get delete_scope_sync_everywhere_desc =>
      'Andere apparaten bevestigen de verwijdering bij de volgende sync';
  @override
  String get design_system_auto => 'Automatisch';
  @override
  String get design_system_hint => 'Bepaalt de visuele stijl van de app';
  @override
  String get design_system_label => 'Ontwerpsysteem';
  @override
  String get dialog_add => 'TOEVOEGEN';
  @override
  String get dialog_append => 'TOEVOEGEN';
  @override
  String get dialog_cancel => 'ANNULEREN';
  @override
  String get dialog_clear => 'WISSEN';
  @override
  String get dialog_clear_all_dictionaries => 'Alle woordenboeken verwijderen';
  @override
  String get dialog_close => 'SLUITEN';
  @override
  String get dialog_connect => 'VERBINDEN';
  @override
  String get dialog_content_dictionary_clear =>
      'Het wissen van de woordenboekdatabase wist ook alle zoekresultaten uit de geschiedenis.';
  @override
  String get dialog_content_dictionary_delete =>
      'Het verwijderen van een enkel woordenboek kan langer duren dan het wissen van de hele database. Dit wist ook alle zoekresultaten uit de geschiedenis.';
  @override
  String get dialog_create => 'AANMAKEN';
  @override
  String get dialog_crop => 'BIJSNIJDEN';
  @override
  String get dialog_delete => 'VERWIJDEREN';
  @override
  String get dialog_done => 'KLAAR';
  @override
  String get dialog_edit => 'BEWERKEN';
  @override
  String get dialog_edit_info => 'Info bewerken';
  @override
  String get dialog_exit => 'AFSLUITEN';
  @override
  String get dialog_export => 'EXPORTEREN';
  @override
  String get dialog_import => 'IMPORTEREN';
  @override
  String get dialog_import_dictionary => 'Woordenboek importeren';
  @override
  String get dialog_import_folder => 'Mapwoordenboek importeren';
  @override
  String get dialog_importing => 'IMPORTEREN…';
  @override
  String get dialog_launch_ankidroid => 'ANKIDROID OPENEN';
  @override
  String get dialog_ok => 'OK';
  @override
  String get dialog_play => 'AFSPELEN';
  @override
  String get dialog_read => 'LEZEN';
  @override
  String get dialog_record => 'OPNEMEN';
  @override
  String get dialog_replace => 'Vervangen';
  @override
  String get dialog_save => 'OPSLAAN';
  @override
  String get dialog_search => 'ZOEKEN';
  @override
  String get dialog_select => 'SELECTEREN';
  @override
  String get dialog_share => 'DELEN';
  @override
  String get dialog_stash => 'VERZAMELING';
  @override
  String get dialog_stop => 'STOPPEN';
  @override
  String get dialog_title_dictionary_clear => 'Alle woordenboeken wissen?';
  @override
  String dialog_title_dictionary_delete({required Object name}) =>
      '『${name}』 verwijderen?';
  @override
  String get dict_auto_update => 'Automatisch bijwerken';
  @override
  String get dict_auto_update_hint =>
      'Bij het opstarten controleren op woordenboekupdates';
  @override
  String dict_auto_update_last({required Object time}) =>
      'Laatste geslaagde controle: ${time}';
  @override
  String get dict_auto_update_never => 'Nooit';
  @override
  String get dict_category_frequency => 'Frequentie';
  @override
  String get dict_category_grammar => 'Grammatica';
  @override
  String get dict_category_ja_en => 'Japans–Engels';
  @override
  String get dict_category_ja_ja => 'Japans–Japans';
  @override
  String get dict_category_ja_other => 'Overig Japans';
  @override
  String get dict_category_kanji => 'Kanji';
  @override
  String get dict_category_names => 'Namen';
  @override
  String get dict_category_supplementary => 'Aanvullend';
  @override
  String get dict_download_browse => 'Woordenboeken downloaden';
  @override
  String dict_download_button({required Object count}) =>
      'Downloaden (${count})';
  @override
  String get dict_download_complete => 'Download voltooid.';
  @override
  String dict_download_failed({required Object error}) =>
      'Download mislukt: ${error}';
  @override
  String get dict_download_installed => 'Geïnstalleerd';
  @override
  String get dict_download_language => 'Je taal';
  @override
  String dict_download_partial({
    required Object success,
    required Object total,
    required Object error,
  }) => '${success} / ${total} OK. Mislukt: ${error}';
  @override
  String get dict_download_select_title => 'Selecteer woordenboeken';
  @override
  String dict_downloading({required Object name}) => 'Downloaden van ${name}…';
  @override
  String dict_import_failed_summary({required Object n}) =>
      'Importeren van ${n} woordenboek(en) mislukt';
  @override
  String get dict_import_started =>
      'Woordenboeken op de achtergrond importeren...';
  @override
  String dict_import_success_summary({required Object n}) =>
      '${n} woordenboek(en) geïmporteerd';
  @override
  String get dict_update_check => 'Controleren op updates';
  @override
  String get dict_update_checking => 'Controleren op updates…';
  @override
  String dict_update_done({required Object name}) => '${name} bijgewerkt.';
  @override
  String dict_update_failed({required Object error}) =>
      'Bijwerken mislukt: ${error}';
  @override
  String get dict_update_interval_daily => 'Dagelijks';
  @override
  String get dict_update_interval_monthly => 'Maandelijks';
  @override
  String get dict_update_interval_weekly => 'Wekelijks';
  @override
  String get dict_update_latest => 'Al up-to-date.';
  @override
  String dict_update_name_mismatch_body({
    required Object incoming,
    required Object existing,
  }) =>
      'Het geselecteerde bestand is "${incoming}", maar je werkt "${existing}" bij. Toch vervangen?';
  @override
  String get dict_update_name_mismatch_title => 'Namen komen niet overeen';
  @override
  String get dict_update_none => 'Alle woordenboeken zijn up-to-date.';
  @override
  String dict_update_summary({
    required Object updated,
    required Object current,
    required Object failed,
  }) => '${updated} bijgewerkt, ${current} up-to-date, ${failed} mislukt.';
  @override
  String get dict_update_tooltip => 'Woordenboek bijwerken';
  @override
  String dict_update_updating({required Object name}) => '${name} bijwerken…';
  @override
  String get dictionaries => 'Woordenboeken';
  @override
  String get dictionaries_delete_failed =>
      'Verwijderen van woordenboeken mislukt';
  @override
  String get dictionaries_deleting_data => 'Woordenboekgegevens verwijderen...';
  @override
  String get dictionaries_menu_empty =>
      'Importeer een woordenboek voor gebruik';
  @override
  String get dictionary_delete_failed => 'Verwijderen van woordenboek mislukt';
  @override
  String get dictionary_font_size => 'Lettergrootte woordenboek';
  @override
  String get dictionary_font_size_zoom_hint =>
      'Ctrl + scrollwiel zoomt de popup-inhoud';
  @override
  String get dictionary_section_frequency => 'Frequentiewoordenboeken';
  @override
  String get dictionary_section_kanji => 'Kanjiwoordenboeken';
  @override
  String get dictionary_section_pitch => 'Toonhoogtewoordenboeken';
  @override
  String get dictionary_section_term => 'Termwoordenboeken';
  @override
  String get dictionary_settings => 'Woordenboekinstellingen';
  @override
  String get dictionary_type_frequency => 'Frequentie';
  @override
  String get dictionary_type_pitch => 'Toonhoogte';
  @override
  String get dictionary_type_term => 'Term';
  @override
  String get dictionary_unrecognized_format =>
      'Woordenboekformaat niet herkend';
  @override
  String get dismiss_swipe_sensitivity => 'Veeg-wegsluiten gevoeligheid';
  @override
  String get display_settings => 'Weergave-instellingen';
  @override
  String get download_backend_not_configured =>
      'Download-backend is nog niet geconfigureerd.';
  @override
  String get download_clear_finished => 'Voltooide wissen';
  @override
  String get download_detail_backend_offline =>
      'De oorspronkelijke download-backend is offline. Opgeslagen taakinformatie wordt getoond; live parameters zijn niet beschikbaar.';
  @override
  String get download_open_settings => 'Instellingen openen';
  @override
  String get download_save_root_change => 'Map wijzigen';
  @override
  String get download_save_root_create_failed =>
      'Kan die map niet aanmaken. Controleer de schijf en rechten.';
  @override
  String get download_save_root_fallback_warning =>
      'De ingestelde downloadmap is niet beschikbaar, dus wordt de standaardmap gebruikt.';
  @override
  String get download_save_root_hint =>
      'Nieuwe downloads worden hier opgeslagen. Bestaande taken behouden hun oorspronkelijke map.';
  @override
  String get download_save_root_not_absolute => 'Kies een absoluut mappad.';
  @override
  String get download_save_root_not_writable =>
      'Die map is niet beschrijfbaar.';
  @override
  String get download_save_root_reset => 'Standaard herstellen';
  @override
  String get download_save_root_title => 'Downloadmap';
  @override
  String get download_settings => 'Downloadinstellingen';
  @override
  String get download_status_cancelled => 'Geannuleerd';
  @override
  String get download_status_queued => 'In wachtrij';
  @override
  String download_subscription_after_episode({required Object episode}) =>
      'Na aflevering ${episode}';
  @override
  String get download_subscription_check_all => 'Alles controleren';
  @override
  String get download_subscription_check_now => 'Nu controleren';
  @override
  String download_subscription_choice_hint({
    required Object group,
    required Object resolution,
  }) =>
      'Volg ${group} · ${resolution}. Nieuwe afzonderlijke afleveringen worden in de wachtrij geplaatst.';
  @override
  String get download_subscription_created =>
      'Download in wachtrij en abonnement aangemaakt';
  @override
  String get download_subscription_delete => 'Abonnement verwijderen';
  @override
  String download_subscription_delete_confirm({required Object title}) =>
      'Het abonnement voor ${title} verwijderen? Gedownloade taken worden bewaard.';
  @override
  String get download_subscription_download_and_create =>
      'Downloaden en abonneren';
  @override
  String get download_subscription_empty_body =>
      'Kies in Ontdekken een afzonderlijke aflevering en gebruik Downloaden en abonneren.';
  @override
  String get download_subscription_empty_title => 'Nog geen abonnementen';
  @override
  String download_subscription_last_checked({required Object time}) =>
      'Laatst gecontroleerd: ${time}';
  @override
  String download_subscription_latest_episode({required Object episode}) =>
      'Laatst in wachtrij: aflevering ${episode}';
  @override
  String get download_subscription_never_checked => 'Nooit gecontroleerd';
  @override
  String get download_subscription_running_hint =>
      'Fushi controleert ingeschakelde abonnementen elke 15 minuten terwijl de app draait.';
  @override
  String get download_subscription_unavailable_hint =>
      'Kies een afzonderlijke aflevering met een herkenbare releasegroep om te abonneren.';
  @override
  String get download_subscriptions_tab => 'Abonnementen';
  @override
  String download_task_action_failed({required Object error}) =>
      'De taakactie is mislukt: ${error}';
  @override
  String get download_task_delete => 'Taak verwijderen';
  @override
  String download_task_delete_confirm({required Object title}) =>
      'De downloadtaak voor ${title} verwijderen?';
  @override
  String get download_task_delete_files =>
      'Ook gedownloade bestanden verwijderen';
  @override
  String get download_task_details => 'Details bekijken';
  @override
  String get download_tasks_tab => 'Taken';
  @override
  String get download_test_connection => 'Verbinding testen';
  @override
  String get download_test_connection_failed =>
      'Verbinding mislukt. Controleer het adres en de inloggegevens.';
  @override
  String download_test_connection_ok({required Object version}) =>
      'Verbonden (versie: ${version})';
  @override
  String get drag_drop_need_card_target =>
      'Sleep ondertitels of audio op een boek of video';
  @override
  String get drag_drop_unsupported_on_books =>
      'Sleep boekbestanden hierheen. Schakel over naar Video of Woordenboeken voor die bestanden.';
  @override
  String get drag_drop_unsupported_on_dictionary =>
      'Sleep .zip-, .dsl- of .mdx-woordenboekbestanden hierheen. CSS-bestanden werken alleen samen met een woordenboekpakket.';
  @override
  String get drag_drop_unsupported_on_video =>
      'Sleep video\'s, afspeellijsten of ondertitels hierheen. Schakel over naar Boeken of Woordenboeken voor die bestanden.';
  @override
  String get edit_custom_theme => 'Aangepast thema bewerken';
  @override
  String get eink_mode => 'E-inkmodus';
  @override
  String get eink_mode_hint =>
      'Puur zwart-witthema zonder animaties en met lijnmarkeringen, voor e-inkschermen';
  @override
  String get enable_swipe_to_close => 'Vegen om pop-up te sluiten';
  @override
  String get epub_delete_error => 'Verwijderen van boek mislukt';
  @override
  String get epub_delete_title => 'Boek verwijderen';
  @override
  String get epub_parse_fallback => 'Boekmetadata hersteld uit database';
  @override
  String get error_ankidroid_api => 'AnkiDroid-fout';
  @override
  String get error_ankidroid_api_content =>
      'Er was een probleem bij de communicatie met AnkiDroid.\n\nZorg ervoor dat de AnkiDroid-achtergrondservice actief is en alle relevante app-machtigingen zijn verleend.';
  @override
  String get error_copied => 'Fout gekopieerd naar klembord';
  @override
  String get error_load_failed => 'Er ging iets mis tijdens het laden';
  @override
  String get error_log_diagnostics_section =>
      'Diagnostiek / forensisch (geen app-fouten)';
  @override
  String get error_log_empty => 'Geen foutenlogboek';
  @override
  String error_log_label({required Object n}) => 'Foutenlogboek (${n})';
  @override
  String get error_log_previous_run =>
      'Eerdere logboeken (vóór de laatste sessie)';
  @override
  String get error_log_share_subject => 'Fushi foutenlogboek';
  @override
  String get extension_popup_independent_size =>
      'Aparte grootte voor browserextensie';
  @override
  String get extension_popup_independent_size_hint =>
      'Geef de browserextensie-opzoekpopup een eigen maximale grootte in plaats van de in-app-popup te volgen';
  @override
  String get extension_popup_max_height => 'Extensiepopup max. hoogte';
  @override
  String get extension_popup_max_width => 'Extensiepopup max. breedte';
  @override
  String get external_window_capture_failed => 'Vensteropname mislukt';
  @override
  String get external_window_current_game => 'Huidig spel';
  @override
  String get external_window_mining => 'Extern venster delven';
  @override
  String get external_window_no_windows => 'Geen opneembare vensters gevonden';
  @override
  String get external_window_none =>
      'Geen venster gekoppeld (tik om te selecteren)';
  @override
  String get external_window_refresh => 'Vensterlijst vernieuwen';
  @override
  String get external_window_select => 'Doelvenster selecteren';
  @override
  String get external_window_unbind => 'Venster ontkoppelen';
  @override
  String get external_window_unsupported =>
      'Extern venster delven is alleen beschikbaar op Windows';
  @override
  String get failed_online_service => 'Communicatie met online service mislukt';
  @override
  String get favorite_added => 'Zin opgeslagen in favorieten';
  @override
  String get favorite_removed => 'Zin verwijderd uit favorieten';
  @override
  String favorites({required Object n}) => 'Favorieten (${n})';
  @override
  String field_fallback_used({
    required Object field,
    required Object secondField,
  }) => 'Het veld ${field} gebruikte ${secondField} als terugvalzoekterm.';
  @override
  String file_count({required Object count}) => '${count} bestanden';
  @override
  String get floating_dict_close => 'Sluiten';
  @override
  String get floating_dict_title => 'Woordenboek';
  @override
  String get floating_lyric_bg_opacity =>
      'Achtergronddekking zwevende ondertitel';
  @override
  String get floating_lyric_button_bg_opacity =>
      'Dekking knopachtergrond zwevende ondertitel';
  @override
  String get floating_lyric_click_lookup =>
      'Tik op zwevende ondertitel om op te zoeken';
  @override
  String get floating_lyric_click_lookup_hint =>
      'Houd dit aan met positievergrendeling als je nog steeds woorden wilt opzoeken.';
  @override
  String get floating_lyric_close => 'Sluiten';
  @override
  String get floating_lyric_context_lines =>
      'Zwevende ondertitel contextregels';
  @override
  String get floating_lyric_context_lines_hint =>
      '0 toont alleen de huidige regel (enkel, ongewijzigd); stel 1-3 in om zoveel regels ervoor en erna te tonen';
  @override
  String get floating_lyric_corner_radius => 'Zwevende ondertitel hoekradius';
  @override
  String get floating_lyric_corner_radius_hint =>
      '0 behoudt de standaardhoeken per platform; verhoog om de balk en knoppen ronder te maken';
  @override
  String get floating_lyric_font_size => 'Lettergrootte zwevende ondertitel';
  @override
  String get floating_lyric_hint => 'Huidige zin over andere apps tonen.';
  @override
  String get floating_lyric_lock => 'Vergrendelen';
  @override
  String get floating_lyric_next => 'Volgende';
  @override
  String get floating_lyric_no_audio =>
      'Bij dit boek is geen audio om te beluisteren';
  @override
  String get floating_lyric_permission_hint =>
      'Overlaymachtiging is vereist om zwevende songteksten weer te geven.';
  @override
  String get floating_lyric_permission_hint_coloros =>
      'Als het systeem de overlaytoestemming blijft weigeren: herinstalleer de APK van deze app eenmalig met een bestandsbeheerder, of schakel toestemmingsmonitoring uit bij Ontwikkelaarsopties, en probeer het dan opnieuw.';
  @override
  String get floating_lyric_play_pause => 'Afspelen';
  @override
  String get floating_lyric_previous => 'Vorige';
  @override
  String get floating_lyric_text_opacity => 'Tekstdekking zwevende ondertitel';
  @override
  String get floating_lyric_toggle_action => 'Zwevende ondertitel';
  @override
  String get floating_lyric_unavailable_hint =>
      'Kan het venster met zwevende ondertitel niet tonen.';
  @override
  String get floating_lyric_unlock => 'Ontgrendelen';
  @override
  String get floating_lyric_width => 'Zwevende ondertitel breedte';
  @override
  String get floating_lyric_width_hint =>
      '0 gebruikt de standaardbreedte van het platform; stel een waarde in om de balk een vaste breedte te geven';
  @override
  String get focus_navigation_enabled =>
      'Focusnavigatie met toetsenbord & gamepad';
  @override
  String get focus_navigation_enabled_hint =>
      'Verplaats de focus met pijltjestoetsen of een gamepad en toon een focusring.';
  @override
  String get folder_picker_permission_required =>
      'Opslagtoestemming is vereist om mappen te bladeren';
  @override
  String get follow_audio_off_tooltip => 'Audio volgen: UIT';
  @override
  String get follow_audio_on_tooltip => 'Audio volgen: AAN';
  @override
  String get font_color => 'Letterkleur';
  @override
  String get font_color_desc => 'Tekstkleur van de lezer';
  @override
  String get font_desc_hina_mincho =>
      'Zacht decoratief Mincho · Past goed bij Noto Sans JP';
  @override
  String get font_desc_klee_one =>
      'Handschriftstijl · Helder en leesbaar · Past goed bij Noto Sans JP';
  @override
  String get font_desc_mplus_rounded_1c =>
      'Schattige afgeronde stijl · Ideaal voor light novels · Past goed bij Noto Sans JP';
  @override
  String get font_desc_noto_sans_jp =>
      'Google/Adobe Gothic · Japanse glyphs prioriteit · Variabel gewicht';
  @override
  String get font_desc_noto_sans_sc =>
      'Google/Adobe Gothic · Vereenvoudigd Chinees prioriteit · Gebruik als terugvallettertype';
  @override
  String get font_desc_noto_sans_tc =>
      'Google/Adobe Gothic · Traditioneel Chinees prioriteit';
  @override
  String get font_desc_noto_serif_jp =>
      'Google/Adobe Serif · Japanse glyphs prioriteit · Ideaal voor verticaal lezen';
  @override
  String get font_desc_noto_serif_sc =>
      'Google/Adobe Serif · Vereenvoudigd Chinees prioriteit · Gebruik als terugvallettertype';
  @override
  String get font_desc_noto_serif_tc =>
      'Google/Adobe Serif · Traditioneel Chinees glyphenprioriteit · Ideaal voor verticaal lezen';
  @override
  String get font_desc_shippori_mincho =>
      'Elegant Mincho · Ideaal voor literatuur · Past goed bij Noto Sans JP';
  @override
  String get font_desc_zen_kaku_gothic_new =>
      'Modern Kaku Gothic · Algemeen lezen · Past goed bij Noto Sans JP';
  @override
  String get font_desc_zen_maru_gothic =>
      'Zacht afgerond Gothic · Past goed bij Noto Sans JP';
  @override
  String get font_desc_zen_old_mincho =>
      'Vintage Mincho · Klassieke literaire stijl · Past goed bij Noto Sans JP';
  @override
  String get font_source_file => 'Bestand';
  @override
  String get font_source_system => 'Systeem';
  @override
  String get font_target_app_ui => 'Lettertype systeem-UI';
  @override
  String get font_target_body => 'Lettertype romantekst';
  @override
  String get font_target_dictionary => 'Lettertype woordenboek';
  @override
  String get font_target_video_subtitle => 'Video Subtitle Font';
  @override
  String get gal_hook_text_font_size => 'Galgame-bijschrift lettergrootte';
  @override
  String get gal_hook_text_font_size_hint =>
      'Sleep de hoek van de overlay om het venster te herschalen; de bijschriftgrootte wordt hier ingesteld.';
  @override
  String get game_add => 'Spel toevoegen';
  @override
  String get game_already_added => 'Dit spel staat al in de bibliotheek';
  @override
  String get game_audio_backend_engine => 'Engine PCM';
  @override
  String get game_audio_backend_loopback => 'Systeemloopback (gemixt)';
  @override
  String get game_audio_backend_none => 'Geen audiobron';
  @override
  String get game_audio_backend_resource => 'Game-resourceaudio';
  @override
  String get game_audio_duration => 'Audioduur';
  @override
  String get game_audio_fallback_disabled_missing =>
      '未找到与该句匹配的游戏资源音频；已关闭降级，未制卡';
  @override
  String get game_audio_resource_id => '音频资源 ID';
  @override
  String get game_audio_tracks => 'Actieve audiotracks';
  @override
  String get game_auto_cover => 'Omslag automatisch ophalen';
  @override
  String get game_back_to_capture => 'Terug naar opnamewerkruimte';
  @override
  String get game_back_to_library => 'Terug naar spelbibliotheek';
  @override
  String get game_capture_active => 'Opname is actief';
  @override
  String get game_capture_degraded_loopback =>
      'Het spel draait, maar engine-injectie is mislukt; er wordt teruggevallen op systeemaudio, wat BGM en effecten kan bijmengen.';
  @override
  String get game_capture_description =>
      'Start of koppel een spel, en monitor vervolgens tekst, spraak, schermafbeeldingen en Anki-uitvoer.';
  @override
  String get game_capture_empty_body =>
      'Start of koppel een spel; tekst- en zinsaudiostatus verschijnt hier.';
  @override
  String get game_capture_empty_title => 'Nog geen regels ontvangen';
  @override
  String get game_capture_launch_failed => 'Spel starten of opname mislukt';
  @override
  String get game_capture_launching => 'Spel starten en opname beginnen...';
  @override
  String get game_capture_running => 'Opnamesessie draait';
  @override
  String get game_capture_window_missing =>
      'Het spelproces is gestart maar het venster verscheen nooit, dus het spel is mogelijk niet gestart. Probeer het opnieuw.';
  @override
  String get game_capture_workbench => 'Opnamewerkruimte';
  @override
  String get game_captured_lines => 'Opgenomen regels';
  @override
  String get game_card_mapping_missing =>
      'Anki-veldtoewijzingen missen game-kaarttokens';
  @override
  String get game_card_sentence_audio_missing =>
      'De kaart is aangemaakt zonder zinsaudio; audio van een andere regel is niet gebruikt.';
  @override
  String get game_clear_events => 'Gebeurtenissen wissen';
  @override
  String get game_cover_not_found =>
      'Geen bruikbare omslag gevonden in de spelmap of het uitvoerbestand';
  @override
  String get game_cover_searching => 'Omslag zoeken...';
  @override
  String get game_cover_updated => 'Omslag bijgewerkt';
  @override
  String get game_dashboard => 'Start';
  @override
  String get game_detail_missing =>
      'Dit spel staat niet meer in de bibliotheek';
  @override
  String get game_detail_tab_edit => 'Bewerken';
  @override
  String get game_detail_tab_stats => 'Statistieken';
  @override
  String get game_detail_tab_summary => 'Overzicht';
  @override
  String get game_diagnostics => 'Compatibiliteitsdiagnostiek';
  @override
  String get game_diagnostics_subtitle =>
      'Sessiefasen, eindpunten, audiotracks en gestructureerde gebeurtenissen';
  @override
  String game_drop_imported({required Object count}) =>
      '${count} spel(len) toegevoegd';
  @override
  String get game_drop_no_exe =>
      'Geen nieuw game-.exe bestand onder de gesleepte bestanden';
  @override
  String get game_edit_developer => 'Ontwikkelaar';
  @override
  String get game_edit_display_name => 'Weergavenaam';
  @override
  String get game_edit_exe_path => 'Uitvoerbestandspad';
  @override
  String get game_edit_invalid_date => 'Releasedatum moet JJJJ-MM-DD zijn';
  @override
  String get game_edit_launch_args => 'Startargumenten';
  @override
  String get game_edit_launch_args_hint =>
      'Wordt meegegeven aan het spel bij het starten, bijv. -windowed';
  @override
  String get game_edit_nsfw => 'Volwassen titel';
  @override
  String get game_edit_release_date => 'Releasedatum (JJJJ-MM-DD)';
  @override
  String get game_edit_save => 'Opslaan';
  @override
  String get game_edit_saved => 'Opgeslagen';
  @override
  String get game_edit_summary => 'Beschrijving';
  @override
  String get game_edit_tags => 'Tags (kommagescheiden)';
  @override
  String get game_edit_user_rating => 'Mijn beoordeling (0-10)';
  @override
  String get game_edit_user_review => 'Mijn recensie';
  @override
  String get game_edit_workdir => 'Werkmap';
  @override
  String get game_empty => 'Nog geen spellen toegevoegd';
  @override
  String get game_endpoint_phase_connected => 'Verbonden';
  @override
  String get game_endpoint_phase_connecting => 'Verbinden';
  @override
  String get game_endpoint_phase_retrying => 'Opnieuw proberen';
  @override
  String get game_endpoint_phase_stopped => 'Gestopt';
  @override
  String get game_endpoints_engine_active =>
      'Tekst wordt geleverd door de engine-hook; deze eindpunten zijn optioneel';
  @override
  String get game_endpoints_hint =>
      'Poorten voor externe teksthulpmiddelen (Textractor / LunaTranslator etc.); negeer als je ze niet gebruikt';
  @override
  String get game_event_all => 'Alle gebeurtenissen';
  @override
  String get game_event_warnings => 'Waarschuwingen en fouten';
  @override
  String get game_exe_missing => 'Speluitvoerbestand niet gevonden';
  @override
  String get game_filter => 'Filteren';
  @override
  String get game_filter_all => 'Alles';
  @override
  String get game_filter_favorited => 'Favoriet';
  @override
  String get game_filter_hide_nsfw => 'Volwassen titels verbergen';
  @override
  String get game_filter_local_only => 'Heeft lokaal bestand';
  @override
  String get game_filter_metadata_only => 'Alleen metadata';
  @override
  String get game_filter_mined => 'Gedolven';
  @override
  String get game_filter_reset => 'Filters wissen';
  @override
  String get game_filter_source => 'Beschikbaarheid';
  @override
  String get game_filter_status => 'Speelstatus';
  @override
  String get game_filter_tags => 'Tags';
  @override
  String get game_filter_with_audio => 'Met audio';
  @override
  String get game_focus_continue => 'Doorgaan';
  @override
  String get game_follow_live => 'Live volgen';
  @override
  String get game_health => 'Gezondheidsstatus';
  @override
  String get game_health_anki => 'Anki-uitvoer';
  @override
  String get game_health_audio => 'Audiobron';
  @override
  String get game_health_helper => 'Hook-helper';
  @override
  String get game_health_process => 'Spelproces';
  @override
  String get game_health_text => 'Tekstbron';
  @override
  String get game_health_upscaling => 'Vensteropschaling';
  @override
  String get game_health_window => 'Spelvenster';
  @override
  String get game_helper_download => 'Downloaden';
  @override
  String game_helper_download_failed({required Object error}) =>
      'Download van enginecomponent mislukt: ${error}';
  @override
  String get game_helper_downloading => 'Enginecomponent downloaden…';
  @override
  String get game_helper_install_incomplete =>
      'Installatie van enginecomponent incompleet, probeer opnieuw';
  @override
  String game_helper_needed_body({required Object size}) =>
      'Het starten van een galgame vereist de engine-hook-injectorcomponent (ca. ${size}). Deze bevat procesinjectiecode en wordt apart van de app geleverd om valse antiviruspositieven te voorkomen. Nu downloaden?';
  @override
  String get game_helper_needed_title => 'Galgame-enginecomponent vereist';
  @override
  String get game_helper_size_unknown => 'onbekende grootte';
  @override
  String get game_helper_verification_failed =>
      'Enginecomponent geblokkeerd: de checksum kon niet worden geverifieerd (het .sha256-bestand van GitHub is onbereikbaar, ontbreekt of komt niet overeen). Fushi weigert niet-geverifieerde injectorcode te installeren.';
  @override
  String get game_home_subtitle => 'Spelbibliotheek en opnamemonitoring';
  @override
  String get game_hook_fallback_all_audio_sources_failed =>
      'Noch de engine-spraakhook, noch de systeemloopback kon worden gestart; er kan geen audio worden opgenomen.';
  @override
  String get game_hook_fallback_engine_attach_failed =>
      'Het koppelen van de engine-spraakhook aan het draaiende spel is mislukt; systeemmix wordt gebruikt.';
  @override
  String get game_hook_fallback_engine_pcm_unavailable =>
      'De engine-spraakhook is geïnstalleerd, maar het spel heeft nog geen spraak afgespeeld. Systeemmix wordt voorlopig gebruikt en schakelt automatisch terug zodra de eerste spraak arriveert.';
  @override
  String get game_hook_fallback_launch_injection_failed =>
      'Het spel draait, maar vroege engine-injectie is mislukt; systeemmix wordt gebruikt.';
  @override
  String get game_hook_fallback_window_not_found =>
      'Audio-opname draait, maar het spelvenster is nog niet verschenen, dus schermafbeeldingen zijn niet beschikbaar. Het wordt automatisch gekoppeld zodra het venster verschijnt.';
  @override
  String get game_hook_line_unavailable =>
      'Deze opgenomen regel is niet meer beschikbaar.';
  @override
  String get game_hook_reason_access_denied =>
      'Het spel draait met hogere rechten; start Fushi als administrator en probeer opnieuw.';
  @override
  String get game_hook_reason_bitness_mismatch =>
      'Helperarchitectuur komt niet overeen met het spel (32-bit vs 64-bit); herinstalleer de helper.';
  @override
  String get game_hook_reason_create_process_failed =>
      'Het spel kon niet worden gestart vanuit Fushi; controleer het uitvoerbestandspad.';
  @override
  String get game_hook_reason_elevation_required =>
      'Dit spel vereist administratorrechten; start Fushi als administrator en start het opnieuw.';
  @override
  String get game_hook_reason_game_exe_missing =>
      'Het speluitvoerbestand bestaat niet meer op het opgeslagen pad.';
  @override
  String get game_hook_reason_guarded_hook_failed =>
      'Een door een profiel beveiligde hook kon niet op tijd worden geïnstalleerd; wordt automatisch opnieuw geprobeerd.';
  @override
  String get game_hook_reason_handshake_timeout =>
      'Het spel was gehooked maar produceerde geen tekst of audio op tijd; deze engine wordt mogelijk nog niet ondersteund.';
  @override
  String get game_hook_reason_helper_missing =>
      'Spraakhook-helper is niet geïnstalleerd voor deze spelarchitectuur; installeer deze en probeer opnieuw.';
  @override
  String get game_hook_reason_hook_dll_missing =>
      'Het helperpakket is incompleet (hookbibliotheek ontbreekt); herinstalleer het.';
  @override
  String get game_hook_reason_injection_failed =>
      'Injectie in het spel is geblokkeerd; voeg Fushi en het spel toe aan antivirusuitzonderingen.';
  @override
  String get game_hook_reason_ready_timeout =>
      'De hookbibliotheek is niet op tijd geladen; antivirusscannen kan dit veroorzaken.';
  @override
  String get game_hook_reason_resume_failed =>
      'Het gestarte spel kon niet worden hervat en is gestopt; start het opnieuw.';
  @override
  String get game_hook_reason_shared_memory_unavailable =>
      'Het opnamekanaal kon niet worden geopend; herstart Fushi.';
  @override
  String get game_hook_reason_spawn_failed =>
      'De helper kon niet worden gestart; controleer of antivirus deze niet heeft verwijderd of geblokkeerd.';
  @override
  String get game_hook_reason_resident_hook_mismatch =>
      'Een vorige opnamesessie is nog geladen in het spel; herstart het spel.';
  @override
  String get game_hook_reason_steam_timeout =>
      'Steam heeft het startverzoek geaccepteerd maar het spelproces is nooit verschenen.';
  @override
  String get game_hook_reason_target_missing =>
      'Er is geen spelproces of uitvoerbestand geselecteerd voor opname.';
  @override
  String get game_hook_recapture_empty =>
      'Geen audio opgenomen in het heropnamevenster';
  @override
  String get game_hook_recapture_saved =>
      'Heropgenomen spraak opgeslagen voor deze regel';
  @override
  String get game_hook_recapture_started =>
      'Opnemen — speel deze regel opnieuw af in het spel';
  @override
  String get game_hook_recapture_unavailable =>
      'Spraakheropname vereist systeemloopback-audio';
  @override
  String get game_kpi_total_games => 'Spellen';
  @override
  String get game_kpi_week => 'Deze week';
  @override
  String get game_latest_line => 'Laatste regel';
  @override
  String get game_launch => 'Starten';
  @override
  String get game_launch_and_capture => 'Starten en opnemen';
  @override
  String get game_launch_unsupported =>
      'Spellen starten wordt alleen ondersteund op Windows';
  @override
  String get game_library => 'Spelbibliotheek';
  @override
  String get game_line_audio_encoded => 'Audio geëxtraheerd';
  @override
  String get game_line_audio_fallback => 'Terugval';
  @override
  String get game_line_audio_matched => 'Audio gereed';
  @override
  String get game_line_audio_missing => 'Geen audio';
  @override
  String get game_line_audio_pending => 'Koppelen';
  @override
  String get game_line_audio_unavailable => 'Alleen tekst';
  @override
  String get game_line_favorite_tooltip => 'Deze regel als favoriet markeren';
  @override
  String get game_line_mined => 'Gedolven';
  @override
  String get game_line_preview_failed =>
      'Geen afspeelbare audio voor deze regel';
  @override
  String get game_line_preview_tooltip => 'Audio van deze regel afspelen';
  @override
  String get game_line_track_applied => 'Spraaktrack toegepast op deze regel';
  @override
  String get game_line_track_dialog_title => 'Spraaktrack voor deze regel';
  @override
  String get game_line_track_failed =>
      'Die track heeft geen audio rond deze regel';
  @override
  String get game_line_track_tooltip => 'Kies de spraaktrack voor deze regel';
  @override
  String get game_line_unfavorite_tooltip => 'Favoriet verwijderen';
  @override
  String get game_live_lines => 'Live regels';
  @override
  String get game_manage_tracks => 'Audiotracks beheren';
  @override
  String get game_meta_added => 'Toegevoegd';
  @override
  String get game_meta_ranking => 'Ranglijst';
  @override
  String get game_meta_source => 'Databron';
  @override
  String get game_never_played => 'Nooit gespeeld';
  @override
  String get game_no_active_line =>
      'Selecteer een regel om de zinsaudiostatus te bekijken.';
  @override
  String get game_no_events => 'Nog geen sessiegebeurtenissen';
  @override
  String get game_no_match => 'Geen spellen voldoen aan de huidige filters';
  @override
  String get game_no_tracks => 'Nog geen audiotrackgegevens';
  @override
  String get game_open_capture_workspace => 'Opnamewerkruimte openen';
  @override
  String get game_phase_attaching => 'Koppelen';
  @override
  String get game_phase_degraded => 'Verminderd';
  @override
  String get game_phase_error => 'Fout';
  @override
  String get game_phase_idle => 'Inactief';
  @override
  String get game_phase_injecting => 'Injecteren';
  @override
  String get game_phase_launching => 'Starten';
  @override
  String get game_phase_resolving => 'Oplossen';
  @override
  String get game_phase_running => 'Draait';
  @override
  String get game_phase_stopping => 'Stoppen';
  @override
  String get game_phase_waiting_signals => 'Wachten op signalen';
  @override
  String get game_pipeline => 'Sessiepijplijn';
  @override
  String get game_play_status => 'Speelstatus';
  @override
  String get game_random_reroll => 'Willekeurig';
  @override
  String get game_random_title => 'Kies voor mij';
  @override
  String get game_recently_played => 'Recent gespeeld';
  @override
  String get game_refresh_tracks => 'Tracks vernieuwen';
  @override
  String get game_remove => 'Verwijderen';
  @override
  String get game_rename => 'Hernoemen';
  @override
  String get game_rename_label => 'Spelnaam';
  @override
  String get game_scrape => 'Metadata ophalen';
  @override
  String get game_scrape_applied => 'Metadata bijgewerkt';
  @override
  String get game_scrape_failed => 'Metadata ophalen mislukt';
  @override
  String get game_scrape_no_result => 'Geen overeenkomend item gevonden';
  @override
  String get game_scrape_query => 'Titel of bron-ID';
  @override
  String get game_search => 'Spellen zoeken';
  @override
  String get game_session_events => 'Sessiegebeurtenissen';
  @override
  String get game_session_idle => 'Opname is niet gestart';
  @override
  String get game_session_listening => 'Luisteren';
  @override
  String get game_set_cover => 'Omslag instellen';
  @override
  String get game_show_hook_text_window => 'Hooktekstvenster tonen';
  @override
  String get game_site_score => 'Sitebeoordeling';
  @override
  String get game_sort => 'Sorteren';
  @override
  String get game_sort_added => 'Datum toegevoegd';
  @override
  String get game_sort_last_played => 'Laatst gespeeld';
  @override
  String get game_sort_name => 'Naam';
  @override
  String get game_sort_release => 'Releasedatum';
  @override
  String get game_sort_site_score => 'Sitebeoordeling';
  @override
  String get game_sort_user_rating => 'Mijn beoordeling';
  @override
  String get game_stat_daily => 'Dagelijkse speeltijd';
  @override
  String get game_stat_delete_session => 'Deze sessie verwijderen';
  @override
  String get game_stat_last_played => 'Laatst gespeeld';
  @override
  String get game_stat_no_sessions => 'Nog geen speelsessies geregistreerd';
  @override
  String get game_stat_session_list => 'Sessiegeschiedenis';
  @override
  String get game_stat_sessions => 'Sessies';
  @override
  String get game_stat_today => 'Speeltijd vandaag';
  @override
  String get game_stat_total_time => 'Totale speeltijd';
  @override
  String get game_status_dropped => 'Gestopt';
  @override
  String get game_status_not_configured => 'Niet geverifieerd';
  @override
  String get game_status_on_hold => 'Uitgesteld';
  @override
  String get game_status_played => 'Gespeeld';
  @override
  String get game_status_playing => 'Aan het spelen';
  @override
  String get game_status_ready => 'Gereed';
  @override
  String get game_status_unset => 'Niet ingesteld';
  @override
  String get game_status_waiting => 'Wachtend';
  @override
  String get game_status_want_to_play => 'Wil spelen';
  @override
  String get game_stop_listening => 'Luisteraars stoppen';
  @override
  String get game_summary_aliases => 'Aliassen';
  @override
  String get game_summary_all_titles => 'Alle titels';
  @override
  String get game_summary_average_hours => 'Gemiddelde speeltijd';
  @override
  String get game_summary_none =>
      'Nog geen beschrijving. Haal metadata op om dit in te vullen.';
  @override
  String get game_summary_release_date => 'Releasedatum';
  @override
  String get game_tags_clear => 'Selectie wissen';
  @override
  String get game_tags_title => 'Speltags';
  @override
  String get game_text_endpoints => 'Teksteindpunten';
  @override
  String get game_text_gaps => 'Volgordelacunes';
  @override
  String get game_text_gaps_hint =>
      'Volgordelacunes = aantal gemiste regels in de hooktekstring; 0 is normaal';
  @override
  String get game_text_source_engine => 'Engine-hook';
  @override
  String get game_text_source_unknown => 'Onbekende bron';
  @override
  String get game_text_source_websocket => 'WebSocket';
  @override
  String get game_text_thread => 'Tekstthread';
  @override
  String game_text_thread_audio_count({required Object count}) =>
      '${count} met audio';
  @override
  String get game_text_thread_hint =>
      'Kies de schone dialoogthread, zoals in Luna Translator';
  @override
  String get game_track_auto => 'Automatische selectie';
  @override
  String get game_track_clips => 'Clips';
  @override
  String get game_track_energy => 'Energie';
  @override
  String get game_track_exclude_bgm => 'Als BGM markeren';
  @override
  String get game_track_exclusion_hint =>
      'Markeer een BGM/omgevingstrack als uitgesloten zodat automatische selectie deze nooit als spraak behandelt — regels zonder spraak pikken dan geen BGM meer op.';
  @override
  String get game_track_exclusion_title => 'Audiotracks uitsluiten';
  @override
  String get game_track_preview => 'Deze track beluisteren';
  @override
  String get game_track_preview_failed =>
      'Geen recente audio kon van deze track worden opgenomen';
  @override
  String get game_track_preview_stop => 'Beluisteren stoppen';
  @override
  String get game_track_restore => 'Track herstellen';
  @override
  String get game_track_select_as_voice => 'Gebruiken als spraaktrack';
  @override
  String get game_track_select_requires_engine =>
      'Trackselectie vereist een actieve engine-hooksessie';
  @override
  String get game_track_voice => 'Spraak';
  @override
  String get game_tracks_loopback_hint =>
      'Systeemloopback neemt de gehele gemixte uitvoer van het systeem op als één stream; per-track opsomming is niet beschikbaar.';
  @override
  String get game_tracks_pcm_only_hint =>
      'Per-trackselectie beïnvloedt alleen opname wanneer engine-PCM de actieve audiobackend is. De lijst hieronder is alleen-lezen onder de huidige backend.';
  @override
  String get game_tracks_resource_mode_hint =>
      'In game-resource-audiomodus wordt elke spraakregel direct uit spelbestanden geëxtraheerd, dus hier bestaat geen PCM-tracklijst. Automatische of handmatige trackselectie geldt alleen voor engine-PCM-opname.';
  @override
  String get game_unread_lines => 'Ongelezen';
  @override
  String get game_upscaling => 'Spelvensteropschaling';
  @override
  String get game_upscaling_auto => 'Automatisch';
  @override
  String get game_upscaling_hint_external =>
      'Er draaide al een kopie van Magpie, dus Fushi heeft deze met rust gelaten. Druk op Win+Shift+A om het spelvenster op te schalen.';
  @override
  String get game_upscaling_hint_first_run =>
      'Magpie moest zich deze keer nog instellen. Druk op Win+Shift+A om nu op te schalen — de volgende keer dat je het spel start, gebeurt het automatisch.';
  @override
  String get game_upscaling_hint_manual =>
      'Druk op Win+Shift+A om het spelvenster op te schalen.';
  @override
  String get game_upscaling_installed_only => 'Alleen geïnstalleerd';
  @override
  String get game_upscaling_off => 'Uit';
  @override
  String get game_upscaling_status_active => 'Vensteropschaling is aan';
  @override
  String get game_upscaling_status_failed =>
      'Vensteropschaling kon niet starten';
  @override
  String get game_upscaling_status_manual =>
      'Vensteropschaling is gereed, maar startte niet automatisch';
  @override
  String get game_upscaling_status_unavailable =>
      'Vensteropschaling is niet beschikbaar';
  @override
  String get game_user_rating => 'Mijn beoordeling';
  @override
  String get game_view_detail => 'Details bekijken';
  @override
  String get game_waiting_for_text => 'Wachten op tekst';
  @override
  String game_waveform_range_label({
    required Object start,
    required Object end,
    required Object duration,
    required Object total,
  }) => '${start} - ${end} (geselecteerd ${duration} / totaal ${total})';
  @override
  String get game_waveform_select_title => 'Audiobereik selecteren';
  @override
  String get game_window_bound => 'Gekoppeld';
  @override
  String get game_window_missing => 'Niet gekoppeld';
  @override
  String get games => 'Spellen';
  @override
  String get global_context_capture => 'Selectiecontext vastleggen';
  @override
  String get global_context_capture_hint =>
      'Lees omringende tekst uit de voorgrondapp om de huidige zin te tonen (alleen Windows)';
  @override
  String go_to_chapter({required Object n}) => 'Hoofdstuk ${n}';
  @override
  String get handlebar_audio => 'Audio';
  @override
  String get handlebar_book_cover => 'Boekomslag';
  @override
  String get handlebar_card_image => 'Card Image (Cover / GIF)';
  @override
  String get handlebar_cue_sentence => 'Ondertitelzin';
  @override
  String handlebar_deprecated_label({required Object label}) =>
      '${label} (verouderd)';
  @override
  String get handlebar_document_title => 'Documenttitel';
  @override
  String get handlebar_expression => 'Uitdrukking';
  @override
  String get handlebar_frequencies => 'Frequenties (HTML)';
  @override
  String get handlebar_frequency_harmonic_rank => 'Frequentie (Rang)';
  @override
  String get handlebar_furigana_plain => 'Furigana';
  @override
  String get handlebar_glossary => 'Woordenlijst';
  @override
  String get handlebar_glossary_first => 'Woordenlijst (Eerste)';
  @override
  String get handlebar_pitch_accent_categories => 'Toonhoogtecategorieën';
  @override
  String get handlebar_pitch_accent_positions => 'Toonhoogteposities';
  @override
  String get handlebar_popup_selection_text => 'Popup-selectietekst';
  @override
  String get handlebar_reading => 'Lezing';
  @override
  String get handlebar_selected_glossary => 'Geselecteerde woordenlijst';
  @override
  String get handlebar_sentence => 'Zin';
  @override
  String get handlebar_sentence_audio => 'Sentence Audio';
  @override
  String get handlebar_video_clip => 'Video Clip (GIF)';
  @override
  String get harmonic_frequency => 'Woordfrequenties aggregeren';
  @override
  String health_match_summary({required Object pct}) => 'Overeenkomst ${pct}%';
  @override
  String get highlight_on_tap => 'Tekst markeren bij tikken';
  @override
  String get home_activity => 'Activiteit';
  @override
  String get home_activity_empty => 'Nog geen activiteit';
  @override
  String get home_continue => 'Doorgaan';
  @override
  String get home_filter_added => 'Toegevoegd';
  @override
  String get home_filter_all => 'Alles';
  @override
  String get home_filter_game => 'Spel';
  @override
  String get home_filter_read => 'Lezen';
  @override
  String get home_filter_watch => 'Kijken';
  @override
  String get home_recently_added => 'Recent toegevoegd';
  @override
  String get home_remote_source => 'Extern';
  @override
  String home_session_count({required Object n}) => '${n} sessies';
  @override
  String get home_today => 'Vandaag';
  @override
  String get home_yesterday => 'Gisteren';
  @override
  String get hover_auto_lookup => 'Opzoeken bij hover';
  @override
  String get hover_auto_lookup_hint =>
      'Automatisch opzoeken wanneer de muis over een teken zweeft; zonder te klikken of Shift in te drukken. Toont hooguit één popuplaag. Alleen desktop.';
  @override
  String get icon_custom => 'Aangepast';
  @override
  String get icon_custom_confirm_body =>
      'Er wordt een snelkoppeling op het startscherm aangemaakt met de gekozen afbeelding. Doorgaan?';
  @override
  String get icon_custom_confirm_title => 'Aangepast icoon';
  @override
  String get icon_custom_hint =>
      'Tik op een icoon om te wisselen, of kies hieronder een aangepaste afbeelding.';
  @override
  String get icon_default => 'Standaard';
  @override
  String get icon_full => 'Volledig';
  @override
  String get icon_shortcut_created =>
      'Snelkoppeling op startscherm aangemaakt.';
  @override
  String get icon_shortcut_unsupported =>
      'Snelkoppelingen worden niet ondersteund op dit apparaat.';
  @override
  String get icon_switch_success => 'App-icoon succesvol gewijzigd.';
  @override
  String get icon_transparent => 'Transparant';
  @override
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  @override
  String get image_pause => 'Pauzeren bij afbeelding';
  @override
  String get image_pause_hint =>
      'Automatisch pauzeren wanneer een afbeelding verschijnt tijdens het afspelen.';
  @override
  String get image_pause_off => 'Uit';
  @override
  String get image_search_label_after => 'gevonden voor';
  @override
  String get image_search_label_before => 'Afbeelding selecteren ';
  @override
  String get image_search_label_middle => 'van ';
  @override
  String get image_search_label_none_before => 'Selecteren van ';
  @override
  String get image_search_label_none_middle => 'geen afbeelding ';
  @override
  String get import_complete => 'Woordenboek succesvol geïmporteerd.';
  @override
  String import_duplicate({required Object name}) =>
      'Een woordenboek met de naam『${name}』is al geïmporteerd.';
  @override
  String get import_extract => 'Bestanden uitpakken...';
  @override
  String get import_failed => 'Importeren van woordenboek mislukt.';
  @override
  String get import_in_progress => 'Importeren bezig';
  @override
  String import_name({required Object name}) => '『${name}』 importeren...';
  @override
  String import_sidecar_audio({required Object count}) =>
      '${count} audiobestand(en) automatisch gekoppeld';
  @override
  String import_sidecar_subtitle({required Object name}) =>
      'Automatisch gekoppelde ondertitel: ${name}';
  @override
  String get import_start => 'Importeren voorbereiden...';
  @override
  String get import_step_building_epub => 'EPUB wordt opgebouwd…';
  @override
  String get import_step_converting_epub => 'Converteren naar EPUB…';
  @override
  String import_step_copying_file({required Object name}) =>
      'Kopiëren van ${name}…';
  @override
  String get import_step_done => 'Klaar';
  @override
  String get import_step_importing_epub => 'EPUB wordt geïmporteerd…';
  @override
  String get import_step_matching => 'Audio-afstemming…';
  @override
  String get import_step_parsing => 'Ondertitels analyseren…';
  @override
  String get import_step_persisting => 'Bestanden opslaan…';
  @override
  String get import_step_reading => 'Bestand lezen…';
  @override
  String get import_step_reading_idb => 'Boekinformatie lezen…';
  @override
  String get import_step_saving => 'Gegevens opslaan…';
  @override
  String get import_theme => 'Thema importeren';
  @override
  String get import_theme_hint => 'Plak themacode';
  @override
  String get import_theme_invalid => 'Ongeldige themacode';
  @override
  String get import_theme_success => 'Thema geïmporteerd';
  @override
  String import_unsupported_file_format({required Object ext}) =>
      'Niet-ondersteund bestandsformaat: ${ext}';
  @override
  String get increase => 'Verhogen';
  @override
  String get info_empty_home_tab => 'Geschiedenis is leeg';
  @override
  String init_error_message({required Object error}) =>
      'Initialisatie mislukt: ${error}';
  @override
  String get initialization_failed => 'Initialisatie mislukt';
  @override
  String get interconnect_backup_backend =>
      'Interconnect als back-upbackend gebruiken';
  @override
  String get interconnect_backup_backend_active =>
      'Back-ups gaan al naar het gekoppelde apparaat. Kies een andere backend bij Synchronisatie & back-up om te wisselen.';
  @override
  String get interconnect_backup_backend_apply =>
      'Instellen als back-upbackend';
  @override
  String interconnect_backup_backend_current({required Object backend}) =>
      'Huidige back-upbackend: ${backend}';
  @override
  String get interconnect_backup_backend_hint =>
      'Maak back-ups en synchroniseer naar het gekoppelde apparaat in plaats van een cloudopslag. Alles wat de uploadschakelaars hierboven voor het gekoppelde apparaat toestaan, wordt daarheen geschreven.';
  @override
  String get interconnect_backup_backend_needs_pairing =>
      'Verbind eerst hierboven met een apparaat.';
  @override
  String get interconnect_enable => 'Interconnect inschakelen';
  @override
  String get interconnect_enable_hint =>
      'Verbind met je andere apparaten via het LAN. Werkt naast een cloud-back-upbackend — ze conflicteren niet.';
  @override
  String get interconnect_moved_note =>
      'Verbindings- en serverinstellingen staan in de categorie Fushi Interconnect';
  @override
  String get interconnect_section_client => 'Verbinden met andere apparaten';
  @override
  String get interconnect_section_delegate =>
      'Delegeren naar het gekoppelde apparaat';
  @override
  String get interconnect_section_related => 'Externe inhoud & opzoeken';
  @override
  String get interconnect_summary =>
      'Directe apparaat-naar-apparaat sync & dit apparaat als server hosten';
  @override
  String get interconnect_upload_audiobook_files =>
      'Luisterboekbestanden uploaden';
  @override
  String get interconnect_upload_audiobook_files_hint =>
      'Synchroniseer de luisterboek-audio en ondertitelpakketten van dit apparaat naar de interconnectpeer (groot).';
  @override
  String get interconnect_upload_content => 'Boekbestanden uploaden';
  @override
  String get interconnect_upload_content_hint =>
      'Synchroniseer de boeken en leesinhoud van dit apparaat naar de interconnectpeer.';
  @override
  String get interconnect_upload_dictionary => 'Woordenboeken uploaden';
  @override
  String get interconnect_upload_dictionary_hint =>
      'Synchroniseer de woordenboeken van dit apparaat naar de interconnectpeer.';
  @override
  String get interconnect_upload_section => 'Uploaden naar interconnectpeer';
  @override
  String get interconnect_upload_video_files => 'Videobestanden uploaden';
  @override
  String get interconnect_upload_video_files_hint =>
      'Synchroniseer de lokale videobestanden van dit apparaat naar de interconnectpeer (groot).';
  @override
  String get invert_audiobook_skip_direction =>
      'Overslaknoppen in onderste balk omkeren';
  @override
  String get invert_swipe_direction => 'Veegrichting voor bladeren omdraaien';
  @override
  String get invert_volume_buttons => 'Volumeknoppen omkeren';
  @override
  String get jump_to_char => 'Ga naar tekenpositie';
  @override
  String jump_to_char_current({
    required Object current,
    required Object total,
  }) => 'Huidig: ${current} / ${total}';
  @override
  String get jump_to_char_hint => 'Voer tekenpositie in…';
  @override
  String get keep_screen_awake => 'Scherm aan houden';
  @override
  String get library_search => 'Bibliotheek doorzoeken';
  @override
  String get loading_illustrations => 'Illustraties laden…';
  @override
  String get loading_slow_message =>
      'Als je dataopslaglocatie op een netwerk- of verwisselbare schijf staat die momenteel niet is verbonden, kan het opstarten vastlopen. Tik op Opnieuw om te starten met de standaardopslaglocatie voor deze sessie; je gegevens blijven waar ze zijn.';
  @override
  String get loading_slow_message_mobile =>
      'Het opstarten duurt langer dan gebruikelijk — Fushi laadt mogelijk een grote bibliotheek of woordenboeken. Wacht even, of tik op Opnieuw om te herladen. Je gegevens zijn veilig en gaan niet verloren.';
  @override
  String get loading_slow_title => 'Opstarten duurt langer dan gebruikelijk';
  @override
  String get local_audio => 'Lokale audio';
  @override
  String get local_audio_add_db => 'Lokale audiodatabase toevoegen';
  @override
  String get local_audio_edit_sources => 'Bronnen bewerken';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      'Importeren van audiodatabase mislukt: ${reason}';
  @override
  String get local_audio_imported => 'Audiodatabase toegevoegd';
  @override
  String get local_audio_invalid_db =>
      'Dit bestand is geen bruikbare audiodatabase (geen Local Audio Server-database, of het bevat geen audio).';
  @override
  String get local_audio_no_sources => 'Geen bronnen gevonden in deze database';
  @override
  String get local_audio_reference_original =>
      'Origineel bestand refereren (niet kopiëren)';
  @override
  String get local_audio_reference_original_desc =>
      'Bewaar de database op de huidige locatie en lees vanaf het oorspronkelijke pad; de bron werkt niet meer als het bestand wordt verplaatst of verwijderd.';
  @override
  String get local_audio_source_order_title => 'Bronprioriteit';
  @override
  String get log_copy_all => 'Alles kopiëren';
  @override
  String get log_export_failed => 'Export mislukt';
  @override
  String get log_export_file => 'Naar bestand exporteren';
  @override
  String get log_export_saved => 'Logboek opgeslagen';
  @override
  String get log_upload_action => 'Naar server uploaden';
  @override
  String get log_upload_consent_agree => 'Akkoord & uploaden';
  @override
  String get log_upload_consent_body =>
      'De logboektekst (die foutmeldingen, bestandspaden en boektitels kan bevatten), samen met je app-versie, platform en apparaatmodel, wordt naar de server van de ontwikkelaar geüpload om problemen te helpen vaststellen. Dit gebeurt alleen wanneer je op uploaden tikt — er wordt niets automatisch verzonden.';
  @override
  String get log_upload_consent_title => 'Logboek naar server uploaden?';
  @override
  String get log_upload_failed => 'Upload mislukt';
  @override
  String get log_upload_in_progress => 'Logboek uploaden…';
  @override
  String get log_upload_success => 'Logboek geüpload';
  @override
  String get log_upload_too_large => 'Logboek te groot om te uploaden';
  @override
  String get login => 'Inloggen';
  @override
  String get lookup_audio_volume => 'Volume opzoekaudio';
  @override
  String get low_memory_mode => 'Geheugenspaarmodus';
  @override
  String get low_memory_mode_hint =>
      'Vermindert cache- en geheugengebruik voor low-end apparaten. Sommige wijzigingen worden na herstart doorgevoerd.';
  @override
  String get low_memory_mode_suggestion =>
      'Probeer de geheugenspaarmodus in te schakelen via Instellingen → Diversen.';
  @override
  String get lyrics_artist => 'Artiest';
  @override
  String get lyrics_blur => 'Songtekst vervagen';
  @override
  String get lyrics_blur_hint =>
      'Vervaag de huidige regel voor luisterimmersie; beweeg erover of tik om te onthullen';
  @override
  String get lyrics_font_size => 'Lettergrootte songtekst';
  @override
  String get lyrics_font_size_hint =>
      'Lettergrootte songtekst is onafhankelijk van de boekmodus';
  @override
  String get lyrics_mode => 'Songtekstmodus';
  @override
  String get lyrics_mode_hint_body =>
      'De songtekstmodus heeft een eigen lettergrootte-instelling. Je kunt deze aanpassen via ⚙ Instellingen → Typografie.';
  @override
  String get lyrics_mode_hint_title => 'Songtekstmodus';
  @override
  String get lyrics_text_color => 'Kleur songteksttekst';
  @override
  String get lyrics_text_color_hint =>
      'Gebruik een aangepaste kleur voor songteksten in plaats van het thema te volgen';
  @override
  String get lyrics_title => 'Titel';
  @override
  String get lyrics_vertical_writing => 'Verticale songtekst';
  @override
  String get lyrics_vertical_writing_hint =>
      'Lees songtekst van boven naar beneden, rechts naar links (onafhankelijk van boekmodus)';
  @override
  String get manage_audio_sources => 'Audiobronnen beheren';
  @override
  String get manager => 'Beheerder';
  @override
  String get manga_mode_toggle => 'Reading Mode';
  @override
  String get manga_ocr_delete => 'Modellen verwijderen';
  @override
  String get manga_ocr_delete_confirm_message =>
      'Dit maakt schijfruimte vrij. Je kunt ze later opnieuw downloaden.';
  @override
  String get manga_ocr_delete_confirm_title => 'OCR-modellen verwijderen?';
  @override
  String get manga_ocr_delete_done => 'Modellen verwijderd';
  @override
  String get manga_ocr_download => 'Modellen downloaden';
  @override
  String get manga_ocr_download_done => 'Modellen gedownload';
  @override
  String get manga_ocr_download_failed => 'Download van modellen mislukt';
  @override
  String manga_ocr_downloading_file({required Object file}) =>
      '${file} downloaden…';
  @override
  String get manga_ocr_engine_builtin => 'Ingebouwd';
  @override
  String get manga_ocr_engine_external => 'Extern mokuro';
  @override
  String get manga_ocr_engine_none =>
      'Geen OCR-engine beschikbaar. Download ingebouwde modellen of stel het mokuro CLI-pad in bij instellingen.';
  @override
  String get manga_ocr_external_cli_hint =>
      'Leeg laten voor automatische detectie (FUSHI_MOKURO / PATH)';
  @override
  String get manga_ocr_external_cli_label => 'Extern mokuro CLI-pad';
  @override
  String get manga_ocr_external_detect => 'Detecteren';
  @override
  String manga_ocr_external_detected({required Object version}) =>
      'Gedetecteerd: ${version}';
  @override
  String get manga_ocr_external_not_found => 'mokuro niet gevonden';
  @override
  String get manga_ocr_model_status_missing => 'OCR-modellen niet gedownload';
  @override
  String get manga_ocr_model_status_ready => 'OCR-modellen gereed';
  @override
  String get manga_ocr_section => 'Manga OCR';
  @override
  String get manga_ocr_section_summary =>
      'Ingebouwde OCR-modellen en extern mokuro CLI';
  @override
  String get manga_ocr_unsupported =>
      'Ingebouwde manga-OCR is nog niet beschikbaar op dit platform.';
  @override
  String get manga_ocr_wizard_done => 'Manga geïmporteerd';
  @override
  String get manga_ocr_wizard_failed => 'OCR mislukt';
  @override
  String get manga_ocr_wizard_has_mokuro =>
      'Deze map heeft al een .mokuro-bestand — gebruik in plaats daarvan de normale import.';
  @override
  String get manga_ocr_wizard_importing => 'Importeren…';
  @override
  String get manga_ocr_wizard_no_images =>
      'Geen afbeeldingen gevonden in deze map.';
  @override
  String manga_ocr_wizard_page_progress({
    required Object done,
    required Object total,
  }) => 'Pagina ${done} / ${total}';
  @override
  String get manga_ocr_wizard_pick_folder => 'Afbeeldingenmap kiezen';
  @override
  String get manga_ocr_wizard_run => 'OCR uitvoeren';
  @override
  String get manga_ocr_wizard_running => 'OCR uitvoeren…';
  @override
  String get manga_ocr_wizard_title => 'OCR importeer manga';
  @override
  String get manga_ocr_wizard_title_label => 'Titel (optioneel)';
  @override
  String get manga_online_base_url_label => 'Online catalogus-URL';
  @override
  String get manga_online_catalog_title => 'Online catalogus';
  @override
  String get manga_online_download_selected => 'Geselecteerde downloaden';
  @override
  String get manga_online_downloaded => 'Geïmporteerd';
  @override
  String get manga_online_failed => 'Download mislukt';
  @override
  String get manga_online_load_failed => 'Catalogus laden mislukt';
  @override
  String get manga_online_queue_added => 'Aan downloadwachtrij toegevoegd';
  @override
  String manga_online_queue_progress({
    required Object done,
    required Object total,
  }) => 'Deel ${done} / ${total}';
  @override
  String get manga_online_queue_section => 'Manga-catalogusdownloads';
  @override
  String get manga_online_search_hint => 'Serie zoeken';
  @override
  String get manga_online_stage_cbz => 'Deel downloaden…';
  @override
  String get manga_online_stage_extract => 'Uitpakken…';
  @override
  String get manga_online_stage_mokuro => 'OCR-gegevens downloaden…';
  @override
  String get manga_reading_mode_spread => 'Spread';
  @override
  String get manga_reading_mode_webtoon => 'Webtoon';
  @override
  String get manga_remote_ocr_cancelled =>
      'Externe OCR is geannuleerd op de host.';
  @override
  String get manga_remote_ocr_engine => 'Gekoppelde host';
  @override
  String get manga_remote_ocr_failed => 'Externe OCR mislukt';
  @override
  String get manga_remote_ocr_no_host =>
      'Geen gekoppelde host met manga-OCR bereikbaar.';
  @override
  String get manga_remote_ocr_not_ready =>
      'De OCR-modellen van de gekoppelde host zijn niet gedownload. Download ze eerst op de host.';
  @override
  String get manga_remote_ocr_running => 'Gekoppelde host voert OCR uit…';
  @override
  String get manga_remote_ocr_unsupported =>
      'De gekoppelde host ondersteunt geen manga-OCR.';
  @override
  String manga_remote_ocr_uploading({
    required Object done,
    required Object total,
  }) => 'Pagina\'s uploaden ${done} / ${total}…';
  @override
  String get margin_bottom => 'Ondermarge';
  @override
  String get margin_left => 'Linkermarge';
  @override
  String get margin_right => 'Rechtermarge';
  @override
  String get margin_top => 'Bovenmarge';
  @override
  String get maximum_terms => 'Maximaal aantal trefwoorden in resultaten';
  @override
  String get media_source_add => 'Add Source';
  @override
  String get media_source_add_local_folder => 'Local Folder';
  @override
  String get media_source_add_network => 'Netwerk';
  @override
  String media_source_count_book({required Object n}) => '${n} boeken';
  @override
  String media_source_count_video({required Object n}) => '${n} video\'s';
  @override
  String media_source_last_scan({required Object time}) =>
      'Laatste scan ${time}';
  @override
  String get media_source_manage_title => 'Manage Sources';
  @override
  String get media_source_network_label_optional => 'Weergavenaam (optioneel)';
  @override
  String get media_source_network_missing_fields =>
      'Voer host, gebruikersnaam, extern pad en een wachtwoord of sleutel in';
  @override
  String get media_source_network_remote_path => 'Extern pad';
  @override
  String get media_source_network_subtitle =>
      'SFTP / FTP / WebDAV externe bibliotheek';
  @override
  String get media_source_no_sources => 'Nog geen bronnen';
  @override
  String get media_source_open_folder => 'Open Folder';
  @override
  String get media_source_remove => 'Remove Source';
  @override
  String get media_source_remove_keeps_media =>
      'Het verwijderen van een bron verwijdert geen geïmporteerde media.';
  @override
  String get media_source_rescan => 'Opnieuw scannen';
  @override
  String get media_source_scan_error => 'Scan mislukt';
  @override
  String get media_tracking_access_token => 'Toegangstoken';
  @override
  String get media_tracking_access_token_hint =>
      'Maak een persoonlijk toegangstoken met schrijftoestemming';
  @override
  String get media_tracking_account => 'Bangumi-account';
  @override
  String get media_tracking_add_mapping => 'Koppeling toevoegen';
  @override
  String get media_tracking_anime => 'Anime';
  @override
  String get media_tracking_chapter => 'Hoofdstuk';
  @override
  String get media_tracking_connect => 'Verbinden en verifiëren';
  @override
  String get media_tracking_connected_as => 'Verbonden account';
  @override
  String get media_tracking_delete_mapping => 'Koppeling verwijderen';
  @override
  String get media_tracking_episode => 'Aflevering';
  @override
  String get media_tracking_kind => 'Categorie';
  @override
  String get media_tracking_local_item => 'Lokaal item';
  @override
  String get media_tracking_manga => 'Manga';
  @override
  String get media_tracking_mappings => 'Itemkoppelingen';
  @override
  String get media_tracking_no_mappings =>
      'Nog geen handmatige koppelingen. Fushi koppelt automatisch bij de eerste voltooide aflevering of leesvoortgang; voeg hier dubbelzinnige items toe.';
  @override
  String get media_tracking_novel => 'Roman';
  @override
  String get media_tracking_pending => 'Wachtende updates';
  @override
  String get media_tracking_progress_mode => 'Voortgangseenheid';
  @override
  String get media_tracking_progress_offset => 'Startnummer';
  @override
  String get media_tracking_saved => 'Koppeling opgeslagen';
  @override
  String get media_tracking_search => 'Zoeken op Bangumi';
  @override
  String get media_tracking_search_results => 'Bangumi-resultaten';
  @override
  String get media_tracking_summary =>
      'Registreer automatisch anime-, roman- en mangavoortgang op Bangumi';
  @override
  String get media_tracking_sync_failed =>
      'Synchronisatie mislukt. De update blijft in de wachtrij.';
  @override
  String get media_tracking_sync_now => 'Nu synchroniseren';
  @override
  String get media_tracking_sync_success => 'Synchronisatie voltooid';
  @override
  String get media_tracking_token_required =>
      'Voer eerst een toegangstoken in en verifieer het';
  @override
  String get media_tracking_volume => 'Deel';
  @override
  String get microphone_permission_denied =>
      'Microfoontoestemming is vereist om op te nemen.';
  @override
  String get mining_audio_quality => 'Audiokwaliteit';
  @override
  String get mining_audio_quality_high => 'Hoog';
  @override
  String get mining_audio_quality_hint =>
      'Hogere bitrate is helderder maar maakt grotere kaarten.';
  @override
  String get mining_audio_quality_max => 'Maximaal';
  @override
  String get mining_audio_quality_standard => 'Standaard';
  @override
  String get mining_image_quality => 'Afbeelding / GIF-kwaliteit';
  @override
  String get mining_image_quality_hd => 'HD';
  @override
  String get mining_image_quality_hint =>
      'Hoger is scherper maar maakt grotere kaarten. Maximaal behoudt schermafbeeldingen op de bronresolutie; geanimeerde GIF\'s blijven begrensd zodat kaarten bruikbaar blijven.';
  @override
  String get mining_image_quality_max => 'Maximaal';
  @override
  String get mining_image_quality_standard => 'Standaard';
  @override
  String get mining_image_quality_thrift => 'Databesparing';
  @override
  String get move_down => 'Omlaag';
  @override
  String get move_up => 'Omhoog';
  @override
  String get name => 'Naam';
  @override
  String get nav_browser_extension => 'Extensie';
  @override
  String get nav_downloads => 'Downloads';
  @override
  String get nav_game => 'Spel';
  @override
  String get nav_home => 'Start';
  @override
  String get nav_lookup => 'Opzoeken';
  @override
  String get nav_video => 'Video';
  @override
  String get next_sentence => 'Volgende zin';
  @override
  String get no_audio_file => 'Geen audiobestand om op te slaan.';
  @override
  String get no_collections => 'Geen bladwijzers of opgeslagen zinnen';
  @override
  String get no_debug_logs => 'Geen debug-logboeken.';
  @override
  String get no_illustrations_found => 'Geen illustraties gevonden';
  @override
  String get no_results_found => 'Geen resultaten gevonden.';
  @override
  String get no_search_results => 'Geen zoekresultaten gevonden.';
  @override
  String get no_sentence_selected => 'Geen zin geselecteerd';
  @override
  String get no_sentences_found => 'Geen zinnen gevonden';
  @override
  String get no_text => 'Geen tekst.';
  @override
  String get no_text_to_search => 'Geen tekst om te zoeken.';
  @override
  String get now_listening_label => 'Nu aan het luisteren';
  @override
  String get on_screen_keyboard => 'Schermtoetsenbord';
  @override
  String get options_collapse => 'Inklappen bij opzoeken';
  @override
  String get options_delete => 'Verwijderen';
  @override
  String get options_edit => 'Bewerken';
  @override
  String get options_expand => 'Uitvouwen bij opzoeken';
  @override
  String get options_github => 'Repository bekijken op GitHub';
  @override
  String get options_hide => 'Verbergen bij opzoeken';
  @override
  String get options_language => 'Taalinstellingen';
  @override
  String get options_show => 'Tonen bij opzoeken';
  @override
  String get overlay_lookup_independent_size =>
      'Aparte grootte voor uitklapopzoeker';
  @override
  String get overlay_lookup_independent_size_hint =>
      'Geef het externe opzoekvenster een eigen maximale grootte in plaats van de in-app-popup te volgen';
  @override
  String get overlay_lookup_max_height => 'Uitklapopzoeker max. hoogte';
  @override
  String get overlay_lookup_max_width => 'Uitklapopzoeker max. breedte';
  @override
  String page_progress({required Object current, required Object total}) =>
      'Pagina ${current} / ${total}';
  @override
  String get paste => 'Plakken';
  @override
  String get pause => 'Pauzeren';
  @override
  String get pause_on_lookup => 'Pauzeren bij opzoeken';
  @override
  String get pdf_bookmark_added => 'Bladwijzer toegevoegd';
  @override
  String get pdf_bookmarks => 'Bladwijzers';
  @override
  String get pdf_bookmarks_empty => 'Nog geen bladwijzers.';
  @override
  String get pdf_no_text_layer =>
      'Deze PDF heeft geen tekstlaag (gescande afbeelding), dus opzoeken is niet beschikbaar.';
  @override
  String get pdf_outline => 'Inhoud';
  @override
  String get pdf_outline_empty => 'Deze PDF heeft geen inhoudsopgave.';
  @override
  String get pick_image => 'Kies afbeelding';
  @override
  String get play => 'Afspelen';
  @override
  String get play_from_cue => 'Afspelen vanaf zin';
  @override
  String get playback_auto_pause => 'Ondertitelpauze-modus';
  @override
  String get playback_speed => 'Snelheid';
  @override
  String get popup_append_sentence_tooltip => 'Deze zin aan de kaart toevoegen';
  @override
  String get popup_auto_expand_dictionaries => 'Rijen automatisch uitklappen';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      'Houd de eerste N rijen van woordenboekblokken uitgeklapt, ook als \'Woordenboeken inklappen\' aan staat. Het aantal uitgeklapte rijen volgt de kolominstelling: rijen x kolommen (0 = alles inklappen)';
  @override
  String get popup_bottom_docked => 'Pop-up onderaan vastgezet';
  @override
  String get popup_bottom_docked_hint =>
      'Zet de opzoek-pop-up vast als een paneel over de volle breedte onderaan het scherm in plaats van bij het opgezochte woord.';
  @override
  String get popup_clear_sentence_draft_tooltip => 'Toegevoegde zinnen wissen';
  @override
  String get popup_ctx_adjust_button => 'Context aanpassen';
  @override
  String get popup_ctx_box_current => 'Current';
  @override
  String get popup_ctx_box_empty => '(geen)';
  @override
  String get popup_ctx_box_next => 'After';
  @override
  String get popup_ctx_box_prev => 'Before';
  @override
  String get popup_ctx_cancel => 'Annuleren';
  @override
  String get popup_ctx_confirm => 'Confirm';
  @override
  String get popup_ctx_modal_count => 'Selected %d';
  @override
  String get popup_ctx_modal_eyebrow => 'Before mining';
  @override
  String get popup_ctx_modal_title => 'Zinscontext selecteren';
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
      'Max. woordenboekkolommen (automatisch vullen)';
  @override
  String get popup_dictionary_max_columns_hint =>
      'Vult automatisch tot dit aantal woordenboekkolommen per rij; smallere schermen gebruiken er minder';
  @override
  String get popup_font_size_decrease => 'Kleinere woordenboektekst';
  @override
  String get popup_font_size_increase => 'Grotere woordenboektekst';
  @override
  String get popup_instant_scroll => 'Direct scrollen in pop-up';
  @override
  String get popup_instant_scroll_hint =>
      'Verspring de opzoek-pop-up over vaste afstanden zonder scrollanimatie, voor e-inkschermen.';
  @override
  String get popup_max_height => 'Maximale hoogte pop-up';
  @override
  String get popup_max_width => 'Maximale popup-breedte';
  @override
  String get popup_no_audio_available => 'Geen audio beschikbaar';
  @override
  String get popup_sentence_context_next_label => 'Na';
  @override
  String get popup_sentence_context_prev_label => 'Vóór';
  @override
  String get popup_wheel_speed => 'Popup-scrollsnelheid';
  @override
  String get popup_wheel_speed_hint =>
      'Muiswiel-scrollsnelheid voor de woordenboekpopup (geldt ook voor de browserextensie).';
  @override
  String get prev_sentence => 'Vorige zin';
  @override
  String get preview => 'Voorbeeld';
  @override
  String get preview_badge => 'Badge';
  @override
  String get preview_switch => 'Schakelaar';
  @override
  String get processing_in_progress => 'Afbeeldingen verwerken';
  @override
  String get profile_book_profile => 'Profiel toewijzen';
  @override
  String profile_confirm_delete({required Object name}) =>
      'Profiel "${name}" verwijderen?';
  @override
  String get profile_copy => 'Kopiëren';
  @override
  String get profile_copy_suffix => '(Kopie)';
  @override
  String get profile_create => 'Profiel aanmaken';
  @override
  String get profile_delete => 'Verwijderen';
  @override
  String get profile_export => 'Exporteren';
  @override
  String get profile_export_failed => 'Exporteren mislukt';
  @override
  String profile_follow_default_current({required Object name}) =>
      'Volgt standaard (${name})';
  @override
  String get profile_import => 'Importeren';
  @override
  String get profile_import_failed => 'Importeren mislukt';
  @override
  String get profile_import_invalid => 'Ongeldig profielbestand';
  @override
  String get profile_import_success => 'Profiel geïmporteerd';
  @override
  String get profile_label => 'Profiel';
  @override
  String get profile_management => 'Profielbeheer';
  @override
  String get profile_media_audiobook => 'Audioboek';
  @override
  String get profile_media_epub => 'Boek';
  @override
  String get profile_media_lyrics => 'Songtekstmodus';
  @override
  String get profile_media_none => 'Geen';
  @override
  String get profile_media_srtbook => 'Ondertitelboek';
  @override
  String get profile_media_type_bindings => 'Mediatypekoppelingen';
  @override
  String get profile_media_video => 'Video';
  @override
  String get profile_name_hint => 'Profielnaam';
  @override
  String get profile_rename => 'Hernoemen';
  @override
  String get reader_auto_hide_chrome_duration =>
      'Zwevende bediening automatisch verbergen na';
  @override
  String get reader_content_timeout =>
      'Time-out bij laden van inhoud. Open opnieuw als de weergave afwijkt';
  @override
  String get reader_copy_image => 'Afbeelding kopiëren';
  @override
  String get reader_gallery => 'Galerij';
  @override
  String get reader_gallery_current => 'Hier aan het lezen';
  @override
  String get reader_gallery_empty => 'Geen illustraties in dit boek';
  @override
  String get reader_gallery_jump => 'Naar deze illustratie springen';
  @override
  String get reader_gallery_tooltip => 'Illustraties bladeren';
  @override
  String reader_image_copy_failed({required Object error}) =>
      'Afbeelding kopiëren mislukt: ${error}';
  @override
  String get reader_image_file_unavailable =>
      'Afbeeldingsbestand is niet beschikbaar.';
  @override
  String reader_image_share_failed({required Object error}) =>
      'Afbeelding delen mislukt: ${error}';
  @override
  String get reader_open_failed => 'Boek openen mislukt';
  @override
  String get reader_settings_section => 'Lezerinstellingen';
  @override
  String get reader_theme_black => 'Zwart';
  @override
  String get reader_theme_dark => 'Donker';
  @override
  String get reader_theme_ecru => 'Ecru';
  @override
  String get reader_theme_eyecare => 'Eye Care';
  @override
  String get reader_theme_gray => 'Grijs';
  @override
  String get reader_theme_light => 'Wit';
  @override
  String get reader_theme_water => 'Waterblauw';
  @override
  String get reader_top_progress_floating => 'Zwevende leesvoortgang';
  @override
  String get reader_unsupported_platform =>
      'De lezer is nog niet beschikbaar op dit platform.';
  @override
  String get reading_activity => 'Studieactiviteit';
  @override
  String get reading_progress => 'Leesvoortgang';
  @override
  String get reading_section_mode => 'Modus & oriëntatie';
  @override
  String get reading_statistics => 'Leesstatistieken';
  @override
  String get record => 'Opnemen';
  @override
  String get refresh => 'Vernieuwen';
  @override
  String get rematch_adjust_window =>
      'Zoekvenster aanpassen en opnieuw matchen';
  @override
  String get rematch_run => 'Opnieuw matchen';
  @override
  String get remote_audio_source => 'Externe audio';
  @override
  String get remote_book_audiobook_download_failed =>
      'Kon het luisterboek voor dit boek niet downloaden';
  @override
  String get remote_book_download => 'Naar dit apparaat downloaden';
  @override
  String get remote_book_download_failed => 'Kan extern boek niet downloaden';
  @override
  String get remote_book_downloaded => 'Extern boek gedownload';
  @override
  String get remote_book_downloading => 'Downloaden…';
  @override
  String get remote_book_info => 'Info';
  @override
  String get remote_book_info_has_audiobook => 'Bevat luisterboek';
  @override
  String get remote_book_unavailable => 'Gekoppeld apparaat niet beschikbaar';
  @override
  String get remote_dict_lookup => 'Extern woordenboek opzoeken';
  @override
  String get remote_dict_lookup_hint =>
      'Wanneer lokale woordenboeken niets vinden, de geconfigureerde Fushi-server bevragen';
  @override
  String get remote_video_download => 'Naar dit apparaat downloaden';
  @override
  String get remote_video_download_failed =>
      'Kan externe video niet downloaden';
  @override
  String get remote_video_downloaded => 'Externe video gedownload';
  @override
  String get remote_video_downloading => 'Downloaden…';
  @override
  String get remote_video_info => 'Info';
  @override
  String get remote_video_info_has_subtitle => 'Bevat ondertitels';
  @override
  String get remote_video_info_no_subtitle => 'Geen ondertitels';
  @override
  String remote_video_info_size({required Object size}) => 'Grootte: ${size}';
  @override
  String get remote_video_list_failed =>
      'Kon externe video\'s niet laden. Zorg dat het andere apparaat online is en op hetzelfde netwerk zit en probeer opnieuw.';
  @override
  String get remote_video_unavailable => 'Gekoppeld apparaat niet beschikbaar';
  @override
  String get rename_collection => 'Collectie hernoemen';
  @override
  String get render_restart_required =>
      'Wordt van kracht na het herstarten van de app';
  @override
  String get repeat_cue => 'Zin herhalen';
  @override
  String get reset => 'Herstellen';
  @override
  String get retry => 'Opnieuw';
  @override
  String get reverse_arrow_page_turn =>
      'Bladerrichting van links/rechts-toetsen omkeren';
  @override
  String get reverse_navigation_bar => 'Navigatiebalk omkeren';
  @override
  String get reverse_reader_bottom_bar => 'Onderbalk van lezer omkeren';
  @override
  String get audiobook_rematch_all_zero =>
      'Alle vensters scoorden 0%, pas handmatig aan';
  @override
  String audiobook_rematch_auto_failed({required Object error}) =>
      'Automatisch matchen mislukt: ${error}';
  @override
  String get audiobook_rematch_auto_match => 'Automatisch matchen';
  @override
  String audiobook_rematch_auto_picked({
    required Object window,
    required Object pct,
  }) => 'Automatisch geselecteerd ${window} (treffers ${pct}%)';
  @override
  String audiobook_rematch_default_value({required Object n}) =>
      'Standaard ${n}';
  @override
  String audiobook_rematch_health_label({
    required Object pct,
    required Object detail,
  }) => '${pct} overeenkomst — ${detail}';
  @override
  String get audiobook_rematch_matching => 'Matchen...';
  @override
  String get audiobook_rematch_no_chapters => 'EPUB bevat geen hoofdstuktekst';
  @override
  String get audiobook_rematch_no_cues_to_match =>
      'Geen referenties om te matchen';
  @override
  String get audiobook_rematch_no_sections =>
      'Geen hoofdstuktekst gevonden, automatisch matchen niet mogelijk';
  @override
  String get audiobook_rematch_no_stored_cues =>
      'Geen opgeslagen referenties, kan niet opnieuw uitvoeren';
  @override
  String audiobook_rematch_failed({required Object error}) =>
      'Opnieuw matchen mislukt: ${error}';
  @override
  String audiobook_rematch_result({
    required Object pct,
    required Object window,
  }) => 'Opnieuw gematcht: ${pct}% (venster: ${window})';
  @override
  String get audiobook_rematch_search_window => 'Zoekvenster';
  @override
  String get audiobook_rematch_similarity_threshold => 'Similariteitsdrempel';
  @override
  String get audiobook_rematch_threshold_hint =>
      'Minimale overeenkomst voor fuzzy matching (Dice-coëfficiënt). Verlaag om meer tekstverschillen te tolereren, maar te laag veroorzaakt foutieve matches.';
  @override
  String get audiobook_rematch_window_hint =>
      'Aantal tekens om vooruit te zoeken per referentie in de tekst. Pas aan als het trefpercentage laag is; te hoog kan de cursor verschuiven bij korte, ruizige referenties.';
  @override
  String get saved_tags => 'Labels opgeslagen.';
  @override
  String get scan_non_japanese_text => 'Niet-Japanse tekst scannen';
  @override
  String get scan_non_japanese_text_hint =>
      'Als dit uit staat, stopt de selectie bij niet-Japanse tekens';
  @override
  String get search => 'Zoeken';
  @override
  String get search_ellipsis => 'Zoeken...';
  @override
  String get searching_in_progress => 'Zoeken naar ';
  @override
  String get section_advanced_colors => 'Geavanceerd';
  @override
  String get section_advanced_typography => 'Geavanceerd';
  @override
  String get section_audiobook => 'Audioboek';
  @override
  String get section_audiobook_lyrics => 'Luisterboek & songteksten';
  @override
  String get section_epub => 'EPUB-bibliotheek';
  @override
  String get section_floating_lyric => 'Zwevende songtekst';
  @override
  String get section_interface => 'Interface';
  @override
  String get section_layout => 'Lay-out en weergave';
  @override
  String get section_navigation => 'Navigatie';
  @override
  String get section_page_turn_direction => 'Bladerrichting';
  @override
  String get section_reader_colors => 'Lezerkleuren';
  @override
  String get section_system_theme => 'Systeemthemakleur';
  @override
  String get section_typography => 'Typografie';
  @override
  String get section_update => 'Update-instellingen';
  @override
  String get section_video_danmaku => 'Danmaku';
  @override
  String get section_video_library => 'Bibliotheek';
  @override
  String get section_video_playback => 'Afspelen';
  @override
  String get section_video_subtitles => 'Ondertitels';
  @override
  String get seed_color => 'Basiskleur';
  @override
  String get seed_color_desc => 'Genereert alle standaardkleuren hieronder';
  @override
  String get selection_color => 'Selectiekleur';
  @override
  String get selection_color_desc => 'Tekstselectiemarkering van de lezer';
  @override
  String get send => 'Verzenden';
  @override
  String get series => 'Serie';
  @override
  String get series_created => 'Serie aangemaakt';
  @override
  String get series_default_name => 'Nieuwe serie';
  @override
  String series_item_count({required Object n}) => '${n} items';
  @override
  String get series_name_hint => 'Serienaam';
  @override
  String get server_address => 'Serveradres';
  @override
  String get settings => 'Instellingen';
  @override
  String get settings_check_update_now => 'Controleren op updates';
  @override
  String get settings_destination_appearance => 'Uiterlijk';
  @override
  String get settings_destination_card_creation => 'Kaart aanmaken';
  @override
  String get settings_destination_diagnostics => 'Diagnose';
  @override
  String get settings_destination_interconnect => 'Fushi Interconnect';
  @override
  String get settings_destination_listening => 'Luisteren';
  @override
  String get settings_destination_lookup => 'Opzoeken';
  @override
  String get settings_destination_profiles => 'Configuratieschema\'s';
  @override
  String get settings_destination_reading => 'Lezen';
  @override
  String get settings_destination_reading_controls => 'Leesbesturing';
  @override
  String get settings_destination_sync_backup => 'Synchronisatie & back-up';
  @override
  String get settings_destination_system => 'Systeem';
  @override
  String get settings_destination_system_summary =>
      'Algemeen, updates & diagnostiek';
  @override
  String get settings_destination_tracking => 'Media bijhouden';
  @override
  String get settings_destination_video => 'Video';
  @override
  String get settings_search_hint => 'Instellingen zoeken';
  @override
  String get settings_search_no_results => 'Geen overeenkomende instellingen';
  @override
  String get settings_secret_hide => 'Waarde verbergen';
  @override
  String get settings_secret_show => 'Waarde tonen';
  @override
  String get settings_section_app_shell => 'App';
  @override
  String get settings_section_data_storage => 'Dataopslaglocatie';
  @override
  String get settings_section_gal_hook_overlay => 'Galgame-bijschriftoverlay';
  @override
  String get settings_section_general => 'Algemeen';
  @override
  String get settings_section_lookup_audio => 'Uitspraak & feedback';
  @override
  String get settings_section_lookup_content => 'Lemma-inhoud';
  @override
  String get settings_section_lookup_integrations => 'Externe integraties';
  @override
  String get settings_section_lookup_popup_window => 'Popupvenster';
  @override
  String get settings_section_lookup_trigger => 'Opzoektrigger';
  @override
  String get settings_section_page_turn_input => 'Pagina omslaan & interactie';
  @override
  String get settings_section_reader_chrome => 'Lezerinterface';
  @override
  String get settings_section_update_channel => 'Updatekanaal';
  @override
  String get settings_view_changelog => 'Changelog bekijken';
  @override
  String get share => 'Delen';
  @override
  String get share_theme => 'Thema delen';
  @override
  String get shortcut_action_audiobook_next_sentence => 'Volgende zin';
  @override
  String get shortcut_action_audiobook_play_pause => 'Afspelen / pauzeren';
  @override
  String get shortcut_action_audiobook_prev_sentence => 'Vorige zin';
  @override
  String get shortcut_action_audiobook_seek_clicked =>
      'Audio naar aangeklikte zin springen';
  @override
  String get shortcut_action_dpad_down => 'D-pad omlaag';
  @override
  String get shortcut_action_dpad_left => 'D-pad links';
  @override
  String get shortcut_action_dpad_right => 'D-pad rechts';
  @override
  String get shortcut_action_dpad_up => 'D-pad omhoog';
  @override
  String get shortcut_action_global_back => 'Terug';
  @override
  String get shortcut_action_global_external_lookup =>
      'App-external lookup hotkey';
  @override
  String get shortcut_action_global_scroll_page_down =>
      'Eén scherm omlaag scrollen';
  @override
  String get shortcut_action_global_scroll_page_up =>
      'Eén scherm omhoog scrollen';
  @override
  String get shortcut_action_global_toggle_fullscreen =>
      'Volledig scherm wisselen';
  @override
  String get shortcut_action_home_focus_search => 'Zoeken focussen';
  @override
  String get shortcut_action_home_tab_books => 'Tabblad Boeken';
  @override
  String get shortcut_action_home_tab_dict => 'Tabblad Woordenboek';
  @override
  String get shortcut_action_home_tab_next => 'Volgend tabblad';
  @override
  String get shortcut_action_home_tab_prev => 'Vorig tabblad';
  @override
  String get shortcut_action_home_tab_settings => 'Tabblad Instellingen';
  @override
  String get shortcut_action_popup_next_entry => 'Volgend woordlemma';
  @override
  String get shortcut_action_popup_prev_entry => 'Vorig woordlemma';
  @override
  String get shortcut_action_reader_create_card_from_popup =>
      'Kaart maken vanuit pop-up';
  @override
  String get shortcut_action_reader_dismiss_dict => 'Woordenboek sluiten';
  @override
  String get shortcut_action_reader_enter_caret => 'Opzoekcursor activeren';
  @override
  String get shortcut_action_reader_lookup_at_cursor =>
      'Opzoeken / cursor activeren';
  @override
  String get shortcut_action_reader_open_menu => 'Open Settings Menu';
  @override
  String get shortcut_action_reader_open_navigation => 'Open Navigation';
  @override
  String get shortcut_action_reader_page_backward => 'Vorige pagina';
  @override
  String get shortcut_action_reader_page_forward => 'Volgende pagina';
  @override
  String get shortcut_action_reader_shift_lookup => 'Shift-opzoeken';
  @override
  String get shortcut_action_reader_toggle_chrome => 'Bediening aan/uit';
  @override
  String get shortcut_action_reader_toggle_furigana => 'Furigana aan/uit';
  @override
  String get shortcut_action_video_align_subtitle_to_next =>
      'Volgende ondertitel uitlijnen op nu';
  @override
  String get shortcut_action_video_align_subtitle_to_prev =>
      'Vorige ondertitel uitlijnen op nu';
  @override
  String get shortcut_action_video_cycle_secondary_subtitle_obscure =>
      'Cycle Secondary Subtitle Obscure';
  @override
  String get shortcut_action_video_cycle_subtitle_obscure =>
      'Cycle Subtitle Obscure Mode';
  @override
  String get shortcut_action_video_next_chapter => 'Volgend hoofdstuk';
  @override
  String get shortcut_action_video_next_frame => 'Volgende frame';
  @override
  String get shortcut_action_video_next_subtitle => 'Volgende ondertitel';
  @override
  String get shortcut_action_video_open_subtitle_align =>
      'Ondertitel golfvormuitlijning openen';
  @override
  String get shortcut_action_video_pause => 'Pauzeren';
  @override
  String get shortcut_action_video_play => 'Afspelen';
  @override
  String get shortcut_action_video_previous_chapter => 'Vorig hoofdstuk';
  @override
  String get shortcut_action_video_previous_frame => 'Vorige frame';
  @override
  String get shortcut_action_video_previous_subtitle => 'Vorige ondertitel';
  @override
  String get shortcut_action_video_replay_current_subtitle =>
      'Huidige ondertitel opnieuw afspelen';
  @override
  String get shortcut_action_video_replay_previous_subtitle =>
      'Vorige ondertitel opnieuw afspelen';
  @override
  String get shortcut_action_video_reset_speed => 'Snelheid herstellen';
  @override
  String get shortcut_action_video_screenshot => 'Schermafbeelding';
  @override
  String get shortcut_action_video_seek_backward => 'Terugspoelen';
  @override
  String get shortcut_action_video_seek_forward => 'Vooruitspoelen';
  @override
  String get shortcut_action_video_speed_down => 'Langzamer';
  @override
  String get shortcut_action_video_speed_up => 'Sneller';
  @override
  String get shortcut_action_video_subtitle_delay_decrease =>
      'Ondertitelvertraging −';
  @override
  String get shortcut_action_video_subtitle_delay_increase =>
      'Ondertitelvertraging +';
  @override
  String get shortcut_action_video_toggle_favorite_sentence =>
      'Huidige zin toevoegen aan favorieten';
  @override
  String get shortcut_action_video_toggle_fullscreen =>
      'Volledig scherm in-/uitschakelen';
  @override
  String get shortcut_action_video_toggle_immersive_lock =>
      'Immersieve vergrendeling in-/uitschakelen';
  @override
  String get shortcut_action_video_toggle_mute => 'Dempen in-/uitschakelen';
  @override
  String get shortcut_action_video_toggle_play_pause => 'Afspelen / Pauzeren';
  @override
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle Hide Secondary Subtitle';
  @override
  String get shortcut_action_video_toggle_shader_compare =>
      'Shadervergelijking in-/uitschakelen';
  @override
  String get shortcut_action_video_toggle_subtitle_blur =>
      'Ondertitelvervaging in-/uitschakelen';
  @override
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle Hide Subtitles';
  @override
  String get shortcut_action_video_toggle_subtitle_list =>
      'Ondertitellijst in-/uitschakelen';
  @override
  String get shortcut_action_video_volume_down => 'Volume omlaag';
  @override
  String get shortcut_action_video_volume_up => 'Volume omhoog';
  @override
  String get shortcut_assign_pick_action => 'Aan actie toewijzen…';
  @override
  String get shortcut_clear => 'Wissen';
  @override
  String shortcut_conflict({required Object s}) => 'Al gebruikt door: ${s}';
  @override
  String shortcut_conflict_replace_confirm({required Object s}) =>
      'Deze sneltoets is al in gebruik door ${s}. Naar deze actie verplaatsen?';
  @override
  String get shortcut_gamepad => 'Gamepad';
  @override
  String get shortcut_gamepad_brand_label => 'Gamepadknopstijl';
  @override
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  @override
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  @override
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  @override
  String get shortcut_gamepad_pick_list => 'Kies uit lijst';
  @override
  String get shortcut_gamepad_unavailable_hint =>
      'GameInput-component niet gedetecteerd — gamepadondersteuning is niet beschikbaar. Installeer de Windows Gaming Services om controllerondersteuning in te schakelen.';
  @override
  String get shortcut_keyboard => 'Toetsenbord';
  @override
  String get shortcut_mouse_back => 'Terugknop';
  @override
  String get shortcut_mouse_button => 'Muisknop';
  @override
  String get shortcut_mouse_forward => 'Vooruitknop';
  @override
  String get shortcut_mouse_left => 'Linksklik';
  @override
  String get shortcut_mouse_middle => 'Middelklik';
  @override
  String get shortcut_mouse_right => 'Rechtsklik';
  @override
  String get shortcut_press_gamepad => 'Druk op een gamepadknop...';
  @override
  String get shortcut_press_key => 'Druk op een toetscombinatie...';
  @override
  String get shortcut_press_mouse_button => 'Druk op een muisknop...';
  @override
  String get shortcut_press_wheel =>
      'Houd een modifiertoets ingedrukt en scroll hier';
  @override
  String get shortcut_reset_confirm =>
      'Alle sneltoetsen in dit gedeelte terugzetten naar standaard?';
  @override
  String get shortcut_reset_defaults => 'Terug naar standaard';
  @override
  String get shortcut_scope_audiobook => 'Audioboek';
  @override
  String get shortcut_scope_dictionary_popup => 'Woordenboekpopup';
  @override
  String get shortcut_scope_dictionary_popup_note =>
      'Werkt wanneer de muisaanwijzer over een woordenboekpopup staat';
  @override
  String get shortcut_scope_gamepad => 'Gamepad';
  @override
  String get shortcut_scope_global => 'Globaal';
  @override
  String get shortcut_scope_global_external => 'Globaal (app-extern)';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this hotkey.';
  @override
  String get shortcut_scope_home => 'Start';
  @override
  String get shortcut_scope_reader => 'Lezer';
  @override
  String get shortcut_scope_video => 'Video';
  @override
  String get shortcut_settings_title => 'Sneltoetsen';
  @override
  String get shortcut_stop_capture => 'Stoppen';
  @override
  String get shortcut_tap_to_assign => 'Niet ingesteld · tik om toe te wijzen';
  @override
  String get shortcut_view_list => 'Lijstweergave';
  @override
  String get shortcut_view_visual => 'Controllerindeling';
  @override
  String get shortcut_wheel => 'Muiswiel';
  @override
  String get shortcut_wheel_down => 'Wiel omlaag';
  @override
  String get shortcut_wheel_needs_modifier =>
      'Een kaal wiel scrollt de popup — houd Alt / Ctrl / Shift ingedrukt tijdens het scrollen';
  @override
  String get shortcut_wheel_up => 'Wiel omhoog';
  @override
  String get show_bottom_bar_cue => 'Huidige zin tonen';
  @override
  String get show_expression_tags => 'Expressietags tonen';
  @override
  String get show_floating_lyric => 'Zwevende ondertitel';
  @override
  String get show_media_notification => 'Mediamelding tonen';
  @override
  String get show_options => 'Opties tonen';
  @override
  String get show_top_progress_bar => 'Leesvoortgangsindicator';
  @override
  String get skip_action => 'Overslaan';
  @override
  String skip_action_seconds({required Object n}) => '${n} seconden';
  @override
  String get skip_action_sentence => '1 zin';
  @override
  String get sort_by => 'Sorteren';
  @override
  String get sort_imported => 'Importdatum';
  @override
  String get sort_recent_read => 'Recent gelezen';
  @override
  String get sort_recent_watched => 'Recent bekeken';
  @override
  String get sort_title => 'Naam';
  @override
  String get source_description_epub => 'EPUB lezen en woordenboek opzoeken';
  @override
  String get source_name_bookshelf => 'Boekenplank';
  @override
  String get spread_auto => 'Automatisch';
  @override
  String get spread_direction => 'Spreidrichting';
  @override
  String get spread_direction_ltr => 'Links naar rechts';
  @override
  String get spread_direction_rtl => 'Rechts naar links';
  @override
  String get spread_mode => 'Spreidmodus';
  @override
  String get spread_off => 'Uit';
  @override
  String get spread_on => 'Aan';
  @override
  String get srt_audio_unresolved =>
      'Audiobestand niet gevonden — koppel opnieuw';
  @override
  String get srt_books_section => 'Ondertitelboeken';
  @override
  String srt_delete_confirm({required Object title}) =>
      '『${title}』 verwijderen? Dit kan niet ongedaan worden gemaakt.';
  @override
  String get srt_delete_title => 'Ondertitelboek verwijderen';
  @override
  String get srt_epub_not_ready => 'Boek niet gereed — importeer opnieuw';
  @override
  String get srt_import => 'Boek importeren';
  @override
  String get srt_import_audio_needs_subtitle =>
      'Audio moet worden gekoppeld aan ondertitels. Om audio aan een bestaand EPUB te koppelen, houd het boek lang ingedrukt op de plank.';
  @override
  String get srt_import_author_hint => 'Auteur (optioneel)';
  @override
  String get srt_import_error => 'Importeren mislukt';
  @override
  String srt_import_files_selected({required Object n}) =>
      '${n} bestanden geselecteerd';
  @override
  String get srt_import_hint_epub_or_srt =>
      'Kies een EPUB- of ondertitelbestand om te importeren.';
  @override
  String get srt_import_missing_input =>
      'Selecteer ten minste een EPUB of ondertitelbestand';
  @override
  String get srt_import_missing_title => 'Voer een boektitel in';
  @override
  String get srt_import_pick_audio_dir => 'Kies audiomap';
  @override
  String get srt_import_pick_audio_files => 'Kies audiobestanden';
  @override
  String get srt_import_pick_cover => 'Kies omslagafbeelding';
  @override
  String get srt_import_pick_epub => 'Kies EPUB';
  @override
  String get srt_import_pick_subtitle_files => 'Kies ondertitelbestanden';
  @override
  String get srt_import_success => 'Boek geïmporteerd';
  @override
  String get srt_import_title_hint => 'Boektitel';
  @override
  String get startup_default_dictionary_tab => 'Opzoeken openen bij opstarten';
  @override
  String get startup_default_dictionary_tab_hint =>
      'Start het beginscherm op het opzoektabblad in plaats van de huidige standaard.';
  @override
  String get stash => 'Verzameling';
  @override
  String get stash_added_multiple =>
      'Meerdere items zijn toegevoegd aan de verzameling.';
  @override
  String stash_added_single({required Object term}) =>
      '『${term}』 is toegevoegd aan de verzameling.';
  @override
  String get stash_clear_description =>
      'Alle inhoud wordt gewist. Weet je het zeker?';
  @override
  String stash_clear_single({required Object term}) =>
      '『${term}』 is verwijderd uit de verzameling.';
  @override
  String get stash_clear_title => 'Verzameling wissen';
  @override
  String get stash_nothing_to_pop =>
      'Geen items om uit de verzameling te halen.';
  @override
  String get stash_placeholder => 'Geen items in de verzameling';
  @override
  String get stat_all_time => 'Altijd';
  @override
  String get stat_bookshelf_compare => 'Boekenplank';
  @override
  String get stat_clear_all => 'Statistieken wissen';
  @override
  String get stat_clear_all_confirm => 'Wissen';
  @override
  String get stat_clear_all_reading_message =>
      'Alle leestijd, tekentellingen en opzoek-/delvenaantallen wissen? Je opgeslagen woorden, zinnen en gedolven kaarten worden bewaard. Dit kan niet ongedaan worden gemaakt.';
  @override
  String get stat_clear_all_title => 'Alle statistieken wissen';
  @override
  String get stat_clear_all_video_message =>
      'Alle kijktijd, ondertiteltekentellingen en opzoek-/delvenaantallen wissen? Je opgeslagen woorden, zinnen en gedolven kaarten worden bewaard. Dit kan niet ongedaan worden gemaakt.';
  @override
  String get stat_daily_average => 'Dag gem.';
  @override
  String get stat_delete_message =>
      'Tijd, tekentelling en opzoek-/delvenstatistieken van dit item verwijderen? Je opgeslagen woorden en zinnen worden niet beïnvloed.';
  @override
  String get stat_delete_title => 'Statistieken verwijderen';
  @override
  String get stat_fastest_day => 'Fastest Day';
  @override
  String get stat_favorited => 'Favorieten';
  @override
  String get stat_favorited_sentence => 'Favoriete zinnen';
  @override
  String stat_format_chars({required Object n}) => '${n} tekens';
  @override
  String stat_format_chars_wan({required Object n}) => '${n}万 tekens';
  @override
  String stat_format_days({required Object n}) => '${n} dagen';
  @override
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h} uur ${m} min';
  @override
  String stat_format_minutes({required Object n}) => '${n} min';
  @override
  String get stat_goal => 'Daily Goal';
  @override
  String get stat_goal_daily => 'Daily Goal';
  @override
  String get stat_goal_presets => 'Voorinstellingen';
  @override
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} tekens';
  @override
  String get stat_goal_reached => 'Doel bereikt';
  @override
  String stat_goal_recent_average({required Object n}) =>
      'Afgelopen 7 dagen: ${n} tekens/dag gemiddeld';
  @override
  String get stat_goal_set => 'Set Goal';
  @override
  String get stat_goal_unit_chars => 'tekens';
  @override
  String get stat_goal_weekly => 'Weekly Goal';
  @override
  String get stat_last_30_days => 'Laatste 30 dagen';
  @override
  String get stat_lookup => 'Opzoekacties';
  @override
  String get stat_metric_chars => 'Tekens';
  @override
  String get stat_metric_speed => 'Snelheid';
  @override
  String get stat_metric_time => 'Tijd';
  @override
  String get stat_mined => 'Kaarten gemaakt';
  @override
  String get stat_no_data => 'Nog geen leesgegevens';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => 'Actieve dagen (7d)';
  @override
  String get stat_refresh => 'Vernieuwen';
  @override
  String get stat_slowest_day => 'Slowest Day';
  @override
  String get stat_sort_by_chars => 'Op tekens';
  @override
  String get stat_sort_by_speed => 'Op snelheid';
  @override
  String get stat_sort_by_time => 'Op tijd';
  @override
  String get stat_speed_anomaly => 'Afwijking';
  @override
  String get stat_speed_avg => 'Voortschrijdend gemiddelde';
  @override
  String stat_speed_cph({required Object n}) => '${n} tekens/uur';
  @override
  String get stat_speed_summary => 'Speed Summary';
  @override
  String get stat_streak => 'Reeks';
  @override
  String get stat_this_month => 'Deze maand';
  @override
  String get stat_this_week => 'Deze week';
  @override
  String get stat_today => 'Vandaag';
  @override
  String get stat_today_hourly => 'Vandaag per uur';
  @override
  String get stat_trend_daily => 'Dagelijks';
  @override
  String get stat_trend_monthly => 'Maandelijks';
  @override
  String get stat_trend_weekly => 'Wekelijks';
  @override
  String get stat_typical_day => 'Typical Day';
  @override
  String get stat_vs_prev => 'vs vorige 14d';
  @override
  String get stat_weighted_avg_speed => 'Weighted Avg';
  @override
  String get stop => 'Stoppen';
  @override
  String get storage_permissions =>
      'Verleen de volgende machtigingen voor het exporteren naar AnkiDroid.';
  @override
  String get stream => 'Stream';
  @override
  String get swipe_page_turn_sensitivity =>
      'Gevoeligheid voor vegen om te bladeren';
  @override
  String get sync_account => 'Account';
  @override
  String get sync_audiobook => 'Luisterbookpositie synchroniseren';
  @override
  String get sync_audiobook_files => 'Audioboekbestanden synchroniseren';
  @override
  String get sync_audiobook_files_warning =>
      'Audio en ondertitels kunnen groot zijn.';
  @override
  String sync_auth_error({required Object message}) =>
      'Authenticatie mislukt: ${message}';
  @override
  String get sync_auto_sync => 'Automatisch synchroniseren';
  @override
  String get sync_backend => 'Opslagbackend';
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
  String get sync_checking_account => 'Account controleren…';
  @override
  String get sync_client_connected => 'Verbonden';
  @override
  String get sync_client_token => 'Peertoegangstoken';
  @override
  String get sync_client_token_manual => 'Token handmatig invoeren';
  @override
  String get sync_compare => 'Gegevens vergelijken';
  @override
  String get sync_compare_all_books => 'Alle boeken';
  @override
  String get sync_compare_all_local => 'Alles → lokaal';
  @override
  String get sync_compare_all_remote => 'Alles → extern';
  @override
  String get sync_compare_all_skip => 'Alles → overslaan';
  @override
  String sync_compare_applied({required Object count}) =>
      '${count} wijzigingen toegepast';
  @override
  String sync_compare_apply({required Object count}) =>
      'Nu synchroniseren (${count})';
  @override
  String get sync_compare_close => 'Sluiten';
  @override
  String get sync_compare_conflicts => 'Conflicten';
  @override
  String get sync_compare_days => 'dagen';
  @override
  String get sync_compare_delete_audiobook => 'Audioboek op extern verwijderen';
  @override
  String get sync_compare_delete_book => 'Boek op extern verwijderen';
  @override
  String sync_compare_delete_confirm({required Object name}) =>
      '"${name}" van het externe verwijderen? Lokale gegevens blijven behouden. Dit kan niet ongedaan worden gemaakt.';
  @override
  String get sync_compare_delete_dict => 'Woordenboek op extern verwijderen';
  @override
  String get sync_compare_deleted => 'Verwijderd van extern';
  @override
  String get sync_compare_dictionaries => 'Woordenboeken';
  @override
  String get sync_compare_download => 'Downloaden';
  @override
  String get sync_compare_empty => 'Geen boeken gevonden';
  @override
  String get sync_compare_local => 'Lokaal';
  @override
  String get sync_compare_no_content =>
      'Alleen clouddata — geen boek om te downloaden';
  @override
  String get sync_compare_no_data => 'Geen gegevens';
  @override
  String get sync_compare_remote => 'Extern';
  @override
  String get sync_compare_select_all => 'Alles selecteren';
  @override
  String get sync_compare_skip => 'Overslaan';
  @override
  String get sync_compare_title => 'Lokaal vs. extern';
  @override
  String get sync_compare_unavailable => 'Set up sync first';
  @override
  String get sync_compare_use_local => 'Lokaal';
  @override
  String get sync_compare_use_remote => 'Extern';
  @override
  String get sync_connection_failed => 'Verbinding mislukt';
  @override
  String get sync_connection_success => 'Verbinding geslaagd';
  @override
  String get sync_content => 'Boekbestanden synchroniseren';
  @override
  String get sync_content_warning =>
      'Grote bestanden gebruiken opslagruimte en data';
  @override
  String get sync_err_auth_expired =>
      'Aanmelding verlopen — meld je opnieuw aan.';
  @override
  String get sync_err_invalid_client =>
      'Clientgegevens zijn ongeldig voor deze build — werk de app bij.';
  @override
  String get sync_err_network =>
      'Kan de server niet bereiken — controleer je netwerk- of proxyinstellingen.';
  @override
  String get sync_err_not_configured =>
      'Google-synchronisatiegegevens zijn niet ingesteld in deze build.';
  @override
  String get sync_err_quota => 'Cloudopslag is vol (quotum bereikt).';
  @override
  String get sync_err_scope_upgrade =>
      'Synchronisatietoestemmingen gewijzigd — meld je opnieuw aan bij Google om te blijven synchroniseren.';
  @override
  String get sync_err_timeout =>
      'Time-out bij verbinden — de server reageerde niet op tijd.';
  @override
  String sync_error({required Object message}) =>
      'Synchronisatiefout: ${message}';
  @override
  String get sync_exit_warning =>
      'De synchronisatie is nog bezig. Nu afsluiten kan tot gegevensverlies leiden.';
  @override
  String get sync_exit_warning_title => 'Synchronisatie bezig';
  @override
  String get sync_host => 'Host';
  @override
  String get sync_lan_discovery => 'LAN-apparaten';
  @override
  String get sync_lan_no_devices => 'Geen apparaten gevonden';
  @override
  String get sync_lan_scan_failed =>
      'Scannen mislukt — controleer netwerkrechten of firewall.';
  @override
  String get sync_not_signed_in => 'Niet aangemeld';
  @override
  String get sync_now => 'Nu synchroniseren';
  @override
  String sync_now_audio_in({required Object count}) => '↓${count} audioboeken';
  @override
  String sync_now_audio_out({required Object count}) => '↑${count} audioboeken';
  @override
  String sync_now_books_in({required Object count}) => '↓${count} boeken';
  @override
  String get sync_now_busy => 'Er loopt al een synchronisatie';
  @override
  String sync_now_dicts_in({required Object count}) =>
      '↓${count} woordenboeken';
  @override
  String sync_now_dicts_out({required Object count}) =>
      '↑${count} woordenboeken';
  @override
  String sync_now_done({required Object detail}) =>
      'Gesynchroniseerd · ${detail}';
  @override
  String sync_now_failed_suffix({required Object count}) =>
      ' · ${count} mislukt';
  @override
  String get sync_now_hint =>
      'Voer nu een volledige tweerichtingssync met de cloud uit';
  @override
  String sync_now_local_audio_in({required Object count}) =>
      '↓${count} audiobronnen';
  @override
  String sync_now_local_audio_out({required Object count}) =>
      '↑${count} audiobronnen';
  @override
  String get sync_now_no_changes => 'geen wijzigingen';
  @override
  String get sync_pair_allow => 'Toestaan';
  @override
  String sync_pair_confirm_identity_body({required Object device}) =>
      'Je koppelt met ${device}. Bevestig dat dit het verwachte apparaat is voordat je verdergaat.';
  @override
  String get sync_pair_confirm_identity_title => 'Apparaat bevestigen';
  @override
  String get sync_pair_continue => 'Doorgaan';
  @override
  String get sync_pair_denied =>
      'Het andere apparaat heeft het koppelen geweigerd';
  @override
  String get sync_pair_deny => 'Weigeren';
  @override
  String get sync_pair_enter_pin_body =>
      'Voer de 6-cijferige PIN in die op het andere apparaat wordt getoond.';
  @override
  String get sync_pair_enter_pin_title => 'PIN invoeren';
  @override
  String get sync_pair_failed => 'Koppelen mislukt';
  @override
  String get sync_pair_fingerprint_changed =>
      'Certificaat gewijzigd — koppeling afgebroken voor de veiligheid (mogelijke onderschepping).';
  @override
  String get sync_pair_fingerprint_label => 'Certificaatvingerafdruk';
  @override
  String get sync_pair_not_fushi =>
      'Geen Fushi-apparaat gevonden op dit adres. Het adres is opgeslagen.';
  @override
  String get sync_pair_pairing => 'Koppelen…';
  @override
  String get sync_pair_pin_label => 'Voer deze PIN in op het andere apparaat';
  @override
  String get sync_pair_pin_waiting =>
      'Wachten tot het andere apparaat deze PIN invoert…';
  @override
  String get sync_pair_pin_wrong => 'Verkeerde PIN — probeer opnieuw';
  @override
  String get sync_pair_repair => 'Opnieuw koppelen';
  @override
  String get sync_pair_request_body =>
      'Een apparaat vraagt om te koppelen. Toestaan dat het met dit apparaat synchroniseert?';
  @override
  String get sync_pair_request_title => 'Koppelverzoek';
  @override
  String get sync_pair_success => 'Gekoppeld — token ingevuld';
  @override
  String get sync_pair_unavailable =>
      'Het andere apparaat is niet klaar of heeft een oudere versie. Werk het bij en schakel synchronisatie in, probeer het dan opnieuw.';
  @override
  String get sync_pair_unknown_device => 'Onbekend apparaat';
  @override
  String get sync_paired_peer_remove => 'Verwijderen';
  @override
  String get sync_paired_peer_removed => 'Gekoppeld apparaat verwijderd';
  @override
  String get sync_paired_peer_unknown => 'Onbekend apparaat';
  @override
  String get sync_paired_peers_empty => 'Nog geen gekoppelde apparaten';
  @override
  String get sync_paired_peers_title => 'Gekoppelde apparaten';
  @override
  String get sync_password => 'Wachtwoord';
  @override
  String get sync_port => 'Poort';
  @override
  String get sync_private_key => 'Privésleutel';
  @override
  String get sync_progress_audiobooks => 'Luisterboeken synchroniseren';
  @override
  String get sync_progress_books => 'Boeken importeren';
  @override
  String get sync_progress_dictionaries => 'Woordenboeken synchroniseren';
  @override
  String get sync_progress_local_audio => 'Lokale audio synchroniseren';
  @override
  String get sync_progress_reading => 'Leesgegevens synchroniseren';
  @override
  String get sync_progress_videos => 'Video\'s synchroniseren';
  @override
  String get sync_role_locked_by_client =>
      'Al verbonden met een ander apparaat. Verwijder de verbinding voordat je als server fungeert.';
  @override
  String get sync_role_locked_by_server =>
      'Dit apparaat fungeert als server. Schakel de server uit voordat je verbinding maakt met andere apparaten.';
  @override
  String get sync_section_actions => 'Synchronisatieacties';
  @override
  String get sync_section_backup => 'Lokale back-up';
  @override
  String get sync_section_content => 'Wat te synchroniseren';
  @override
  String get sync_section_host_server => 'Dit apparaat als syncserver';
  @override
  String get sync_section_host_server_footer =>
      'Laat andere apparaten vanaf dit apparaat synchroniseren. Onafhankelijk van het syncbackend hierboven.';
  @override
  String get sync_section_method => 'Synchronisatiemethode';
  @override
  String get sync_server_copy_token => 'Token kopiëren';
  @override
  String get sync_server_enable => 'Syncserver inschakelen';
  @override
  String get sync_server_mode_active =>
      'Dit apparaat is een synchronisatieserver';
  @override
  String get sync_server_mode_clients_drive =>
      'Verbonden clients starten de synchronisatie — hier is geen handmatige synchronisatie nodig.';
  @override
  String get sync_server_port => 'Serverpoort';
  @override
  String sync_server_port_in_use({required Object port}) =>
      'Poort ${port} is al in gebruik — kies een andere poort.';
  @override
  String get sync_server_regenerate_token => 'Token opnieuw genereren';
  @override
  String get sync_server_running => 'Server actief';
  @override
  String get sync_server_stopped => 'Server gestopt';
  @override
  String get sync_server_tls_enable => 'Interconnectversleuteling (HTTPS/TLS)';
  @override
  String get sync_server_tls_repair_hint =>
      'Het wijzigen hiervan vereist dat gekoppelde apparaten opnieuw worden gekoppeld';
  @override
  String get sync_server_token => 'Toegangstoken';
  @override
  String get sync_show_remote_entries => 'Externe items tonen';
  @override
  String get sync_show_remote_entries_warning =>
      'Toon boeken en video\'s die op gekoppelde apparaten of in de cloud staan als plaatshouderkaarten die je kunt downloaden of streamen.';
  @override
  String get sync_sign_in => 'Aanmelden';
  @override
  String get sync_sign_out => 'Afmelden';
  @override
  String get sync_signed_in => 'Aangemeld';
  @override
  String get sync_statistics => 'Statistieken synchroniseren';
  @override
  String get sync_summary => 'Cloud, LAN P2P en lokale back-up';
  @override
  String get sync_test_connection => 'Verbinding testen';
  @override
  String get sync_use_tls => 'TLS gebruiken';
  @override
  String get sync_username => 'Gebruikersnaam';
  @override
  String get sync_video_files => 'Videobestanden uploaden';
  @override
  String get sync_video_files_warning =>
      'Videobestanden kunnen zeer groot zijn.';
  @override
  String get sync_webdav_missing_fields => 'Ontbrekende velden';
  @override
  String sync_webdav_test_failed({required Object message}) =>
      'Verbinding mislukt: ${message}';
  @override
  String get sync_webdav_url => 'Server-URL';
  @override
  String tag_added_to_book({required Object name}) =>
      'Tag "${name}" toegevoegd aan boek.';
  @override
  String tag_added_to_collection({required Object name}) =>
      'Tag ${name} aan collectie toegevoegd.';
  @override
  String tag_added_to_video({required Object name}) =>
      'Tag ${name} toegevoegd aan video.';
  @override
  String tag_already_on_book({required Object name}) =>
      'Tag "${name}" staat al op dit boek.';
  @override
  String tag_already_on_collection({required Object name}) =>
      'Tag ${name} staat al op deze collectie.';
  @override
  String tag_book_count({required Object count}) => '${count} boek(en)';
  @override
  String get tag_clear_filter => 'Filter wissen';
  @override
  String get tag_color => 'Kleur';
  @override
  String tag_delete_confirm({required Object name}) =>
      'Tag "${name}" verwijderen?';
  @override
  String get tag_filter_title => 'Filteren op tag';
  @override
  String get tag_label => 'Tags';
  @override
  String get tag_manage => 'Tags beheren';
  @override
  String get tag_manage_title => 'Tags beheren';
  @override
  String get tag_name_duplicate => 'Een tag met deze naam bestaat al.';
  @override
  String get tag_name_empty => 'Tagnaam mag niet leeg zijn.';
  @override
  String get tag_name_hint => 'Tagnaam';
  @override
  String get tag_new => 'Nieuwe tag';
  @override
  String get tag_no_books_for_filter =>
      'Geen boeken komen overeen met de geselecteerde tags.';
  @override
  String get tag_no_tags_hint =>
      'Nog geen tags. Maak er een aan om te beginnen.';
  @override
  String get tag_seed_stars => 'Sterbeoordelingstags toevoegen';
  @override
  String get tag_seed_stars_added => 'Sterbeoordelingstags toegevoegd';
  @override
  String get tag_seed_stars_exists => 'Sterbeoordelingstags bestaan al';
  @override
  String get tap_empty_hide_chrome => 'Zwevende bedieningsbalk';
  @override
  String get text_segmentation => 'Tekstsegmentatie';
  @override
  String get texthooker => 'Texthooker';
  @override
  String get texthooker_enabled => 'Texthooker (tekst ontvangen)';
  @override
  String get texthooker_enabled_hint =>
      'Verbind met Textractor/mpv/agent en zoek binnenkomende tekst op';
  @override
  String get theme_black => 'Puur zwart';
  @override
  String get theme_code_copied => 'Themacode gekopieerd naar klembord';
  @override
  String get theme_dark => 'Diep donker';
  @override
  String get theme_ecru => 'Ecru';
  @override
  String get theme_eyecare => 'Eye Care';
  @override
  String get theme_gray => 'Donkergrijs';
  @override
  String get theme_light => 'Wit';
  @override
  String get theme_seed_preview_hint =>
      'De stalen hieronder tonen een voorbeeld van de kleuren die daadwerkelijk uit je startkleur worden gegenereerd. Om een specifieke kleur als primaire accentkleur af te dwingen, zet je de schakelaar Primair aan en kies je hem expliciet.';
  @override
  String get theme_water => 'Waterblauw';
  @override
  String toc_section({required Object n}) => 'Inhoudsopgave (${n})';
  @override
  String get top_progress_pos_center => 'Midden';
  @override
  String get top_progress_pos_left => 'Linksboven';
  @override
  String get top_progress_pos_right => 'Rechtsboven';
  @override
  String get top_progress_position => 'Voortgangspositie';
  @override
  String get torrent_upload_intro_body =>
      'Uploaden (seeden) is standaard uitgeschakeld. Schakel het in om gedownloade inhoud terug te delen met de swarm — dit gebruikt je uploadbandbreedte. Je kunt dit altijd wijzigen bij Instellingen.';
  @override
  String get torrent_upload_intro_confirm => 'Opslaan';
  @override
  String get torrent_upload_intro_enable => 'Upload / seeding inschakelen';
  @override
  String get torrent_upload_intro_keep_off => 'Uit laten';
  @override
  String get torrent_upload_intro_title => 'Upload / seeding';
  @override
  String get reader_blur_images => 'Afbeeldingen vervagen (spoilerbescherming)';
  @override
  String get reader_font_size => 'Lettergrootte';
  @override
  String get reader_font_vpal => 'VPAL (vert. alt.)';
  @override
  String get reader_furigana_hide => 'Verbergen';
  @override
  String get reader_furigana_mode => 'Furigana';
  @override
  String get reader_furigana_mode_hint => '';
  @override
  String get reader_furigana_partial => 'Gedeeltelijk';
  @override
  String get reader_furigana_show => 'Tonen';
  @override
  String get reader_furigana_toggle => 'Wisselen';
  @override
  String get reader_horizontal => 'Horizontaal';
  @override
  String get reader_line_height => 'Regelhoogte';
  @override
  String get reader_merge_image_pages =>
      'Illustratiepagina\'s in tekst samenvoegen';
  @override
  String get reader_merge_image_pages_subtitle =>
      'Zelfstandige hoofdstukken met één afbeelding worden inline in het aangrenzende teksthoofdstuk weergegeven in plaats van op een eigen pagina';
  @override
  String get reader_no_books_added => 'Geen boeken in de bibliotheek';
  @override
  String get reader_not_bound_cannot_rematch =>
      'Luisterboek niet gekoppeld aan een boek, kan niet opnieuw matchen';
  @override
  String get reader_orient_mixed => 'Gemengd';
  @override
  String get reader_orient_upright => 'Rechtop';
  @override
  String get reader_page_columns_auto => 'Automatisch';
  @override
  String get reader_paginated => 'Gepagineerd';
  @override
  String get reader_paragraph_spacing => 'Alinea-afstand';
  @override
  String get reader_reader_styles => 'Boekstijlen prioriteit geven';
  @override
  String get reader_scroll => 'Scrollen';
  @override
  String get reader_text_indentation => 'Alinea-inspringing';
  @override
  String get reader_text_justify => 'Tekstuitlijning';
  @override
  String get reader_theme => 'Thema';
  @override
  String get reader_vert_kerning => 'Tekenafstand (verticaal)';
  @override
  String get reader_vert_text_orient => 'Tekstoriëntatie';
  @override
  String get reader_vertical => 'Verticaal';
  @override
  String get reader_view_mode_label => 'Pagina\'s / Scrollen';
  @override
  String get reader_vn => 'Visual Novel';
  @override
  String get reader_writing_direction => 'Schrijfrichting';
  @override
  String get undo => 'Ongedaan maken';
  @override
  String get unit_milliseconds => 'ms';
  @override
  String get unit_pixels => 'px';
  @override
  String untitled_book({required Object id}) => 'Boek ${id}';
  @override
  String get untitled_chapter => '(Zonder titel)';
  @override
  String get update_already_latest => 'Je hebt de nieuwste versie';
  @override
  String get update_auto_install => 'Updates automatisch installeren';
  @override
  String get update_available => 'Update beschikbaar';
  @override
  String update_cached_newer({required Object version}) =>
      'Update ${version} beschikbaar (verificatie…)';
  @override
  String update_cached_up_to_date({required Object version}) =>
      'Op de laatst bekende versie ${version} (controleren…)';
  @override
  String get update_cancel => 'Annuleren';
  @override
  String get update_cancelled => 'Download geannuleerd';
  @override
  String get update_cancelling => 'Bezig met annuleren…';
  @override
  String get update_channel_beta => 'Bèta';
  @override
  String get update_channel_debug => 'Debug';
  @override
  String get update_channel_stable => 'Stabiel';
  @override
  String get update_check_failed => 'Updatecontrole mislukt';
  @override
  String get update_checking_now => 'Controleren op updates…';
  @override
  String get update_connecting => 'Verbinden…';
  @override
  String get update_debug_channel => 'Debug-updatekanaal';
  @override
  String get update_debug_channel_warning =>
      'Builds van het debug-kanaal kunnen instabiel zijn. Gebruik op eigen risico.';
  @override
  String get update_download => 'Downloaden';
  @override
  String get update_download_failed => 'Download mislukt';
  @override
  String get update_download_restarted_from_zero =>
      'opnieuw begonnen vanaf nul';
  @override
  String update_download_resume_status({required Object status}) =>
      'Hervatten: ${status}';
  @override
  String get update_download_resumed => 'hervat';
  @override
  String update_download_size({
    required Object received,
    required Object total,
  }) => 'Gedownload: ${received} / ${total}';
  @override
  String update_download_source({required Object source}) => 'Bron: ${source}';
  @override
  String update_download_speed({required Object speed}) => 'Snelheid: ${speed}';
  @override
  String get update_downloading => 'Update downloaden…';
  @override
  String get update_hide => 'Verbergen';
  @override
  String update_install_current_executable({required Object path}) =>
      'Actief programma: ${path}';
  @override
  String update_install_deletefile_failure({
    required Object path,
    required Object code,
  }) => 'Installatieprogramma kon ${path} niet vervangen (code ${code})';
  @override
  String update_install_detected_location({
    required Object source,
    required Object path,
  }) => 'Gedetecteerde installatielocatie (${source}): ${path}';
  @override
  String update_install_failure_summary({required Object summary}) =>
      'Reden: ${summary}';
  @override
  String get update_install_incomplete_message =>
      'Het installatieprogramma is gestart, maar Fushi staat nog op de vorige versie. Bekijk het installatielogboek hieronder.';
  @override
  String get update_install_incomplete_title => 'Update niet voltooid';
  @override
  String update_install_installer_pid({required Object pid}) =>
      'PID installatieprogramma: ${pid}';
  @override
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi kon het installatieprogramma voor versie ${version} niet starten. Bekijk het logboekpad hieronder.';
  @override
  String get update_install_launch_failed_title =>
      'Update-installatieprogramma niet gestart';
  @override
  String update_install_launcher_pid({required Object pid}) =>
      'PID update-launcher: ${pid}';
  @override
  String update_install_libmpv_holder({
    required Object pid,
    required Object path,
  }) => 'libmpv-houder: PID ${pid} - ${path}';
  @override
  String get update_install_log_not_observed =>
      'Het installatielogboek is niet aangemaakt tijdens de controle na het starten.';
  @override
  String get update_install_log_observed =>
      'Het installatielogboek is aangemaakt tijdens de controle na het starten.';
  @override
  String update_install_log_path({required Object path}) =>
      'Installatielogboek: ${path}';
  @override
  String get update_install_manual_close_retry =>
      'Sluit Fushi via de vermelde PID/het vermelde pad en probeer de update opnieuw of voer het installatieprogramma opnieuw uit.';
  @override
  String get update_install_parent_exit_not_observed =>
      'De update-launcher heeft niet vastgesteld dat Fushi is afgesloten voordat het installatieprogramma werd gestart.';
  @override
  String get update_install_parent_exit_observed =>
      'Fushi is afgesloten voordat het installatieprogramma werd gestart.';
  @override
  String update_install_path_mismatch({required Object warning}) =>
      'Installatiemap komt niet overeen: ${warning}';
  @override
  String get update_install_permission_cancel => 'Annuleren';
  @override
  String get update_install_permission_message =>
      'Sta Fushi toe om apps te installeren in de systeeminstellingen en probeer opnieuw.';
  @override
  String get update_install_permission_retry => 'Installatie opnieuw proberen';
  @override
  String get update_install_permission_title => 'Updates installeren toestaan';
  @override
  String get update_install_restart_windows_hint =>
      'Als de vermelde processen gesloten zijn maar libmpv-2.dll nog steeds vergrendeld is, start Windows opnieuw op en installeer opnieuw.';
  @override
  String update_install_running_process({
    required Object pid,
    required Object path,
  }) => 'Actief Fushi-proces: PID ${pid} - ${path}';
  @override
  String update_install_success_message({required Object version}) =>
      'Fushi is bijgewerkt naar versie ${version}.';
  @override
  String get update_install_success_title => 'Update geïnstalleerd';
  @override
  String update_install_target_dir({required Object path}) =>
      'Installatiedoel: ${path}';
  @override
  String get update_installing => 'Installeren…';
  @override
  String get update_mac_install_incomplete_message =>
      'De update kon niet worden toegepast, dus Fushi draait nog de vorige versie. Je kunt de update opnieuw proberen, of de nieuwste release handmatig downloaden.';
  @override
  String update_message({required Object version}) =>
      'Versie ${version} is beschikbaar.';
  @override
  String update_network_failure({
    required Object host,
    required Object reason,
  }) => 'Kan ${host} niet bereiken: ${reason}';
  @override
  String get update_never_remind => 'Niet meer herinneren';
  @override
  String get update_skip => 'Overslaan';
  @override
  String get url => 'URL';
  @override
  String get video_audio_track => 'Audiotrack';
  @override
  String get video_audio_track_empty => 'Geen wisselbare audiotracks';
  @override
  String video_audio_track_switched({required Object label}) =>
      'Audiotrack: ${label}';
  @override
  String get video_auto_play_next_cancel => 'Annuleren';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      'Volgende aflevering over ${seconds}s';
  @override
  String get video_black_flash_notice_action => 'Suggesties bekijken';
  @override
  String get video_black_flash_notice_dont_show_again => 'Niet meer tonen';
  @override
  String get video_bottom_next_cue =>
      'Volgende ondertitel (anders een stukje vooruit)';
  @override
  String get video_bottom_play_pause => 'Afspelen / Pauzeren';
  @override
  String get video_bottom_prev_cue =>
      'Vorige ondertitel (anders een stukje terug)';
  @override
  String get video_bottom_seek_back => '10s terug';
  @override
  String get video_bottom_seek_back_label => '−10s';
  @override
  String get video_bottom_seek_forward => '10s vooruit';
  @override
  String get video_bottom_seek_forward_label => '+10s';
  @override
  String video_chapter_n({required Object n}) => 'Hoofdstuk ${n}';
  @override
  String get video_chapters => 'Hoofdstukken';
  @override
  String get video_chapters_empty => 'Geen hoofdstukken';
  @override
  String get video_clip_export => 'Fragment exporteren';
  @override
  String get video_clip_export_cancelled => 'Clip exporteren geannuleerd';
  @override
  String video_clip_export_failed({required Object reason}) =>
      'Fragmentexport mislukt: ${reason}';
  @override
  String get video_clip_export_ffmpeg_failed => 'ffmpeg is mislukt';
  @override
  String get video_clip_export_ffmpeg_unavailable =>
      'ffmpeg is niet beschikbaar';
  @override
  String get video_clip_export_input_missing => 'Bronvideo is niet beschikbaar';
  @override
  String get video_clip_export_invalid_range => 'Geen geldig fragmentbereik';
  @override
  String get video_clip_export_output_missing =>
      'Er is geen uitvoerbestand aangemaakt';
  @override
  String get video_clip_export_remote_download_required =>
      'Download de externe video naar dit apparaat voordat je een fragment exporteert';
  @override
  String get video_clip_export_source_changed =>
      'Videobron is gewijzigd; fragmentexport geannuleerd';
  @override
  String get video_clip_export_start => 'Fragmentexport starten';
  @override
  String get video_clip_export_stop => 'Stoppen en fragment exporteren';
  @override
  String video_clip_exported({required Object path}) =>
      'Fragment geëxporteerd: ${path}';
  @override
  String video_clip_exported_with_subtitles({required Object path}) =>
      'Clip geëxporteerd met ondertitels: ${path}';
  @override
  String get video_clip_exporting => 'Fragment exporteren…';
  @override
  String get video_continue_watching => 'Continue Watching';
  @override
  String get video_control_audio_track => 'Audiotrack';
  @override
  String get video_control_customize_hint =>
      'Kies waar elke knop op de speler staat, of verwijder hem.';
  @override
  String get video_control_episode_list => 'Afleveringenlijst';
  @override
  String get video_control_favorite_sentence =>
      'Huidige zin toevoegen aan favorieten';
  @override
  String get video_control_fullscreen => 'Volledig scherm';
  @override
  String get video_control_next_cue => 'Volgende ondertitel';
  @override
  String get video_control_palette_hint =>
      'Sleep een knop naar een plek om hem toe te voegen; een knop kan op meerdere plekken staan.';
  @override
  String get video_control_palette_title => 'Alle knoppen';
  @override
  String get video_control_play_pause => 'Afspelen/Pauzeren';
  @override
  String get video_control_previous_cue => 'Vorige ondertitel';
  @override
  String get video_control_reject_required =>
      'Vereiste bedieningselementen moeten op de speler blijven.';
  @override
  String get video_control_reject_unavailable =>
      'Dit bedieningselement kan daar niet worden geplaatst.';
  @override
  String get video_control_reject_volume_bottom =>
      'Het volume kan alleen op de onderbalk staan.';
  @override
  String get video_control_remove_from_slot => 'Verwijderen';
  @override
  String get video_control_reset_layout => 'Spelerknopindeling herstellen';
  @override
  String get video_control_screenshot => 'Schermafbeelding';
  @override
  String get video_control_seek_backward => '10s terug';
  @override
  String get video_control_seek_forward => '10s vooruit';
  @override
  String get video_control_settings => 'Spelerinstellingen';
  @override
  String get video_control_slot_bottom_center => 'Onderbalk (midden)';
  @override
  String get video_control_slot_bottom_left => 'Onderbalk (links)';
  @override
  String get video_control_slot_bottom_right => 'Onderbalk (rechts)';
  @override
  String get video_control_slot_drop_hint => 'Sleep hier een knop naartoe';
  @override
  String get video_control_slot_hidden => 'Verwijderd uit speler';
  @override
  String get video_control_slot_screen_left => 'Schermlinks';
  @override
  String get video_control_slot_screen_right => 'Schermrechts';
  @override
  String get video_control_slot_top_center => 'Bovenbalk (midden)';
  @override
  String get video_control_slot_top_left => 'Bovenbalk (links)';
  @override
  String get video_control_slot_top_right => 'Bovenbalk (rechts)';
  @override
  String get video_control_speed => 'Snelheid';
  @override
  String get video_control_subtitle_list => 'Ondertitellijst';
  @override
  String get video_control_subtitle_track => 'Ondertitelspoor';
  @override
  String get video_control_title => 'Videotitel';
  @override
  String get video_control_volume => 'Volume';
  @override
  String get video_danmaku_manual_bind_empty =>
      'Nog geen danmaku voor deze aflevering.';
  @override
  String get video_danmaku_manual_bind_failed =>
      'Kon danmaku voor deze aflevering niet laden. Probeer het later opnieuw.';
  @override
  String get video_danmaku_manual_bind_server_error =>
      'De danmaku-server heeft het verzoek geweigerd. Probeer het later opnieuw.';
  @override
  String get video_danmaku_manual_match_title => 'Danmaku koppelen';
  @override
  String get video_danmaku_manual_network_error =>
      'Netwerkfout. Controleer je verbinding en probeer opnieuw.';
  @override
  String get video_danmaku_manual_no_result =>
      'Geen overeenkomende anime gevonden.';
  @override
  String get video_danmaku_manual_search_action => 'Zoeken';
  @override
  String get video_danmaku_manual_search_hint => 'Animetitel';
  @override
  String get video_danmaku_manual_search_prompt =>
      'Zoek op Dandanplay op animetitel en kies dan een aflevering.';
  @override
  String get video_danmaku_manual_server_error =>
      'Zoeken mislukt. Probeer het later opnieuw.';
  @override
  String video_delete_confirm({required Object title}) =>
      '『${title}』 verwijderen? Dit kan niet ongedaan worden gemaakt.';
  @override
  String get video_delete_title => 'Video verwijderen';
  @override
  String get video_double_tap_next_cue => 'Volgende regel';
  @override
  String get video_double_tap_prev_cue => 'Vorige regel';
  @override
  String get video_drop_audio_unsupported =>
      'Sleep ondertitelbestanden op de huidige video. Audiobestanden kunnen hier niet worden gekoppeld.';
  @override
  String get video_drop_subtitle_only =>
      'Sleep ondertitelbestanden op de huidige video.';
  @override
  String get video_episode_list => 'Afleveringen';
  @override
  String get video_episode_list_empty => 'Geen afleveringen';
  @override
  String video_favorite_count({required Object count}) => '${count} favorieten';
  @override
  String get video_file_error_content =>
      'Kan het videobestand niet laden. Zorg ervoor dat dit bestand bestaat en zich bevindt in een map die toegankelijk is voor de applicatie.';
  @override
  String get video_file_not_found => 'Videobestand niet gevonden';
  @override
  String get video_immersive_locked => 'Immersieve modus aan';
  @override
  String get video_immersive_mode_full => 'Alle bediening';
  @override
  String get video_immersive_mode_lookup_only => 'Alleen opzoeken';
  @override
  String get video_immersive_mode_seek_lookup => 'Sneltoets + opzoeken';
  @override
  String get video_immersive_mode_unlock_only => 'Alleen ontgrendelen';
  @override
  String get video_immersive_unlock => 'Ontgrendelen';
  @override
  String get video_immersive_unlocked => 'Immersieve modus uit';
  @override
  String get video_import_action => 'Video importeren';
  @override
  String get video_import_confirm => 'Importeren';
  @override
  String get video_import_pick_subtitle => 'Ondertitel kiezen';
  @override
  String get video_import_pick_video => 'Videobestand kiezen';
  @override
  String get video_import_stream_advanced => 'Geavanceerd (anti-leechheaders)';
  @override
  String get video_import_stream_referer => 'Referer (optioneel)';
  @override
  String get video_import_stream_subtitle_url_field =>
      'Externe ondertitel-URL (optioneel)';
  @override
  String get video_import_stream_url_field => 'Videostream-URL';
  @override
  String get video_import_stream_url_hint =>
      'Speel HLS/m3u8/mp4 stream-URL af (met optionele externe ondertitel-URL en anti-leech Referer/User-Agent)';
  @override
  String get video_import_stream_user_agent => 'User-Agent (optioneel)';
  @override
  String get video_import_subtitle_optional =>
      'Optionele externe ondertitel (je kunt tijdens het afspelen altijd tussen ingebedde en externe ondertitels wisselen)';
  @override
  String get video_import_title => 'Video importeren';
  @override
  String get video_jimaku_anime_match => 'Animematch';
  @override
  String get video_jimaku_api_key => 'Jimaku API-sleutel';
  @override
  String get video_jimaku_api_key_hint =>
      'Haal een gratis API-sleutel op via jimaku.cc/account';
  @override
  String get video_jimaku_api_key_set => 'API-sleutel ingesteld';
  @override
  String video_jimaku_batch_done({
    required Object done,
    required Object total,
  }) => 'Ondertitels opgehaald: ${done}/${total}';
  @override
  String get video_jimaku_batch_download => 'Alles downloaden';
  @override
  String get video_jimaku_batch_title => 'Ondertitels ophalen voor collectie';
  @override
  String get video_jimaku_download_failed => 'Download mislukt';
  @override
  String get video_jimaku_downloaded => 'Ondertitel gedownload en toegepast';
  @override
  String get video_jimaku_episode => 'Aflevering (optioneel)';
  @override
  String get video_jimaku_episode_hint => 'Leeg laten om alles te tonen';
  @override
  String get video_jimaku_fetch => 'Ondertitels ophalen (Jimaku)';
  @override
  String get video_jimaku_filter => 'Resultaten filteren (bijv. WEBRip, BD)';
  @override
  String get video_jimaku_find_sources => 'Ondertitels zoeken';
  @override
  String get video_jimaku_language => 'Taal';
  @override
  String get video_jimaku_language_all => 'Alle';
  @override
  String get video_jimaku_no_key => 'Vul eerst je Jimaku-API-sleutel in';
  @override
  String get video_jimaku_no_results => 'Geen ondertitels gevonden';
  @override
  String get video_jimaku_query => 'Serienaam';
  @override
  String get video_jimaku_search => 'Zoeken';
  @override
  String get video_jimaku_series => 'Serie';
  @override
  String get video_jimaku_show_all_episodes => 'Alle afleveringen tonen';
  @override
  String get video_jimaku_source => 'Ondertitelbron';
  @override
  String get video_jimaku_source_hint =>
      'Kies één Jimaku-item. Seizoenpakketten worden automatisch per aflevering gekoppeld.';
  @override
  String video_last_watched({required Object date}) => 'Laatst bekeken ${date}';
  @override
  String get video_library_empty => 'Nog geen video\'s geïmporteerd';
  @override
  String get video_load_failed_back => 'Terug';
  @override
  String get video_load_failed_generic => 'Kon deze video niet laden.';
  @override
  String get video_load_failed_network =>
      'Netwerkfout — controleer je verbinding en probeer opnieuw.';
  @override
  String get video_load_failed_not_found =>
      'Dit item is niet gevonden in je bibliotheek.';
  @override
  String get video_load_failed_retry => 'Opnieuw';
  @override
  String get video_load_failed_timeout =>
      'Verbinding verlopen — het netwerk is traag of de bron beperkt de snelheid. Probeer het opnieuw.';
  @override
  String get video_load_failed_title => 'Video laden mislukt';
  @override
  String get video_load_failed_unavailable =>
      'Kon de videostream niet ophalen — deze is mogelijk niet beschikbaar, regio- of leeftijdsbegrensd, of de bron is gewijzigd.';
  @override
  String get video_loading_buffering => 'Bufferen…';
  @override
  String get video_loading_connecting => 'Verbinden met stream…';
  @override
  String get video_loading_preparing => 'Voorbereiden…';
  @override
  String get video_loading_subtitle => 'Ondertitels downloaden…';
  @override
  String get video_menu_fullscreen => 'Volledig scherm in-/uitschakelen';
  @override
  String get video_menu_lock => 'Immersieve modus / vergrendelen';
  @override
  String get video_menu_play_pause => 'Afspelen / Pauzeren';
  @override
  String get video_menu_subtitle_track => 'Ondertitelspoor';
  @override
  String get video_mining_image_mode => 'Videokaart-afbeelding';
  @override
  String get video_mining_image_mode_current_frame =>
      'Schermafbeelding bij delven';
  @override
  String get video_mining_image_mode_gif => 'Geanimeerde GIF (ondertitelclip)';
  @override
  String get video_mining_image_mode_hint =>
      'Of de videokaartomslag een animatie van de ondertitelclip is of een enkel stilstaand beeld — en welk beeld';
  @override
  String get video_mining_image_mode_subtitle_start =>
      'Schermafbeelding bij ondertitelstart';
  @override
  String get video_next_episode => 'Volgende aflevering';
  @override
  String video_playlist_episodes({required Object count}) => '${count} afl.';
  @override
  String get video_prev_episode => 'Vorige aflevering';
  @override
  String get video_quality => 'Kwaliteit';
  @override
  String get video_quality_auto => 'Automatisch';
  @override
  String get video_quality_empty => 'Geen wisselbare kwaliteit voor deze video';
  @override
  String get video_quality_enhancement_hint =>
      'Schakel dit in om het beeld te verscherpen met de ingebouwde hoogwaardige schaling van mpv. Werkt zowel voor anime als voor live-action series en films. Voor verdergaande shaders zoals Anime4K open je Beeldverbetering terwijl een video speelt en kies je daar een niveau.';
  @override
  String get video_quality_load_failed =>
      'Kon kwaliteiten voor deze video niet laden.';
  @override
  String get video_quality_loading => 'Beschikbare kwaliteiten laden…';
  @override
  String video_quality_switched({required Object label}) =>
      'Kwaliteit: ${label}';
  @override
  String get video_rename => 'Naam wijzigen';
  @override
  String get video_rename_hint => 'Titel';
  @override
  String get video_render_skia_fix_confirm_action => 'Herstarten';
  @override
  String get video_render_skia_fix_confirm_body =>
      'Dit schakelt de Impeller-renderer uit en herstart de app.';
  @override
  String get video_render_skia_fix_confirm_title =>
      'Overschakelen naar Skia en herstarten?';
  @override
  String get video_render_skia_fix_hint =>
      'Gebruik dit als audio speelt maar het videobeeld zwart blijft. Schakelt Impeller uit; herstart om toe te passen.';
  @override
  String get video_render_skia_fix_title =>
      'Scherm zwart? Renderer wisselen (Skia)';
  @override
  String video_resource_missing_message({required Object title}) =>
      'Het bestand voor 『${title}』 kon niet worden gevonden. De locatie is mogelijk gewijzigd of de schijf is niet verbonden. Je kunt het opnieuw importeren of dit item verwijderen.';
  @override
  String get video_resource_missing_reimport => 'Opnieuw importeren';
  @override
  String get video_resource_missing_title => 'Video niet beschikbaar';
  @override
  String get video_resource_relink_success => 'Video opnieuw gekoppeld';
  @override
  String get video_scrape_episodes => 'Afleveringen';
  @override
  String get video_scrape_info => 'Serie-informatie';
  @override
  String video_scrape_rating_votes({required Object count}) =>
      '${count} beoordelingen';
  @override
  String get video_screenshot => 'Schermafbeelding';
  @override
  String video_screenshot_failed_reason({required Object reason}) =>
      'Schermafbeelding mislukt: ${reason}';
  @override
  String video_screenshot_ready({required Object file}) =>
      'Schermafbeelding gereed: ${file}';
  @override
  String video_screenshot_saved_to({required Object path}) =>
      'Schermafbeelding opgeslagen: ${path}';
  @override
  String get video_secondary_subtitle_hint =>
      'Gerenderd door de speler (niet opzoekbaar)';
  @override
  String get video_secondary_subtitle_sources => 'Secundaire ondertitel';
  @override
  String get video_setting_auto_play_next =>
      'Volgende aflevering automatisch afspelen';
  @override
  String get video_setting_auto_scrape => 'Serie-info automatisch ophalen';
  @override
  String get video_setting_av_delay => 'Ondertitelsynchronisatie';
  @override
  String get video_setting_av_delay_hint =>
      'Positief = ondertitel later (regels naar achteren); negatief = ondertitel eerder. Gebruik de schuif, de +/--knoppen of typ een waarde.';
  @override
  String get video_setting_danmaku_area => 'Weergavegebied';
  @override
  String get video_setting_danmaku_area_hint =>
      'Fractie van de schermhoogte dat danmaku mag innemen, vanaf de bovenkant.';
  @override
  String get video_setting_danmaku_block_rules => 'Woorden / regex blokkeren';
  @override
  String get video_setting_danmaku_block_rules_hint =>
      'Eén regel per rij. Omsluit een rij met schuine strepen zoals /patroon/ voor een reguliere expressie; anders wordt het als hoofdletterongevoelige tekst gematcht.';
  @override
  String get video_setting_danmaku_block_rules_placeholder =>
      'bijv. spoiler of /patroon/';
  @override
  String get video_setting_danmaku_enabled => 'Danmaku tonen';
  @override
  String get video_setting_danmaku_enabled_hint =>
      'Render lokale of gematchte danmaku over de video zonder de bediening te blokkeren.';
  @override
  String get video_setting_danmaku_font_scale => 'Lettergrootte';
  @override
  String get video_setting_danmaku_font_scale_hint =>
      'Schaal de danmaku-tekstgrootte.';
  @override
  String get video_setting_danmaku_manual_match => 'Handmatige match';
  @override
  String get video_setting_danmaku_manual_match_hint =>
      'Zoek op Dandanplay op titel en kies de aflevering wanneer automatisch koppelen mislukt of onjuist is.';
  @override
  String get video_setting_danmaku_max_active => 'Limiet actieve danmaku';
  @override
  String get video_setting_danmaku_max_active_hint =>
      'Beperkt het aantal per frame gerenderde reacties om grote bestanden vlot te houden.';
  @override
  String get video_setting_danmaku_online => 'Online Dandanplay-match';
  @override
  String get video_setting_danmaku_online_hint =>
      'Als er geen bruikbaar lokaal sidecar-bestand is, match de geopende video met Dandanplay en haal bijbehorende reacties op.';
  @override
  String get video_setting_danmaku_opacity => 'Dekking';
  @override
  String get video_setting_danmaku_opacity_hint =>
      'Algehele danmaku-transparantie.';
  @override
  String get video_setting_danmaku_server_url => 'URL danmaku-server';
  @override
  String get video_setting_danmaku_speed => 'Snelheid';
  @override
  String get video_setting_danmaku_speed_hint =>
      'Hoger is sneller; scrollende danmaku kruist het scherm eerder.';
  @override
  String get video_setting_double_tap => 'Spoelen met dubbeltik';
  @override
  String get video_setting_double_tap_hint =>
      'Dubbeltik links of rechts op de video om te spoelen';
  @override
  String get video_setting_double_tap_off => 'Uit';
  @override
  String get video_setting_double_tap_subtitle => 'Ondertitel';
  @override
  String get video_setting_immersive_mode => 'Immersieve modus';
  @override
  String get video_setting_immersive_mode_hint =>
      'Bepaalt wat beschikbaar blijft na het indrukken van de vergrendelknop aan de zijkant';
  @override
  String get video_setting_lock_window_aspect =>
      'Venster vergrendelen op videoverhouding';
  @override
  String get video_setting_long_press_speed => 'Snelheid bij lang indrukken';
  @override
  String get video_setting_long_press_speed_hint =>
      'Gebruik deze snelheid tijdelijk terwijl je de video ingedrukt houdt.';
  @override
  String get video_setting_mpv_aspect => 'Beeldverhouding';
  @override
  String get video_setting_mpv_aspect_auto => 'Origineel';
  @override
  String get video_setting_mpv_brightness => 'Helderheid';
  @override
  String get video_setting_mpv_channels => 'Kanalen';
  @override
  String get video_setting_mpv_channels_auto => 'Automatisch';
  @override
  String get video_setting_mpv_channels_mono => 'Mono';
  @override
  String get video_setting_mpv_channels_stereo => 'Stereo (downmix)';
  @override
  String get video_setting_mpv_contrast => 'Contrast';
  @override
  String get video_setting_mpv_correct_downscale => 'Lineaire neerschaling';
  @override
  String get video_setting_mpv_deband => 'Debanding';
  @override
  String get video_setting_mpv_deinterlace => 'Deinterlacen';
  @override
  String get video_setting_mpv_dither => 'Dithering';
  @override
  String get video_setting_mpv_gamma => 'Gamma';
  @override
  String get video_setting_mpv_group_advanced => 'Geavanceerd';
  @override
  String get video_setting_mpv_group_audio => 'Audio';
  @override
  String get video_setting_mpv_group_color => 'Kleur';
  @override
  String get video_setting_mpv_group_decode => 'Decodering';
  @override
  String get video_setting_mpv_group_geometry => 'Geometrie';
  @override
  String get video_setting_mpv_group_playback => 'Afspelen';
  @override
  String get video_setting_mpv_group_quality => 'Beeldkwaliteit';
  @override
  String get video_setting_mpv_hue => 'Tint';
  @override
  String get video_setting_mpv_hwdec => 'Hardwaredecodering';
  @override
  String get video_setting_mpv_hwdec_auto => 'Automatisch (veilig)';
  @override
  String get video_setting_mpv_hwdec_copy => 'Automatisch (kopie)';
  @override
  String get video_setting_mpv_hwdec_off => 'Uit';
  @override
  String get video_setting_mpv_interpolation => 'Bewegingsinterpolatie';
  @override
  String get video_setting_mpv_loop => 'Bestand herhalen';
  @override
  String get video_setting_mpv_normalize => 'Volume van downmix normaliseren';
  @override
  String get video_setting_mpv_panscan => 'Pan & scan (randen bijsnijden)';
  @override
  String get video_setting_mpv_pitch => 'Toonhoogte behouden bij versnellen';
  @override
  String get video_setting_mpv_raw =>
      'Extra mpv-opties (één per regel, sleutel=waarde)';
  @override
  String get video_setting_mpv_raw_hint =>
      'Alleen desktop; opties die niet tijdens runtime kunnen worden toegepast (bijv. vo, profile) worden genegeerd. SVP/RIFE vereisen externe tools en worden niet ondersteund.';
  @override
  String get video_setting_mpv_reset => 'Alles herstellen';
  @override
  String get video_setting_mpv_rotate => 'Rotatie';
  @override
  String get video_setting_mpv_saturation => 'Verzadiging';
  @override
  String get video_setting_mpv_sigmoid => 'Sigmoïde-opschaling';
  @override
  String get video_setting_mpv_sigmoid_hint =>
      'Sigmoid-curve opschaling vermindert ringing maar kost GPU. Standaard uit voor prestaties; zet aan als je scherpere opschaling wilt.';
  @override
  String get video_setting_mpv_zoom => 'Zoom';
  @override
  String get video_setting_picture_fit => 'Beeldschaling';
  @override
  String get video_setting_picture_fit_contain =>
      'Passend, verhouding behouden, zwarte balken toevoegen';
  @override
  String get video_setting_picture_fit_cover =>
      'Vullen, verhouding behouden, randen bijsnijden';
  @override
  String get video_setting_picture_fit_fill => 'Uitrekken om te vullen';
  @override
  String get video_setting_picture_fit_hint =>
      'Hoe het beeld het spelergebied vult';
  @override
  String get video_setting_qb_category => 'qBittorrent-categorie';
  @override
  String get video_setting_qb_category_hint =>
      'Downloads doorgestuurd door Fushi krijgen deze categorie; voltooiingsmonitoring let alleen hierop.';
  @override
  String get video_setting_qb_password => 'WebUI-wachtwoord';
  @override
  String get video_setting_qb_url => 'qBittorrent WebUI-URL';
  @override
  String get video_setting_qb_url_hint =>
      'bijv. http://127.0.0.1:8080. Leeg laten om animedownloads uit te schakelen.';
  @override
  String get video_setting_qb_username => 'WebUI-gebruikersnaam';
  @override
  String get video_setting_secondary_subtitle_obscure =>
      'Secundaire ondertitel verbergen';
  @override
  String get video_setting_secondary_subtitle_obscure_hint =>
      'Vervaag of verberg de secundaire (vertaling) ondertitel';
  @override
  String get video_setting_seek_seconds => 'Spoelstap (seconden)';
  @override
  String get video_setting_speed => 'Afspeelsnelheid';
  @override
  String get video_setting_speed_step => 'Snelheidsstap';
  @override
  String get video_setting_subtitle_appearance => 'Weergave ondertitels';
  @override
  String get video_setting_subtitle_bg_color => 'Achtergrondkleur';
  @override
  String get video_setting_subtitle_bg_opacity => 'Dekking achtergrond';
  @override
  String get video_setting_subtitle_font_size => 'Tekengrootte';
  @override
  String get video_setting_subtitle_font_weight => 'Tekendikte';
  @override
  String get video_setting_subtitle_no_background => 'Geen achtergrond';
  @override
  String get video_setting_subtitle_no_background_hint =>
      'Maak de ondertitelachtergrond transparant.';
  @override
  String get video_setting_subtitle_obscure => 'Ondertitels verbergen';
  @override
  String get video_setting_subtitle_obscure_blur => 'Vervagen';
  @override
  String get video_setting_subtitle_obscure_hide => 'Verbergen';
  @override
  String get video_setting_subtitle_obscure_hint =>
      'Kies hoe ondertitels verborgen worden voor luisteroefening: uit, vervaagd (beweeg erover of tik om te onthullen), of verborgen.';
  @override
  String get video_setting_subtitle_obscure_none => 'Uit';
  @override
  String get video_setting_subtitle_position => 'Verticale positie';
  @override
  String get video_setting_subtitle_reset => 'Standaardwaarden herstellen';
  @override
  String get video_setting_subtitle_respect_ass =>
      'Eigen stijl van ondertitel respecteren';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      'Gebruik het lettertype, de kleur en het omtrek ingebouwd in .ass-ondertitels indien beschikbaar; schakel uit om je eigen weergave-instellingen te forceren.';
  @override
  String get video_setting_subtitle_shadow => 'Schaduw';
  @override
  String get video_setting_subtitle_sync_input => 'Verschuiving (ms)';
  @override
  String get video_setting_subtitle_text_color => 'Tekstkleur';
  @override
  String get video_setting_theme => 'Thema';
  @override
  String get video_setting_torrent_active_downloads => 'Max. actieve downloads';
  @override
  String get video_setting_torrent_active_seeds => 'Max. actieve seeds';
  @override
  String get video_setting_torrent_anonymous => 'Anonieme modus';
  @override
  String get video_setting_torrent_antileech => 'Anti-leech inschakelen';
  @override
  String get video_setting_torrent_backend_qb => 'Externe qBittorrent';
  @override
  String get video_setting_torrent_ban_progress_cheat =>
      'Voortgangsfraude bannen';
  @override
  String get video_setting_torrent_ban_relative_cheat =>
      'Relatieve voortgangsfraude bannen';
  @override
  String get video_setting_torrent_ban_time => 'Banduur (min)';
  @override
  String get video_setting_torrent_ban_time_hint => '0 = permanent';
  @override
  String get video_setting_torrent_connections_hint => '0 = engine-standaard';
  @override
  String get video_setting_torrent_dht => 'DHT';
  @override
  String get video_setting_torrent_download_limit => 'Downloadlimiet (KB/s)';
  @override
  String get video_setting_torrent_encryption_disabled => 'Uitgeschakeld';
  @override
  String get video_setting_torrent_encryption_forced => 'Verplicht';
  @override
  String get video_setting_torrent_encryption_prefer => 'Voorkeur';
  @override
  String get video_setting_torrent_limit_hint => '0 = onbeperkt';
  @override
  String get video_setting_torrent_listen_port => 'Luisterpoort';
  @override
  String get video_setting_torrent_listen_port_hint => '0 = standaard (6881)';
  @override
  String get video_setting_torrent_lsd => 'Lokale peerontdekking (LSD)';
  @override
  String get video_setting_torrent_max_connections => 'Max. verbindingen';
  @override
  String get video_setting_torrent_max_ip_ports => 'Max. poorten per IP';
  @override
  String get video_setting_torrent_memory_hint =>
      'Beperk het enginegeheugen. 0 = automatisch (gebaseerd op apparaat-RAM).';
  @override
  String get video_setting_torrent_memory_limit => 'Geheugenlimiet (MB)';
  @override
  String get video_setting_torrent_natpmp => 'NAT-PMP poortmapping';
  @override
  String get video_setting_torrent_section_antileech => 'Anti-leech';
  @override
  String get video_setting_torrent_section_session => 'Sessie';
  @override
  String get video_setting_torrent_seed_ratio_hint =>
      'Stop met uploaden wanneer geüpload/gedownload dit bereikt. 0 = onbeperkt.';
  @override
  String get video_setting_torrent_seed_ratio_limit => 'Seedratiolimiet';
  @override
  String get video_setting_torrent_seed_time_hint =>
      'Stop met uploaden na zo lang seeden. 0 = onbeperkt.';
  @override
  String get video_setting_torrent_seed_time_limit =>
      'Seedtijdlimiet (minuten)';
  @override
  String get video_setting_torrent_upload_enabled =>
      'Upload / seeding inschakelen';
  @override
  String get video_setting_torrent_upload_enabled_hint =>
      'Standaard uit. Seed terug naar de swarm na het downloaden.';
  @override
  String get video_setting_torrent_upload_limit => 'Uploadlimiet (KB/s)';
  @override
  String get video_setting_torrent_upload_slots => 'Max. uploadslots';
  @override
  String get video_setting_torrent_upnp => 'UPnP poortmapping';
  @override
  String get video_setting_torrent_zero_default => '0 = standaard';
  @override
  String get video_setting_torrent_zero_off => '0 = uit';
  @override
  String get video_settings_cat_audio => 'Audio';
  @override
  String get video_settings_cat_controls => 'Bediening';
  @override
  String get video_settings_cat_danmaku => 'Danmaku';
  @override
  String get video_settings_cat_mpv => 'mpv';
  @override
  String get video_settings_cat_playback => 'Afspelen';
  @override
  String get video_settings_cat_shaders => 'Beeldverbetering';
  @override
  String get video_settings_cat_subtitle => 'Ondertitels';
  @override
  String get video_settings_title => 'Video-instellingen';
  @override
  String get video_shader_anime4k_hint =>
      'Kies een preset om te downloaden. Vink hem na het downloaden aan in de lijst om hem in te schakelen. Alleen desktop.';
  @override
  String get video_shader_anime4k_title => 'Aanbevolen Anime4K-shaders';
  @override
  String get video_shader_download_anime4k => 'Anime4K-presets downloaden';
  @override
  String video_shader_download_done({required Object count}) =>
      '${count} shader(s) gedownload';
  @override
  String get video_shader_download_failed => 'Shader downloaden mislukt';
  @override
  String video_shader_download_partial({
    required Object ok,
    required Object failed,
  }) => '${ok} shader(s) gedownload, ${failed} mislukt';
  @override
  String get video_shader_download_url => 'Downloaden via link';
  @override
  String get video_shader_downloaded_label => 'Gedownload';
  @override
  String get video_shader_downloading => 'Shaders downloaden…';
  @override
  String get video_shader_first_use_body =>
      '想让动画画面更清晰，可以进入“画质增强”并点击“下载 Anime4K 推荐着色器”。下载后在已安装列表里勾选即可启用。';
  @override
  String get video_shader_first_use_download => 'Downloaden en inschakelen';
  @override
  String get video_shader_first_use_title => '试试 Anime4K 画质增强';
  @override
  String get video_shader_import => 'Shader importeren (.glsl)';
  @override
  String video_shader_import_done({required Object count}) =>
      '${count} shader(s) geïmporteerd';
  @override
  String get video_shader_import_from_mpv => 'Importeren uit lokale mpv';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自动搜索本机 mpv；未找到时可手动选择 mpv 目录。';
  @override
  String get video_shader_mobile_perf_hint =>
      'Op telefoons werken shaders alleen op het standaard GPU-renderpad en de effectiviteit verschilt per apparaat-GPU; hogere niveaus kunnen frames laten vallen of opwarming veroorzaken. Probeer eerst Laag/Gemiddeld en controleer het resultaat op je apparaat.';
  @override
  String video_shader_mpv_dir_current({required Object path}) =>
      'mpv-map: ${path}';
  @override
  String get video_shader_mpv_dir_empty => 'Geen shaders in die map gevonden';
  @override
  String get video_shader_mpv_not_found => 'Geen lokale mpv-shaders gevonden';
  @override
  String get video_shader_mpv_pick_title => 'Shaders importeren uit mpv';
  @override
  String get video_shader_pick_mpv_dir => 'Specify mpv folder';
  @override
  String get video_shader_preset_mode_a_fast =>
      'Voor de meeste 1080p-anime. Lichtere GPU-belasting.';
  @override
  String get video_shader_preset_mode_a_hq =>
      'Hoogste kwaliteit voor 1080p-anime. Vereist een sterke GPU.';
  @override
  String get video_shader_preset_mode_b_fast =>
      'Voor oudere 720p-anime met herbemonsteringsartefacten.';
  @override
  String get video_shader_preset_mode_b_hq =>
      'Hoge kwaliteit voor oudere 720p-anime met herbemonsteringsartefacten. Vereist een sterke GPU.';
  @override
  String get video_shader_preset_mode_c_fast =>
      'Voor oude SD-anime (480p) met compressieuitsmering.';
  @override
  String get video_shader_preset_mode_c_hq =>
      'Hoge kwaliteit voor oude SD-anime (480p) met compressieuitsmering. Vereist een sterke GPU.';
  @override
  String get video_shader_quality_tier => 'Kwaliteitsverbetering';
  @override
  String get video_shader_section_advanced =>
      'Geavanceerd (handmatige shaders)';
  @override
  String get video_shader_section_installed => 'Geïnstalleerde shaders';
  @override
  String get video_shader_showing_original => 'Shaders uit (origineel)';
  @override
  String get video_shader_showing_shaded => 'Shaders aan';
  @override
  String get video_shader_tier_custom_hint =>
      'Aangepaste shaderselectie. Kies een niveau hierboven om over te schakelen naar een preset.';
  @override
  String get video_shader_tier_high => 'Hoog';
  @override
  String get video_shader_tier_high_hint =>
      'Anime4K HQ. Scherper; het beste voor animatie, ook bruikbaar voor live-action (kleinere winst). Vereist een hogere middenklasse-GPU (NVIDIA RTX 4060 / RTX 3070, AMD RX 6700 XT / RX 7700 XT).';
  @override
  String get video_shader_tier_low => 'Laag';
  @override
  String get video_shader_tier_low_hint =>
      'Ingebouwde verscherping van mpv (ewa_lanczossharp). Werkt op elke video (animatie en live-action). Geen download, laagste GPU-belasting. Kies dit op geïntegreerde of oudere kaarten (NVIDIA GTX 1050, AMD RX 560, Intel iGPU).';
  @override
  String get video_shader_tier_medium => 'Gemiddeld';
  @override
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast. Het beste voor animatie, maar werkt ook op live-action films/series (kleinere winst). Draait op middenklasse-GPU\'s (NVIDIA GTX 1660 / RTX 3050, AMD RX 6600).';
  @override
  String get video_shader_tier_off => 'Geen';
  @override
  String get video_shader_tier_off_hint =>
      'Geen verbetering. Speelt de originele video ongewijzigd af.';
  @override
  String get video_shader_tier_ultra => 'Ultra';
  @override
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A (UL, ultragroot netwerk). De sterkste Anime4K-reconstructie; ook bruikbaar voor live-action (kleinere winst). Vereist een topGPU (NVIDIA RTX 4080 / RTX 5090, AMD RX 7900 XTX). Kies een lager niveau als je GPU zwakker is.';
  @override
  String get video_shader_url_hint =>
      'Plak een .glsl-shaderlink (bijv. GitHub)';
  @override
  String get video_shaders_empty => 'Nog geen shaders geïmporteerd';
  @override
  String get video_stat_by_video => 'Per video';
  @override
  String get video_stat_completed => 'Voltooid';
  @override
  String get video_stat_no_data => 'Nog geen videostatistieken';
  @override
  String get video_statistics => 'Videostatistieken';
  @override
  String get video_subtitle_attach_playlist_hint =>
      'Open de afspeellijst om per aflevering een ondertitel te koppelen';
  @override
  String video_subtitle_attached_to_video({
    required Object title,
    required Object count,
  }) => 'Ondertitel gekoppeld aan ${title} (${count} regels)';
  @override
  String get video_subtitle_auto_align => 'Ondertitel automatisch uitlijnen';
  @override
  String video_subtitle_auto_align_done({required Object ms}) =>
      'Ondertitel automatisch uitgelijnd met ${ms} ms';
  @override
  String get video_subtitle_auto_align_low_confidence =>
      'Kon niet betrouwbaar automatisch uitlijnen (geen duidelijke stemovereenkomst)';
  @override
  String get video_subtitle_auto_align_running =>
      'Ondertitel automatisch uitlijnen…';
  @override
  String get video_subtitle_color_note =>
      'Ondertitelkleuren stel je in de videospeler in.';
  @override
  String video_subtitle_delay_osd({required Object ms}) =>
      'Ondertitelsynchronisatie: ${ms} ms';
  @override
  String get video_subtitle_filter_all => 'Alle';
  @override
  String get video_subtitle_filter_favorites => 'Favorieten';
  @override
  String get video_subtitle_filter_favorites_empty =>
      'Nog geen favoriete regels';
  @override
  String get video_subtitle_graphic_hint =>
      'Grafische ondertitel · op video getoond · niet op te zoeken';
  @override
  String video_subtitle_graphic_shown({required Object label}) =>
      'Grafische ondertitel op video getoond (niet op te zoeken): ${label}';
  @override
  String get video_subtitle_import_failed => 'Ondertitel importeren mislukt';
  @override
  String get video_subtitle_import_file => 'Ondertitelbestand importeren…';
  @override
  String get video_subtitle_import_unsupported =>
      'Niet-ondersteunde ondertitelindeling';
  @override
  String get video_subtitle_list => 'Ondertitellijst';
  @override
  String get video_subtitle_list_auto_scroll => 'Automatisch scrollen';
  @override
  String get video_subtitle_list_empty => 'Geen ondertitels geladen';
  @override
  String get video_subtitle_list_font_larger => 'Grotere tekst';
  @override
  String get video_subtitle_list_font_smaller => 'Kleinere tekst';
  @override
  String get video_subtitle_list_jump => 'Naar deze regel springen';
  @override
  String get video_subtitle_list_loading => 'Ondertitels laden...';
  @override
  String video_subtitle_load_failed({required Object label}) =>
      'Kan deze ondertitel niet laden (grafisch of niet-ondersteund spoor): ${label}';
  @override
  String get video_subtitle_off => 'Ondertitels uitschakelen';
  @override
  String get video_subtitle_remote_host => 'Ondertitel van gekoppeld apparaat';
  @override
  String video_subtitle_switched({required Object label}) =>
      'Ondertitel: ${label}';
  @override
  String get video_subtitle_waveform_cue_list => 'Ondertitellijst';
  @override
  String get video_subtitle_waveform_jump_playhead =>
      'Naar afspeelpositie springen';
  @override
  String get video_subtitle_waveform_legend_cue => 'Ondertitelcue';
  @override
  String get video_subtitle_waveform_legend_energy => 'Luidheid';
  @override
  String get video_subtitle_waveform_legend_playhead => 'Afspeelpositie';
  @override
  String get video_subtitle_waveform_open => 'Golfvormuitlijning';
  @override
  String get video_subtitle_waveform_open_hint =>
      'Tik om in te zoomen en uit te lijnen';
  @override
  String get video_subtitle_waveform_scroll_hint =>
      'Sleep om de tijdlijn te scannen; gebruik de bedieningselementen hieronder om uit te lijnen';
  @override
  String get video_subtitle_waveform_unavailable =>
      'Golfvorm niet beschikbaar op dit apparaat';
  @override
  String get video_subtitle_waveform_zoom_in => 'Inzoomen';
  @override
  String get video_subtitle_waveform_zoom_out => 'Uitzoomen';
  @override
  String get video_subtitle_youtube_empty =>
      'Deze ondertiteltrack bevat geen tekst';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang} (vertaald)';
  @override
  String video_watched_up_to({required Object time}) => 'Bekeken tot ${time}';
  @override
  String get video_windows_black_flash_notice_body =>
      'Op Windows kan video zwart knipperen bij zware GPU-belasting. Om de belasting te verminderen, probeer Kwaliteitsverbetering, Sigmoid-opschaling en Debanding hierboven uit te schakelen, of schakel Hardwaredecodering over naar Kopiëren.';
  @override
  String get video_windows_black_flash_notice_title =>
      'Zwart knipperen op Windows?';
  @override
  String get view_illustrations => 'Illustraties';
  @override
  String get volume_button_page_turning =>
      'Pagina\'s omslaan met volumeknoppen';
  @override
  String get volume_key_sentence_nav => 'Zinsnavigatie met volumeknoppen';
  @override
  String get wheel_page_turn_interval => 'Interval voor bladeren met muiswiel';
  @override
  String get word_favorite_added => 'Woord opgeslagen als favoriet';
  @override
  String get word_favorite_removed => 'Woord verwijderd uit favorieten';
  @override
  String get yomitan_api_key => 'Yomitan API-sleutel (optioneel)';
  @override
  String get yomitan_api_server => 'Yomitan API-server';
  @override
  String get yomitan_api_server_hint =>
      'Laat yomitan-api-clients de woordenboeken van Fushi opvragen (poort 19633)';
  @override
  String get yomitan_api_server_started => 'Yomitan API-server gestart';
  @override
  String get yomitan_port_kill_action =>
      'Proces beëindigen en opnieuw proberen';
  @override
  String get yomitan_port_kill_confirm => 'Proces beëindigen';
  @override
  String yomitan_port_kill_confirm_message({required Object process}) =>
      'De poort wordt momenteel gebruikt door: ${process}';
  @override
  String yomitan_port_kill_confirm_title({required Object port}) =>
      'Het proces beëindigen dat poort ${port} gebruikt?';
  @override
  String yomitan_port_kill_failed({required Object process}) =>
      'Kon ${process} niet beëindigen. Beëindig het handmatig en probeer opnieuw.';
  @override
  String yomitan_port_kill_protected({required Object process}) =>
      '${process} is een kritiek systeemproces — Fushi beëindigt het niet. Wijzig de poort.';
  @override
  String get yomitan_port_kill_self_instance =>
      'Dit proces is een andere draaiende instantie van deze app.';
  @override
  String get game_track_bgm => 'BGM / uitgesloten';
  @override
  String get game_line_audio_no_voice => 'Geen spraak';
  @override
  String get game_line_audio_overlong => 'Te lang';
  @override
  String get game_line_audio_overlong_hint =>
      'Veel langer dan een enkele regel; kan BGM of andere gemixte audio bevatten';
  @override
  String get game_line_audio_loopback_hint =>
      'Systeemmixterugval; kan BGM bevatten';
  @override
  String get game_line_recapture => 'Spraak heropnemen';
  @override
  String get game_line_recapture_stop => 'Heropname voltooien';
  @override
  String get game_line_tracks => 'Tracks voor deze regel';
  @override
  String get game_line_tracks_hint =>
      'Beluister elke track op het moment van deze regel en sluit dan de BGM-tracks uit';
  @override
  String get game_line_track_use => 'Gebruiken voor deze regel';
  @override
  String get game_user_tags_title => 'Mijn tags';
  @override
  String get anki_lapis_section => 'Lapis-kaartstijl';
  @override
  String get anki_lapis_font_scale => 'Kaartlettergrootte';
  @override
  String get anki_lapis_font_scale_hint =>
      'Schaalt elke Lapis-lettergrootte; wordt van kracht via "Stijl toepassen op Anki".';
  @override
  String get anki_lapis_custom_css => 'Aangepaste CSS';
  @override
  String get anki_lapis_custom_css_hint =>
      'Toegevoegd aan de Lapis-stylesheet in een beschermd gebruikersgedeelte.';
  @override
  String get anki_lapis_apply => 'Stijl toepassen op Anki';
  @override
  String get anki_lapis_apply_done =>
      'Lapis-stijl toegepast. Er is eerst een back-up gemaakt.';
  @override
  String anki_lapis_apply_failed({required Object error}) =>
      'Kon stijl niet toepassen: ${error}';
  @override
  String get anki_lapis_up_to_date => 'Lapis-stijl is al bijgewerkt.';
  @override
  String get anki_lapis_foreign_edit_title => 'Sjabloon gewijzigd in Anki';
  @override
  String get anki_lapis_foreign_edit_body =>
      'Het Lapis-sjabloon in Anki verschilt van wat Fushi voor het laatst heeft toegepast — het is mogelijk handmatig bewerkt. Toepassen overschrijft het; er wordt eerst een back-up gemaakt. Doorgaan?';
  @override
  String get anki_lapis_backup => 'Lapis-sjabloon back-uppen';
  @override
  String anki_lapis_backup_done({required Object path}) =>
      'Sjabloon geback-upt: ${path}';
  @override
  String anki_lapis_backup_failed({required Object error}) =>
      'Back-up mislukt: ${error}';
  @override
  String get anki_lapis_not_found => 'Lapis-notetype niet gevonden in Anki.';
  @override
  String get anki_lapis_restore => 'Herstellen van back-up';
  @override
  String get anki_lapis_restore_empty => 'Nog geen back-ups.';
  @override
  String get anki_lapis_restore_confirm =>
      'Het Lapis-sjabloon in Anki overschrijven met deze back-up? De huidige staat wordt eerst geback-upt.';
  @override
  String get anki_lapis_restore_done => 'Sjabloon hersteld.';
  @override
  String anki_lapis_restore_failed({required Object error}) =>
      'Herstellen mislukt: ${error}';
  @override
  String get anki_dedup_section => 'Anki media-opslagoptimalisatie';
  @override
  String get anki_dedup_scan => 'Scannen op duplicaten (geen wijzigingen)';
  @override
  String get anki_dedup_run => 'Nu ontdubbelen';
  @override
  String get anki_dedup_report_title => 'Media-ontdubbelingsrapport';
  @override
  String anki_dedup_report_body({
    required Object groups,
    required Object removed,
    required Object size,
    required Object notes,
    required Object models,
    required Object skipped,
  }) =>
      '${groups} duplicaatgroepen; ${removed} extra kopieën (${size}); ${notes} notities en ${models} notetypes herschreven; ${skipped} overgeslagen.';
  @override
  String get anki_dedup_report_dry_note =>
      'Alleen scan — er is niets gewijzigd.';
  @override
  String get anki_dedup_report_clean =>
      'Geen byte-identieke duplicaten gevonden.';
  @override
  String anki_dedup_failed({required Object error}) =>
      'Ontdubbeling mislukt: ${error}';
  @override
  String get anki_dedup_unavailable =>
      'Vereist Anki op deze machine (AnkiConnect).';
  @override
  String get anki_dedup_run_hint =>
      'Scant eerst en toont exact wat er verwijderd zou worden; er wordt niets verwijderd tot je bevestigt.';
  @override
  String get anki_dedup_plan_title => 'Te verwijderen bestanden';
  @override
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '${count} extra kopieën, ${size} terug te winnen. Eén kopie van elk bestand wordt bewaard en elke referentie wordt eerst omgeleid; niets wordt opnieuw gecodeerd.';
  @override
  String anki_dedup_plan_entry({
    required Object file,
    required Object size,
    required Object canonical,
  }) => 'Verwijder ${file} (${size}) — bewaar ${canonical}';
  @override
  String get anki_dedup_plan_delete => 'Deze bestanden verwijderen';
  @override
  String get anki_dedup_plan_journal =>
      'Een logboek van elke herschrijving en verwijdering wordt eerst naar de back-upmap geschreven.';
  @override
  String get manga_ocr_default_engine => 'Standaard OCR-engine';
  @override
  String get manga_ocr_engine_auto => 'Automatisch (uploadt nooit naar Lens)';
  @override
  String get manga_ocr_engine_local_onnx => 'Lokale ONNX';
  @override
  String get manga_ocr_engine_google_lens => 'Google Lens';
  @override
  String get manga_google_lens_disclosure_title =>
      'Mangapagina\'s naar Google Lens sturen?';
  @override
  String get manga_google_lens_disclosure_body =>
      'Het herkennen van deze manga stuurt een verkleinde JPEG-kopie van elke pagina zonder OCR-tekst naar Google. Resultaten worden op dit apparaat gecachet. Het eindpunt is onofficieel en kan stoppen met werken. Er wordt niets geüpload tenzij je akkoord gaat.';
  @override
  String get manga_google_lens_disclosure_accept => 'Akkoord en OCR starten';
  @override
  String get manga_google_lens_disclosure_decline => 'Annuleren';
  @override
  String get manga_reading_direction => 'Leesrichting';
  @override
  String get manga_direction_rtl => 'Rechts naar links';
  @override
  String get manga_direction_ltr => 'Links naar rechts';
  @override
  String get manga_zoom => 'Zoom';
  @override
  String get manga_jump_to_page => 'Naar pagina springen';
  @override
  String get manga_previous_page => 'Vorige pagina';
  @override
  String get manga_next_page => 'Volgende pagina';
  @override
  String manga_page_number_hint({required Object total}) =>
      'Paginanummer (1-${total})';
  @override
  String get manga_import_direct => 'Importeren zonder OCR';
  @override
  String get manga_library => 'Manga';
  @override
  String get manga_import_action => 'Manga importeren';
  @override
  String get game_scrape_search => 'Zoeken';
  @override
  String get game_scrape_use => 'Gebruiken';
  @override
  String get game_scrape_search_failed =>
      'Zoeken mislukt. Controleer je netwerk en probeer opnieuw.';
  @override
  String get game_remove_confirm =>
      'Dit spel uit de bibliotheek verwijderen? Spelbestanden op de schijf worden niet verwijderd.';
  @override
  String manga_ocr_acceleration_status({required Object engine}) =>
      'OCR-versnelling: ${engine}';
  @override
  String manga_ocr_acceleration_degraded({
    required Object engine,
    required Object reason,
  }) => 'GPU-versnelling niet beschikbaar, OCR draait op ${engine}: ${reason}';
  @override
  String get media_tracking_status => 'Collectiestatus';
  @override
  String get media_tracking_signup => 'Bangumi-account aanmaken';
  @override
  String get media_tracking_game => 'Spel';
  @override
  String get download_rate_limit_lan_exempt =>
      'Geldt niet binnen je lokale netwerk; LAN-overdrachten lopen altijd op volle snelheid.';
  @override
  String get scrape_reason_network =>
      'Kon geen geldig antwoord krijgen van de omslagbron. Controleer je netwerk en probeer opnieuw.';
  @override
  String get scrape_reason_server =>
      'De omslagbron gaf een fout terug. Probeer het later opnieuw of kies een andere kandidaat.';
  @override
  String get common_more_actions => 'Meer acties';
  @override
  String get collection_already_has_item => 'Dit item zit al in de collectie.';
  @override
  String get drag_drop_manga_archive_unsupported =>
      'Kan .cbr/.rar-stripboekarchief niet importeren — herpak als .cbz of een map met afbeeldingen.';
  @override
  String get collection_add_failed =>
      'Kon het item niet aan de collectie toevoegen. Probeer het opnieuw.';
  @override
  String get anki_dedup_auto => 'Automatische verwerking';
  @override
  String get anki_dedup_auto_hint =>
      'Standaard uit. Wanneer aan, scant Fushi bij het opstarten (maximaal eenmaal per week) en toont eerst de lijst — er wordt niets verwijderd tot je bevestigt.';
  @override
  String get anki_dedup_auto_delete => 'Automatisch verwijderen zonder vragen';
  @override
  String get anki_dedup_auto_delete_hint =>
      'Slaat het bevestigingsvenster over. Alleen byte-identieke extra kopieën worden ooit verwijderd en niets wordt opnieuw gecodeerd, maar verwijdering kan niet ongedaan worden gemaakt.';
  @override
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      '${count} dubbele Anki-mediabestanden gevonden (${size} terug te winnen)';
  @override
  String get anki_dedup_auto_review => 'Bekijken';
  @override
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      '${count} dubbele Anki-mediabestanden verwijderd, ${size} teruggewonnen';
  @override
  String anki_lapis_backup_done_pruned({
    required Object path,
    required Object count,
  }) =>
      'Geback-upt naar ${path} (${count} oude back-ups verwijderd door het 90-dagen / bewaar-10 beleid)';
  @override
  String get game_audio_fallback_policy => 'Audioterugval';
  @override
  String get game_audio_fallback_full => 'Gemixte audio toestaan';
  @override
  String get game_audio_fallback_clean => 'Alleen schone bronnen';
  @override
  String get game_audio_fallback_resource => 'Alleen originele resources';
  @override
  String get game_track_silent_at_cue => 'Geen geluid bij deze regel';
  @override
  String get game_audio_fallback_full_hint =>
      'Valt terug op de systeemmix wanneer geen schone spraak wordt opgenomen; de clip kan BGM en effecten bevatten.';
  @override
  String get game_audio_fallback_clean_hint =>
      'Gebruikt alleen game-resource-audio en engine-PCM. Regels zonder spraak worden gedolven zonder audio in plaats van BGM op te pikken.';
  @override
  String get game_audio_fallback_resource_hint =>
      'Vereist het originele spraakbestand dat bij het spel is geleverd; delven wordt geweigerd als het ontbreekt.';
  @override
  String get game_line_audio_suppressed => 'Mix overgeslagen';
  @override
  String get game_line_audio_suppressed_hint =>
      'Geen schone audiobron heeft audio voor deze regel geproduceerd en de systeemmix is overgeslagen door je audioterugvalbeleid. Dit betekent niet dat de regel geen spraak heeft.';
  @override
  String get video_setting_torrent_limit_lan =>
      'Limieten toepassen op LAN-peers';
  @override
  String get video_setting_torrent_limit_lan_hint =>
      'Standaard uit: overdrachten met peers op je lokale netwerk negeren de bovenstaande limieten.';
  @override
  String get download_rate_limit_lan_included =>
      'Geldt ook binnen je lokale netwerk.';
  @override
  String get video_collection_no_local_member =>
      'Geen lokale video in deze collectie';
  @override
  String get gal_mining_image_mode => 'Gamekaartafbeelding';
  @override
  String get gal_mining_image_mode_screenshot => 'Schermafbeelding';
  @override
  String get gal_mining_image_mode_hint =>
      'Galgamescènes bewegen nauwelijks binnen één regel, dus een stilstaande schermafbeelding is meestal kleiner en net zo bruikbaar.';
  @override
  String get shortcut_scope_manga => 'Manga';
  @override
  String get shortcut_action_manga_page_forward => 'Volgende pagina';
  @override
  String get shortcut_action_manga_page_backward => 'Vorige pagina';
  @override
  String get shortcut_action_manga_dismiss_dict => 'Woordenboek sluiten';
  @override
  String get video_setting_jimaku_default_language =>
      'Standaard ondertiteltaal';
  @override
  String get video_jimaku_api_key_settings_hint =>
      'Ook bewerkbaar in Instellingen → Video → Ondertitels';
  @override
  String get anime_download_subs_episodes_unverified =>
      'Afleveringsnummers zijn niet geverifieerd tegen dit pakket — ondertitels kunnen van een ander seizoen komen.';
  @override
  String get anime_download_subs_deferred =>
      'Ondertitels worden na het downloaden gekoppeld, aan de hand van de daadwerkelijke bestanden';
  @override
  String get anime_download_subs_pending =>
      'Ondertitels: wachtend tot download voltooid';
  @override
  String get anime_download_subs_unmatched =>
      'Ondertitels: geen match voor dit pakket';
  @override
  String get stat_source_breakdown => 'Per bron';
  @override
  String stat_format_pages({required Object n}) => '${n} pagina\'s';
  @override
  String anime_download_subs_season_mismatch({required Object season}) =>
      'Geen ondertitelitem komt overeen met seizoen ${season} van dit pakket — niet automatisch geselecteerd. Kies er handmatig een als je het toch wilt.';
  @override
  String get media_tracking_card_title => 'Bangumi-sync';
  @override
  String get media_tracking_not_connected =>
      'Niet verbonden. Voortgang blijft lokaal en bereikt Bangumi niet.';
  @override
  String get media_tracking_last_sync => 'Laatste sync';
  @override
  String get media_tracking_never_synced => 'Nooit gesynchroniseerd';
  @override
  String media_tracking_linked_count({required Object n}) => '${n} gekoppeld';
  @override
  String media_tracking_pending_count({required Object n}) =>
      '${n} wachten op verzending';
  @override
  String get media_tracking_all_synced => 'Alles verzonden';
  @override
  String get media_tracking_unauthorized =>
      'Bangumi heeft het toegangstoken geweigerd. Verbind opnieuw in instellingen.';
  @override
  String get media_tracking_open_subject => 'Openen op Bangumi';
  @override
  String get media_tracking_manage_links => 'Koppelingen beheren';
  @override
  String get media_tracking_last_error => 'Laatste fout';
  @override
  String get shortcut_action_popup_mine_entry => 'Kaart aanmaken (delven)';
  @override
  String get game_upscaling_auto_hint =>
      'Gebruik Magpie als het al draait; gebruik anders de versie meegeleverd met Fushi. Geen download nodig.';
  @override
  String get game_upscaling_installed_only_hint =>
      'Gebruik Magpie alleen als het al geïnstalleerd of actief is. Pak de meegeleverde versie van Fushi niet uit.';
  @override
  String get game_upscaling_off_hint => 'Schaal het spelvenster nooit op.';
  @override
  String get game_helper_bundle_missing =>
      'De galgame-hookhelper is niet meegeleverd met deze build. Werk Fushi bij om deze te krijgen.';
  @override
  String game_upscaling_pick_title({required Object name}) =>
      'Vensteropschaling voor ${name}';
  @override
  String get game_upscaling_pick_body =>
      'Schaalt dit spelvenster op met Magpie terwijl een opnamesessie draait. Wordt per spel ingesteld — het helpt alleen voor spellen waarvan de native resolutie lager is dan je scherm. Gebruikt je GPU.';
  @override
  String get game_upscaling_hint_not_installed =>
      'Magpie is niet gereed. Stel vensteropschaling in op Automatisch om de meegeleverde kopie van Fushi te gebruiken; als het nog steeds niet start, werk Fushi bij of herinstalleer het.';
  @override
  String media_source_count_manga({required Object n}) => '${n} delen';
  @override
  String get library_view_shelf => 'Plank';
  @override
  String get library_view_browse => 'Ontdekken';
  @override
  String get library_view_media => 'Bibliotheek';
  @override
  String get scrape_failure_detail_show => 'Details tonen';
  @override
  String get scrape_failure_detail_hide => 'Details verbergen';
  @override
  String get media_tracking_retry_mapping => 'Koppeling opnieuw proberen';
  @override
  String get media_tracking_retry_matched =>
      'Gekoppeld en huidige voortgang in wachtrij gezet';
  @override
  String get media_tracking_retry_no_match =>
      'Geen match gevonden. Probeer handmatig koppelen.';
  @override
  String get game_statistics => 'Spelstatistieken';
  @override
  String get game_stat_by_game => 'Per spel';
  @override
  String get stat_clear_all_game_message =>
      'Alle speeltijd en sessietellingen wissen? Je spelbibliotheek en activiteitstijdlijn worden bewaard. Dit kan niet ongedaan worden gemaakt.';
  @override
  String batch_selection_stale_skipped({
    required Object m,
    required Object n,
  }) => '${m} van ${n} geselecteerde items overgeslagen die niet meer bestaan';
  @override
  String get game_text_thread_unset =>
      'Geen thread geselecteerd — kies er een om te beginnen met opnemen';
  @override
  String get media_tracking_watched_show => 'Alle bekeken anime tonen';
  @override
  String get media_tracking_watched_title => 'Bekeken op Bangumi';
  @override
  String get media_tracking_watched_empty =>
      'Geen anime is gemarkeerd als bekeken op dit Bangumi-account.';
  @override
  String media_tracking_watched_load_failed({required Object error}) =>
      'Kon bekeken anime niet laden: ${error}';
  @override
  String media_tracking_watched_progress({required Object n}) =>
      '${n} afleveringen bekeken';
  @override
  String get media_tracking_manual_required => 'Handmatige koppeling nodig';
  @override
  String media_tracking_manual_required_count({required Object n}) =>
      '${n} items hebben handmatige koppelingen nodig';
  @override
  String get media_tracking_manual_required_hint =>
      'Deze lokale items hebben al voortgang maar zijn niet gekoppeld aan Bangumi.';
  @override
  String get media_tracking_no_local_history =>
      'Geen lokale kijk-, lees- of spelvoortgang hoeft te worden gekoppeld.';
  @override
  String media_tracking_more_manual_required({required Object n}) =>
      '${n} meer items hebben handmatige koppelingen nodig';
  @override
  String get manga_import_hint =>
      'Kies een mangamap, een .cbz/.zip-paginaarchief, een .pdf, of een .mokuro-bestand.';
  @override
  String get manga_import_pick_file => 'Mangabestand kiezen';
  @override
  String get manga_import_pick_folder => 'Mangamap kiezen';
  @override
  String get manga_import_missing_input =>
      'Kies eerst een mangabestand of -map.';
  @override
  String get manga_import_detected_title => 'Dit lijkt op manga';
  @override
  String get manga_import_detected_confirm => 'Importeren als manga';
  @override
  String manga_import_detected_message({required Object name}) =>
      '"${name}" is een mangabestand, dus het wordt via de manga-importeur verwerkt in plaats van de boekimporteur.';
  @override
  String get video_jimaku_source_loading =>
      'Beschikbaarheid van ondertitels controleren...';
  @override
  String get video_jimaku_source_failed =>
      'Kon beschikbaarheid van ondertitels niet controleren. Probeer opnieuw te zoeken.';
  @override
  String get video_jimaku_language_unknown => 'Taal niet gelabeld';
  @override
  String video_jimaku_source_summary({
    required Object files,
    required Object episodes,
    required Object languages,
  }) =>
      '${files} ondertitelbestanden · ${episodes} afleveringen · ${languages}';
  @override
  String video_jimaku_episode_unlabeled({
    required Object episode,
    required Object count,
  }) =>
      'Geen ondertitel gelabeld als aflevering ${episode}; ${count} ongelabelde bestanden kunnen nog overeenkomen';
  @override
  String video_jimaku_episode_unavailable({required Object episode}) =>
      'Geen ondertitel gevonden voor aflevering ${episode}';
  @override
  String video_jimaku_episode_available({
    required Object count,
    required Object languages,
  }) => '${count} ondertitels beschikbaar · ${languages}';
  @override
  String get manga_online_source_disabled =>
      'Deze internetbron is uitgeschakeld. Schakel deze in bij Bronnen om de catalogus te bladeren.';
  @override
  String get selection_web_search => 'Op het web zoeken';
  @override
  String get selection_web_search_unavailable =>
      'Geen app kan op het web zoeken.';
  @override
  String get selection_share_failed => 'Kon het deelvenster niet openen.';
  @override
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang} (automatisch gegenereerd)';
  @override
  String get anki_dedup_progress_title => 'Media ontdubbelen';
  @override
  String anki_dedup_progress_scanning({required Object count}) =>
      'Mediamap scannen… (${count} bestanden gevonden)';
  @override
  String anki_dedup_progress_hashing({
    required Object done,
    required Object total,
  }) => 'Bestanden van gelijke grootte vergelijken… (${done} / ${total})';
  @override
  String anki_dedup_progress_resolving({
    required Object done,
    required Object total,
  }) => 'Duplicaten verwerken… (${done} / ${total})';
  @override
  String anki_dedup_progress_freed({required Object size}) =>
      '${size} tot nu toe vrijgemaakt';
  @override
  String get anki_dedup_cancelling => 'Annuleren…';
  @override
  String get anki_dedup_cancelled =>
      'Ontdubbeling geannuleerd; voltooide wijzigingen worden bewaard.';
  @override
  String get anki_dedup_report_cancelled_note =>
      'Vroegtijdig geannuleerd — de onderstaande cijfers betreffen alleen wat voltooid is.';
  @override
  String get anki_dedup_plan_busy_note =>
      'Anki kan traag reageren terwijl dit draait; gebruik Anki niet tot het klaar is.';
  @override
  String get video_setting_subtitle_position_secondary =>
      'Positie secundaire ondertitel';
  @override
  String get dict_download_learning_language => 'Leertaal';
  @override
  String get dict_category_bilingual => 'Tweetalig';
  @override
  String get dict_category_monolingual => 'Eentalig';
  @override
  String get shortcut_action_video_hold_speed =>
      'Ingedrukt houden voor tijdelijke snelheid';
  @override
  String get handlebar_phonetic_transcriptions => 'Fonetische transcripties';
  @override
  String get sync_progress_preparing => 'Synchronisatie voorbereiden';
  @override
  String get sync_progress_collections => 'Collecties synchroniseren';
  @override
  String get sync_progress_book => 'Boek synchroniseren';
  @override
  String sync_progress_book_titled({required Object title}) =>
      '${title} synchroniseren';
  @override
  String sync_last_completed({required Object count}) =>
      'Laatste sync: voltooid (${count} kanalen)';
  @override
  String get sync_last_no_channels =>
      'Laatste sync: niets gesynchroniseerd — geen verbonden synchronisatiekanaal';
  @override
  String get sync_last_nothing => 'Laatste sync: niets te synchroniseren';
  @override
  String get sync_last_auto_disabled =>
      'Laatste sync: overgeslagen — automatische sync staat uit';
  @override
  String get sync_last_cooled_down =>
      'Laatste sync: overgeslagen — recent gesynchroniseerd';
  @override
  String get sync_last_failed => 'Laatste sync: mislukt';
  @override
  String anime_download_no_results_detail({
    required Object query,
    required Object filters,
  }) =>
      'De service reageerde succesvol maar gaf 0 items terug. Zoekopdracht: ${query}; filters: ${filters}. Probeer een andere titel of versoepl de filters.';
  @override
  String get anime_download_streaming_ready =>
      'In bibliotheek · download gaat door';
  @override
  String get anime_download_unfiltered => 'Geen Vertrouwd-filter';
  @override
  String get interconnect_enable_footer =>
      'Gebruik: schakel op het apparaat met je bibliotheek de sync-serverschakelaar hieronder in; voeg op je andere apparaat het adres van die server toe om te koppelen. Een apparaat kan maar één rol tegelijk vervullen — server of client.';
  @override
  String get interconnect_peer_list_title => 'Toegevoegde peers';
  @override
  String get interconnect_peer_list_empty =>
      'Nog geen peers toegevoegd. Kies een ontdekt apparaat uit de LAN-apparatenlijst hieronder om automatisch te koppelen, of voeg handmatig een peeradres toe.';
  @override
  String get anki_lapis_visual_editor => 'Visuele editor';
  @override
  String get anki_lapis_visual_editor_hint =>
      'Bekijk een voorbeeld van de Lapis-kaart, wijzig dan de stijl, positie en veldtoewijzing van elk gebied zonder CSS te schrijven.';
  @override
  String get anki_lapis_visual_front => 'Voorkant';
  @override
  String get anki_lapis_visual_back => 'Achterkant';
  @override
  String get anki_lapis_visual_preview => 'Lapis-kaartvoorbeeld';
  @override
  String get anki_lapis_visual_select_field => 'Kies wat je wilt bewerken';
  @override
  String get anki_lapis_visual_reset_field => 'Veld resetten';
  @override
  String anki_lapis_visual_font_size({required Object percent}) =>
      'Lettergrootte: ${percent}%';
  @override
  String get anki_lapis_visual_bold => 'Vet';
  @override
  String get anki_lapis_visual_alignment => 'Uitlijning';
  @override
  String get anki_lapis_visual_color => 'Tekstkleur';
  @override
  String get anki_lapis_visual_default => 'Standaard';
  @override
  String get anki_lapis_visual_advanced_css => 'Geavanceerde CSS';
  @override
  String get anki_lapis_visual_field_expression => 'Woord';
  @override
  String get anki_lapis_visual_field_reading => 'Lezing';
  @override
  String get anki_lapis_visual_field_sentence => 'Zin';
  @override
  String get anki_lapis_visual_field_primary_definition => 'Primaire definitie';
  @override
  String get anki_lapis_visual_field_glossaries => 'Overige definities';
  @override
  String get anki_lapis_visual_target_card_content => 'Kaartinhoud';
  @override
  String get anki_lapis_visual_target_definition => 'Definitie';
  @override
  String get anki_lapis_visual_target_inside_definition => 'Binnen definitie';
  @override
  String get anki_lapis_visual_field_definition_info => 'Definitie-indicator';
  @override
  String get anki_lapis_visual_field_definition_box => 'Definitiekader';
  @override
  String get anki_lapis_visual_field_definition_content => 'Gehele definitie';
  @override
  String get anki_lapis_visual_field_selected_definition =>
      'Geselecteerde definitie';
  @override
  String get anki_lapis_visual_field_dictionary_entry => 'Woordenboeklemma';
  @override
  String get anki_lapis_visual_field_dictionary_name => 'Woordenboeknaam';
  @override
  String get anki_lapis_visual_field_definition_example => 'Definitievoorbeeld';
  @override
  String get anki_lapis_visual_line_height => 'Regelhoogte';
  @override
  String get anki_lapis_visual_background_color => 'Achtergrondmarkering';
  @override
  String get anki_lapis_visual_box_layout => 'Kaderuiterlijk';
  @override
  String get anki_lapis_visual_border_width => 'Rand';
  @override
  String get anki_lapis_visual_border_color => 'Randkleur';
  @override
  String get anki_lapis_visual_corner_radius => 'Hoekradius';
  @override
  String get anki_lapis_visual_padding => 'Binnenruimte';
  @override
  String get anki_lapis_visual_margin => 'Buitenruimte';
  @override
  String get anki_lapis_visual_field_definition_info_note =>
      'Alleen zichtbaar op kaarten met meer dan één definitieblok; kaarten met één definitie verbergen dit.';
  @override
  String get anki_lapis_visual_field_dictionary_name_note =>
      'Op Fushi-kaarten draagt dit label ook de woordsoort-tags, dus de twee kunnen niet apart gestyled worden.';
  @override
  String get game_upscaling_error_bundle_missing =>
      'Fushi-installatie is incompleet: de meegeleverde Magpie-component ontbreekt. Herinstalleer of werk Fushi bij.';
  @override
  String get game_upscaling_error_bundle_invalid =>
      'De meegeleverde Magpie-component is beschadigd of heeft de verificatie niet doorstaan. Herinstalleer of werk Fushi bij.';
  @override
  String download_test_connection_failed_reason({required Object message}) =>
      'Verbinding mislukt: ${message}';
  @override
  String get delete_disclosure_will_delete_label => 'Wordt verwijderd';
  @override
  String get delete_disclosure_will_keep_label => 'Wordt bewaard';
  @override
  String get delete_disclosure_book_records =>
      'Leesvoortgang, bladwijzers, tags en ondertitelgegevens';
  @override
  String get delete_disclosure_book_extracted =>
      'De boekbestanden die Fushi in zijn eigen opslag heeft uitgepakt';
  @override
  String get delete_disclosure_book_audiobook =>
      'De audio en uitgelijnde ondertitels van het bijgevoegde luisterboek, indien aanwezig';
  @override
  String get delete_disclosure_source_kept =>
      'De originele bestanden die je importeerde (boek, ondertitels, audio)';
  @override
  String get delete_disclosure_stats_kept => 'Leesstatistieken';
  @override
  String get delete_disclosure_audiobook_files =>
      'De audio en uitgelijnde ondertitels die Fushi in zijn eigen opslag heeft gekopieerd';
  @override
  String get delete_disclosure_audiobook_book_kept =>
      'Het boek zelf en de leesvoortgang';
  @override
  String get delete_disclosure_audiobook_source_kept =>
      'De originele audiobestanden die je importeerde';
  @override
  String get audiobook_delete => 'Luisterboek verwijderen';
  @override
  String get audiobook_delete_confirm =>
      'Het bijgevoegde luisterboek verwijderen? De audiobestanden worden van dit apparaat verwijderd.';
  @override
  String get delete_collection_confirm =>
      'Alleen de groepering wordt verwijderd. De items erin worden bewaard.';
  @override
  String get shortcut_action_video_enter_caret =>
      'Ondertitelopzoekcursor activeren';
  @override
  String get audiobook_export_clip_too_long =>
      'Audio van selectie is te lang om te exporteren (limiet: 5 minuten)';
  @override
  String get sync_err_forbidden =>
      'De server heeft dit verzoek geweigerd. Je inloggegevens zijn in orde — controleer de serverinstellingen.';
  @override
  String sync_err_forbidden_detail({required Object reason}) =>
      'De server heeft dit verzoek geweigerd: ${reason} (je inloggegevens zijn in orde)';
  @override
  String get collection_group_extras => 'Extra\'s & PV';
  @override
  String collection_group_season({required Object n}) => 'Seizoen ${n}';
  @override
  String get collection_sort_by_season => 'Sorteren op seizoen';
  @override
  String get mining_animated_format_avif => 'AVIF (kleinst)';
  @override
  String get mining_animated_format_webp => 'WebP (bredere ondersteuning)';
  @override
  String get mining_animated_format_gif => 'GIF (meest compatibel)';
  @override
  String get video_mining_animated_format => 'Videokaart-animatieformaat';
  @override
  String get video_mining_animated_format_hint =>
      'AVIF is veel kleiner dan GIF bij dezelfde kwaliteit, en de hoogste kwaliteitstrap staat een hogere resolutie en framerate toe dan GIF of WebP. Valt automatisch terug op GIF wanneer de meegeleverde encoder het niet kan produceren.';
  @override
  String get gal_mining_animated_format => 'Gamekaart-animatieformaat';
  @override
  String get gal_mining_animated_format_hint =>
      'Dezelfde formaten als videokaarten, apart opgeslagen: een galgameframe beweegt nauwelijks binnen één regel, dus de afweging is anders.';
  @override
  String get scrape_all => 'Alles scrapen';
  @override
  String scrape_all_title({required Object kind}) => 'Alle ${kind} scrapen';
  @override
  String scrape_all_running({required Object current, required Object total}) =>
      '${current} / ${total} aan het scrapen';
  @override
  String scrape_all_item({required Object title}) => 'Verwerken: ${title}';
  @override
  String scrape_all_done({
    required Object applied,
    required Object review,
    required Object skipped,
    required Object failed,
  }) =>
      'Klaar: ${applied} toegepast, ${review} moet beoordeeld, ${skipped} overgeslagen, ${failed} mislukt';
  @override
  String get scrape_all_empty =>
      'Er zijn geen items om te scrapen in deze bibliotheek.';
  @override
  String get scrape_all_start => 'Starten';
  @override
  String collection_hero_total_episodes({required Object count}) =>
      '${count} afleveringen';
  @override
  String get video_scrape_collection_rename_title =>
      'Deze collectie hernoemen?';
  @override
  String get video_scrape_collection_rename_body =>
      'Het gematchte item heeft een andere naam. Hernoemen is optioneel: de omslag en details worden hoe dan ook opgeslagen, en een hernoemen vervangt ook de oude naam op je andere gesynchroniseerde apparaten.';
  @override
  String video_scrape_collection_rename_from({required Object name}) =>
      'Huidige naam: ${name}';
  @override
  String video_scrape_collection_rename_to({required Object name}) =>
      'Nieuwe naam: ${name}';
  @override
  String get video_scrape_collection_rename_keep => 'Huidige naam behouden';
  @override
  String get download_task_toggle_failed => 'Pauzeren/hervatten mislukt';
  @override
  String get download_task_eta => 'Geschatte tijd';
  @override
  String get download_task_ratio => 'Ratio';
  @override
  String get download_task_status_downloading => 'Downloaden';
  @override
  String get download_task_status_seeding => 'Seeden';
  @override
  String get download_task_status_completed => 'Voltooid';
  @override
  String get download_task_status_paused => 'Gepauzeerd';
  @override
  String get download_task_status_queued => 'In wachtrij';
  @override
  String get download_task_status_stalled => 'Vastgelopen';
  @override
  String get download_task_status_checking => 'Controleren';
  @override
  String get download_task_status_metadata => 'Metadata ophalen';
  @override
  String get download_task_status_moving => 'Verplaatsen';
  @override
  String get download_task_status_error => 'Fout';
  @override
  String get download_task_pause => 'Pauzeren';
  @override
  String get download_task_resume => 'Hervatten';
  @override
  String get download_airing_calendar_title => 'Uitzendkalender';
  @override
  String get download_airing_calendar_show_all => 'Alles tonen van dit seizoen';
  @override
  String get download_airing_calendar_empty_guidance =>
      'Nog niets te tonen: koppel een collectie aan AniList of voeg een downloadabonnement toe, en hun uitzendtijden verschijnen hier.';
  @override
  String get download_airing_calendar_error =>
      'Kon het uitzendschema niet laden';
  @override
  String get download_airing_calendar_in_library => 'In bibliotheek';
  @override
  String get download_airing_calendar_subscribed => 'Geabonneerd';
  @override
  String download_airing_calendar_episode_label({required Object episode}) =>
      'Afl. ${episode}';
  @override
  String get download_airing_calendar_week_prev => 'Vorige week';
  @override
  String get download_airing_calendar_week_next => 'Volgende week';
  @override
  String get download_airing_calendar_week_empty => 'Niets gepland deze week';
  @override
  String get video_jimaku_format => 'Formaat';
  @override
  String get video_jimaku_format_all => 'Alle';
  @override
  String get video_setting_tmdb_key => 'Aangepaste TMDB API-sleutel';
  @override
  String get video_setting_tmdb_key_hint =>
      'Optioneel. Leeg laten om de ingebouwde sleutel te gebruiken. Vul je eigen in als scrapen stopt met werken of als je je eigen quota wilt gebruiken.';
  @override
  String get about_tmdb_attribution =>
      'Deze applicatie maakt gebruik van TMDB en de TMDB API\'s maar is niet goedgekeurd, gecertificeerd of anderszins geautoriseerd door TMDB.';
  @override
  String get anki_lapis_visual_layout => 'Indeling';
  @override
  String get anki_lapis_visual_layout_hint =>
      'Gebruikt de eigen indelingsschakelaars van Lapis, zodat zowel desktop- als mobiel Anki dit volgen.';
  @override
  String get anki_lapis_visual_layout_sentence => 'Zinspositie';
  @override
  String get anki_lapis_visual_layout_sentence_above => 'Boven definities';
  @override
  String get anki_lapis_visual_layout_sentence_below => 'Onder definities';
  @override
  String get anki_lapis_visual_layout_picture => 'Afbeeldingspositie';
  @override
  String get anki_lapis_visual_layout_picture_right => 'Rechts van het woord';
  @override
  String get anki_lapis_visual_layout_picture_left => 'Links van het woord';
  @override
  String get anki_lapis_visual_layout_picture_alt => 'In de zin';
  @override
  String get anki_lapis_visual_layout_audio => 'Audioknoppen';
  @override
  String get anki_lapis_visual_layout_audio_header => 'Naast de lezing';
  @override
  String get anki_lapis_visual_layout_audio_fixed => 'Vastgezet onderaan';
  @override
  String get anki_lapis_visual_layout_audio_alt => 'In de zin';
  @override
  String get anki_lapis_visual_mapping_hint =>
      'Anki-velden die het geselecteerde gebied vullen. Wijzigingen worden samen met de stijl opgeslagen.';
  @override
  String get anki_lapis_visual_mapping_none =>
      'Dit gebied wordt door het sjabloon zelf getekend en heeft geen eigen veld.';
  @override
  String get anki_lapis_visual_color_custom => 'Aangepast';
  @override
  String get anki_lapis_visual_color_picker_title => 'Kies een kleur';
  @override
  String get video_scrape_tmdb_key_hint => 'TMDB API-sleutel invoeren';
  @override
  String get video_scrape_tmdb_key_required => 'TMDB vereist een API-sleutel';
  @override
  String get video_scrape_tmdb_key_save => 'Opslaan';
  @override
  String get video_scrape_tmdb_key_empty =>
      'Sla een TMDB API-sleutel op en druk op Zoeken. Resultaten van andere bronnen worden hier niet getoond.';
  @override
  String get download_detail_tab_overview => 'Overzicht';
  @override
  String get download_detail_tab_files => 'Bestanden';
  @override
  String get download_detail_tab_peers => 'Peers';
  @override
  String get download_detail_tab_trackers => 'Trackers';
  @override
  String get download_detail_backend_unsupported =>
      'Niet ondersteund door de huidige download-backend';
  @override
  String get download_detail_task_gone => 'Taak niet gevonden in backend';
  @override
  String get download_detail_task_missing =>
      'De oorspronkelijke download-backend is online, maar deze torrent is niet meer aanwezig. Live peers en trackers kunnen niet worden hersteld; opgeslagen taakinformatie wordt getoond.';
  @override
  String get download_detail_section_transfer => 'Overdracht';
  @override
  String get download_detail_section_network => 'Netwerk';
  @override
  String get download_detail_section_task => 'Taak';
  @override
  String get download_detail_seeds_label => 'Seeds';
  @override
  String get download_detail_leechers_label => 'Leechers';
  @override
  String get download_detail_connections_label => 'Verbindingen';
  @override
  String get download_detail_content_path_label => 'Inhoudspad';
  @override
  String get download_detail_time_active => 'Actieve tijd';
  @override
  String get download_detail_time_seeding => 'Seedtijd';
  @override
  String get download_detail_total_size_label => 'Totale grootte';
  @override
  String get download_detail_listen_port => 'Luisterpoort';
  @override
  String get download_detail_dht_nodes => 'DHT-knooppunten';
  @override
  String get download_detail_hash_label => 'Infohash';
  @override
  String get download_detail_port_mapping => 'Poortmapping';
  @override
  String get download_detail_session_rates => 'Sessiesnelheden';
  @override
  String get download_detail_pieces_label => 'Stukken';
  @override
  String get download_detail_priority_skip => 'Niet downloaden';
  @override
  String get download_detail_raw_state_label => 'Backendstatus';
  @override
  String get download_detail_remaining_label => 'Resterend';
  @override
  String get download_detail_save_path_label => 'Opslagpad';
  @override
  String get download_detail_priority_normal => 'Normaal';
  @override
  String get download_detail_priority_high => 'Hoog';
  @override
  String get download_detail_tracker_working => 'Werkend';
  @override
  String get download_detail_tracker_updating => 'Bijwerken';
  @override
  String get download_detail_tracker_not_contacted => 'Nog niet gecontacteerd';
  @override
  String get download_detail_tracker_not_working => 'Niet werkend';
  @override
  String get download_detail_tracker_disabled => 'Uitgeschakeld';
  @override
  String get download_detail_no_peers => 'Geen verbonden peers';
  @override
  String get download_detail_no_trackers => 'Geen trackers';
  @override
  String get video_filter_year => 'Jaar';
  @override
  String get video_filter_year_unknown => 'Onbekend jaar';
  @override
  String get video_filter_watch_status => 'Kijkstatus';
  @override
  String get video_filter_watch_status_unwatched => 'Onbekeken';
  @override
  String get video_filter_watch_status_watching => 'Aan het kijken';
  @override
  String get video_filter_watch_status_completed => 'Voltooid';
  @override
  String get video_hero_detail_view => 'Details';
  @override
  String video_hero_episodes_watched({required Object n}) =>
      '${n} afl. bekeken';
  @override
  String get video_recently_added_badge => 'NIEUW';
  @override
  String get video_air_season_winter => 'Winter';
  @override
  String get video_air_season_spring => 'Lente';
  @override
  String get video_air_season_summer => 'Zomer';
  @override
  String get video_air_season_autumn => 'Herfst';
  @override
  String get delete_scope_no_channel =>
      'Geen sync geconfigureerd — deze verwijdering betreft alleen dit apparaat';
  @override
  String get mihon_sources_title => 'Mangabronnen';
  @override
  String get mihon_extensions_title => 'Manga-extensies';
  @override
  String get mihon_store_add => 'Extensiewinkel toevoegen';
  @override
  String get mihon_store_url => 'Extensiewinkel-URL';
  @override
  String get mihon_store_empty =>
      'Nog geen extensiewinkels. Voeg een compatibele Mihon-winkel toe of importeer een lokale APK.';
  @override
  String get mihon_extension_import => 'Lokale APK importeren';
  @override
  String get mihon_extension_warning =>
      'Extensies van derden voeren code uit met Fushi-rechten. Installeer alleen extensies en ondertekenaars die je vertrouwt.';
  @override
  String get mihon_extension_install => 'Installeren';
  @override
  String get mihon_extension_update => 'Bijwerken';
  @override
  String get mihon_extension_uninstall => 'Verwijderen';
  @override
  String get mihon_extension_installed => 'Geïnstalleerd';
  @override
  String get mihon_extension_disabled => 'Uitgeschakeld';
  @override
  String get mihon_source_empty =>
      'Geen ingeschakelde mangabronnen. Installeer en schakel eerst een extensie in.';
  @override
  String get mihon_source_popular => 'Populair';
  @override
  String get mihon_source_latest => 'Nieuwste';
  @override
  String get mihon_source_search => 'Manga zoeken';
  @override
  String get mihon_source_preferences => 'Bronvoorkeuren';
  @override
  String get mihon_source_clear_data => 'Brongegevens wissen';
  @override
  String get mihon_source_clear_data_hint =>
      'Wist de voorkeuren en cookies van deze bron. Geïnstalleerde extensies worden bewaard.';
  @override
  String get mihon_signer_trust_title => 'Extensieondertekenaar vertrouwen?';
  @override
  String get mihon_signer_fingerprint => 'Ondertekenaar SHA-256';
  @override
  String get mihon_runtime_unavailable =>
      'Mihon-extensies zijn niet beschikbaar op dit platform.';
  @override
  String get mihon_extension_incompatible => 'Incompatibele extensie';
  @override
  String get mihon_store_refresh => 'Winkels vernieuwen';
  @override
  String get mihon_source_browse_mokuro => 'Ingebouwde Mokuro-catalogus';
  @override
  String get mihon_source_no_results => 'Geen manga gevonden.';
  @override
  String get mihon_chapters_title => 'Hoofdstukken';
  @override
  String get mihon_extension_language_filter => 'Taal';
  @override
  String get mihon_extension_language_all => 'Alle talen';
  @override
  String get mihon_filter_ignore => 'Negeren';
  @override
  String get mihon_filter_include => 'Opnemen';
  @override
  String get mihon_filter_exclude => 'Uitsluiten';
  @override
  String get mihon_filter_ascending => 'Oplopend';
  @override
  String get mihon_filter_descending => 'Aflopend';
  @override
  String get mihon_add_to_bookshelf => 'Aan mangaplank toevoegen';
  @override
  String get mihon_in_bookshelf => 'Op mangaplank';
  @override
  String scrape_all_confirm({required Object n}) =>
      'Alle ${n} bibliotheekitems matchen op titel. Alleen matches met hoog vertrouwen worden automatisch toegepast — video\'s worden beoordeeld op titel samen met jaar, type en andere signalen, terwijl boeken en spellen een unieke exacte titel vereisen. Omslagen die je zelf hebt gekozen worden nooit overschreven (lokale afbeeldingen die je instelde, items die je in het matchvenster koos, en posterbestanden in de map), en dubbelzinnige resultaten wachten op handmatige beoordeling.';
  @override
  String get collection_related_title => 'Gerelateerde werken';
  @override
  String get collection_relation_prequel => 'Prequel';
  @override
  String get collection_relation_sequel => 'Vervolg';
  @override
  String get collection_relation_side_story => 'Bijverhaal';
  @override
  String get collection_relation_movie => 'Film';
  @override
  String get collection_relation_spin_off => 'Spin-off';
  @override
  String get collection_relation_other => 'Gerelateerd';
  @override
  String get collection_relation_download => 'Downloaden';
  @override
  String get collection_relation_bind => 'Aan bestaande collectie koppelen';
  @override
  String get collection_episode_rename =>
      'Afleveringen hernoemen vanuit scrape';
  @override
  String get collection_episode_rename_title => 'Afleveringen hernoemen';
  @override
  String get collection_episode_rename_empty => 'Niets om te hernoemen';
  @override
  String get collection_episode_download => 'Deze aflevering downloaden';
  @override
  String get collection_episode_fill_missing =>
      'Ontbrekende afleveringen aanvullen';
  @override
  String get collection_episode_no_missing => 'Geen ontbrekende afleveringen';
  @override
  String get collection_split_by_season => 'Splitsen op seizoen';
  @override
  String get collection_split_keep_original =>
      'De oorspronkelijke collectie bewaren';
  @override
  String get collection_split_confirm => 'Splitsen';
  @override
  String collection_relation_bound({required Object name}) =>
      'Gekoppeld aan ${name}';
  @override
  String collection_episode_rename_apply({required Object n}) =>
      '${n} afleveringen hernoemen';
  @override
  String collection_split_done({required Object n}) =>
      'Gesplitst in ${n} collecties';
  @override
  String collection_episode_watched_at({required Object position}) =>
      'Bekeken tot ${position}';
  @override
  String collection_episode_rename_partial({
    required Object n,
    required Object m,
  }) => '${n} afleveringen hernoemd, ${m} mislukt';
  @override
  String get sync_err_browser_timeout =>
      'De browser heeft de autorisatie nooit geretourneerd. Probeer opnieuw en zorg dat je proxy 127.0.0.1 doorlaat.';
  @override
  String get manga_rescan_running => 'Geselecteerd kader herkennen...';
  @override
  String get manga_rescan_empty => 'Geen tekst herkend in dit kader.';
  @override
  String get stat_hourly_band_epub => 'Tekstboeken';
  @override
  String get stat_hourly_band_pdf => 'PDF';
  @override
  String get stat_hourly_band_manga => 'Manga';
  @override
  String get stat_hourly_band_unattributed => 'Niet-gesplitste geschiedenis';
  @override
  String get stat_hourly_unattributed_note =>
      'Uren geregistreerd voordat per-formaatregistratie bestond hebben geen type opgeslagen, dus ze kunnen niet worden gesplitst. Ze worden weergegeven als een gecombineerd totaal en niet aan een type toegewezen.';
  @override
  String get book_convert_to_manga_action => 'Omzetten naar manga';
  @override
  String get book_convert_to_book_action => 'Terugzetten naar boek';
  @override
  String get book_convert_running => 'Omzetten…';
  @override
  String get book_convert_done => 'Omzetting voltooid';
  @override
  String get book_convert_failed => 'Omzetting mislukt';
  @override
  String get book_convert_blocked_already => 'Dit boek is al in dat formaat.';
  @override
  String get book_convert_blocked_text_only =>
      'Dit is een tekstboek zonder paginaafbeeldingen. Alleen gescande afbeeldingsboeken kunnen manga worden.';
  @override
  String get book_convert_blocked_no_original =>
      'Deze manga is geïmporteerd vanuit afbeeldingen, dus er is geen origineel boek om naar terug te zetten.';
  @override
  String get book_convert_blocked_source_missing =>
      'De bronbestanden zijn verdwenen van de schijf.';
  @override
  String manga_online_retry_waiting({
    required Object attempt,
    required Object total,
  }) => 'Automatisch opnieuw proberen (${attempt}/${total})';
  @override
  String get manga_ocr_wizard_already_ocred =>
      'Dit deel heeft al OCR-gegevens op elke pagina. Opnieuw OCR uitvoeren zou deze overschrijven.';
  @override
  String get shortcut_scope_universal => 'Terug / Afsluiten';
  @override
  String get game_attach_and_capture => 'Koppelen en opnemen';
  @override
  String get remote_delete_failed =>
      'Kon het niet verwijderen op het gekoppelde apparaat';
  @override
  String get remote_delete_unsupported =>
      'Het gekoppelde apparaat draait een te oude versie om externe verwijdering te ondersteunen. Werk Fushi daar eerst bij.';
  @override
  String get anki_lapis_visual_blocks => 'Aangepaste gebieden';
  @override
  String get anki_lapis_visual_blocks_hint =>
      'Toon bestaande velden ergens anders op de kaart. Alleen weergave: er wordt geen Anki-veld toegevoegd of verwijderd.';
  @override
  String get anki_lapis_visual_block_add => 'Gebied toevoegen';
  @override
  String get anki_lapis_visual_block_delete => 'Gebied verwijderen';
  @override
  String anki_lapis_visual_block_name({required Object index}) =>
      'Gebied ${index}';
  @override
  String get anki_lapis_visual_block_anchor => 'Positie op de kaart';
  @override
  String get anki_lapis_visual_block_anchor_top => 'Boven aan de kaart';
  @override
  String get anki_lapis_visual_block_anchor_above_sentence => 'Onder het woord';
  @override
  String get anki_lapis_visual_block_anchor_above_definition => 'Onder de zin';
  @override
  String get anki_lapis_visual_block_anchor_below_definition =>
      'Onder de definities';
  @override
  String get anki_lapis_visual_block_anchor_bottom => 'Onder aan de kaart';
  @override
  String get anki_lapis_visual_block_fields => 'Velden hier getoond';
  @override
  String get anki_lapis_visual_block_no_fields =>
      'Nog geen velden geselecteerd';
  @override
  String get anki_lapis_visual_block_needs_note_type =>
      'Kies eerst een notetype om velden te kiezen.';
  @override
  String get anki_lapis_restore_factory =>
      'Lapis terugzetten naar fabrieksinstelling';
  @override
  String get anki_lapis_restore_factory_hint =>
      'Overschrijf het Lapis-notetype in Anki met de meegeleverde versie van Fushi en wis alle aanpassingen hier.';
  @override
  String get anki_lapis_restore_factory_confirm =>
      'Dit overschrijft de Lapis-stijl en kaartsjablonen in Anki met de meegeleverde versie van Fushi, en reset lettergrootte, aangepaste CSS en aangepaste gebieden. Er wordt eerst een back-up van de huidige staat gemaakt. Kaartgegevens worden niet gewijzigd.';
  @override
  String get anki_lapis_restore_factory_done =>
      'Lapis terugzetten naar fabrieksinstelling voltooid';
  @override
  String anki_lapis_restore_factory_failed({required Object error}) =>
      'Terugzetten mislukt: ${error}';
  @override
  String get anki_lapis_visual_select_field_hint =>
      'Klik op een onderdeel van het voorbeeld, of kies er hieronder een. Wat je kiest, bepaalt wat de onderstaande bediening bewerkt.';
  @override
  String get anki_lapis_visual_editing_now => 'Bewerken';
  @override
  String get mihon_extension_preview => 'Voorbeeld';
  @override
  String get mihon_extension_preview_warning =>
      'Voorbeeldweergave voert de code van deze extensie uit voordat deze is geïnstalleerd. Er wordt niets aan je bibliotheek toegevoegd tot je kiest om te installeren.';
  @override
  String get mihon_extension_preview_discard => 'Verwerpen';
  @override
  String get mihon_extension_preview_source_select =>
      'Kies een bron voor voorbeeld';
  @override
  String get mihon_extension_sources_included => 'Opgenomen bronnen';
  @override
  String get mihon_extension_preview_read_only =>
      'Voorbeeld is alleen-lezen. Installeer de extensie om te openen en te lezen.';
  @override
  String get selection_copy_empty => 'Geen tekst geselecteerd.';
  @override
  String get video_library_empty_source_hint =>
      'Voeg een videomap toe vanuit Bronnen om je bibliotheek op te bouwen';
  @override
  String get video_source_scrape_action => 'Deze bron scrapen';
  @override
  String get video_source_scrape_settings => 'Bron-scrapeinstellingen';
  @override
  String get video_source_scrape_auto_after_scan => 'Scrapen na scannen';
  @override
  String get video_source_scrape_auto_after_scan_hint =>
      'Voer metadata-scraping automatisch uit nadat deze bron is gescand';
  @override
  String get video_source_scrape_write_nfo => 'NFO-bestanden schrijven';
  @override
  String get video_source_scrape_write_images =>
      'Afbeeldingsbestanden schrijven';
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
      'Laatste scrape (${status}): ${succeeded} geslaagd, ${pending} wachtend, ${failed} mislukt';
  @override
  String get video_source_scrape_phase_planning => 'Plannen';
  @override
  String get video_source_scrape_phase_recognizing => 'Matchen';
  @override
  String get video_source_scrape_phase_fetching => 'Metadata ophalen';
  @override
  String get video_source_scrape_phase_applying => 'Metadata opslaan';
  @override
  String get video_source_scrape_phase_writing_sidecars =>
      'Bijbestanden schrijven';
  @override
  String get video_source_scrape_status_interrupted => 'Onderbroken';
  @override
  String get video_source_scrape_locale => 'Metadatataal';
  @override
  String get video_source_scrape_locale_hint =>
      'Voorkeurstaal voor titels, samenvattingen en afbeeldingen';
  @override
  String get video_source_scrape_confirmation_title =>
      'Metadatamatch bevestigen';
  @override
  String get video_source_scrape_confirmation_hint =>
      'Meerdere exacte matches gevonden. Kies het juiste werk om de providerbinding op te slaan.';
  @override
  String get video_source_scrape_confirmation_skip => 'Dit werk overslaan';
  @override
  String get video_source_scrape_nfo_policy => 'NFO-schrijfbeleid';
  @override
  String get video_source_scrape_image_policy => 'Afbeelding-schrijfbeleid';
  @override
  String get video_source_scrape_policy_skip => 'Niet schrijven';
  @override
  String get video_source_scrape_policy_missing_only =>
      'Alleen wanneer ontbrekend';
  @override
  String get video_source_scrape_policy_overwrite =>
      'Fushi-bestanden bijwerken';
  @override
  String get video_source_scrape_external_overwrite =>
      'Beschermde bijbestanden overschrijven toestaan';
  @override
  String get video_source_scrape_external_overwrite_hint =>
      'Bestanden van derden of door de gebruiker gewijzigd blijven beschermd tot je elke handmatige scrape-batch opnieuw bevestigt.';
  @override
  String get video_source_scrape_external_overwrite_confirm_title =>
      'Beschermde bijbestanden overschrijven?';
  @override
  String get video_source_scrape_external_overwrite_confirm_body =>
      'Deze batch kan NFO/afbeeldingen van derden of Fushi-bestanden die je bewerkte vervangen. Mediabestanden worden niet gewijzigd. Doorgaan?';
  @override
  String get video_source_scrape_tasks_open => 'Achtergrondtaken';
  @override
  String get video_source_scrape_background_started =>
      'Scraping draait op de achtergrond';
  @override
  String get video_source_scrape_tasks_current => 'Huidige taak';
  @override
  String get video_source_scrape_tasks_history => 'Recente taken';
  @override
  String get video_source_scrape_tasks_empty => 'Nog geen scrapetaken';
  @override
  String get video_source_scrape_waiting_confirmation =>
      'Wacht op je bevestiging';
  @override
  String get video_source_scrape_phase_scanning => 'Bron scannen';
  @override
  String get video_library_all_videos => 'Alle video\'s';
  @override
  String get video_work_voice_roles => 'Stemacteurs en personages';
  @override
  String get video_work_cast_crew => 'Cast en crew';
  @override
  String get video_work_trailers => 'Trailers';
  @override
  String get video_work_extras => 'Extra\'s';
  @override
  String get video_work_details => 'Details';
  @override
  String get video_work_external_ids => 'Externe ID\'s';
  @override
  String get video_work_metadata_pending =>
      'Gedetailleerde metadata is nog niet gescraped. Probeer deze bron opnieuw vanuit Bronnen en heropen dan het werk.';
  @override
  String get video_work_genres => 'Genres';
  @override
  String get video_work_keywords => 'Trefwoorden';
  @override
  String get video_work_studios => 'Studio\'s';
  @override
  String get video_work_countries => 'Landen';
  @override
  String get video_work_content_rating => 'Inhoudsbeoordeling';
  @override
  String get video_all_videos_list_view => 'Lijstweergave';
  @override
  String get video_all_videos_grid_view => 'Rasterweergave';
  @override
  String video_home_continue_episode_number({required Object n}) =>
      'Aflevering ${n} aan het bekijken';
  @override
  String video_home_next_episode_number({required Object n}) =>
      'Volgende · Aflevering ${n}';
  @override
  String video_home_recent_episode_number({required Object n}) =>
      'Recent toegevoegd · Aflevering ${n}';
  @override
  String video_home_remaining_minutes({required Object minutes}) =>
      '${minutes} min resterend';
  @override
  String get video_subtitle_replay => 'Deze regel opnieuw afspelen';
  @override
  String get manga_ocr_done => 'OCR voltooid';
  @override
  String get settings_destination_manga_summary =>
      'Lezer, OCR en online catalogus';
  @override
  String get manga_page_animation => 'Paginaomslag-animatie';
  @override
  String get manga_page_animation_none => 'Geen';
  @override
  String get manga_page_animation_slide => 'Schuiven';
  @override
  String get manga_page_animation_fade => 'Vervagen';
  @override
  String get manga_default_zoom => 'Standaardzoom';
  @override
  String get manga_zoom_sensitivity => 'Zoomgevoeligheid';
  @override
  String get manga_volume_key_paging => 'Volumeknoppen bladeren pagina\'s';
  @override
  String get manga_volume_key_paging_subtitle =>
      'Gebruik volume omhoog en omlaag om pagina\'s te bladeren in de mangalezer';
  @override
  String get manga_tap_zone_paging => 'Tik op randen om pagina\'s te bladeren';
  @override
  String get manga_tap_zone_paging_subtitle =>
      'Tik op de linker- of rechterrand van de pagina om te bladeren';
  @override
  String get manga_section_viewing => 'Weergave en paginabladeren';
  @override
  String get game_capture_setup_title => 'Opname-instelling voltooien';
  @override
  String get game_capture_setup_hint =>
      'Kies eerst de dialoogthread. Fushi kan pas audio aan regels koppelen vanuit de geselecteerde thread.';
  @override
  String get game_audio_requires_thread =>
      'De audio-opnamebron is mogelijk gereed, maar zinsaudio bestaat pas wanneer een thread is geselecteerd en een regel is ontvangen.';
  @override
  String get game_session_waiting_thread => 'Wachten op een dialoogthread';
  @override
  String get anki_connect_use_on_mobile => 'Use AnkiConnect on Android';
  @override
  String get anki_connect_use_on_mobile_hint =>
      'Gebruik alleen op een vertrouwd netwerk. AnkiConnect gebruikt onversleuteld HTTP; configureer een overeenkomende API-sleutel en vernieuw dan dekken en notetypes na het wisselen.';
  @override
  String get anki_connect_api_key_hint =>
      'Vereist voor externe AnkiConnect; moet overeenkomen met de sleutel in de add-on';
  @override
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before enabling the Android backend.';
  @override
  String anki_connect_backend_switch_failed({required Object error}) =>
      'Kon niet van Anki-backend wisselen: ${error}';
  @override
  String get migration_settings_entry => 'Migreren naar Fushi';
  @override
  String get migration_settings_entry_subtitle =>
      'Alle gegevens verplaatsen naar de nieuwe Fushi-app';
  @override
  String get migration_intro =>
      'Fushi is de nieuwe naam van deze app. Migratie exporteert al je gegevens in batches naar een overdrachtsmap, waarna Fushi deze importeert en verifieert. Je gegevens hier blijven onaangeroerd tot je deze app verwijdert.';
  @override
  String get migration_target_missing =>
      'Fushi is nog niet geïnstalleerd. Installeer eerst Fushi en kom dan hier terug.';
  @override
  String get migration_download_fushi => 'Fushi ophalen';
  @override
  String get migration_start => 'Migratie starten';
  @override
  String get migration_open_fushi => 'Fushi openen';
  @override
  String get migration_include_local_audio =>
      'Ook lokale uitspraakaudio exporteren (kan groot zijn)';
  @override
  String migration_batch_running({required Object batch}) =>
      '${batch} exporteren…';
  @override
  String migration_batch_done({required Object batch}) =>
      '${batch} geëxporteerd';
  @override
  String get migration_export_done =>
      'Export voltooid. Open Fushi om te importeren en te verifiëren.';
  @override
  String migration_export_failed({required Object error}) =>
      'Export mislukt: ${error}';
  @override
  String get migration_readonly_note =>
      'Je gegevens zijn geëxporteerd naar Fushi. Deze app is nu alleen-lezen: gebruik Fushi om te lezen en kaarten te delven. Je kunt altijd opnieuw exporteren als Fushi ontbrekende gegevens meldt.';
  @override
  String get migration_reexport => 'Opnieuw exporteren';
  @override
  String get migration_batch_core_label =>
      'Instellingen, voortgang & statistieken';
  @override
  String get migration_import_entry => 'Importeren vanuit Hibiki';
  @override
  String get migration_import_entry_subtitle =>
      'Gegevens importeren die door de oude Hibiki-app zijn geëxporteerd';
  @override
  String get migration_import_detected =>
      'Hibiki-migratiegegevens gedetecteerd. Nu importeren?';
  @override
  String get migration_import_start => 'Import starten';
  @override
  String migration_import_running({required Object batch}) =>
      '${batch} importeren…';
  @override
  String migration_import_verify_failed({
    required Object batch,
    required Object detail,
  }) => '${batch} verificatie mislukt en bewaard voor herexport: ${detail}';
  @override
  String migration_import_counts_failed({required Object detail}) =>
      'Geïmporteerde gegevens zijn incompleet: ${detail}. Exporteer de ontbrekende onderdelen opnieuw vanuit Hibiki en importeer opnieuw.';
  @override
  String get migration_import_success => 'Import voltooid en geverifieerd.';
  @override
  String get migration_import_nothing =>
      'Geen migratiegegevens gevonden in de overdrachtsmap.';
  @override
  String get migration_uninstall_prompt =>
      'Migratie voltooid. De oude Hibiki-app verwijderen?';
  @override
  String get migration_uninstall_button => 'Hibiki verwijderen';
  @override
  String get migration_uninstall_still_installed =>
      'Hibiki is nog geïnstalleerd. Je kunt het altijd verwijderen.';
  @override
  String get migration_import_permission_title => 'Opslagtoestemming vereist';
  @override
  String get migration_import_permission_body =>
      'De overdrachtsmap is aangemaakt door de oude app. Zonder "Alle bestanden"-toegang kan Fushi deze niet lezen — de gegevens zijn intact, alleen niet te openen.';
  @override
  String get migration_import_permission_grant => 'Toestemming verlenen';
  @override
  String migration_import_verifying({
    required Object batch,
    required Object done,
    required Object total,
  }) => '${batch} verifiëren (${done}/${total})';
  @override
  String get migration_import_verifying_hint =>
      'De archieven worden gecontroleerd. Grote bibliotheken kunnen enkele minuten duren.';
  @override
  String get game_line_copy_tooltip => 'Zin kopiëren';
  @override
  String get game_japanese_locale_auto => 'Automatisch';
  @override
  String get game_japanese_locale_on => 'Altijd aan';
  @override
  String get game_japanese_locale_off => 'Uit';
  @override
  String get game_japanese_locale => 'Japanse landinstellingen';
  @override
  String get game_japanese_locale_hint =>
      'Chinese/Engelse gepatchte builds moeten dit uitschakelen, anders crasht het spel bij het starten';
  @override
  String get video_scrape_diagnostic_export => 'Scrapediagnostiek exporteren';
  @override
  String get video_scrape_diagnostic_confirm_title =>
      'Scrapediagnostiek exporteren?';
  @override
  String get video_scrape_diagnostic_saved => 'Diagnostiekpakket opgeslagen';
  @override
  String video_scrape_diagnostic_failed({required Object reason}) =>
      'Kon diagnostiekpakket niet exporteren: ${reason}';
  @override
  String get video_scrape_diagnostic_share_subject =>
      'Fushi video-scrapediagnostiek';
  @override
  String get video_scrape_diagnostic_confirm_body =>
      'Het pakket bevat relatieve bestands- en mapnamen, scrapesamenvattingen en originele NFO-inhoud. Het bevat geen video\'s, ondertitels, afbeeldingen, absolute paden, appconfiguratie of appinloggegevens. Originele NFO-bestanden worden ongewijzigd bewaard en kunnen persoonlijke informatie of geheimen bevatten; controleer het pakket voordat je het publiekelijk deelt.';
  @override
  String get video_discovery_search_hint => 'Films, series en anime zoeken';
  @override
  String get video_discovery_hot => 'Nu populair';
  @override
  String get video_discovery_seasonal_anime => 'Seizoensanime';
  @override
  String get video_discovery_all_works => 'Alle titels';
  @override
  String get video_discovery_search_results => 'Zoekresultaten';
  @override
  String get video_discovery_provider_warning =>
      'Sommige providers zijn niet beschikbaar. Beschikbare resultaten worden getoond.';
  @override
  String get video_discovery_load_failed =>
      'Kon de ontdekkingsresultaten niet laden.';
  @override
  String get video_discovery_empty => 'Geen overeenkomende titels.';
  @override
  String get video_discovery_resource_search => 'Resources zoeken';
  @override
  String get video_discovery_subtitle_search => 'Ondertitels zoeken';
  @override
  String get video_discovery_subscribe => 'Abonneren';
  @override
  String get video_discovery_subscription_manage => 'Abonnement beheren';
  @override
  String get video_discovery_pipeline_idle =>
      'Niet gedownload → Downloaden → Organiseren → Ondertitels → Scrapen → Bibliotheek';
  @override
  String get video_discovery_details_load_failed =>
      'Kon titeldetails niet laden.';
  @override
  String get video_discovery_sort_popularity => 'Populariteit';
  @override
  String get video_discovery_sort_rating => 'Beoordeling';
  @override
  String get video_discovery_sort_release => 'Releasedatum';
  @override
  String get video_discovery_in_library => 'In bibliotheek';
  @override
  String get video_discovery_play => 'Afspelen';
  @override
  String get download_resources_tab => 'Resources';
  @override
  String get video_external_settings_section =>
      'Externe resource- en ondertitelproviders';
  @override
  String get video_torznab_settings_title => 'Torznab-indexers';
  @override
  String get video_torznab_add => 'Indexer toevoegen';
  @override
  String get video_torznab_name => 'Naam';
  @override
  String get video_torznab_endpoint => 'Eindpunt';
  @override
  String get video_torznab_endpoint_hint =>
      'HTTPS is vereist, behalve voor loopback-adressen.';
  @override
  String get video_torznab_api_key => 'API-sleutel';
  @override
  String get video_torznab_priority => 'Prioriteit';
  @override
  String get video_torznab_categories => 'Categorieën';
  @override
  String get video_torznab_categories_hint =>
      'Kommagescheiden numerieke categorie-ID\'s';
  @override
  String get video_external_enabled => 'Ingeschakeld';
  @override
  String get video_external_insecure_http => 'Onveilig HTTP toestaan';
  @override
  String get video_external_insecure_http_hint =>
      'Gebruik alleen voor een vertrouwd lokaal netwerkeindpunt.';
  @override
  String get video_external_endpoint_invalid =>
      'Voer een geldig eindpunt in zonder inloggegevens, queryparameters of fragmenten.';
  @override
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  @override
  String get video_opensubtitles_user_agent => 'User-Agent';
  @override
  String get video_opensubtitles_languages_hint =>
      'Kommagescheiden taalcodes, bijvoorbeeld zh-CN,en,ja';
  @override
  String get video_download_path_mappings_title => 'qBittorrent padmappings';
  @override
  String get video_download_path_mappings_hint =>
      'Wijs elke externe qBittorrent-root toe aan een lokaal toegankelijke map.';
  @override
  String get video_download_path_mapping_add => 'Padmapping toevoegen';
  @override
  String get video_download_backend_profile_id => 'Backend-profiel-ID';
  @override
  String get video_download_remote_root => 'Externe root';
  @override
  String get video_download_local_root => 'Lokale root';
  @override
  String get video_download_target_source_title =>
      'Standaard beheerde videobron';
  @override
  String get video_download_target_source_hint =>
      'Nieuwe downloads worden in deze lokale videobron georganiseerd.';
  @override
  String get video_download_target_source_none => 'Kies een lokale videobron';
  @override
  String get video_external_remove => 'Verwijderen';
  @override
  String get video_external_username_optional => 'Gebruikersnaam (optioneel)';
  @override
  String get video_external_password_optional => 'Wachtwoord (optioneel)';
  @override
  String get video_external_api_key => 'API-sleutel';
  @override
  String get video_external_save_error =>
      'De configuratie kon niet worden opgeslagen. Controleer de gemarkeerde velden.';
  @override
  String get video_external_categories_invalid =>
      'Categorieën moeten kommagescheiden numerieke ID\'s zijn.';
  @override
  String get video_download_path_mapping_invalid =>
      'Voer een profiel-ID, externe root en absoluut lokaal rootpad in.';
  @override
  String get video_opensubtitles_endpoint => 'API-eindpunt';
  @override
  String get video_download_target_source_empty =>
      'Geen lokaal toegankelijke videobron beschikbaar. Voeg er eerst een toe op het tabblad Bronnen.';
  @override
  String get video_setting_drag_seek_sensitivity =>
      'Sleep-naar-zoek gevoeligheid';
  @override
  String get video_setting_drag_seek_sensitivity_hint =>
      'Hoe ver één volledige veeg zoekt op een touchscreen: Laag ca. 45s, Gemiddeld ca. 90s, Hoog ca. 180s. Onafhankelijk van de totale videolengte. Alleen touchsleep; muis- en toetsenbordzoeken worden niet beïnvloed.';
  @override
  String get video_setting_drag_seek_sensitivity_low => 'Laag';
  @override
  String get video_setting_drag_seek_sensitivity_medium => 'Gemiddeld';
  @override
  String get video_setting_drag_seek_sensitivity_high => 'Hoog';
  @override
  String video_subtitle_read_failed({required Object label}) =>
      'Kon dit ondertitelbestand niet lezen (beschadigd of leeg): ${label}';
  @override
  String dict_downloading_size({
    required Object name,
    required Object done,
    required Object total,
  }) => '${name} downloaden (${done} / ${total})';
  @override
  String get video_subtitle_attach_book_missing =>
      'Deze video staat niet in je bibliotheek, dus de ondertitel is niet bijgevoegd';
  @override
  String get dict_download_hide => 'Op achtergrond uitvoeren';
  @override
  String get dict_download_progress_show => 'Voortgang bekijken';
  @override
  String get dict_download_cancelled => 'Download geannuleerd.';
  @override
  String get dict_download_import_uncancellable =>
      'Importeren kan niet worden onderbroken';
  @override
  String get dict_download_busy => 'Er draait al een woordenboekdownload.';
  @override
  String get gal_hook_ingame_lookup => 'In-game woordenboek opzoeken';
  @override
  String get gal_hook_ingame_lookup_hint =>
      'Toon de woordenboekkaart in het spelvenster zelf (KiriKiri-engine, alleen Windows)';
  @override
  String download_subscription_start_episode({required Object episode}) =>
      '从第 ${episode} 集开始';
  @override
  String get drag_drop_failed =>
      'Kon de gesleepte bestanden niet verwerken. Probeer het opnieuw.';
  @override
  String get tag_add_failed =>
      'Kon de tag niet toevoegen. Probeer het opnieuw.';
  @override
  String get tag_reorder_failed =>
      'Kon de nieuwe tagvolgorde niet opslaan. Probeer het opnieuw.';
  @override
  String get download_task_error_summary_source_missing =>
      'Beheerde videobron ontbreekt of is niet toegankelijk';
  @override
  String get download_task_error_summary_backend_unconfirmed =>
      'Torrent kon niet worden bevestigd via hash, titel en categorie';
  @override
  String get download_task_error_summary_subtitle =>
      'Ondertitels zijn niet beschikbaar of konden niet worden geïnstalleerd';
  @override
  String get download_task_error_summary_backend_unavailable =>
      'Download-backend is niet beschikbaar of komt niet meer overeen';
  @override
  String get download_task_error_summary_legacy =>
      'Legacy-import vereist handmatige aandacht';
  @override
  String get download_task_error_summary_torrent_info =>
      'Torrent-identiteit ontbreekt of is niet verifieerbaar';
  @override
  String get download_task_error_summary_generic =>
      'De taak is op een fout gestuit';
  @override
  String get download_task_error_view_detail => 'Details bekijken';
  @override
  String get download_task_error_detail_title => 'Foutdetails';
  @override
  String get download_task_error_copied => 'Foutdetails gekopieerd';
  @override
  String get download_task_lifecycle_active => 'Bezig';
  @override
  String get download_task_lifecycle_needs_attention => 'Aandacht nodig';
  @override
  String get download_task_location_missing =>
      'De taakbestandslocatie is niet beschikbaar.';
  @override
  String get download_task_location_open_failed =>
      'Kon de bestandslocatie niet openen.';
  @override
  String get download_task_open_location => 'Tonen in map';
  @override
  String get download_task_lifecycle_completed => 'Voltooid';
  @override
  String get download_task_lifecycle_failed => 'Mislukt';
  @override
  String get download_task_lifecycle_cancelled => 'Geannuleerd';
  @override
  String get download_task_stage_enqueue => 'In wachtrij plaatsen';
  @override
  String get download_task_stage_download => 'Downloaden';
  @override
  String get download_task_stage_organize => 'Organiseren';
  @override
  String get download_task_stage_subtitle => 'Ondertitels';
  @override
  String get download_task_stage_import => 'Importeren';
  @override
  String get download_task_stage_scrape => 'Scrapen';
  @override
  String get video_discovery_manual_identity_hint =>
      'Voer hierboven de titel, extern ID en jaar in om zoeken in te schakelen';
  @override
  String get collection_split_move_to => 'Verplaatsen naar';
  @override
  String get collection_split_new_group => 'Nieuwe groep';
  @override
  String collection_split_selected({required Object n}) => '${n} geselecteerd';
  @override
  String get sync_pair_rate_limited =>
      'Te veel pogingen. Wacht een paar minuten en probeer opnieuw.';
  @override
  String get sync_pair_tls_failed =>
      'Certificaatcontrole mislukt. Het certificaat van de peer komt niet overeen met het vastgezette certificaat.';
  @override
  String get sync_pair_timeout => 'De peer heeft niet op tijd gereageerd.';
  @override
  String get sync_pair_expired =>
      'Koppeling verlopen. Begin de koppeling opnieuw vanaf dit apparaat.';
  @override
  String get sync_pair_upgrade_required =>
      'Het andere apparaat draait een oudere versie die niet veilig kan koppelen vanuit dit netwerk. Werk het bij en koppel opnieuw.';
  @override
  String get sync_pair_fingerprint_changed_title => 'Certificaat gewijzigd';
  @override
  String get sync_pair_fingerprint_stored_label => 'Eerder vastgezet';
  @override
  String get sync_pair_fingerprint_new_label => 'Nu gezien';
  @override
  String get sync_pair_fingerprint_retrust => 'Wissen en opnieuw vertrouwen';
  @override
  String get sync_pair_fingerprint_changed_body =>
      'Dit adres was eerder vastgezet op een ander certificaat. Ga alleen verder als je weet dat de peer opnieuw is geïnstalleerd of gereset — anders kan iemand de verbinding onderscheppen.';
  @override
  String get interconnect_upload_section_footer =>
      'Kies wat dit apparaat uploadt naar de verbonden peer. Onafhankelijk van de cloud-back-upschakelaars en standaard uitgeschakeld. Deze schakelaars gelden alleen wanneer Interconnect inschakelen aan staat: interconnect uitschakelen stopt elke upload hier.';
  @override
  String get remote_delete_audiobook_partial =>
      'Boek verwijderd, maar het luisterboek kon niet worden verwijderd op het gekoppelde apparaat';
  @override
  String get download_detail_task_queued =>
      'In wachtrij: wacht tot andere downloads een slot vrijmaken. Deze taak is nog niet aan de downloader overgedragen, dus er zijn geen live peer- of trackergegevens.';
  @override
  String video_subscription_group_release_count({required Object count}) =>
      '${count} releases';
  @override
  String get download_task_priority => 'Wachtrijprioriteit';
  @override
  String get download_task_priority_high => 'Hoog';
  @override
  String get download_task_priority_normal => 'Normaal';
  @override
  String get download_task_priority_low => 'Laag';
  @override
  String get library_view_import => 'Importeren';
  @override
  String get quick_import_title => 'Snel importeren';
  @override
  String get media_source_section_title => 'Bibliotheekbronnen';
  @override
  String get media_import_folder => 'Map importeren';
  @override
  String get media_import_folder_as_source => 'Als bibliotheekbron toevoegen';
  @override
  String get book_import_folder_as_source_hint =>
      'Blijf deze map scannen op nieuwe boeken';
  @override
  String get media_import_folder_once => 'Eenmalig importeren';
  @override
  String get library_empty_go_import => 'Naar importeren';
  @override
  String get game_import_drop_hint =>
      'Je kunt ook .exe-bestanden naar de spelbibliotheek slepen';
  @override
  String get library_view_sources => 'Bronnen';
  @override
  String get video_setting_secondary_av_delay =>
      'Synchronisatie secundaire ondertitel';
  @override
  String get video_setting_secondary_av_delay_hint =>
      'Pas de offset van de secundaire ondertitel onafhankelijk aan. Volgt de primaire offset tot deze hier wordt ingesteld.';
  @override
  String get video_setting_secondary_delay_follow => 'Primaire volgen';
  @override
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      'Synchronisatie secundaire ondertitel: ${ms} ms';
  @override
  String get video_subtitle_secondary_delay_follow_osd =>
      'Synchronisatie secundaire ondertitel: volgt primaire';
  @override
  String get video_setting_subtitle_anchor => 'Anker hoofdondertitel';
  @override
  String get video_subtitle_anchor_bottom => 'Onder';
  @override
  String get video_subtitle_anchor_top => 'Boven';
  @override
  String get video_setting_subtitle_drag_adjust =>
      'Sleep om positie aan te passen';
  @override
  String get video_subtitle_drag_adjust_hint =>
      'Sleep een ondertitel omhoog of omlaag om deze te herpositioneren';
  @override
  String get anki_connect_mobile_disabled_key_cleared =>
      'AnkiConnect vereist op mobiel een API-sleutel, dus het wissen ervan heeft de schakelaar weer uitgeschakeld. Anki gebruikt nu weer de ingebouwde backend.';
  @override
  String manga_import_batch_hint({required Object n}) =>
      'Deze map bevat ${n} deelbestanden; elk wordt als eigen boek geïmporteerd, vernoemd naar het bestand.';
  @override
  String manga_import_batch_done({
    required Object imported,
    required Object skipped,
    required Object failed,
  }) => '${imported} geïmporteerd, ${skipped} overgeslagen, ${failed} mislukt.';
  @override
  String get srt_book_reimport => 'Opnieuw importeren';
  @override
  String get srt_book_reimport_subtitle_hint =>
      'Het vervangen van de ondertitel herbouwt de boektekst vanuit de nieuwe cues.';
  @override
  String get srt_book_reimport_no_cues =>
      'Geen ondertitelregels gevonden in dat bestand';
  @override
  String get srt_book_reimport_body_rebuilt =>
      'Boektekst herbouwd — heropen het boek om te lezen';
  @override
  String get video_setting_torrent_backend_embedded => 'Ingebouwde engine';
  @override
  String get download_backend_unsupported_note =>
      'De ingebouwde engine is niet beschikbaar op dit platform. Downloads gebruiken externe qBittorrent.';
  @override
  String get aidoku_runtime_unavailable =>
      'Aidoku-extensies zijn momenteel alleen beschikbaar op macOS.';
  @override
  String get aidoku_extensions_title => 'Aidoku-extensies';
  @override
  String get aidoku_extension_empty => 'Geen Aidoku-extensies geïnstalleerd.';
  @override
  String get aidoku_extension_remove => 'Aidoku-extensie verwijderen';
  @override
  String get aidoku_extension_warning =>
      'Aidoku-extensies voeren WebAssembly-code van derden uit met netwerktoegang. Ga alleen verder met bronnen die je vertrouwt.';
  @override
  String get aidoku_webview_unsupported =>
      'Deze bron vereist Aidoku WebView-API\'s die nog niet worden ondersteund.';
  @override
  String get aidoku_extension_imported => 'Aidoku-extensie geïmporteerd';
  @override
  String get aidoku_extension_import => 'Aidoku-extensie importeren (.aix)';
  @override
  String get aidoku_extension_confirm_title => 'Aidoku-extensie installeren?';
  @override
  String get aidoku_extension_version => 'Versie';
  @override
  String get aidoku_repository_url => 'Repository-URL';
  @override
  String get aidoku_repository_sources => 'Repositorybronnen';
  @override
  String get aidoku_repository_identity_mismatch =>
      'Het gedownloade pakket komt niet overeen met de repository-index.';
  @override
  String get aidoku_repository_installed => 'Geïnstalleerd';
  @override
  String get aidoku_repository_search => 'Repositorybronnen zoeken';
  @override
  String get aidoku_repository_install => 'Installeren';
  @override
  String get aidoku_repository_update => 'Bijwerken';
  @override
  String get aidoku_repository_add => 'Aidoku-repository toevoegen';
  @override
  String get aidoku_repository_added => 'Aidoku-repository toegevoegd';
  @override
  String get aidoku_repository_browse => 'Repository bladeren';
  @override
  String get aidoku_repository_hint =>
      'Plak een Aidoku-repository startpagina of index.min.json-URL. De community-repository is standaard ingevuld.';
  @override
  String get aidoku_repository_remove => 'Repository verwijderen';
  @override
  String get aidoku_repository_empty => 'Geen Aidoku-repositories toegevoegd.';
  @override
  String get dict_language_tooltip => 'Inhoudstaal';
  @override
  String get dict_language_title => 'Woordenboek-inhoudstaal';
  @override
  String get dict_language_description =>
      'Bepaalt welk lettertype de tekst van dit woordenboek weergeeft. Automatisch gebruikt de taal die het woordenboek declareert.';
  @override
  String get dict_language_auto => 'Automatisch';
  @override
  String get book_language_action => 'Inhoudstaal';
  @override
  String get book_language_description =>
      'Bepaalt welk lettertype de tekst van dit boek weergeeft. Automatisch gebruikt de taal die in de EPUB is gedeclareerd.';
  @override
  String get local_audio_reference_unavailable =>
      'Kan het originele bestand niet refereren zonder volledige bestandstoegang; er is in plaats daarvan een kopie geïmporteerd.';
  @override
  String get video_collection_scrape => 'Info & omslag scrapen';
  @override
  String get update_testflight_open => 'TestFlight openen';
  @override
  String get update_app_store_open => 'App Store openen';
  @override
  String get update_release_page_open => 'Releasepagina';
  @override
  String update_install_gal_hook_holder({
    required Object pid,
    required Object path,
  }) =>
      'Galgame-opnamecomponent in gebruik: PID ${pid} - ${path} (dit is het spel dat je speelt, of de opnamehost). Sluit het spel en werk dan opnieuw bij.';
  @override
  String get game_hook_reason_protocol_mismatch =>
      'De opnamecomponent komt niet overeen met deze Fushi-build. Het wordt meegeleverd in Fushi, dus er hoeft niets apart te worden geïnstalleerd. Sluit eerst het spel volledig en start het opnieuw: het spelproces kan de component nog geladen hebben uit een eerdere sessie. Als het nog steeds niet overeenkomt, zijn de componentbestanden op de schijf ouder dan Fushi, omdat de laatste Fushi-update ze niet kon vervangen terwijl een spel draaide. Sluit elk spel en voer het Fushi-installatieprogramma opnieuw uit.';
  @override
  String get video_mining_still_format => 'Videokaart-schermafbeeldingformaat';
  @override
  String get video_mining_still_format_hint =>
      'Codering wanneer de kaartafbeelding een stilstaande schermafbeelding is. JPG is veel kleiner; PNG is verliesvrij maar meerdere malen groter. Geanimeerde omslagen worden niet beïnvloed — zij volgen de animatieformaatinstelling.';
  @override
  String get mining_still_format_jpg => 'JPG (kleiner)';
  @override
  String get mining_still_format_png => 'PNG (verliesvrij)';
  @override
  String get gal_mining_still_format => 'Gamekaart-schermafbeeldingformaat';
  @override
  String get gal_mining_still_format_hint =>
      'Dezelfde formaten als videokaarten, apart opgeslagen. Spelvensteropnames komen als PNG binnen: PNG behouden is verliesvrij maar meerdere malen groter, terwijl JPG overeenkomt met hoe deze schermafbeeldingen voorheen werden gecomprimeerd.';
  @override
  String get manga_source_cloudflare_blocked =>
      'Deze bron is beschermd door Cloudflare en kan nog niet worden bereikt door de ingebouwde lezer.';
  @override
  String get manga_global_search_title => 'Alle bronnen doorzoeken';
  @override
  String get manga_global_search_hint => 'Doorzoek elke ingeschakelde bron';
  @override
  String get manga_global_search_prompt =>
      'Typ een titel om elke ingeschakelde mangabron tegelijk te doorzoeken.';
  @override
  String get anki_connect_addon_install => 'AnkiConnect installeren';
  @override
  String get anki_connect_addon_install_hint =>
      'Downloadt AnkiConnect van AnkiWeb en overhandigt het aan de draaiende Anki. Anki zal je vragen om te bevestigen en dan een herstart adviseren.';
  @override
  String get anki_connect_addon_handed =>
      'AnkiConnect aan Anki overhandigd. Bevestig het verzoek in Anki en herstart Anki dan zoals geadviseerd.';
  @override
  String get anki_connect_addon_anki_not_running =>
      'Geen draaiende Anki gevonden. Start eerst Anki desktop en probeer dan opnieuw.';
  @override
  String anki_connect_addon_download_failed({required Object error}) =>
      'Kon AnkiConnect niet downloaden van AnkiWeb: ${error}';
  @override
  String get anki_connect_addon_invalid =>
      'AnkiWeb gaf iets terug dat geen bruikbaar add-onpakket is.';
  @override
  String anki_connect_addon_launch_failed({required Object error}) =>
      'Kon de add-on niet aan Anki overhandigen: ${error}';
  @override
  String get settings_content_language_title => 'Standaard inhoudstaal';
  @override
  String get settings_content_language_unset => 'Niet ingesteld';
  @override
  String get settings_content_language_description =>
      'Terugvaltaal voor inhoud die er geen declareert. Per-boek, per-video, per-spel en per-woordenboek instellingen hebben voorrang.';
  @override
  String get manga_ocr_lens_language_label => 'Herkenningstaal';
  @override
  String get sync_err_peer_unreachable =>
      'Kan het gekoppelde apparaat niet bereiken — het is mogelijk offline of Fushi draait er niet.';
  @override
  String get remote_book_list_failed =>
      'Kon de externe bibliotheek niet ophalen van het gekoppelde apparaat.';
  @override
  String get video_torznab_settings_hint =>
      'Configureer een of meer Jackett-, Prowlarr- of compatibele Torznab-eindpunten. Geheimen worden nooit geëxporteerd in back-ups; ze kunnen synchroniseren naar gekoppelde apparaten via Interconnect (kan worden uitgeschakeld bij Interconnect-instellingen).';
  @override
  String get video_opensubtitles_settings_hint =>
      'API-inloggegevens worden nooit geëxporteerd in back-ups; ze kunnen synchroniseren naar gekoppelde apparaten via Interconnect (kan worden uitgeschakeld bij Interconnect-instellingen).';
  @override
  String get sync_interconnect_service_config_toggle =>
      'Serviceconfiguratie synchroniseren van host';
  @override
  String get sync_interconnect_service_config_toggle_desc =>
      'Ontvang externe service-instellingen en API-sleutels (Jimaku, TMDB, Torznab, OpenSubtitles, tracking) van de gekoppelde host via het versleutelde Interconnect-kanaal. Vereist TLS.';
  @override
  String get video_setting_subtitle_backfill =>
      'Automatisch ondertitels ophalen na scrapen';
  @override
  String get video_setting_subtitle_backfill_hint =>
      'Wanneer een scrape klaar is, krijgen video\'s die nog geen ondertitel hebben er een van je geconfigureerde online bronnen. Vervangt nooit een bestaande ondertitel.';
  @override
  String get video_setting_subtitle_sources_section =>
      'Online ondertitelbronnen';
  @override
  String get video_subtitle_no_source_configured =>
      'Geen ondertitel gevonden · stel een online ondertitelbron in';
  @override
  String get anime_download_subs_retrying =>
      'Ondertitels: nog niet beschikbaar — wordt automatisch opnieuw geprobeerd';
  @override
  String get video_jimaku_language_follow_video => 'Videotaal volgen';
  @override
  String get video_setting_jimaku_default_language_hint =>
      'Standaard de eigen taal van de video (audiotrack / gescrapete metadata). Kies er een om die taal altijd te prefereren.';
  @override
  String get onboarding_title => 'Aan de slag';
  @override
  String get onboarding_welcome_headline => 'Welkom!';
  @override
  String get onboarding_feature_anki => 'Anki-flashcards';
  @override
  String get onboarding_feature_anki_hint =>
      'Verbind AnkiConnect of AnkiDroid om flashcards te maken';
  @override
  String get onboarding_feature_backup => 'Back-up & sync';
  @override
  String get onboarding_feature_backup_hint =>
      'Maak een back-up van je gegevens naar Google Drive, WebDAV en andere backends';
  @override
  String get onboarding_feature_interconnect => 'Apparaatverbinding';
  @override
  String get onboarding_feature_interconnect_hint =>
      'Koppel apparaten op je LAN om bibliotheken en voortgang te delen';
  @override
  String get onboarding_step_dictionary_action => 'Woordenboekbeheer openen';
  @override
  String get onboarding_step_anki_title => 'Anki instellen';
  @override
  String get onboarding_step_anki_action => 'Kaartaanmaak-instellingen openen';
  @override
  String get onboarding_step_backup_title => 'Back-up instellen';
  @override
  String get onboarding_step_backup_body =>
      'Kies een back-upbackend en meld je aan, of exporteer een lokaal back-upbestand.';
  @override
  String get onboarding_step_backup_action => 'Back-upinstellingen openen';
  @override
  String get onboarding_step_interconnect_title => 'Interconnect instellen';
  @override
  String get onboarding_step_interconnect_body =>
      'Schakel interconnect in en koppel met andere apparaten op je LAN om bibliotheken, voortgang en opzoekacties te delen.';
  @override
  String get onboarding_step_interconnect_action =>
      'Interconnect-instellingen openen';
  @override
  String get onboarding_finish_title => 'Helemaal klaar';
  @override
  String get onboarding_finish_body =>
      'Je kunt deze gids altijd opnieuw bekijken via Instellingen → Systeem.';
  @override
  String get onboarding_action_next => 'Volgende';
  @override
  String get onboarding_action_finish => 'Voltooien';
  @override
  String get onboarding_action_skip => 'Later';
  @override
  String get onboarding_reopen => 'Aan-de-slaggids';
  @override
  String get onboarding_welcome_body =>
      'Stel eerst je interfacetaal en thema in — de volgende stappen leiden je door de rest.';
  @override
  String get onboarding_features_title => 'Kies wat je gebruikt';
  @override
  String get onboarding_features_modules_label =>
      'Bibliotheektabbladen (uitgevinkte worden verborgen in de navigatiebalk; altijd te wijzigen bij Instellingen)';
  @override
  String get onboarding_features_setup_label => 'Wat vervolgens in te stellen';
  @override
  String get onboarding_feature_manga => 'Mangabibliotheek';
  @override
  String get onboarding_feature_manga_hint => 'Lees manga met OCR-opzoeken';
  @override
  String get onboarding_feature_video => 'Videobibliotheek';
  @override
  String get onboarding_feature_video_hint =>
      'Bekijk video\'s met ondertitelopzoeken en kaartdelven';
  @override
  String get onboarding_feature_games => 'Galgamebibliotheek';
  @override
  String get onboarding_feature_games_hint =>
      'Start galgames met texthook-opzoeken (alleen Windows)';
  @override
  String get onboarding_feature_pack =>
      'Aanbevolen pakket (woordenboeken + audio)';
  @override
  String get onboarding_feature_pack_hint =>
      'Eén download stelt Japanse woordenboeken plus JA/EN uitspraakaudio in';
  @override
  String get onboarding_step_pack_title => 'Het aanbevolen pakket installeren';
  @override
  String get onboarding_step_pack_body =>
      'Het aanbevolen pakket bundelt Japanse woord-, accenttoon- en frequentiewoordenboeken plus Japanse/Engelse uitspraakaudiodatabases. Download en importeer het hier; importeren vervangt lokale gegevens, dus doe het op een schone installatie. Leer je een andere taal? Gebruik het woordenboekbeheer om je eigen woordenboeken te importeren.';
  @override
  String get onboarding_step_pack_download_action => 'Downloaden en importeren';
  @override
  String get onboarding_step_pack_import_existing_action =>
      'Gedownload pakket importeren';
  @override
  String get onboarding_step_pack_pick_action =>
      'Kies een lokaal pakketbestand';
  @override
  String get onboarding_pack_downloading =>
      'Downloaden… annuleer op elk moment, wordt volgende keer hervat';
  @override
  String onboarding_pack_download_failed({required Object message}) =>
      'Download mislukt: ${message}';
  @override
  String get onboarding_step_extension_title => 'Browserextensie';
  @override
  String get onboarding_step_extension_body =>
      'Installeer de begeleidende browserextensie om woorden op te zoeken op elke webpagina.';
  @override
  String get onboarding_step_extension_action => 'Extensiegids openen';
  @override
  String get onboarding_step_fonts_title => 'Leeslettertypen';
  @override
  String get onboarding_step_fonts_body =>
      'Importeer aangepaste lettertypen en kies welke voor UI, boektekst en woordenboek worden gebruikt.';
  @override
  String get settings_section_modules => 'Functiemodules';
  @override
  String get module_toggle_hint =>
      'Toon dit bibliotheektabblad in de navigatiebalk; schakel uit om het te verbergen';
  @override
  String get video_setting_youtube_quality => 'YouTube-kwaliteit';
  @override
  String get video_setting_youtube_quality_hint =>
      'Start streams op de hoogste laag tot dit doel; Automatisch geeft voorkeur aan vloeiende weergave (hardwarevriendelijke codec, tot 1080p)';
  @override
  String get library_view_discover => 'Ontdekken';
  @override
  String get manga_discovery_section_trending => 'Trending';
  @override
  String get manga_discovery_section_popular => 'Populair';
  @override
  String get manga_discovery_section_top_rated => 'Hoogst beoordeeld';
  @override
  String get manga_discovery_section_latest_finished => 'Recent voltooid';
  @override
  String get manga_discovery_load_failed =>
      'Kon de ontdekkingsfeed niet laden.';
  @override
  String get manga_discovery_match_section => 'Lezen vanaf een bron';
  @override
  String get manga_discovery_match_running =>
      'Matchen in je ingeschakelde bronnen...';
  @override
  String get manga_discovery_match_none =>
      'Geen match gevonden in ingeschakelde bronnen.';
  @override
  String get manga_discovery_status_releasing => 'Lopend';
  @override
  String get manga_discovery_status_finished => 'Voltooid';
  @override
  String get manga_discovery_status_hiatus => 'Onderbroken';
  @override
  String get manga_discovery_status_cancelled => 'Geannuleerd';
  @override
  String get manga_discovery_status_not_yet_released => 'Nog niet uitgebracht';
  @override
  String manga_discovery_source_popular({required Object source}) =>
      'Populair op ${source}';
  @override
  String get mihon_extension_error => 'Extensiefout';
  @override
  String get discovery_all_sources => 'Alle bronnen';
  @override
  String get discovery_search_hint => 'Online resources zoeken';
  @override
  String get discovery_enter_query_hint => 'Voer een zoekterm in';
  @override
  String get discovery_empty => 'Geen resultaten';
  @override
  String get discovery_partial_failure =>
      'Sommige bronnen zijn niet beschikbaar';
  @override
  String get discovery_load_more => 'Meer laden';
  @override
  String get discovery_download_queued => 'Aan downloads toegevoegd';
  @override
  String get discovery_torrent_pushed => 'Torrenttaak toegevoegd';
  @override
  String get discovery_torrent_failed => 'Kon torrenttaak niet toevoegen';
  @override
  String get discovery_kind_novel => 'Romans';
  @override
  String get discovery_kind_audiobook => 'Luisterboeken';
  @override
  String get discovery_source_pick_hint =>
      'Kies een bron om te bladeren, of typ een zoekterm om elke bron te doorzoeken';
  @override
  String get discovery_source_query_required =>
      'Deze bron ondersteunt alleen zoeken op trefwoord';
  @override
  String get manga_discovery_sources_browse => 'Door een bron bladeren';
  @override
  String get discovery_kind_manga => 'Manga';
  @override
  String get game_capture_workbench_tab => 'Opnamewerkruimte';
  @override
  String get video_builtin_sources_title => 'Ingebouwde bronnen';
  @override
  String get video_resource_no_provider_title =>
      'Geen resource-indexer geconfigureerd';
  @override
  String get video_subtitle_no_provider_title =>
      'Geen ondertitelprovider geconfigureerd';
  @override
  String get video_subtitle_no_provider_hint =>
      'Voer een Jimaku API-sleutel in of schakel OpenSubtitles in via Instellingen, Downloads, Externe resource- en ondertitelproviders.';
  @override
  String get anime_download_require_subs => 'Ondertitels vereist';
  @override
  String get video_jimaku_scope_hint =>
      'Japanse ondertitels voor anime en Japanse live-actiontitels. Een gratis API-sleutel is vereist.';
  @override
  String get video_builtin_apibay_hint =>
      'Films en tv-series. Openbare index, geen account nodig.';
  @override
  String get video_builtin_knaben_hint =>
      'Films en tv-series. Aggregeert meerdere openbare indexers.';
  @override
  String get video_jimaku_enabled_hint =>
      'Uit betekent dat Jimaku wordt overgeslagen, zelfs als een API-sleutel is opgeslagen.';
  @override
  String get discovery_sources_settings_title => 'Ontdekkingsbronnen';
  @override
  String get discovery_sources_settings_hint =>
      'Welke ingebouwde bronnen deelnemen aan de Alle bronnen-zoekopdracht van de Ontdekkenpagina. Een enkele bron kiezen in de brondropdown werkt altijd, zelfs als deze hier uit staat.';
  @override
  String get video_builtin_sources_hint =>
      'Meegeleverd met de app: geen account, geen API-sleutel. Schakel er een uit om deze buiten resource-zoekopdrachten te houden.';
  @override
  String get video_builtin_nyaa_hint =>
      'Alleen anime. Films en tv-series worden gedekt door de twee onderstaande openbare indexers.';
  @override
  String get video_resource_no_provider_hint =>
      'Deze zoekopdracht had geen provider om te bevragen. Schakel een ingebouwde bron opnieuw in, of voeg een Torznab-indexer toe, via Instellingen, Downloads, Externe resource- en ondertitelproviders.';
  @override
  String discovery_source_kinds_label({required Object kinds}) =>
      'Dekt: ${kinds}';
  @override
  String get video_source_scrape_rescrape_source => 'Deze bron opnieuw scrapen';
  @override
  String get video_source_scrape_run_detail_title => 'Scraperesultaat';
  @override
  String get video_source_scrape_run_no_issues =>
      'Er zijn geen waarschuwingen of fouten geregistreerd.';
  @override
  String get video_source_scrape_manual_search_title =>
      'Het werk handmatig opgeven';
  @override
  String get video_source_scrape_manual_search_hint =>
      'Zoek de metadataprovider op titel en kies dan het juiste werk.';
  @override
  String get video_source_scrape_manual_search_action => 'Zoeken';
  @override
  String get video_source_scrape_manual_search_empty => 'Geen resultaten';
  @override
  String get profile_media_manga => 'Manga';
  @override
  String get profile_media_game => 'Spel';
  @override
  String get profile_media_browser => 'Browser';
  @override
  String get mihon_store_remove => 'Extensiewinkel verwijderen';
  @override
  String get video_import_folder_as_source_hint =>
      'Blijf deze map scannen op nieuwe video\'s';
  @override
  String get manga_import_folder_as_source_hint =>
      'Blijf deze map scannen op nieuwe manga';
  @override
  String get download_no_managed_video_source =>
      'Nog geen beheerde videobron. Downloads hebben een lokale videomap nodig om in te landen.';
  @override
  String get download_add_video_source => 'Videobron toevoegen';
  @override
  String get video_subtitle_prev_cue_align => 'Vorige regel uitlijnen op nu';
  @override
  String get video_subtitle_next_cue_align => 'Volgende regel uitlijnen op nu';
  @override
  String video_control_custom_action({required Object index}) =>
      'Snelkoppeling ${index}';
  @override
  String get video_control_custom_action_none => 'Niet toegewezen';
  @override
  String get settings_destination_storage => 'Opslag';
  @override
  String get settings_destination_storage_summary =>
      'Datalocatie en schijfgebruik';
  @override
  String get storage_overview_section => 'Schijfgebruik';
  @override
  String get storage_overview_total => 'Totaal';
  @override
  String get storage_overview_refresh => 'Opnieuw scannen';
  @override
  String get storage_overview_scanning => 'Scannen…';
  @override
  String get storage_category_books => 'Boeken & luisterboeken';
  @override
  String get storage_category_dictionaries => 'Woordenboeken';
  @override
  String get storage_category_video_downloads => 'Videodownloads';
  @override
  String get storage_category_covers => 'Omslagen & miniaturen';
  @override
  String get storage_category_subtitles => 'Ondertitels';
  @override
  String get storage_category_shaders => 'Videoshaders';
  @override
  String get storage_category_custom_fonts => 'Aangepaste lettertypen';
  @override
  String get storage_category_web => 'Webarchief & browsergegevens';
  @override
  String get storage_category_exports => 'Exporten';
  @override
  String get storage_category_database => 'Database & interne gegevens';
  @override
  String get storage_category_ocr_models => 'Manga OCR-modellen';
  @override
  String storage_entry_more_rest({required Object n, required Object size}) =>
      '${n} meer items, ${size} in totaal';
  @override
  String storage_entry_delete_confirm_title({required Object name}) =>
      '${name} verwijderen?';
  @override
  String get storage_entry_delete_book_confirm_body =>
      'Dit verwijdert het boek, de leesvoortgang en gekopieerde audiobestanden van dit apparaat.';
  @override
  String get storage_entry_delete_dictionary_confirm_body =>
      'Dit verwijdert het woordenboek en de geïmporteerde gegevens.';
  @override
  String get storage_entry_delete_done => 'Verwijderd';
  @override
  String storage_entry_delete_failed({required Object reason}) =>
      'Verwijderen mislukt: ${reason}';
  @override
  String get storage_modules_anime4k_title => 'Anime4K-shaders';
  @override
  String get storage_modules_anime4k_hint =>
      'Kunnen altijd opnieuw worden gedownload bij video-instellingen';
  @override
  String storage_modules_anime4k_delete_done({required Object n}) =>
      '${n} shaderbestanden verwijderd';
  @override
  String get storage_bundled_section => 'Meegeleverde componenten';
  @override
  String get storage_bundled_hint =>
      'Meegeleverd met het installatieprogramma; verwijderde bestanden komen terug bij de volgende update, vermeld ter referentie.';
  @override
  String get storage_dictionary_delete_incomplete =>
      'Woordenboek nog aanwezig na verwijdering, zie foutenlog';
  @override
  String get module_extension_label => 'Browserextensie';
  @override
  String get onboarding_feature_books => 'Romanbibliotheek';
  @override
  String get onboarding_feature_books_hint =>
      'Lees EPUB-romans met woordenboek-opzoeken en luisterboekafstemming';
  @override
  String get onboarding_feature_extension_hint =>
      'Zoek woorden op op elke webpagina (alleen desktop)';
  @override
  String get video_setting_tap_toggles_playback =>
      'Tik op video om af te spelen/pauzeren';
  @override
  String get video_setting_tap_toggles_playback_hint =>
      'Schakel uit zodat tikken op de video alleen de bediening toont';
  @override
  String get manga_ocr_engine_auto_desc =>
      'Geeft voorkeur aan een offline engine die je al hebt ingesteld; uploadt nooit zelf naar Lens.';
  @override
  String get manga_ocr_engine_local_onnx_desc =>
      'Volledig offline, beste kwaliteit. Vereist een eenmalige modeldownload en is traag op oude hardware.';
  @override
  String get manga_ocr_engine_google_lens_desc =>
      'Vereist internet en uploadt paginaafbeeldingen naar Google. Snel zonder download, maar kwaliteit is lager dan het lokale model.';
  @override
  String get manga_ocr_engine_external_desc =>
      'Roept een mokuro-opdrachtregel aan die je zelf hebt geïnstalleerd. Alleen desktop.';
  @override
  String get manga_ocr_engine_paired_host_desc =>
      'Geeft het werk door aan een gekoppeld apparaat op je netwerk. Niets wordt hier gedownload.';
  @override
  String manga_ocr_model_disk_usage({required Object size}) =>
      'Gebruikt ${size} op schijf';
  @override
  String manga_ocr_model_download_size({required Object size}) =>
      'Vereist ${size}';
  @override
  String manga_ocr_delete_done_freed({required Object size}) =>
      'Modellen verwijderd, ${size} vrijgemaakt';
  @override
  String get manga_ocr_model_unused_by_engine =>
      'De huidige engine gebruikt deze lokale modelbestanden niet.';
  @override
  String manga_ocr_download_total_progress({
    required Object done,
    required Object total,
  }) => '${done} van ${total}';
  @override
  String get media_source_network_subtitle_video =>
      'WebDAV externe bibliotheek (streamt op locatie)';
  @override
  String get jellyfin_settings_title => 'Mediaserver (Jellyfin / Emby)';
  @override
  String get jellyfin_server_url => 'Server-URL';
  @override
  String get jellyfin_sign_in => 'Inloggen';
  @override
  String get jellyfin_sign_out => 'Uitloggen';
  @override
  String get jellyfin_sign_in_failed => 'Inloggen mislukt';
  @override
  String get jellyfin_settings_hint =>
      'Video\'s op de server verschijnen in de videobibliotheek en streamen direct.';
  @override
  String get video_setting_mpv_lua_scripts => 'Lua-scripts laden';
  @override
  String get video_setting_mpv_lua_scripts_hint =>
      'Laad alle .lua-bestanden in de mpv_scripts-map in de speler. Uitschakelen wordt pas van kracht bij het volgende geopende video.';
  @override
  String get video_setting_mpv_lua_scripts_import => 'Lua-scripts importeren';
  @override
  String get video_setting_mpv_lua_scripts_imported => 'Scripts geïmporteerd';
  @override
  String get video_setting_mpv_lua_scripts_dir_copy => 'Scriptmappad kopiëren';
  @override
  String get video_setting_mpv_lua_scripts_dir_copied => 'Mappad gekopieerd';
  @override
  String get interconnect_share_statistics => 'Statistieken delen';
  @override
  String get interconnect_share_statistics_hint =>
      'Lees- en kijktijd, tekentellingen, opzoek- en delventellers';
  @override
  String get interconnect_share_favorites => 'Favorieten delen';
  @override
  String get interconnect_share_favorites_hint =>
      'Favoriete woorden en zinnen, inclusief verwijderen van favorieten';
  @override
  String get interconnect_share_section => 'Delen met gekoppelde apparaten';
  @override
  String get interconnect_share_section_footer =>
      'Deze worden in beide richtingen samengevoegd met het gekoppelde apparaat en staan standaard aan. Een uitschakelen stopt zowel het verzenden als het ontvangen ervan.';
  @override
  String get game_hook_mining_no_session_lines =>
      'Nog geen opgenomen regels, dus er is niets om deze kaart aan te koppelen. Kies een andere tekstthread in de werkruimte.';
  @override
  String get shortcut_action_manga_pan_up => 'Omhoog pannen';
  @override
  String get shortcut_action_manga_pan_down => 'Omlaag pannen';
  @override
  String get shortcut_action_manga_pan_left => 'Links pannen';
  @override
  String get shortcut_action_manga_pan_right => 'Rechts pannen';
  @override
  String get drag_drop_folder_source_added =>
      'Map toegevoegd als bibliotheekbron en gescand.';
  @override
  String get drag_drop_folder_source_exists =>
      'Die map is al een bibliotheekbron.';
  @override
  String get sync_pair_invalid_url => 'Ongeldig adresformaat';
  @override
  String get sync_pair_peer_requires_https =>
      'Dit apparaat accepteert alleen HTTPS. Gebruik een https:// adres.';
  @override
  String get sync_pair_peer_not_https =>
      'De peer gebruikt geen HTTPS op deze poort. Gebruik een http:// adres.';
  @override
  String get sync_pair_not_fushi_discovered =>
      'Geen Fushi-apparaat gevonden op dit adres.';
  @override
  String get shortcut_action_popup_play_audio => 'Woordaudio afspelen';
  @override
  String get sync_progress_asset_transfer => 'Overdracht voorbereiden';
  @override
  String get sync_asset_dictionary_upload => 'Woordenboeken uploaden';
  @override
  String get sync_asset_dictionary_download => 'Woordenboeken downloaden';
  @override
  String get sync_asset_local_audio_upload => 'Lokale audiodatabases uploaden';
  @override
  String get sync_asset_local_audio_download =>
      'Lokale audiodatabases downloaden';
  @override
  String get sync_asset_upload_hint =>
      'Stuurt wat dit apparaat heeft en het externe niet. Pakketten kunnen groot zijn.';
  @override
  String get sync_asset_upload_action => 'Uploaden';
  @override
  String get sync_asset_download_action => 'Downloaden';
  @override
  String get sync_asset_download_hint =>
      'Haalt op wat het externe heeft en dit apparaat niet — inclusief items die je lokaal hebt verwijderd.';
  @override
  String get sync_asset_legacy_notice_title =>
      'Woordenboek- en audiosync is nu handmatig';
  @override
  String get sync_asset_legacy_notice_body =>
      'Dit apparaat had automatische synchronisatie aan voor woordenboeken en lokale audiodatabases. Die schakelaar is verdwenen — gebruik de Upload / Download-acties hieronder wanneer je ze wilt overdragen. Niets is verwijderd, maar nieuwe woordenboeken worden niet meer automatisch geback-upt.';
  @override
  String get sync_asset_legacy_notice_dismiss => 'Begrepen';
  @override
  String get download_task_add => 'Taak toevoegen';
  @override
  String get download_task_add_pick_torrent => 'Torrentbestand kiezen';
  @override
  String get download_task_add_title_label => 'Titel';
  @override
  String get download_task_add_content_kind => 'Inhoudstype';
  @override
  String get download_task_add_invalid =>
      'Niet-herkende magnetlink of torrentbestand';
  @override
  String get download_task_add_submitted => 'Taak toegevoegd';
  @override
  String get download_task_search_hint => 'Taken zoeken';
  @override
  String get download_task_sort_created => 'Datum toegevoegd';
  @override
  String get download_task_sort_progress => 'Voortgang';
  @override
  String get download_task_sort_status => 'Status';
  @override
  String get download_task_no_match => 'Geen overeenkomende taken';
  @override
  String subtitle_version_episode_count({required Object n}) =>
      '${n} afleveringen';
  @override
  String subtitle_version_unnumbered_count({required Object n}) =>
      '${n} ongenummerd';
  @override
  String get subtitle_version_ai_translated => 'AI-vertaald';
  @override
  String get subtitle_version_content_language => 'Inhoud';
  @override
  String get subtitle_version_show_files => 'Bestanden tonen';
  @override
  String get subtitle_version_view_files => 'Bestandenlijst';
  @override
  String get resource_version_batch => 'Batch';
  @override
  String get resource_version_view_flat => 'Alle releases';
  @override
  String get subscription_mode_one_shot => 'Eenmalig';
  @override
  String get subscription_mode_ongoing => 'Doorlopend';
  @override
  String get subscription_legacy_badge => 'Legacy';
  @override
  String get subscription_legacy_hint =>
      'Geïmporteerd uit het legacy-systeem; automatische controles gelden niet.';
  @override
  String subscription_next_check({required Object time}) =>
      'Volgende controle: ${time}';
  @override
  String subscription_last_matched({required Object time}) =>
      'Laatste match: ${time}';
  @override
  String get subscription_item_status_discovered => 'Wachtend';
  @override
  String get subscription_item_status_queued => 'In wachtrij';
  @override
  String get subscription_item_status_processed => 'Geïmporteerd';
  @override
  String get subscription_item_status_skipped => 'Overgeslagen';
  @override
  String get subscription_item_status_failed => 'Mislukt';
  @override
  String get subscription_items_empty => 'Nog geen releases bijgehouden';
  @override
  String get subscription_edit_title => 'Abonnement bewerken';
  @override
  String get subscription_edit_rule_hint =>
      'Identiteits- en versieregels kunnen hier niet worden gewijzigd. Abonneer opnieuw om van versie te wisselen — geschiedenis wordt bewaard.';
  @override
  String get subscription_search_hint => 'Abonnementen zoeken';
  @override
  String get subscription_sort_last_checked => 'Laatst gecontroleerd';
  @override
  String get subscription_sort_last_matched => 'Laatste match';
  @override
  String get subscription_show_items => 'Afleveringsgeschiedenis';
  @override
  String get subscription_sort_created => 'Datum toegevoegd';
  @override
  String get subscription_no_match => 'Geen overeenkomende abonnementen';
  @override
  String get download_subscription_start_episode_invalid =>
      'Voer een geheel getal in (0 of hoger), of laat leeg';
  @override
  String get download_subscription_source_unavailable =>
      'Huidig doel (niet beschikbaar)';
  @override
  String resource_version_episode_count({required Object n}) =>
      '${n} afleveringen';
  @override
  String get resource_version_show_files => 'Bestanden tonen';
  @override
  String get manga_online_detail_load_failed => 'Kon deze manga niet laden.';
  @override
  String get manga_online_error_view_detail => 'Details bekijken';
  @override
  String get discovery_sources_unavailable =>
      'Alle bronnen zijn niet beschikbaar';
  @override
  String get font_target_game_lookup => 'Spelzoekervenster lettertype';
  @override
  String get gal_hook_text_font => 'Spelzoekervenster lettertype';
  @override
  String get gal_hook_text_font_hint =>
      'Kies lettertypen uit de beheerde lettertypebibliotheek. Het eerste ingeschakelde lettertype wordt gebruikt.';
  @override
  String get gal_hook_text_letter_spacing => 'Letterspatiëring';
  @override
  String get gal_hook_text_letter_spacing_hint =>
      'Pas de spatiëring tussen tekens aan zonder de opzoekherkenning te beïnvloeden.';
  @override
  String get gal_hook_text_line_height => 'Regelhoogte';
  @override
  String get gal_hook_text_line_height_hint =>
      'Pas de verticale spatiëring van teruggevouwen regels aan.';
  @override
  String get gal_hook_text_bold => 'Vetgedrukte tekst';
  @override
  String get gal_hook_text_bold_hint =>
      'Gebruik halfvette tekst voor betere leesbaarheid over spelgrafiek.';
  @override
  String get gal_hook_text_alignment => 'Tekstuitlijning';
  @override
  String get gal_hook_text_alignment_center => 'Gecentreerd';
  @override
  String get gal_hook_text_alignment_left => 'Links';
  @override
  String get gal_hook_text_color => 'Tekstkleur';
  @override
  String get gal_hook_overlay_legibility_section => 'Venster en leesbaarheid';
  @override
  String get gal_hook_text_background_color => 'Vensterachtergrondkleur';
  @override
  String get gal_hook_text_background_opacity => 'Vensterachtergrond-dekking';
  @override
  String get gal_hook_text_background_opacity_hint =>
      'Stel in op 0% voor een bureaubladsongtekststijl transparant venster.';
  @override
  String get gal_hook_text_outline_color => 'Omtrekkleur';
  @override
  String get gal_hook_text_outline_width => 'Omtrekbreedte';
  @override
  String get gal_hook_text_outline_width_hint =>
      'Stel in op 0 om de omtrek uit te schakelen; de subtiele schaduw blijft.';
  @override
  String get gal_hook_text_padding => 'Horizontale tekstvulling';
  @override
  String get gal_hook_text_padding_hint =>
      'Houd tekst weg van de vensterranden en de schakelgreep.';
  @override
  String get gal_hook_text_corner_radius => 'Vensterhoekradius';
  @override
  String get gal_hook_text_corner_radius_hint =>
      'Pas de hoekradius van de achtergrond aan.';
  @override
  String get storage_shaders_delete_anime4k => 'Anime4K-shaders verwijderen';
  @override
  String get video_jimaku_series_lookup_degraded =>
      'Kon de serie dit keer niet bevestigen op AniList, dus deze resultaten komen van een eenvoudige titelzoekopdracht en kunnen andere seizoenen van dezelfde serie bijmengen.';
  @override
  String get dict_style_tab_visual => 'Visueel';
  @override
  String get dict_style_tab_code => 'CSS';
  @override
  String get dict_style_scope_all => 'Alle woordenboeken';
  @override
  String get dict_style_part_entry_card => 'Lemmakaart';
  @override
  String get dict_style_part_expression => 'Hoofdwoord';
  @override
  String get dict_style_part_ruby => 'Furigana';
  @override
  String get dict_style_part_deinflection_tag => 'Verbuigingsketen';
  @override
  String get dict_style_part_frequency => 'Frequentie';
  @override
  String get dict_style_part_pitch => 'Accenttoon';
  @override
  String get dict_style_part_dictionary_label => 'Woordenboeknaam';
  @override
  String get dict_style_part_glossary_content => 'Definitie';
  @override
  String get dict_style_part_glossary_tag => 'Definitietags';
  @override
  String get dict_style_prop_text_color => 'Tekstkleur';
  @override
  String get dict_style_prop_background => 'Markering';
  @override
  String get dict_style_prop_bold => 'Vet';
  @override
  String get dict_style_prop_italic => 'Cursief';
  @override
  String get dict_style_prop_underline => 'Onderstrepen';
  @override
  String get dict_style_prop_font_scale => 'Lettergrootte';
  @override
  String get dict_style_prop_corner_radius => 'Hoekradius';
  @override
  String get dict_style_part_reset => 'Deel resetten';
  @override
  String get dict_style_reset_all => 'Alles resetten';
  @override
  String get dict_style_global_only =>
      'Alleen aanpasbaar voor alle woordenboeken';
  @override
  String get dict_style_preview_title => 'Voorbeeld';
  @override
  String get dict_style_pick_hint =>
      'Tik op een deel in het voorbeeld om ernaartoe te springen';
  @override
  String get dict_style_prop_default => 'Standaard';
  @override
  String get dict_style_part_expression_tag => 'Uitdrukkingstags';
  @override
  String get dict_style_prop_on => 'Aan';
  @override
  String get dict_style_prop_off => 'Uit';
  @override
  String get dict_style_title => 'Woordenboekstijl';
  @override
  String get video_source_scrape_anidb_client => 'AniDB-clientnaam';
  @override
  String get video_source_scrape_anidb_client_hint =>
      'Geregistreerde AniDB HTTP API-clientnaam; leeg laten om alleen de gecachte titelcatalogus te gebruiken';
  @override
  String get video_source_scrape_anidb_client_version => 'AniDB-clientversie';
  @override
  String get video_source_scrape_anidb_client_version_hint =>
      'Positieve versie geregistreerd bij AniDB; HTTP API blijft uitgeschakeld tot beide velden geldig zijn';
  @override
  String get video_scrape_view_source => 'Brondetails bekijken';
  @override
  String get video_setting_auto_scrape_hint =>
      'Automatisch videometadata identificeren en ophalen na bibliotheekscans';
  @override
  String get video_resource_identity_provider => 'Resource-identiteitsbron';
  @override
  String get video_source_scrape_clear_all => 'Alle scrapegegevens wissen';
  @override
  String get video_source_scrape_clear_all_hint =>
      'Verwijder alle videoscrapemetadata en door Fushi gegenereerde omslagen en NFO-bestanden.';
  @override
  String get video_source_scrape_clear_all_confirm_title =>
      'Alle videoscrapegegevens wissen?';
  @override
  String get video_source_scrape_clear_all_confirm_body =>
      'Dit verwijdert alle gescrapete metadata en bronbindingen, wist de Serieresultaten en verwijdert ongewijzigde door Fushi gegenereerde omslagen en NFO-bestanden. Videobestanden, bibliotheekitems, groepen, kijkvoortgang, ondertitels, tags, handmatig gekozen omslagen en door de gebruiker gewijzigde bijbestanden worden bewaard. Dit kan niet ongedaan worden gemaakt.';
  @override
  String get video_source_scrape_clear_all_confirm_action => 'Wissen';
  @override
  String get video_source_scrape_clear_all_completed =>
      'Alle videoscrapegegevens zijn gewist.';
  @override
  String get video_source_scrape_clear_all_completed_protected =>
      'Scrapegegevens gewist. Gewijzigde of niet-verifieerbare bijbestanden zijn bewaard.';
  @override
  String get video_source_scrape_clear_all_busy =>
      'Een videoscan of scrape draait nog. Probeer het opnieuw als het klaar is.';
  @override
  String get video_source_scrape_clear_all_failed =>
      'Kon niet alle scrapegegevens wissen. Geen niet-geverifieerde gebruikersbestanden zijn verwijderd.';
  @override
  String get video_source_scrape_clear_all_in_progress =>
      'Een scrapegegevensopschoning is al bezig.';
  @override
  String get game_session_japanese_locale => 'Japanse landinstellingen';
  @override
  String get game_session_japanese_locale_hint =>
      'Het spel is gestart onder Japanse (CP932) landinstellingen. Als de tekst er verward uitziet of er een scriptfout verschijnt, stel dan de Japanse landinstellingen van dit spel in op Nooit.';
  @override
  String get onboarding_anki_intro_body =>
      'Anki is een gratis flashcard-app met gespreide herhaling: nieuwe woorden worden kaarten, en herhalingen worden gepland langs de vergeetcurve. Na een opzoekactie kan Fushi het woord in één tik in een Anki-kaart veranderen, met betekenis, zin, audio en schermafbeelding.';
  @override
  String get onboarding_anki_setup_desktop_hint =>
      'Installeer de Anki-desktopapp en voeg dan de AnkiConnect add-on toe: open in Anki Extra - Add-ons - Haal Add-ons en voer code 2055492159 in. Houd Anki draaiend tijdens het maken van kaarten.';
  @override
  String get onboarding_anki_setup_ios_hint =>
      'Met AnkiMobile geïnstalleerd werkt het toevoegen van kaarten direct. Voor de volledige functieset, verbind met Anki op een computer in hetzelfde netwerk via AnkiConnect.';
  @override
  String get onboarding_anki_backend_label => 'Verbinding';
  @override
  String get onboarding_anki_test_action => 'Verbinding testen';
  @override
  String onboarding_anki_test_success({required Object count}) =>
      'Verbonden: ${count} dekken gevonden';
  @override
  String get onboarding_anki_get_anki_action => 'Anki ophalen (desktop)';
  @override
  String get onboarding_anki_get_ankidroid_action => 'AnkiDroid ophalen';
  @override
  String get onboarding_anki_mobile_ankiconnect_title =>
      'Geavanceerd: AnkiConnect op dit apparaat gebruiken';
  @override
  String get onboarding_anki_mobile_ankiconnect_hint =>
      'Dit apparaat kan ook kaarten maken in Anki op een computer in hetzelfde netwerk: schakel AnkiConnect in bij kaartaanmaak-instellingen en voer het computeradres in.';
  @override
  String get onboarding_anki_setup_android_hint =>
      'Installeer AnkiDroid en open het eenmaal om de eerste installatie te voltooien. Terug in Fushi, tik op Toestaan bij het toestemmingsvenster dat verschijnt bij je eerste kaart — geen AnkiDroid-instellingen te wijzigen.';
  @override
  String get onboarding_anki_install_addon_action =>
      'AnkiConnect add-on installeren';
  @override
  String get onboarding_anki_addon_installed =>
      'AnkiConnect is geïnstalleerd. Start Anki (opnieuw) en tik dan op Verbinding testen.';
  @override
  String get onboarding_anki_addon_no_anki =>
      'Anki-gegevensmap niet gevonden. Installeer Anki en open het eenmaal, en probeer dan opnieuw.';
  @override
  String onboarding_anki_addon_failed({required Object message}) =>
      'Installatie mislukt: ${message}';
  @override
  String get game_hook_reason_capability_probe_failed =>
      'De opnamecomponent heeft de mogelijkheidscontrole niet beantwoord. Het is gevonden op de schijf maar kon niet worden uitgevoerd of reageerde niet op tijd — antivirus kan het blokkeren, Fushi heeft mogelijk geen toestemming om het te starten, of een achtergebleven helperproces zit vast. Sluit elk spel, controleer je antivirusquarantaine en probeer dan opnieuw.';
  @override
  String get download_backend_setup_title => 'Downloadbackend instellen';
  @override
  String get download_backend_setup_intro =>
      'Kies welke engine je downloads uitvoert. Je kunt dit later altijd wijzigen in de downloadinstellingen.';
  @override
  String get download_backend_embedded_hint =>
      'Aanbevolen. Downloads draaien in Fushi zelf - je hoeft niets extra\'s te installeren.';
  @override
  String get download_backend_qb_hint =>
      'Verbind Fushi met een qBittorrent WebUI die je al draait.';
  @override
  String get download_backend_setup_start => 'Nu instellen';
  @override
  String get download_backend_embedded_unavailable =>
      'De runtime van de ingebouwde engine ontbreekt in deze installatie. Installeer het volledige pakket opnieuw of gebruik in plaats daarvan een externe qBittorrent.';
  @override
  String get download_backend_qb_url_invalid =>
      'Voer een volledig adres in, bijv. http://127.0.0.1:8080';
  @override
  String get mihon_store_zero_extensions =>
      'Deze repository leverde 0 extensies op. Het adres verwijst mogelijk naar een verouderde index.';
  @override
  String get mihon_store_edit => 'Repository-URL bewerken';
  @override
  String get manga_ocr_download_resume => 'Download hervatten';
  @override
  String get manga_ocr_import => 'Lokaal model importeren';
  @override
  String get manga_ocr_import_title => 'Een gedownload model importeren';
  @override
  String get manga_ocr_import_intro =>
      'Als de download in de app niet lukt, download deze bestanden dan zelf en importeer ze hier. Een zip met die bestanden werkt ook.';
  @override
  String get manga_ocr_import_copy_urls => 'Downloadlinks kopiëren';
  @override
  String get manga_ocr_import_urls_copied => 'Downloadlinks gekopieerd';
  @override
  String get manga_ocr_import_pick_folder => 'Map kiezen';
  @override
  String get manga_ocr_import_pick_files => 'Bestanden kiezen';
  @override
  String get manga_ocr_import_running => 'Bezig met importeren…';
  @override
  String manga_ocr_import_done({required Object count}) =>
      '${count} bestand(en) geïmporteerd';
  @override
  String get manga_ocr_import_matched_nothing =>
      'Geen bruikbare modelbestanden herkend';
  @override
  String manga_ocr_import_size_mismatch({
    required Object file,
    required Object expected,
    required Object actual,
  }) =>
      '${file} heeft de verkeerde grootte: verwacht ${expected}, gekregen ${actual}';
  @override
  String manga_ocr_import_still_missing({required Object count}) =>
      'Er ontbreken nog ${count} bestand(en)';
  @override
  String get manga_ocr_import_failed => 'Modelimport mislukt';
  @override
  String get manga_tap_ocr_notice_title => 'Tik om te herkennen';
  @override
  String get manga_tap_ocr_notice_body =>
      'Deze pagina heeft nog geen tekstgegevens. Fushi herkent hem met de OCR-engine die je in de instellingen hebt gekozen; daarna kun je op woorden tikken om ze op te zoeken. Je kunt de engine wijzigen of dit uitschakelen bij Instellingen › Manga OCR.';
  @override
  String get manga_tap_ocr_notice_confirm => 'Nu herkennen';
  @override
  String get manga_tap_ocr_running => 'Deze pagina wordt herkend…';
  @override
  String get manga_tap_to_ocr => 'Tik om te herkennen';
  @override
  String get manga_tap_to_ocr_desc =>
      'Tik op een nog niet herkende tekstballon om de pagina te herkennen en woorden meteen op te zoeken.';
  @override
  String get manga_ocr_engine_system => 'OCR van apparaat';
  @override
  String get manga_ocr_engine_system_desc =>
      'Gebruikt de tekstherkenning die in je apparaat is ingebouwd. Geen download, volledig offline, er wordt niets geüpload — maar bij verticale tekstballonnen en handschrift merkbaar zwakker dan het lokale model.';
  @override
  String get manga_ocr_engine_system_unavailable =>
      'Dit apparaat heeft geen ingebouwde tekstherkenning beschikbaar';
  @override
  String get manga_tap_ocr_online_lens_only =>
      'Online hoofdstukken staan niet lokaal opgeslagen, dus alleen Google Lens kan ze lezen — de pagina-afbeelding wordt naar Google geüpload.';
  @override
  String get settings_destination_services => 'Onlinediensten';
  @override
  String get settings_destination_services_summary =>
      'API\'s van derden, indexers en mediaservers';
  @override
  String get section_services_subtitles => 'Ondertitelbronnen';
  @override
  String get section_services_resources => 'Resource-indexers';
  @override
  String get section_services_metadata => 'Metadata-scraping';
  @override
  String get settings_services_link_subtitle =>
      'Jimaku, OpenSubtitles, Torznab, Jellyfin, AniDB en TMDB worden hier samen ingesteld';
  @override
  String get game_hook_btn_replay => 'Stem van deze regel opnieuw afspelen';
  @override
  String get game_hook_btn_recapture => 'Stem opnieuw opnemen';
  @override
  String get game_hook_btn_follow => 'Nieuwe regels volgen';
  @override
  String get game_hook_btn_passthrough => 'Klikken doorlaten naar het spel';
  @override
  String get game_hook_btn_transparency => 'Achtergrond wisselen';
  @override
  String get game_hook_btn_lock => 'Positie vergrendelen';
  @override
  String get game_hook_btn_workbench => 'Opnamewerkbank openen';
  @override
  String get game_hook_btn_topmost => 'Altijd op voorgrond';
  @override
  String get game_hook_btn_close => 'Overlay sluiten';
  @override
  String get video_jimaku_search_failed => 'Zoeken naar ondertitels mislukt';
  @override
  String video_subtitle_error_with_code({
    required Object msg,
    required Object code,
  }) => '${msg} (HTTP ${code})';
  @override
  String get manga_rescan_run => 'Geselecteerd gebied opnieuw herkennen';
  @override
  String get manga_rescan_failed =>
      'Opnieuw herkennen van het geselecteerde gebied is mislukt';
  @override
  String get manga_rescan_region_updated =>
      'Geselecteerd gebied opnieuw herkend en in de pagina opgeslagen';
  @override
  String get manga_ocr_mobile_note =>
      'Op mobiel voeden deze modellen de lokale engine voor OCR van een heel deel, per tik en van een geselecteerd gebied in de mangalezer.';
  @override
  String get manga_rescan_hint =>
      'Sleep een kader over de tekst die je opnieuw wilt laten herkennen. Het resultaat vervangt de bestaande tekstlaag binnen dat kader.';
  @override
  String get manga_rescan_undone => 'Tekstlaag van vóór de herscan hersteld';
  @override
  String get manga_rescan_undo_failed =>
      'Kan de vorige tekstlaag niet herstellen';
  @override
  String get module_tool_toggle_hint =>
      'Dit tabblad in de navigatiebalk tonen; uitschakelen om het te verbergen';
  @override
  String get module_downloads_hidden_hint =>
      'Het tabblad Downloads is verborgen via Instellingen → Uiterlijk → Functiemodules; zet het weer aan om abonnementen te beheren.';
  @override
  String get book_file_location_open => 'Bestandslocatie openen';
  @override
  String get book_file_location_failed =>
      'Kan de bestandslocatie van dit boek niet openen.';
  @override
  String storage_entry_database_snapshots_label({required Object n}) =>
      'Snapshots van databaseback-ups (${n} bestanden)';
  @override
  String get storage_entry_delete_database_snapshots_confirm_body =>
      'Hiermee worden alle achtergebleven snapshots van databaseback-ups verwijderd (corrupt-bak / pre-restore / oude migratiekopieën). De actieve database en de bijbehorende -wal/-shm-bestanden blijven ongemoeid.';
  @override
  String get manga_global_search_no_sources =>
      'Nog geen ingeschakelde mangabronnen. Voeg er een toe op het tabblad Importeren.';
  @override
  String get manga_global_search_open_sources => 'Naar Importeren';
  @override
  String get settings_downloads_open_page_hint =>
      'De downloadpagina openen (taken, resources, abonnementen)';
  @override
  String get download_video_source_required => 'Videobron vereist';
  @override
  String get game_hook_reason_stale_session =>
      'Een eerdere opnamesessie is nog niet vrijgegeven; Fushi probeert het vanzelf opnieuw, je hoeft niets te doen.';
  @override
  String get video_subtitle_delete => 'Ondertitelbestand verwijderen';
  @override
  String video_subtitle_delete_confirm({required Object path}) =>
      'Dit ondertitelbestand van de schijf verwijderen? Dit kan niet ongedaan worden gemaakt.\n${path}';
  @override
  String video_subtitle_deleted({required Object label}) =>
      'Ondertitelbestand verwijderd: ${label}';
  @override
  String video_subtitle_delete_failed({required Object label}) =>
      'Verwijderen van ondertitelbestand mislukt: ${label}';
  @override
  String get shortcut_action_manga_toggle_chrome => 'Manga-interface schakelen';
  @override
  String get manga_interface_hide => 'Interface verbergen';
  @override
  String get manga_interface_show => 'Interface tonen';
  @override
  String get gal_hook_text_vertical_alignment => 'Verticale uitlijning';
  @override
  String get gal_hook_text_vertical_alignment_center => 'Midden';
  @override
  String get gal_hook_text_vertical_alignment_top => 'Boven';
  @override
  String get storage_entry_external_audio_hint =>
      'Audio verwijst naar de originele bestanden en gebruikt geen app-opslag';
  @override
  String get jellyfin_auto_list_title =>
      'Items automatisch tonen bij openen van Video';
  @override
  String get jellyfin_auto_list_hint =>
      'Uit: bij het openen van de videopagina wordt geen verzoek naar de mediaserver gestuurd; trek in de videobibliotheek omlaag om te vernieuwen en items handmatig te tonen. Aanbevolen voor zeer grote servers, waar automatisch opsommen op scraping lijkt en misbruikdetectie kan activeren.';
  @override
  String get jellyfin_libraries_title => 'Bibliotheken om te tonen';
  @override
  String get jellyfin_libraries_hint =>
      'Niets selecteren toont elke videobibliotheek. Beperken tot de bibliotheken die je echt kijkt voorkomt dat enorme servers volledig worden opgesomd.';
  @override
  String get jellyfin_libraries_load_failed =>
      'Kon de bibliotheeklijst niet laden';
  @override
  String get video_filter_series => 'Serie';
  @override
  String get video_filter_series_in => 'In een serie';
  @override
  String get video_filter_series_standalone => 'Zonder serie';
  @override
  String get manga_source_cloudflare_verify_title => 'Siteverificatie';
  @override
  String get manga_source_cloudflare_verify_hint =>
      'Voltooi de Cloudflare-controle hieronder. Het laden gaat automatisch verder zodra deze is geslaagd.';
  @override
  String get db_cannot_open_title => 'Datalocatie niet beschikbaar';
  @override
  String get db_cannot_open_message =>
      'Fushi kon zijn database niet openen of aanmaken op de ingestelde datalocatie. Er is niets beschadigd — de map ontbreekt mogelijk, is alleen-lezen of staat op een losgekoppelde schijf. Controleer de datalocatie bij Instellingen, of herstart om de standaardlocatie te gebruiken.';
  @override
  String get anki_error_field_mapping_mismatch =>
      'Geen van je veldtoewijzingen past bij het geselecteerde notitietype, dus Anki heeft de kaart geweigerd. Open Anki-instellingen om de velden opnieuw toe te wijzen, of gebruik \'Lapis-deck maken\'.';
  @override
  String get anki_error_first_field_empty =>
      'Het eerste veld van het geselecteerde notitietype is leeg, en Anki weigert zo\'n notitie. Wijs er een veld aan toe bij Anki-instellingen.';
  @override
  String get storage_category_cache => 'Caches en tijdelijke bestanden';
  @override
  String get storage_category_other => 'Overig, niet ingedeeld';
  @override
  String get collection_export_pick_source => 'Kies een bron';
  @override
  String get collection_export_all_sources => 'Alle bronnen';
  @override
  String get video_subtitle_list_search => 'Ondertitels doorzoeken';
  @override
  String get video_subtitle_list_search_hint => 'Typ om regels te filteren';
  @override
  String get video_subtitle_list_search_empty => 'Geen overeenkomende regel';
  @override
  String get video_subtitle_list_export_favorites =>
      'Favoriete regels exporteren';
  @override
  String get shortcut_action_video_search_subtitle_list =>
      'Ondertitellijst doorzoeken';
  @override
  String get game_hook_code_paste_title => 'Hook-code plakken';
  @override
  String get game_hook_code_paste_hint =>
      'Plak de ruwe code, bijv. /HQN4@4CE90:game.exe';
  @override
  String get game_hook_code_paste_body =>
      'De code wordt gekoppeld aan het uitvoerbare bestand van het draaiende spel, zodat Fushi hem de volgende keer opnieuw kan gebruiken.';
  @override
  String get game_hook_code_paste_saved => 'Hook-code opgeslagen voor dit spel';
  @override
  String get game_hook_code_paste_invalid => 'Dit lijkt geen hook-code te zijn';
  @override
  String get game_hook_code_label => 'Label (optioneel)';
  @override
  String get discovery_game_type_all => 'Alle';
  @override
  String get discovery_game_type_raw => 'Onvertaald';
  @override
  String get discovery_game_type_translated => 'Vertaald';
  @override
  String get discovery_game_type_mobile => 'Mobiel';
  @override
  String get discovery_game_type_unlabelled => 'Zonder label';
  @override
  String get game_library_downloading => 'Downloaden';
  @override
  String get game_library_download_queued => 'In wachtrij';
  @override
  String get game_library_download_retrying => 'Opnieuw proberen';
  @override
  String get delete_disclosure_audio_source_files =>
      'De originele audiobestanden die je importeerde';
  @override
  String get delete_local_files => 'Ook lokale bestanden verwijderen';
  @override
  String get delete_local_files_video_desc =>
      'Het videobestand wordt van dit apparaat verwijderd en de bijbehorende downloadtaak ook. Dit kan niet ongedaan worden gemaakt.';
  @override
  String get delete_local_files_audio_desc =>
      'De oorspronkelijke audiobestanden worden van dit apparaat verwijderd; de originele boek- en ondertitelbestanden blijven staan. Dit kan niet ongedaan worden gemaakt.';
  @override
  String get delete_disclosure_book_source_kept =>
      'De originele boek- en ondertitelbestanden die je hebt geïmporteerd';
  @override
  String get download_task_delete_files_failed =>
      'De gedownloade gegevens konden niet worden verwijderd; de downloadengine bevestigde dit niet';
  @override
  String delete_local_files_failed({required Object n}) =>
      '${n} lokale bestand(en) konden niet worden verwijderd; ze zijn mogelijk nog in gebruik';
  @override
  String batch_hidden_by_filter_note({required Object n}) =>
      'Nog ${n} geselecteerde items zijn verborgen door het huidige filter en worden niet verwerkt.';
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
  String get manga_online_series_empty => 'Deze serie bevat geen delen.';
  @override
  String sync_peer_book_delete_confirm({required Object name}) =>
      '"${name}" van het gekoppelde apparaat verwijderen? De bestanden en leesvoortgang daar worden definitief verwijderd en dit apparaat heeft geen kopie. Dit kan niet ongedaan worden gemaakt.';
  @override
  String sync_peer_video_delete_confirm({required Object name}) =>
      '"${name}" uit de bibliotheek van het gekoppelde apparaat verwijderen? Het videobestand dat dat apparaat zelf heeft geïmporteerd blijft bewaard. Dit kan niet ongedaan worden gemaakt.';
  @override
  String get storage_entry_delete_files_confirm_body =>
      'Wordt meteen van de schijf verwijderd. Niets in je bibliotheek verwijst ernaar: het zijn cache-, geëxporteerde of opnieuw te downloaden gegevens.';
  @override
  String get manga_series_refresh => 'Hoofdstukken vernieuwen';
  @override
  String get manga_series_refresh_failed => 'Kon niet vernieuwen vanaf de bron';
  @override
  String get manga_series_source_disabled =>
      'Deze bron is niet geïnstalleerd of is uitgeschakeld';
  @override
  String get manga_series_platform_unsupported =>
      'Deze bron is niet beschikbaar op dit platform';
  @override
  String get manga_series_offline_hint =>
      'De op dit apparaat opgeslagen hoofdstukken worden getoond';
  @override
  String get manga_series_no_chapters => 'Nog geen hoofdstukken';
  @override
  String get manga_series_all_read => 'Alle hoofdstukken zijn gelezen';
  @override
  String get manga_series_sort_newest => 'Nieuwste eerst';
  @override
  String get manga_series_sort_oldest => 'Oudste eerst';
  @override
  String get manga_series_unread_only => 'Alleen ongelezen';
  @override
  String get manga_series_mark_read => 'Markeren als gelezen';
  @override
  String get manga_series_mark_unread => 'Markeren als ongelezen';
  @override
  String get manga_series_mark_previous_read =>
      'Deze en eerdere als gelezen markeren';
  @override
  String get manga_series_local_volume => 'Lokaal deel';
  @override
  String get manga_series_volume_info => 'Deel';
  @override
  String get manga_series_page_count => 'Pagina\'s';
  @override
  String get manga_series_chapters_action => 'Hoofdstukken';
  @override
  String get manga_series_next_chapter => 'Volgend hoofdstuk';
  @override
  String get manga_series_previous_chapter => 'Vorig hoofdstuk';
  @override
  String get manga_series_last_chapter_reached =>
      'Dit is het nieuwste hoofdstuk';
  @override
  String get manga_series_first_chapter_reached =>
      'Dit is het eerste hoofdstuk';
  @override
  String get manga_series_open_series => 'Werkpagina';
  @override
  String manga_series_read_progress({
    required Object page,
    required Object total,
  }) => 'Gelezen tot pagina ${page} van ${total}';
  @override
  String manga_series_read_progress_partial({required Object page}) =>
      'Gelezen tot pagina ${page}';
  @override
  String mihon_store_extension_count({required Object count}) =>
      '${count} extensies';
  @override
  String mihon_extension_sources_more({required Object count}) =>
      'Alle ${count} bronnen tonen';
  @override
  String get mihon_extension_sources_less => 'Minder bronnen tonen';
  @override
  String get options_website => 'Officiële website bezoeken';
  @override
  String get video_setting_mpv_group_hdr => 'HDR';
  @override
  String get video_setting_hdr_tone_mapping => 'HDR-tonemapping';
  @override
  String get video_setting_hdr_tone_mapping_hint =>
      'Curve die wordt gebruikt als een HDR-bron op een SDR-scherm moet worden geperst. ‘Automatisch’ laat mpv per bron kiezen.';
  @override
  String get video_setting_hdr_compute_peak => 'Dynamische piekdetectie';
  @override
  String get video_setting_hdr_compute_peak_hint =>
      'Meet de echte piekhelderheid van elk beeld in plaats van te vertrouwen op de metadata van de bron. Betere highlights, kost wat GPU.';
  @override
  String get video_setting_hdr_auto => 'Automatisch';
  @override
  String get video_setting_hdr_on => 'Aan';
  @override
  String get video_setting_hdr_off => 'Uit';
  @override
  String get video_discovery_cancel_downloads_title => 'Downloads annuleren?';
  @override
  String video_discovery_cancel_downloads_body({required Object n}) =>
      '${n} downloadtaak/-taken voor deze titel worden gestopt. Al gedownloade delen blijven op schijf staan; je kunt de download later opnieuw starten.';
  @override
  String get video_discovery_cancel_downloads_failed =>
      'Kon de download niet annuleren. De taak is mogelijk al klaar, of de download-backend is niet beschikbaar.';
  @override
  String get gal_hook_click_lookup => 'Tik op een woord om het op te zoeken';
  @override
  String get gal_hook_click_lookup_hint =>
      'Uit betekent dat klikken op de tekst nooit een opzoeking start — handig met doorklikken aan, als je niet per ongeluk een woord wilt raken.';
  @override
  String get gal_hook_lookup_trigger => 'Opzoekknop';
  @override
  String get gal_hook_lookup_trigger_hint =>
      'Welke muisknop het woord onder de aanwijzer opzoekt. Los van de schakelaar hierboven: je kunt tikken-om-op-te-zoeken uitzetten en toch met een zijknop opzoeken.';
  @override
  String get gal_hook_lookup_trigger_left => 'Left click';
  @override
  String get gal_hook_lookup_trigger_middle => 'Middle click';
  @override
  String get gal_hook_lookup_trigger_side => 'Side button';
  @override
  String get gal_hook_toolbar_auto_hide => 'Werkbalk automatisch verbergen';
  @override
  String get gal_hook_toolbar_auto_hide_hint =>
      'Verbergt de werkbalk tot de aanwijzer het tekstvak bereikt, zoals LunaHook. Verborgen is echt verborgen — die pixels gaan terug naar het spel.';
  @override
  String get gal_hook_passthrough_blocks_mouse =>
      'Tekst vangt nog klikken tijdens doorklikken';
  @override
  String get gal_hook_passthrough_blocks_mouse_hint =>
      'Aan: tekstregels blijven klikken aannemen, zodat je een woord kunt aantikken. Uit: de hele overlay is transparant voor de muis — je klikt wat eronder ligt, maar woorden aantikken werkt niet meer.';
  @override
  String get floating_lyric_topmost => 'Altijd op de voorgrond';
  @override
  String get gal_hook_fold_progressive_lines =>
      'Opgesplitste dialoogregels samenvoegen';
  @override
  String get gal_hook_fold_progressive_lines_hint =>
      'Sommige engines tekenen bij elke klik de hele regel opnieuw, waardoor één regel meerdere keren wordt vastgelegd. Vouw die momentopnamen samen tot één regel.';
  @override
  String get gal_hook_ingame_lookup_engine_unsupported =>
      'Deze game-engine ondersteunt opzoeken in het spel nog niet';
  @override
  String get gal_hook_ingame_lookup_version_unsupported =>
      'Deze spelversie staat nog niet op de lijst met ondersteunde versies';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copy =>
      'SHA-256 van het spelbestand kopiëren';
  @override
  String get gal_hook_ingame_lookup_exe_hash_unavailable =>
      'Kan het spelbestand niet lezen';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copied =>
      'SHA-256 van het spelbestand gekopieerd';
  @override
  String get download_tracker_section => 'Tracker-abonnement';
  @override
  String get download_tracker_auto_add =>
      'Geabonneerde trackers automatisch aan nieuwe downloads toevoegen';
  @override
  String get download_tracker_auto_add_hint =>
      'De lijst wordt 6 uur gecachet. Een mislukt abonnement blokkeert de download niet.';
  @override
  String get download_tracker_url => 'Abonnements-URL';
  @override
  String get download_tracker_refresh => 'Trackers ophalen';
  @override
  String get download_tracker_preview_empty =>
      'Haal het abonnement op om de ondersteunde HTTP-, HTTPS- en UDP-trackers te bekijken.';
  @override
  String download_tracker_preview_count({required Object count}) =>
      '${count} trackers opgehaald';
  @override
  String download_tracker_fetch_failed({required Object message}) =>
      'Kan de trackers niet ophalen: ${message}';
  @override
  String get anki_connect_port_auto_fix => 'Naar een vrije poort wisselen';
  @override
  String get anki_connect_port_auto_fix_hint =>
      'Kiest een vrije poort en schrijft die zowel in Hibiki als in de AnkiConnect-add-onconfiguratie. Herstart Anki om het toe te passen.';
  @override
  String anki_connect_port_auto_fix_done({required Object port}) =>
      'AnkiConnect gebruikt nu poort ${port}. Herstart Anki en probeer het opnieuw.';
  @override
  String anki_connect_port_auto_fix_manual({required Object port}) =>
      'Hibiki gebruikt nu poort ${port}, maar de AnkiConnect-add-onconfiguratie is niet gevonden. Zet webBindPort in Anki (Extra → Add-ons → AnkiConnect → Configuratie) ook op ${port} en herstart Anki.';
  @override
  String get anki_connect_port_auto_fix_none =>
      'Geen vrije poort gevonden op deze machine.';
  @override
  String get onboarding_action_badge_required => 'Verplicht';
  @override
  String get onboarding_action_badge_recommended => 'Aanbevolen';
  @override
  String get onboarding_action_badge_optional => 'Optioneel';
  @override
  String get onboarding_pack_action_download_desc =>
      'Downloadt het hele pakket op de achtergrond en importeert het daarna. Je kunt altijd annuleren; de volgende keer gaat het verder waar het gebleven was.';
  @override
  String get onboarding_pack_action_import_existing_desc =>
      'Het pakket is al gedownload; hiermee importeer je het. Kies «Samenvoegen» in het bevestigingsvenster, dan blijft je bestaande data ongemoeid.';
  @override
  String get onboarding_pack_action_pick_desc =>
      'Heb je de zip van het pakket al ergens anders vandaan? Importeer hem van schijf en sla de download helemaal over.';
  @override
  String get onboarding_pack_action_website =>
      'Downloadpagina van de website openen';
  @override
  String get onboarding_pack_action_website_desc =>
      'Opent de officiële site in je browser. In het pakketgedeelte staan losse deel-links die je aan een downloadmanager kunt geven; kom daarna hier terug en gebruik «Kies een lokaal pakketbestand» om te importeren wat je hebt.';
  @override
  String get onboarding_pack_action_dictionary_desc =>
      'Leer je een andere taal dan Japans? Sla het pakket over en importeer hier woordenboeken voor je eigen taal.';
  @override
  String get onboarding_pack_action_audio_desc =>
      'Waar de uitspraakaudio vandaan komt. Het pakket dekt Japans en Engels al; voeg hier online bronnen toe voor andere talen.';
  @override
  String get onboarding_anki_action_test_desc =>
      'Controleert of Fushi Anki kan bereiken en laadt je decks en notitietypes. Er wordt nog niets aangemaakt.';
  @override
  String get onboarding_anki_action_refresh_desc =>
      'Laadt decks en notitietypes opnieuw uit Anki. Gebruik dit nadat je in Anki een nieuw deck hebt gemaakt.';
  @override
  String get onboarding_anki_action_get_ankidroid_desc =>
      'Opent de storepagina van AnkiDroid. Fushi schrijft zijn kaarten daarin, dus het moet eerst geïnstalleerd zijn.';
  @override
  String get onboarding_anki_action_get_anki_desc =>
      'Opent de downloadpagina van Anki. Installeer Anki en laat het draaien terwijl je kaarten maakt.';
  @override
  String get onboarding_anki_action_install_addon_desc =>
      'Pakt de meegeleverde AnkiConnect-add-on voor je uit in Anki; daarmee kan Fushi ermee praten. Start Anki daarna opnieuw op.';
  @override
  String get onboarding_step_anki_action_desc =>
      'Kaartsjabloon, veldtoewijzing, schermafbeeldingen en audio: de details van hoe een gemaakte kaart eruitziet. Het deck en notitietype hierboven zijn genoeg om te beginnen, dus open dit alleen als je wilt veranderen hoe kaarten worden opgebouwd.';
  @override
  String get onboarding_step_backup_action_desc =>
      'Kies een back-upbackend en meld je aan, zodat je bibliotheek een verloren of vervangen apparaat overleeft.';
  @override
  String get onboarding_step_interconnect_action_desc =>
      'Koppelt dit apparaat aan je andere apparaten om één bibliotheek te delen en de voortgang gelijk te houden.';
  @override
  String get onboarding_step_extension_action_desc =>
      'Laat zien hoe je de browserextensie installeert en met Fushi verbindt, zodat je ook op webpagina’s woorden kunt opzoeken.';
  @override
  String get onboarding_step_fonts_action_desc =>
      'Voeg je eigen lettertypebestanden toe en kies welk lettertype elke taal gebruikt.';
  @override
  String get onboarding_pack_sources_hint =>
      'Wordt in parallelle stukken tegelijk van GitHub, de officiële site en een reservespiegel gehaald, met een checksum per stuk. Fushi meet de bronnen onderweg en geeft meer stukken aan degene die op dat moment het snelst is, dus hier valt niets te kiezen.';
  @override
  String get video_setting_hdr_output => 'HDR-/10-bits-uitvoer';
  @override
  String get video_setting_hdr_output_hint =>
      'Alleen Windows. «Automatisch» stuurt HDR-bronnen via een native videovenster rechtstreeks naar een HDR-scherm; «Altijd» gebruikt dat venster voor elke video (10-bits uitvoer); «Uit» houdt de standaardrenderer aan.';
  @override
  String get video_setting_hdr_output_auto => 'Automatisch';
  @override
  String get video_setting_hdr_output_always => 'Altijd';
  @override
  String get video_setting_hdr_output_off => 'Uit';
  @override
  String get network_proxy_auto_hint =>
      'Geldt voor alle internetverzoeken van de app: updates, cloudsynchronisatie, woordenboeken, downloads, ondertitels en metadata. Laat leeg voor automatisch: omgevingsvariabelen, daarna de ingeschakelde systeemproxy. P2P-overdrachten (torrent) maken standaard rechtstreeks verbinding; je kunt ze hieronder apart inschakelen.';
  @override
  String get network_proxy_hint =>
      'host:poort, bijv. 127.0.0.1:7890 (alleen IPv4/host)';
  @override
  String get network_proxy_invalid => 'Ongeldige proxy. Gebruik host:poort';
  @override
  String get network_proxy_label => 'Netwerkproxy';
  @override
  String get section_network => 'Netwerk';
  @override
  String get network_proxy_p2p_label =>
      'P2P-verkeer (torrent) via de proxy leiden';
  @override
  String get network_proxy_p2p_warning =>
      'Standaard uit: P2P maakt rechtstreeks verbinding. Via de proxy kan de snelheid dalen en veel proxyaanbieders verbieden BitTorrent-verkeer: je proxyaccount kan worden afgeknepen, gewaarschuwd of opgezegd. Geldt alleen voor de ingebouwde engine; een externe qBittorrent gebruikt zijn eigen proxy-instellingen.';
  @override
  String get video_ajatt_settings_hint =>
      'Gratis archief met Japanse ondertitels (kitsunekko-mirror). Geen account nodig; bestanden worden van GitHub gedownload.';
  @override
  String get video_ajatt_enabled_hint =>
      'Uit betekent dat het AJATT-archief wordt overgeslagen bij het zoeken naar ondertitels.';
  @override
  String get video_subtitle_workbench_title => 'Ondertitels';
  @override
  String get video_subtitle_scope_episode => 'Deze aflevering';
  @override
  String get video_subtitle_scope_collection => 'Hele verzameling';
  @override
  String get video_subtitle_search_open => 'Ondertitels online zoeken';
  @override
  String get video_subtitle_collection_settings =>
      'Ondertitelinstellingen van verzameling';
  @override
  String get video_subtitle_collection_language => 'Standaard ondertiteltaal';
  @override
  String get video_subtitle_collection_language_hint =>
      'Geldt voor elke aflevering in deze verzameling. Leeg = de taal van de video volgen.';
  @override
  String get video_subtitle_collection_release_group => 'Voorkeursversie';
  @override
  String get video_subtitle_collection_release_group_hint =>
      'Bulkdownloads kiezen eerst deze versie zodat het hele seizoen dezelfde timing deelt.';
  @override
  String get video_subtitle_collection_release_group_any => 'Elke versie';
  @override
  String get video_subtitle_source_label => 'Bron';
  @override
  String get video_subtitle_collection_members_hint =>
      'Afleveringen worden gekoppeld op het nummer in de bestandsnaam; seizoenspakketten worden automatisch gesplitst.';
  @override
  String get video_subtitle_adjust_title => 'Ondertitels aanpassen';
  @override
  String get video_subtitle_adjust_collapse => 'Inklappen';
  @override
  String get video_subtitle_adjust_expand => 'Uitklappen';
  @override
  String get settings_section_reading_stats => 'Leesstatistieken';
  @override
  String get reading_stats_idle_timeout => 'Inactiviteitstime-out';
  @override
  String get reading_stats_idle_timeout_hint =>
      'Stop met het tellen van leestijd na dit aantal minuten zonder bladeren, scrollen of een woord opzoeken. Alleen voor romans, pdf\'s en manga; video telt zolang het afspeelt.';
  @override
  String get web_video_track_menu => 'Ondertitelspoor';
  @override
  String get web_video_track_live => 'Live-ondertitels (van de pagina)';
  @override
  String get web_video_no_tracks => 'Nog geen ondertitels vastgelegd';
  @override
  String get web_video_hide_native_subtitles =>
      'Ondertitels van de site verbergen';
  @override
  String get web_video_import_hint =>
      'Dit is een webpagina (geen directe stream). Deze wordt in de ingebouwde webspeler geopend.';
  @override
  String get web_video_platform_unsupported =>
      'De ingebouwde webspeler is voorlopig alleen beschikbaar op Windows.';
  @override
  String get web_video_mine_queue_run => 'Wachtende kaarten aanmaken';
  @override
  String get web_video_mine_queue_stop => 'Kaarten aanmaken stoppen';
  @override
  String get web_video_mine_queue_empty => 'Geen wachtende kaarten';
  @override
  String web_video_mine_queued({required Object count}) =>
      'In wachtrij voor kaart aanmaken (${count} wachtend)';
  @override
  String web_video_mine_queue_running({
    required Object done,
    required Object total,
  }) => 'Kaarten aanmaken ${done}/${total}…';
  @override
  String web_video_mine_queue_finished({
    required Object ok,
    required Object failed,
  }) => 'Kaarten aangemaakt: ${ok}, mislukt: ${failed}';
  @override
  String get web_video_hosting_menu => 'Afspeelmodus';
  @override
  String get web_video_hosting_builtin =>
      'Ingebouwd (1080p; superresolutie, schermafbeeldingen en kaarten beschikbaar)';
  @override
  String get web_video_hosting_windowed =>
      'Native venster (4K, hardware-DRM; kaarten komen in de wachtrij)';
  @override
  String web_video_mine_switch_builtin({required Object count}) =>
      'Schakel naar ingebouwde modus om ${count} wachtende kaarten aan te maken';
  @override
  String get onboarding_step_click_lookup_title =>
      'Tik om woorden op te zoeken';
  @override
  String get onboarding_click_lookup_tap_title => 'Tik op de tekst';
  @override
  String get onboarding_click_lookup_nested_title => 'Zoek verder in de pop-up';
  @override
  String get onboarding_click_lookup_nested_body =>
      'Tik op een ander woord in een betekenis om een niveau dieper te zoeken. Ga terug of tik ernaast om één niveau te sluiten.';
  @override
  String get onboarding_click_lookup_mine_title => 'Maak er een kaart van';
  @override
  String get onboarding_click_lookup_mine_body =>
      'Klopt de betekenis? Tik dan op + om het woord, de zin, de audio en de afbeelding naar de kaartmaker te sturen.';
  @override
  String get onboarding_step_global_lookup_title =>
      'Tekst buiten Fushi opzoeken';
  @override
  String get onboarding_global_lookup_windows_body =>
      'Op Windows selecteer je tekst in een andere app en roep je het woordenboek op zonder terug te schakelen naar Fushi.';
  @override
  String get onboarding_global_lookup_windows_select_title =>
      'Selecteer tekst in een willekeurige app';
  @override
  String get onboarding_global_lookup_windows_shortcut_title =>
      'Druk op Ctrl+Alt+D';
  @override
  String get onboarding_global_lookup_windows_shortcut_body =>
      'Dit is de standaard globale sneltoets. Fushi pakt de huidige selectie en opent een zoekkaart bij de muisaanwijzer.';
  @override
  String get onboarding_global_lookup_windows_customize_title =>
      'Pas de sneltoets aan als je wilt';
  @override
  String get onboarding_global_lookup_windows_customize_body =>
      'Open Instellingen → Sneltoetsen → Globaal (buiten de app) om een andere toetsencombinatie toe te wijzen.';
  @override
  String get onboarding_global_lookup_windows_action =>
      'Sneltoetsinstellingen openen';
  @override
  String get onboarding_global_lookup_windows_action_desc =>
      'Hiermee wijzig je de sneltoets voor opzoeken buiten de app. De standaard Ctrl+Alt+D werkt al, dus dit is optioneel.';
  @override
  String get onboarding_global_lookup_android_body =>
      'Op Android geeft het systeem de geselecteerde tekst aan Fushi door via het tekstmenu of het deelmenu. Een instelbare globale sneltoets is er niet.';
  @override
  String get onboarding_global_lookup_android_select_title =>
      'Selecteer tekst in een andere app';
  @override
  String get onboarding_global_lookup_android_open_title => 'Kies Fushi';
  @override
  String get onboarding_global_lookup_android_open_body =>
      'Tik op Fushi in het tekstselectiemenu. Staat het er niet bij, tik dan op Delen en kies Fushi in het deelmenu.';
  @override
  String get onboarding_global_lookup_android_continue_title =>
      'Gebruik de losse pop-up';
  @override
  String get onboarding_global_lookup_android_continue_body =>
      'Het zoekresultaat opent los van de oorspronkelijke app. Je kunt er meer woorden in aantikken en komt na het sluiten terug waar je was.';
  @override
  String get onboarding_feature_manual_resources =>
      'Woordenboeken en audio handmatig importeren';
  @override
  String get onboarding_feature_manual_resources_hint =>
      'Supplement the recommended pack, or import your own dictionaries, audiobooks, and pronunciation sources';
  @override
  String get onboarding_step_manual_resources_title =>
      'Woordenboeken en audio handmatig voorbereiden';
  @override
  String get onboarding_step_manual_resources_body =>
      'Use this alongside the recommended pack or on its own. Import at least one dictionary before the lookup tutorial; audiobook and pronunciation audio are optional supplements.';
  @override
  String get onboarding_manual_dictionary_action =>
      'Een woordenboek importeren';
  @override
  String get onboarding_manual_dictionary_action_desc =>
      'Open het woordenboekbeheer en importeer minstens één ondersteund woordenboekbestand of -archief. De zoekhandleidingen hebben pas zin als een zoekopdracht een betekenis oplevert.';
  @override
  String get onboarding_manual_audiobook_action =>
      'Een boek met luisterboekaudio importeren';
  @override
  String get onboarding_manual_audiobook_action_desc =>
      'Open de boekimport en kies het boek of de tekst, bijpassende ondertitels en een of meer audiobestanden. Zonder ondertitels kan Fushi de audio niet per zin uitlijnen.';
  @override
  String get onboarding_manual_pronunciation_action =>
      'Uitspraakaudio voor woorden instellen';
  @override
  String get onboarding_manual_pronunciation_action_desc =>
      'Voeg lokale of online uitspraakbronnen toe die woordenboekitems gebruiken. Dit staat los van de luisterboekaudio bij een boek.';
  @override
  String get onboarding_lookup_verify_action =>
      'Een woord in je woordenboek controleren';
  @override
  String get onboarding_lookup_verify_action_desc =>
      'Open het opzoeken, typ een willekeurig woord dat je leert en ga pas verder als het geïnstalleerde woordenboek een betekenis teruggeeft. De handleiding legt geen voorbeeldwoord vast.';
  @override
  String get onboarding_step_first_anki_card_title =>
      'Maak je eerste Anki-kaart';
  @override
  String get onboarding_step_first_anki_card_body =>
      'Deze stap verschijnt alleen als deze rondleiding al met Anki verbonden is en een bruikbare stapel en notitietype zijn gekozen.';
  @override
  String get onboarding_first_anki_lookup_title =>
      'Begin met een echt woordenboekresultaat';
  @override
  String get onboarding_first_anki_lookup_body =>
      'Zoek een woord op dat je geïnstalleerde woordenboek echt kent. Er is geen vast oefenwoord dat in jouw woordenboek zou kunnen ontbreken.';
  @override
  String get onboarding_first_anki_plus_title =>
      'Tik op de plusknop bij het item';
  @override
  String get onboarding_first_anki_plus_body =>
      'De plusknop opent de kaartmaker met het huidige woord, de lezing, de betekenis, de zin, de audio en de beschikbare afbeelding.';
  @override
  String get onboarding_first_anki_save_title => 'Controleer en bewaar';
  @override
  String get onboarding_first_anki_save_body =>
      'Bevestig de doelstapel, het notitietype en het veldvoorbeeld en sla dan op. Open Anki om te controleren of de eerste kaart is aangekomen.';
  @override
  String get onboarding_first_anki_action =>
      'Opzoeken openen en een kaart maken';
  @override
  String get onboarding_first_anki_action_desc =>
      'Neem een woord met een zichtbare betekenis, tik op de plusknop, controleer de velden en sla het op in de gekoppelde Anki-stapel.';
  @override
  String get onboarding_step_click_lookup_body =>
      'Controleer eerst een woord dat je geïnstalleerde woordenboek echt kent. Oefen daarna met datzelfde woord het direct opzoeken in boeken, in OCR-tekst van manga en in video-ondertitels.';
  @override
  String get onboarding_click_lookup_tap_body =>
      'Tik op de telefoon op een teken van het gecontroleerde woord; op de computer klik je er met links op. Fushi begint daar en pakt het langste passende woord.';
  @override
  String get onboarding_global_lookup_windows_select_body =>
      'Selecteer hetzelfde woord waarvan je al hebt gecontroleerd dat er een betekenis in het woordenboek staat, en laat de selectie staan.';
  @override
  String get onboarding_global_lookup_android_select_body =>
      'Houd datzelfde gecontroleerde woord ingedrukt en versleep daarna de selectiegrepen zodat het hele woord geselecteerd is.';
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
  String get delete_choices_remember => 'Deze keuzes onthouden';
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
