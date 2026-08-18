part of 'strings.g.dart';

// Path: <root>
class _StringsEs extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsEs.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.es,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ),
        super.build(
            cardinalResolver: cardinalResolver,
            ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <es>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  @override
  late final _StringsEs _root = this; // ignore: unused_field

  // Translations
  @override
  String get action_exit => 'Salir';
  @override
  String get action_favorite => 'Favorito';
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
  String get anki_allow_duplicates => 'Permitir duplicados';
  @override
  String get anki_allow_duplicates_hint =>
      'Omitir la comprobación de duplicados al añadir tarjetas';
  @override
  String get anki_card_action_failed => 'Card action failed. Please try again.';
  @override
  String get anki_compact_glossaries => 'Glosarios compactos';
  @override
  String get anki_compact_glossaries_hint =>
      'Usar formato compacto para las entradas del glosario';
  @override
  String get anki_connect_api_key => 'Clave de API';
  @override
  String get anki_connect_host => 'Servidor';
  @override
  String get anki_connect_port => 'Puerto';
  @override
  String get anki_create_lapis => 'Crear mazo Lapis';
  @override
  String get anki_create_lapis_exists =>
      'El tipo de nota y el mazo Lapis ya existen: se han seleccionado.';
  @override
  String anki_create_lapis_failed({required Object error}) =>
      'No se pudo crear el mazo Lapis: ${error}';
  @override
  String get anki_create_lapis_hint =>
      'Añade el tipo de nota Lapis y un mazo Lapis a Anki y los selecciona.';
  @override
  String get anki_create_lapis_success => 'Tipo de nota y mazo Lapis creados.';
  @override
  String get anki_deck => 'Mazo';
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
      'La colección de AnkiDroid no está disponible ahora mismo. Abre AnkiDroid al menos una vez, asegúrate de que no está sincronizando y de que la API está activada, y vuelve a intentarlo.';
  @override
  String get anki_error_connection_refused =>
      'No se pudo conectar con Anki: conexión rechazada. Asegúrate de que Anki Desktop esté abierto y el complemento AnkiConnect instalado.';
  @override
  String get anki_error_connection_timeout =>
      'No se pudo conectar con Anki: se agotó el tiempo de espera. Revisa el servidor, el puerto y el cortafuegos.';
  @override
  String get anki_error_connection_unknown =>
      'No se pudo exportar a Anki: error de conexión inesperado. Consulta el registro de errores.';
  @override
  String get anki_error_http =>
      'No se pudo exportar a Anki: ocurrió un error HTTP al contactar con AnkiConnect.';
  @override
  String get anki_error_permission_denied =>
      'AnkiDroid hasn\'t granted card access permission. Approve the system permission dialog that just appeared, then tap the button again to export.';
  @override
  String get anki_fetch => 'Actualizar mazos y tipos de nota';
  @override
  String get anki_fetching => 'Obteniendo...';
  @override
  String get anki_field_mappings => 'Mapeo de campos';
  @override
  String get anki_field_not_mapped => 'Sin mapear';
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
  String get anki_not_configured =>
      'Toca Actualizar para cargar tus mazos y tipos de nota de Anki.';
  @override
  String get anki_note_open_failed => 'Could not open the card in Anki.';
  @override
  String get anki_note_type => 'Tipo de nota';
  @override
  String get anki_note_viewer_empty => 'This card has no readable fields.';
  @override
  String get anki_note_viewer_open_in_anki => 'Open in Anki';
  @override
  String get anki_note_viewer_title => 'Existing card';
  @override
  String get anki_open_no_card => 'No card found for this word in Anki.';
  @override
  String get anki_overwrite_scope => 'Alcance de sobrescritura';
  @override
  String get anki_overwrite_scope_all => 'Todas las tarjetas coincidentes';
  @override
  String get anki_overwrite_scope_hint =>
      'Qué tarjetas ya creadas puede sobrescribir el ✓ verde';
  @override
  String get anki_overwrite_scope_latest => 'Solo la última tarjeta';
  @override
  String get anki_refresh_hint =>
      'Después de crear o renombrar un mazo o tipo de nota en Anki, toca aquí para actualizar.';
  @override
  String anki_select_handlebar({required Object field}) =>
      'Seleccionar valor para ${field}';
  @override
  String get anki_settings_label => 'Configuración de Anki';
  @override
  String get anki_tag_default_section => 'Etiquetas predeterminadas';
  @override
  String get anki_tag_include_category =>
      'Añadir etiqueta de categoría de origen';
  @override
  String get anki_tag_include_category_hint =>
      'Los libros llevan «book», los vídeos «video» y los juegos «game»';
  @override
  String get anki_tag_include_fushi => 'Añadir la etiqueta «fushi»';
  @override
  String get anki_tag_include_fushi_hint =>
      'Marca todas las tarjetas creadas por Fushi';
  @override
  String get anki_tags => 'Etiquetas';
  @override
  String get anki_tags_hint =>
      'Etiquetas separadas por espacios añadidas a cada tarjeta';
  @override
  String get app_icon_label => 'Icono de la app';
  @override
  String get app_icon_presets => 'Presets';
  @override
  String get app_ui_scale => 'Tamaño de la interfaz';
  @override
  String get app_ui_scale_hint =>
      'Scales app text and spacing. Lower it on large screens if controls feel oversized.';
  @override
  String get app_version => 'Versión de la app';
  @override
  String get apply_theme => 'Aplicar tema';
  @override
  String get audio_clip_failed =>
      'No se pudo extraer el fragmento de audio: la fuente de audio puede faltar o no poder leerse';
  @override
  String get audio_import => 'Importar audio';
  @override
  String get audio_panel_add_audio => 'Añadir audio';
  @override
  String get audio_panel_auto => 'Automático';
  @override
  String get audio_panel_pick_new_subtitle =>
      'Elegir nuevo archivo de subtítulos';
  @override
  String get audio_source_added => 'Fuente de audio añadida';
  @override
  String audio_source_dns_error({required Object host}) =>
      'Error de conexión de fuente de audio: no se puede resolver "${host}" — verifica tu red o elimina esta fuente en ajustes';
  @override
  String get audio_source_edit_target_gone =>
      'That audio source no longer exists — edit discarded';
  @override
  String get audio_source_edit_url => 'Edit audio source link';
  @override
  String audio_source_error({required Object detail}) =>
      'Error de fuente de audio: ${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi Interconnect';
  @override
  String get audio_source_loopback_warning =>
      'Points at this device — re-point after switching machines';
  @override
  String audio_source_request_error({required Object detail}) =>
      'Error en solicitud de fuente de audio: ${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      'Tiempo de espera de fuente de audio: "${host}" — servidor no responde, inténtalo más tarde o cambia la fuente';
  @override
  String get audio_source_updated => 'Audio source updated';
  @override
  String get audio_source_url_invalid =>
      'El enlace debe ser http(s) y contener un marcador de término o lectura';
  @override
  String get audio_unavailable => 'No se encontró audio.';
  @override
  String get audio_volume => 'Volumen';
  @override
  String get audiobook_attached => 'Audiolibro adjunto';
  @override
  String get audiobook_audio_missing => 'Audio file missing';
  @override
  String get audiobook_background_play => 'Seguir tras salir';
  @override
  String get audiobook_background_play_hint =>
      'Si está desactivado, el audiolibro se detiene al salir del lector. Actívalo para seguir en segundo plano.';
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
  String get audiobook_import => 'Importar audiolibro';
  @override
  String get audiobook_import_error => 'Error en la importación';
  @override
  String audiobook_import_error_copy_failed({required Object name}) =>
      'Error al copiar el archivo: ${name}';
  @override
  String audiobook_import_error_disk_full({required Object size}) =>
      'Espacio en disco insuficiente. Requerido: ${size}';
  @override
  String get audiobook_import_success => 'Audiolibro importado';
  @override
  String get audiobook_load_error => 'Error al cargar el audiolibro.';
  @override
  String get audiobook_pick_alignment => 'Elegir archivo de alineación';
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
  String get auto_add_book_name_to_tags =>
      'Añadir título del libro a las etiquetas automáticamente';
  @override
  String auto_chapter({required Object n}) => 'Capítulo ${n}';
  @override
  String get auto_read_on_lookup => 'Leer palabra automáticamente al buscar';
  @override
  String get auto_search => 'Búsqueda automática';
  @override
  String get auto_search_debounce_delay => 'Retardo de búsqueda automática';
  @override
  String get auto_select_search_window =>
      'Selección automática de ventana de búsqueda';
  @override
  String get auto_select_search_window_hint =>
      'Probar múltiples tamaños de ventana al importar, elegir el que tenga la mejor tasa de acierto';
  @override
  String get av_sync => 'Sincronización A/V';
  @override
  String get av_sync_reset => 'Restablecer';
  @override
  String get back => 'Atrás';
  @override
  String get background_color => 'Color de fondo';
  @override
  String get background_color_desc => 'Fondo de la página del lector';
  @override
  String get backup_category_audiobooks => 'Audio de audiolibros';
  @override
  String get backup_category_audiobooks_desc => 'Audiobook audio and alignment';
  @override
  String get backup_category_books => 'Libros';
  @override
  String get backup_category_books_desc =>
      'Book files (EPUB and extracted content)';
  @override
  String get backup_category_dictionary => 'Diccionarios';
  @override
  String get backup_category_dictionary_desc =>
      'Imported dictionaries and their files';
  @override
  String get backup_category_fonts => 'Fuentes personalizadas';
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
  String get backup_category_videos => 'Vídeos';
  @override
  String get backup_category_videos_desc => 'Local video files';
  @override
  String get backup_export => 'Exportar copia de seguridad';
  @override
  String get backup_export_books_all => 'All books';
  @override
  String backup_export_books_selected({required Object count}) =>
      '${count} books selected';
  @override
  String get backup_export_categories_hint =>
      'Tick what to pack into the backup. Unchecking Books removes those books entirely — their content and records go with them.';
  @override
  String get backup_export_categories_title => 'Elige qué exportar';
  @override
  String get backup_export_choose_books => 'Choose books';
  @override
  String get backup_export_choose_videos => 'Choose videos';
  @override
  String backup_export_failed({required Object message}) =>
      'Error al exportar la copia de seguridad: ${message}';
  @override
  String get backup_export_hint =>
      'Elige qué incluir; la base de datos (libros, progreso, estadísticas) siempre se incluye. Desmarca elementos grandes (audio local, vídeos) para reducir el tamaño de la copia.';
  @override
  String get backup_export_no_books => 'No books to choose from';
  @override
  String get backup_export_no_videos => 'No videos to choose from';
  @override
  String get backup_export_select_all => 'Select all';
  @override
  String get backup_export_select_none => 'Select none';
  @override
  String get backup_export_success =>
      'Copia de seguridad exportada correctamente';
  @override
  String get backup_export_videos_all => 'All videos';
  @override
  String backup_export_videos_selected({required Object count}) =>
      '${count} videos selected';
  @override
  String get backup_exporting => 'Creando copia de seguridad…';
  @override
  String get backup_import => 'Importar copia de seguridad';
  @override
  String backup_import_confirm(
          {required Object date,
          required Object bookCount,
          required Object statsCount}) =>
      'Esto reemplazará todos los datos actuales con la copia de seguridad del ${date}.\n\n${bookCount} libros, ${statsCount} registros de estadísticas.\n\nLa app se reiniciará tras la restauración.';
  @override
  String get backup_import_confirm_title => '¿Restaurar copia de seguridad?';
  @override
  String get backup_import_contents_hint => 'Untick an item to skip it.';
  @override
  String get backup_import_contents_title => 'This backup contains';
  @override
  String backup_import_failed({required Object message}) =>
      'Error al importar la copia de seguridad: ${message}';
  @override
  String get backup_import_hint =>
      'Restaura desde un archivo de copia de seguridad. La app se reiniciará.';
  @override
  String get backup_import_invalid => 'Archivo de copia de seguridad no válido';
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
  String get backup_import_preserve_sync_note =>
      'Se conservarán los ajustes de sincronización de este dispositivo (cuenta y credenciales).';
  @override
  String get backup_import_restart_button => 'Restart now';
  @override
  String get backup_import_settings_off_hint =>
      'Conserva las fuentes/apariencia/perfiles de este dispositivo; restaura solo los libros y los datos de lectura.';
  @override
  String get backup_import_settings_on_hint =>
      'Restauración completa: las fuentes, la apariencia y los perfiles provienen de la copia de seguridad.';
  @override
  String get backup_import_settings_toggle => 'Importar ajustes y perfiles';
  @override
  String get backup_import_success => 'Copia restaurada. Reiniciando…';
  @override
  String get backup_import_validating_hint =>
      'Checking and previewing the backup file. This may take a moment.';
  @override
  String get backup_import_validating_title => 'Reading backup…';
  @override
  String backup_schema_newer({required Object version}) =>
      'Esta copia de seguridad requiere una versión más reciente de la app (esquema ${version}). Actualiza primero.';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      'Added ${n} item(s) to the collection.';
  @override
  String batch_delete_confirm({required Object n}) =>
      '¿Eliminar ${n} libro(s)? Esta acción no se puede deshacer.';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      'Delete ${n} video(s)? This cannot be undone.';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      'Delete ${n} media and dissolve ${m} collection(s)? This cannot be undone.';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      'Deleted ${n} media, dissolved ${m} collection(s).';
  @override
  String batch_delete_success({required Object n}) =>
      '${n} libro(s) eliminado(s).';
  @override
  String batch_delete_success_video({required Object n}) =>
      'Deleted ${n} video(s).';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      'Dissolve ${m} collection(s)? Grouping is removed; the media is kept.';
  @override
  String batch_dissolve_success({required Object m}) =>
      'Dissolved ${m} collection(s).';
  @override
  String get batch_invert_selection => 'Invertir';
  @override
  String get batch_select => 'Seleccionar';
  @override
  String get batch_select_all => 'Todos';
  @override
  String batch_selected_count({required Object n}) => '${n} seleccionado(s)';
  @override
  String get batch_tag_add => 'Añadir';
  @override
  String batch_tag_added({required Object name, required Object n}) =>
      'Etiqueta "${name}" añadida a ${n} libro(s).';
  @override
  String batch_tag_added_video({required Object name, required Object n}) =>
      'Added tag "${name}" to ${n} video(s).';
  @override
  String get batch_tag_apply => 'Aplicar';
  @override
  String get batch_tag_keep => 'Mantener';
  @override
  String get batch_tag_remove => 'Eliminar';
  @override
  String batch_tag_removed({required Object name, required Object n}) =>
      'Etiqueta "${name}" eliminada de ${n} libro(s).';
  @override
  String batch_tag_removed_video({required Object name, required Object n}) =>
      'Removed tag "${name}" from ${n} video(s).';
  @override
  String get batch_tag_title => 'Gestionar etiquetas';
  @override
  String get book_continue_reading => 'Continue Reading';
  @override
  String get book_css_editor_cancel => 'Cancelar';
  @override
  String get book_css_editor_confirm_reset =>
      '¿Restablecer el CSS de este archivo al predeterminado?';
  @override
  String get book_css_editor_confirm_reset_all =>
      '¿Restablecer el CSS de TODOS los archivos al predeterminado?';
  @override
  String get book_css_editor_discard => 'Descartar';
  @override
  String get book_css_editor_edit_css => 'Editar CSS del libro';
  @override
  String get book_css_editor_no_css_files =>
      'No se encontraron archivos CSS en este libro.';
  @override
  String get book_css_editor_no_extract_dir =>
      'Directorio del libro no encontrado. Reimporte el libro para editar el CSS.';
  @override
  String get book_css_editor_reset_all => 'Restablecer todo';
  @override
  String get book_css_editor_reset_current => 'Restablecer actual';
  @override
  String get book_css_editor_reset_done => 'CSS restablecido.';
  @override
  String get book_css_editor_save => 'Guardar';
  @override
  String get book_css_editor_saved => 'CSS guardado.';
  @override
  String get book_css_editor_title => 'Editor CSS del libro';
  @override
  String get book_css_editor_unsaved_changes => 'Cambios sin guardar';
  @override
  String get book_css_editor_unsaved_changes_message =>
      'Tiene cambios sin guardar. ¿Descartarlos?';
  @override
  String get book_directory_not_found => 'Directorio del libro no encontrado.';
  @override
  String get book_edit_author => 'Autor';
  @override
  String get book_file_not_found => 'Archivo del libro no encontrado';
  @override
  String get book_import_duplicate_cancel => 'No, cancelar';
  @override
  String get book_import_duplicate_cancelled => 'Importación cancelada';
  @override
  String get book_import_duplicate_keep => 'Sí, añadir sufijo';
  @override
  String book_import_duplicate_message({required Object name}) =>
      'Ya existe un libro llamado "${name}". ¿Importarlo igualmente? "Sí" lo importa con un sufijo numerado; "No" cancela.';
  @override
  String get book_import_duplicate_title => 'Libro duplicado';
  @override
  String get book_mark_completed_action => 'Mark as completed';
  @override
  String get book_mark_uncompleted_action => 'Mark as not completed';
  @override
  String get book_marked_completed => 'Marked as completed';
  @override
  String get book_marked_uncompleted => 'Marked as not completed';
  @override
  String get book_mode => 'Modo de libro';
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
  String get book_search => 'Buscar en el libro';
  @override
  String get book_search_hint => 'Ingrese texto de búsqueda…';
  @override
  String get book_search_no_results => 'Sin resultados';
  @override
  String book_search_results({required Object n}) => '${n} resultado(s)';
  @override
  String get books => 'Libros';
  @override
  String get browser_extension_enable_server_first =>
      'Tip: enable "Yomitan API server" and set an API key above first, so the extension is auto-configured with a working connection.';
  @override
  String get browser_extension_mobile_unsupported =>
      'Los navegadores móviles no pueden cargar esta extensión. Usa la búsqueda dentro de la app en el lector o el reproductor de vídeo.';
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
      'Done. The extension is already set up to connect to Fushi for lookups — nothing to fill in by hand.';
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
  String get cancel => 'Cancelar';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      'Card cover fell back to a still frame (animated clip unavailable): ${reason}';
  @override
  String get card_duplicate => 'Tarjeta duplicada — no exportada.';
  @override
  String get card_export_failed => 'Error al exportar la tarjeta.';
  @override
  String card_export_failed_detail({required Object reason}) =>
      'Error al exportar la tarjeta: ${reason}';
  @override
  String get card_export_not_configured =>
      'Anki no configurado. Abre la configuración de Anki y toca Obtener.';
  @override
  String card_exported({required Object deck}) =>
      'Tarjeta exportada a 『${deck}』.';
  @override
  String card_exported_audio_failed({required Object reason}) =>
      'Tarjeta exportada, pero falló la descarga del audio (${reason}).';
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
  String get card_mined_without_sentence_audio =>
      'Tarjeta creada sin audio de frase (no se encontró para esta selección).';
  @override
  String get card_mining_pending => 'Adding card…';
  @override
  String card_overwritten({required Object deck}) =>
      'Tarjeta sobrescrita en 『${deck}』.';
  @override
  String get change_source => 'Cambiar fuente';
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
      'Capítulo ${idx} / ${total}${suffix} · ${pct}%';
  @override
  String get clear => 'Limpiar';
  @override
  String get clear_dictionary_description =>
      'Esto eliminará todos los resultados del diccionario del historial. ?Estás seguro?';
  @override
  String get clear_dictionary_title =>
      'Borrar historial de resultados del diccionario';
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
  String get collapse_dictionaries => 'Contraer diccionarios';
  @override
  String get collection_bookmark => 'Marcador';
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
  String get collection_mined => 'Creadas';
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
  String get collection_sentence => 'Oración';
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
  String get collections => 'Colecciones';
  @override
  String get color_container => 'Contenedor';
  @override
  String get color_container_desc => 'Fondo de pistas y barra de reproducción';
  @override
  String get color_link => 'Color de enlace';
  @override
  String get color_link_desc => 'Color de los hipervínculos del lector';
  @override
  String get color_primary => 'Primario';
  @override
  String get color_primary_desc => 'Resaltado de audio, botones, interruptores';
  @override
  String get color_sentence_audio_highlight => 'Resaltado de audio';
  @override
  String get color_sentence_audio_highlight_desc =>
      'Resaltado de sincronización de subtítulos del audiolibro';
  @override
  String get color_secondary => 'Secundario';
  @override
  String get color_secondary_desc =>
      'Entradas del diccionario, insignias de la estantería';
  @override
  String get color_tertiary => 'Terciario';
  @override
  String get color_tertiary_desc => 'Colecciones, estadísticas de lectura';
  @override
  String get columns_per_page => 'Columnas por página';
  @override
  String get combine_into_series => 'Combine into series';
  @override
  String get copied => 'Copied';
  @override
  String get copied_to_clipboard => 'Copiado al portapapeles.';
  @override
  String get copy => 'Copiar';
  @override
  String get copy_error => 'Copiar error';
  @override
  String get crash_dump_empty => 'No hay volcados de fallo';
  @override
  String crash_dump_label({required Object n}) => 'Volcados de fallo (${n})';
  @override
  String get crash_dump_open_folder => 'Abrir carpeta de volcados';
  @override
  String get crash_dump_privacy_notice =>
      'Los volcados de fallo (.dmp) contienen una instantánea de la memoria del proceso y pueden incluir texto que estabas leyendo, palabras que consultaste u otros datos de la app. Compártelos solo con desarrolladores de tu confianza.';
  @override
  String get crash_dump_share => 'Compartir volcado';
  @override
  String get crash_dump_share_subject => 'Volcado de fallo de Fushi';
  @override
  String get create_series => 'Create series';
  @override
  String get creator_action_add_to_stash => 'Agregar a reserva';
  @override
  String get creator_action_copy_to_clipboard => 'Copiar al portapapeles';
  @override
  String get creator_action_play_audio => 'Reproducir audio';
  @override
  String get creator_action_share => 'Compartir';
  @override
  String get creator_enhancement_audio_recorder => 'Grabadora';
  @override
  String get creator_enhancement_camera => 'Cámara';
  @override
  String get creator_enhancement_clear_field => 'Limpiar campo';
  @override
  String get creator_enhancement_crop_image => 'Recortar imagen';
  @override
  String get creator_enhancement_local_audio => 'Audio local';
  @override
  String get creator_enhancement_open_stash => 'Abrir reserva';
  @override
  String get creator_enhancement_pick_audio => 'Elegir audio';
  @override
  String get creator_enhancement_pick_image => 'Elegir imagen';
  @override
  String get creator_enhancement_pop_from_stash => 'Sacar de reserva';
  @override
  String get creator_enhancement_save_tags => 'Guardar etiquetas';
  @override
  String get creator_enhancement_search_dictionary => 'Buscar diccionario';
  @override
  String get creator_enhancement_sentence_picker => 'Elegir oración';
  @override
  String get creator_enhancement_text_segmentation => 'Segmentación de texto';
  @override
  String get creator_export_card => 'Crear tarjeta';
  @override
  String get creator_field_audio => 'Audio del término';
  @override
  String get creator_field_audio_sentence => 'Audio de la oración';
  @override
  String get creator_field_cloze_after => 'Después del espacio';
  @override
  String get creator_field_cloze_before => 'Antes del espacio';
  @override
  String get creator_field_cloze_inside => 'Contenido del espacio';
  @override
  String get creator_field_collapsed_meaning => 'Significado contraído';
  @override
  String get creator_field_context => 'Contexto';
  @override
  String get creator_field_cue_sentence => 'Oración de subtítulo';
  @override
  String get creator_field_expanded_meaning => 'Significado expandido';
  @override
  String get creator_field_frequency => 'Frecuencia';
  @override
  String get creator_field_furigana => 'Furigana';
  @override
  String get creator_field_hidden_meaning => 'Significado oculto';
  @override
  String get creator_field_image => 'Imagen';
  @override
  String get creator_field_meaning => 'Significado';
  @override
  String get creator_field_notes => 'Notas';
  @override
  String get creator_field_pitch_accent => 'Acento tonal';
  @override
  String get creator_field_reading => 'Lectura';
  @override
  String get creator_field_sentence => 'Oración';
  @override
  String get creator_field_tags => 'Etiquetas';
  @override
  String get creator_field_term => 'Término';
  @override
  String get custom_dict_css => 'CSS personalizado';
  @override
  String get custom_dict_css_global => 'Global (todos los diccionarios)';
  @override
  String get custom_fonts => 'Fuentes personalizadas';
  @override
  String get custom_fonts_add_system => 'Añadir fuente del sistema';
  @override
  String get custom_fonts_archive_error => 'Error al extraer el archivo';
  @override
  String get custom_fonts_catalog_title => 'Biblioteca de fuentes';
  @override
  String get custom_fonts_download_failed => 'Error en la descarga';
  @override
  String get custom_fonts_downloading => 'Descargando...';
  @override
  String get custom_fonts_drag_hint =>
      'Arrastra para reordenar la prioridad de fuentes';
  @override
  String get custom_fonts_empty => 'No se han añadido fuentes personalizadas';
  @override
  String get custom_fonts_font_roles => 'Font roles';
  @override
  String get custom_fonts_import_file => 'Importar archivo de fuente';
  @override
  String get custom_fonts_import_url => 'Importar desde URL';
  @override
  String custom_fonts_imported_count({required Object count}) =>
      '${count} fuente(s) importada(s)';
  @override
  String get custom_fonts_manage => 'Gestionar fuentes';
  @override
  String get custom_fonts_no_fonts_in_archive =>
      'No se encontraron fuentes en el archivo';
  @override
  String get custom_fonts_recommended => 'Fuentes recomendadas';
  @override
  String get custom_fonts_removed => 'Fuente eliminada';
  @override
  String get custom_fonts_search_hint => 'Buscar fuentes';
  @override
  String get custom_theme => 'Tema personalizado';
  @override
  String custom_theme_default_name({required Object n}) => 'Custom ${n}';
  @override
  String get custom_theme_long_press_hint =>
      'Tap to switch · long-press to edit';
  @override
  String get custom_theme_name => 'Name';
  @override
  String get dark_mode => 'Modo oscuro';
  @override
  String get dark_mode_dark => 'Oscuro';
  @override
  String get dark_mode_light => 'Claro';
  @override
  String get dark_mode_system => 'Sistema';
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
      'Esta base de datos la creó una versión más reciente de Fushi (esquema v${dbVersion}). Tu app actual es demasiado antigua (v${appVersion}). Se bloqueó la apertura para proteger tus datos. Actualiza la app e inténtalo de nuevo.';
  @override
  String get db_downgrade_title => 'Actualiza Fushi';
  @override
  String get db_unrecoverable_message =>
      'The database could not be opened even after automatic repair. It is likely corrupt. You can restore a backup in Settings, or clear app data to start fresh.';
  @override
  String get db_unrecoverable_title => 'Database damaged';
  @override
  String get debug_log_share_subject => 'Registro de depuración de Fushi';
  @override
  String debug_log_title({required Object count}) =>
      'Registro de depuración (${count})';
  @override
  String get debug_log_toggle => 'Activar registro de depuración';
  @override
  String get decrease => 'Disminuir';
  @override
  String get deduplicate_pitch_accents => 'Deduplicar acentos tonales';
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
  String get delete_in_progress => 'Eliminación en progreso';
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
  String get design_system_auto => 'Automático';
  @override
  String get design_system_hint => 'Controla el estilo visual de la app';
  @override
  String get design_system_label => 'Sistema de diseño';
  @override
  String get desktop_clipboard_auto_lookup => 'Auto-look-up on copy';
  @override
  String get desktop_clipboard_auto_lookup_hint =>
      'When off, the panel shows only the copied text; tap a word to look it up.';
  @override
  String get desktop_clipboard_destination => 'Clipboard lookup destination';
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
  String get desktop_clipboard_enabled =>
      'Consulta desde el portapapeles (escritorio)';
  @override
  String get desktop_clipboard_enabled_hint =>
      'Vigila el portapapeles + atajo global para abrir una ventana de consulta (escritorio)';
  @override
  String get desktop_clipboard_window_mode => 'Fijar ventana';
  @override
  String get desktop_clipboard_window_mode_always => 'Siempre';
  @override
  String get desktop_clipboard_window_mode_hint =>
      'Controls whether Fushi stays above other windows';
  @override
  String get desktop_clipboard_window_mode_lookup => 'Solo al consultar';
  @override
  String get desktop_clipboard_window_mode_normal => 'Desactivado';
  @override
  String get dialog_add => 'AÑADIR';
  @override
  String get dialog_append => 'AÑADIR';
  @override
  String get dialog_cancel => 'CANCELAR';
  @override
  String get dialog_clear => 'LIMPIAR';
  @override
  String get dialog_clear_all_dictionaries => 'Eliminar todos los diccionarios';
  @override
  String get dialog_close => 'CERRAR';
  @override
  String get dialog_connect => 'CONECTAR';
  @override
  String get dialog_content_dictionary_clear =>
      'Borrar la base de datos de diccionarios también eliminará todos los resultados de búsqueda del historial.';
  @override
  String get dialog_content_dictionary_delete =>
      'Eliminar un solo diccionario puede tardar más que borrar toda la base de datos. Esto también eliminará todos los resultados de búsqueda del historial.';
  @override
  String get dialog_create => 'CREAR';
  @override
  String get dialog_crop => 'RECORTAR';
  @override
  String get dialog_delete => 'ELIMINAR';
  @override
  String get dialog_done => 'HECHO';
  @override
  String get dialog_edit => 'EDITAR';
  @override
  String get dialog_edit_info => 'Editar info';
  @override
  String get dialog_exit => 'SALIR';
  @override
  String get dialog_export => 'EXPORTAR';
  @override
  String get dialog_import => 'IMPORTAR';
  @override
  String get dialog_import_dictionary => 'Importar diccionario';
  @override
  String get dialog_import_folder => 'Importar diccionario de carpeta';
  @override
  String get dialog_importing => 'IMPORTANDO…';
  @override
  String get dialog_launch_ankidroid => 'ABRIR ANKIDROID';
  @override
  String get dialog_ok => 'Aceptar';
  @override
  String get dialog_play => 'REPRODUCIR';
  @override
  String get dialog_read => 'LEER';
  @override
  String get dialog_record => 'GRABAR';
  @override
  String get dialog_replace => 'Replace';
  @override
  String get dialog_save => 'GUARDAR';
  @override
  String get dialog_search => 'BUSCAR';
  @override
  String get dialog_select => 'SELECCIONAR';
  @override
  String get dialog_share => 'COMPARTIR';
  @override
  String get dialog_stash => 'GUARDAR';
  @override
  String get dialog_stop => 'DETENER';
  @override
  String get dialog_title_dictionary_clear =>
      '?Eliminar todos los diccionarios?';
  @override
  String dialog_title_dictionary_delete({required Object name}) =>
      '?Eliminar 『${name}』?';
  @override
  String get dict_auto_update => 'Actualizar automáticamente';
  @override
  String get dict_auto_update_hint =>
      'Buscar actualizaciones de diccionarios al iniciar';
  @override
  String dict_auto_update_last({required Object time}) =>
      'Última comprobación correcta: ${time}';
  @override
  String get dict_auto_update_never => 'Nunca';
  @override
  String get dict_category_frequency => 'Frecuencia';
  @override
  String get dict_category_grammar => 'Gramática';
  @override
  String get dict_category_ja_en => 'Japonés–Inglés';
  @override
  String get dict_category_ja_ja => 'Japonés–Japonés';
  @override
  String get dict_category_ja_other => 'Otro japonés';
  @override
  String get dict_category_kanji => 'Kanji';
  @override
  String get dict_category_names => 'Nombres';
  @override
  String get dict_category_supplementary => 'Suplementario';
  @override
  String get dict_download_browse => 'Descargar diccionarios';
  @override
  String dict_download_button({required Object count}) =>
      'Descargar (${count})';
  @override
  String get dict_download_complete => 'Descarga completada.';
  @override
  String dict_download_failed({required Object error}) =>
      'Descarga fallida: ${error}';
  @override
  String get dict_download_installed => 'Instalado';
  @override
  String get dict_download_language => 'Tu idioma';
  @override
  String dict_download_partial(
          {required Object success,
          required Object total,
          required Object error}) =>
      '${success} / ${total} correctos. Fallidos: ${error}';
  @override
  String get dict_download_select_title => 'Seleccionar diccionarios';
  @override
  String dict_downloading({required Object name}) => 'Descargando ${name}…';
  @override
  String dict_import_failed_summary({required Object n}) =>
      'No se pudieron importar ${n} diccionario(s)';
  @override
  String get dict_import_started =>
      'Importando diccionarios en segundo plano...';
  @override
  String dict_import_success_summary({required Object n}) =>
      'Se importaron ${n} diccionario(s)';
  @override
  String get dict_update_check => 'Buscar actualizaciones';
  @override
  String get dict_update_checking => 'Buscando actualizaciones…';
  @override
  String dict_update_done({required Object name}) => '${name} actualizado.';
  @override
  String dict_update_failed({required Object error}) =>
      'Error al actualizar: ${error}';
  @override
  String get dict_update_interval_daily => 'Diariamente';
  @override
  String get dict_update_interval_monthly => 'Mensualmente';
  @override
  String get dict_update_interval_weekly => 'Semanalmente';
  @override
  String get dict_update_latest => 'Ya está actualizado.';
  @override
  String dict_update_name_mismatch_body(
          {required Object incoming, required Object existing}) =>
      'El archivo seleccionado es «${incoming}», pero estás actualizando «${existing}». ¿Reemplazar de todos modos?';
  @override
  String get dict_update_name_mismatch_title => 'Los nombres no coinciden';
  @override
  String get dict_update_none => 'Todos los diccionarios están actualizados.';
  @override
  String dict_update_summary(
          {required Object updated,
          required Object current,
          required Object failed}) =>
      '${updated} actualizados, ${current} al día, ${failed} fallaron.';
  @override
  String get dict_update_tooltip => 'Actualizar diccionario';
  @override
  String dict_update_updating({required Object name}) =>
      'Actualizando ${name}…';
  @override
  String get dictionaries => 'Diccionarios';
  @override
  String get dictionaries_delete_failed =>
      'No se pudieron eliminar los diccionarios';
  @override
  String get dictionaries_deleting_data =>
      'Eliminando datos del diccionario...';
  @override
  String get dictionaries_menu_empty => 'Importa un diccionario para usar';
  @override
  String get dictionary_delete_failed => 'No se pudo eliminar el diccionario';
  @override
  String get dictionary_font_size => 'Tamaño de fuente del diccionario';
  @override
  String get dictionary_font_size_zoom_hint =>
      'Ctrl + scroll wheel zooms the popup content';
  @override
  String get dictionary_section_frequency => 'Diccionarios de frecuencia';
  @override
  String get dictionary_section_kanji => 'Diccionarios de kanji';
  @override
  String get dictionary_section_pitch => 'Diccionarios de tono';
  @override
  String get dictionary_section_term => 'Diccionarios de términos';
  @override
  String get dictionary_settings => 'Configuración del diccionario';
  @override
  String get dictionary_type_frequency => 'Frecuencia';
  @override
  String get dictionary_type_pitch => 'Tono';
  @override
  String get dictionary_type_term => 'Término';
  @override
  String get dictionary_unrecognized_format =>
      'Formato de diccionario no reconocido';
  @override
  String get dismiss_swipe_sensitivity =>
      'Sensibilidad de deslizar para cerrar';
  @override
  String get display_settings => 'Configuración de pantalla';
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
  String get drag_drop_need_card_target =>
      'Suelta subtítulos o audio sobre un libro o un vídeo';
  @override
  String get drag_drop_unsupported_on_books =>
      'Suelta archivos de libros aquí. Cambia a Vídeo o Diccionarios para esos archivos.';
  @override
  String get drag_drop_unsupported_on_dictionary =>
      'Suelta aquí archivos de diccionario .zip, .dsl o .mdx. Los archivos CSS solo funcionan junto con un paquete de diccionario.';
  @override
  String get drag_drop_unsupported_on_video =>
      'Suelta vídeos, listas de reproducción o subtítulos aquí. Cambia a Libros o Diccionarios para esos archivos.';
  @override
  String get edit_custom_theme => 'Edit custom theme';
  @override
  String get eink_mode => 'E-ink mode';
  @override
  String get eink_mode_hint =>
      'Pure black-and-white theme with no animations and line-style highlights, for e-ink displays';
  @override
  String get enable_swipe_to_close => 'Deslizar para cerrar la ventana';
  @override
  String get epub_delete_error => 'Error al eliminar el libro';
  @override
  String get epub_delete_title => 'Eliminar libro';
  @override
  String get epub_parse_fallback =>
      'Metadatos del libro reparados desde la base de datos';
  @override
  String get error_ankidroid_api => 'Error de AnkiDroid';
  @override
  String get error_ankidroid_api_content =>
      'Hubo un problema al comunicarse con AnkiDroid.\n\nAsegúrate de que el servicio en segundo plano de AnkiDroid esté activo y de que se hayan concedido todos los permisos necesarios.';
  @override
  String get error_copied => 'Error copiado al portapapeles';
  @override
  String get error_load_failed => 'Something went wrong while loading';
  @override
  String get error_log_diagnostics_section =>
      'Diagnostics / forensics (not app errors)';
  @override
  String get error_log_empty => 'Sin registros de errores';
  @override
  String error_log_label({required Object n}) => 'Registro de errores (${n})';
  @override
  String get error_log_previous_run =>
      'Registros anteriores (antes de la última ejecución)';
  @override
  String get error_log_share_subject => 'Registro de errores de Fushi';
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
  String get failed_online_service =>
      'Error al comunicarse con el servicio en línea';
  @override
  String get favorite_added => 'Oración guardada en favoritos';
  @override
  String get favorite_removed => 'Frase eliminada de favoritos';
  @override
  String favorites({required Object n}) => 'Favoritos (${n})';
  @override
  String field_fallback_used(
          {required Object field, required Object secondField}) =>
      'El campo ${field} usó ${secondField} como término de búsqueda alternativo.';
  @override
  String file_count({required Object count}) => '${count} archivos';
  @override
  String get floating_dict_close => 'Cerrar';
  @override
  String get floating_dict_title => 'Diccionario';
  @override
  String get floating_lyric_bg_opacity =>
      'Opacidad del fondo del subtítulo flotante';
  @override
  String get floating_lyric_button_bg_opacity =>
      'Opacidad del fondo de los botones del subtítulo flotante';
  @override
  String get floating_lyric_click_lookup =>
      'Tocar el subtítulo flotante para consultar';
  @override
  String get floating_lyric_click_lookup_hint =>
      'Mantén esto activado con el bloqueo de posición si aún quieres consultar palabras.';
  @override
  String get floating_lyric_close => 'Cerrar';
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
  String get floating_lyric_font_size =>
      'Tamaño de fuente del subtítulo flotante';
  @override
  String get floating_lyric_hint =>
      'Mostrar la oración actual sobre otras apps.';
  @override
  String get floating_lyric_lock => 'Bloquear';
  @override
  String get floating_lyric_next => 'Siguiente';
  @override
  String get floating_lyric_no_audio =>
      'Este libro no tiene audio para escuchar';
  @override
  String get floating_lyric_permission_hint =>
      'Se requiere permiso de superposición para mostrar subtítulos flotantes.';
  @override
  String get floating_lyric_permission_hint_coloros =>
      'If the system keeps refusing the overlay permission: reinstall this app\'s APK once with a file manager, or turn off permission monitoring in Developer options, then try again.';
  @override
  String get floating_lyric_play_pause => 'Reproducir';
  @override
  String get floating_lyric_previous => 'Anterior';
  @override
  String get floating_lyric_text_opacity =>
      'Opacidad del texto del subtítulo flotante';
  @override
  String get floating_lyric_toggle_action => 'Subtítulo flotante';
  @override
  String get floating_lyric_unavailable_hint =>
      'No se pudo mostrar la ventana de subtítulo flotante.';
  @override
  String get floating_lyric_unlock => 'Desbloquear';
  @override
  String get floating_lyric_width => 'Floating subtitle width';
  @override
  String get floating_lyric_width_hint =>
      '0 uses the platform default width; set a value to make the bar a fixed width';
  @override
  String get focus_navigation_enabled =>
      'Navegación por foco con teclado y mando';
  @override
  String get focus_navigation_enabled_hint =>
      'Mueve el foco con las flechas o un mando y muestra un anillo de foco.';
  @override
  String get folder_picker_permission_required =>
      'Storage permission is required to browse folders';
  @override
  String get follow_audio_off_tooltip => 'Seguir audio: DESACTIVADO';
  @override
  String get follow_audio_on_tooltip => 'Seguir audio: ACTIVADO';
  @override
  String get font_color => 'Color de fuente';
  @override
  String get font_color_desc => 'Color del texto del lector';
  @override
  String get font_desc_hina_mincho =>
      'Mincho decorativo suave · Combina bien con Noto Sans JP';
  @override
  String get font_desc_klee_one =>
      'Estilo manuscrito · Clara y legible · Combina bien con Noto Sans JP';
  @override
  String get font_desc_mplus_rounded_1c =>
      'Estilo redondeado lindo · Ideal para novelas ligeras · Combina bien con Noto Sans JP';
  @override
  String get font_desc_noto_sans_jp =>
      'Google/Adobe Gothic · Prioridad glifos japoneses · Peso variable';
  @override
  String get font_desc_noto_sans_sc =>
      'Google/Adobe Gothic · Prioridad chino simplificado · Usar como fuente alternativa';
  @override
  String get font_desc_noto_sans_tc =>
      'Google/Adobe Gothic · Prioridad chino tradicional';
  @override
  String get font_desc_noto_serif_jp =>
      'Google/Adobe Serif · Prioridad glifos japoneses · Ideal para lectura vertical';
  @override
  String get font_desc_noto_serif_sc =>
      'Google/Adobe Serif · Prioridad chino simplificado · Usar como fuente alternativa';
  @override
  String get font_desc_noto_serif_tc =>
      'Google/Adobe Serif · Traditional Chinese glyphs priority · Ideal for vertical reading';
  @override
  String get font_desc_shippori_mincho =>
      'Mincho elegante · Ideal para literatura · Combina bien con Noto Sans JP';
  @override
  String get font_desc_zen_kaku_gothic_new =>
      'Kaku Gothic moderno · Lectura general · Combina bien con Noto Sans JP';
  @override
  String get font_desc_zen_maru_gothic =>
      'Gothic redondeado suave · Combina bien con Noto Sans JP';
  @override
  String get font_desc_zen_old_mincho =>
      'Mincho vintage · Estilo literario clásico · Combina bien con Noto Sans JP';
  @override
  String get font_source_file => 'Archivo';
  @override
  String get font_source_system => 'Sistema';
  @override
  String get font_target_app_ui => 'Fuente de la interfaz';
  @override
  String get font_target_body => 'Fuente del texto de la novela';
  @override
  String get font_target_dictionary => 'Fuente del diccionario';
  @override
  String get font_target_video_subtitle => 'Video Subtitle Font';
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
  String get game_manage_tracks => 'Manage audio tracks';
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
      'Mark a BGM/ambience track as excluded so auto-selection never treats it as voice — lines without speech no longer pick up BGM.';
  @override
  String get game_track_exclusion_title => 'Exclude audio tracks';
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
  String go_to_chapter({required Object n}) => 'Capítulo ${n}';
  @override
  String get handlebar_audio => 'Audio';
  @override
  String get handlebar_book_cover => 'Portada del libro';
  @override
  String get handlebar_card_image => 'Card Image (Cover / GIF)';
  @override
  String get handlebar_cue_sentence => 'Oración de subtítulo';
  @override
  String handlebar_deprecated_label({required Object label}) =>
      '${label} (deprecated)';
  @override
  String get handlebar_document_title => 'Título del documento';
  @override
  String get handlebar_expression => 'Expresión';
  @override
  String get handlebar_frequencies => 'Frecuencias (HTML)';
  @override
  String get handlebar_frequency_harmonic_rank => 'Frecuencia (Rango)';
  @override
  String get handlebar_furigana_plain => 'Furigana';
  @override
  String get handlebar_glossary => 'Glosario';
  @override
  String get handlebar_glossary_first => 'Glosario (Primero)';
  @override
  String get handlebar_pitch_accent_categories => 'Categorías de acento';
  @override
  String get handlebar_pitch_accent_positions => 'Posiciones de acento';
  @override
  String get handlebar_popup_selection_text => 'Texto de selección del popup';
  @override
  String get handlebar_reading => 'Lectura';
  @override
  String get handlebar_selected_glossary => 'Glosario seleccionado';
  @override
  String get handlebar_sentence => 'Oración';
  @override
  String get handlebar_sentence_audio => 'Sentence Audio';
  @override
  String get handlebar_video_clip => 'Video Clip (GIF)';
  @override
  String get harmonic_frequency => 'Agregar frecuencias de palabras';
  @override
  String health_match_summary({required Object pct}) => 'Coincidencia ${pct}%';
  @override
  String get highlight_on_tap => 'Resaltar texto al tocar';
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
  String get hover_auto_lookup => 'Buscar al pasar el cursor';
  @override
  String get hover_auto_lookup_hint =>
      'Busca automáticamente al pasar el ratón sobre un carácter; sin hacer clic ni mantener Mayús. Muestra como máximo una capa de ventana emergente. Solo en escritorio.';
  @override
  String get icon_custom => 'Personalizado';
  @override
  String get icon_custom_confirm_body =>
      'Esto creará un acceso directo en la pantalla de inicio con la imagen elegida. ¿Continuar?';
  @override
  String get icon_custom_confirm_title => 'Icono personalizado';
  @override
  String get icon_custom_hint =>
      'Toca un icono para cambiar, o elige una imagen personalizada abajo.';
  @override
  String get icon_default => 'Predeterminado';
  @override
  String get icon_full => 'Completo';
  @override
  String get icon_shortcut_created =>
      'Acceso directo creado en la pantalla de inicio.';
  @override
  String get icon_shortcut_unsupported =>
      'Los accesos directos no son compatibles con este dispositivo.';
  @override
  String get icon_switch_success => 'Icono de la app cambiado correctamente.';
  @override
  String get icon_transparent => 'Transparent';
  @override
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  @override
  String get image_pause => 'Pausar en imagen';
  @override
  String get image_pause_hint =>
      'Pausar automáticamente cuando aparece una imagen durante la reproducción.';
  @override
  String get image_pause_off => 'Desactivado';
  @override
  String get image_search_label_after => 'encontradas para';
  @override
  String get image_search_label_before => 'Seleccionando imagen ';
  @override
  String get image_search_label_middle => 'de ';
  @override
  String get image_search_label_none_before => 'Seleccionando ';
  @override
  String get image_search_label_none_middle => 'ninguna imagen ';
  @override
  String get import_complete => 'Importación del diccionario completada.';
  @override
  String import_duplicate({required Object name}) =>
      'Ya existe un diccionario importado con el nombre 『${name}』.';
  @override
  String get import_extract => 'Extrayendo archivos...';
  @override
  String get import_failed => 'Error al importar el diccionario.';
  @override
  String get import_in_progress => 'Importación en progreso';
  @override
  String import_name({required Object name}) => 'Importando 『${name}』...';
  @override
  String import_sidecar_audio({required Object count}) =>
      'Se adjuntaron automáticamente ${count} archivo(s) de audio';
  @override
  String import_sidecar_subtitle({required Object name}) =>
      'Subtítulo adjuntado automáticamente: ${name}';
  @override
  String get import_start => 'Preparando la importación...';
  @override
  String get import_step_building_epub => 'Generando EPUB…';
  @override
  String get import_step_converting_epub => 'Convirtiendo a EPUB…';
  @override
  String import_step_copying_file({required Object name}) =>
      'Copiando ${name}…';
  @override
  String get import_step_done => 'Hecho';
  @override
  String get import_step_importing_epub => 'Importando EPUB…';
  @override
  String get import_step_matching => 'Alineación de audio…';
  @override
  String get import_step_parsing => 'Analizando subtítulos…';
  @override
  String get import_step_persisting => 'Guardando archivos…';
  @override
  String get import_step_reading => 'Leyendo archivo…';
  @override
  String get import_step_reading_idb => 'Leyendo información del libro…';
  @override
  String get import_step_saving => 'Guardando registros…';
  @override
  String get import_theme => 'Importar tema';
  @override
  String get import_theme_hint => 'Pegar código de tema';
  @override
  String get import_theme_invalid => 'Código de tema no válido';
  @override
  String get import_theme_success => 'Tema importado';
  @override
  String import_unsupported_file_format({required Object ext}) =>
      'Formato de archivo no compatible: ${ext}';
  @override
  String get increase => 'Aumentar';
  @override
  String get info_empty_home_tab => 'El historial está vacío';
  @override
  String init_error_message({required Object error}) =>
      'Error de inicialización: ${error}';
  @override
  String get initialization_failed => 'Error de inicialización';
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
  String get invert_swipe_direction =>
      'Invertir dirección de deslizamiento para pasar páginas';
  @override
  String get invert_volume_buttons => 'Invertir botones de volumen';
  @override
  String get jump_to_char => 'Ir al carácter';
  @override
  String jump_to_char_current(
          {required Object current, required Object total}) =>
      'Actual: ${current} / ${total}';
  @override
  String get jump_to_char_hint => 'Introduce la posición del carácter…';
  @override
  String get keep_screen_awake => 'Mantener pantalla encendida';
  @override
  String get library_search => 'Search library';
  @override
  String get loading_illustrations => 'Cargando ilustraciones…';
  @override
  String get loading_slow_message =>
      'If your data storage location is on a network or removable drive that is currently disconnected, startup can stall. Tap Retry to launch using the default storage location for this session; your data stays where it is.';
  @override
  String get loading_slow_message_mobile =>
      'Startup is taking longer than usual — Fushi may be loading a large library or dictionaries. Please wait a moment, or tap Retry to reload. Your data is safe and won\'t be lost.';
  @override
  String get loading_slow_title => 'Startup is taking longer than usual';
  @override
  String get local_audio => 'Audio local';
  @override
  String get local_audio_add_db => 'Agregar base de datos de audio local';
  @override
  String get local_audio_edit_sources => 'Editar fuentes';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      'Failed to import audio database: ${reason}';
  @override
  String get local_audio_imported => 'Base de datos de audio añadida';
  @override
  String get local_audio_invalid_db =>
      'This file isn\'t a usable audio database (not a Local Audio Server database, or it has no audio).';
  @override
  String get local_audio_no_sources =>
      'No se encontraron fuentes en esta base de datos';
  @override
  String get local_audio_reference_original =>
      'Reference original file (don\'t copy)';
  @override
  String get local_audio_reference_original_desc =>
      'Keep the database where it is and read from its original path; the source breaks if the file is moved or deleted.';
  @override
  String get local_audio_source_order_title => 'Prioridad de las fuentes';
  @override
  String get log_copy_all => 'Copiar todo';
  @override
  String get log_export_failed => 'Error al exportar';
  @override
  String get log_export_file => 'Exportar a archivo';
  @override
  String get log_export_saved => 'Registro guardado';
  @override
  String get log_upload_action => 'Subir al servidor';
  @override
  String get log_upload_consent_agree => 'Aceptar y subir';
  @override
  String get log_upload_consent_body =>
      'El texto del registro (que puede incluir mensajes de error, rutas de archivos y títulos de libros), junto con la versión de la app, la plataforma y el modelo del dispositivo, se subirá al servidor del desarrollador para ayudar a diagnosticar problemas. Esto solo ocurre cuando tocas subir; no se envía nada de forma automática.';
  @override
  String get log_upload_consent_title => '¿Subir el registro al servidor?';
  @override
  String get log_upload_failed => 'Error al subir';
  @override
  String get log_upload_in_progress => 'Subiendo registro…';
  @override
  String get log_upload_success => 'Registro subido';
  @override
  String get log_upload_too_large =>
      'El registro es demasiado grande para subirlo';
  @override
  String get login => 'Iniciar sesión';
  @override
  String get lookup_audio_volume => 'Volumen del audio de consulta';
  @override
  String get low_memory_mode => 'Modo de poca memoria';
  @override
  String get low_memory_mode_hint =>
      'Reduce el uso de caché y memoria para dispositivos de gama baja. Algunos cambios requieren reinicio.';
  @override
  String get low_memory_mode_suggestion =>
      'Intente activar el modo de poca memoria en Ajustes → Varios.';
  @override
  String get lyrics_artist => 'Artista';
  @override
  String get lyrics_blur => 'Blur lyrics';
  @override
  String get lyrics_blur_hint =>
      'Blur the current line for listening immersion; hover or tap to reveal';
  @override
  String get lyrics_font_size => 'Tamaño de fuente de letras';
  @override
  String get lyrics_font_size_hint =>
      'El tamaño de fuente de las letras es independiente del modo libro';
  @override
  String get lyrics_mode => 'Modo de letra';
  @override
  String get lyrics_mode_hint_body =>
      'El modo de letras tiene su propia configuración de tamaño de fuente. Puedes ajustarlo en ⚙ Ajustes → Tipografía.';
  @override
  String get lyrics_mode_hint_title => 'Modo de letras';
  @override
  String get lyrics_text_color => 'Color del texto de las letras';
  @override
  String get lyrics_text_color_hint =>
      'Usa un color personalizado para el texto de las letras en lugar de seguir el tema';
  @override
  String get lyrics_title => 'Título';
  @override
  String get lyrics_vertical_writing => 'Vertical lyrics';
  @override
  String get lyrics_vertical_writing_hint =>
      'Read lyrics top-to-bottom, right-to-left (independent of book mode)';
  @override
  String get manage_audio_sources => 'Gestionar fuentes de audio';
  @override
  String get manager => 'Gestor';
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
  String get margin_bottom => 'Margen inferior';
  @override
  String get margin_left => 'Margen izquierdo';
  @override
  String get margin_right => 'Margen derecho';
  @override
  String get margin_top => 'Margen superior';
  @override
  String get maximum_terms =>
      'Máximo de entradas en el resultado del diccionario';
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
  String get microphone_permission_denied =>
      'Se requiere permiso de micrófono para grabar.';
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
  String get move_down => 'Mover abajo';
  @override
  String get move_up => 'Mover arriba';
  @override
  String get name => 'Nombre';
  @override
  String get nav_browser_extension => 'Extension';
  @override
  String get nav_downloads => 'Downloads';
  @override
  String get nav_game => 'Game';
  @override
  String get nav_home => 'Home';
  @override
  String get nav_lookup => 'Consultar';
  @override
  String get nav_video => 'Vídeo';
  @override
  String get next_sentence => 'Oración siguiente';
  @override
  String get no_audio_file => 'No hay archivo de audio para guardar.';
  @override
  String get no_collections => 'No hay marcadores ni oraciones guardadas';
  @override
  String get no_debug_logs => 'Sin registros de depuración.';
  @override
  String get no_illustrations_found => 'No se encontraron ilustraciones';
  @override
  String get no_results_found => 'No se encontraron resultados.';
  @override
  String get no_search_results => 'No se encontraron resultados.';
  @override
  String get no_sentence_selected => 'No se ha seleccionado ninguna frase';
  @override
  String get no_sentences_found => 'No se encontraron oraciones';
  @override
  String get no_text => 'Sin texto.';
  @override
  String get no_text_to_search => 'No hay texto para buscar.';
  @override
  String get now_listening_label => 'Escuchando ahora';
  @override
  String get on_screen_keyboard => 'Teclado en pantalla';
  @override
  String get options_collapse => 'Contraer en búsqueda';
  @override
  String get options_delete => 'Eliminar';
  @override
  String get options_edit => 'Editar';
  @override
  String get options_expand => 'Expandir en búsqueda';
  @override
  String get options_github => 'Ver repositorio en GitHub';
  @override
  String get options_hide => 'Ocultar en búsqueda';
  @override
  String get options_language => 'Configuración de idioma';
  @override
  String get options_show => 'Mostrar en búsqueda';
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
      'Página ${current} / ${total}';
  @override
  String get paste => 'Pegar';
  @override
  String get pause => 'Pausar';
  @override
  String get pause_on_lookup => 'Pausar al buscar';
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
  String get pick_image => 'Elegir imagen';
  @override
  String get play => 'Reproducir';
  @override
  String get play_from_cue => 'Reproducir desde la oración';
  @override
  String get playback_auto_pause => 'Modo de pausa en subtítulos';
  @override
  String get playback_speed => 'Velocidad';
  @override
  String get popup_append_sentence_tooltip => 'Añadir esta frase a la tarjeta';
  @override
  String get popup_auto_expand_dictionaries => 'Auto-expand rows';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      'Keep the first N rows of dictionary blocks expanded even when \'Collapse dictionaries\' is on. The expanded count follows the column setting: rows x columns (0 = collapse all)';
  @override
  String get popup_bottom_docked => 'Ventana acoplada abajo';
  @override
  String get popup_bottom_docked_hint =>
      'Fija la ventana de consulta como un panel de ancho completo en la parte inferior de la pantalla, en lugar de seguir a la palabra consultada.';
  @override
  String get popup_clear_sentence_draft_tooltip => 'Borrar las frases añadidas';
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
  String get popup_instant_scroll => 'Desplazamiento instantáneo de la ventana';
  @override
  String get popup_instant_scroll_hint =>
      'Mueve la ventana de consulta a distancias fijas sin animación de desplazamiento, para pantallas de tinta electrónica.';
  @override
  String get popup_max_height => 'Altura máxima de la ventana';
  @override
  String get popup_max_width => 'Ancho máximo del popup';
  @override
  String get popup_no_audio_available => 'No audio available';
  @override
  String get popup_sentence_context_next_label => 'Después';
  @override
  String get popup_sentence_context_prev_label => 'Antes';
  @override
  String get popup_wheel_speed => 'Popup scroll speed';
  @override
  String get popup_wheel_speed_hint =>
      'Mouse-wheel scroll speed for the dictionary popup (also applies to the browser extension).';
  @override
  String get prev_sentence => 'Oración anterior';
  @override
  String get preview => 'Vista previa';
  @override
  String get preview_badge => 'Insignia';
  @override
  String get preview_switch => 'Interruptor';
  @override
  String get processing_in_progress => 'Procesando imágenes';
  @override
  String get profile_book_profile => 'Asignar perfil';
  @override
  String profile_confirm_delete({required Object name}) =>
      '¿Eliminar perfil "${name}"?';
  @override
  String get profile_copy => 'Copiar';
  @override
  String get profile_copy_suffix => '(Copia)';
  @override
  String get profile_create => 'Crear perfil';
  @override
  String get profile_delete => 'Eliminar';
  @override
  String get profile_export => 'Export';
  @override
  String get profile_export_failed => 'Export failed';
  @override
  String profile_follow_default_current({required Object name}) =>
      'Siguiendo el predeterminado (${name})';
  @override
  String get profile_import => 'Import';
  @override
  String get profile_import_failed => 'Import failed';
  @override
  String get profile_import_invalid => 'Invalid profile file';
  @override
  String get profile_import_success => 'Profile imported';
  @override
  String get profile_label => 'Perfil';
  @override
  String get profile_management => 'Gestión de perfiles';
  @override
  String get profile_media_audiobook => 'Audiolibro';
  @override
  String get profile_media_epub => 'Libro';
  @override
  String get profile_media_lyrics => 'Modo letras';
  @override
  String get profile_media_none => 'Ninguno';
  @override
  String get profile_media_srtbook => 'Libro de subtítulos';
  @override
  String get profile_media_type_bindings => 'Asociaciones de tipo de medio';
  @override
  String get profile_media_video => 'Video';
  @override
  String get profile_name_hint => 'Nombre del perfil';
  @override
  String get profile_rename => 'Renombrar';
  @override
  String get reader_auto_hide_chrome_duration =>
      'Auto-hide floating controls after';
  @override
  String get reader_content_timeout =>
      'Se agotó el tiempo al cargar el contenido. Reabre si la visualización es anómala';
  @override
  String get reader_copy_image => 'Copiar imagen';
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
  String reader_image_copy_failed({required Object error}) =>
      'Error al copiar la imagen: ${error}';
  @override
  String get reader_image_file_unavailable =>
      'El archivo de imagen no está disponible.';
  @override
  String reader_image_share_failed({required Object error}) =>
      'Error al compartir la imagen: ${error}';
  @override
  String get reader_open_failed => 'Failed to open book';
  @override
  String get reader_settings_section => 'Configuración del lector';
  @override
  String get reader_theme_black => 'Negro';
  @override
  String get reader_theme_dark => 'Oscuro';
  @override
  String get reader_theme_ecru => 'Crudo';
  @override
  String get reader_theme_eyecare => 'Eye Care';
  @override
  String get reader_theme_gray => 'Gris';
  @override
  String get reader_theme_light => 'Blanco';
  @override
  String get reader_theme_water => 'Azul agua';
  @override
  String get reader_top_progress_floating => 'Floating reading progress';
  @override
  String get reader_unsupported_platform =>
      'El lector aún no está disponible en esta plataforma.';
  @override
  String get reading_activity => 'Study activity';
  @override
  String get reading_progress => 'Progreso de lectura';
  @override
  String get reading_section_mode => 'Mode & orientation';
  @override
  String get reading_statistics => 'Estadísticas de lectura';
  @override
  String get record => 'Grabar';
  @override
  String get refresh => 'Actualizar';
  @override
  String get rematch_adjust_window =>
      'Ajustar ventana de búsqueda y re-emparejar';
  @override
  String get rematch_run => 'Ejecutar re-emparejamiento';
  @override
  String get remote_audio_source => 'Audio remoto';
  @override
  String get remote_book_audiobook_download_failed =>
      'No se pudo descargar el audiolibro de este libro';
  @override
  String get remote_book_download => 'Descargar a este dispositivo';
  @override
  String get remote_book_download_failed =>
      'No se pudo descargar el libro remoto';
  @override
  String get remote_book_downloaded => 'Libro remoto descargado';
  @override
  String get remote_book_downloading => 'Descargando…';
  @override
  String get remote_book_info => 'Información';
  @override
  String get remote_book_info_has_audiobook => 'Incluye audiolibro';
  @override
  String get remote_book_unavailable => 'Dispositivo emparejado no disponible';
  @override
  String get remote_dict_lookup => 'Búsqueda en diccionario remoto';
  @override
  String get remote_dict_lookup_hint =>
      'Cuando los diccionarios locales no encuentran resultados, consulta el servidor Fushi configurado';
  @override
  String get remote_video_download => 'Descargar a este dispositivo';
  @override
  String get remote_video_download_failed =>
      'No se pudo descargar el vídeo remoto';
  @override
  String get remote_video_downloaded => 'Vídeo remoto descargado';
  @override
  String get remote_video_downloading => 'Descargando…';
  @override
  String get remote_video_info => 'Información';
  @override
  String get remote_video_info_has_subtitle => 'Incluye subtítulos';
  @override
  String get remote_video_info_no_subtitle => 'No subtitles';
  @override
  String remote_video_info_size({required Object size}) => 'Size: ${size}';
  @override
  String get remote_video_list_failed =>
      'Couldn\'t load remote videos. Make sure the other device is online and on the same network, then try again.';
  @override
  String get remote_video_unavailable => 'Dispositivo emparejado no disponible';
  @override
  String get rename_collection => 'Rename collection';
  @override
  String get render_restart_required => 'Takes effect after restarting the app';
  @override
  String get repeat_cue => 'Repetir oración';
  @override
  String get reset => 'Restablecer';
  @override
  String get retry => 'Reintentar';
  @override
  String get reverse_arrow_page_turn =>
      'Invertir la dirección de pasar página con las flechas izquierda/derecha';
  @override
  String get reverse_navigation_bar => 'Invertir barra de navegación';
  @override
  String get reverse_reader_bottom_bar => 'Invertir barra inferior del lector';
  @override
  String get audiobook_rematch_all_zero =>
      'Todas las ventanas obtuvieron 0%, ajusta manualmente';
  @override
  String audiobook_rematch_auto_failed({required Object error}) =>
      'Emparejamiento automático fallido: ${error}';
  @override
  String get audiobook_rematch_auto_match => 'Emparejamiento automático';
  @override
  String audiobook_rematch_auto_picked(
          {required Object window, required Object pct}) =>
      'Selección automática ${window} (acierto ${pct}%)';
  @override
  String audiobook_rematch_default_value({required Object n}) =>
      'Predeterminado ${n}';
  @override
  String audiobook_rematch_health_label(
          {required Object pct, required Object detail}) =>
      '${pct} coincidencia — ${detail}';
  @override
  String get audiobook_rematch_matching => 'Emparejando...';
  @override
  String get audiobook_rematch_no_chapters =>
      'EPUB no tiene texto de capítulos';
  @override
  String get audiobook_rematch_no_cues_to_match =>
      'No hay marcas para emparejar';
  @override
  String get audiobook_rematch_no_sections =>
      'No se encontró texto de capítulo, no se puede emparejar automáticamente';
  @override
  String get audiobook_rematch_no_stored_cues =>
      'No hay marcas almacenadas, no se puede re-ejecutar';
  @override
  String audiobook_rematch_failed({required Object error}) =>
      'Re-emparejamiento fallido: ${error}';
  @override
  String audiobook_rematch_result(
          {required Object pct, required Object window}) =>
      'Reemparejado: ${pct}% (ventana: ${window})';
  @override
  String get audiobook_rematch_search_window => 'Ventana de búsqueda';
  @override
  String get audiobook_rematch_similarity_threshold => 'Umbral de similitud';
  @override
  String get audiobook_rematch_threshold_hint =>
      'Similitud mínima para emparejamiento difuso (coeficiente de Dice). Reduce para tolerar más diferencias de texto, pero un valor demasiado bajo causa coincidencias falsas.';
  @override
  String get audiobook_rematch_window_hint =>
      'Número de caracteres a buscar hacia adelante por marca en el texto. Ajusta si la tasa de aciertos es baja; demasiado grande puede desviar el cursor con marcas cortas y ruidosas.';
  @override
  String get saved_tags => 'Etiquetas guardadas.';
  @override
  String get scan_non_japanese_text => 'Scan non-Japanese text';
  @override
  String get scan_non_japanese_text_hint =>
      'When off, selection stops at non-Japanese characters';
  @override
  String get search => 'Buscar';
  @override
  String get search_ellipsis => 'Buscar...';
  @override
  String get searching_in_progress => 'Buscando ';
  @override
  String get section_advanced_colors => 'Avanzado';
  @override
  String get section_advanced_typography => 'Avanzado';
  @override
  String get section_audiobook => 'Audiolibro';
  @override
  String get section_audiobook_lyrics => 'Audiolibro y letras';
  @override
  String get section_epub => 'Biblioteca EPUB';
  @override
  String get section_floating_lyric => 'Floating lyric';
  @override
  String get section_interface => 'Interfaz';
  @override
  String get section_layout => 'Diseño y visualización';
  @override
  String get section_navigation => 'Navegación';
  @override
  String get section_page_turn_direction => 'Dirección de paso de página';
  @override
  String get section_reader_colors => 'Colores del lector';
  @override
  String get section_system_theme => 'Color del tema del sistema';
  @override
  String get section_typography => 'Tipografía';
  @override
  String get section_update => 'Configuración de actualizaciones';
  @override
  String get section_video_danmaku => 'Danmaku';
  @override
  String get section_video_library => 'Library';
  @override
  String get section_video_playback => 'Reproducción';
  @override
  String get section_video_subtitles => 'Subtítulos';
  @override
  String get seed_color => 'Color base';
  @override
  String get seed_color_desc =>
      'Genera todos los colores predeterminados a continuación';
  @override
  String get selection_color => 'Color de selección';
  @override
  String get selection_color_desc =>
      'Resaltado de selección de texto del lector';
  @override
  String get send => 'Enviar';
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
  String get server_address => 'Dirección del servidor';
  @override
  String get settings => 'Configuración';
  @override
  String get settings_check_update_now => 'Check for updates';
  @override
  String get settings_destination_appearance => 'Apariencia';
  @override
  String get settings_destination_card_creation => 'Creación de tarjetas';
  @override
  String get settings_destination_diagnostics => 'Diagnóstico';
  @override
  String get settings_destination_interconnect => 'Fushi Interconnect';
  @override
  String get settings_destination_listening => 'Escucha';
  @override
  String get settings_destination_lookup => 'Búsqueda';
  @override
  String get settings_destination_profiles => 'Esquemas de configuración';
  @override
  String get settings_destination_reading => 'Lectura';
  @override
  String get settings_destination_reading_controls => 'Controles de lectura';
  @override
  String get settings_destination_sync_backup =>
      'Sincronización y copia de seguridad (Experimental)';
  @override
  String get settings_destination_system => 'Sistema';
  @override
  String get settings_destination_system_summary =>
      'General, updates & diagnostics';
  @override
  String get settings_destination_tracking => 'Media tracking';
  @override
  String get settings_destination_video => 'Vídeo';
  @override
  String get settings_experimental_suffix =>
      ' (experimental, puede ser inestable)';
  @override
  String get settings_search_hint => 'Search settings';
  @override
  String get settings_search_no_results => 'No matching settings';
  @override
  String get settings_secret_hide => 'Hide value';
  @override
  String get settings_secret_show => 'Show value';
  @override
  String get settings_section_app_shell => 'Aplicación';
  @override
  String get settings_section_data_storage => 'Data storage location';
  @override
  String get settings_section_gal_hook_overlay => 'Galgame caption overlay';
  @override
  String get settings_section_general => 'General';
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
  String get settings_section_update_channel => 'Canal de actualización';
  @override
  String get settings_view_changelog => 'View changelog';
  @override
  String get share => 'Compartir';
  @override
  String get share_theme => 'Compartir tema';
  @override
  String get shortcut_action_audiobook_next_sentence => 'Frase siguiente';
  @override
  String get shortcut_action_audiobook_play_pause => 'Reproducir / Pausar';
  @override
  String get shortcut_action_audiobook_prev_sentence => 'Frase anterior';
  @override
  String get shortcut_action_audiobook_seek_clicked =>
      'Saltar el audio a la frase pulsada';
  @override
  String get shortcut_action_dpad_down => 'Cruceta Abajo';
  @override
  String get shortcut_action_dpad_left => 'Cruceta Izquierda';
  @override
  String get shortcut_action_dpad_right => 'Cruceta Derecha';
  @override
  String get shortcut_action_dpad_up => 'Cruceta Arriba';
  @override
  String get shortcut_action_global_back => 'Volver';
  @override
  String get shortcut_action_global_external_lookup =>
      'App-external lookup hotkey';
  @override
  String get shortcut_action_global_scroll_page_down =>
      'Desplazar una pantalla hacia abajo';
  @override
  String get shortcut_action_global_scroll_page_up =>
      'Desplazar una pantalla hacia arriba';
  @override
  String get shortcut_action_global_toggle_fullscreen => 'Toggle fullscreen';
  @override
  String get shortcut_action_home_focus_search => 'Enfocar búsqueda';
  @override
  String get shortcut_action_home_tab_books => 'Pestaña de libros';
  @override
  String get shortcut_action_home_tab_dict => 'Pestaña de diccionario';
  @override
  String get shortcut_action_home_tab_next => 'Pestaña siguiente';
  @override
  String get shortcut_action_home_tab_prev => 'Pestaña anterior';
  @override
  String get shortcut_action_home_tab_settings => 'Pestaña de ajustes';
  @override
  String get shortcut_action_popup_next_entry => 'Next word entry';
  @override
  String get shortcut_action_popup_prev_entry => 'Previous word entry';
  @override
  String get shortcut_action_reader_create_card_from_popup =>
      'Crear tarjeta desde la ventana';
  @override
  String get shortcut_action_reader_dismiss_dict => 'Cerrar diccionario';
  @override
  String get shortcut_action_reader_enter_caret => 'Activar cursor de búsqueda';
  @override
  String get shortcut_action_reader_lookup_at_cursor =>
      'Consultar / activar cursor';
  @override
  String get shortcut_action_reader_open_menu => 'Open Settings Menu';
  @override
  String get shortcut_action_reader_open_navigation => 'Open Navigation';
  @override
  String get shortcut_action_reader_page_backward => 'Página anterior';
  @override
  String get shortcut_action_reader_page_forward => 'Página siguiente';
  @override
  String get shortcut_action_reader_shift_lookup => 'Consulta con Shift';
  @override
  String get shortcut_action_reader_toggle_chrome =>
      'Mostrar/ocultar controles';
  @override
  String get shortcut_action_reader_toggle_furigana =>
      'Mostrar/ocultar furigana';
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
  String get shortcut_action_video_next_chapter => 'Capítulo siguiente';
  @override
  String get shortcut_action_video_next_frame => 'Fotograma siguiente';
  @override
  String get shortcut_action_video_next_subtitle => 'Subtítulo siguiente';
  @override
  String get shortcut_action_video_open_subtitle_align =>
      'Open subtitle waveform align';
  @override
  String get shortcut_action_video_pause => 'Pausar';
  @override
  String get shortcut_action_video_play => 'Reproducir';
  @override
  String get shortcut_action_video_previous_chapter => 'Capítulo anterior';
  @override
  String get shortcut_action_video_previous_frame => 'Fotograma anterior';
  @override
  String get shortcut_action_video_previous_subtitle => 'Subtítulo anterior';
  @override
  String get shortcut_action_video_replay_current_subtitle =>
      'Repetir el subtítulo actual';
  @override
  String get shortcut_action_video_replay_previous_subtitle =>
      'Repetir el subtítulo anterior';
  @override
  String get shortcut_action_video_reset_speed => 'Restablecer velocidad';
  @override
  String get shortcut_action_video_screenshot => 'Captura de pantalla';
  @override
  String get shortcut_action_video_seek_backward => 'Retroceder';
  @override
  String get shortcut_action_video_seek_forward => 'Avanzar';
  @override
  String get shortcut_action_video_speed_down => 'Reducir velocidad';
  @override
  String get shortcut_action_video_speed_up => 'Acelerar';
  @override
  String get shortcut_action_video_subtitle_delay_decrease =>
      'Subtitle delay −';
  @override
  String get shortcut_action_video_subtitle_delay_increase =>
      'Subtitle delay +';
  @override
  String get shortcut_action_video_toggle_favorite_sentence =>
      'Añadir la frase actual a favoritos';
  @override
  String get shortcut_action_video_toggle_fullscreen =>
      'Alternar pantalla completa';
  @override
  String get shortcut_action_video_toggle_immersive_lock =>
      'Alternar bloqueo inmersivo';
  @override
  String get shortcut_action_video_toggle_mute => 'Alternar silencio';
  @override
  String get shortcut_action_video_toggle_play_pause => 'Reproducir / Pausar';
  @override
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle Hide Secondary Subtitle';
  @override
  String get shortcut_action_video_toggle_shader_compare =>
      'Alternar comparación de shaders';
  @override
  String get shortcut_action_video_toggle_subtitle_blur =>
      'Alternar difuminado de subtítulos';
  @override
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle Hide Subtitles';
  @override
  String get shortcut_action_video_toggle_subtitle_list =>
      'Alternar lista de subtítulos';
  @override
  String get shortcut_action_video_volume_down => 'Bajar volumen';
  @override
  String get shortcut_action_video_volume_up => 'Subir volumen';
  @override
  String get shortcut_assign_pick_action => 'Assign to action…';
  @override
  String get shortcut_clear => 'Borrar';
  @override
  String shortcut_conflict({required Object s}) => 'Ya usado por: ${s}';
  @override
  String shortcut_conflict_replace_confirm({required Object s}) =>
      'Este atajo ya lo usa ${s}. ¿Moverlo a esta acción?';
  @override
  String get shortcut_gamepad => 'Mando';
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
  String get shortcut_keyboard => 'Teclado';
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
  String get shortcut_press_key => 'Pulsa una combinación de teclas...';
  @override
  String get shortcut_press_mouse_button => 'Press a mouse button...';
  @override
  String get shortcut_press_wheel => 'Hold a modifier key and scroll here';
  @override
  String get shortcut_reset_confirm =>
      '¿Restablecer todos los atajos de esta sección a los valores predeterminados?';
  @override
  String get shortcut_reset_defaults => 'Restablecer valores predeterminados';
  @override
  String get shortcut_scope_audiobook => 'Audiolibro';
  @override
  String get shortcut_scope_dictionary_popup => 'Dictionary popup';
  @override
  String get shortcut_scope_dictionary_popup_note =>
      'Works while the pointer is over a dictionary popup';
  @override
  String get shortcut_scope_gamepad => 'Mando';
  @override
  String get shortcut_scope_global => 'Global';
  @override
  String get shortcut_scope_global_external => 'Global (app-external)';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this hotkey.';
  @override
  String get shortcut_scope_home => 'Inicio';
  @override
  String get shortcut_scope_reader => 'Lector';
  @override
  String get shortcut_scope_video => 'Vídeo';
  @override
  String get shortcut_settings_title => 'Atajos de teclado';
  @override
  String get shortcut_stop_capture => 'Detener';
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
  String get show_expression_tags => 'Mostrar etiquetas de expresión';
  @override
  String get show_floating_lyric => 'Letra flotante superpuesta';
  @override
  String get show_media_notification => 'Mostrar notificación multimedia';
  @override
  String get show_options => 'Mostrar opciones';
  @override
  String get show_top_progress_bar => 'Indicador de progreso';
  @override
  String get skip_action => 'Acción de salto';
  @override
  String skip_action_seconds({required Object n}) => '${n} segundos';
  @override
  String get skip_action_sentence => '1 frase';
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
  String get source_description_epub =>
      'Lectura de EPUB y búsqueda en diccionario';
  @override
  String get source_name_bookshelf => 'Estantería';
  @override
  String get spread_auto => 'Automático';
  @override
  String get spread_direction => 'Dirección de extensión';
  @override
  String get spread_direction_ltr => 'De izquierda a derecha';
  @override
  String get spread_direction_rtl => 'De derecha a izquierda';
  @override
  String get spread_mode => 'Modo de extensión';
  @override
  String get spread_off => 'Desactivado';
  @override
  String get spread_on => 'Activado';
  @override
  String get srt_audio_unresolved =>
      'Archivo de audio no encontrado — por favor vuelve a adjuntarlo';
  @override
  String get srt_books_section => 'Audiolibros con subtítulos';
  @override
  String srt_delete_confirm({required Object title}) =>
      '?Eliminar 『${title}』? Esta acción no se puede deshacer.';
  @override
  String get srt_delete_title => 'Eliminar libro de subtítulos';
  @override
  String get srt_epub_not_ready => 'Libro no preparado — por favor reimporta';
  @override
  String get srt_import => 'Importar libro';
  @override
  String get srt_import_audio_needs_subtitle =>
      'El audio debe emparejarse con subtítulos. Para adjuntar audio a un EPUB existente, mantén pulsado el libro en la estantería.';
  @override
  String get srt_import_author_hint => 'Autor (opcional)';
  @override
  String get srt_import_error => 'Error en la importación';
  @override
  String srt_import_files_selected({required Object n}) =>
      '${n} archivos seleccionados';
  @override
  String get srt_import_hint_epub_or_srt =>
      'Elige un archivo EPUB o de subtítulos para importar.';
  @override
  String get srt_import_missing_input =>
      'Selecciona al menos un EPUB o un archivo de subtítulos';
  @override
  String get srt_import_missing_title => 'Introduce un título para el libro';
  @override
  String get srt_import_pick_audio_dir => 'Elegir directorio de audio';
  @override
  String get srt_import_pick_audio_files => 'Elegir archivos de audio';
  @override
  String get srt_import_pick_cover => 'Elegir imagen de portada';
  @override
  String get srt_import_pick_epub => 'Elegir EPUB';
  @override
  String get srt_import_pick_subtitle_files => 'Elegir archivos de subtítulos';
  @override
  String get srt_import_success => 'Libro importado';
  @override
  String get srt_import_title_hint => 'Título del libro';
  @override
  String get startup_default_dictionary_tab => 'Abrir la consulta al iniciar';
  @override
  String get startup_default_dictionary_tab_hint =>
      'Inicia la pantalla principal en la pestaña de consulta en lugar del valor predeterminado actual.';
  @override
  String get stash => 'Guardado rápido';
  @override
  String get stash_added_multiple =>
      'Se han añadido varios elementos al Guardado rápido.';
  @override
  String stash_added_single({required Object term}) =>
      '『${term}』se ha añadido al Guardado rápido.';
  @override
  String get stash_clear_description =>
      'Se eliminará todo el contenido. ?Estás seguro?';
  @override
  String stash_clear_single({required Object term}) =>
      '『${term}』 se ha eliminado del Guardado rápido.';
  @override
  String get stash_clear_title => 'Vaciar Guardado rápido';
  @override
  String get stash_nothing_to_pop =>
      'No hay elementos para sacar del Guardado rápido.';
  @override
  String get stash_placeholder => 'No hay elementos en el Guardado rápido';
  @override
  String get stat_all_time => 'Todo el tiempo';
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
  String get stat_favorited => 'Favoritos';
  @override
  String get stat_favorited_sentence => 'Frases favoritas';
  @override
  String stat_format_chars({required Object n}) => '${n} caracteres';
  @override
  String stat_format_chars_wan({required Object n}) => '${n}万 caracteres';
  @override
  String stat_format_days({required Object n}) => '${n} days';
  @override
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h} h ${m} min';
  @override
  String stat_format_minutes({required Object n}) => '${n} min';
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
  String get stat_last_30_days => 'últimos 30 días';
  @override
  String get stat_lookup => 'Lookups';
  @override
  String get stat_metric_chars => 'Characters';
  @override
  String get stat_metric_speed => 'Speed';
  @override
  String get stat_metric_time => 'Time';
  @override
  String get stat_mined => 'Tarjetas creadas';
  @override
  String get stat_no_data => 'Aún no hay datos de lectura';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => 'Active Days (7d)';
  @override
  String get stat_refresh => 'Actualizar';
  @override
  String get stat_slowest_day => 'Slowest Day';
  @override
  String get stat_sort_by_chars => 'Por caracteres';
  @override
  String get stat_sort_by_speed => 'Por velocidad';
  @override
  String get stat_sort_by_time => 'Por tiempo';
  @override
  String get stat_speed_anomaly => 'Anomalía';
  @override
  String get stat_speed_avg => 'Media móvil';
  @override
  String stat_speed_cph({required Object n}) => '${n} caracteres/h';
  @override
  String get stat_speed_summary => 'Speed Summary';
  @override
  String get stat_streak => 'Streak';
  @override
  String get stat_this_month => 'Este mes';
  @override
  String get stat_this_week => 'Esta semana';
  @override
  String get stat_today => 'Hoy';
  @override
  String get stat_today_hourly => 'Hoy por hora';
  @override
  String get stat_trend_daily => 'Diaria';
  @override
  String get stat_trend_monthly => 'Mensual';
  @override
  String get stat_trend_weekly => 'Semanal';
  @override
  String get stat_typical_day => 'Typical Day';
  @override
  String get stat_vs_prev => 'vs prev 14d';
  @override
  String get stat_weighted_avg_speed => 'Weighted Avg';
  @override
  String get stop => 'Detener';
  @override
  String get storage_permissions =>
      'Por favor concede los siguientes permisos para exportar a AnkiDroid.';
  @override
  String get stream => 'Transmisión';
  @override
  String get swipe_page_turn_sensitivity =>
      'Sensibilidad de pasar página al deslizar';
  @override
  String get sync_account => 'Cuenta';
  @override
  String get sync_audiobook => 'Sincronizar posición del audiolibro';
  @override
  String get sync_audiobook_files => 'Sincronizar archivos de audiolibros';
  @override
  String get sync_audiobook_files_warning =>
      'El audio y los subtítulos pueden ser grandes.';
  @override
  String sync_auth_error({required Object message}) =>
      'Error de autenticación: ${message}';
  @override
  String get sync_auto_sync => 'Sincronización automática';
  @override
  String get sync_backend => 'Backend de almacenamiento';
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
  String get sync_checking_account => 'Verificando cuenta…';
  @override
  String get sync_client_connected => 'Connected';
  @override
  String get sync_client_token => 'Peer access token';
  @override
  String get sync_client_token_manual => 'Enter token manually';
  @override
  String get sync_compare => 'Comparar datos';
  @override
  String get sync_compare_all_books => 'Todos los libros';
  @override
  String get sync_compare_all_local => 'Todo → Local';
  @override
  String get sync_compare_all_remote => 'Todo → Remoto';
  @override
  String get sync_compare_all_skip => 'Todo → Omitir';
  @override
  String sync_compare_applied({required Object count}) =>
      'Se aplicaron ${count} cambios';
  @override
  String sync_compare_apply({required Object count}) =>
      'Sincronizar ahora (${count})';
  @override
  String get sync_compare_close => 'Cerrar';
  @override
  String get sync_compare_conflicts => 'Conflictos';
  @override
  String get sync_compare_days => 'días';
  @override
  String get sync_compare_delete_audiobook =>
      'Eliminar audiolibro en el remoto';
  @override
  String get sync_compare_delete_book => 'Eliminar libro en el remoto';
  @override
  String sync_compare_delete_confirm({required Object name}) =>
      '¿Eliminar "${name}" del remoto? Los datos locales se conservan. Esto no se puede deshacer.';
  @override
  String get sync_compare_delete_dict => 'Eliminar diccionario en el remoto';
  @override
  String get sync_compare_deleted => 'Eliminado del remoto';
  @override
  String get sync_compare_dictionaries => 'Diccionarios';
  @override
  String get sync_compare_download => 'Descargar';
  @override
  String get sync_compare_empty => 'No se encontraron libros';
  @override
  String get sync_compare_local => 'Local';
  @override
  String get sync_compare_no_content =>
      'Solo datos en la nube: no hay libro para descargar';
  @override
  String get sync_compare_no_data => 'Sin datos';
  @override
  String get sync_compare_remote => 'Remoto';
  @override
  String get sync_compare_select_all => 'Seleccionar todo';
  @override
  String get sync_compare_skip => 'Omitir';
  @override
  String get sync_compare_title => 'Local vs. remoto';
  @override
  String get sync_compare_unavailable => 'Set up sync first';
  @override
  String get sync_compare_use_local => 'Local';
  @override
  String get sync_compare_use_remote => 'Remoto';
  @override
  String get sync_connection_failed => 'Error de conexión';
  @override
  String get sync_connection_success => 'Conexión correcta';
  @override
  String get sync_content => 'Sincronizar archivos de libros';
  @override
  String get sync_content_warning =>
      'Los archivos grandes consumirán almacenamiento y datos';
  @override
  String get sync_dictionary => 'Sincronizar diccionarios';
  @override
  String get sync_dictionary_warning =>
      'Los paquetes de diccionario pueden ser grandes e incluir recursos de diccionario importados.';
  @override
  String get sync_err_auth_expired =>
      'La sesión ha caducado: inicia sesión de nuevo.';
  @override
  String get sync_err_invalid_client =>
      'Las credenciales del cliente no son válidas para esta versión: actualiza la app.';
  @override
  String get sync_err_network =>
      'No se puede conectar con el servidor: revisa tu red o los ajustes de proxy.';
  @override
  String get sync_err_not_configured =>
      'Las credenciales de sincronización de Google no están configuradas en esta versión.';
  @override
  String get sync_err_quota =>
      'El almacenamiento en la nube está lleno (cuota alcanzada).';
  @override
  String get sync_err_scope_upgrade =>
      'Sync permissions changed — please sign in to Google again to continue syncing.';
  @override
  String get sync_err_timeout =>
      'Se agotó el tiempo de conexión: el servidor no respondió a tiempo.';
  @override
  String sync_error({required Object message}) =>
      'Error de sincronización: ${message}';
  @override
  String get sync_exit_warning =>
      'La sincronización aún está en curso. Salir ahora puede provocar pérdida de datos.';
  @override
  String get sync_exit_warning_title => 'Sincronización en curso';
  @override
  String get sync_host => 'Servidor';
  @override
  String get sync_lan_discovery => 'Dispositivos en la red local';
  @override
  String get sync_lan_no_devices => 'No se encontraron dispositivos';
  @override
  String get sync_lan_scan_failed =>
      'Error al buscar: revisa los permisos de red o el firewall.';
  @override
  String get sync_local_audio => 'Sincronizar audio local';
  @override
  String get sync_local_audio_warning =>
      'Sincroniza las bases de datos de fuentes de audio local (pueden ser grandes)';
  @override
  String get sync_not_signed_in => 'No conectado';
  @override
  String get sync_now => 'Sincronizar ahora';
  @override
  String sync_now_audio_in({required Object count}) => '↓${count} audiolibros';
  @override
  String sync_now_audio_out({required Object count}) => '↑${count} audiolibros';
  @override
  String sync_now_books_in({required Object count}) => '↓${count} libros';
  @override
  String get sync_now_busy => 'Ya hay una sincronización en curso';
  @override
  String sync_now_dicts_in({required Object count}) => '↓${count} diccionarios';
  @override
  String sync_now_dicts_out({required Object count}) =>
      '↑${count} diccionarios';
  @override
  String sync_now_done({required Object detail}) => 'Sincronizado · ${detail}';
  @override
  String sync_now_failed_suffix({required Object count}) =>
      ' · ${count} fallidos';
  @override
  String get sync_now_hint =>
      'Ejecutar ahora una sincronización bidireccional completa con la nube';
  @override
  String sync_now_local_audio_in({required Object count}) =>
      '↓${count} fuentes de audio';
  @override
  String sync_now_local_audio_out({required Object count}) =>
      '↑${count} fuentes de audio';
  @override
  String get sync_now_no_changes => 'sin cambios';
  @override
  String get sync_pair_allow => 'Permitir';
  @override
  String sync_pair_confirm_identity_body({required Object device}) =>
      'You are pairing with ${device}. Confirm this is the device you expect before continuing.';
  @override
  String get sync_pair_confirm_identity_title => 'Confirm device';
  @override
  String get sync_pair_continue => 'Continue';
  @override
  String get sync_pair_denied =>
      'El otro dispositivo rechazó el emparejamiento';
  @override
  String get sync_pair_deny => 'Denegar';
  @override
  String get sync_pair_enter_pin_body =>
      'Enter the 6-digit PIN shown on the other device.';
  @override
  String get sync_pair_enter_pin_title => 'Enter PIN';
  @override
  String get sync_pair_failed => 'Error de emparejamiento';
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
  String get sync_pair_request_body =>
      'Un dispositivo solicita emparejarse. ¿Permitir que se sincronice con este dispositivo?';
  @override
  String get sync_pair_request_title => 'Solicitud de emparejamiento';
  @override
  String get sync_pair_success => 'Emparejado: token rellenado';
  @override
  String get sync_pair_unavailable =>
      'El otro dispositivo no está listo o tiene una versión anterior. Actualízalo y activa la sincronización, luego inténtalo de nuevo.';
  @override
  String get sync_pair_unknown_device => 'Dispositivo desconocido';
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
  String get sync_password => 'Contraseña';
  @override
  String get sync_port => 'Puerto';
  @override
  String get sync_private_key => 'Clave privada';
  @override
  String get sync_progress_audiobooks => 'Sincronizando audiolibros';
  @override
  String get sync_progress_books => 'Importando libros';
  @override
  String get sync_progress_dictionaries => 'Sincronizando diccionarios';
  @override
  String get sync_progress_local_audio => 'Sincronizando audio local';
  @override
  String get sync_progress_reading => 'Sincronizando datos de lectura';
  @override
  String get sync_progress_videos => 'Syncing videos';
  @override
  String get sync_role_locked_by_client =>
      'Ya conectado a otro dispositivo. Quita la conexión antes de actuar como servidor.';
  @override
  String get sync_role_locked_by_server =>
      'Este dispositivo actúa como servidor. Apaga el servidor antes de conectarte a otros dispositivos.';
  @override
  String get sync_section_actions => 'Acciones de sincronización';
  @override
  String get sync_section_backup => 'Copia de seguridad local';
  @override
  String get sync_section_content => 'Qué sincronizar';
  @override
  String get sync_section_host_server =>
      'Este dispositivo como servidor de sincronización';
  @override
  String get sync_section_host_server_footer =>
      'Permite que otros dispositivos sincronicen desde este dispositivo. Independiente del backend de sincronización anterior.';
  @override
  String get sync_section_method => 'Método de sincronización';
  @override
  String get sync_server_copy_token => 'Copiar token';
  @override
  String get sync_server_enable => 'Activar servidor de sincronización';
  @override
  String get sync_server_mode_active =>
      'Este dispositivo es un servidor de sincronización';
  @override
  String get sync_server_mode_clients_drive =>
      'Los clientes conectados inician la sincronización: aquí no hace falta sincronizar manualmente.';
  @override
  String get sync_server_port => 'Puerto del servidor';
  @override
  String sync_server_port_in_use({required Object port}) =>
      'El puerto ${port} ya está en uso: elige otro puerto.';
  @override
  String get sync_server_regenerate_token => 'Regenerar token';
  @override
  String get sync_server_running => 'Servidor en ejecución';
  @override
  String get sync_server_stopped => 'Servidor detenido';
  @override
  String get sync_server_tls_enable => 'Interconnect encryption (HTTPS/TLS)';
  @override
  String get sync_server_tls_repair_hint =>
      'Changing this requires paired devices to pair again';
  @override
  String get sync_server_token => 'Token de acceso';
  @override
  String get sync_show_remote_entries => 'Show remote entries';
  @override
  String get sync_show_remote_entries_warning =>
      'Show books and videos that exist on paired devices or the cloud as placeholder cards you can download or stream.';
  @override
  String get sync_sign_in => 'Iniciar sesión';
  @override
  String get sync_sign_out => 'Cerrar sesión';
  @override
  String get sync_signed_in => 'Conectado';
  @override
  String get sync_statistics => 'Sincronizar estadísticas';
  @override
  String get sync_summary =>
      'Nube, P2P por red local y copia de seguridad local';
  @override
  String get sync_test_connection => 'Probar conexión';
  @override
  String get sync_use_tls => 'Usar TLS';
  @override
  String get sync_username => 'Usuario';
  @override
  String get sync_video_files => 'Upload video files';
  @override
  String get sync_video_files_warning => 'Video files can be very large.';
  @override
  String get sync_webdav_missing_fields => 'Faltan campos';
  @override
  String sync_webdav_test_failed({required Object message}) =>
      'Error de conexión: ${message}';
  @override
  String get sync_webdav_url => 'URL del servidor';
  @override
  String tag_added_to_book({required Object name}) =>
      'Etiqueta "${name}" añadida al libro.';
  @override
  String tag_added_to_collection({required Object name}) =>
      'Tag ${name} added to collection.';
  @override
  String tag_added_to_video({required Object name}) =>
      'Etiqueta ${name} añadida al vídeo.';
  @override
  String tag_already_on_book({required Object name}) =>
      'La etiqueta "${name}" ya está en este libro.';
  @override
  String tag_already_on_collection({required Object name}) =>
      'Tag ${name} is already on this collection.';
  @override
  String tag_book_count({required Object count}) => '${count} libro(s)';
  @override
  String get tag_clear_filter => 'Borrar filtro';
  @override
  String get tag_color => 'Color';
  @override
  String tag_delete_confirm({required Object name}) =>
      '¿Eliminar etiqueta "${name}"?';
  @override
  String get tag_filter_title => 'Filtrar por etiqueta';
  @override
  String get tag_label => 'Etiquetas';
  @override
  String get tag_manage => 'Gestionar etiquetas';
  @override
  String get tag_manage_title => 'Gestionar etiquetas';
  @override
  String get tag_name_duplicate => 'Ya existe una etiqueta con este nombre.';
  @override
  String get tag_name_empty => 'El nombre de la etiqueta no puede estar vacío.';
  @override
  String get tag_name_hint => 'Nombre de la etiqueta';
  @override
  String get tag_new => 'Nueva etiqueta';
  @override
  String get tag_no_books_for_filter =>
      'Ningún libro coincide con las etiquetas seleccionadas.';
  @override
  String get tag_no_tags_hint => 'Aún no hay etiquetas. Crea una para empezar.';
  @override
  String get tag_seed_stars => 'Add star rating tags';
  @override
  String get tag_seed_stars_added => 'Star rating tags added';
  @override
  String get tag_seed_stars_exists => 'Star rating tags already exist';
  @override
  String get tap_empty_hide_chrome => 'Floating control bar';
  @override
  String get text_segmentation => 'Segmentación de texto';
  @override
  String get texthooker => 'Texthooker';
  @override
  String get texthooker_enabled => 'Texthooker (recibir texto)';
  @override
  String get texthooker_enabled_hint =>
      'Conéctate a Textractor/mpv/agente y consulta el texto entrante';
  @override
  String get texthooker_experimental_banner =>
      'Texthooker es experimental: el texto en vivo, la consulta y la creación de tarjetas pueden ser inestables.';
  @override
  String get theme_black => 'Negro puro';
  @override
  String get theme_code_copied => 'Código de tema copiado al portapapeles';
  @override
  String get theme_dark => 'Oscuro profundo';
  @override
  String get theme_ecru => 'Crudo';
  @override
  String get theme_eyecare => 'Eye Care';
  @override
  String get theme_gray => 'Gris oscuro';
  @override
  String get theme_light => 'Blanco';
  @override
  String get theme_seed_preview_hint =>
      'Las muestras de abajo previsualizan los colores generados a partir de tu color semilla. Para fijar un color concreto como acento principal, activa el interruptor Principal y elígelo de forma explícita.';
  @override
  String get theme_water => 'Azul agua';
  @override
  String toc_section({required Object n}) => 'índice (${n})';
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
  String get reader_font_size => 'Tamaño de fuente';
  @override
  String get reader_font_vpal => 'VPAL (alt. vertical)';
  @override
  String get reader_furigana_hide => 'Ocultar';
  @override
  String get reader_furigana_mode => 'Furigana';
  @override
  String get reader_furigana_mode_hint => '';
  @override
  String get reader_furigana_partial => 'Parcial';
  @override
  String get reader_furigana_show => 'Mostrar';
  @override
  String get reader_furigana_toggle => 'Alternar';
  @override
  String get reader_horizontal => 'Horizontal';
  @override
  String get reader_line_height => 'Altura de línea';
  @override
  String get reader_merge_image_pages => 'Merge illustration pages into text';
  @override
  String get reader_merge_image_pages_subtitle =>
      'Standalone single-image chapters render inline in the adjacent text chapter instead of on their own page';
  @override
  String get reader_no_books_added => 'No hay libros en la biblioteca';
  @override
  String get reader_not_bound_cannot_rematch =>
      'El audiolibro no está vinculado a un libro, no se puede re-emparejar';
  @override
  String get reader_orient_mixed => 'Mixto';
  @override
  String get reader_orient_upright => 'Vertical';
  @override
  String get reader_page_columns_auto => 'Automático';
  @override
  String get reader_paginated => 'Paginado';
  @override
  String get reader_paragraph_spacing => 'Paragraph spacing';
  @override
  String get reader_reader_styles => 'Priorizar estilos del libro';
  @override
  String get reader_scroll => 'Desplazamiento';
  @override
  String get reader_text_indentation => 'Sangría de párrafo';
  @override
  String get reader_text_justify => 'Justificación de texto';
  @override
  String get reader_theme => 'Tema';
  @override
  String get reader_vert_kerning => 'Interletraje (vertical)';
  @override
  String get reader_vert_text_orient => 'Orientación del texto';
  @override
  String get reader_vertical => 'Vertical';
  @override
  String get reader_view_mode_label => 'Páginas / Desplazamiento';
  @override
  String get reader_vn => 'Visual Novel';
  @override
  String get reader_writing_direction => 'Dirección de escritura';
  @override
  String get undo => 'Deshacer';
  @override
  String get unit_milliseconds => 'ms';
  @override
  String get unit_pixels => 'px';
  @override
  String untitled_book({required Object id}) => 'Libro ${id}';
  @override
  String get untitled_chapter => '(Sin título)';
  @override
  String get update_already_latest => 'You\'re on the latest version';
  @override
  String get update_auto_install => 'Instalar actualizaciones automáticamente';
  @override
  String get update_available => 'Actualización disponible';
  @override
  String update_cached_newer({required Object version}) =>
      'Update ${version} available (verifying…)';
  @override
  String update_cached_up_to_date({required Object version}) =>
      'On latest known version ${version} (checking…)';
  @override
  String get update_cancel => 'Cancelar';
  @override
  String get update_cancelled => 'Descarga cancelada';
  @override
  String get update_cancelling => 'Cancelando…';
  @override
  String get update_channel_beta => 'Beta';
  @override
  String get update_channel_debug => 'Depuración';
  @override
  String get update_channel_stable => 'Estable';
  @override
  String get update_check_failed => 'Error al buscar actualizaciones';
  @override
  String get update_checking_now => 'Checking for updates…';
  @override
  String get update_connecting => 'Conectando…';
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
  String get update_debug_channel => 'Canal de actualización de depuración';
  @override
  String get update_debug_channel_warning =>
      'Las compilaciones del canal de depuración pueden ser inestables. Úselas bajo su propio riesgo.';
  @override
  String get update_download => 'Descargar';
  @override
  String get update_download_failed => 'Error al descargar';
  @override
  String get update_download_not_resumed => 'no reanudada';
  @override
  String get update_download_restarted_from_zero => 'reiniciada desde cero';
  @override
  String update_download_resume_status({required Object status}) =>
      'Reanudación: ${status}';
  @override
  String get update_download_resumed => 'reanudada';
  @override
  String update_download_size(
          {required Object received, required Object total}) =>
      'Descargado: ${received} / ${total}';
  @override
  String update_download_source({required Object source}) =>
      'Fuente: ${source}';
  @override
  String update_download_speed({required Object speed}) =>
      'Velocidad: ${speed}';
  @override
  String get update_downloading => 'Descargando actualización…';
  @override
  String get update_hide => 'Ocultar';
  @override
  String update_install_current_executable({required Object path}) =>
      'Ejecutable en uso: ${path}';
  @override
  String update_install_deletefile_failure(
          {required Object path, required Object code}) =>
      'El instalador no pudo reemplazar ${path} (código ${code})';
  @override
  String update_install_detected_location(
          {required Object source, required Object path}) =>
      'Ubicación de instalación detectada (${source}): ${path}';
  @override
  String update_install_failure_summary({required Object summary}) =>
      'Motivo: ${summary}';
  @override
  String get update_install_incomplete_message =>
      'El instalador se inició, pero Fushi sigue en la versión anterior. Revisa el registro del instalador más abajo.';
  @override
  String get update_install_incomplete_title => 'La actualización no terminó';
  @override
  String update_install_installer_pid({required Object pid}) =>
      'PID del instalador: ${pid}';
  @override
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi no pudo iniciar el instalador de la versión ${version}. Revisa la ruta del registro más abajo.';
  @override
  String get update_install_launch_failed_title =>
      'El instalador de la actualización no se inició';
  @override
  String update_install_launcher_pid({required Object pid}) =>
      'PID del lanzador de actualización: ${pid}';
  @override
  String update_install_libmpv_holder(
          {required Object pid, required Object path}) =>
      'Proceso que retiene libmpv: PID ${pid} - ${path}';
  @override
  String get update_install_log_not_observed =>
      'El registro del instalador no se creó durante la comprobación posterior al inicio.';
  @override
  String get update_install_log_observed =>
      'El registro del instalador se creó durante la comprobación posterior al inicio.';
  @override
  String update_install_log_path({required Object path}) =>
      'Registro del instalador: ${path}';
  @override
  String get update_install_manual_close_retry =>
      'Cierra Fushi según el PID/ruta indicados y vuelve a intentar la actualización o ejecuta el instalador de nuevo.';
  @override
  String get update_install_parent_exit_not_observed =>
      'El lanzador de la actualización no comprobó que Fushi se cerrara antes de iniciar el instalador.';
  @override
  String get update_install_parent_exit_observed =>
      'Fushi se cerró antes de iniciar el instalador.';
  @override
  String update_install_path_mismatch({required Object warning}) =>
      'Directorio de instalación no coincidente: ${warning}';
  @override
  String get update_install_permission_cancel => 'Cancel';
  @override
  String get update_install_permission_message =>
      'Please allow Fushi to install apps in system settings, then retry.';
  @override
  String get update_install_permission_retry => 'Retry install';
  @override
  String get update_install_permission_title => 'Allow installing updates';
  @override
  String get update_install_restart_windows_hint =>
      'Si los procesos indicados están cerrados pero libmpv-2.dll sigue bloqueado, reinicia Windows e instala de nuevo.';
  @override
  String update_install_running_process(
          {required Object pid, required Object path}) =>
      'Proceso de Fushi en ejecución: PID ${pid} - ${path}';
  @override
  String update_install_success_message({required Object version}) =>
      'Fushi se actualizó a la versión ${version}.';
  @override
  String get update_install_success_title => 'Actualización instalada';
  @override
  String update_install_target_dir({required Object path}) =>
      'Destino de instalación: ${path}';
  @override
  String get update_installing => 'Instalando…';
  @override
  String get update_mac_install_incomplete_message =>
      'The update could not be applied, so Fushi is still on the previous version. You can retry the update, or download the latest release manually.';
  @override
  String update_message({required Object version}) =>
      'La versión ${version} está disponible.';
  @override
  String update_network_failure(
          {required Object host, required Object reason}) =>
      'No se pudo conectar con ${host}: ${reason}';
  @override
  String get update_never_remind => 'No recordar de nuevo';
  @override
  String get update_skip => 'Omitir';
  @override
  String get url => 'URL';
  @override
  String get video_audio_track => 'Pista de audio';
  @override
  String get video_audio_track_empty => 'No switchable audio tracks';
  @override
  String video_audio_track_switched({required Object label}) =>
      'Pista de audio: ${label}';
  @override
  String get video_auto_play_next_cancel => 'Cancelar';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      'Siguiente episodio en ${seconds} s';
  @override
  String get video_black_flash_notice_action => 'View suggestions';
  @override
  String get video_black_flash_notice_dont_show_again => 'Don\'t show again';
  @override
  String get video_bottom_next_cue =>
      'Subtítulo siguiente (avanza un poco si no hay)';
  @override
  String get video_bottom_play_pause => 'Reproducir / Pausar';
  @override
  String get video_bottom_prev_cue =>
      'Subtítulo anterior (retrocede un poco si no hay)';
  @override
  String get video_bottom_seek_back => 'Atrás 10 s';
  @override
  String get video_bottom_seek_back_label => '−10s';
  @override
  String get video_bottom_seek_forward => 'Adelante 10 s';
  @override
  String get video_bottom_seek_forward_label => '+10s';
  @override
  String video_chapter_n({required Object n}) => 'Capítulo ${n}';
  @override
  String get video_chapters => 'Capítulos';
  @override
  String get video_chapters_empty => 'Sin capítulos';
  @override
  String get video_clip_export => 'Exportar fragmento';
  @override
  String get video_clip_export_cancelled => 'Clip export cancelled';
  @override
  String video_clip_export_failed({required Object reason}) =>
      'Error al exportar el fragmento: ${reason}';
  @override
  String get video_clip_export_ffmpeg_failed => 'ffmpeg falló';
  @override
  String get video_clip_export_ffmpeg_unavailable =>
      'ffmpeg no está disponible';
  @override
  String get video_clip_export_input_missing =>
      'El vídeo de origen no está disponible';
  @override
  String get video_clip_export_invalid_range =>
      'No hay un rango de fragmento válido';
  @override
  String get video_clip_export_output_missing =>
      'No se creó ningún archivo de salida';
  @override
  String get video_clip_export_remote_download_required =>
      'Descarga el vídeo remoto a este dispositivo antes de exportar un fragmento';
  @override
  String get video_clip_export_source_changed =>
      'Cambió la fuente de vídeo; se canceló la exportación del fragmento';
  @override
  String get video_clip_export_start => 'Iniciar exportación de fragmento';
  @override
  String get video_clip_export_stop => 'Detener y exportar fragmento';
  @override
  String video_clip_exported({required Object path}) =>
      'Fragmento exportado: ${path}';
  @override
  String video_clip_exported_with_subtitles({required Object path}) =>
      'Clip exported with subtitles: ${path}';
  @override
  String get video_clip_exporting => 'Exportando fragmento…';
  @override
  String get video_continue_watching => 'Continue Watching';
  @override
  String get video_control_audio_track => 'Pista de audio';
  @override
  String get video_control_customize_hint =>
      'Elige dónde se coloca cada botón en el reproductor, o quítalo.';
  @override
  String get video_control_episode_list => 'Lista de episodios';
  @override
  String get video_control_favorite_sentence =>
      'Añadir la frase actual a favoritos';
  @override
  String get video_control_fullscreen => 'Pantalla completa';
  @override
  String get video_control_next_cue => 'Subtítulo siguiente';
  @override
  String get video_control_palette_hint =>
      'Arrastra un botón a una posición para añadirlo; un botón puede estar en varias posiciones.';
  @override
  String get video_control_palette_title => 'Todos los botones';
  @override
  String get video_control_play_pause => 'Reproducir/Pausar';
  @override
  String get video_control_previous_cue => 'Subtítulo anterior';
  @override
  String get video_control_reject_required =>
      'Los controles obligatorios deben permanecer en el reproductor.';
  @override
  String get video_control_reject_unavailable =>
      'Este control no se puede colocar ahí.';
  @override
  String get video_control_reject_volume_bottom =>
      'El volumen solo puede ir en la barra inferior.';
  @override
  String get video_control_remove_from_slot => 'Quitar';
  @override
  String get video_control_reset_layout =>
      'Restablecer la disposición de los botones del reproductor';
  @override
  String get video_control_screenshot => 'Captura de pantalla';
  @override
  String get video_control_seek_backward => 'Atrás 10 s';
  @override
  String get video_control_seek_forward => 'Adelante 10 s';
  @override
  String get video_control_settings => 'Ajustes del reproductor';
  @override
  String get video_control_slot_bottom_center => 'Barra inferior (centro)';
  @override
  String get video_control_slot_bottom_left => 'Barra inferior (izquierda)';
  @override
  String get video_control_slot_bottom_right => 'Barra inferior (derecha)';
  @override
  String get video_control_slot_drop_hint => 'Arrastra un botón aquí';
  @override
  String get video_control_slot_hidden => 'Quitado del reproductor';
  @override
  String get video_control_slot_screen_left => 'Lado izquierdo de la pantalla';
  @override
  String get video_control_slot_screen_right => 'Lado derecho de la pantalla';
  @override
  String get video_control_slot_top_center => 'Barra superior (centro)';
  @override
  String get video_control_slot_top_left => 'Barra superior (izquierda)';
  @override
  String get video_control_slot_top_right => 'Barra superior (derecha)';
  @override
  String get video_control_speed => 'Velocidad';
  @override
  String get video_control_subtitle_list => 'Lista de subtítulos';
  @override
  String get video_control_subtitle_track => 'Pista de subtítulos';
  @override
  String get video_control_title => 'Nombre del vídeo';
  @override
  String get video_control_volume => 'Volumen';
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
      '¿Eliminar 『${title}』? Esta acción no se puede deshacer.';
  @override
  String get video_delete_title => 'Eliminar vídeo';
  @override
  String get video_double_tap_next_cue => 'Línea siguiente';
  @override
  String get video_double_tap_prev_cue => 'Línea anterior';
  @override
  String get video_drop_audio_unsupported =>
      'Suelta archivos de subtítulos sobre el vídeo actual. Aquí no se pueden adjuntar archivos de audio.';
  @override
  String get video_drop_subtitle_only =>
      'Suelta archivos de subtítulos sobre el vídeo actual.';
  @override
  String get video_episode_list => 'Episodios';
  @override
  String get video_episode_list_empty => 'Sin episodios';
  @override
  String video_favorite_count({required Object count}) => '${count} favoritos';
  @override
  String get video_file_error_content =>
      'No se pudo cargar el archivo de vídeo. Asegúrate de que el archivo existe y está en un directorio accesible por la aplicación.';
  @override
  String get video_file_not_found => 'Video file not found';
  @override
  String get video_immersive_locked => 'Modo inmersivo activado';
  @override
  String get video_immersive_mode_full => 'Todos los controles';
  @override
  String get video_immersive_mode_lookup_only => 'Solo consulta';
  @override
  String get video_immersive_mode_seek_lookup => 'Atajo + consulta';
  @override
  String get video_immersive_mode_unlock_only => 'Solo desbloquear';
  @override
  String get video_immersive_unlock => 'Desbloquear';
  @override
  String get video_immersive_unlocked => 'Modo inmersivo desactivado';
  @override
  String get video_import_action => 'Importar vídeo';
  @override
  String get video_import_confirm => 'Importar';
  @override
  String video_import_folder_done({required Object count}) =>
      'Se importaron ${count} series';
  @override
  String get video_import_folder_empty =>
      'No se encontraron archivos de vídeo en esta carpeta';
  @override
  String get video_import_pick_folder =>
      'Importar carpeta (agrupar episodios automáticamente)';
  @override
  String get video_import_pick_playlist => 'Elegir lista m3u8';
  @override
  String get video_import_pick_subtitle => 'Elegir subtítulo';
  @override
  String get video_import_pick_video => 'Elegir archivo de vídeo';
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
  String get video_import_subtitle_optional =>
      'Subtítulo externo opcional (puedes cambiar entre subtítulos incrustados/externos en cualquier momento durante la reproducción)';
  @override
  String get video_import_title => 'Importar vídeo';
  @override
  String get video_jimaku_anime_match => 'Anime match';
  @override
  String get video_jimaku_api_key => 'Jimaku API key';
  @override
  String get video_jimaku_api_key_hint =>
      'Consigue una API key gratuita en jimaku.cc/account';
  @override
  String get video_jimaku_api_key_set => 'API key configurada';
  @override
  String video_jimaku_batch_done(
          {required Object done, required Object total}) =>
      'Subtitles fetched: ${done}/${total}';
  @override
  String get video_jimaku_batch_download => 'Download all';
  @override
  String get video_jimaku_batch_title => 'Fetch subtitles for collection';
  @override
  String get video_jimaku_download_failed => 'Error al descargar';
  @override
  String get video_jimaku_downloaded => 'Subtítulo descargado y aplicado';
  @override
  String get video_jimaku_episode => 'Episode (optional)';
  @override
  String get video_jimaku_episode_hint => 'Leave empty to list all';
  @override
  String get video_jimaku_fetch => 'Obtener subtítulos (Jimaku)';
  @override
  String get video_jimaku_filter => 'Filtrar resultados (p. ej. WEBRip, BD)';
  @override
  String get video_jimaku_find_sources => 'Find subtitles';
  @override
  String get video_jimaku_language => 'Language';
  @override
  String get video_jimaku_language_all => 'All';
  @override
  String get video_jimaku_no_key => 'Introduce primero tu API key de Jimaku';
  @override
  String get video_jimaku_no_results => 'No se encontraron subtítulos';
  @override
  String get video_jimaku_query => 'Nombre de la serie';
  @override
  String get video_jimaku_search => 'Buscar';
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
  String get video_library_empty => 'Aún no se ha importado ningún vídeo';
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
  String get video_menu_fullscreen => 'Alternar pantalla completa';
  @override
  String get video_menu_lock => 'Modo inmersivo / bloqueo';
  @override
  String get video_menu_play_pause => 'Reproducir / Pausar';
  @override
  String get video_menu_subtitle_track => 'Pista de subtítulos';
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
  String get video_next_episode => 'Episodio siguiente';
  @override
  String video_playlist_episodes({required Object count}) => '${count} ep.';
  @override
  String get video_prev_episode => 'Episodio anterior';
  @override
  String get video_quality => 'Quality';
  @override
  String get video_quality_auto => 'Auto';
  @override
  String get video_quality_empty => 'No switchable quality for this video';
  @override
  String get video_quality_enhancement_hint =>
      'Actívalo para nitidez de imagen con el escalado de alta calidad integrado en mpv. Funciona tanto en anime como en series y películas de acción real. Para ir más allá con shaders como Anime4K, abre Mejora de imagen mientras se reproduce un vídeo y elige un nivel allí.';
  @override
  String get video_quality_load_failed =>
      'Couldn\'t load qualities for this video.';
  @override
  String get video_quality_loading => 'Loading available qualities…';
  @override
  String video_quality_switched({required Object label}) => 'Quality: ${label}';
  @override
  String get video_rename => 'Cambiar nombre';
  @override
  String get video_rename_hint => 'Título';
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
  String get video_screenshot => 'Captura de pantalla';
  @override
  String video_screenshot_failed_reason({required Object reason}) =>
      'Error al capturar la pantalla: ${reason}';
  @override
  String video_screenshot_ready({required Object file}) =>
      'Captura lista: ${file}';
  @override
  String video_screenshot_saved_to({required Object path}) =>
      'Captura guardada: ${path}';
  @override
  String get video_secondary_subtitle_hint =>
      'Rendered by player (not lookupable)';
  @override
  String get video_secondary_subtitle_sources => 'Secondary subtitle';
  @override
  String get video_setting_auto_play_next =>
      'Reproducir automáticamente el siguiente episodio';
  @override
  String get video_setting_auto_scrape => 'Auto-fetch series info';
  @override
  String get video_setting_auto_scrape_hint =>
      'Silently fetch cover, synopsis, rating and tags from Bangumi for videos in your library';
  @override
  String get video_setting_av_delay => 'Sincronía de subtítulos';
  @override
  String get video_setting_av_delay_hint =>
      'Positivo = subtítulo más tarde (las líneas se retrasan); negativo = subtítulo antes. Usa el control deslizante, los botones +/- o escribe un valor.';
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
  String get video_setting_danmaku_enabled => 'Mostrar danmaku';
  @override
  String get video_setting_danmaku_enabled_hint =>
      'Muestra danmaku local o coincidente sobre el vídeo sin bloquear los controles.';
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
  String get video_setting_danmaku_max_active => 'Límite de danmaku activos';
  @override
  String get video_setting_danmaku_max_active_hint =>
      'Limita los comentarios renderizados por fotograma para que los archivos grandes sigan respondiendo.';
  @override
  String get video_setting_danmaku_online =>
      'Coincidencia en línea con Dandanplay';
  @override
  String get video_setting_danmaku_online_hint =>
      'Cuando no hay un sidecar local utilizable, busca coincidencias del vídeo abierto con Dandanplay y obtiene los comentarios relacionados.';
  @override
  String get video_setting_danmaku_opacity => 'Opacity';
  @override
  String get video_setting_danmaku_opacity_hint =>
      'Overall danmaku transparency.';
  @override
  String get video_setting_danmaku_server_url => 'URL del servidor de danmaku';
  @override
  String get video_setting_danmaku_speed => 'Speed';
  @override
  String get video_setting_danmaku_speed_hint =>
      'Higher is faster; scrolling danmaku cross the screen sooner.';
  @override
  String get video_setting_double_tap => 'Doble toque para saltar';
  @override
  String get video_setting_double_tap_hint =>
      'Toca dos veces a la izquierda o a la derecha del vídeo para avanzar o retroceder';
  @override
  String get video_setting_double_tap_off => 'Desactivado';
  @override
  String get video_setting_double_tap_subtitle => 'Subtítulo';
  @override
  String get video_setting_immersive_mode => 'Modo inmersivo';
  @override
  String get video_setting_immersive_mode_hint =>
      'Controla qué sigue disponible tras pulsar el botón de bloqueo lateral';
  @override
  String get video_setting_lock_window_aspect =>
      'Bloquear la ventana a la proporción del vídeo';
  @override
  String get video_setting_long_press_speed => 'Velocidad al mantener pulsado';
  @override
  String get video_setting_long_press_speed_hint =>
      'Usa temporalmente esta velocidad mientras mantienes pulsado el vídeo.';
  @override
  String get video_setting_mpv_aspect => 'Relación de aspecto';
  @override
  String get video_setting_mpv_aspect_auto => 'Original';
  @override
  String get video_setting_mpv_brightness => 'Brillo';
  @override
  String get video_setting_mpv_channels => 'Canales';
  @override
  String get video_setting_mpv_channels_auto => 'Automático';
  @override
  String get video_setting_mpv_channels_mono => 'Mono';
  @override
  String get video_setting_mpv_channels_stereo => 'Estéreo (mezcla)';
  @override
  String get video_setting_mpv_contrast => 'Contraste';
  @override
  String get video_setting_mpv_correct_downscale => 'Reducción lineal';
  @override
  String get video_setting_mpv_deband => 'Reducción de bandas';
  @override
  String get video_setting_mpv_deinterlace => 'Desentrelazado';
  @override
  String get video_setting_mpv_dither => 'Tramado';
  @override
  String get video_setting_mpv_gamma => 'Gamma';
  @override
  String get video_setting_mpv_group_advanced => 'Avanzado';
  @override
  String get video_setting_mpv_group_audio => 'Audio';
  @override
  String get video_setting_mpv_group_color => 'Color';
  @override
  String get video_setting_mpv_group_decode => 'Decodificación';
  @override
  String get video_setting_mpv_group_geometry => 'Geometría';
  @override
  String get video_setting_mpv_group_playback => 'Reproducción';
  @override
  String get video_setting_mpv_group_quality => 'Calidad de imagen';
  @override
  String get video_setting_mpv_hue => 'Tono';
  @override
  String get video_setting_mpv_hwdec => 'Decodificación por hardware';
  @override
  String get video_setting_mpv_hwdec_auto => 'Automática (segura)';
  @override
  String get video_setting_mpv_hwdec_copy => 'Automática (copia)';
  @override
  String get video_setting_mpv_hwdec_off => 'Desactivada';
  @override
  String get video_setting_mpv_interpolation => 'Interpolación de movimiento';
  @override
  String get video_setting_mpv_loop => 'Repetir archivo';
  @override
  String get video_setting_mpv_normalize =>
      'Normalizar el volumen de la mezcla';
  @override
  String get video_setting_mpv_panscan => 'Pan & scan (recortar bordes)';
  @override
  String get video_setting_mpv_pitch =>
      'Mantener el tono al cambiar la velocidad';
  @override
  String get video_setting_mpv_raw =>
      'Opciones adicionales de mpv (una por línea, clave=valor)';
  @override
  String get video_setting_mpv_raw_hint =>
      'Solo en escritorio; las opciones que no se pueden aplicar en tiempo de ejecución (p. ej. vo, profile) se ignoran. SVP/RIFE requieren herramientas externas y no son compatibles.';
  @override
  String get video_setting_mpv_reset => 'Restablecer todo';
  @override
  String get video_setting_mpv_rotate => 'Rotación';
  @override
  String get video_setting_mpv_saturation => 'Saturación';
  @override
  String get video_setting_mpv_sigmoid => 'Escalado sigmoidal';
  @override
  String get video_setting_mpv_sigmoid_hint =>
      'Sigmoid-curve upscaling reduces ringing but costs GPU. Off by default for performance; turn on if you want sharper upscaling.';
  @override
  String get video_setting_mpv_zoom => 'Zoom';
  @override
  String get video_setting_picture_fit => 'Escalado de imagen';
  @override
  String get video_setting_picture_fit_contain =>
      'Ajustar manteniendo proporción y añadir bandas negras';
  @override
  String get video_setting_picture_fit_cover =>
      'Rellenar manteniendo proporción y recortar bordes';
  @override
  String get video_setting_picture_fit_fill => 'Estirar para rellenar';
  @override
  String get video_setting_picture_fit_hint =>
      'Cómo llena la imagen el área del reproductor';
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
  String get video_setting_seek_seconds => 'Segundos de salto';
  @override
  String get video_setting_speed => 'Velocidad de reproducción';
  @override
  String get video_setting_speed_step => 'Speed step';
  @override
  String get video_setting_subtitle_appearance => 'Aspecto de los subtítulos';
  @override
  String get video_setting_subtitle_bg_color => 'Background color';
  @override
  String get video_setting_subtitle_bg_opacity => 'Opacidad del fondo';
  @override
  String get video_setting_subtitle_font_size => 'Tamaño de fuente';
  @override
  String get video_setting_subtitle_font_weight => 'Grosor de fuente';
  @override
  String get video_setting_subtitle_no_background => 'Sin fondo';
  @override
  String get video_setting_subtitle_no_background_hint =>
      'Hace transparente el fondo del subtítulo.';
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
  String get video_setting_subtitle_position => 'Posición vertical';
  @override
  String get video_setting_subtitle_reset => 'Restablecer valores por defecto';
  @override
  String get video_setting_subtitle_respect_ass =>
      'Respect subtitle\'s own style';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      'Use the font, color, and outline built into .ass subtitles when available; turn off to force your appearance settings.';
  @override
  String get video_setting_subtitle_shadow => 'Sombra';
  @override
  String get video_setting_subtitle_sync_input => 'Desfase (ms)';
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
  String get video_settings_cat_controls => 'Controles';
  @override
  String get video_settings_cat_danmaku => 'Danmaku';
  @override
  String get video_settings_cat_mpv => 'mpv';
  @override
  String get video_settings_cat_playback => 'Reproducción';
  @override
  String get video_settings_cat_shaders => 'Mejora de imagen';
  @override
  String get video_settings_cat_subtitle => 'Subtítulos';
  @override
  String get video_settings_title => 'Ajustes de vídeo';
  @override
  String get video_shader_anime4k_hint =>
      'Elige un preset para descargar. Tras descargarlo, márcalo en la lista para activarlo. Solo en escritorio.';
  @override
  String get video_shader_anime4k_title => 'Shaders recomendados de Anime4K';
  @override
  String get video_shader_download_anime4k => 'Descargar presets de Anime4K';
  @override
  String video_shader_download_done({required Object count}) =>
      'Se descargaron ${count} shader(s)';
  @override
  String get video_shader_download_failed => 'Error al descargar el shader';
  @override
  String video_shader_download_partial(
          {required Object ok, required Object failed}) =>
      'Se descargaron ${ok} shader(s), ${failed} fallaron';
  @override
  String get video_shader_download_url => 'Descargar desde enlace';
  @override
  String get video_shader_downloaded_label => 'Descargado';
  @override
  String get video_shader_downloading => 'Descargando shaders…';
  @override
  String get video_shader_first_use_body =>
      '想让动画画面更清晰，可以进入“画质增强”并点击“下载 Anime4K 推荐着色器”。下载后在已安装列表里勾选即可启用。';
  @override
  String get video_shader_first_use_download => 'Descargar y activar';
  @override
  String get video_shader_first_use_title => '试试 Anime4K 画质增强';
  @override
  String get video_shader_import => 'Importar shader (.glsl)';
  @override
  String video_shader_import_done({required Object count}) =>
      'Se importaron ${count} shader(s)';
  @override
  String get video_shader_import_from_mpv => 'Importar desde mpv local';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自动搜索本机 mpv；未找到时可手动选择 mpv 目录。';
  @override
  String get video_shader_mobile_perf_hint =>
      'En teléfonos, los shaders solo se aplican en la ruta de renderizado de GPU estándar y su eficacia varía según la GPU del dispositivo; los niveles más altos pueden provocar caídas de fotogramas o calentamiento. Prueba primero Baja/Media y comprueba el resultado en tu dispositivo.';
  @override
  String video_shader_mpv_dir_current({required Object path}) =>
      'Carpeta de mpv: ${path}';
  @override
  String get video_shader_mpv_dir_empty =>
      'No se encontraron shaders en esa carpeta';
  @override
  String get video_shader_mpv_not_found =>
      'No se encontraron shaders de mpv locales';
  @override
  String get video_shader_mpv_pick_title => 'Importar shaders desde mpv';
  @override
  String get video_shader_pick_mpv_dir => 'Specify mpv folder';
  @override
  String get video_shader_preset_mode_a_fast =>
      'Para la mayoría del anime en 1080p. Menor carga de GPU.';
  @override
  String get video_shader_preset_mode_a_hq =>
      'Máxima calidad para anime en 1080p. Necesita una GPU potente.';
  @override
  String get video_shader_preset_mode_b_fast =>
      'Para anime antiguo en 720p con artefactos de remuestreo.';
  @override
  String get video_shader_preset_mode_b_hq =>
      'Alta calidad para anime antiguo en 720p con artefactos de remuestreo. Necesita una GPU potente.';
  @override
  String get video_shader_preset_mode_c_fast =>
      'Para anime SD antiguo (480p) con manchas de compresión.';
  @override
  String get video_shader_preset_mode_c_hq =>
      'Alta calidad para anime SD antiguo (480p) con manchas de compresión. Necesita una GPU potente.';
  @override
  String get video_shader_quality_tier => 'Mejora de calidad';
  @override
  String get video_shader_section_advanced => 'Avanzado (shaders manuales)';
  @override
  String get video_shader_section_installed => 'Shaders instalados';
  @override
  String get video_shader_showing_original => 'Shaders desactivados (original)';
  @override
  String get video_shader_showing_shaded => 'Shaders activados';
  @override
  String get video_shader_tier_custom_hint =>
      'Selección de shaders personalizada. Elige un nivel arriba para volver a un preset.';
  @override
  String get video_shader_tier_high => 'Alta';
  @override
  String get video_shader_tier_high_hint =>
      'Anime4K HQ. Más nítido; lo mejor para animación, también utilizable en acción real (mejora menor). Necesita una GPU de gama media-alta (NVIDIA RTX 4060 / RTX 3070, AMD RX 6700 XT / RX 7700 XT).';
  @override
  String get video_shader_tier_low => 'Baja';
  @override
  String get video_shader_tier_low_hint =>
      'Nitidez integrada de mpv (ewa_lanczossharp). Funciona en cualquier vídeo (animación y acción real). Sin descargas, mínima carga de GPU. Elige esta opción en gráficas integradas o antiguas (NVIDIA GTX 1050, AMD RX 560, iGPU de Intel).';
  @override
  String get video_shader_tier_medium => 'Media';
  @override
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast. Lo mejor para animación, pero también sirve para películas/series de acción real (mejora menor). Funciona en GPU de gama media (NVIDIA GTX 1660 / RTX 3050, AMD RX 6600).';
  @override
  String get video_shader_tier_off => 'Ninguna';
  @override
  String get video_shader_tier_off_hint =>
      'Sin mejora. Reproduce el vídeo original tal cual.';
  @override
  String get video_shader_tier_ultra => 'Ultra';
  @override
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A (UL, red ultra grande). La reconstrucción Anime4K más potente; también utilizable en acción real (mejora menor). Necesita una GPU tope de gama (NVIDIA RTX 4080 / RTX 5090, AMD RX 7900 XTX). Elige un nivel inferior si tu GPU es más débil.';
  @override
  String get video_shader_url_hint =>
      'Pega un enlace .glsl de shader (p. ej. GitHub)';
  @override
  String get video_shaders_empty => 'Aún no se ha importado ningún shader';
  @override
  String get video_stat_by_video => 'Por vídeo';
  @override
  String get video_stat_completed => 'Completado';
  @override
  String get video_stat_no_data => 'Aún no hay estadísticas de vídeo';
  @override
  String get video_statistics => 'Estadísticas de vídeo';
  @override
  String get video_subtitle_attach_playlist_hint =>
      'Abre la lista de reproducción para adjuntar un subtítulo por episodio';
  @override
  String video_subtitle_attached_to_video(
          {required Object title, required Object count}) =>
      'Subtítulo adjuntado a ${title} (${count} líneas)';
  @override
  String get video_subtitle_auto_align => 'Alinear subtítulos';
  @override
  String video_subtitle_auto_align_done({required Object ms}) =>
      'Subtítulos alineados ${ms} ms';
  @override
  String get video_subtitle_auto_align_low_confidence =>
      'No se pudo alinear con fiabilidad (sin coincidencia de voz clara)';
  @override
  String get video_subtitle_auto_align_running => 'Alineando subtítulos…';
  @override
  String get video_subtitle_color_note =>
      'Los colores de los subtítulos se ajustan dentro del reproductor de vídeo.';
  @override
  String video_subtitle_delay_osd({required Object ms}) =>
      'Sincronía de subtítulos: ${ms} ms';
  @override
  String get video_subtitle_filter_all => 'Todos';
  @override
  String get video_subtitle_filter_favorites => 'Favoritos';
  @override
  String get video_subtitle_filter_favorites_empty => 'No favorited lines yet';
  @override
  String get video_subtitle_filter_selected => 'Seleccionados';
  @override
  String get video_subtitle_filter_selected_empty => 'No lines selected yet';
  @override
  String get video_subtitle_graphic_hint =>
      'Subtítulo gráfico · se muestra en el vídeo · sin consulta de palabras';
  @override
  String video_subtitle_graphic_shown({required Object label}) =>
      'Subtítulo gráfico mostrado en el vídeo (sin consulta de palabras): ${label}';
  @override
  String get video_subtitle_import_failed => 'Error al importar el subtítulo';
  @override
  String get video_subtitle_import_file => 'Importar archivo de subtítulos…';
  @override
  String get video_subtitle_import_unsupported =>
      'Formato de subtítulos no compatible';
  @override
  String get video_subtitle_list => 'Lista de subtítulos';
  @override
  String get video_subtitle_list_auto_scroll => 'Desplazamiento automático';
  @override
  String get video_subtitle_list_clear_selection => 'Borrar selección';
  @override
  String get video_subtitle_list_empty => 'No hay subtítulos cargados';
  @override
  String get video_subtitle_list_font_larger => 'Texto más grande';
  @override
  String get video_subtitle_list_font_smaller => 'Texto más pequeño';
  @override
  String get video_subtitle_list_jump => 'Saltar a esta línea';
  @override
  String get video_subtitle_list_loading => 'Cargando subtítulos...';
  @override
  String get video_subtitle_list_remove_from_card =>
      'Quitar de la selección para tarjeta';
  @override
  String get video_subtitle_list_select_for_card => 'Select for card';
  @override
  String video_subtitle_load_failed({required Object label}) =>
      'No se pudo cargar este subtítulo (pista gráfica o no compatible): ${label}';
  @override
  String get video_subtitle_off => 'Desactivar subtítulos';
  @override
  String get video_subtitle_remote_host =>
      'Subtítulo del dispositivo emparejado';
  @override
  String video_subtitle_switched({required Object label}) =>
      'Subtítulo: ${label}';
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
  String get video_subtitle_youtube_empty => 'This caption track has no text';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang} (translated)';
  @override
  String video_watched_up_to({required Object time}) => 'Watched to ${time}';
  @override
  String get video_windows_black_flash_notice_body =>
      'On Windows, video may flash black under heavy GPU load. To reduce the load, try turning off Quality enhancement, Sigmoid upscaling and Debanding above, or switch Hardware decoding to Copy.';
  @override
  String get video_windows_black_flash_notice_title =>
      'Black flickering on Windows?';
  @override
  String get view_illustrations => 'Ilustraciones';
  @override
  String get volume_button_page_turning =>
      'Pasar página con botones de volumen';
  @override
  String get volume_key_sentence_nav =>
      'Navegación de oraciones con teclas de volumen';
  @override
  String get wheel_page_turn_interval =>
      'Intervalo de pasar página con la rueda';
  @override
  String get word_favorite_added => 'Word saved to favorites';
  @override
  String get word_favorite_removed => 'Word removed from favorites';
  @override
  String get yomitan_api_key => 'API key de Yomitan (opcional)';
  @override
  String get yomitan_api_server => 'Servidor API de Yomitan';
  @override
  String get yomitan_api_server_hint =>
      'Permite que los clientes de yomitan-api consulten los diccionarios de Fushi (puerto 19633)';
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
  String get shortcut_scope_universal => 'Back / Exit';
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
  String get video_library_empty_source_hint =>
      'Add a video folder from Sources to build your library';
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
  String get manga_ocr_lens_language_label => 'Idioma de reconocimiento';
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
