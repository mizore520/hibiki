part of 'strings.g.dart';

// Path: <root>
class _StringsRu extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsRu.build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.ru,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super.build(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <ru>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  @override
  late final _StringsRu _root = this; // ignore: unused_field

  // Translations
  @override
  String get action_exit => 'Выход';
  @override
  String get action_favorite => 'В избранное';
  @override
  String activity_days_ago({required Object n}) => '${n} дн. назад';
  @override
  String activity_hours_ago({required Object n}) => '${n} ч. назад';
  @override
  String get activity_just_now => 'Только что';
  @override
  String activity_minutes_ago({required Object n}) => '${n} мин. назад';
  @override
  String get add_to_collection => 'Добавить в коллекцию';
  @override
  String get anime_download_back => 'Назад';
  @override
  String get anime_download_batch => 'Пакет';
  @override
  String get anime_download_category_all => 'Все';
  @override
  String get anime_download_category_english => 'Англ. перевод';
  @override
  String get anime_download_category_non_english => 'Не английский';
  @override
  String get anime_download_category_raw => 'Без перевода';
  @override
  String get anime_download_delete => 'Удалить';
  @override
  String anime_download_episode_count({required Object count}) =>
      'Серия ${count}';
  @override
  String get anime_download_generic_download => 'Скачать';
  @override
  String get anime_download_generic_hint => 'Magnet-ссылка';
  @override
  String get anime_download_generic_title =>
      'Вставьте ссылку (книги, видео, что угодно)';
  @override
  String get anime_download_include_subs => 'Включить субтитры';
  @override
  String get anime_download_kind_auto => 'Авто';
  @override
  String get anime_download_kind_book => 'Книга';
  @override
  String get anime_download_kind_video => 'Видео';
  @override
  String get anime_download_magnet_invalid => 'Недействительная magnet-ссылка';
  @override
  String get anime_download_no_results => 'Нет результатов';
  @override
  String get anime_download_no_subs => 'Без субтитров';
  @override
  String get anime_download_no_tasks => 'Загрузок пока нет';
  @override
  String get anime_download_nyaa_query => 'Поисковый запрос Nyaa';
  @override
  String get anime_download_play_now => 'Воспроизвести во время загрузки';
  @override
  String get anime_download_play_now_fail =>
      'Ещё не готово (ожидание метаданных или ошибка подключения) — попробуйте позже';
  @override
  String get anime_download_play_now_ok =>
      'Импортировано — откройте из видеотеки для воспроизведения во время загрузки';
  @override
  String get anime_download_push => 'Отправить загрузку';
  @override
  String get anime_download_push_failed => 'Не удалось отправить в qBittorrent';
  @override
  String get anime_download_pushed =>
      'Отправлено — будет автоматически импортировано после завершения';
  @override
  String get anime_download_refresh => 'Обновить';
  @override
  String get anime_download_relocate => 'Переименовать / переместить';
  @override
  String anime_download_relocate_engine_failed({required Object reason}) =>
      'Ошибка, ничего не изменено: ${reason}';
  @override
  String get anime_download_relocate_hint =>
      'Fushi переименовывает/перемещает через движок загрузки, раздача не прерывается. Переименование в Проводнике невозможно отменить.';
  @override
  String anime_download_relocate_library_failed({required Object reason}) =>
      'Файлы перемещены, но библиотека всё ещё указывает на старый путь: ${reason}';
  @override
  String get anime_download_relocate_move_title => 'Переместить в папку';
  @override
  String get anime_download_relocate_no_files =>
      'У этой задачи пока нет файлов для переименования (метаданные не готовы)';
  @override
  String anime_download_relocate_ok({required Object rows}) =>
      'Переименовано / перемещено; обновлено записей в библиотеке: ${rows}';
  @override
  String get anime_download_relocate_pick_folder => 'Выберите папку назначения';
  @override
  String get anime_download_relocate_rename_title => 'Переименовать файл';
  @override
  String get anime_download_retry => 'Повторить';
  @override
  String get anime_download_search => 'Поиск';
  @override
  String get anime_download_search_error_proxy_hint =>
      'Если сайт недоступен напрямую, настройте сетевой прокси в параметрах загрузки.';
  @override
  String get anime_download_search_failed =>
      'Поиск не удался или превышено время ожидания. Нажмите «Повторить».';
  @override
  String get anime_download_search_hint => 'Название аниме';
  @override
  String get anime_download_search_start_hint =>
      'Введите название выше — торренты и субтитры подбираются автоматически. Загрузки не ограничены видео: книги, манга, аудиокниги и игры тоже импортируются.';
  @override
  String get anime_download_sort_date => 'Дата публикации';
  @override
  String get anime_download_sort_seeders => 'Раздающие';
  @override
  String get anime_download_sort_size => 'Размер';
  @override
  String get anime_download_store_unavailable =>
      'Хранилище плана загрузки недоступно';
  @override
  String get anime_download_subs_badge => 'Субтитры';
  @override
  String get anime_download_subs_failed =>
      'Поиск субтитров не удался. Нажмите «Повторить».';
  @override
  String get anime_download_subs_need_key =>
      'Введите API-ключ Jimaku выше для поиска субтитров.';
  @override
  String get anime_download_tasks => 'Задачи загрузки';
  @override
  String get anime_download_title => 'Загрузка аниме';
  @override
  String get anime_download_trusted => 'Проверенный';
  @override
  String get anime_download_trusted_only => 'Только проверенные';
  @override
  String get anki_allow_duplicates => 'Разрешить дубликаты';
  @override
  String get anki_allow_duplicates_hint =>
      'Пропускать проверку дубликатов при добавлении карточек';
  @override
  String get anki_card_action_failed =>
      'Действие с карточкой не удалось. Попробуйте ещё раз.';
  @override
  String get anki_compact_glossaries => 'Компактные глоссарии';
  @override
  String get anki_compact_glossaries_hint =>
      'Использовать компактный формат для записей глоссария';
  @override
  String get anki_connect_api_key => 'Ключ API';
  @override
  String get anki_connect_host => 'Хост';
  @override
  String get anki_connect_port => 'Порт';
  @override
  String get anki_create_lapis => 'Создать колоду Lapis';
  @override
  String get anki_create_lapis_exists =>
      'Тип заметки и колода Lapis уже существуют — выбраны.';
  @override
  String anki_create_lapis_failed({required Object error}) =>
      'Не удалось создать колоду Lapis: ${error}';
  @override
  String get anki_create_lapis_hint =>
      'Добавляет тип заметки Lapis и колоду Lapis в Anki, затем выбирает их.';
  @override
  String get anki_create_lapis_success => 'Тип заметки и колода Lapis созданы.';
  @override
  String get anki_deck => 'Колода';
  @override
  String get anki_duplicate_scope => 'Область проверки дубликатов';
  @override
  String get anki_duplicate_scope_collection => 'Вся коллекция';
  @override
  String get anki_duplicate_scope_deck => 'Выбранная колода (и подколоды)';
  @override
  String get anki_duplicate_scope_deck_root =>
      'Корневая колода (все подколоды)';
  @override
  String get anki_duplicate_scope_hint =>
      'В каких колодах искать при проверке, существует ли карточка. Только для AnkiConnect; AnkiDroid всегда ищет по всей коллекции.';
  @override
  String get anki_error_collection_unavailable =>
      'Коллекция AnkiDroid сейчас недоступна. Откройте AnkiDroid хотя бы раз, убедитесь, что синхронизация не идёт и API включён, затем повторите.';
  @override
  String get anki_error_connection_refused =>
      'Не удалось подключиться к Anki: соединение отклонено. Убедитесь, что Anki Desktop запущен и установлен аддон AnkiConnect.';
  @override
  String get anki_error_connection_timeout =>
      'Не удалось подключиться к Anki: время ожидания соединения истекло. Проверьте хост, порт и настройки брандмауэра.';
  @override
  String get anki_error_connection_unknown =>
      'Не удалось экспортировать в Anki: произошла непредвиденная ошибка соединения. Подробности см. в журнале ошибок.';
  @override
  String get anki_error_http =>
      'Не удалось экспортировать в Anki: при обращении к AnkiConnect произошла ошибка HTTP.';
  @override
  String get anki_error_permission_denied =>
      'AnkiDroid не предоставил разрешение на доступ к карточкам. Подтвердите запрос системного разрешения, затем нажмите кнопку ещё раз для экспорта.';
  @override
  String get anki_fetch => 'Обновить колоды и типы заметок';
  @override
  String get anki_fetching => 'Загрузка…';
  @override
  String get anki_field_mappings => 'Сопоставление полей';
  @override
  String get anki_field_not_mapped => 'Не сопоставлено';
  @override
  String get anki_mine_to_server => 'Добывать на сопряжённое устройство';
  @override
  String get anki_mine_to_server_hint =>
      'Отправлять добытые карточки в Anki сопряжённого хоста (его колоды и настройки) вместо этого устройства. Требуется сопряжение через Interconnect.';
  @override
  String get anki_mined_action_add_duplicate => 'Добавить как новую карточку';
  @override
  String get anki_mined_action_overwrite => 'Перезаписать эту карточку';
  @override
  String get anki_mined_action_view => 'Просмотреть / открыть в Anki';
  @override
  String get anki_mined_card_subtitle =>
      'Выберите действие с найденной карточкой.';
  @override
  String get anki_mined_card_title => 'Карточка уже в Anki';
  @override
  String anki_mined_multiple_matches({required Object count}) =>
      'Найдено карточек: ${count}';
  @override
  String get anki_not_configured =>
      'Нажмите «Обновить», чтобы загрузить ваши колоды и типы заметок Anki.';
  @override
  String get anki_note_open_failed => 'Не удалось открыть карточку в Anki.';
  @override
  String get anki_note_type => 'Тип заметки';
  @override
  String get anki_note_viewer_empty => 'У этой карточки нет читаемых полей.';
  @override
  String get anki_note_viewer_open_in_anki => 'Открыть в Anki';
  @override
  String get anki_note_viewer_title => 'Существующая карточка';
  @override
  String get anki_open_no_card => 'Карточка для этого слова в Anki не найдена.';
  @override
  String get anki_overwrite_scope => 'Диапазон перезаписи';
  @override
  String get anki_overwrite_scope_all => 'Все совпадающие карточки';
  @override
  String get anki_overwrite_scope_hint =>
      'Какие уже созданные карточки может перезаписать зелёная ✓';
  @override
  String get anki_overwrite_scope_latest => 'Только последнюю карточку';
  @override
  String get anki_refresh_hint =>
      'После создания или переименования колоды либо типа заметки в Anki нажмите здесь, чтобы обновить.';
  @override
  String anki_select_handlebar({required Object field}) =>
      'Выберите значение для ${field}';
  @override
  String get anki_settings_label => 'Настройки Anki';
  @override
  String get anki_tag_default_section => 'Теги по умолчанию';
  @override
  String get anki_tag_include_category => 'Добавлять тег категории источника';
  @override
  String get anki_tag_include_category_hint =>
      'Книги получают «book», видео — «video», игры — «game»';
  @override
  String get anki_tag_include_fushi => 'Добавлять тег «fushi»';
  @override
  String get anki_tag_include_fushi_hint =>
      'Помечать каждую карточку, созданную в Fushi';
  @override
  String get anki_tags => 'Теги';
  @override
  String get anki_tags_hint =>
      'Теги через пробел, добавляемые к каждой карточке';
  @override
  String get app_icon_label => 'Иконка приложения';
  @override
  String get app_icon_presets => 'Предустановки';
  @override
  String get app_ui_scale => 'Размер интерфейса';
  @override
  String get app_ui_scale_hint =>
      'Scales app text and spacing. Lower it on large screens if controls feel oversized.';
  @override
  String get app_version => 'Версия приложения';
  @override
  String get apply_theme => 'Применить тему';
  @override
  String get audio_clip_failed =>
      'Не удалось извлечь аудиофрагмент — источник аудио может отсутствовать или быть нечитаемым';
  @override
  String get audio_import => 'Импортировать аудио';
  @override
  String get audio_panel_add_audio => 'Добавить аудио';
  @override
  String get audio_panel_auto => 'Авто';
  @override
  String get audio_panel_pick_new_subtitle => 'Выбрать новый файл субтитров';
  @override
  String get audio_source_added => 'Источник аудио добавлен';
  @override
  String audio_source_dns_error({required Object host}) =>
      'Не удалось подключиться к источнику аудио: невозможно разрешить "${host}" — проверьте сеть или удалите этот источник в настройках';
  @override
  String get audio_source_edit_target_gone =>
      'Этот источник аудио больше не существует — изменение отменено';
  @override
  String get audio_source_edit_url => 'Изменить ссылку источника аудио';
  @override
  String audio_source_error({required Object detail}) =>
      'Ошибка источника аудио: ${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi Interconnect';
  @override
  String get audio_source_loopback_warning =>
      'Указывает на это устройство — перенастройте после смены машины';
  @override
  String audio_source_request_error({required Object detail}) =>
      'Ошибка запроса источника аудио: ${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      'Тайм-аут источника аудио: "${host}" — сервер не отвечает, попробуйте позже или смените источник';
  @override
  String get audio_source_updated => 'Источник аудио обновлён';
  @override
  String get audio_source_url_invalid =>
      'Ссылка должна быть http(s) и содержать плейсхолдер слова или чтения';
  @override
  String get audio_unavailable => 'Аудио не найдено.';
  @override
  String get audio_volume => 'Громкость';
  @override
  String get audiobook_attached => 'Аудиокнига привязана';
  @override
  String get audiobook_audio_missing => 'Аудиофайл отсутствует';
  @override
  String get audiobook_background_play =>
      'Продолжать воспроизведение после выхода';
  @override
  String get audiobook_background_play_hint =>
      'Когда выключено, воспроизведение аудиокниги останавливается при выходе из читалки. Включите, чтобы продолжать воспроизведение в фоне.';
  @override
  String get audiobook_export_clip => 'Экспортировать видеоклип';
  @override
  String get audiobook_export_clip_failed => 'Экспорт клипа не удался';
  @override
  String get audiobook_export_clip_in_progress => 'Экспорт клипа…';
  @override
  String get audiobook_export_clip_no_selection =>
      'Сначала выделите текст для экспорта клипа';
  @override
  String get audiobook_export_clip_no_text =>
      'В этом выделении нет текста для отображения';
  @override
  String get audiobook_export_clip_saved => 'Клип сохранён';
  @override
  String get audiobook_export_clip_unsupported_range =>
      'Это выделение нельзя экспортировать (пересекает главу или аудиофайл)';
  @override
  String get audiobook_import => 'Импортировать аудиокнигу';
  @override
  String get audiobook_import_error => 'Ошибка импорта';
  @override
  String audiobook_import_error_copy_failed({required Object name}) =>
      'Не удалось скопировать файл: ${name}';
  @override
  String audiobook_import_error_disk_full({required Object size}) =>
      'Недостаточно места на диске. Требуется: ${size}';
  @override
  String get audiobook_import_success => 'Аудиокнига импортирована';
  @override
  String get audiobook_load_error => 'Не удалось загрузить аудиокнигу.';
  @override
  String get audiobook_pick_alignment => 'Выбрать файл выравнивания';
  @override
  String get audiobook_reference_original => 'Ссылаться на исходные файлы';
  @override
  String get audiobook_reference_original_desc =>
      'Оставить аудио на месте и воспроизводить по исходному пути; книга сломается, если файл будет перемещён или удалён.';
  @override
  String get audiobook_relocate => 'Переместить файл';
  @override
  String get audiobook_relocate_done => 'Аудио перемещено';
  @override
  String get auto_add_book_name_to_tags =>
      'Автодобавление названия книги в теги';
  @override
  String auto_chapter({required Object n}) => 'Глава ${n}';
  @override
  String get auto_read_on_lookup => 'Автопроизношение слова при поиске';
  @override
  String get auto_search => 'Автопоиск';
  @override
  String get auto_search_debounce_delay => 'Задержка автопоиска';
  @override
  String get auto_select_search_window => 'Автоподбор окна поиска';
  @override
  String get auto_select_search_window_hint =>
      'Проверить несколько размеров окна при импорте и выбрать лучший по проценту совпадений';
  @override
  String get av_sync => 'A/V синхр.';
  @override
  String get av_sync_reset => 'Сброс';
  @override
  String get back => 'Назад';
  @override
  String get background_color => 'Цвет фона';
  @override
  String get background_color_desc => 'Фон страницы читалки';
  @override
  String get backup_category_audiobooks => 'Аудио аудиокниг';
  @override
  String get backup_category_audiobooks_desc => 'Аудио и привязки аудиокниг';
  @override
  String get backup_category_books => 'Книги';
  @override
  String get backup_category_books_desc =>
      'Файлы книг (EPUB и извлечённое содержимое)';
  @override
  String get backup_category_dictionary => 'Словари';
  @override
  String get backup_category_dictionary_desc =>
      'Импортированные словари и их файлы';
  @override
  String get backup_category_fonts => 'Свои шрифты';
  @override
  String get backup_category_fonts_desc =>
      'Импортированные пользовательские шрифты';
  @override
  String get backup_category_local_audio => 'Локальные аудиобазы';
  @override
  String get backup_category_local_audio_desc =>
      'Локальные базы аудио произношения';
  @override
  String get backup_category_profiles => 'Профили';
  @override
  String get backup_category_profiles_desc => 'Профили конфигурации';
  @override
  String get backup_category_progress => 'Прогресс чтения';
  @override
  String get backup_category_progress_desc => 'Позиции чтения и закладки';
  @override
  String get backup_category_settings => 'Настройки';
  @override
  String get backup_category_settings_desc => 'Настройки приложения и читалки';
  @override
  String get backup_category_statistics => 'Статистика';
  @override
  String get backup_category_statistics_desc =>
      'Статистика чтения, видео и добычи карточек';
  @override
  String get backup_category_videos => 'Видео';
  @override
  String get backup_category_videos_desc => 'Локальные видеофайлы';
  @override
  String get backup_export => 'Экспорт копии';
  @override
  String get backup_export_books_all => 'Все книги';
  @override
  String backup_export_books_selected({required Object count}) =>
      'Выбрано книг: ${count}';
  @override
  String get backup_export_categories_hint =>
      'Отметьте, что включить в резервную копию. Если снять «Книги», они будут полностью удалены — их содержимое и записи исчезнут.';
  @override
  String get backup_export_categories_title => 'Выберите, что экспортировать';
  @override
  String get backup_export_choose_books => 'Выбрать книги';
  @override
  String get backup_export_choose_videos => 'Выбрать видео';
  @override
  String backup_export_failed({required Object message}) =>
      'Не удалось экспортировать копию: ${message}';
  @override
  String get backup_export_hint =>
      'Выберите, что включить; база данных (книги, прогресс, статистика) включается всегда. Снимите отметки с крупных элементов (локальное аудио, видео), чтобы уменьшить размер резервной копии.';
  @override
  String get backup_export_no_books => 'Нет книг для выбора';
  @override
  String get backup_export_no_videos => 'Нет видео для выбора';
  @override
  String get backup_export_select_all => 'Выбрать все';
  @override
  String get backup_export_select_none => 'Снять выбор';
  @override
  String get backup_export_success => 'Резервная копия успешно экспортирована';
  @override
  String get backup_export_videos_all => 'Все видео';
  @override
  String backup_export_videos_selected({required Object count}) =>
      'Выбрано видео: ${count}';
  @override
  String get backup_exporting => 'Создание копии…';
  @override
  String get backup_import => 'Импорт копии';
  @override
  String backup_import_confirm({
    required Object date,
    required Object bookCount,
    required Object statsCount,
  }) =>
      'Это заменит все текущие данные копией от ${date}.\n\nКниг: ${bookCount}, записей статистики: ${statsCount}.\n\nПосле восстановления приложение перезапустится.';
  @override
  String get backup_import_confirm_title => 'Восстановить копию?';
  @override
  String get backup_import_contents_hint =>
      'Снимите отметку, чтобы пропустить.';
  @override
  String get backup_import_contents_title => 'Эта резервная копия содержит';
  @override
  String backup_import_failed({required Object message}) =>
      'Не удалось импортировать копию: ${message}';
  @override
  String get backup_import_hint =>
      'Восстановить из файла резервной копии. Приложение перезапустится.';
  @override
  String get backup_import_invalid => 'Недопустимый файл резервной копии';
  @override
  String backup_import_merge_preview({
    required Object bookCount,
    required Object progressCount,
  }) =>
      'Слияние добавит ${bookCount} книг и обновит ${progressCount} позиций чтения.';
  @override
  String get backup_import_mode_label => 'Режим импорта';
  @override
  String get backup_import_mode_merge => 'Объединить с текущей библиотекой';
  @override
  String get backup_import_mode_overwrite => 'Перезаписать всю библиотеку';
  @override
  String get backup_import_overlay_title => 'Импорт резервной копии';
  @override
  String get backup_import_overlay_warning =>
      'Восстановление данных. Пожалуйста, не закрывайте приложение.';
  @override
  String get backup_import_preserve_sync_note =>
      'Настройки синхронизации на этом устройстве (аккаунт и учётные данные) будут сохранены.';
  @override
  String get backup_import_restart_button => 'Перезапустить сейчас';
  @override
  String get backup_import_settings_off_hint =>
      'Сохранить шрифты/оформление/профили этого устройства; восстановить только книги и данные чтения.';
  @override
  String get backup_import_settings_on_hint =>
      'Полное восстановление: шрифты, оформление и профили берутся из копии.';
  @override
  String get backup_import_settings_toggle =>
      'Импортировать настройки и профили';
  @override
  String get backup_import_success => 'Копия восстановлена. Перезапуск…';
  @override
  String get backup_import_validating_hint =>
      'Проверка и предварительный просмотр файла резервной копии. Это может занять некоторое время.';
  @override
  String get backup_import_validating_title => 'Чтение резервной копии…';
  @override
  String backup_schema_newer({required Object version}) =>
      'Эта копия требует более новой версии приложения (схема ${version}). Сначала обновите приложение.';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      'Добавлено элементов в коллекцию: ${n}.';
  @override
  String batch_delete_confirm({required Object n}) =>
      'Удалить ${n} книг(и)? Это действие нельзя отменить.';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      'Удалить видео (${n})? Это действие нельзя отменить.';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      'Удалить медиа (${n}) и расформировать коллекций (${m})? Это действие нельзя отменить.';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      'Удалено медиа: ${n}, расформировано коллекций: ${m}.';
  @override
  String batch_delete_success({required Object n}) => 'Удалено ${n} книг(и).';
  @override
  String batch_delete_success_video({required Object n}) =>
      'Удалено видео: ${n}.';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      'Расформировать коллекций (${m})? Группировка будет убрана; медиа сохранится.';
  @override
  String batch_dissolve_success({required Object m}) =>
      'Расформировано коллекций: ${m}.';
  @override
  String get batch_invert_selection => 'Инвертировать';
  @override
  String get batch_select => 'Выбрать';
  @override
  String get batch_select_all => 'Все';
  @override
  String batch_selected_count({required Object n}) => '${n} выбрано';
  @override
  String get batch_tag_add => 'Добавить';
  @override
  String batch_tag_added({required Object name, required Object n}) =>
      'Тег "${name}" добавлен к ${n} книге(ам).';
  @override
  String batch_tag_added_video({required Object name, required Object n}) =>
      'Тег «${name}» добавлен к видео (${n}).';
  @override
  String get batch_tag_apply => 'Применить';
  @override
  String get batch_tag_keep => 'Оставить';
  @override
  String get batch_tag_remove => 'Удалить';
  @override
  String batch_tag_removed({required Object name, required Object n}) =>
      'Тег "${name}" удалён из ${n} книги(г).';
  @override
  String batch_tag_removed_video({required Object name, required Object n}) =>
      'Тег «${name}» удалён из видео (${n}).';
  @override
  String get batch_tag_title => 'Управление тегами';
  @override
  String get book_continue_reading => 'Continue Reading';
  @override
  String get book_css_editor_cancel => 'Отмена';
  @override
  String get book_css_editor_confirm_reset =>
      'Сбросить CSS этого файла к значениям по умолчанию?';
  @override
  String get book_css_editor_confirm_reset_all =>
      'Сбросить CSS ВСЕХ файлов к значениям по умолчанию?';
  @override
  String get book_css_editor_discard => 'Отклонить';
  @override
  String get book_css_editor_edit_css => 'Редактировать CSS книги';
  @override
  String get book_css_editor_no_css_files =>
      'В этой книге не найдены CSS-файлы.';
  @override
  String get book_css_editor_no_extract_dir =>
      'Каталог книги не найден. Переимпортируйте книгу для редактирования CSS.';
  @override
  String get book_css_editor_reset_all => 'Сбросить всё';
  @override
  String get book_css_editor_reset_current => 'Сбросить текущий';
  @override
  String get book_css_editor_reset_done => 'CSS сброшен.';
  @override
  String get book_css_editor_save => 'Сохранить';
  @override
  String get book_css_editor_saved => 'CSS сохранён.';
  @override
  String get book_css_editor_title => 'Редактор CSS книги';
  @override
  String get book_css_editor_unsaved_changes => 'Несохранённые изменения';
  @override
  String get book_css_editor_unsaved_changes_message =>
      'Есть несохранённые изменения. Отклонить?';
  @override
  String get book_directory_not_found => 'Каталог книги не найден.';
  @override
  String get book_edit_author => 'Автор';
  @override
  String get book_file_not_found => 'Файл книги не найден';
  @override
  String get book_import_duplicate_cancel => 'Нет, отменить';
  @override
  String get book_import_duplicate_cancelled => 'Импорт отменён';
  @override
  String get book_import_duplicate_keep => 'Да, добавить суффикс';
  @override
  String book_import_duplicate_message({required Object name}) =>
      'Книга с названием «${name}» уже существует. Всё равно импортировать? «Да» — импорт с числовым суффиксом; «Нет» — отмена.';
  @override
  String get book_import_duplicate_title => 'Дубликат книги';
  @override
  String get book_mark_completed_action => 'Отметить как прочитанное';
  @override
  String get book_mark_uncompleted_action => 'Отметить как непрочитанное';
  @override
  String get book_marked_completed => 'Отмечено как прочитанное';
  @override
  String get book_marked_uncompleted => 'Отмечено как непрочитанное';
  @override
  String get book_mode => 'Режим книги';
  @override
  String book_read_progress({required Object percent}) =>
      'Прочитано ${percent}%';
  @override
  String get book_scrape_cover => 'Найти обложку онлайн';
  @override
  String get book_scrape_empty => 'Подходящих обложек не найдено';
  @override
  String get book_scrape_failed => 'Не удалось загрузить обложку';
  @override
  String get book_scrape_hint => 'Название книги / автор';
  @override
  String get book_scrape_search => 'Поиск';
  @override
  String get book_scrape_search_failed =>
      'Поиск не удался. Нажмите «Поиск» для повтора.';
  @override
  String get book_scrape_title => 'Подобрать обложку онлайн';
  @override
  String get book_scrape_use => 'Использовать';
  @override
  String get book_search => 'Поиск в книге';
  @override
  String get book_search_hint => 'Введите текст для поиска…';
  @override
  String get book_search_no_results => 'Ничего не найдено';
  @override
  String book_search_results({required Object n}) => '${n} результат(ов)';
  @override
  String get books => 'Книги';
  @override
  String get browser_extension_enable_server_first =>
      'Совет: сначала включите «Сервер API Yomitan» и задайте API-ключ выше, чтобы расширение автоматически настроилось с рабочим подключением.';
  @override
  String get browser_extension_mobile_unsupported =>
      'Мобильные браузеры не могут загрузить это расширение. Используйте поиск в приложении — в читалке или видеоплеере.';
  @override
  String get browser_extension_page_intro =>
      'На десктопе ищите слова, разбирайте субтитры и создавайте карточки прямо в Chrome или Edge. Подготовьте расширение ниже, затем загрузите его в браузер.';
  @override
  String get browser_extension_prepare_button => 'Подготовить файлы расширения';
  @override
  String get browser_extension_prepare_hint =>
      'Запускает сервер поиска и распаковывает расширение локально; путь к папке копируется в буфер обмена.';
  @override
  String get browser_extension_reinstall_button =>
      'Переподготовить / обновить файлы';
  @override
  String get browser_extension_server_off => 'Сервер поиска выключен';
  @override
  String get browser_extension_server_on => 'Сервер поиска включён';
  @override
  String get browser_extension_status_connected => 'Расширение подключено';
  @override
  String get browser_extension_status_never => 'Расширение ещё не обнаружено';
  @override
  String get browser_extension_step_dev_mode =>
      'Включите «Режим разработчика» (переключатель в верхнем правом углу).';
  @override
  String get browser_extension_step_done_auto =>
      'Готово. Расширение уже настроено для подключения к Fushi для поиска — ничего вводить вручную не нужно.';
  @override
  String get browser_extension_step_load_unpacked =>
      'Нажмите «Загрузить распакованное расширение».';
  @override
  String get browser_extension_step_open_page =>
      'Откройте страницу расширений браузера:';
  @override
  String get browser_extension_step_pick_folder =>
      'Выберите папку расширения ниже (путь уже скопирован в буфер обмена).';
  @override
  String get browser_extension_step_verify =>
      'Убедитесь, что расширение загружено и подключено';
  @override
  String get browser_extension_verify_button => 'Проверить подключение';
  @override
  String get browser_extension_verify_checking => 'Проверка…';
  @override
  String get browser_extension_verify_connected =>
      'Расширение обнаружено и подключено.';
  @override
  String get browser_extension_verify_not_detected =>
      'Расширение не обнаружено. Убедитесь, что оно загружено и включено в браузере, затем проверьте снова.';
  @override
  String get browser_extension_version_app => 'Встроенная в приложение';
  @override
  String get browser_extension_version_browser => 'Загружена в браузере';
  @override
  String get browser_extension_version_label => 'Версия расширения';
  @override
  String get browser_extension_version_mismatch =>
      'Расширение в браузере устарело. При необходимости переподготовьте расширение, затем перезагрузите его на странице расширений браузера (chrome://extensions).';
  @override
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      'Порт ${port} используется другим процессом (обычно компонент yomitan-api — Python-процесс, запущенный браузером). Завершите этот процесс или отключите Yomitan API в расширенных настройках Yomitan, затем снова включите сервер Yomitan API в Fushi.';
  @override
  String get cancel => 'Отмена';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      'Обложка карточки заменена статичным кадром (анимированный клип недоступен): ${reason}';
  @override
  String get card_duplicate => 'Дубликат карточки — не экспортирован.';
  @override
  String get card_export_failed => 'Не удалось экспортировать карточку.';
  @override
  String card_export_failed_detail({required Object reason}) =>
      'Не удалось экспортировать карточку: ${reason}';
  @override
  String get card_export_not_configured =>
      'Anki не настроен. Откройте настройки Anki и нажмите «Загрузить».';
  @override
  String card_exported({required Object deck}) =>
      'Карточка экспортирована в 『${deck}』.';
  @override
  String card_exported_audio_failed({required Object reason}) =>
      'Карточка экспортирована, но не удалось загрузить аудио (${reason}).';
  @override
  String get card_mined_no_sentence_captured =>
      'Карточка создана, но предложение не захвачено (выделите слово заново или в тексте нет распознаваемого предложения).';
  @override
  String get card_mined_unmapped_sentence_audio_field =>
      'Карточка создана с аудио предложения, но в вашем типе записи Anki нет поля для него. Привяжите поле к {sentence-audio}.';
  @override
  String get card_mined_unmapped_sentence_field =>
      'Карточка создана, но в вашем типе записи Anki нет поля для предложения. Используйте Настройки -> «Создать колоду Lapis» или привяжите поле к {sentence}.';
  @override
  String get card_mined_without_sentence_audio =>
      'Карточка создана без аудио предложения (для этого выделения ничего не найдено).';
  @override
  String get card_mining_pending => 'Добавление карточки…';
  @override
  String card_overwritten({required Object deck}) =>
      'Карточка перезаписана в «${deck}».';
  @override
  String get change_source => 'Сменить источник';
  @override
  String get changelog_empty =>
      'Список изменений не найден. Проверьте сеть или настройки прокси.';
  @override
  String get changelog_open_releases => 'Открыть страницу релизов';
  @override
  String get changelog_prerelease => 'Предварительный выпуск';
  @override
  String chapter_progress({
    required Object idx,
    required Object total,
    required Object suffix,
    required Object pct,
  }) => 'Глава ${idx} / ${total}${suffix} · ${pct}%';
  @override
  String get clear => 'Очистить';
  @override
  String get clear_dictionary_description =>
      'Все результаты словарного поиска будут удалены из истории. Вы уверены?';
  @override
  String get clear_dictionary_title => 'Очистить историю словаря';
  @override
  String get lookup_block_capture => 'Блокировать захват экрана';
  @override
  String get lookup_block_capture_hint =>
      'Исключает всплывающие окна поиска и буфера обмена из скриншотов, записи экрана и трансляций (Windows). Отключите, чтобы разрешить захват всплывающего окна поиска.';
  @override
  String get collapse_dictionaries => 'Свернуть словари';
  @override
  String get collection_bookmark => 'Закладка';
  @override
  String get collection_clear_confirm =>
      'Удалить выбранные коллекции навсегда? Это действие нельзя отменить.';
  @override
  String get collection_clear_scope => 'Область очистки';
  @override
  String get collection_collapse => 'Свернуть';
  @override
  String collection_continue_progress({required Object n}) =>
      'Продолжить · Серия ${n}';
  @override
  String get collection_empty => 'Коллекция пуста';
  @override
  String get collection_expand => 'Развернуть';
  @override
  String get collection_export_all_books => 'Все книги';
  @override
  String get collection_export_all_mined => 'Все добытые предложения';
  @override
  String get collection_export_all_words => 'Все избранные слова';
  @override
  String get collection_export_dedupe => 'Убрать дубликаты по предложению';
  @override
  String get collection_export_failed => 'Экспорт не удался';
  @override
  String get collection_export_favorites_scope => 'Избранные предложения';
  @override
  String get collection_export_format => 'Формат';
  @override
  String get collection_export_mined_title => 'Mined Sentences';
  @override
  String get collection_export_no_items => 'Нечего экспортировать';
  @override
  String get collection_export_pick_book => 'Выберите книгу';
  @override
  String get collection_export_save => 'Save Export';
  @override
  String get collection_export_saved => 'Экспорт сохранён';
  @override
  String get collection_export_scope => 'Область экспорта';
  @override
  String get collection_export_sentences_title => 'Favorite Sentences';
  @override
  String get collection_export_words_title => 'Favorite Words';
  @override
  String get collection_loading_hint =>
      'Загрузка коллекций и сопоставление аудиофайлов…';
  @override
  String get collection_member_removed => 'Удалено из коллекции';
  @override
  String get collection_merge_title => 'Объединить коллекции';
  @override
  String get collection_merged => 'Коллекции объединены.';
  @override
  String get collection_mined => 'С карточками';
  @override
  String get collection_open => 'Открыть';
  @override
  String get collection_play => 'Воспроизвести';
  @override
  String get collection_remove_member => 'Убрать из коллекции';
  @override
  String get collection_remove_member_confirm =>
      'Убрать этот элемент из коллекции? Сам элемент сохранится.';
  @override
  String get collection_sentence => 'Предложение';
  @override
  String get collection_sort_by_imported => 'По дате импорта';
  @override
  String get collection_sort_by_title => 'По названию';
  @override
  String get collection_view_all => 'Показать все';
  @override
  String collection_watched_progress({
    required Object done,
    required Object total,
  }) => 'Просмотрено ${done}/${total}';
  @override
  String get collection_word => 'Слово';
  @override
  String get collections => 'Коллекции';
  @override
  String get color_container => 'Контейнер';
  @override
  String get color_container_desc =>
      'Переключение дорожек, фон панели воспроизведения';
  @override
  String get color_link => 'Цвет ссылки';
  @override
  String get color_link_desc => 'Цвет гиперссылок в ридере';
  @override
  String get color_primary => 'Основной';
  @override
  String get color_primary_desc => 'Подсветка аудио, кнопки, переключатели';
  @override
  String get color_sentence_audio_highlight => 'Подсветка аудио';
  @override
  String get color_sentence_audio_highlight_desc =>
      'Подсветка синхронизации субтитров аудиокниги';
  @override
  String get color_secondary => 'Вторичный';
  @override
  String get color_secondary_desc =>
      'Словарные статьи, значки на книжной полке';
  @override
  String get color_tertiary => 'Третичный';
  @override
  String get color_tertiary_desc => 'Коллекции, статистика чтения';
  @override
  String get columns_per_page => 'Столбцов на странице';
  @override
  String get combine_into_series => 'Объединить в серию';
  @override
  String get copied => 'Скопировано';
  @override
  String get copied_to_clipboard => 'Скопировано в буфер обмена.';
  @override
  String get copy => 'Копировать';
  @override
  String get copy_error => 'Копировать ошибку';
  @override
  String get crash_dump_empty => 'Аварийных дампов нет';
  @override
  String crash_dump_label({required Object n}) => 'Аварийные дампы (${n})';
  @override
  String get crash_dump_open_folder => 'Открыть папку дампов';
  @override
  String get crash_dump_privacy_notice =>
      'Аварийные дампы (.dmp) содержат снимок памяти процесса и могут включать читаемый вами текст, искомые слова и другие данные приложения. Делитесь ими только с разработчиками, которым доверяете.';
  @override
  String get crash_dump_share => 'Поделиться дампом';
  @override
  String get crash_dump_share_subject => 'Аварийный дамп Fushi';
  @override
  String get create_series => 'Создать серию';
  @override
  String get creator_action_add_to_stash => 'Добавить в хранилище';
  @override
  String get creator_action_copy_to_clipboard => 'Копировать в буфер обмена';
  @override
  String get creator_action_play_audio => 'Воспроизвести аудио';
  @override
  String get creator_action_share => 'Поделиться';
  @override
  String get creator_enhancement_audio_recorder => 'Диктофон';
  @override
  String get creator_enhancement_camera => 'Камера';
  @override
  String get creator_enhancement_clear_field => 'Очистить поле';
  @override
  String get creator_enhancement_crop_image => 'Обрезать изображение';
  @override
  String get creator_enhancement_local_audio => 'Локальное аудио';
  @override
  String get creator_enhancement_open_stash => 'Открыть хранилище';
  @override
  String get creator_enhancement_pick_audio => 'Выбрать аудио';
  @override
  String get creator_enhancement_pick_image => 'Выбрать изображение';
  @override
  String get creator_enhancement_pop_from_stash => 'Извлечь из хранилища';
  @override
  String get creator_enhancement_save_tags => 'Сохранить теги';
  @override
  String get creator_enhancement_search_dictionary => 'Поиск по словарю';
  @override
  String get creator_enhancement_sentence_picker => 'Выбор предложения';
  @override
  String get creator_enhancement_text_segmentation => 'Сегментация текста';
  @override
  String get creator_export_card => 'Создать карточку';
  @override
  String get creator_field_audio => 'Аудио слова';
  @override
  String get creator_field_audio_sentence => 'Аудио предложения';
  @override
  String get creator_field_cloze_after => 'После пропуска';
  @override
  String get creator_field_cloze_before => 'Перед пропуском';
  @override
  String get creator_field_cloze_inside => 'Содержание пропуска';
  @override
  String get creator_field_collapsed_meaning => 'Свёрнутое значение';
  @override
  String get creator_field_context => 'Контекст';
  @override
  String get creator_field_cue_sentence => 'Субтитр';
  @override
  String get creator_field_expanded_meaning => 'Развёрнутое значение';
  @override
  String get creator_field_frequency => 'Частота';
  @override
  String get creator_field_furigana => 'Фуригана';
  @override
  String get creator_field_hidden_meaning => 'Скрытое значение';
  @override
  String get creator_field_image => 'Изображение';
  @override
  String get creator_field_meaning => 'Значение';
  @override
  String get creator_field_notes => 'Заметки';
  @override
  String get creator_field_pitch_accent => 'Тональный акцент';
  @override
  String get creator_field_reading => 'Чтение';
  @override
  String get creator_field_sentence => 'Предложение';
  @override
  String get creator_field_tags => 'Теги';
  @override
  String get creator_field_term => 'Термин';
  @override
  String get custom_dict_css => 'Пользовательский CSS';
  @override
  String get custom_dict_css_global => 'Глобальный (все словари)';
  @override
  String get custom_fonts => 'Пользовательские шрифты';
  @override
  String get custom_fonts_add_system => 'Добавить системный шрифт';
  @override
  String get custom_fonts_archive_error => 'Не удалось извлечь архив';
  @override
  String get custom_fonts_catalog_title => 'Библиотека шрифтов';
  @override
  String get custom_fonts_download_failed => 'Ошибка загрузки';
  @override
  String get custom_fonts_downloading => 'Загрузка…';
  @override
  String get custom_fonts_drag_hint =>
      'Перетащите для изменения приоритета шрифтов';
  @override
  String get custom_fonts_empty => 'Пользовательские шрифты не добавлены';
  @override
  String get custom_fonts_font_roles => 'Роли шрифтов';
  @override
  String get custom_fonts_import_file => 'Импортировать файл шрифта';
  @override
  String get custom_fonts_import_url => 'Импорт по URL';
  @override
  String custom_fonts_imported_count({required Object count}) =>
      'Импортировано шрифтов: ${count}';
  @override
  String get custom_fonts_manage => 'Управление шрифтами';
  @override
  String get custom_fonts_no_fonts_in_archive =>
      'В архиве не найдено файлов шрифтов';
  @override
  String get custom_fonts_recommended => 'Рекомендуемые шрифты';
  @override
  String get custom_fonts_removed => 'Шрифт удалён';
  @override
  String get custom_fonts_search_hint => 'Поиск шрифтов';
  @override
  String get custom_theme => 'Пользовательская тема';
  @override
  String custom_theme_default_name({required Object n}) =>
      'Пользовательская ${n}';
  @override
  String get custom_theme_long_press_hint =>
      'Нажмите для переключения · долгое нажатие для редактирования';
  @override
  String get custom_theme_name => 'Название';
  @override
  String get dark_mode => 'Тёмный режим';
  @override
  String get dark_mode_dark => 'Тёмная';
  @override
  String get dark_mode_light => 'Светлая';
  @override
  String get dark_mode_system => 'Системная';
  @override
  String data_root_unavailable_message({required Object path}) =>
      'Указанное расположение данных ${path} временно недоступно (диск может быть в спящем режиме, занят или отключён). Ваши данные в безопасности — ничего не потеряно. Нажмите «Повторить», когда диск будет готов, или начните с расположения по умолчанию (ваши данные НЕ будут изменены).';
  @override
  String get data_root_unavailable_title => 'Расположение данных не отвечает';
  @override
  String get data_root_use_default_button =>
      'Начать с расположением по умолчанию';
  @override
  String get data_storage_change_button => 'Изменить расположение';
  @override
  String get data_storage_change_confirm_body =>
      'Fushi переместит все ваши данные в новую папку и перезапустится. Не закрывайте приложение во время переноса.';
  @override
  String get data_storage_change_confirm_title =>
      'Изменить расположение хранилища данных?';
  @override
  String get data_storage_location_default => 'Расположение по умолчанию';
  @override
  String get data_storage_location_hint =>
      'Где Fushi хранит библиотеку, аудиокниги и базу данных. Только для десктопа.';
  @override
  String get data_storage_location_title => 'Расположение хранилища данных';
  @override
  String data_storage_migrate_failed({required Object message}) =>
      'Не удалось переместить данные: ${message}';
  @override
  String get data_storage_migrate_failed_restart => 'Перезапустить';
  @override
  String get data_storage_migrate_failed_suggestions =>
      'Попробуйте другую пустую папку. Не выбирайте папку установки приложения и убедитесь, что файлы в этом расположении не используются.';
  @override
  String get data_storage_migrate_failed_title => 'Перенос данных не удался';
  @override
  String data_storage_migrate_overlay_progress({
    required Object copied,
    required Object total,
  }) => 'Копирование файлов: ${copied} / ${total}';
  @override
  String get data_storage_migrate_overlay_title => 'Перенос данных';
  @override
  String get data_storage_migrate_overlay_warning =>
      'Пожалуйста, не закрывайте приложение. Не выключайте компьютер до завершения.';
  @override
  String get data_storage_migrate_success => 'Данные перенесены. Перезапуск…';
  @override
  String get data_storage_migrating => 'Перенос данных…';
  @override
  String get data_storage_reject_install_dir =>
      'Эта папка является местом установки приложения и не может использоваться для хранения данных. Выберите другую пустую папку.';
  @override
  String get data_storage_restart_failed =>
      'Данные перенесены, но автоматический перезапуск не удался. Пожалуйста, откройте Fushi вручную.';
  @override
  String db_downgrade_message({
    required Object dbVersion,
    required Object appVersion,
  }) =>
      'Эта база данных создана более новой версией Fushi (схема v${dbVersion}). Текущая версия приложения слишком старая (v${appVersion}). Открытие заблокировано для защиты данных. Обновите приложение и повторите попытку.';
  @override
  String get db_downgrade_title => 'Обновите Fushi';
  @override
  String get db_unrecoverable_message =>
      'Не удалось открыть базу данных даже после автоматического восстановления. Она, вероятно, повреждена. Вы можете восстановить резервную копию в Настройках или очистить данные приложения и начать заново.';
  @override
  String get db_unrecoverable_title => 'База данных повреждена';
  @override
  String get debug_log_share_subject => 'Журнал отладки Fushi';
  @override
  String debug_log_title({required Object count}) =>
      'Журнал отладки (${count})';
  @override
  String get debug_log_toggle => 'Включить журнал отладки';
  @override
  String get decrease => 'Уменьшить';
  @override
  String get deduplicate_pitch_accents =>
      'Удалить дубликаты тональных ударений';
  @override
  String get delete_collection => 'Удалить коллекцию';
  @override
  String get delete_collection_also_books => 'Также удалить книги из неё';
  @override
  String get delete_collection_also_videos =>
      'Также удалить видео (исходные видеофайлы сохранятся)';
  @override
  String get delete_custom_theme => 'Удалить тему';
  @override
  String get delete_custom_theme_confirm =>
      'Удалить эту пользовательскую тему? Это действие нельзя отменить.';
  @override
  String get delete_in_progress => 'Выполняется удаление';
  @override
  String get delete_prompt_delete_selected => 'Удалить выбранные';
  @override
  String get delete_prompt_message =>
      'Эти элементы были удалены на другом устройстве. Удалить их и здесь?';
  @override
  String get delete_prompt_select_all => 'Выбрать все';
  @override
  String get delete_prompt_title => 'Удалено на другом устройстве';
  @override
  String get delete_scope_keep_local_desc =>
      'Другие устройства сохранят свою копию';
  @override
  String get delete_scope_sync_everywhere => 'Удалить со всех устройств';
  @override
  String get delete_scope_sync_everywhere_desc =>
      'Другие устройства подтвердят удаление при следующей синхронизации';
  @override
  String get design_system_auto => 'Авто';
  @override
  String get design_system_hint => 'Управляет визуальным стилем приложения';
  @override
  String get design_system_label => 'Система дизайна';
  @override
  String get dialog_add => 'ДОБАВИТЬ';
  @override
  String get dialog_append => 'ДОБАВИТЬ';
  @override
  String get dialog_cancel => 'ОТМЕНА';
  @override
  String get dialog_clear => 'ОЧИСТИТЬ';
  @override
  String get dialog_clear_all_dictionaries => 'Удалить все словари';
  @override
  String get dialog_close => 'ЗАКРЫТЬ';
  @override
  String get dialog_connect => 'ПОДКЛЮЧИТЬ';
  @override
  String get dialog_content_dictionary_clear =>
      'Очистка базы данных словарей также удалит все результаты поиска из истории.';
  @override
  String get dialog_content_dictionary_delete =>
      'Удаление одного словаря может занять больше времени, чем очистка всей базы. Все результаты поиска из истории также будут удалены.';
  @override
  String get dialog_create => 'СОЗДАТЬ';
  @override
  String get dialog_crop => 'ОБРЕЗАТЬ';
  @override
  String get dialog_delete => 'УДАЛИТЬ';
  @override
  String get dialog_done => 'ГОТОВО';
  @override
  String get dialog_edit => 'ИЗМЕНИТЬ';
  @override
  String get dialog_edit_info => 'Редактировать';
  @override
  String get dialog_exit => 'ВЫХОД';
  @override
  String get dialog_export => 'ЭКСПОРТ';
  @override
  String get dialog_import => 'ИМПОРТ';
  @override
  String get dialog_import_dictionary => 'Импортировать словарь';
  @override
  String get dialog_import_folder => 'Импортировать словарь из папки';
  @override
  String get dialog_importing => 'ИМПОРТ…';
  @override
  String get dialog_launch_ankidroid => 'ОТКРЫТЬ ANKIDROID';
  @override
  String get dialog_ok => 'ОК';
  @override
  String get dialog_play => 'ВОСПРОИЗВЕСТИ';
  @override
  String get dialog_read => 'ЧИТАТЬ';
  @override
  String get dialog_record => 'ЗАПИСЬ';
  @override
  String get dialog_replace => 'Заменить';
  @override
  String get dialog_save => 'СОХРАНИТЬ';
  @override
  String get dialog_search => 'ПОИСК';
  @override
  String get dialog_select => 'ВЫБРАТЬ';
  @override
  String get dialog_share => 'ПОДЕЛИТЬСЯ';
  @override
  String get dialog_stash => 'В ЗАКЛАДКИ';
  @override
  String get dialog_stop => 'СТОП';
  @override
  String get dialog_title_dictionary_clear => 'Очистить все словари?';
  @override
  String dialog_title_dictionary_delete({required Object name}) =>
      'Удалить 『${name}』?';
  @override
  String get dict_auto_update => 'Обновлять автоматически';
  @override
  String get dict_auto_update_hint =>
      'Проверять обновления словарей при запуске';
  @override
  String dict_auto_update_last({required Object time}) =>
      'Последняя успешная проверка: ${time}';
  @override
  String get dict_auto_update_never => 'Никогда';
  @override
  String get dict_category_frequency => 'Частотность';
  @override
  String get dict_category_grammar => 'Грамматика';
  @override
  String get dict_category_ja_en => 'Японско-английский';
  @override
  String get dict_category_ja_ja => 'Японско-японский';
  @override
  String get dict_category_ja_other => 'Другие японские';
  @override
  String get dict_category_kanji => 'Кандзи';
  @override
  String get dict_category_names => 'Имена';
  @override
  String get dict_category_supplementary => 'Дополнительные';
  @override
  String get dict_download_browse => 'Скачать словари';
  @override
  String dict_download_button({required Object count}) => 'Скачать (${count})';
  @override
  String get dict_download_complete => 'Загрузка завершена.';
  @override
  String dict_download_failed({required Object error}) =>
      'Загрузка не удалась: ${error}';
  @override
  String get dict_download_installed => 'Установлен';
  @override
  String get dict_download_language => 'Ваш язык';
  @override
  String dict_download_partial({
    required Object success,
    required Object total,
    required Object error,
  }) => '${success} / ${total} успешно. Ошибок: ${error}';
  @override
  String get dict_download_select_title => 'Выбрать словари';
  @override
  String dict_downloading({required Object name}) => 'Загрузка ${name}…';
  @override
  String dict_import_failed_summary({required Object n}) =>
      'Не удалось импортировать словарей: ${n}';
  @override
  String get dict_import_started => 'Импорт словарей в фоне...';
  @override
  String dict_import_success_summary({required Object n}) =>
      'Импортировано словарей: ${n}';
  @override
  String get dict_update_check => 'Проверить обновления';
  @override
  String get dict_update_checking => 'Проверка обновлений…';
  @override
  String dict_update_done({required Object name}) => '${name} обновлён.';
  @override
  String dict_update_failed({required Object error}) =>
      'Не удалось обновить: ${error}';
  @override
  String get dict_update_interval_daily => 'Ежедневно';
  @override
  String get dict_update_interval_monthly => 'Ежемесячно';
  @override
  String get dict_update_interval_weekly => 'Еженедельно';
  @override
  String get dict_update_latest => 'Уже актуально.';
  @override
  String dict_update_name_mismatch_body({
    required Object incoming,
    required Object existing,
  }) =>
      'Выбранный файл — «${incoming}», но вы обновляете «${existing}». Всё равно заменить?';
  @override
  String get dict_update_name_mismatch_title => 'Имена не совпадают';
  @override
  String get dict_update_none => 'Все словари обновлены.';
  @override
  String dict_update_summary({
    required Object updated,
    required Object current,
    required Object failed,
  }) => 'Обновлено: ${updated}, актуально: ${current}, не удалось: ${failed}.';
  @override
  String get dict_update_tooltip => 'Обновить словарь';
  @override
  String dict_update_updating({required Object name}) => 'Обновление ${name}…';
  @override
  String get dictionaries => 'Словари';
  @override
  String get dictionaries_delete_failed => 'Не удалось удалить словари';
  @override
  String get dictionaries_deleting_data => 'Удаление данных словаря...';
  @override
  String get dictionaries_menu_empty =>
      'Импортируйте словарь для использования';
  @override
  String get dictionary_delete_failed => 'Не удалось удалить словарь';
  @override
  String get dictionary_font_size => 'Размер шрифта словаря';
  @override
  String get dictionary_font_size_zoom_hint =>
      'Ctrl + колёсико мыши масштабирует содержимое всплывающего окна';
  @override
  String get dictionary_section_frequency => 'Словари частотности';
  @override
  String get dictionary_section_kanji => 'Словари кандзи';
  @override
  String get dictionary_section_pitch => 'Словари высоты тона';
  @override
  String get dictionary_section_term => 'Словари терминов';
  @override
  String get dictionary_settings => 'Настройки словаря';
  @override
  String get dictionary_type_frequency => 'Частотность';
  @override
  String get dictionary_type_pitch => 'Высота тона';
  @override
  String get dictionary_type_term => 'Термин';
  @override
  String get dictionary_unrecognized_format => 'Формат словаря не распознан';
  @override
  String get dismiss_swipe_sensitivity => 'Чувствительность смахивания';
  @override
  String get display_settings => 'Настройки отображения';
  @override
  String get download_backend_not_configured =>
      'Бэкенд загрузки ещё не настроен.';
  @override
  String get download_clear_finished => 'Очистить завершённые';
  @override
  String get download_detail_backend_offline =>
      'Исходный бэкенд загрузки не в сети. Показана сохранённая информация о задаче; актуальные параметры недоступны.';
  @override
  String get download_network_proxy_auto => 'Авто';
  @override
  String get download_network_proxy_auto_hint =>
      'Применяется только к AniList, Nyaa и Jimaku. «Авто» использует переменные окружения, затем включённый системный прокси; торрент-трафик не затрагивается.';
  @override
  String get download_network_proxy_custom => 'Настраиваемый';
  @override
  String get download_network_proxy_custom_label => 'Настраиваемый прокси';
  @override
  String get download_network_proxy_direct => 'Прямое подключение';
  @override
  String get download_network_proxy_section => 'Сеть обнаружения';
  @override
  String get download_open_settings => 'Открыть настройки';
  @override
  String get download_save_root_change => 'Изменить папку';
  @override
  String get download_save_root_create_failed =>
      'Не удаётся создать эту папку. Проверьте диск и разрешения.';
  @override
  String get download_save_root_fallback_warning =>
      'Указанная папка загрузки недоступна, используется папка по умолчанию.';
  @override
  String get download_save_root_hint =>
      'Новые загрузки сохраняются сюда. Существующие задачи остаются в своей папке.';
  @override
  String get download_save_root_not_absolute =>
      'Укажите абсолютный путь к папке.';
  @override
  String get download_save_root_not_writable =>
      'Эта папка недоступна для записи.';
  @override
  String get download_save_root_reset => 'Восстановить по умолчанию';
  @override
  String get download_save_root_title => 'Папка загрузки';
  @override
  String get download_settings => 'Настройки загрузки';
  @override
  String get download_status_cancelled => 'Отменено';
  @override
  String get download_status_queued => 'В очереди';
  @override
  String download_subscription_after_episode({required Object episode}) =>
      'После серии ${episode}';
  @override
  String get download_subscription_check_all => 'Проверить все';
  @override
  String get download_subscription_check_now => 'Проверить сейчас';
  @override
  String download_subscription_choice_hint({
    required Object group,
    required Object resolution,
  }) =>
      'Подписаться на ${group} · ${resolution}. Новые одиночные серии будут добавляться в очередь.';
  @override
  String get download_subscription_created =>
      'Загрузка добавлена в очередь и подписка создана';
  @override
  String get download_subscription_delete => 'Удалить подписку';
  @override
  String download_subscription_delete_confirm({required Object title}) =>
      'Удалить подписку на ${title}? Загруженные задачи сохранятся.';
  @override
  String get download_subscription_download_and_create =>
      'Скачать и подписаться';
  @override
  String get download_subscription_empty_body =>
      'В разделе «Обнаружение» выберите выпуск одной серии и нажмите «Скачать и подписаться».';
  @override
  String get download_subscription_empty_title => 'Подписок пока нет';
  @override
  String download_subscription_last_checked({required Object time}) =>
      'Последняя проверка: ${time}';
  @override
  String download_subscription_latest_episode({required Object episode}) =>
      'Последняя в очереди: серия ${episode}';
  @override
  String get download_subscription_never_checked => 'Не проверялось';
  @override
  String get download_subscription_running_hint =>
      'Fushi проверяет активные подписки каждые 15 минут, пока приложение запущено.';
  @override
  String get download_subscription_unavailable_hint =>
      'Выберите выпуск одной серии с определяемой группой релиза для подписки.';
  @override
  String get download_subscriptions_tab => 'Подписки';
  @override
  String download_task_action_failed({required Object error}) =>
      'Действие с задачей не удалось: ${error}';
  @override
  String get download_task_delete => 'Удалить задачу';
  @override
  String download_task_delete_confirm({required Object title}) =>
      'Удалить задачу загрузки для ${title}?';
  @override
  String get download_task_delete_files => 'Также удалить загруженные файлы';
  @override
  String get download_task_details => 'Подробности';
  @override
  String get download_tasks_tab => 'Задачи';
  @override
  String get download_test_connection => 'Проверить подключение';
  @override
  String get download_test_connection_failed =>
      'Подключение не удалось. Проверьте адрес и учётные данные.';
  @override
  String download_test_connection_ok({required Object version}) =>
      'Подключено (версия: ${version})';
  @override
  String get drag_drop_need_card_target =>
      'Перетащите субтитры или аудио на книгу или видео';
  @override
  String get drag_drop_unsupported_on_books =>
      'Перетащите сюда файлы книг. Для видео или словарей перейдите на соответствующую вкладку.';
  @override
  String get drag_drop_unsupported_on_dictionary =>
      'Перетащите сюда файлы словарей .zip, .dsl или .mdx. Файлы CSS работают только вместе с пакетом словаря.';
  @override
  String get drag_drop_unsupported_on_video =>
      'Перетащите сюда видео, плейлисты или субтитры. Для книг или словарей перейдите на соответствующую вкладку.';
  @override
  String get edit_custom_theme => 'Редактировать пользовательскую тему';
  @override
  String get eink_mode => 'Режим e-ink';
  @override
  String get eink_mode_hint =>
      'Чёрно-белая тема без анимаций и со штриховым выделением для дисплеев e-ink';
  @override
  String get enable_swipe_to_close => 'Закрывать окно свайпом';
  @override
  String get epub_delete_error => 'Не удалось удалить книгу';
  @override
  String get epub_delete_title => 'Удалить книгу';
  @override
  String get epub_parse_fallback =>
      'Метаданные книги восстановлены из базы данных';
  @override
  String get error_ankidroid_api => 'Ошибка AnkiDroid';
  @override
  String get error_ankidroid_api_content =>
      'Произошла ошибка при взаимодействии с AnkiDroid.\n\nУбедитесь, что фоновый сервис AnkiDroid запущен и все необходимые разрешения предоставлены.';
  @override
  String get error_copied => 'Ошибка скопирована в буфер обмена';
  @override
  String get error_load_failed => 'При загрузке произошла ошибка';
  @override
  String get error_log_diagnostics_section =>
      'Диагностика (не ошибки приложения)';
  @override
  String get error_log_empty => 'Нет журналов ошибок';
  @override
  String error_log_label({required Object n}) => 'Журнал ошибок (${n})';
  @override
  String get error_log_previous_run =>
      'Предыдущие журналы (до последнего запуска)';
  @override
  String get error_log_share_subject => 'Журнал ошибок Fushi';
  @override
  String get extension_popup_independent_size =>
      'Отдельный размер для расширения браузера';
  @override
  String get extension_popup_independent_size_hint =>
      'Задать отдельный максимальный размер для всплывающего окна поиска расширения, не следуя за окном приложения';
  @override
  String get extension_popup_max_height => 'Макс. высота окна расширения';
  @override
  String get extension_popup_max_width => 'Макс. ширина окна расширения';
  @override
  String get external_window_capture_failed => 'Захват окна не удался';
  @override
  String get external_window_current_game => 'Текущая игра';
  @override
  String get external_window_mining => 'Добыча из внешнего окна';
  @override
  String get external_window_no_windows => 'Нет доступных окон для захвата';
  @override
  String get external_window_none => 'Окно не привязано (нажмите для выбора)';
  @override
  String get external_window_refresh => 'Обновить список окон';
  @override
  String get external_window_select => 'Выбрать целевое окно';
  @override
  String get external_window_unbind => 'Отвязать окно';
  @override
  String get external_window_unsupported =>
      'Добыча из внешнего окна доступна только в Windows';
  @override
  String get failed_online_service => 'Не удалось связаться с онлайн-сервисом';
  @override
  String get favorite_added => 'Предложение сохранено в избранное';
  @override
  String get favorite_removed => 'Предложение удалено из избранного';
  @override
  String favorites({required Object n}) => 'Избранное (${n})';
  @override
  String field_fallback_used({
    required Object field,
    required Object secondField,
  }) =>
      'Поле ${field} использовало ${secondField} в качестве резервного запроса.';
  @override
  String file_count({required Object count}) => '${count} файлов';
  @override
  String get floating_dict_close => 'Закрыть';
  @override
  String get floating_dict_title => 'Словарь';
  @override
  String get floating_lyric_bg_opacity =>
      'Непрозрачность фона плавающих субтитров';
  @override
  String get floating_lyric_button_bg_opacity =>
      'Непрозрачность фона кнопок плавающих субтитров';
  @override
  String get floating_lyric_click_lookup =>
      'Касание плавающих субтитров для поиска слова';
  @override
  String get floating_lyric_click_lookup_hint =>
      'Оставьте включённым с фиксацией положения, если хотите сохранить поиск слов.';
  @override
  String get floating_lyric_close => 'Закрыть';
  @override
  String get floating_lyric_context_lines =>
      'Контекстные строки плавающих субтитров';
  @override
  String get floating_lyric_context_lines_hint =>
      '0 показывает только текущую строку (одна строка, без изменений); 1-3 показывают столько строк до и после';
  @override
  String get floating_lyric_corner_radius =>
      'Скругление углов плавающих субтитров';
  @override
  String get floating_lyric_corner_radius_hint =>
      '0 оставляет углы по умолчанию для платформы; увеличьте, чтобы скруглить панель и кнопки';
  @override
  String get floating_lyric_font_size => 'Размер шрифта плавающих субтитров';
  @override
  String get floating_lyric_hint =>
      'Показывать текущее предложение поверх других приложений.';
  @override
  String get floating_lyric_lock => 'Заблокировать';
  @override
  String get floating_lyric_next => 'Следующее';
  @override
  String get floating_lyric_no_audio =>
      'У этой книги нет аудио для прослушивания';
  @override
  String get floating_lyric_permission_hint =>
      'Для отображения плавающих субтитров требуется разрешение на наложение.';
  @override
  String get floating_lyric_permission_hint_coloros =>
      'Если система продолжает отказывать в разрешении на наложение: переустановите APK приложения через файловый менеджер или отключите мониторинг разрешений в Настройках разработчика, затем попробуйте снова.';
  @override
  String get floating_lyric_play_pause => 'Воспроизвести';
  @override
  String get floating_lyric_previous => 'Предыдущее';
  @override
  String get floating_lyric_text_opacity =>
      'Непрозрачность текста плавающих субтитров';
  @override
  String get floating_lyric_toggle_action => 'Плавающие субтитры';
  @override
  String get floating_lyric_unavailable_hint =>
      'Не удалось показать окно плавающих субтитров.';
  @override
  String get floating_lyric_unlock => 'Разблокировать';
  @override
  String get floating_lyric_width => 'Ширина плавающих субтитров';
  @override
  String get floating_lyric_width_hint =>
      '0 использует ширину по умолчанию для платформы; задайте значение для фиксированной ширины панели';
  @override
  String get focus_navigation_enabled =>
      'Навигация фокусом (клавиатура/геймпад)';
  @override
  String get focus_navigation_enabled_hint =>
      'Перемещайте фокус стрелками или геймпадом с отображением рамки фокуса.';
  @override
  String get folder_picker_permission_required =>
      'Для просмотра папок необходимо разрешение на доступ к хранилищу';
  @override
  String get follow_audio_off_tooltip => 'Следование за аудио: ВЫКЛ';
  @override
  String get follow_audio_on_tooltip => 'Следование за аудио: ВКЛ';
  @override
  String get font_color => 'Цвет шрифта';
  @override
  String get font_color_desc => 'Цвет текста в читалке';
  @override
  String get font_desc_hina_mincho =>
      'Мягкий декоративный Mincho · Хорошо сочетается с Noto Sans JP';
  @override
  String get font_desc_klee_one =>
      'Рукописный стиль · Чёткий и читабельный · Хорошо сочетается с Noto Sans JP';
  @override
  String get font_desc_mplus_rounded_1c =>
      'Округлый милый стиль · Идеально для ранобэ · Хорошо сочетается с Noto Sans JP';
  @override
  String get font_desc_noto_sans_jp =>
      'Google/Adobe Gothic · Приоритет японских глифов · Переменная толщина';
  @override
  String get font_desc_noto_sans_sc =>
      'Google/Adobe Gothic · Приоритет упрощённого китайского · Используйте как запасной шрифт';
  @override
  String get font_desc_noto_sans_tc =>
      'Google/Adobe Gothic · Приоритет традиционного китайского';
  @override
  String get font_desc_noto_serif_jp =>
      'Google/Adobe Serif · Приоритет японских глифов · Идеально для вертикального чтения';
  @override
  String get font_desc_noto_serif_sc =>
      'Google/Adobe Serif · Приоритет упрощённого китайского · Используйте как запасной шрифт';
  @override
  String get font_desc_noto_serif_tc =>
      'Google/Adobe Serif · Приоритет традиционных китайских глифов · Идеально для вертикального чтения';
  @override
  String get font_desc_shippori_mincho =>
      'Элегантный Mincho · Отлично для литературы · Хорошо сочетается с Noto Sans JP';
  @override
  String get font_desc_zen_kaku_gothic_new =>
      'Современный Kaku Gothic · Для общего чтения · Хорошо сочетается с Noto Sans JP';
  @override
  String get font_desc_zen_maru_gothic =>
      'Мягкий округлый Gothic · Хорошо сочетается с Noto Sans JP';
  @override
  String get font_desc_zen_old_mincho =>
      'Винтажный Mincho · Классический литературный стиль · Хорошо сочетается с Noto Sans JP';
  @override
  String get font_source_file => 'Файл';
  @override
  String get font_source_system => 'Системный';
  @override
  String get font_target_app_ui => 'Шрифт интерфейса';
  @override
  String get font_target_body => 'Шрифт текста книг';
  @override
  String get font_target_dictionary => 'Шрифт словаря';
  @override
  String get font_target_video_subtitle => 'Video Subtitle Font';
  @override
  String get gal_hook_text_font_size => 'Размер шрифта субтитров гальгейма';
  @override
  String get gal_hook_text_font_size_hint =>
      'Перетащите угол оверлея, чтобы изменить размер окна; размер субтитров настраивается здесь.';
  @override
  String get game_add => 'Добавить игру';
  @override
  String get game_already_added => 'Эта игра уже в библиотеке';
  @override
  String get game_audio_backend_engine => 'PCM движка';
  @override
  String get game_audio_backend_loopback => 'Системный захват (микс)';
  @override
  String get game_audio_backend_none => 'Нет источника звука';
  @override
  String get game_audio_backend_resource => 'Аудио из ресурсов игры';
  @override
  String get game_audio_duration => 'Длительность аудио';
  @override
  String get game_audio_fallback_disabled_missing =>
      '未找到与该句匹配的游戏资源音频；已关闭降级，未制卡';
  @override
  String get game_audio_resource_id => '音频资源 ID';
  @override
  String get game_audio_tracks => 'Активные аудиодорожки';
  @override
  String get game_auto_cover => 'Автоматически загрузить обложку';
  @override
  String get game_back_to_capture => 'Назад к рабочей области захвата';
  @override
  String get game_back_to_library => 'Назад к библиотеке игр';
  @override
  String get game_capture_active => 'Захват активен';
  @override
  String get game_capture_degraded_loopback =>
      'Игра запущена, но внедрение в движок не удалось; используется системный захват звука, который может примешивать музыку и звуковые эффекты.';
  @override
  String get game_capture_description =>
      'Запустите или привяжите игру, затем отслеживайте текст, озвучку, скриншоты и вывод в Anki.';
  @override
  String get game_capture_empty_body =>
      'Запустите или привяжите игру; статус текста и аудио предложений появится здесь.';
  @override
  String get game_capture_empty_title => 'Строк пока не получено';
  @override
  String get game_capture_launch_failed =>
      'Не удалось запустить игру или начать захват';
  @override
  String get game_capture_launching => 'Запуск игры и начало захвата...';
  @override
  String get game_capture_running => 'Сессия захвата запущена';
  @override
  String get game_capture_window_missing =>
      'Процесс игры запущен, но окно так и не появилось — возможно, игра не стартовала. Попробуйте запустить снова.';
  @override
  String get game_capture_workbench => 'Рабочая область захвата';
  @override
  String get game_captured_lines => 'Захваченные строки';
  @override
  String get game_card_mapping_missing =>
      'В маппинге полей Anki отсутствуют токены игровых карточек';
  @override
  String get game_card_sentence_audio_missing =>
      'Карточка создана без аудио предложения; аудио другой строки не подставлено.';
  @override
  String get game_clear_events => 'Очистить события';
  @override
  String get game_cover_not_found =>
      'Подходящая обложка не найдена в папке игры или исполняемом файле';
  @override
  String get game_cover_searching => 'Поиск обложки...';
  @override
  String get game_cover_updated => 'Обложка обновлена';
  @override
  String get game_dashboard => 'Главная';
  @override
  String get game_detail_missing => 'Этой игры больше нет в библиотеке';
  @override
  String get game_detail_tab_edit => 'Редактирование';
  @override
  String get game_detail_tab_stats => 'Статистика';
  @override
  String get game_detail_tab_summary => 'Обзор';
  @override
  String get game_diagnostics => 'Диагностика совместимости';
  @override
  String get game_diagnostics_subtitle =>
      'Этапы сессии, конечные точки, аудиодорожки и структурированные события';
  @override
  String game_drop_imported({required Object count}) =>
      'Добавлено игр: ${count}';
  @override
  String get game_drop_no_exe => 'Среди перетащенных файлов нет новых .exe игр';
  @override
  String get game_edit_developer => 'Разработчик';
  @override
  String get game_edit_display_name => 'Отображаемое имя';
  @override
  String get game_edit_exe_path => 'Путь к исполняемому файлу';
  @override
  String get game_edit_invalid_date =>
      'Дата выхода должна быть в формате ГГГГ-ММ-ДД';
  @override
  String get game_edit_launch_args => 'Аргументы запуска';
  @override
  String get game_edit_launch_args_hint =>
      'Передаются игре при запуске, напр. -windowed';
  @override
  String get game_edit_nsfw => 'Для взрослых';
  @override
  String get game_edit_release_date => 'Дата выхода (ГГГГ-ММ-ДД)';
  @override
  String get game_edit_save => 'Сохранить';
  @override
  String get game_edit_saved => 'Сохранено';
  @override
  String get game_edit_summary => 'Описание';
  @override
  String get game_edit_tags => 'Теги (через запятую)';
  @override
  String get game_edit_user_rating => 'Моя оценка (0-10)';
  @override
  String get game_edit_user_review => 'Мой отзыв';
  @override
  String get game_edit_workdir => 'Рабочий каталог';
  @override
  String get game_empty => 'Игры ещё не добавлены';
  @override
  String get game_endpoint_phase_connected => 'Подключено';
  @override
  String get game_endpoint_phase_connecting => 'Подключение';
  @override
  String get game_endpoint_phase_retrying => 'Повтор подключения';
  @override
  String get game_endpoint_phase_stopped => 'Остановлено';
  @override
  String get game_endpoints_engine_active =>
      'Текст поступает от хука движка; эти конечные точки необязательны';
  @override
  String get game_endpoints_hint =>
      'Порты для внешних текстовых инструментов (Textractor / LunaTranslator и др.); игнорируйте, если не используете';
  @override
  String get game_event_all => 'Все события';
  @override
  String get game_event_warnings => 'Предупреждения и ошибки';
  @override
  String get game_exe_missing => 'Исполняемый файл игры не найден';
  @override
  String get game_filter => 'Фильтр';
  @override
  String get game_filter_all => 'Все';
  @override
  String get game_filter_favorited => 'Избранное';
  @override
  String get game_filter_hide_nsfw => 'Скрыть контент для взрослых';
  @override
  String get game_filter_local_only => 'Есть локальный файл';
  @override
  String get game_filter_metadata_only => 'Только метаданные';
  @override
  String get game_filter_mined => 'С карточками';
  @override
  String get game_filter_reset => 'Сбросить фильтры';
  @override
  String get game_filter_source => 'Доступность';
  @override
  String get game_filter_status => 'Статус прохождения';
  @override
  String get game_filter_tags => 'Теги';
  @override
  String get game_filter_with_audio => 'С аудио';
  @override
  String get game_focus_continue => 'Продолжить';
  @override
  String get game_follow_live => 'Следить в реальном времени';
  @override
  String get game_health => 'Состояние';
  @override
  String get game_health_anki => 'Вывод Anki';
  @override
  String get game_health_audio => 'Источник звука';
  @override
  String get game_health_helper => 'Хук-хелпер';
  @override
  String get game_health_process => 'Процесс игры';
  @override
  String get game_health_text => 'Источник текста';
  @override
  String get game_health_upscaling => 'Масштабирование окна';
  @override
  String get game_health_window => 'Окно игры';
  @override
  String get game_helper_download => 'Скачать';
  @override
  String game_helper_download_failed({required Object error}) =>
      'Не удалось скачать компонент движка: ${error}';
  @override
  String get game_helper_downloading => 'Загрузка компонента движка…';
  @override
  String get game_helper_install_incomplete =>
      'Установка компонента движка не завершена, попробуйте снова';
  @override
  String game_helper_needed_body({required Object size}) =>
      'Для запуска гальгейма необходим компонент инжектора хука движка (около ${size}). Он содержит код внедрения в процесс и распространяется отдельно от приложения во избежание ложных срабатываний антивируса. Скачать сейчас?';
  @override
  String get game_helper_needed_title => 'Необходим компонент движка гальгейма';
  @override
  String get game_helper_size_unknown => 'размер неизвестен';
  @override
  String get game_helper_verification_failed =>
      'Компонент движка заблокирован: не удалось проверить контрольную сумму (файл .sha256 с GitHub недоступен, отсутствует или не совпадает). Fushi не устанавливает непроверенный код инжектора.';
  @override
  String get game_home_subtitle => 'Библиотека игр и мониторинг захвата';
  @override
  String get game_hook_fallback_all_audio_sources_failed =>
      'Не удалось запустить ни хук озвучки движка, ни системный захват; аудио захватить невозможно.';
  @override
  String get game_hook_fallback_engine_attach_failed =>
      'Не удалось подключить хук озвучки движка к запущенной игре; вместо этого используется системный микс.';
  @override
  String get game_hook_fallback_engine_pcm_unavailable =>
      'Хук озвучки движка установлен, но игра ещё не воспроизвела голос. Пока используется системный микс; переключится обратно автоматически при появлении первого голоса.';
  @override
  String get game_hook_fallback_launch_injection_failed =>
      'Игра запущена, но раннее внедрение в движок не удалось; вместо этого используется системный микс.';
  @override
  String get game_hook_fallback_window_not_found =>
      'Захват аудио запущен, но окно игры ещё не появилось, поэтому скриншоты недоступны. Привязка произойдёт автоматически при появлении окна.';
  @override
  String get game_hook_line_unavailable =>
      'Эта захваченная строка больше недоступна.';
  @override
  String get game_hook_reason_access_denied =>
      'Игра запущена с повышенными привилегиями; запустите Fushi от имени администратора и попробуйте снова.';
  @override
  String get game_hook_reason_bitness_mismatch =>
      'Архитектура хелпера не соответствует игре (32-бит vs 64-бит); переустановите хелпер.';
  @override
  String get game_hook_reason_create_process_failed =>
      'Не удалось запустить игру из Fushi; проверьте путь к исполняемому файлу.';
  @override
  String get game_hook_reason_elevation_required =>
      'Эта игра требует прав администратора; запустите Fushi от имени администратора и повторите попытку.';
  @override
  String get game_hook_reason_game_exe_missing =>
      'Исполняемый файл игры больше не существует по сохранённому пути.';
  @override
  String get game_hook_reason_guarded_hook_failed =>
      'Не удалось вовремя установить защищённый хук; автоматический повтор.';
  @override
  String get game_hook_reason_handshake_timeout =>
      'Игра подключена к хуку, но не выдала текст или аудио в отведённое время; возможно, этот движок ещё не поддерживается.';
  @override
  String get game_hook_reason_helper_missing =>
      'Хелпер хука озвучки не установлен для этой архитектуры игры; установите его и попробуйте снова.';
  @override
  String get game_hook_reason_hook_dll_missing =>
      'Пакет хелпера неполный (отсутствует библиотека хука); переустановите его.';
  @override
  String get game_hook_reason_injection_failed =>
      'Внедрение в игру заблокировано; добавьте Fushi и игру в исключения антивируса.';
  @override
  String get game_hook_reason_ready_timeout =>
      'Библиотека хука не успела загрузиться вовремя; причиной может быть сканирование антивирусом.';
  @override
  String get game_hook_reason_resume_failed =>
      'Не удалось возобновить запущенную игру, она была остановлена; запустите снова.';
  @override
  String get game_hook_reason_shared_memory_unavailable =>
      'Не удалось открыть канал захвата; перезапустите Fushi.';
  @override
  String get game_hook_reason_spawn_failed =>
      'Не удалось запустить хелпер; проверьте, не удалил ли и не заблокировал ли его антивирус.';
  @override
  String get game_hook_reason_resident_hook_mismatch =>
      'Предыдущая сессия захвата всё ещё загружена в игре; перезапустите игру.';
  @override
  String get game_hook_reason_steam_timeout =>
      'Steam принял запрос на запуск, но процесс игры так и не появился.';
  @override
  String get game_hook_reason_target_missing =>
      'Не выбран процесс или исполняемый файл игры для захвата.';
  @override
  String get game_hook_recapture_empty =>
      'В окне перезахвата аудио не обнаружено';
  @override
  String get game_hook_recapture_saved =>
      'Перезахваченная озвучка сохранена для этой строки';
  @override
  String get game_hook_recapture_started =>
      'Запись — воспроизведите эту строку в игре';
  @override
  String get game_hook_recapture_unavailable =>
      'Для перезахвата озвучки требуется системный захват аудио';
  @override
  String get game_kpi_total_games => 'Игры';
  @override
  String get game_kpi_week => 'На этой неделе';
  @override
  String get game_latest_line => 'Последняя строка';
  @override
  String get game_launch => 'Запустить';
  @override
  String get game_launch_and_capture => 'Запустить и захватить';
  @override
  String get game_launch_unsupported =>
      'Запуск игр поддерживается только на Windows';
  @override
  String get game_library => 'Библиотека игр';
  @override
  String get game_line_audio_encoded => 'Аудио извлечено';
  @override
  String get game_line_audio_fallback => 'Резерв';
  @override
  String get game_line_audio_matched => 'Аудио готово';
  @override
  String get game_line_audio_missing => 'Нет аудио';
  @override
  String get game_line_audio_pending => 'Сопоставление';
  @override
  String get game_line_audio_unavailable => 'Только текст';
  @override
  String get game_line_favorite_tooltip => 'Добавить строку в избранное';
  @override
  String get game_line_mined => 'Карточка создана';
  @override
  String get game_line_preview_failed =>
      'Нет воспроизводимого аудио для этой строки';
  @override
  String get game_line_preview_tooltip => 'Воспроизвести аудио этой строки';
  @override
  String get game_line_track_applied =>
      'Голосовая дорожка применена к этой строке';
  @override
  String get game_line_track_dialog_title =>
      'Голосовая дорожка для этой строки';
  @override
  String get game_line_track_failed =>
      'На этой дорожке нет аудио рядом с этой строкой';
  @override
  String get game_line_track_tooltip =>
      'Выбрать голосовую дорожку для этой строки';
  @override
  String get game_line_unfavorite_tooltip => 'Убрать из избранного';
  @override
  String get game_live_lines => 'Строки в реальном времени';
  @override
  String get game_manage_tracks => 'Управление аудиодорожками';
  @override
  String get game_meta_added => 'Добавлено';
  @override
  String get game_meta_ranking => 'Рейтинг';
  @override
  String get game_meta_source => 'Источник данных';
  @override
  String get game_never_played => 'Ещё не играли';
  @override
  String get game_no_active_line =>
      'Выберите строку, чтобы увидеть статус аудио предложения.';
  @override
  String get game_no_events => 'Событий сессии пока нет';
  @override
  String get game_no_match => 'Нет игр, соответствующих текущим фильтрам';
  @override
  String get game_no_tracks => 'Данных об аудиодорожках пока нет';
  @override
  String get game_open_capture_workspace => 'Открыть рабочую область захвата';
  @override
  String get game_phase_attaching => 'Привязка';
  @override
  String get game_phase_degraded => 'Деградация';
  @override
  String get game_phase_error => 'Ошибка';
  @override
  String get game_phase_idle => 'Ожидание';
  @override
  String get game_phase_injecting => 'Внедрение';
  @override
  String get game_phase_launching => 'Запуск';
  @override
  String get game_phase_resolving => 'Разрешение';
  @override
  String get game_phase_running => 'Работает';
  @override
  String get game_phase_stopping => 'Остановка';
  @override
  String get game_phase_waiting_signals => 'Ожидание сигналов';
  @override
  String get game_pipeline => 'Конвейер сессии';
  @override
  String get game_play_status => 'Статус прохождения';
  @override
  String get game_random_reroll => 'Перемешать';
  @override
  String get game_random_title => 'Выбрать за меня';
  @override
  String get game_recently_played => 'Недавно запускавшиеся';
  @override
  String get game_refresh_tracks => 'Обновить дорожки';
  @override
  String get game_remove => 'Удалить';
  @override
  String get game_rename => 'Переименовать';
  @override
  String get game_rename_label => 'Название игры';
  @override
  String get game_scrape => 'Загрузить метаданные';
  @override
  String get game_scrape_applied => 'Метаданные обновлены';
  @override
  String get game_scrape_failed => 'Не удалось загрузить метаданные';
  @override
  String get game_scrape_no_result => 'Совпадений не найдено';
  @override
  String get game_scrape_query => 'Название или ID источника';
  @override
  String get game_search => 'Поиск игр';
  @override
  String get game_session_events => 'События сессии';
  @override
  String get game_session_idle => 'Захват ещё не начат';
  @override
  String get game_session_listening => 'Прослушивание';
  @override
  String get game_set_cover => 'Установить обложку';
  @override
  String get game_show_hook_text_window => 'Показать окно текста хука';
  @override
  String get game_site_score => 'Оценка на сайте';
  @override
  String get game_sort => 'Сортировка';
  @override
  String get game_sort_added => 'Дата добавления';
  @override
  String get game_sort_last_played => 'Последний запуск';
  @override
  String get game_sort_name => 'Название';
  @override
  String get game_sort_release => 'Дата выхода';
  @override
  String get game_sort_site_score => 'Оценка на сайте';
  @override
  String get game_sort_user_rating => 'Моя оценка';
  @override
  String get game_stat_daily => 'Время игры за день';
  @override
  String get game_stat_delete_session => 'Удалить эту сессию';
  @override
  String get game_stat_last_played => 'Последний запуск';
  @override
  String get game_stat_no_sessions => 'Игровых сессий ещё не записано';
  @override
  String get game_stat_session_list => 'История сессий';
  @override
  String get game_stat_sessions => 'Сессии';
  @override
  String get game_stat_today => 'Время игры сегодня';
  @override
  String get game_stat_total_time => 'Общее время игры';
  @override
  String get game_status_dropped => 'Брошено';
  @override
  String get game_status_not_configured => 'Не проверено';
  @override
  String get game_status_on_hold => 'Отложено';
  @override
  String get game_status_played => 'Пройдено';
  @override
  String get game_status_playing => 'Играю';
  @override
  String get game_status_ready => 'Готово';
  @override
  String get game_status_unset => 'Не задано';
  @override
  String get game_status_waiting => 'В ожидании';
  @override
  String get game_status_want_to_play => 'Хочу поиграть';
  @override
  String get game_stop_listening => 'Остановить прослушивание';
  @override
  String get game_summary_aliases => 'Альтернативные названия';
  @override
  String get game_summary_all_titles => 'Все названия';
  @override
  String get game_summary_average_hours => 'Среднее время прохождения';
  @override
  String get game_summary_none =>
      'Описания пока нет. Загрузите метаданные, чтобы заполнить его.';
  @override
  String get game_summary_release_date => 'Дата выхода';
  @override
  String get game_tags_clear => 'Сбросить выбор';
  @override
  String get game_tags_title => 'Теги игры';
  @override
  String get game_text_endpoints => 'Конечные точки текста';
  @override
  String get game_text_gaps => 'Пропуски в последовательности';
  @override
  String get game_text_gaps_hint =>
      'Пропуски в последовательности = количество потерянных строк в кольцевом буфере хука; 0 — норма';
  @override
  String get game_text_source_engine => 'Хук движка';
  @override
  String get game_text_source_unknown => 'Неизвестный источник';
  @override
  String get game_text_source_websocket => 'WebSocket';
  @override
  String get game_text_thread => 'Текстовый поток';
  @override
  String game_text_thread_audio_count({required Object count}) =>
      '${count} с аудио';
  @override
  String get game_text_thread_hint =>
      'Выберите чистый поток диалогов, как в Luna Translator';
  @override
  String get game_track_auto => 'Автоматический выбор';
  @override
  String get game_track_clips => 'Фрагменты';
  @override
  String get game_track_energy => 'Энергия';
  @override
  String get game_track_exclude_bgm => 'Отметить как BGM';
  @override
  String get game_track_exclusion_hint =>
      'Отметьте дорожку BGM/атмосферы как исключённую, чтобы автовыбор не считал её голосом — строки без речи больше не будут захватывать BGM.';
  @override
  String get game_track_exclusion_title => 'Исключить аудиодорожки';
  @override
  String get game_track_preview => 'Предпрослушивание дорожки';
  @override
  String get game_track_preview_failed =>
      'Не удалось захватить недавнее аудио с этой дорожки';
  @override
  String get game_track_preview_stop => 'Остановить предпрослушивание';
  @override
  String get game_track_restore => 'Восстановить дорожку';
  @override
  String get game_track_select_as_voice => 'Использовать как голосовую дорожку';
  @override
  String get game_track_select_requires_engine =>
      'Выбор дорожки требует активной сессии хука движка';
  @override
  String get game_track_voice => 'Голос';
  @override
  String get game_tracks_loopback_hint =>
      'Системный захват записывает весь микшированный вывод системы как единый поток; разделение по дорожкам недоступно.';
  @override
  String get game_tracks_pcm_only_hint =>
      'Выбор дорожек влияет на захват только при использовании PCM движка. Список ниже доступен только для чтения при текущем источнике звука.';
  @override
  String get game_tracks_resource_mode_hint =>
      'В режиме аудио из ресурсов игры каждая голосовая строка извлекается непосредственно из файлов игры, поэтому списка PCM-дорожек здесь нет. Автоматический или ручной выбор дорожек применяется только к захвату PCM движка.';
  @override
  String get game_unread_lines => 'Непрочитанные';
  @override
  String get game_upscaling => 'Масштабирование окна игры';
  @override
  String get game_upscaling_auto => 'Авто';
  @override
  String get game_upscaling_hint_external =>
      'Копия Magpie уже была запущена, поэтому Fushi не вмешался. Нажмите Win+Shift+A для масштабирования окна игры.';
  @override
  String get game_upscaling_hint_first_run =>
      'На этот раз Magpie потребовалась первоначальная настройка. Нажмите Win+Shift+A для масштабирования — в следующий раз это произойдёт автоматически.';
  @override
  String get game_upscaling_hint_manual =>
      'Нажмите Win+Shift+A для масштабирования окна игры.';
  @override
  String get game_upscaling_installed_only => 'Только установленные';
  @override
  String get game_upscaling_off => 'Выкл.';
  @override
  String get game_upscaling_status_active => 'Масштабирование окна включено';
  @override
  String get game_upscaling_status_failed =>
      'Не удалось запустить масштабирование окна';
  @override
  String get game_upscaling_status_manual =>
      'Масштабирование окна готово, но не запустилось автоматически';
  @override
  String get game_upscaling_status_unavailable =>
      'Масштабирование окна недоступно';
  @override
  String get game_user_rating => 'Моя оценка';
  @override
  String get game_view_detail => 'Подробности';
  @override
  String get game_waiting_for_text => 'Ожидание текста';
  @override
  String game_waveform_range_label({
    required Object start,
    required Object end,
    required Object duration,
    required Object total,
  }) => '${start} - ${end} (выбрано ${duration} / всего ${total})';
  @override
  String get game_waveform_select_title => 'Выбрать диапазон аудио';
  @override
  String get game_window_bound => 'Привязано';
  @override
  String get game_window_missing => 'Не привязано';
  @override
  String get games => 'Игры';
  @override
  String get global_context_capture => 'Захват контекста выделения';
  @override
  String get global_context_capture_hint =>
      'Считывает окружающий текст из активного приложения для отображения текущего предложения (только Windows)';
  @override
  String go_to_chapter({required Object n}) => 'Глава ${n}';
  @override
  String get handlebar_audio => 'Аудио';
  @override
  String get handlebar_book_cover => 'Обложка книги';
  @override
  String get handlebar_card_image => 'Card Image (Cover / GIF)';
  @override
  String get handlebar_cue_sentence => 'Субтитр';
  @override
  String handlebar_deprecated_label({required Object label}) =>
      '${label} (устарело)';
  @override
  String get handlebar_document_title => 'Название документа';
  @override
  String get handlebar_expression => 'Выражение';
  @override
  String get handlebar_frequencies => 'Частоты (HTML)';
  @override
  String get handlebar_frequency_harmonic_rank => 'Частота (Ранг)';
  @override
  String get handlebar_furigana_plain => 'Фуригана';
  @override
  String get handlebar_glossary => 'Глоссарий';
  @override
  String get handlebar_glossary_first => 'Глоссарий (Первый)';
  @override
  String get handlebar_pitch_accent_categories => 'Категории ударения';
  @override
  String get handlebar_pitch_accent_positions => 'Позиции ударения';
  @override
  String get handlebar_popup_selection_text =>
      'Текст выделения во всплывающем окне';
  @override
  String get handlebar_reading => 'Чтение';
  @override
  String get handlebar_selected_glossary => 'Выбранный глоссарий';
  @override
  String get handlebar_sentence => 'Предложение';
  @override
  String get handlebar_sentence_audio => 'Sentence Audio';
  @override
  String get handlebar_video_clip => 'Video Clip (GIF)';
  @override
  String get harmonic_frequency => 'Агрегация частот слов';
  @override
  String health_match_summary({required Object pct}) => 'Совпадение ${pct}%';
  @override
  String get highlight_on_tap => 'Подсветка текста при нажатии';
  @override
  String get home_activity => 'Активность';
  @override
  String get home_activity_empty => 'Активности пока нет';
  @override
  String get home_continue => 'Продолжить';
  @override
  String get home_filter_added => 'Добавлено';
  @override
  String get home_filter_all => 'Все';
  @override
  String get home_filter_game => 'Игра';
  @override
  String get home_filter_read => 'Чтение';
  @override
  String get home_filter_watch => 'Просмотр';
  @override
  String get home_recently_added => 'Недавно добавленные';
  @override
  String get home_remote_source => 'Удалённый';
  @override
  String home_session_count({required Object n}) => 'Сессий: ${n}';
  @override
  String get home_today => 'Сегодня';
  @override
  String get home_yesterday => 'Вчера';
  @override
  String get hover_auto_lookup => 'Поиск при наведении';
  @override
  String get hover_auto_lookup_hint =>
      'Автоматический поиск слова при наведении курсора на символ; без щелчка и удержания Shift. Открывает не более одного всплывающего слоя. Только для ПК.';
  @override
  String get icon_custom => 'Своя';
  @override
  String get icon_custom_confirm_body =>
      'На главный экран будет добавлен ярлык с выбранным изображением. Продолжить?';
  @override
  String get icon_custom_confirm_title => 'Своя иконка';
  @override
  String get icon_custom_hint =>
      'Нажмите на иконку, чтобы сменить, или выберите своё изображение ниже.';
  @override
  String get icon_default => 'По умолчанию';
  @override
  String get icon_full => 'Полная';
  @override
  String get icon_shortcut_created => 'Ярлык на главном экране создан.';
  @override
  String get icon_shortcut_unsupported =>
      'Ярлыки не поддерживаются на этом устройстве.';
  @override
  String get icon_switch_success => 'Иконка приложения успешно изменена.';
  @override
  String get icon_transparent => 'Прозрачный';
  @override
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  @override
  String get image_pause => 'Пауза на изображении';
  @override
  String get image_pause_hint =>
      'Автопауза при появлении изображения во время воспроизведения.';
  @override
  String get image_pause_off => 'Выкл.';
  @override
  String get image_search_label_after => 'найденных по запросу';
  @override
  String get image_search_label_before => 'Выбрано изображение ';
  @override
  String get image_search_label_middle => 'из ';
  @override
  String get image_search_label_none_before => 'Выбрано ';
  @override
  String get image_search_label_none_middle => 'изображений не ';
  @override
  String get import_complete => 'Импорт словаря завершён.';
  @override
  String import_duplicate({required Object name}) =>
      'Словарь с названием『${name}』уже импортирован.';
  @override
  String get import_extract => 'Извлечение файлов...';
  @override
  String get import_failed => 'Импорт словаря не удался.';
  @override
  String get import_in_progress => 'Выполняется импорт';
  @override
  String import_name({required Object name}) => 'Импорт 『${name}』...';
  @override
  String import_sidecar_audio({required Object count}) =>
      'Автоматически подключено аудиофайлов: ${count}';
  @override
  String import_sidecar_subtitle({required Object name}) =>
      'Субтитры подключены автоматически: ${name}';
  @override
  String get import_start => 'Подготовка к импорту...';
  @override
  String get import_step_building_epub => 'Сборка EPUB…';
  @override
  String get import_step_converting_epub => 'Конвертация в EPUB…';
  @override
  String import_step_copying_file({required Object name}) =>
      'Копирование ${name}…';
  @override
  String get import_step_done => 'Готово';
  @override
  String get import_step_importing_epub => 'Импорт EPUB…';
  @override
  String get import_step_matching => 'Сопоставление аудио…';
  @override
  String get import_step_parsing => 'Разбор субтитров…';
  @override
  String get import_step_persisting => 'Сохранение файлов…';
  @override
  String get import_step_reading => 'Чтение файла…';
  @override
  String get import_step_reading_idb => 'Чтение информации о книге…';
  @override
  String get import_step_saving => 'Сохранение записей…';
  @override
  String get import_theme => 'Импортировать тему';
  @override
  String get import_theme_hint => 'Вставьте код темы';
  @override
  String get import_theme_invalid => 'Недействительный код темы';
  @override
  String get import_theme_success => 'Тема импортирована';
  @override
  String import_unsupported_file_format({required Object ext}) =>
      'Неподдерживаемый формат файла: ${ext}';
  @override
  String get increase => 'Увеличить';
  @override
  String get info_empty_home_tab => 'История пуста';
  @override
  String init_error_message({required Object error}) =>
      'Ошибка инициализации: ${error}';
  @override
  String get initialization_failed => 'Ошибка инициализации';
  @override
  String get interconnect_backup_backend =>
      'Использовать взаимосвязь как бэкенд резервного копирования';
  @override
  String get interconnect_backup_backend_active =>
      'Резервные копии уже отправляются на сопряжённое устройство. Выберите другой бэкенд в разделе «Синхронизация и резервное копирование», чтобы переключиться.';
  @override
  String get interconnect_backup_backend_apply =>
      'Установить как бэкенд резервного копирования';
  @override
  String interconnect_backup_backend_current({required Object backend}) =>
      'Текущий бэкенд резервного копирования: ${backend}';
  @override
  String get interconnect_backup_backend_hint =>
      'Резервное копирование и синхронизация на сопряжённое устройство вместо облачного хранилища. Всё, что разрешено переключателями загрузки на сопряжённое устройство, будет записано туда.';
  @override
  String get interconnect_backup_backend_needs_pairing =>
      'Сначала подключитесь к устройству выше.';
  @override
  String get interconnect_enable => 'Включить взаимосвязь';
  @override
  String get interconnect_enable_hint =>
      'Подключайтесь к другим устройствам по локальной сети. Работает параллельно с облачным бэкендом резервного копирования — они не конфликтуют.';
  @override
  String get interconnect_moved_note =>
      'Настройки подключения и сервера находятся в разделе «Fushi Interconnect»';
  @override
  String get interconnect_section_client => 'Подключение к другим устройствам';
  @override
  String get interconnect_section_delegate =>
      'Делегирование сопряжённому устройству';
  @override
  String get interconnect_section_related => 'Удалённый контент и поиск';
  @override
  String get interconnect_summary =>
      'Прямая синхронизация между устройствами и размещение этого устройства как сервера';
  @override
  String get interconnect_upload_audiobook_files => 'Загрузить файлы аудиокниг';
  @override
  String get interconnect_upload_audiobook_files_hint =>
      'Синхронизировать аудиофайлы и пакеты субтитров аудиокниг этого устройства с партнёром по взаимосвязи (большой объём).';
  @override
  String get interconnect_upload_content => 'Загрузить файлы книг';
  @override
  String get interconnect_upload_content_hint =>
      'Синхронизировать книги и контент для чтения этого устройства с партнёром по взаимосвязи.';
  @override
  String get interconnect_upload_dictionary => 'Загрузить словари';
  @override
  String get interconnect_upload_dictionary_hint =>
      'Синхронизировать словари этого устройства с партнёром по взаимосвязи.';
  @override
  String get interconnect_upload_section =>
      'Загрузка на партнёра по взаимосвязи';
  @override
  String get interconnect_upload_video_files => 'Загрузить видеофайлы';
  @override
  String get interconnect_upload_video_files_hint =>
      'Синхронизировать локальные видеофайлы этого устройства с партнёром по взаимосвязи (большой объём).';
  @override
  String get invert_audiobook_skip_direction =>
      'Инвертировать кнопки перемотки в нижней панели';
  @override
  String get invert_swipe_direction =>
      'Инвертировать направление свайпа для перелистывания';
  @override
  String get invert_volume_buttons => 'Инвертировать кнопки громкости';
  @override
  String get jump_to_char => 'Перейти к символу';
  @override
  String jump_to_char_current({
    required Object current,
    required Object total,
  }) => 'Текущая: ${current} / ${total}';
  @override
  String get jump_to_char_hint => 'Введите позицию символа…';
  @override
  String get keep_screen_awake => 'Не выключать экран';
  @override
  String get library_search => 'Поиск в библиотеке';
  @override
  String get loading_illustrations => 'Загрузка иллюстраций…';
  @override
  String get loading_slow_message =>
      'Если ваше хранилище данных находится на сетевом или съёмном диске, который сейчас отключён, запуск может зависнуть. Нажмите «Повторить», чтобы запуститься с использованием стандартного хранилища для этой сессии; ваши данные останутся на месте.';
  @override
  String get loading_slow_message_mobile =>
      'Запуск занимает больше времени, чем обычно — Fushi может загружать большую библиотеку или словари. Подождите немного или нажмите «Повторить» для перезагрузки. Ваши данные в безопасности и не будут потеряны.';
  @override
  String get loading_slow_title => 'Запуск занимает больше времени, чем обычно';
  @override
  String get local_audio => 'Локальное аудио';
  @override
  String get local_audio_add_db => 'Добавить базу данных локального аудио';
  @override
  String get local_audio_edit_sources => 'Изменить источники';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      'Не удалось импортировать аудиобазу: ${reason}';
  @override
  String get local_audio_imported => 'База данных аудио добавлена';
  @override
  String get local_audio_invalid_db =>
      'Этот файл не является пригодной аудиобазой (не база Local Audio Server или в ней нет аудио).';
  @override
  String get local_audio_no_sources =>
      'В этой базе данных источники не найдены';
  @override
  String get local_audio_reference_original =>
      'Ссылаться на оригинальный файл (не копировать)';
  @override
  String get local_audio_reference_original_desc =>
      'Оставить базу данных на месте и читать по исходному пути; источник перестанет работать при перемещении или удалении файла.';
  @override
  String get local_audio_source_order_title => 'Приоритет источников';
  @override
  String get log_copy_all => 'Копировать всё';
  @override
  String get log_export_failed => 'Ошибка экспорта';
  @override
  String get log_export_file => 'Экспорт в файл';
  @override
  String get log_export_saved => 'Журнал сохранён';
  @override
  String get log_upload_action => 'Загрузить на сервер';
  @override
  String get log_upload_consent_agree => 'Согласиться и загрузить';
  @override
  String get log_upload_consent_body =>
      'Текст журнала (может содержать сообщения об ошибках, пути к файлам и названия книг), а также версия приложения, платформа и модель устройства будут загружены на сервер разработчика для диагностики проблем. Это происходит только при нажатии «Загрузить» — ничего не отправляется автоматически.';
  @override
  String get log_upload_consent_title => 'Загрузить журнал на сервер?';
  @override
  String get log_upload_failed => 'Ошибка загрузки';
  @override
  String get log_upload_in_progress => 'Загрузка журнала…';
  @override
  String get log_upload_success => 'Журнал загружен';
  @override
  String get log_upload_too_large => 'Журнал слишком большой для загрузки';
  @override
  String get login => 'Войти';
  @override
  String get lookup_audio_volume => 'Громкость произношения';
  @override
  String get low_memory_mode => 'Режим экономии памяти';
  @override
  String get low_memory_mode_hint =>
      'Уменьшает использование кеша и памяти для слабых устройств. Некоторые изменения вступают в силу после перезапуска.';
  @override
  String get low_memory_mode_suggestion =>
      'Попробуйте включить режим экономии памяти в Настройки → Разное.';
  @override
  String get lyrics_artist => 'Исполнитель';
  @override
  String get lyrics_blur => 'Размытие текста песен';
  @override
  String get lyrics_blur_hint =>
      'Размывает текущую строку для погружения в аудирование; наведите курсор или нажмите, чтобы показать';
  @override
  String get lyrics_font_size => 'Размер шрифта текста песен';
  @override
  String get lyrics_font_size_hint =>
      'Размер шрифта текста песен не зависит от режима книги';
  @override
  String get lyrics_mode => 'Режим текста песен';
  @override
  String get lyrics_mode_hint_body =>
      'Режим текстов песен имеет собственную настройку размера шрифта. Вы можете настроить его в ⚙ Настройки → Типографика.';
  @override
  String get lyrics_mode_hint_title => 'Режим текстов песен';
  @override
  String get lyrics_text_color => 'Цвет текста субтитров-песен';
  @override
  String get lyrics_text_color_hint =>
      'Использовать свой цвет для текста песен вместо следования теме';
  @override
  String get lyrics_title => 'Название';
  @override
  String get lyrics_vertical_writing => 'Вертикальный текст песен';
  @override
  String get lyrics_vertical_writing_hint =>
      'Читать текст сверху вниз, справа налево (независимо от режима книги)';
  @override
  String get manage_audio_sources => 'Управление аудиоисточниками';
  @override
  String get manager => 'Менеджер';
  @override
  String get manga_mode_toggle => 'Reading Mode';
  @override
  String get manga_ocr_delete => 'Удалить модели';
  @override
  String get manga_ocr_delete_confirm_message =>
      'Это освободит место на диске. Вы сможете скачать их снова позже.';
  @override
  String get manga_ocr_delete_confirm_title => 'Удалить модели OCR?';
  @override
  String get manga_ocr_delete_done => 'Модели удалены';
  @override
  String get manga_ocr_download => 'Скачать модели';
  @override
  String get manga_ocr_download_done => 'Модели загружены';
  @override
  String get manga_ocr_download_failed => 'Не удалось скачать модели';
  @override
  String manga_ocr_downloading_file({required Object file}) =>
      'Загрузка ${file}…';
  @override
  String get manga_ocr_engine_builtin => 'Встроенный';
  @override
  String get manga_ocr_engine_external => 'Внешний mokuro';
  @override
  String get manga_ocr_engine_none =>
      'Нет доступного движка OCR. Скачайте встроенные модели или укажите путь к mokuro CLI в настройках.';
  @override
  String get manga_ocr_external_cli_hint =>
      'Оставьте пустым для автоопределения (FUSHI_MOKURO / PATH)';
  @override
  String get manga_ocr_external_cli_label => 'Путь к внешнему mokuro CLI';
  @override
  String get manga_ocr_external_detect => 'Обнаружить';
  @override
  String manga_ocr_external_detected({required Object version}) =>
      'Обнаружено: ${version}';
  @override
  String get manga_ocr_external_not_found => 'mokuro не найден';
  @override
  String get manga_ocr_model_status_missing => 'Модели OCR не скачаны';
  @override
  String get manga_ocr_model_status_ready => 'Модели OCR готовы';
  @override
  String get manga_ocr_section => 'OCR манги';
  @override
  String get manga_ocr_section_summary =>
      'Встроенные модели OCR и внешний mokuro CLI';
  @override
  String get manga_ocr_unsupported =>
      'Встроенный OCR манги пока недоступен на этой платформе.';
  @override
  String get manga_ocr_wizard_done => 'Манга импортирована';
  @override
  String get manga_ocr_wizard_failed => 'OCR не удался';
  @override
  String get manga_ocr_wizard_has_mokuro =>
      'В этой папке уже есть файл .mokuro — используйте обычный импорт.';
  @override
  String get manga_ocr_wizard_importing => 'Импорт…';
  @override
  String get manga_ocr_wizard_no_images =>
      'В этой папке изображения не найдены.';
  @override
  String manga_ocr_wizard_page_progress({
    required Object done,
    required Object total,
  }) => 'Страница ${done} / ${total}';
  @override
  String get manga_ocr_wizard_pick_folder => 'Выбрать папку с изображениями';
  @override
  String get manga_ocr_wizard_run => 'Запустить OCR';
  @override
  String get manga_ocr_wizard_running => 'Выполняется OCR…';
  @override
  String get manga_ocr_wizard_title => 'Импорт манги через OCR';
  @override
  String get manga_ocr_wizard_title_label => 'Название (необязательно)';
  @override
  String get manga_online_base_url_label => 'URL онлайн-каталога';
  @override
  String get manga_online_catalog_title => 'Онлайн-каталог';
  @override
  String get manga_online_download_selected => 'Скачать выбранное';
  @override
  String get manga_online_downloaded => 'Импортировано';
  @override
  String get manga_online_failed => 'Ошибка загрузки';
  @override
  String get manga_online_load_failed => 'Не удалось загрузить каталог';
  @override
  String get manga_online_queue_added => 'Добавлено в очередь загрузки';
  @override
  String manga_online_queue_progress({
    required Object done,
    required Object total,
  }) => 'Том ${done} / ${total}';
  @override
  String get manga_online_queue_section => 'Загрузки из каталога манги';
  @override
  String get manga_online_search_hint => 'Поиск серий';
  @override
  String get manga_online_stage_cbz => 'Скачивание тома…';
  @override
  String get manga_online_stage_extract => 'Извлечение…';
  @override
  String get manga_online_stage_mokuro => 'Загрузка данных OCR…';
  @override
  String get manga_reading_mode_spread => 'Разворот';
  @override
  String get manga_reading_mode_webtoon => 'Webtoon';
  @override
  String get manga_remote_ocr_cancelled => 'Удалённое OCR отменено на хосте.';
  @override
  String get manga_remote_ocr_engine => 'Сопряжённый хост';
  @override
  String get manga_remote_ocr_failed => 'Ошибка удалённого OCR';
  @override
  String get manga_remote_ocr_no_host =>
      'Нет доступного сопряжённого хоста с поддержкой OCR манги.';
  @override
  String get manga_remote_ocr_not_ready =>
      'Модели OCR на сопряжённом хосте не загружены. Сначала загрузите их на хосте.';
  @override
  String get manga_remote_ocr_running => 'Сопряжённый хост выполняет OCR…';
  @override
  String get manga_remote_ocr_unsupported =>
      'Сопряжённый хост не поддерживает OCR манги.';
  @override
  String manga_remote_ocr_uploading({
    required Object done,
    required Object total,
  }) => 'Загрузка страниц ${done} / ${total}…';
  @override
  String get margin_bottom => 'Нижнее поле';
  @override
  String get margin_left => 'Левое поле';
  @override
  String get margin_right => 'Правое поле';
  @override
  String get margin_top => 'Верхнее поле';
  @override
  String get maximum_terms => 'Максимум заголовков в результатах';
  @override
  String get media_source_add => 'Add Source';
  @override
  String get media_source_add_local_folder => 'Local Folder';
  @override
  String get media_source_add_network => 'Сеть';
  @override
  String media_source_count_book({required Object n}) => '${n} книг';
  @override
  String media_source_count_video({required Object n}) => '${n} видео';
  @override
  String media_source_last_scan({required Object time}) =>
      'Последнее сканирование ${time}';
  @override
  String get media_source_manage_title => 'Manage Sources';
  @override
  String get media_source_network_label_optional =>
      'Отображаемое имя (необязательно)';
  @override
  String get media_source_network_missing_fields =>
      'Введите хост, имя пользователя, удалённый путь и пароль или ключ';
  @override
  String get media_source_network_remote_path => 'Удалённый путь';
  @override
  String get media_source_network_subtitle =>
      'Удалённая библиотека SFTP / FTP / WebDAV';
  @override
  String get media_source_no_sources => 'Источников пока нет';
  @override
  String get media_source_open_folder => 'Open Folder';
  @override
  String get media_source_remove => 'Remove Source';
  @override
  String get media_source_remove_keeps_media =>
      'Удаление источника не удаляет импортированные медиа.';
  @override
  String get media_source_rescan => 'Пересканировать';
  @override
  String get media_source_scan_error => 'Ошибка сканирования';
  @override
  String get media_tracking_access_token => 'Токен доступа';
  @override
  String get media_tracking_access_token_hint =>
      'Создайте персональный токен доступа с правами на запись';
  @override
  String get media_tracking_account => 'Аккаунт Bangumi';
  @override
  String get media_tracking_add_mapping => 'Добавить привязку';
  @override
  String get media_tracking_anime => 'Аниме';
  @override
  String get media_tracking_chapter => 'Глава';
  @override
  String get media_tracking_connect => 'Подключить и проверить';
  @override
  String get media_tracking_connected_as => 'Подключённый аккаунт';
  @override
  String get media_tracking_delete_mapping => 'Удалить привязку';
  @override
  String get media_tracking_episode => 'Эпизод';
  @override
  String get media_tracking_kind => 'Категория';
  @override
  String get media_tracking_local_item => 'Локальный элемент';
  @override
  String get media_tracking_manga => 'Манга';
  @override
  String get media_tracking_mappings => 'Привязки элементов';
  @override
  String get media_tracking_no_mappings =>
      'Привязок пока нет. Fushi автоматически сопоставляет при первом завершённом эпизоде или прогрессе чтения; добавьте неоднозначные элементы здесь.';
  @override
  String get media_tracking_novel => 'Роман';
  @override
  String get media_tracking_pending => 'Ожидающие обновления';
  @override
  String get media_tracking_progress_mode => 'Единица прогресса';
  @override
  String get media_tracking_progress_offset => 'Начальный номер';
  @override
  String get media_tracking_saved => 'Привязка сохранена';
  @override
  String get media_tracking_search => 'Поиск на Bangumi';
  @override
  String get media_tracking_search_results => 'Результаты Bangumi';
  @override
  String get media_tracking_summary =>
      'Автоматическая запись прогресса аниме, романов и манги в Bangumi';
  @override
  String get media_tracking_sync_failed =>
      'Ошибка синхронизации. Обновление остаётся в очереди.';
  @override
  String get media_tracking_sync_now => 'Синхронизировать сейчас';
  @override
  String get media_tracking_sync_success => 'Синхронизация завершена';
  @override
  String get media_tracking_token_required =>
      'Сначала введите и проверьте токен доступа';
  @override
  String get media_tracking_volume => 'Том';
  @override
  String get microphone_permission_denied =>
      'Для записи требуется доступ к микрофону.';
  @override
  String get mining_audio_quality => 'Качество аудио';
  @override
  String get mining_audio_quality_high => 'Высокое';
  @override
  String get mining_audio_quality_hint =>
      'Более высокий битрейт чище, но увеличивает размер карточек.';
  @override
  String get mining_audio_quality_max => 'Максимальное';
  @override
  String get mining_audio_quality_standard => 'Стандартное';
  @override
  String get mining_image_quality => 'Качество изображений / GIF';
  @override
  String get mining_image_quality_hd => 'HD';
  @override
  String get mining_image_quality_hint =>
      'Чем выше, тем чётче, но карточки больше. Максимальное сохраняет скриншоты в исходном разрешении; анимированные GIF ограничены для удобства.';
  @override
  String get mining_image_quality_max => 'Максимальное';
  @override
  String get mining_image_quality_standard => 'Стандартное';
  @override
  String get mining_image_quality_thrift => 'Экономия трафика';
  @override
  String get move_down => 'Вниз';
  @override
  String get move_up => 'Вверх';
  @override
  String get name => 'Название';
  @override
  String get nav_browser_extension => 'Расширение';
  @override
  String get nav_downloads => 'Загрузки';
  @override
  String get nav_game => 'Игра';
  @override
  String get nav_home => 'Главная';
  @override
  String get nav_lookup => 'Поиск';
  @override
  String get nav_video => 'Видео';
  @override
  String get next_sentence => 'Следующее предложение';
  @override
  String get no_audio_file => 'Нет аудиофайла для сохранения.';
  @override
  String get no_collections => 'Нет закладок или сохранённых предложений';
  @override
  String get no_debug_logs => 'Нет записей отладки.';
  @override
  String get no_illustrations_found => 'Иллюстрации не найдены';
  @override
  String get no_results_found => 'Результатов не найдено.';
  @override
  String get no_search_results => 'Результаты не найдены.';
  @override
  String get no_sentence_selected => 'Предложение не выбрано';
  @override
  String get no_sentences_found => 'Предложения не найдены';
  @override
  String get no_text => 'Нет текста.';
  @override
  String get no_text_to_search => 'Нет текста для поиска.';
  @override
  String get now_listening_label => 'Сейчас слушаете';
  @override
  String get on_screen_keyboard => 'Экранная клавиатура';
  @override
  String get options_collapse => 'Свернуть при поиске';
  @override
  String get options_delete => 'Удалить';
  @override
  String get options_edit => 'Изменить';
  @override
  String get options_expand => 'Развернуть при поиске';
  @override
  String get options_github => 'Репозиторий на GitHub';
  @override
  String get options_hide => 'Скрыть при поиске';
  @override
  String get options_language => 'Настройки языка';
  @override
  String get options_show => 'Показать при поиске';
  @override
  String get overlay_lookup_independent_size =>
      'Отдельный размер для всплывающего окна поиска';
  @override
  String get overlay_lookup_independent_size_hint =>
      'Задать собственный максимальный размер для внешнего всплывающего окна поиска вместо наследования размера внутреннего попапа';
  @override
  String get overlay_lookup_max_height =>
      'Макс. высота всплывающего окна поиска';
  @override
  String get overlay_lookup_max_width =>
      'Макс. ширина всплывающего окна поиска';
  @override
  String page_progress({required Object current, required Object total}) =>
      'Страница ${current} / ${total}';
  @override
  String get paste => 'Вставить';
  @override
  String get pause => 'Пауза';
  @override
  String get pause_on_lookup => 'Пауза при поиске';
  @override
  String get pdf_bookmark_added => 'Закладка добавлена';
  @override
  String get pdf_bookmarks => 'Закладки';
  @override
  String get pdf_bookmarks_empty => 'Закладок пока нет.';
  @override
  String get pdf_no_text_layer =>
      'В этом PDF нет текстового слоя (отсканированное изображение), поэтому поиск по словарю недоступен.';
  @override
  String get pdf_outline => 'Содержание';
  @override
  String get pdf_outline_empty => 'В этом PDF нет содержания.';
  @override
  String get pick_image => 'Выбрать изображение';
  @override
  String get play => 'Воспроизвести';
  @override
  String get play_from_cue => 'Воспроизвести с предложения';
  @override
  String get playback_auto_pause => 'Режим паузы на субтитрах';
  @override
  String get playback_speed => 'Скорость';
  @override
  String get popup_append_sentence_tooltip =>
      'Добавить это предложение в карточку';
  @override
  String get popup_auto_expand_dictionaries => 'Авторазворачивание строк';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      'Держать первые N строк словарных блоков развёрнутыми, даже если включено «Сворачивать словари». Количество следует настройке столбцов: строки × столбцы (0 = сворачивать все)';
  @override
  String get popup_bottom_docked => 'Окно поиска снизу';
  @override
  String get popup_bottom_docked_hint =>
      'Закрепить окно поиска как панель во всю ширину внизу экрана вместо следования за искомым словом.';
  @override
  String get popup_clear_sentence_draft_tooltip =>
      'Очистить добавленные предложения';
  @override
  String get popup_ctx_adjust_button => 'Изменить контекст';
  @override
  String get popup_ctx_box_current => 'Current';
  @override
  String get popup_ctx_box_empty => '(нет)';
  @override
  String get popup_ctx_box_next => 'After';
  @override
  String get popup_ctx_box_prev => 'Before';
  @override
  String get popup_ctx_cancel => 'Отмена';
  @override
  String get popup_ctx_confirm => 'Confirm';
  @override
  String get popup_ctx_modal_count => 'Selected %d';
  @override
  String get popup_ctx_modal_eyebrow => 'Before mining';
  @override
  String get popup_ctx_modal_title => 'Выберите контекст предложения';
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
      'Макс. столбцов словаря (автозаполнение)';
  @override
  String get popup_dictionary_max_columns_hint =>
      'Автоматически заполняет до указанного числа столбцов словаря в строке; на узких экранах используется меньше';
  @override
  String get popup_font_size_decrease => 'Уменьшить текст словаря';
  @override
  String get popup_font_size_increase => 'Увеличить текст словаря';
  @override
  String get popup_instant_scroll => 'Мгновенная прокрутка окна поиска';
  @override
  String get popup_instant_scroll_hint =>
      'Для экранов e-ink: окно поиска перемещается на фиксированное расстояние без анимации прокрутки.';
  @override
  String get popup_max_height => 'Макс. высота окна поиска';
  @override
  String get popup_max_width => 'Макс. ширина всплывающего окна';
  @override
  String get popup_no_audio_available => 'Аудио недоступно';
  @override
  String get popup_sentence_context_next_label => 'После';
  @override
  String get popup_sentence_context_prev_label => 'До';
  @override
  String get popup_wheel_speed => 'Скорость прокрутки попапа';
  @override
  String get popup_wheel_speed_hint =>
      'Скорость прокрутки колёсиком мыши для словарного попапа (также применяется к расширению браузера).';
  @override
  String get prev_sentence => 'Предыдущее предложение';
  @override
  String get preview => 'Предпросмотр';
  @override
  String get preview_badge => 'Значок';
  @override
  String get preview_switch => 'Переключатель';
  @override
  String get processing_in_progress => 'Обработка изображений';
  @override
  String get profile_book_profile => 'Назначить профиль';
  @override
  String profile_confirm_delete({required Object name}) =>
      'Удалить профиль "${name}"?';
  @override
  String get profile_copy => 'Копировать';
  @override
  String get profile_copy_suffix => '(Копия)';
  @override
  String get profile_create => 'Создать профиль';
  @override
  String get profile_delete => 'Удалить';
  @override
  String get profile_export => 'Экспорт';
  @override
  String get profile_export_failed => 'Ошибка экспорта';
  @override
  String profile_follow_default_current({required Object name}) =>
      'Следует за стандартным (${name})';
  @override
  String get profile_import => 'Импорт';
  @override
  String get profile_import_failed => 'Ошибка импорта';
  @override
  String get profile_import_invalid => 'Недопустимый файл профиля';
  @override
  String get profile_import_success => 'Профиль импортирован';
  @override
  String get profile_label => 'Профиль';
  @override
  String get profile_management => 'Управление профилями';
  @override
  String get profile_media_audiobook => 'Аудиокнига';
  @override
  String get profile_media_epub => 'Книга';
  @override
  String get profile_media_lyrics => 'Режим текстов';
  @override
  String get profile_media_none => 'Нет';
  @override
  String get profile_media_srtbook => 'Субтитровая книга';
  @override
  String get profile_media_type_bindings => 'Привязки типов медиа';
  @override
  String get profile_media_video => 'Видео';
  @override
  String get profile_name_hint => 'Название профиля';
  @override
  String get profile_rename => 'Переименовать';
  @override
  String get reader_auto_hide_chrome_duration =>
      'Автоскрытие плавающих элементов управления через';
  @override
  String get reader_content_timeout =>
      'Время загрузки контента истекло. Откройте заново, если отображение некорректно';
  @override
  String get reader_copy_image => 'Копировать изображение';
  @override
  String get reader_gallery => 'Галерея';
  @override
  String get reader_gallery_current => 'Вы читаете здесь';
  @override
  String get reader_gallery_empty => 'В этой книге нет иллюстраций';
  @override
  String get reader_gallery_jump => 'Перейти к этой иллюстрации';
  @override
  String get reader_gallery_tooltip => 'Просмотр иллюстраций';
  @override
  String reader_image_copy_failed({required Object error}) =>
      'Не удалось скопировать изображение: ${error}';
  @override
  String get reader_image_file_unavailable => 'Файл изображения недоступен.';
  @override
  String reader_image_share_failed({required Object error}) =>
      'Не удалось поделиться изображением: ${error}';
  @override
  String get reader_open_failed => 'Не удалось открыть книгу';
  @override
  String get reader_settings_section => 'Настройки читалки';
  @override
  String get reader_theme_black => 'Чёрная';
  @override
  String get reader_theme_dark => 'Тёмная';
  @override
  String get reader_theme_ecru => 'Экрю';
  @override
  String get reader_theme_eyecare => 'Eye Care';
  @override
  String get reader_theme_gray => 'Серая';
  @override
  String get reader_theme_light => 'Белая';
  @override
  String get reader_theme_water => 'Голубая';
  @override
  String get reader_top_progress_floating => 'Плавающий индикатор чтения';
  @override
  String get reader_unsupported_platform =>
      'Читалка пока недоступна на этой платформе.';
  @override
  String get reading_activity => 'Учебная активность';
  @override
  String get reading_progress => 'Прогресс чтения';
  @override
  String get reading_section_mode => 'Режим и ориентация';
  @override
  String get reading_statistics => 'Статистика чтения';
  @override
  String get record => 'Запись';
  @override
  String get refresh => 'Обновить';
  @override
  String get rematch_adjust_window => 'Изменить окно поиска и пересопоставить';
  @override
  String get rematch_run => 'Перезапустить сопоставление';
  @override
  String get remote_audio_source => 'Удалённое аудио';
  @override
  String get remote_book_audiobook_download_failed =>
      'Не удалось загрузить аудиокнигу для этой книги';
  @override
  String get remote_book_download => 'Загрузить на это устройство';
  @override
  String get remote_book_download_failed =>
      'Не удалось загрузить книгу с устройства';
  @override
  String get remote_book_downloaded => 'Книга с устройства загружена';
  @override
  String get remote_book_downloading => 'Загрузка…';
  @override
  String get remote_book_info => 'Сведения';
  @override
  String get remote_book_info_has_audiobook => 'Включает аудиокнигу';
  @override
  String get remote_book_unavailable => 'Сопряжённое устройство недоступно';
  @override
  String get remote_dict_lookup => 'Удалённый поиск в словаре';
  @override
  String get remote_dict_lookup_hint =>
      'Если в локальных словарях ничего нет, запросить настроенный сервер Fushi';
  @override
  String get remote_video_download => 'Загрузить на это устройство';
  @override
  String get remote_video_download_failed =>
      'Не удалось загрузить видео с устройства';
  @override
  String get remote_video_downloaded => 'Видео с устройства загружено';
  @override
  String get remote_video_downloading => 'Загрузка…';
  @override
  String get remote_video_info => 'Сведения';
  @override
  String get remote_video_info_has_subtitle => 'Включает субтитры';
  @override
  String get remote_video_info_no_subtitle => 'Нет субтитров';
  @override
  String remote_video_info_size({required Object size}) => 'Размер: ${size}';
  @override
  String get remote_video_list_failed =>
      'Не удалось загрузить удалённые видео. Убедитесь, что другое устройство онлайн и в той же сети, затем повторите попытку.';
  @override
  String get remote_video_unavailable => 'Сопряжённое устройство недоступно';
  @override
  String get rename_collection => 'Переименовать коллекцию';
  @override
  String get render_restart_required =>
      'Вступит в силу после перезапуска приложения';
  @override
  String get repeat_cue => 'Повторить предложение';
  @override
  String get reset => 'Сбросить';
  @override
  String get retry => 'Повторить';
  @override
  String get reverse_arrow_page_turn =>
      'Поменять направление перелистывания клавишами влево/вправо';
  @override
  String get reverse_navigation_bar => 'Обратить панель навигации';
  @override
  String get reverse_reader_bottom_bar => 'Обратить нижнюю панель читалки';
  @override
  String get audiobook_rematch_all_zero =>
      'Все окна показали 0%, настройте вручную';
  @override
  String audiobook_rematch_auto_failed({required Object error}) =>
      'Автосопоставление не удалось: ${error}';
  @override
  String get audiobook_rematch_auto_match => 'Автосопоставление';
  @override
  String audiobook_rematch_auto_picked({
    required Object window,
    required Object pct,
  }) => 'Автоматически выбрано ${window} (совпадение ${pct}%)';
  @override
  String audiobook_rematch_default_value({required Object n}) =>
      'По умолчанию ${n}';
  @override
  String audiobook_rematch_health_label({
    required Object pct,
    required Object detail,
  }) => '${pct} совпадение — ${detail}';
  @override
  String get audiobook_rematch_matching => 'Сопоставление...';
  @override
  String get audiobook_rematch_no_chapters => 'В EPUB нет текста глав';
  @override
  String get audiobook_rematch_no_cues_to_match =>
      'Нет меток для сопоставления';
  @override
  String get audiobook_rematch_no_sections =>
      'Текст глав не найден, автосопоставление невозможно';
  @override
  String get audiobook_rematch_no_stored_cues =>
      'Нет сохранённых меток, перезапуск невозможен';
  @override
  String audiobook_rematch_failed({required Object error}) =>
      'Пересопоставление не удалось: ${error}';
  @override
  String audiobook_rematch_result({
    required Object pct,
    required Object window,
  }) => 'Пересопоставлено: ${pct}% (окно: ${window})';
  @override
  String get audiobook_rematch_search_window => 'Окно поиска';
  @override
  String get audiobook_rematch_similarity_threshold => 'Порог сходства';
  @override
  String get audiobook_rematch_threshold_hint =>
      'Минимальное сходство для нечёткого сопоставления (коэффициент Дайса). Уменьшите для допуска больших различий, но слишком низкое значение даёт ложные совпадения.';
  @override
  String get audiobook_rematch_window_hint =>
      'Количество символов для поиска вперёд на каждую метку. Увеличьте, если процент совпадений низкий; слишком большое значение может сместить курсор при коротких шумных метках.';
  @override
  String get saved_tags => 'Теги сохранены.';
  @override
  String get scan_non_japanese_text => 'Сканировать нежапонский текст';
  @override
  String get scan_non_japanese_text_hint =>
      'Если выключено, выделение останавливается на нежапонских символах';
  @override
  String get search => 'Поиск';
  @override
  String get search_ellipsis => 'Поиск...';
  @override
  String get searching_in_progress => 'Поиск ';
  @override
  String get section_advanced_colors => 'Расширенные';
  @override
  String get section_advanced_typography => 'Дополнительно';
  @override
  String get section_audiobook => 'Аудиокнига';
  @override
  String get section_audiobook_lyrics => 'Аудиокниги и текст';
  @override
  String get section_epub => 'Библиотека EPUB';
  @override
  String get section_floating_lyric => 'Плавающий текст';
  @override
  String get section_interface => 'Интерфейс';
  @override
  String get section_layout => 'Макет и отображение';
  @override
  String get section_navigation => 'Навигация';
  @override
  String get section_page_turn_direction => 'Направление перелистывания';
  @override
  String get section_reader_colors => 'Цвета читалки';
  @override
  String get section_system_theme => 'Системный цвет темы';
  @override
  String get section_typography => 'Типографика';
  @override
  String get section_update => 'Настройки обновлений';
  @override
  String get section_video_danmaku => 'Данмаку';
  @override
  String get section_video_library => 'Библиотека';
  @override
  String get section_video_playback => 'Воспроизведение';
  @override
  String get section_video_subtitles => 'Субтитры';
  @override
  String get seed_color => 'Базовый цвет';
  @override
  String get seed_color_desc => 'Генерирует все цвета по умолчанию ниже';
  @override
  String get selection_color => 'Цвет выделения';
  @override
  String get selection_color_desc => 'Выделение текста в читалке';
  @override
  String get send => 'Отправить';
  @override
  String get series => 'Серия';
  @override
  String get series_created => 'Серия создана';
  @override
  String get series_default_name => 'Новая серия';
  @override
  String series_item_count({required Object n}) => '${n} элементов';
  @override
  String get series_name_hint => 'Название серии';
  @override
  String get server_address => 'Адрес сервера';
  @override
  String get settings => 'Настройки';
  @override
  String get settings_check_update_now => 'Проверить обновления';
  @override
  String get settings_destination_appearance => 'Внешний вид';
  @override
  String get settings_destination_card_creation => 'Создание карточек';
  @override
  String get settings_destination_diagnostics => 'Диагностика';
  @override
  String get settings_destination_interconnect => 'Fushi Interconnect';
  @override
  String get settings_destination_listening => 'Прослушивание';
  @override
  String get settings_destination_lookup => 'Поиск';
  @override
  String get settings_destination_profiles => 'Схемы конфигурации';
  @override
  String get settings_destination_reading => 'Чтение';
  @override
  String get settings_destination_reading_controls => 'Управление чтением';
  @override
  String get settings_destination_sync_backup =>
      'Синхронизация и резервное копирование';
  @override
  String get settings_destination_system => 'Система';
  @override
  String get settings_destination_system_summary =>
      'Общие, обновления и диагностика';
  @override
  String get settings_destination_tracking => 'Отслеживание медиа';
  @override
  String get settings_destination_video => 'Видео';
  @override
  String get settings_search_hint => 'Поиск настроек';
  @override
  String get settings_search_no_results => 'Настройки не найдены';
  @override
  String get settings_secret_hide => 'Скрыть значение';
  @override
  String get settings_secret_show => 'Показать значение';
  @override
  String get settings_section_app_shell => 'Приложение';
  @override
  String get settings_section_data_storage => 'Расположение хранилища данных';
  @override
  String get settings_section_gal_hook_overlay => 'Оверлей субтитров гальге';
  @override
  String get settings_section_general => 'Общие';
  @override
  String get settings_section_lookup_audio => 'Произношение и обратная связь';
  @override
  String get settings_section_lookup_content => 'Содержимое статьи';
  @override
  String get settings_section_lookup_integrations => 'Внешние интеграции';
  @override
  String get settings_section_lookup_popup_window => 'Всплывающее окно';
  @override
  String get settings_section_lookup_trigger => 'Триггер поиска';
  @override
  String get settings_section_page_turn_input =>
      'Перелистывание и взаимодействие';
  @override
  String get settings_section_reader_chrome => 'Интерфейс ридера';
  @override
  String get settings_section_update_channel => 'Канал обновлений';
  @override
  String get settings_view_changelog => 'Просмотр списка изменений';
  @override
  String get share => 'Поделиться';
  @override
  String get share_theme => 'Поделиться темой';
  @override
  String get shortcut_action_audiobook_next_sentence => 'Следующее предложение';
  @override
  String get shortcut_action_audiobook_play_pause => 'Воспроизведение / пауза';
  @override
  String get shortcut_action_audiobook_prev_sentence =>
      'Предыдущее предложение';
  @override
  String get shortcut_action_audiobook_seek_clicked =>
      'Перейти к выбранному предложению';
  @override
  String get shortcut_action_dpad_down => 'Крестовина вниз';
  @override
  String get shortcut_action_dpad_left => 'Крестовина влево';
  @override
  String get shortcut_action_dpad_right => 'Крестовина вправо';
  @override
  String get shortcut_action_dpad_up => 'Крестовина вверх';
  @override
  String get shortcut_action_global_back => 'Назад';
  @override
  String get shortcut_action_global_external_lookup =>
      'App-external lookup hotkey';
  @override
  String get shortcut_action_global_scroll_page_down =>
      'Прокрутить вниз на экран';
  @override
  String get shortcut_action_global_scroll_page_up =>
      'Прокрутить вверх на экран';
  @override
  String get shortcut_action_global_toggle_fullscreen =>
      'Переключить полноэкранный режим';
  @override
  String get shortcut_action_home_focus_search => 'Фокус на поиск';
  @override
  String get shortcut_action_home_tab_books => 'Вкладка «Книги»';
  @override
  String get shortcut_action_home_tab_dict => 'Вкладка «Словарь»';
  @override
  String get shortcut_action_home_tab_next => 'Следующая вкладка';
  @override
  String get shortcut_action_home_tab_prev => 'Предыдущая вкладка';
  @override
  String get shortcut_action_home_tab_settings => 'Вкладка «Настройки»';
  @override
  String get shortcut_action_popup_next_entry => 'Следующая словарная статья';
  @override
  String get shortcut_action_popup_prev_entry => 'Предыдущая словарная статья';
  @override
  String get shortcut_action_reader_create_card_from_popup =>
      'Создать карточку из окна';
  @override
  String get shortcut_action_reader_dismiss_dict => 'Закрыть словарь';
  @override
  String get shortcut_action_reader_enter_caret =>
      'Войти в режим курсора поиска';
  @override
  String get shortcut_action_reader_lookup_at_cursor =>
      'Поиск слова / активация курсора';
  @override
  String get shortcut_action_reader_open_menu => 'Open Settings Menu';
  @override
  String get shortcut_action_reader_open_navigation => 'Open Navigation';
  @override
  String get shortcut_action_reader_page_backward => 'Предыдущая страница';
  @override
  String get shortcut_action_reader_page_forward => 'Следующая страница';
  @override
  String get shortcut_action_reader_shift_lookup => 'Поиск со Shift';
  @override
  String get shortcut_action_reader_toggle_chrome =>
      'Показать/скрыть элементы управления';
  @override
  String get shortcut_action_reader_toggle_furigana => 'Фуригана вкл./выкл.';
  @override
  String get shortcut_action_video_align_subtitle_to_next =>
      'Совместить следующий субтитр с текущим моментом';
  @override
  String get shortcut_action_video_align_subtitle_to_prev =>
      'Совместить предыдущий субтитр с текущим моментом';
  @override
  String get shortcut_action_video_cycle_secondary_subtitle_obscure =>
      'Cycle Secondary Subtitle Obscure';
  @override
  String get shortcut_action_video_cycle_subtitle_obscure =>
      'Cycle Subtitle Obscure Mode';
  @override
  String get shortcut_action_video_next_chapter => 'Следующая глава';
  @override
  String get shortcut_action_video_next_frame => 'Следующий кадр';
  @override
  String get shortcut_action_video_next_subtitle => 'Следующий субтитр';
  @override
  String get shortcut_action_video_open_subtitle_align =>
      'Открыть выравнивание субтитров по волне';
  @override
  String get shortcut_action_video_pause => 'Пауза';
  @override
  String get shortcut_action_video_play => 'Воспроизвести';
  @override
  String get shortcut_action_video_previous_chapter => 'Предыдущая глава';
  @override
  String get shortcut_action_video_previous_frame => 'Предыдущий кадр';
  @override
  String get shortcut_action_video_previous_subtitle => 'Предыдущий субтитр';
  @override
  String get shortcut_action_video_replay_current_subtitle =>
      'Повторить текущий субтитр';
  @override
  String get shortcut_action_video_replay_previous_subtitle =>
      'Повторить предыдущий субтитр';
  @override
  String get shortcut_action_video_reset_speed => 'Сбросить скорость';
  @override
  String get shortcut_action_video_screenshot => 'Скриншот';
  @override
  String get shortcut_action_video_seek_backward => 'Перемотка назад';
  @override
  String get shortcut_action_video_seek_forward => 'Перемотка вперёд';
  @override
  String get shortcut_action_video_speed_down => 'Замедлить';
  @override
  String get shortcut_action_video_speed_up => 'Ускорить';
  @override
  String get shortcut_action_video_subtitle_delay_decrease =>
      'Задержка субтитров −';
  @override
  String get shortcut_action_video_subtitle_delay_increase =>
      'Задержка субтитров +';
  @override
  String get shortcut_action_video_toggle_favorite_sentence =>
      'В избранное текущее предложение';
  @override
  String get shortcut_action_video_toggle_fullscreen => 'Полноэкранный режим';
  @override
  String get shortcut_action_video_toggle_immersive_lock =>
      'Иммерсивная блокировка';
  @override
  String get shortcut_action_video_toggle_mute => 'Звук вкл./выкл.';
  @override
  String get shortcut_action_video_toggle_play_pause =>
      'Воспроизведение / Пауза';
  @override
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle Hide Secondary Subtitle';
  @override
  String get shortcut_action_video_toggle_shader_compare =>
      'Сравнение шейдеров';
  @override
  String get shortcut_action_video_toggle_subtitle_blur => 'Размытие субтитров';
  @override
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle Hide Subtitles';
  @override
  String get shortcut_action_video_toggle_subtitle_list => 'Список субтитров';
  @override
  String get shortcut_action_video_volume_down => 'Тише';
  @override
  String get shortcut_action_video_volume_up => 'Громче';
  @override
  String get shortcut_assign_pick_action => 'Назначить действие…';
  @override
  String get shortcut_clear => 'Очистить';
  @override
  String shortcut_conflict({required Object s}) => 'Уже используется: ${s}';
  @override
  String shortcut_conflict_replace_confirm({required Object s}) =>
      'Это сочетание уже используется для «${s}». Переназначить на это действие?';
  @override
  String get shortcut_gamepad => 'Геймпад';
  @override
  String get shortcut_gamepad_brand_label => 'Стиль кнопок геймпада';
  @override
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  @override
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  @override
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  @override
  String get shortcut_gamepad_pick_list => 'Выбрать из списка';
  @override
  String get shortcut_gamepad_unavailable_hint =>
      'Компонент GameInput не обнаружен — поддержка геймпада недоступна. Установите Windows Gaming Services для включения поддержки контроллера.';
  @override
  String get shortcut_keyboard => 'Клавиатура';
  @override
  String get shortcut_mouse_back => 'Кнопка назад';
  @override
  String get shortcut_mouse_button => 'Кнопка мыши';
  @override
  String get shortcut_mouse_forward => 'Кнопка вперёд';
  @override
  String get shortcut_mouse_left => 'Левый клик';
  @override
  String get shortcut_mouse_middle => 'Средний клик';
  @override
  String get shortcut_mouse_right => 'Правый клик';
  @override
  String get shortcut_press_gamepad => 'Нажмите кнопку геймпада...';
  @override
  String get shortcut_press_key => 'Нажмите комбинацию клавиш...';
  @override
  String get shortcut_press_mouse_button => 'Нажмите кнопку мыши...';
  @override
  String get shortcut_press_wheel =>
      'Удерживайте клавишу-модификатор и прокрутите здесь';
  @override
  String get shortcut_reset_confirm =>
      'Сбросить все сочетания в этом разделе к значениям по умолчанию?';
  @override
  String get shortcut_reset_defaults => 'Сбросить по умолчанию';
  @override
  String get shortcut_scope_audiobook => 'Аудиокнига';
  @override
  String get shortcut_scope_dictionary_popup => 'Словарный попап';
  @override
  String get shortcut_scope_dictionary_popup_note =>
      'Работает, когда курсор наведён на словарный попап';
  @override
  String get shortcut_scope_gamepad => 'Геймпад';
  @override
  String get shortcut_scope_global => 'Глобальные';
  @override
  String get shortcut_scope_global_external => 'Глобальные (вне приложения)';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this hotkey.';
  @override
  String get shortcut_scope_home => 'Главная';
  @override
  String get shortcut_scope_reader => 'Читалка';
  @override
  String get shortcut_scope_video => 'Видео';
  @override
  String get shortcut_settings_title => 'Сочетания клавиш';
  @override
  String get shortcut_stop_capture => 'Стоп';
  @override
  String get shortcut_tap_to_assign => 'Не задано · нажмите для назначения';
  @override
  String get shortcut_view_list => 'Список';
  @override
  String get shortcut_view_visual => 'Раскладка контроллера';
  @override
  String get shortcut_wheel => 'Колёсико мыши';
  @override
  String get shortcut_wheel_down => 'Колёсико вниз';
  @override
  String get shortcut_wheel_needs_modifier =>
      'Без модификатора колёсико прокручивает попап — удерживайте Alt / Ctrl / Shift при прокрутке';
  @override
  String get shortcut_wheel_up => 'Колёсико вверх';
  @override
  String get show_bottom_bar_cue => 'Показать текущее предложение';
  @override
  String get show_expression_tags => 'Показать теги выражений';
  @override
  String get show_floating_lyric => 'Плавающие субтитры';
  @override
  String get show_media_notification => 'Показать уведомление о медиа';
  @override
  String get show_options => 'Показать параметры';
  @override
  String get show_top_progress_bar => 'Индикатор прогресса чтения';
  @override
  String get skip_action => 'Действие пропуска';
  @override
  String skip_action_seconds({required Object n}) => '${n} сек.';
  @override
  String get skip_action_sentence => '1 предложение';
  @override
  String get sort_by => 'Сортировка';
  @override
  String get sort_imported => 'Дата импорта';
  @override
  String get sort_recent_read => 'Недавно прочитанные';
  @override
  String get sort_recent_watched => 'Недавно просмотренные';
  @override
  String get sort_title => 'Название';
  @override
  String get source_description_epub => 'Чтение EPUB и поиск в словаре';
  @override
  String get source_name_bookshelf => 'Книжная полка';
  @override
  String get spread_auto => 'Авто';
  @override
  String get spread_direction => 'Направление разворота';
  @override
  String get spread_direction_ltr => 'Слева направо';
  @override
  String get spread_direction_rtl => 'Справа налево';
  @override
  String get spread_mode => 'Режим разворота';
  @override
  String get spread_off => 'Выкл';
  @override
  String get spread_on => 'Вкл';
  @override
  String get srt_audio_unresolved => 'Аудиофайл не найден — привяжите заново';
  @override
  String get srt_books_section => 'Аудиокниги с субтитрами';
  @override
  String srt_delete_confirm({required Object title}) =>
      'Удалить『${title}』? Это действие нельзя отменить.';
  @override
  String get srt_delete_title => 'Удалить книгу с субтитрами';
  @override
  String get srt_epub_not_ready => 'Книга не готова — импортируйте заново';
  @override
  String get srt_import => 'Импортировать книгу';
  @override
  String get srt_import_audio_needs_subtitle =>
      'Аудио необходимо сочетать с субтитрами. Чтобы добавить аудио к существующему EPUB, нажмите и удерживайте книгу на полке.';
  @override
  String get srt_import_author_hint => 'Автор (необязательно)';
  @override
  String get srt_import_error => 'Ошибка импорта';
  @override
  String srt_import_files_selected({required Object n}) =>
      'Выбрано файлов: ${n}';
  @override
  String get srt_import_hint_epub_or_srt =>
      'Выберите файл EPUB или субтитров для импорта.';
  @override
  String get srt_import_missing_input =>
      'Выберите хотя бы EPUB или файл субтитров';
  @override
  String get srt_import_missing_title => 'Введите название книги';
  @override
  String get srt_import_pick_audio_dir => 'Выбрать папку с аудио';
  @override
  String get srt_import_pick_audio_files => 'Выбрать аудиофайлы';
  @override
  String get srt_import_pick_cover => 'Выбрать обложку';
  @override
  String get srt_import_pick_epub => 'Выбрать EPUB';
  @override
  String get srt_import_pick_subtitle_files => 'Выбрать файлы субтитров';
  @override
  String get srt_import_success => 'Книга импортирована';
  @override
  String get srt_import_title_hint => 'Название книги';
  @override
  String get startup_default_dictionary_tab => 'Открывать поиск при запуске';
  @override
  String get startup_default_dictionary_tab_hint =>
      'Открывать главный экран на вкладке поиска вместо текущего значения по умолчанию.';
  @override
  String get stash => 'Закладки';
  @override
  String get stash_added_multiple =>
      'Несколько элементов добавлены в закладки.';
  @override
  String stash_added_single({required Object term}) =>
      '『${term}』добавлен в закладки.';
  @override
  String get stash_clear_description =>
      'Все содержимое будет удалено. Вы уверены?';
  @override
  String stash_clear_single({required Object term}) =>
      '『${term}』удалён из закладок.';
  @override
  String get stash_clear_title => 'Очистить закладки';
  @override
  String get stash_nothing_to_pop =>
      'Нет элементов для извлечения из закладок.';
  @override
  String get stash_placeholder => 'Закладки пусты';
  @override
  String get stat_all_time => 'За всё время';
  @override
  String get stat_bookshelf_compare => 'Книжная полка';
  @override
  String get stat_clear_all => 'Очистить статистику';
  @override
  String get stat_clear_all_confirm => 'Очистить';
  @override
  String get stat_clear_all_reading_message =>
      'Очистить всё время чтения, счётчики символов и поиска/карточек? Сохранённые слова, предложения и созданные карточки останутся. Это действие нельзя отменить.';
  @override
  String get stat_clear_all_title => 'Очистить всю статистику';
  @override
  String get stat_clear_all_video_message =>
      'Очистить всё время просмотра, счётчики символов субтитров и поиска/карточек? Сохранённые слова, предложения и созданные карточки останутся. Это действие нельзя отменить.';
  @override
  String get stat_daily_average => 'В среднем/день';
  @override
  String get stat_delete_message =>
      'Удалить время, счётчик символов и статистику поиска/карточек для этого элемента? Сохранённые слова и предложения не затронуты.';
  @override
  String get stat_delete_title => 'Удалить статистику';
  @override
  String get stat_fastest_day => 'Fastest Day';
  @override
  String get stat_favorited => 'В избранном';
  @override
  String get stat_favorited_sentence => 'Избранные предложения';
  @override
  String stat_format_chars({required Object n}) => '${n} символов';
  @override
  String stat_format_chars_wan({required Object n}) => '${n}万 символов';
  @override
  String stat_format_days({required Object n}) => '${n} дн.';
  @override
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h} ч ${m} мин.';
  @override
  String stat_format_minutes({required Object n}) => '${n} мин.';
  @override
  String get stat_goal => 'Daily Goal';
  @override
  String get stat_goal_daily => 'Daily Goal';
  @override
  String get stat_goal_presets => 'Предустановки';
  @override
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} символов';
  @override
  String get stat_goal_reached => 'Цель достигнута';
  @override
  String stat_goal_recent_average({required Object n}) =>
      'Последние 7 дней: ${n} символов/день в среднем';
  @override
  String get stat_goal_set => 'Set Goal';
  @override
  String get stat_goal_unit_chars => 'символов';
  @override
  String get stat_goal_weekly => 'Weekly Goal';
  @override
  String get stat_last_30_days => 'Последние 30 дней';
  @override
  String get stat_lookup => 'Поиски';
  @override
  String get stat_metric_chars => 'Символы';
  @override
  String get stat_metric_speed => 'Скорость';
  @override
  String get stat_metric_time => 'Время';
  @override
  String get stat_mined => 'Создано карточек';
  @override
  String get stat_no_data => 'Данных о чтении пока нет';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => 'Активные дни (7д)';
  @override
  String get stat_refresh => 'Обновить';
  @override
  String get stat_slowest_day => 'Slowest Day';
  @override
  String get stat_sort_by_chars => 'По знакам';
  @override
  String get stat_sort_by_speed => 'По скорости';
  @override
  String get stat_sort_by_time => 'По времени';
  @override
  String get stat_speed_anomaly => 'Аномалия';
  @override
  String get stat_speed_avg => 'Скользящее среднее';
  @override
  String stat_speed_cph({required Object n}) => '${n} знаков/ч';
  @override
  String get stat_speed_summary => 'Speed Summary';
  @override
  String get stat_streak => 'Серия дней';
  @override
  String get stat_this_month => 'Этот месяц';
  @override
  String get stat_this_week => 'Эта неделя';
  @override
  String get stat_today => 'Сегодня';
  @override
  String get stat_today_hourly => 'Сегодня по часам';
  @override
  String get stat_trend_daily => 'По дням';
  @override
  String get stat_trend_monthly => 'По месяцам';
  @override
  String get stat_trend_weekly => 'По неделям';
  @override
  String get stat_typical_day => 'Typical Day';
  @override
  String get stat_vs_prev => 'к пред. 14д';
  @override
  String get stat_weighted_avg_speed => 'Weighted Avg';
  @override
  String get stop => 'Стоп';
  @override
  String get storage_permissions =>
      'Предоставьте следующие разрешения для экспорта в AnkiDroid.';
  @override
  String get stream => 'Поток';
  @override
  String get swipe_page_turn_sensitivity =>
      'Чувствительность перелистывания свайпом';
  @override
  String get sync_account => 'Аккаунт';
  @override
  String get sync_audiobook => 'Синхронизировать позицию аудиокниги';
  @override
  String get sync_audiobook_files => 'Синхронизировать файлы аудиокниг';
  @override
  String get sync_audiobook_files_warning =>
      'Аудио и субтитры могут быть большими.';
  @override
  String sync_auth_error({required Object message}) =>
      'Ошибка аутентификации: ${message}';
  @override
  String get sync_auto_sync => 'Автосинхронизация';
  @override
  String get sync_backend => 'Хранилище';
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
  String get sync_checking_account => 'Проверка аккаунта…';
  @override
  String get sync_client_connected => 'Подключено';
  @override
  String get sync_client_token => 'Токен доступа устройства';
  @override
  String get sync_client_token_manual => 'Ввести токен вручную';
  @override
  String get sync_compare => 'Сравнить данные';
  @override
  String get sync_compare_all_books => 'Все книги';
  @override
  String get sync_compare_all_local => 'Все → Локально';
  @override
  String get sync_compare_all_remote => 'Все → Удалённо';
  @override
  String get sync_compare_all_skip => 'Все → Пропустить';
  @override
  String sync_compare_applied({required Object count}) =>
      'Применено изменений: ${count}';
  @override
  String sync_compare_apply({required Object count}) =>
      'Синхронизировать сейчас (${count})';
  @override
  String get sync_compare_close => 'Закрыть';
  @override
  String get sync_compare_conflicts => 'Конфликты';
  @override
  String get sync_compare_days => 'дн.';
  @override
  String get sync_compare_delete_audiobook => 'Удалить аудиокнигу на удалённом';
  @override
  String get sync_compare_delete_book => 'Удалить книгу на удалённом';
  @override
  String sync_compare_delete_confirm({required Object name}) =>
      'Удалить «${name}» с удалённого? Локальные данные сохранятся. Это нельзя отменить.';
  @override
  String get sync_compare_delete_dict => 'Удалить словарь на удалённом';
  @override
  String get sync_compare_deleted => 'Удалено с удалённого';
  @override
  String get sync_compare_dictionaries => 'Словари';
  @override
  String get sync_compare_download => 'Скачать';
  @override
  String get sync_compare_empty => 'Книги не найдены';
  @override
  String get sync_compare_local => 'Локально';
  @override
  String get sync_compare_no_content =>
      'Только облачные данные — книги для загрузки нет';
  @override
  String get sync_compare_no_data => 'Нет данных';
  @override
  String get sync_compare_remote => 'Удалённо';
  @override
  String get sync_compare_select_all => 'Выбрать все';
  @override
  String get sync_compare_skip => 'Пропустить';
  @override
  String get sync_compare_title => 'Локально и удалённо';
  @override
  String get sync_compare_unavailable => 'Set up sync first';
  @override
  String get sync_compare_use_local => 'Локально';
  @override
  String get sync_compare_use_remote => 'Удалённо';
  @override
  String get sync_connection_failed => 'Ошибка соединения';
  @override
  String get sync_connection_success => 'Соединение установлено';
  @override
  String get sync_content => 'Синхронизировать файлы книг';
  @override
  String get sync_content_warning =>
      'Большие файлы займут место в хранилище и трафик';
  @override
  String get sync_err_auth_expired => 'Сессия истекла — войдите снова.';
  @override
  String get sync_err_invalid_client =>
      'Учётные данные клиента недействительны для этой сборки — обновите приложение.';
  @override
  String get sync_err_network =>
      'Не удаётся подключиться к серверу — проверьте сеть или настройки прокси.';
  @override
  String get sync_err_not_configured =>
      'Учётные данные синхронизации Google не настроены в этой сборке.';
  @override
  String get sync_err_quota =>
      'Облачное хранилище заполнено (достигнут лимит).';
  @override
  String get sync_err_scope_upgrade =>
      'Права синхронизации изменились — войдите в Google повторно для продолжения синхронизации.';
  @override
  String get sync_err_timeout =>
      'Истекло время ожидания — сервер не ответил вовремя.';
  @override
  String sync_error({required Object message}) =>
      'Ошибка синхронизации: ${message}';
  @override
  String get sync_exit_warning =>
      'Синхронизация ещё не завершена. Выход сейчас может привести к потере данных.';
  @override
  String get sync_exit_warning_title => 'Идёт синхронизация';
  @override
  String get sync_host => 'Хост';
  @override
  String get sync_lan_discovery => 'Устройства в сети';
  @override
  String get sync_lan_no_devices => 'Устройства не найдены';
  @override
  String get sync_lan_scan_failed =>
      'Сканирование не удалось — проверьте разрешения сети или брандмауэр.';
  @override
  String get sync_not_signed_in => 'Не авторизован';
  @override
  String get sync_now => 'Синхронизировать сейчас';
  @override
  String sync_now_audio_in({required Object count}) => '↓${count} аудиокниг';
  @override
  String sync_now_audio_out({required Object count}) => '↑${count} аудиокниг';
  @override
  String sync_now_books_in({required Object count}) => '↓${count} книг';
  @override
  String get sync_now_busy => 'Синхронизация уже выполняется';
  @override
  String sync_now_dicts_in({required Object count}) => '↓${count} словарей';
  @override
  String sync_now_dicts_out({required Object count}) => '↑${count} словарей';
  @override
  String sync_now_done({required Object detail}) =>
      'Синхронизировано · ${detail}';
  @override
  String sync_now_failed_suffix({required Object count}) =>
      ' · ошибок: ${count}';
  @override
  String get sync_now_hint =>
      'Запустить полную двустороннюю синхронизацию с облаком сейчас';
  @override
  String sync_now_local_audio_in({required Object count}) =>
      '↓${count} аудиоисточников';
  @override
  String sync_now_local_audio_out({required Object count}) =>
      '↑${count} аудиоисточников';
  @override
  String get sync_now_no_changes => 'без изменений';
  @override
  String get sync_pair_allow => 'Разрешить';
  @override
  String sync_pair_confirm_identity_body({required Object device}) =>
      'Вы сопрягаетесь с ${device}. Убедитесь, что это ожидаемое устройство, прежде чем продолжить.';
  @override
  String get sync_pair_confirm_identity_title => 'Подтвердите устройство';
  @override
  String get sync_pair_continue => 'Продолжить';
  @override
  String get sync_pair_denied => 'Другое устройство отклонило сопряжение';
  @override
  String get sync_pair_deny => 'Отклонить';
  @override
  String get sync_pair_enter_pin_body =>
      'Введите 6-значный PIN, показанный на другом устройстве.';
  @override
  String get sync_pair_enter_pin_title => 'Введите PIN';
  @override
  String get sync_pair_failed => 'Сопряжение не удалось';
  @override
  String get sync_pair_fingerprint_changed =>
      'Сертификат изменился — сопряжение прервано в целях безопасности (возможен перехват).';
  @override
  String get sync_pair_fingerprint_label => 'Отпечаток сертификата';
  @override
  String get sync_pair_not_fushi =>
      'Устройство Fushi не найдено по этому адресу. Адрес сохранён.';
  @override
  String get sync_pair_pairing => 'Сопряжение…';
  @override
  String get sync_pair_pin_label => 'Введите этот PIN на другом устройстве';
  @override
  String get sync_pair_pin_waiting =>
      'Ожидание ввода PIN на другом устройстве…';
  @override
  String get sync_pair_pin_wrong => 'Неверный PIN — попробуйте снова';
  @override
  String get sync_pair_repair => 'Сопрячь заново';
  @override
  String get sync_pair_request_body =>
      'Устройство запрашивает сопряжение. Разрешить синхронизацию с этим устройством?';
  @override
  String get sync_pair_request_title => 'Запрос на сопряжение';
  @override
  String get sync_pair_success => 'Сопряжено — токен заполнен';
  @override
  String get sync_pair_unavailable =>
      'Другое устройство не готово или на нём старая версия. Обновите его, включите синхронизацию и попробуйте снова.';
  @override
  String get sync_pair_unknown_device => 'Неизвестное устройство';
  @override
  String get sync_paired_peer_remove => 'Удалить';
  @override
  String get sync_paired_peer_removed => 'Сопряжённое устройство удалено';
  @override
  String get sync_paired_peer_unknown => 'Неизвестное устройство';
  @override
  String get sync_paired_peers_empty => 'Сопряжённых устройств пока нет';
  @override
  String get sync_paired_peers_title => 'Сопряжённые устройства';
  @override
  String get sync_password => 'Пароль';
  @override
  String get sync_port => 'Порт';
  @override
  String get sync_private_key => 'Закрытый ключ';
  @override
  String get sync_progress_audiobooks => 'Синхронизация аудиокниг';
  @override
  String get sync_progress_books => 'Импорт книг';
  @override
  String get sync_progress_dictionaries => 'Синхронизация словарей';
  @override
  String get sync_progress_local_audio => 'Синхронизация локального аудио';
  @override
  String get sync_progress_reading => 'Синхронизация данных чтения';
  @override
  String get sync_progress_videos => 'Синхронизация видео';
  @override
  String get sync_role_locked_by_client =>
      'Уже подключено к другому устройству. Удалите подключение перед запуском сервера.';
  @override
  String get sync_role_locked_by_server =>
      'Это устройство работает как сервер. Отключите сервер перед подключением к другим устройствам.';
  @override
  String get sync_section_actions => 'Действия синхронизации';
  @override
  String get sync_section_backup => 'Локальная резервная копия';
  @override
  String get sync_section_content => 'Что синхронизировать';
  @override
  String get sync_section_host_server =>
      'Это устройство как сервер синхронизации';
  @override
  String get sync_section_host_server_footer =>
      'Позволяет другим устройствам синхронизироваться с этого устройства. Не зависит от хранилища выше.';
  @override
  String get sync_section_method => 'Способ синхронизации';
  @override
  String get sync_server_copy_token => 'Копировать токен';
  @override
  String get sync_server_enable => 'Включить сервер синхронизации';
  @override
  String get sync_server_mode_active => 'Это устройство — сервер синхронизации';
  @override
  String get sync_server_mode_clients_drive =>
      'Синхронизацию запускают подключённые клиенты — вручную здесь не нужно.';
  @override
  String get sync_server_port => 'Порт сервера';
  @override
  String sync_server_port_in_use({required Object port}) =>
      'Порт ${port} уже занят — выберите другой порт.';
  @override
  String get sync_server_regenerate_token => 'Создать токен заново';
  @override
  String get sync_server_running => 'Сервер работает';
  @override
  String get sync_server_stopped => 'Сервер остановлен';
  @override
  String get sync_server_tls_enable => 'Шифрование Interconnect (HTTPS/TLS)';
  @override
  String get sync_server_tls_repair_hint =>
      'Изменение этой настройки потребует повторного сопряжения устройств';
  @override
  String get sync_server_token => 'Токен доступа';
  @override
  String get sync_show_remote_entries => 'Показывать удалённые записи';
  @override
  String get sync_show_remote_entries_warning =>
      'Показывать книги и видео с сопряжённых устройств или облака в виде карточек-заглушек, которые можно скачать или транслировать.';
  @override
  String get sync_sign_in => 'Войти';
  @override
  String get sync_sign_out => 'Выйти';
  @override
  String get sync_signed_in => 'Авторизован';
  @override
  String get sync_statistics => 'Синхронизировать статистику';
  @override
  String get sync_summary => 'Облако, Fushi Interconnect и локальная копия';
  @override
  String get sync_test_connection => 'Проверить соединение';
  @override
  String get sync_use_tls => 'Использовать TLS';
  @override
  String get sync_username => 'Имя пользователя';
  @override
  String get sync_video_files => 'Загрузка видеофайлов';
  @override
  String get sync_video_files_warning =>
      'Видеофайлы могут быть очень большими.';
  @override
  String get sync_webdav_missing_fields => 'Не заполнены поля';
  @override
  String sync_webdav_test_failed({required Object message}) =>
      'Ошибка соединения: ${message}';
  @override
  String get sync_webdav_url => 'URL сервера';
  @override
  String tag_added_to_book({required Object name}) =>
      'Тег "${name}" добавлен к книге.';
  @override
  String tag_added_to_collection({required Object name}) =>
      'Тег ${name} добавлен в коллекцию.';
  @override
  String tag_added_to_video({required Object name}) =>
      'Тег «${name}» добавлен к видео.';
  @override
  String tag_already_on_book({required Object name}) =>
      'Тег "${name}" уже есть у этой книги.';
  @override
  String tag_already_on_collection({required Object name}) =>
      'Тег ${name} уже в этой коллекции.';
  @override
  String tag_book_count({required Object count}) => '${count} книг(а)';
  @override
  String get tag_clear_filter => 'Сбросить фильтр';
  @override
  String get tag_color => 'Цвет';
  @override
  String tag_delete_confirm({required Object name}) => 'Удалить тег "${name}"?';
  @override
  String get tag_filter_title => 'Фильтр по тегу';
  @override
  String get tag_label => 'Теги';
  @override
  String get tag_manage => 'Управление тегами';
  @override
  String get tag_manage_title => 'Управление тегами';
  @override
  String get tag_name_duplicate => 'Тег с таким именем уже существует.';
  @override
  String get tag_name_empty => 'Название тега не может быть пустым.';
  @override
  String get tag_name_hint => 'Название тега';
  @override
  String get tag_new => 'Новый тег';
  @override
  String get tag_no_books_for_filter =>
      'Нет книг, соответствующих выбранным тегам.';
  @override
  String get tag_no_tags_hint =>
      'Тегов пока нет. Создайте первый, чтобы начать.';
  @override
  String get tag_seed_stars => 'Добавить теги звёздного рейтинга';
  @override
  String get tag_seed_stars_added => 'Теги звёздного рейтинга добавлены';
  @override
  String get tag_seed_stars_exists => 'Теги звёздного рейтинга уже существуют';
  @override
  String get tap_empty_hide_chrome => 'Плавающая панель управления';
  @override
  String get text_segmentation => 'Сегментация текста';
  @override
  String get texthooker => 'Текстхукер';
  @override
  String get texthooker_enabled => 'Texthooker (приём текста)';
  @override
  String get texthooker_enabled_hint =>
      'Подключиться к Textractor/mpv/агенту и искать поступающий текст';
  @override
  String get theme_black => 'Чёрная';
  @override
  String get theme_code_copied => 'Код темы скопирован в буфер обмена';
  @override
  String get theme_dark => 'Глубокая тёмная';
  @override
  String get theme_ecru => 'Экрю';
  @override
  String get theme_eyecare => 'Eye Care';
  @override
  String get theme_gray => 'Тёмно-серая';
  @override
  String get theme_light => 'Белая';
  @override
  String get theme_seed_preview_hint =>
      'Образцы ниже показывают цвета, фактически сгенерированные из вашего исходного цвета. Чтобы закрепить определённый цвет как основной акцент, включите переключатель «Основной» и выберите его явно.';
  @override
  String get theme_water => 'Голубая';
  @override
  String toc_section({required Object n}) => 'Оглавление (${n})';
  @override
  String get top_progress_pos_center => 'По центру';
  @override
  String get top_progress_pos_left => 'Вверху слева';
  @override
  String get top_progress_pos_right => 'Вверху справа';
  @override
  String get top_progress_position => 'Позиция индикатора прогресса';
  @override
  String get torrent_upload_intro_body =>
      'Раздача (сидирование) отключена по умолчанию. Включите, чтобы раздавать загруженный контент — это использует исходящий трафик. Можно изменить в любое время в настройках.';
  @override
  String get torrent_upload_intro_confirm => 'Сохранить';
  @override
  String get torrent_upload_intro_enable => 'Включить раздачу / сидирование';
  @override
  String get torrent_upload_intro_keep_off => 'Оставить выключенным';
  @override
  String get torrent_upload_intro_title => 'Раздача / сидирование';
  @override
  String get reader_blur_images => 'Размытие изображений (защита от спойлеров)';
  @override
  String get reader_font_size => 'Размер шрифта';
  @override
  String get reader_font_vpal => 'VPAL (верт. альт.)';
  @override
  String get reader_furigana_hide => 'Скрыть';
  @override
  String get reader_furigana_mode => 'Фуригана';
  @override
  String get reader_furigana_mode_hint => '';
  @override
  String get reader_furigana_partial => 'Частично';
  @override
  String get reader_furigana_show => 'Показать';
  @override
  String get reader_furigana_toggle => 'Переключить';
  @override
  String get reader_horizontal => 'Горизонтальное';
  @override
  String get reader_line_height => 'Высота строки';
  @override
  String get reader_merge_image_pages =>
      'Объединять страницы-иллюстрации с текстом';
  @override
  String get reader_merge_image_pages_subtitle =>
      'Отдельные главы с одним изображением отображаются внутри соседней текстовой главы, а не на отдельной странице';
  @override
  String get reader_no_books_added => 'В библиотеке нет книг';
  @override
  String get reader_not_bound_cannot_rematch =>
      'Аудиокнига не привязана к книге, пересопоставление невозможно';
  @override
  String get reader_orient_mixed => 'Смешанная';
  @override
  String get reader_orient_upright => 'Прямая';
  @override
  String get reader_page_columns_auto => 'Авто';
  @override
  String get reader_paginated => 'Постраничный';
  @override
  String get reader_paragraph_spacing => 'Интервал между абзацами';
  @override
  String get reader_reader_styles => 'Приоритет стилей книги';
  @override
  String get reader_scroll => 'Прокрутка';
  @override
  String get reader_text_indentation => 'Отступ абзаца';
  @override
  String get reader_text_justify => 'Выравнивание текста';
  @override
  String get reader_theme => 'Тема';
  @override
  String get reader_vert_kerning => 'Кернинг (вертикальный)';
  @override
  String get reader_vert_text_orient => 'Ориентация текста';
  @override
  String get reader_vertical => 'Вертикальное';
  @override
  String get reader_view_mode_label => 'Страницы / Прокрутка';
  @override
  String get reader_vn => 'Visual Novel';
  @override
  String get reader_writing_direction => 'Направление письма';
  @override
  String get undo => 'Отменить';
  @override
  String get unit_milliseconds => 'мс';
  @override
  String get unit_pixels => 'пкс';
  @override
  String untitled_book({required Object id}) => 'Книга ${id}';
  @override
  String get untitled_chapter => '(Без названия)';
  @override
  String get update_already_latest => 'У вас установлена последняя версия';
  @override
  String get update_auto_install => 'Автоустановка обновлений';
  @override
  String get update_available => 'Доступно обновление';
  @override
  String update_cached_newer({required Object version}) =>
      'Доступно обновление ${version} (проверка…)';
  @override
  String update_cached_up_to_date({required Object version}) =>
      'Установлена последняя известная версия ${version} (проверка…)';
  @override
  String get update_cancel => 'Отмена';
  @override
  String get update_cancelled => 'Загрузка отменена';
  @override
  String get update_cancelling => 'Отмена…';
  @override
  String get update_channel_beta => 'Бета';
  @override
  String get update_channel_debug => 'Отладка';
  @override
  String get update_channel_stable => 'Стабильная';
  @override
  String get update_check_failed => 'Не удалось проверить обновления';
  @override
  String get update_checking_now => 'Проверка обновлений…';
  @override
  String get update_connecting => 'Подключение…';
  @override
  String get update_custom_proxy_auto_hint =>
      'Leave blank to use environment variables, then the enabled system proxy.';
  @override
  String get update_custom_proxy_hint =>
      'хост:порт, например 127.0.0.1:7890 (только IPv4/хост)';
  @override
  String get update_custom_proxy_invalid =>
      'Недопустимый прокси. Используйте хост:порт';
  @override
  String get update_custom_proxy_label => 'Custom update proxy';
  @override
  String get update_debug_channel => 'Канал отладочных обновлений';
  @override
  String get update_debug_channel_warning =>
      'Сборки отладочного канала могут быть нестабильными. Используйте на свой риск.';
  @override
  String get update_download => 'Скачать';
  @override
  String get update_download_failed => 'Ошибка загрузки';
  @override
  String get update_download_restarted_from_zero => 'начата заново';
  @override
  String update_download_resume_status({required Object status}) =>
      'Докачка: ${status}';
  @override
  String get update_download_resumed => 'продолжена';
  @override
  String update_download_size({
    required Object received,
    required Object total,
  }) => 'Загружено: ${received} / ${total}';
  @override
  String update_download_source({required Object source}) =>
      'Источник: ${source}';
  @override
  String update_download_speed({required Object speed}) => 'Скорость: ${speed}';
  @override
  String get update_downloading => 'Загрузка обновления…';
  @override
  String get update_hide => 'Скрыть';
  @override
  String update_install_current_executable({required Object path}) =>
      'Запущенный исполняемый файл: ${path}';
  @override
  String update_install_deletefile_failure({
    required Object path,
    required Object code,
  }) => 'Установщику не удалось заменить ${path} (код ${code})';
  @override
  String update_install_detected_location({
    required Object source,
    required Object path,
  }) => 'Обнаружено расположение установки (${source}): ${path}';
  @override
  String update_install_failure_summary({required Object summary}) =>
      'Причина: ${summary}';
  @override
  String get update_install_incomplete_message =>
      'Установщик запустился, но Fushi по-прежнему предыдущей версии. Проверьте журнал установщика ниже.';
  @override
  String get update_install_incomplete_title => 'Обновление не завершено';
  @override
  String update_install_installer_pid({required Object pid}) =>
      'PID установщика: ${pid}';
  @override
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi не удалось запустить установщик версии ${version}. Проверьте путь к журналу ниже.';
  @override
  String get update_install_launch_failed_title =>
      'Установщик обновления не запустился';
  @override
  String update_install_launcher_pid({required Object pid}) =>
      'PID программы запуска обновления: ${pid}';
  @override
  String update_install_libmpv_holder({
    required Object pid,
    required Object path,
  }) => 'Процесс, удерживающий libmpv: PID ${pid} - ${path}';
  @override
  String get update_install_log_not_observed =>
      'Журнал установщика не был создан при проверке после запуска.';
  @override
  String get update_install_log_observed =>
      'Журнал установщика создан при проверке после запуска.';
  @override
  String update_install_log_path({required Object path}) =>
      'Журнал установщика: ${path}';
  @override
  String get update_install_manual_close_retry =>
      'Закройте Fushi по указанному PID/пути, затем повторите обновление или снова запустите установщик.';
  @override
  String get update_install_parent_exit_not_observed =>
      'Программа запуска обновления не подтвердила завершение Fushi до старта установщика.';
  @override
  String get update_install_parent_exit_observed =>
      'Fushi завершился до запуска установщика.';
  @override
  String update_install_path_mismatch({required Object warning}) =>
      'Несоответствие папки установки: ${warning}';
  @override
  String get update_install_permission_cancel => 'Отмена';
  @override
  String get update_install_permission_message =>
      'Разрешите Fushi устанавливать приложения в системных настройках, затем повторите попытку.';
  @override
  String get update_install_permission_retry => 'Повторить установку';
  @override
  String get update_install_permission_title =>
      'Разрешить установку обновлений';
  @override
  String get update_install_restart_windows_hint =>
      'Если перечисленные процессы закрыты, но libmpv-2.dll всё ещё заблокирован, перезагрузите Windows и установите снова.';
  @override
  String update_install_running_process({
    required Object pid,
    required Object path,
  }) => 'Запущенный процесс Fushi: PID ${pid} - ${path}';
  @override
  String update_install_success_message({required Object version}) =>
      'Fushi обновлён до версии ${version}.';
  @override
  String get update_install_success_title => 'Обновление установлено';
  @override
  String update_install_target_dir({required Object path}) =>
      'Папка установки: ${path}';
  @override
  String get update_installing => 'Установка…';
  @override
  String get update_mac_install_incomplete_message =>
      'Обновление не удалось применить, Fushi остаётся на предыдущей версии. Вы можете повторить обновление или скачать последний выпуск вручную.';
  @override
  String update_message({required Object version}) =>
      'Доступна версия ${version}.';
  @override
  String update_network_failure({
    required Object host,
    required Object reason,
  }) => 'Не удалось подключиться к ${host}: ${reason}';
  @override
  String get update_never_remind => 'Больше не напоминать';
  @override
  String get update_skip => 'Пропустить';
  @override
  String get url => 'URL';
  @override
  String get video_audio_track => 'Аудиодорожка';
  @override
  String get video_audio_track_empty => 'Нет переключаемых аудиодорожек';
  @override
  String video_audio_track_switched({required Object label}) =>
      'Аудиодорожка: ${label}';
  @override
  String get video_auto_play_next_cancel => 'Отмена';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      'Следующая серия через ${seconds} с';
  @override
  String get video_black_flash_notice_action => 'Посмотреть рекомендации';
  @override
  String get video_black_flash_notice_dont_show_again => 'Больше не показывать';
  @override
  String get video_bottom_next_cue =>
      'Следующий субтитр (если нет — немного вперёд)';
  @override
  String get video_bottom_play_pause => 'Воспроизведение / Пауза';
  @override
  String get video_bottom_prev_cue =>
      'Предыдущий субтитр (если нет — немного назад)';
  @override
  String get video_bottom_seek_back => 'Назад на 10 с';
  @override
  String get video_bottom_seek_back_label => '−10с';
  @override
  String get video_bottom_seek_forward => 'Вперёд на 10 с';
  @override
  String get video_bottom_seek_forward_label => '+10с';
  @override
  String video_chapter_n({required Object n}) => 'Глава ${n}';
  @override
  String get video_chapters => 'Главы';
  @override
  String get video_chapters_empty => 'Нет глав';
  @override
  String get video_clip_export => 'Экспорт фрагмента';
  @override
  String get video_clip_export_cancelled => 'Экспорт клипа отменён';
  @override
  String video_clip_export_failed({required Object reason}) =>
      'Не удалось экспортировать фрагмент: ${reason}';
  @override
  String get video_clip_export_ffmpeg_failed => 'Сбой ffmpeg';
  @override
  String get video_clip_export_ffmpeg_unavailable => 'ffmpeg недоступен';
  @override
  String get video_clip_export_input_missing => 'Исходное видео недоступно';
  @override
  String get video_clip_export_invalid_range =>
      'Нет допустимого диапазона фрагмента';
  @override
  String get video_clip_export_output_missing => 'Выходной файл не создан';
  @override
  String get video_clip_export_remote_download_required =>
      'Сначала загрузите удалённое видео на это устройство, затем экспортируйте фрагмент';
  @override
  String get video_clip_export_source_changed =>
      'Источник видео изменён; экспорт фрагмента отменён';
  @override
  String get video_clip_export_start => 'Начать экспорт фрагмента';
  @override
  String get video_clip_export_stop => 'Остановить и экспортировать фрагмент';
  @override
  String video_clip_exported({required Object path}) =>
      'Фрагмент экспортирован: ${path}';
  @override
  String video_clip_exported_with_subtitles({required Object path}) =>
      'Клип экспортирован с субтитрами: ${path}';
  @override
  String get video_clip_exporting => 'Экспорт фрагмента…';
  @override
  String get video_continue_watching => 'Continue Watching';
  @override
  String get video_control_audio_track => 'Аудиодорожка';
  @override
  String get video_control_customize_hint =>
      'Выберите место каждой кнопки на плеере или уберите её.';
  @override
  String get video_control_episode_list => 'Список серий';
  @override
  String get video_control_favorite_sentence =>
      'В избранное текущее предложение';
  @override
  String get video_control_fullscreen => 'Полный экран';
  @override
  String get video_control_next_cue => 'Следующий субтитр';
  @override
  String get video_control_palette_hint =>
      'Перетащите кнопку в ячейку, чтобы добавить; кнопку можно поместить в несколько ячеек.';
  @override
  String get video_control_palette_title => 'Все кнопки';
  @override
  String get video_control_play_pause => 'Воспроизведение/Пауза';
  @override
  String get video_control_previous_cue => 'Предыдущий субтитр';
  @override
  String get video_control_reject_required =>
      'Обязательные элементы управления должны оставаться на плеере.';
  @override
  String get video_control_reject_unavailable =>
      'Этот элемент управления нельзя поместить сюда.';
  @override
  String get video_control_reject_volume_bottom =>
      'Громкость можно разместить только на нижней панели.';
  @override
  String get video_control_remove_from_slot => 'Убрать';
  @override
  String get video_control_reset_layout =>
      'Сбросить расположение кнопок плеера';
  @override
  String get video_control_screenshot => 'Скриншот';
  @override
  String get video_control_seek_backward => 'Назад 10 с';
  @override
  String get video_control_seek_forward => 'Вперёд 10 с';
  @override
  String get video_control_settings => 'Настройки плеера';
  @override
  String get video_control_slot_bottom_center => 'Нижняя панель (центр)';
  @override
  String get video_control_slot_bottom_left => 'Нижняя панель (слева)';
  @override
  String get video_control_slot_bottom_right => 'Нижняя панель (справа)';
  @override
  String get video_control_slot_drop_hint => 'Перетащите кнопку сюда';
  @override
  String get video_control_slot_hidden => 'Убрано с плеера';
  @override
  String get video_control_slot_screen_left => 'Слева на экране';
  @override
  String get video_control_slot_screen_right => 'Справа на экране';
  @override
  String get video_control_slot_top_center => 'Верхняя панель (центр)';
  @override
  String get video_control_slot_top_left => 'Верхняя панель (слева)';
  @override
  String get video_control_slot_top_right => 'Верхняя панель (справа)';
  @override
  String get video_control_speed => 'Скорость';
  @override
  String get video_control_subtitle_list => 'Список субтитров';
  @override
  String get video_control_subtitle_track => 'Дорожка субтитров';
  @override
  String get video_control_title => 'Название видео';
  @override
  String get video_control_volume => 'Громкость';
  @override
  String get video_danmaku_manual_bind_empty =>
      'Данмаку для этого эпизода пока нет.';
  @override
  String get video_danmaku_manual_bind_failed =>
      'Не удалось загрузить данмаку для этого эпизода. Попробуйте позже.';
  @override
  String get video_danmaku_manual_bind_server_error =>
      'Сервер данмаку отклонил запрос. Попробуйте позже.';
  @override
  String get video_danmaku_manual_match_title => 'Сопоставить данмаку';
  @override
  String get video_danmaku_manual_network_error =>
      'Ошибка сети. Проверьте подключение и повторите попытку.';
  @override
  String get video_danmaku_manual_no_result => 'Подходящее аниме не найдено.';
  @override
  String get video_danmaku_manual_search_action => 'Поиск';
  @override
  String get video_danmaku_manual_search_hint => 'Название аниме';
  @override
  String get video_danmaku_manual_search_prompt =>
      'Поиск по Dandanplay по названию аниме, затем выберите эпизод.';
  @override
  String get video_danmaku_manual_server_error =>
      'Ошибка поиска. Попробуйте позже.';
  @override
  String video_delete_confirm({required Object title}) =>
      'Удалить «${title}»? Это действие необратимо.';
  @override
  String get video_delete_title => 'Удалить видео';
  @override
  String get video_double_tap_next_cue => 'Следующая строка';
  @override
  String get video_double_tap_prev_cue => 'Предыдущая строка';
  @override
  String get video_drop_audio_unsupported =>
      'Перетащите файлы субтитров на текущее видео. Аудиофайлы здесь подключить нельзя.';
  @override
  String get video_drop_subtitle_only =>
      'Перетащите файлы субтитров на текущее видео.';
  @override
  String get video_episode_list => 'Серии';
  @override
  String get video_episode_list_empty => 'Нет серий';
  @override
  String video_favorite_count({required Object count}) =>
      'В избранном: ${count}';
  @override
  String get video_file_error_content =>
      'Не удалось загрузить видеофайл. Убедитесь, что файл существует и находится в каталоге, доступном приложению.';
  @override
  String get video_file_not_found => 'Видеофайл не найден';
  @override
  String get video_immersive_locked => 'Иммерсивный режим включён';
  @override
  String get video_immersive_mode_full => 'Все элементы управления';
  @override
  String get video_immersive_mode_lookup_only => 'Только поиск слов';
  @override
  String get video_immersive_mode_seek_lookup => 'Горячая клавиша + поиск слов';
  @override
  String get video_immersive_mode_unlock_only => 'Только разблокировка';
  @override
  String get video_immersive_unlock => 'Разблокировать';
  @override
  String get video_immersive_unlocked => 'Иммерсивный режим выключен';
  @override
  String get video_import_action => 'Импортировать видео';
  @override
  String get video_import_confirm => 'Импортировать';
  @override
  String get video_import_pick_subtitle => 'Выбрать субтитры';
  @override
  String get video_import_pick_video => 'Выбрать видеофайл';
  @override
  String get video_import_stream_advanced =>
      'Дополнительно (заголовки антилича)';
  @override
  String get video_import_stream_referer => 'Referer (необязательно)';
  @override
  String get video_import_stream_subtitle_url_field =>
      'URL внешних субтитров (необязательно)';
  @override
  String get video_import_stream_url_field => 'URL видеопотока';
  @override
  String get video_import_stream_url_hint =>
      'Воспроизвести HLS/m3u8/mp4 поток по URL (с необязательным URL внешних субтитров и антилич-заголовками Referer/User-Agent)';
  @override
  String get video_import_stream_user_agent => 'User-Agent (необязательно)';
  @override
  String get video_import_subtitle_optional =>
      'Дополнительные внешние субтитры (во время воспроизведения можно в любой момент переключаться между встроенными и внешними субтитрами)';
  @override
  String get video_import_title => 'Импорт видео';
  @override
  String get video_jimaku_anime_match => 'Совпадение аниме';
  @override
  String get video_jimaku_api_key => 'API-ключ Jimaku';
  @override
  String get video_jimaku_api_key_hint =>
      'Получите бесплатный API key на jimaku.cc/account';
  @override
  String get video_jimaku_api_key_set => 'API key задан';
  @override
  String video_jimaku_batch_done({
    required Object done,
    required Object total,
  }) => 'Субтитры получены: ${done}/${total}';
  @override
  String get video_jimaku_batch_download => 'Скачать все';
  @override
  String get video_jimaku_batch_title => 'Получить субтитры для коллекции';
  @override
  String get video_jimaku_download_failed => 'Ошибка загрузки';
  @override
  String get video_jimaku_downloaded => 'Субтитры загружены и применены';
  @override
  String get video_jimaku_episode => 'Эпизод (необязательно)';
  @override
  String get video_jimaku_episode_hint =>
      'Оставьте пустым для отображения всех';
  @override
  String get video_jimaku_fetch => 'Загрузить субтитры (Jimaku)';
  @override
  String get video_jimaku_filter => 'Фильтр результатов (например, WEBRip, BD)';
  @override
  String get video_jimaku_find_sources => 'Найти субтитры';
  @override
  String get video_jimaku_language => 'Язык';
  @override
  String get video_jimaku_language_all => 'Все';
  @override
  String get video_jimaku_no_key => 'Сначала введите ваш API key для Jimaku';
  @override
  String get video_jimaku_no_results => 'Субтитры не найдены';
  @override
  String get video_jimaku_query => 'Название сериала';
  @override
  String get video_jimaku_search => 'Поиск';
  @override
  String get video_jimaku_series => 'Серия';
  @override
  String get video_jimaku_show_all_episodes => 'Показать все эпизоды';
  @override
  String get video_jimaku_source => 'Источник субтитров';
  @override
  String get video_jimaku_source_hint =>
      'Выберите одну запись Jimaku. Пакеты сезонов сопоставляются по эпизодам автоматически.';
  @override
  String video_last_watched({required Object date}) =>
      'Последний просмотр ${date}';
  @override
  String get video_library_empty => 'Видео ещё не импортированы';
  @override
  String get video_load_failed_back => 'Назад';
  @override
  String get video_load_failed_generic => 'Не удалось загрузить это видео.';
  @override
  String get video_load_failed_network =>
      'Ошибка сети — проверьте подключение и повторите попытку.';
  @override
  String get video_load_failed_not_found =>
      'Этот элемент не найден в вашей библиотеке.';
  @override
  String get video_load_failed_retry => 'Повторить';
  @override
  String get video_load_failed_timeout =>
      'Время подключения истекло — сеть медленная или источник ограничивает скорость. Попробуйте ещё раз.';
  @override
  String get video_load_failed_title => 'Не удалось загрузить видео';
  @override
  String get video_load_failed_unavailable =>
      'Не удалось получить видеопоток — возможно, он недоступен, ограничен по региону или возрасту, или источник изменился.';
  @override
  String get video_loading_buffering => 'Буферизация…';
  @override
  String get video_loading_connecting => 'Подключение к потоку…';
  @override
  String get video_loading_preparing => 'Подготовка…';
  @override
  String get video_loading_subtitle => 'Загрузка субтитров…';
  @override
  String get video_menu_fullscreen => 'Полноэкранный режим';
  @override
  String get video_menu_lock => 'Иммерсивный режим / блокировка';
  @override
  String get video_menu_play_pause => 'Воспроизведение / Пауза';
  @override
  String get video_menu_subtitle_track => 'Дорожка субтитров';
  @override
  String get video_mining_image_mode => 'Изображение видеокарточки';
  @override
  String get video_mining_image_mode_current_frame =>
      'Скриншот в момент создания';
  @override
  String get video_mining_image_mode_gif => 'Анимированный GIF (клип субтитра)';
  @override
  String get video_mining_image_mode_hint =>
      'Обложка видеокарточки — анимация клипа субтитра или один кадр, и какой именно';
  @override
  String get video_mining_image_mode_subtitle_start =>
      'Скриншот в начале субтитра';
  @override
  String get video_next_episode => 'Следующая серия';
  @override
  String video_playlist_episodes({required Object count}) => 'серий: ${count}';
  @override
  String get video_prev_episode => 'Предыдущая серия';
  @override
  String get video_quality => 'Качество';
  @override
  String get video_quality_auto => 'Авто';
  @override
  String get video_quality_empty =>
      'Нет переключаемого качества для этого видео';
  @override
  String get video_quality_enhancement_hint =>
      'Включите, чтобы сделать картинку резче с помощью встроенного в mpv высококачественного масштабирования. Подходит как для аниме, так и для фильмов и сериалов. Для большего эффекта с шейдерами вроде Anime4K откройте «Улучшение изображения» во время воспроизведения и выберите уровень.';
  @override
  String get video_quality_load_failed =>
      'Не удалось загрузить варианты качества для этого видео.';
  @override
  String get video_quality_loading => 'Загрузка доступных вариантов качества…';
  @override
  String video_quality_switched({required Object label}) =>
      'Качество: ${label}';
  @override
  String get video_rename => 'Переименовать';
  @override
  String get video_rename_hint => 'Название';
  @override
  String get video_render_skia_fix_confirm_action => 'Перезапустить';
  @override
  String get video_render_skia_fix_confirm_body =>
      'Это отключает рендерер Impeller и перезапускает приложение для применения.';
  @override
  String get video_render_skia_fix_confirm_title =>
      'Переключить на Skia и перезапустить?';
  @override
  String get video_render_skia_fix_hint =>
      'Используйте, если звук воспроизводится, но видео остаётся чёрным. Отключает Impeller; требуется перезапуск.';
  @override
  String get video_render_skia_fix_title =>
      'Экран чёрный? Сменить рендерер (Skia)';
  @override
  String video_resource_missing_message({required Object title}) =>
      'Файл для «${title}» не найден. Его расположение могло измениться или диск не подключён. Вы можете повторно импортировать его или удалить эту запись.';
  @override
  String get video_resource_missing_reimport => 'Импортировать заново';
  @override
  String get video_resource_missing_title => 'Видео недоступно';
  @override
  String get video_resource_relink_success => 'Видео привязано заново';
  @override
  String get video_scrape_episodes => 'Эпизоды';
  @override
  String get video_scrape_info => 'Информация о сериале';
  @override
  String video_scrape_rating_votes({required Object count}) =>
      '${count} оценок';
  @override
  String get video_screenshot => 'Скриншот';
  @override
  String video_screenshot_failed_reason({required Object reason}) =>
      'Не удалось сделать скриншот: ${reason}';
  @override
  String video_screenshot_ready({required Object file}) =>
      'Скриншот готов: ${file}';
  @override
  String video_screenshot_saved_to({required Object path}) =>
      'Скриншот сохранён: ${path}';
  @override
  String get video_secondary_subtitle_hint =>
      'Отображается плеером (недоступны для поиска слов)';
  @override
  String get video_secondary_subtitle_sources => 'Вторичные субтитры';
  @override
  String get video_setting_auto_play_next =>
      'Автовоспроизведение следующей серии';
  @override
  String get video_setting_auto_scrape =>
      'Автоматически загружать информацию о сериале';
  @override
  String get video_setting_av_delay => 'Синхронизация субтитров';
  @override
  String get video_setting_av_delay_hint =>
      'Положительное значение = субтитры позже (сдвиг назад); отрицательное = субтитры раньше. Используйте ползунок, кнопки +/- или введите значение.';
  @override
  String get video_setting_danmaku_area => 'Область отображения';
  @override
  String get video_setting_danmaku_area_hint =>
      'Доля высоты экрана, которую могут занимать данмаку, начиная сверху.';
  @override
  String get video_setting_danmaku_block_rules =>
      'Блокировка слов / регулярные выражения';
  @override
  String get video_setting_danmaku_block_rules_hint =>
      'По одному правилу на строку. Оберните строку в слэши /шаблон/ для регулярного выражения; иначе поиск идёт как текст без учёта регистра.';
  @override
  String get video_setting_danmaku_block_rules_placeholder =>
      'напр. спойлер или /шаблон/';
  @override
  String get video_setting_danmaku_enabled => 'Показывать данмаку';
  @override
  String get video_setting_danmaku_enabled_hint =>
      'Отображать локальные или подобранные данмаку поверх видео, не перекрывая элементы управления.';
  @override
  String get video_setting_danmaku_font_scale => 'Размер шрифта';
  @override
  String get video_setting_danmaku_font_scale_hint => 'Масштаб текста данмаку.';
  @override
  String get video_setting_danmaku_manual_match => 'Ручное сопоставление';
  @override
  String get video_setting_danmaku_manual_match_hint =>
      'Поиск на Dandanplay по названию и выбор эпизода, когда автоматическое сопоставление не удалось или неверно.';
  @override
  String get video_setting_danmaku_max_active => 'Лимит активных данмаку';
  @override
  String get video_setting_danmaku_max_active_hint =>
      'Ограничивает число комментариев на кадр, чтобы большие файлы оставались отзывчивыми.';
  @override
  String get video_setting_danmaku_online => 'Онлайн-подбор Dandanplay';
  @override
  String get video_setting_danmaku_online_hint =>
      'Если нет подходящего локального sidecar-файла, подобрать открытое видео через Dandanplay и загрузить связанные комментарии.';
  @override
  String get video_setting_danmaku_opacity => 'Прозрачность';
  @override
  String get video_setting_danmaku_opacity_hint =>
      'Общая прозрачность данмаку.';
  @override
  String get video_setting_danmaku_server_url => 'Адрес сервера данмаку';
  @override
  String get video_setting_danmaku_speed => 'Скорость';
  @override
  String get video_setting_danmaku_speed_hint =>
      'Чем выше, тем быстрее; бегущие данмаку пересекают экран быстрее.';
  @override
  String get video_setting_double_tap => 'Перемотка двойным касанием';
  @override
  String get video_setting_double_tap_hint =>
      'Двойное касание слева или справа от видео для перемотки';
  @override
  String get video_setting_double_tap_off => 'Выкл.';
  @override
  String get video_setting_double_tap_subtitle => 'Субтитры';
  @override
  String get video_setting_immersive_mode => 'Иммерсивный режим';
  @override
  String get video_setting_immersive_mode_hint =>
      'Определяет, что остаётся доступным после нажатия боковой кнопки блокировки';
  @override
  String get video_setting_lock_window_aspect =>
      'Окно по соотношению сторон видео';
  @override
  String get video_setting_long_press_speed => 'Скорость при удержании';
  @override
  String get video_setting_long_press_speed_hint =>
      'Временно использовать эту скорость, пока удерживаете видео.';
  @override
  String get video_setting_mpv_aspect => 'Соотношение сторон';
  @override
  String get video_setting_mpv_aspect_auto => 'Оригинал';
  @override
  String get video_setting_mpv_brightness => 'Яркость';
  @override
  String get video_setting_mpv_channels => 'Каналы';
  @override
  String get video_setting_mpv_channels_auto => 'Авто';
  @override
  String get video_setting_mpv_channels_mono => 'Моно';
  @override
  String get video_setting_mpv_channels_stereo => 'Стерео (сведение)';
  @override
  String get video_setting_mpv_contrast => 'Контраст';
  @override
  String get video_setting_mpv_correct_downscale => 'Линейное уменьшение';
  @override
  String get video_setting_mpv_deband => 'Подавление полос';
  @override
  String get video_setting_mpv_deinterlace => 'Деинтерлейсинг';
  @override
  String get video_setting_mpv_dither => 'Дизеринг';
  @override
  String get video_setting_mpv_gamma => 'Гамма';
  @override
  String get video_setting_mpv_group_advanced => 'Дополнительно';
  @override
  String get video_setting_mpv_group_audio => 'Аудио';
  @override
  String get video_setting_mpv_group_color => 'Цвет';
  @override
  String get video_setting_mpv_group_decode => 'Декодирование';
  @override
  String get video_setting_mpv_group_geometry => 'Геометрия';
  @override
  String get video_setting_mpv_group_playback => 'Воспроизведение';
  @override
  String get video_setting_mpv_group_quality => 'Качество изображения';
  @override
  String get video_setting_mpv_hue => 'Оттенок';
  @override
  String get video_setting_mpv_hwdec => 'Аппаратное декодирование';
  @override
  String get video_setting_mpv_hwdec_auto => 'Авто (безопасно)';
  @override
  String get video_setting_mpv_hwdec_copy => 'Авто (копирование)';
  @override
  String get video_setting_mpv_hwdec_off => 'Выкл.';
  @override
  String get video_setting_mpv_interpolation => 'Интерполяция движения';
  @override
  String get video_setting_mpv_loop => 'Повтор файла';
  @override
  String get video_setting_mpv_normalize => 'Нормализовать громкость сведения';
  @override
  String get video_setting_mpv_panscan => 'Pan & scan (обрезка краёв)';
  @override
  String get video_setting_mpv_pitch => 'Сохранять высоту тона при ускорении';
  @override
  String get video_setting_mpv_raw =>
      'Доп. параметры mpv (по одному в строке, key=value)';
  @override
  String get video_setting_mpv_raw_hint =>
      'Только для ПК; параметры, которые нельзя применить во время работы (например, vo, profile), игнорируются. SVP/RIFE требуют внешних инструментов и не поддерживаются.';
  @override
  String get video_setting_mpv_reset => 'Сбросить всё';
  @override
  String get video_setting_mpv_rotate => 'Поворот';
  @override
  String get video_setting_mpv_saturation => 'Насыщенность';
  @override
  String get video_setting_mpv_sigmoid => 'Сигмоидное увеличение';
  @override
  String get video_setting_mpv_sigmoid_hint =>
      'Сигмоидное масштабирование уменьшает артефакты, но нагружает GPU. Отключено по умолчанию; включите, если хотите более чёткое масштабирование.';
  @override
  String get video_setting_mpv_zoom => 'Масштаб';
  @override
  String get video_setting_picture_fit => 'Масштабирование картинки';
  @override
  String get video_setting_picture_fit_contain => 'Вписать с чёрными полосами';
  @override
  String get video_setting_picture_fit_cover => 'Заполнить с обрезкой';
  @override
  String get video_setting_picture_fit_fill => 'Растянуть на весь экран';
  @override
  String get video_setting_picture_fit_hint =>
      'Как картинка заполняет область плеера';
  @override
  String get video_setting_qb_category => 'Категория qBittorrent';
  @override
  String get video_setting_qb_category_hint =>
      'Загрузки из Fushi получают эту категорию; отслеживание завершения наблюдает только за ней.';
  @override
  String get video_setting_qb_password => 'Пароль WebUI';
  @override
  String get video_setting_qb_url => 'URL WebUI qBittorrent';
  @override
  String get video_setting_qb_url_hint =>
      'напр. http://127.0.0.1:8080. Оставьте пустым, чтобы отключить загрузку аниме.';
  @override
  String get video_setting_qb_username => 'Имя пользователя WebUI';
  @override
  String get video_setting_secondary_subtitle_obscure =>
      'Скрыть вторичные субтитры';
  @override
  String get video_setting_secondary_subtitle_obscure_hint =>
      'Размыть или скрыть вторичные (переводные) субтитры';
  @override
  String get video_setting_seek_seconds => 'Шаг перемотки (с)';
  @override
  String get video_setting_speed => 'Скорость воспроизведения';
  @override
  String get video_setting_speed_step => 'Шаг скорости';
  @override
  String get video_setting_subtitle_appearance => 'Вид субтитров';
  @override
  String get video_setting_subtitle_bg_color => 'Цвет фона';
  @override
  String get video_setting_subtitle_bg_opacity => 'Непрозрачность фона';
  @override
  String get video_setting_subtitle_font_size => 'Размер шрифта';
  @override
  String get video_setting_subtitle_font_weight => 'Насыщенность шрифта';
  @override
  String get video_setting_subtitle_no_background => 'Без фона';
  @override
  String get video_setting_subtitle_no_background_hint =>
      'Сделать фон субтитров прозрачным.';
  @override
  String get video_setting_subtitle_obscure => 'Скрыть субтитры';
  @override
  String get video_setting_subtitle_obscure_blur => 'Размытие';
  @override
  String get video_setting_subtitle_obscure_hide => 'Скрыть';
  @override
  String get video_setting_subtitle_obscure_hint =>
      'Выберите, как скрывать субтитры для практики аудирования: выкл., размытие (наведите или коснитесь для показа) или полностью скрыть.';
  @override
  String get video_setting_subtitle_obscure_none => 'Выкл.';
  @override
  String get video_setting_subtitle_position => 'Положение по вертикали';
  @override
  String get video_setting_subtitle_reset => 'Сбросить по умолчанию';
  @override
  String get video_setting_subtitle_respect_ass =>
      'Использовать стиль субтитров';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      'Использовать шрифт, цвет и обводку, заложенные в .ass-субтитрах, если доступны; отключите, чтобы принудительно применить ваши настройки оформления.';
  @override
  String get video_setting_subtitle_shadow => 'Тень';
  @override
  String get video_setting_subtitle_sync_input => 'Смещение (мс)';
  @override
  String get video_setting_subtitle_text_color => 'Цвет текста';
  @override
  String get video_setting_theme => 'Тема';
  @override
  String get video_setting_torrent_active_downloads =>
      'Макс. активных загрузок';
  @override
  String get video_setting_torrent_active_seeds => 'Макс. активных раздач';
  @override
  String get video_setting_torrent_anonymous => 'Анонимный режим';
  @override
  String get video_setting_torrent_antileech => 'Включить анти-лич';
  @override
  String get video_setting_torrent_backend_qb => 'Внешний qBittorrent';
  @override
  String get video_setting_torrent_ban_progress_cheat =>
      'Блокировка за подделку прогресса';
  @override
  String get video_setting_torrent_ban_relative_cheat =>
      'Блокировка за относительную подделку прогресса';
  @override
  String get video_setting_torrent_ban_time => 'Длительность блокировки (мин)';
  @override
  String get video_setting_torrent_ban_time_hint => '0 = навсегда';
  @override
  String get video_setting_torrent_connections_hint => '0 = по умолчанию';
  @override
  String get video_setting_torrent_dht => 'DHT';
  @override
  String get video_setting_torrent_download_limit => 'Лимит загрузки (КБ/с)';
  @override
  String get video_setting_torrent_encryption_disabled => 'Отключено';
  @override
  String get video_setting_torrent_encryption_forced => 'Принудительно';
  @override
  String get video_setting_torrent_encryption_prefer => 'Предпочтительно';
  @override
  String get video_setting_torrent_limit_hint => '0 = без ограничений';
  @override
  String get video_setting_torrent_listen_port => 'Порт прослушивания';
  @override
  String get video_setting_torrent_listen_port_hint =>
      '0 = по умолчанию (6881)';
  @override
  String get video_setting_torrent_lsd => 'Обнаружение локальных пиров (LSD)';
  @override
  String get video_setting_torrent_max_connections => 'Макс. подключений';
  @override
  String get video_setting_torrent_max_ip_ports => 'Макс. портов на IP';
  @override
  String get video_setting_torrent_memory_hint =>
      'Ограничение памяти движка. 0 = авто (по объёму ОЗУ устройства).';
  @override
  String get video_setting_torrent_memory_limit => 'Лимит памяти (МБ)';
  @override
  String get video_setting_torrent_natpmp => 'Проброс портов NAT-PMP';
  @override
  String get video_setting_torrent_section_antileech => 'Анти-лич';
  @override
  String get video_setting_torrent_section_session => 'Сессия';
  @override
  String get video_setting_torrent_seed_ratio_hint =>
      'Прекратить раздачу, когда соотношение отдано/загружено достигнет этого значения. 0 = без ограничений.';
  @override
  String get video_setting_torrent_seed_ratio_limit => 'Лимит рейтинга раздачи';
  @override
  String get video_setting_torrent_seed_time_hint =>
      'Прекратить раздачу по истечении этого времени. 0 = без ограничений.';
  @override
  String get video_setting_torrent_seed_time_limit =>
      'Лимит времени раздачи (минуты)';
  @override
  String get video_setting_torrent_upload_enabled =>
      'Включить отдачу / раздачу';
  @override
  String get video_setting_torrent_upload_enabled_hint =>
      'Отключено по умолчанию. Раздавать обратно в сеть после загрузки.';
  @override
  String get video_setting_torrent_upload_limit => 'Лимит отдачи (КБ/с)';
  @override
  String get video_setting_torrent_upload_slots => 'Макс. слотов отдачи';
  @override
  String get video_setting_torrent_upnp => 'Проброс портов UPnP';
  @override
  String get video_setting_torrent_zero_default => '0 = по умолчанию';
  @override
  String get video_setting_torrent_zero_off => '0 = выкл.';
  @override
  String get video_settings_cat_audio => 'Аудио';
  @override
  String get video_settings_cat_controls => 'Элементы управления';
  @override
  String get video_settings_cat_danmaku => 'Данмаку';
  @override
  String get video_settings_cat_mpv => 'mpv';
  @override
  String get video_settings_cat_playback => 'Воспроизведение';
  @override
  String get video_settings_cat_shaders => 'Улучшение изображения';
  @override
  String get video_settings_cat_subtitle => 'Субтитры';
  @override
  String get video_settings_title => 'Настройки видео';
  @override
  String get video_shader_anime4k_hint =>
      'Выберите пресет для загрузки. После загрузки отметьте его в списке для включения. Только для ПК.';
  @override
  String get video_shader_anime4k_title => 'Рекомендуемые шейдеры Anime4K';
  @override
  String get video_shader_download_anime4k => 'Загрузить пресеты Anime4K';
  @override
  String video_shader_download_done({required Object count}) =>
      'Загружено шейдеров: ${count}';
  @override
  String get video_shader_download_failed => 'Не удалось загрузить шейдеры';
  @override
  String video_shader_download_partial({
    required Object ok,
    required Object failed,
  }) => 'Загружено: ${ok}, не удалось: ${failed}';
  @override
  String get video_shader_download_url => 'Загрузить по ссылке';
  @override
  String get video_shader_downloaded_label => 'Загружено';
  @override
  String get video_shader_downloading => 'Загрузка шейдеров…';
  @override
  String get video_shader_first_use_body =>
      '想让动画画面更清晰，可以进入“画质增强”并点击“下载 Anime4K 推荐着色器”。下载后在已安装列表里勾选即可启用。';
  @override
  String get video_shader_first_use_download => 'Загрузить и включить';
  @override
  String get video_shader_first_use_title => '试试 Anime4K 画质增强';
  @override
  String get video_shader_import => 'Импорт шейдера (.glsl)';
  @override
  String video_shader_import_done({required Object count}) =>
      'Импортировано шейдеров: ${count}';
  @override
  String get video_shader_import_from_mpv => 'Импорт из локального mpv';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自动搜索本机 mpv；未找到时可手动选择 mpv 目录。';
  @override
  String get video_shader_mobile_perf_hint =>
      'На телефонах шейдеры применяются только на стандартном пути GPU-рендеринга, и эффективность зависит от GPU устройства; высокие уровни могут вызывать пропуск кадров или нагрев. Сначала попробуйте «Низкое»/«Среднее» и проверьте результат на своём устройстве.';
  @override
  String video_shader_mpv_dir_current({required Object path}) =>
      'Папка mpv: ${path}';
  @override
  String get video_shader_mpv_dir_empty => 'В этой папке шейдеры не найдены';
  @override
  String get video_shader_mpv_not_found => 'Локальные шейдеры mpv не найдены';
  @override
  String get video_shader_mpv_pick_title => 'Импорт шейдеров из mpv';
  @override
  String get video_shader_pick_mpv_dir => 'Specify mpv folder';
  @override
  String get video_shader_preset_mode_a_fast =>
      'Для большинства аниме 1080p. Низкая нагрузка на GPU.';
  @override
  String get video_shader_preset_mode_a_hq =>
      'Высшее качество для аниме 1080p. Нужен мощный GPU.';
  @override
  String get video_shader_preset_mode_b_fast =>
      'Для старых аниме 720p с артефактами ресемплинга.';
  @override
  String get video_shader_preset_mode_b_hq =>
      'Высокое качество для старых аниме 720p с артефактами ресемплинга. Нужен мощный GPU.';
  @override
  String get video_shader_preset_mode_c_fast =>
      'Для старых SD-аниме (480p) с замыливанием от сжатия.';
  @override
  String get video_shader_preset_mode_c_hq =>
      'Высокое качество для старых SD-аниме (480p) с замыливанием от сжатия. Нужен мощный GPU.';
  @override
  String get video_shader_quality_tier => 'Улучшение качества';
  @override
  String get video_shader_section_advanced =>
      'Дополнительно (ручной выбор шейдеров)';
  @override
  String get video_shader_section_installed => 'Установленные шейдеры';
  @override
  String get video_shader_showing_original => 'Шейдеры выкл. (оригинал)';
  @override
  String get video_shader_showing_shaded => 'Шейдеры вкл.';
  @override
  String get video_shader_tier_custom_hint =>
      'Произвольный набор шейдеров. Выберите уровень выше, чтобы переключиться на пресет.';
  @override
  String get video_shader_tier_high => 'Высокое';
  @override
  String get video_shader_tier_high_hint =>
      'Anime4K HQ. Резче; лучше всего для анимации, также пригоден для реальной съёмки (меньший эффект). Нужен GPU выше среднего (NVIDIA RTX 4060 / RTX 3070, AMD RX 6700 XT / RX 7700 XT).';
  @override
  String get video_shader_tier_low => 'Низкое';
  @override
  String get video_shader_tier_low_hint =>
      'Встроенное повышение резкости mpv (ewa_lanczossharp). Работает с любым видео (анимация и реальная съёмка). Без загрузки, минимальная нагрузка на GPU. Выбирайте на встроенной графике или старых картах (NVIDIA GTX 1050, AMD RX 560, Intel iGPU).';
  @override
  String get video_shader_tier_medium => 'Среднее';
  @override
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast. Лучше всего для анимации, но работает и с фильмами/сериалами (меньший эффект). Подходит для GPU среднего класса (NVIDIA GTX 1660 / RTX 3050, AMD RX 6600).';
  @override
  String get video_shader_tier_off => 'Нет';
  @override
  String get video_shader_tier_off_hint =>
      'Без улучшения. Видео воспроизводится в оригинале.';
  @override
  String get video_shader_tier_ultra => 'Максимальное';
  @override
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A (UL, сверхбольшая сеть). Самая мощная реконструкция Anime4K; также пригоден для реальной съёмки (меньший эффект). Нужен флагманский GPU (NVIDIA RTX 4080 / RTX 5090, AMD RX 7900 XTX). Если GPU слабее, выберите уровень ниже.';
  @override
  String get video_shader_url_hint =>
      'Вставьте ссылку на шейдер .glsl (например, GitHub)';
  @override
  String get video_shaders_empty => 'Шейдеры ещё не импортированы';
  @override
  String get video_stat_by_video => 'По видео';
  @override
  String get video_stat_completed => 'Завершено';
  @override
  String get video_stat_no_data => 'Пока нет статистики по видео';
  @override
  String get video_statistics => 'Статистика видео';
  @override
  String get video_subtitle_attach_playlist_hint =>
      'Откройте плейлист, чтобы подключить субтитры к каждой серии';
  @override
  String video_subtitle_attached_to_video({
    required Object title,
    required Object count,
  }) => 'Субтитры подключены к «${title}» (строк: ${count})';
  @override
  String get video_subtitle_auto_align => 'Авто-выравнивание субтитров';
  @override
  String video_subtitle_auto_align_done({required Object ms}) =>
      'Субтитры авто-выровнены на ${ms} мс';
  @override
  String get video_subtitle_auto_align_low_confidence =>
      'Не удалось уверенно авто-выровнять (нет чёткого совпадения голоса)';
  @override
  String get video_subtitle_auto_align_running =>
      'Авто-выравнивание субтитров…';
  @override
  String get video_subtitle_color_note =>
      'Цвета субтитров задаются внутри видеоплеера.';
  @override
  String video_subtitle_delay_osd({required Object ms}) =>
      'Синхронизация субтитров: ${ms} мс';
  @override
  String get video_subtitle_filter_all => 'Все';
  @override
  String get video_subtitle_filter_favorites => 'Избранные';
  @override
  String get video_subtitle_filter_favorites_empty => 'Избранных строк ещё нет';
  @override
  String get video_subtitle_graphic_hint =>
      'Графические субтитры · показ на видео · без поиска слов';
  @override
  String video_subtitle_graphic_shown({required Object label}) =>
      'Графические субтитры показаны на видео (без поиска слов): ${label}';
  @override
  String get video_subtitle_import_failed =>
      'Не удалось импортировать субтитры';
  @override
  String get video_subtitle_import_file => 'Импорт файла субтитров…';
  @override
  String get video_subtitle_import_unsupported =>
      'Неподдерживаемый формат субтитров';
  @override
  String get video_subtitle_list => 'Список субтитров';
  @override
  String get video_subtitle_list_auto_scroll => 'Автопрокрутка';
  @override
  String get video_subtitle_list_empty => 'Субтитры не загружены';
  @override
  String get video_subtitle_list_font_larger => 'Крупнее текст';
  @override
  String get video_subtitle_list_font_smaller => 'Мельче текст';
  @override
  String get video_subtitle_list_jump => 'Перейти к этой строке';
  @override
  String get video_subtitle_list_loading => 'Загрузка субтитров...';
  @override
  String video_subtitle_load_failed({required Object label}) =>
      'Не удалось загрузить эти субтитры (графическая или неподдерживаемая дорожка): ${label}';
  @override
  String get video_subtitle_off => 'Выключить субтитры';
  @override
  String get video_subtitle_remote_host => 'Субтитры сопряжённого устройства';
  @override
  String video_subtitle_switched({required Object label}) =>
      'Субтитры: ${label}';
  @override
  String get video_subtitle_waveform_cue_list => 'Список субтитров';
  @override
  String get video_subtitle_waveform_jump_playhead =>
      'Перейти к позиции воспроизведения';
  @override
  String get video_subtitle_waveform_legend_cue => 'Метка субтитров';
  @override
  String get video_subtitle_waveform_legend_energy => 'Громкость';
  @override
  String get video_subtitle_waveform_legend_playhead =>
      'Позиция воспроизведения';
  @override
  String get video_subtitle_waveform_open => 'Выравнивание по волновой форме';
  @override
  String get video_subtitle_waveform_open_hint =>
      'Нажмите, чтобы приблизить и выровнять';
  @override
  String get video_subtitle_waveform_scroll_hint =>
      'Проведите для перемещения по таймлайну; используйте элементы управления ниже для выравнивания';
  @override
  String get video_subtitle_waveform_unavailable =>
      'Волновая форма недоступна на этом устройстве';
  @override
  String get video_subtitle_waveform_zoom_in => 'Приблизить';
  @override
  String get video_subtitle_waveform_zoom_out => 'Отдалить';
  @override
  String get video_subtitle_youtube_empty =>
      'В этой дорожке субтитров нет текста';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang} (перевод)';
  @override
  String video_watched_up_to({required Object time}) =>
      'Просмотрено до ${time}';
  @override
  String get video_windows_black_flash_notice_body =>
      'В Windows видео может мерцать чёрным при высокой нагрузке на GPU. Чтобы уменьшить нагрузку, попробуйте отключить «Улучшение качества», «Сигмоидное масштабирование» и «Удаление полос» выше, или переключите аппаратное декодирование на «Копирование».';
  @override
  String get video_windows_black_flash_notice_title =>
      'Чёрное мерцание в Windows?';
  @override
  String get view_illustrations => 'Иллюстрации';
  @override
  String get volume_button_page_turning => 'Перелистывание кнопками громкости';
  @override
  String get volume_key_sentence_nav =>
      'Навигация по предложениям кнопками громкости';
  @override
  String get wheel_page_turn_interval => 'Интервал перелистывания колёсиком';
  @override
  String get word_favorite_added => 'Слово добавлено в избранное';
  @override
  String get word_favorite_removed => 'Слово удалено из избранного';
  @override
  String get yomitan_api_key => 'Ключ Yomitan API (необязательно)';
  @override
  String get yomitan_api_server => 'Сервер Yomitan API';
  @override
  String get yomitan_api_server_hint =>
      'Разрешить клиентам yomitan-api запрашивать словари Fushi (порт 19633)';
  @override
  String get yomitan_api_server_started => 'Сервер Yomitan API запущен';
  @override
  String get yomitan_port_kill_action => 'Завершить процесс и повторить';
  @override
  String get yomitan_port_kill_confirm => 'Завершить процесс';
  @override
  String yomitan_port_kill_confirm_message({required Object process}) =>
      'Порт сейчас используется: ${process}';
  @override
  String yomitan_port_kill_confirm_title({required Object port}) =>
      'Завершить процесс, использующий порт ${port}?';
  @override
  String yomitan_port_kill_failed({required Object process}) =>
      'Не удалось завершить ${process}. Пожалуйста, завершите его вручную, затем повторите.';
  @override
  String yomitan_port_kill_protected({required Object process}) =>
      '${process} — критический системный процесс, Fushi не будет его завершать. Измените порт.';
  @override
  String get yomitan_port_kill_self_instance =>
      'Этот процесс — другой запущенный экземпляр данного приложения.';
  @override
  String get game_track_bgm => 'BGM / исключено';
  @override
  String get game_line_audio_no_voice => 'Нет голоса';
  @override
  String get game_line_audio_overlong => 'Слишком длинный фрагмент';
  @override
  String get game_line_audio_overlong_hint =>
      'Намного длиннее одной строки; может содержать BGM или другое смешанное аудио';
  @override
  String get game_line_audio_loopback_hint =>
      'Системный микс; может содержать BGM';
  @override
  String get game_line_recapture => 'Перезахватить голос';
  @override
  String get game_line_recapture_stop => 'Завершить перезахват';
  @override
  String get game_line_tracks => 'Дорожки для этой строки';
  @override
  String get game_line_tracks_hint =>
      'Прослушайте каждую дорожку в момент этой строки, затем исключите дорожки с BGM';
  @override
  String get game_line_track_use => 'Использовать для этой строки';
  @override
  String get game_user_tags_title => 'Мои теги';
  @override
  String get anki_lapis_section => 'Стиль карточек Lapis';
  @override
  String get anki_lapis_font_scale => 'Масштаб шрифта карточки';
  @override
  String get anki_lapis_font_scale_hint =>
      'Масштабирует все размеры шрифтов Lapis; применяется через «Применить стиль к Anki».';
  @override
  String get anki_lapis_custom_css => 'Пользовательский CSS';
  @override
  String get anki_lapis_custom_css_hint =>
      'Добавляется к таблице стилей Lapis в защищённой пользовательской секции.';
  @override
  String get anki_lapis_apply => 'Применить стиль к Anki';
  @override
  String get anki_lapis_apply_done =>
      'Стиль Lapis применён. Сначала была сохранена резервная копия.';
  @override
  String anki_lapis_apply_failed({required Object error}) =>
      'Не удалось применить стиль: ${error}';
  @override
  String get anki_lapis_up_to_date => 'Стиль Lapis уже актуален.';
  @override
  String get anki_lapis_foreign_edit_title => 'Шаблон изменён в Anki';
  @override
  String get anki_lapis_foreign_edit_body =>
      'Шаблон Lapis в Anki отличается от того, что Fushi применил в последний раз — возможно, он был отредактирован вручную. Применение перезапишет его; сначала будет сохранена резервная копия. Продолжить?';
  @override
  String get anki_lapis_backup => 'Резервная копия шаблона Lapis';
  @override
  String anki_lapis_backup_done({required Object path}) =>
      'Шаблон сохранён: ${path}';
  @override
  String anki_lapis_backup_failed({required Object error}) =>
      'Ошибка резервного копирования: ${error}';
  @override
  String get anki_lapis_not_found => 'Тип заметки Lapis не найден в Anki.';
  @override
  String get anki_lapis_restore => 'Восстановить из резервной копии';
  @override
  String get anki_lapis_restore_empty => 'Резервных копий ещё нет.';
  @override
  String get anki_lapis_restore_confirm =>
      'Перезаписать шаблон Lapis в Anki этой резервной копией? Текущее состояние будет сохранено.';
  @override
  String get anki_lapis_restore_done => 'Шаблон восстановлен.';
  @override
  String anki_lapis_restore_failed({required Object error}) =>
      'Ошибка восстановления: ${error}';
  @override
  String get anki_dedup_section => 'Оптимизация хранилища медиа Anki';
  @override
  String get anki_dedup_scan => 'Поиск дубликатов (без изменений)';
  @override
  String get anki_dedup_run => 'Удалить дубликаты';
  @override
  String get anki_dedup_report_title => 'Отчёт об удалении дубликатов';
  @override
  String anki_dedup_report_body({
    required Object groups,
    required Object removed,
    required Object size,
    required Object notes,
    required Object models,
    required Object skipped,
  }) =>
      '${groups} групп дубликатов; ${removed} лишних копий (${size}); ${notes} заметок и ${models} типов заметок перезаписано; ${skipped} пропущено.';
  @override
  String get anki_dedup_report_dry_note =>
      'Только сканирование — ничего не было изменено.';
  @override
  String get anki_dedup_report_clean => 'Побайтовых дубликатов не найдено.';
  @override
  String anki_dedup_failed({required Object error}) =>
      'Ошибка удаления дубликатов: ${error}';
  @override
  String get anki_dedup_unavailable =>
      'Требуется Anki, запущенный на этом компьютере (AnkiConnect).';
  @override
  String get anki_dedup_run_hint =>
      'Сначала сканирует и показывает, что именно будет удалено; ничего не удаляется до вашего подтверждения.';
  @override
  String get anki_dedup_plan_title => 'Файлы для удаления';
  @override
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '${count} лишних копий, ${size} можно освободить. Одна копия каждого файла сохраняется, и все ссылки перенаправляются на неё; перекодирование не выполняется.';
  @override
  String anki_dedup_plan_entry({
    required Object file,
    required Object size,
    required Object canonical,
  }) => 'Удалить ${file} (${size}) — оставить ${canonical}';
  @override
  String get anki_dedup_plan_delete => 'Удалить эти файлы';
  @override
  String get anki_dedup_plan_journal =>
      'Журнал всех перезаписей и удалений сохраняется в папку резервных копий.';
  @override
  String get manga_ocr_default_engine => 'Движок OCR по умолчанию';
  @override
  String get manga_ocr_engine_auto => 'Автоматически (без отправки в Lens)';
  @override
  String get manga_ocr_engine_local_onnx => 'Локальный ONNX';
  @override
  String get manga_ocr_engine_google_lens => 'Google Lens';
  @override
  String get manga_google_lens_disclosure_title =>
      'Отправить страницы манги в Google Lens?';
  @override
  String get manga_google_lens_disclosure_body =>
      'Для распознавания этой манги уменьшенная JPEG-копия каждой страницы без OCR-текста отправляется в Google. Результаты кэшируются на этом устройстве. Конечная точка неофициальная и может перестать работать. Ничего не отправляется без вашего согласия.';
  @override
  String get manga_google_lens_disclosure_accept => 'Согласиться и начать OCR';
  @override
  String get manga_google_lens_disclosure_decline => 'Отмена';
  @override
  String get manga_reading_direction => 'Направление чтения';
  @override
  String get manga_direction_rtl => 'Справа налево';
  @override
  String get manga_direction_ltr => 'Слева направо';
  @override
  String get manga_zoom => 'Масштаб';
  @override
  String get manga_jump_to_page => 'Перейти к странице';
  @override
  String get manga_previous_page => 'Предыдущая страница';
  @override
  String get manga_next_page => 'Следующая страница';
  @override
  String manga_page_number_hint({required Object total}) =>
      'Номер страницы (1-${total})';
  @override
  String get manga_import_direct => 'Импорт без OCR';
  @override
  String get manga_library => 'Манга';
  @override
  String get manga_import_action => 'Импортировать мангу';
  @override
  String get game_scrape_search => 'Поиск';
  @override
  String get game_scrape_use => 'Использовать';
  @override
  String get game_scrape_search_failed =>
      'Ошибка поиска. Проверьте подключение к сети и повторите.';
  @override
  String get game_remove_confirm =>
      'Удалить эту игру из библиотеки? Файлы игры на диске не будут удалены.';
  @override
  String manga_ocr_acceleration_status({required Object engine}) =>
      'Ускорение OCR: ${engine}';
  @override
  String manga_ocr_acceleration_degraded({
    required Object engine,
    required Object reason,
  }) => 'Ускорение GPU недоступно, OCR работает на ${engine}: ${reason}';
  @override
  String get media_tracking_status => 'Статус коллекции';
  @override
  String get media_tracking_signup => 'Создать аккаунт Bangumi';
  @override
  String get media_tracking_game => 'Игра';
  @override
  String get download_rate_limit_lan_exempt =>
      'Не применяется в локальной сети; передача по LAN всегда идёт на максимальной скорости.';
  @override
  String get scrape_reason_network =>
      'Не удалось получить корректный ответ от источника обложки. Проверьте сеть и повторите.';
  @override
  String get scrape_reason_server =>
      'Источник обложки вернул ошибку. Попробуйте позже или выберите другой вариант.';
  @override
  String get common_more_actions => 'Ещё';
  @override
  String get collection_already_has_item => 'Этот элемент уже в коллекции.';
  @override
  String get drag_drop_manga_archive_unsupported =>
      'Невозможно импортировать архивы комиксов .cbr/.rar — переупакуйте в .cbz или папку с изображениями.';
  @override
  String get collection_add_failed =>
      'Не удалось добавить элемент в коллекцию. Попробуйте ещё раз.';
  @override
  String get anki_dedup_auto => 'Автоматическая обработка';
  @override
  String get anki_dedup_auto_hint =>
      'Отключено по умолчанию. При включении Fushi сканирует при запуске (не чаще раза в неделю) и сначала показывает список — ничего не удаляется без вашего подтверждения.';
  @override
  String get anki_dedup_auto_delete => 'Удалять автоматически без запроса';
  @override
  String get anki_dedup_auto_delete_hint =>
      'Пропускает диалог подтверждения. Удаляются только побайтово идентичные лишние копии, перекодирование не выполняется, но удаление нельзя отменить.';
  @override
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      'Найдено ${count} дубликатов медиафайлов Anki (можно освободить ${size})';
  @override
  String get anki_dedup_auto_review => 'Просмотреть';
  @override
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      'Удалено ${count} дубликатов медиафайлов Anki, освобождено ${size}';
  @override
  String anki_lapis_backup_done_pruned({
    required Object path,
    required Object count,
  }) =>
      'Сохранено в ${path} (удалено ${count} старых копий по правилу 90 дней / хранить 10)';
  @override
  String get game_audio_fallback_policy => 'Запасной источник аудио';
  @override
  String get game_audio_fallback_full => 'Разрешить смешанное аудио';
  @override
  String get game_audio_fallback_clean => 'Только чистые источники';
  @override
  String get game_audio_fallback_resource => 'Только оригинальные ресурсы';
  @override
  String get game_track_silent_at_cue => 'Нет звука на этой строке';
  @override
  String get game_audio_fallback_full_hint =>
      'При отсутствии чистого голоса используется системный микс; фрагмент может содержать BGM и эффекты.';
  @override
  String get game_audio_fallback_clean_hint =>
      'Используется аудио из ресурсов игры и PCM движка. Строки без голоса создаются без аудио вместо захвата BGM.';
  @override
  String get game_audio_fallback_resource_hint =>
      'Требуется оригинальный голосовой файл из комплекта игры; создание карточки отклоняется при его отсутствии.';
  @override
  String get game_line_audio_suppressed => 'Микс пропущен';
  @override
  String get game_line_audio_suppressed_hint =>
      'Ни один чистый источник аудио не выдал звук для этой строки, и системный микс был пропущен в соответствии с вашей политикой запасного аудио. Это не означает, что строка не озвучена.';
  @override
  String get video_setting_torrent_limit_lan =>
      'Применять ограничения к пирам LAN';
  @override
  String get video_setting_torrent_limit_lan_hint =>
      'Отключено по умолчанию: передачи с пирами в локальной сети игнорируют указанные выше ограничения.';
  @override
  String get download_rate_limit_lan_included =>
      'Также применяется в локальной сети.';
  @override
  String get video_collection_no_local_member =>
      'Нет локальных видео в этой коллекции';
  @override
  String get gal_mining_image_mode => 'Изображение карточки гальгейма';
  @override
  String get gal_mining_image_mode_screenshot => 'Скриншот';
  @override
  String get gal_mining_image_mode_hint =>
      'Сцены гальгейма практически не меняются в пределах одной строки, поэтому статичный скриншот обычно меньше по размеру и столь же полезен.';
  @override
  String get shortcut_scope_manga => 'Манга';
  @override
  String get shortcut_action_manga_page_forward => 'Следующая страница';
  @override
  String get shortcut_action_manga_page_backward => 'Предыдущая страница';
  @override
  String get shortcut_action_manga_dismiss_dict => 'Закрыть словарь';
  @override
  String get video_setting_jimaku_default_language =>
      'Язык субтитров по умолчанию';
  @override
  String get video_jimaku_api_key_settings_hint =>
      'Также можно изменить в Настройки → Видео → Субтитры';
  @override
  String get anime_download_subs_episodes_unverified =>
      'Номера эпизодов не проверены для этого пакета — субтитры могут быть от другого сезона.';
  @override
  String get anime_download_subs_deferred =>
      'Субтитры подбираются после загрузки, по фактическим файлам пакета';
  @override
  String get anime_download_subs_pending =>
      'Субтитры: ожидание завершения загрузки';
  @override
  String get anime_download_subs_unmatched =>
      'Субтитры: совпадений для этого пакета не найдено';
  @override
  String get stat_source_breakdown => 'По источнику';
  @override
  String stat_format_pages({required Object n}) => '${n} стр.';
  @override
  String anime_download_subs_season_mismatch({required Object season}) =>
      'Нет субтитров для сезона ${season} этого пакета — не выбрано автоматически. Выберите вручную, если хотите.';
  @override
  String get media_tracking_card_title => 'Синхронизация с Bangumi';
  @override
  String get media_tracking_not_connected =>
      'Не подключено. Прогресс сохраняется локально и не передаётся в Bangumi.';
  @override
  String get media_tracking_last_sync => 'Последняя синхронизация';
  @override
  String get media_tracking_never_synced => 'Не синхронизировалось';
  @override
  String media_tracking_linked_count({required Object n}) => '${n} привязано';
  @override
  String media_tracking_pending_count({required Object n}) =>
      '${n} ожидает отправки';
  @override
  String get media_tracking_all_synced => 'Всё отправлено';
  @override
  String get media_tracking_unauthorized =>
      'Bangumi отклонил токен доступа. Переподключите его в настройках.';
  @override
  String get media_tracking_open_subject => 'Открыть на Bangumi';
  @override
  String get media_tracking_manage_links => 'Управление привязками';
  @override
  String get media_tracking_last_error => 'Последняя ошибка';
  @override
  String get shortcut_action_popup_mine_entry => 'Создать карточку';
  @override
  String get game_upscaling_auto_hint =>
      'Использовать Magpie, если он уже запущен; иначе использовать версию, включённую в Fushi. Загрузка не требуется.';
  @override
  String get game_upscaling_installed_only_hint =>
      'Использовать Magpie только если он уже установлен или запущен. Не распаковывать встроенную версию Fushi.';
  @override
  String get game_upscaling_off_hint => 'Никогда не масштабировать окно игры.';
  @override
  String get game_helper_bundle_missing =>
      'Хелпер для хуков гальгейма не включён в эту сборку. Обновите Fushi, чтобы получить его.';
  @override
  String game_upscaling_pick_title({required Object name}) =>
      'Масштабирование окна для ${name}';
  @override
  String get game_upscaling_pick_body =>
      'Масштабирует окно этой игры с помощью Magpie во время сеанса захвата. Настраивается для каждой игры — полезно только для игр с разрешением ниже экранного. Использует GPU.';
  @override
  String get game_upscaling_hint_not_installed =>
      'Magpie не готов. Установите масштабирование окна в «Авто», чтобы использовать копию, встроенную в Fushi; если всё ещё не запускается, обновите или переустановите Fushi.';
  @override
  String media_source_count_manga({required Object n}) => '${n} томов';
  @override
  String get library_view_shelf => 'Полка';
  @override
  String get library_view_browse => 'Обзор';
  @override
  String get library_view_media => 'Библиотека';
  @override
  String get scrape_failure_detail_show => 'Показать подробности';
  @override
  String get scrape_failure_detail_hide => 'Скрыть подробности';
  @override
  String get media_tracking_retry_mapping => 'Повторить сопоставление';
  @override
  String get media_tracking_retry_matched =>
      'Сопоставлено, текущий прогресс поставлен в очередь';
  @override
  String get media_tracking_retry_no_match =>
      'Совпадение не найдено. Попробуйте привязать вручную.';
  @override
  String get game_statistics => 'Статистика игр';
  @override
  String get game_stat_by_game => 'По играм';
  @override
  String get stat_clear_all_game_message =>
      'Очистить всё время игры и количество сессий? Библиотека игр и хронология активности сохранятся. Это действие нельзя отменить.';
  @override
  String batch_selection_stale_skipped({
    required Object m,
    required Object n,
  }) =>
      'Пропущено ${m} из ${n} выбранных элементов, которые больше не существуют';
  @override
  String get game_text_thread_unset =>
      'Поток не выбран — выберите один, чтобы начать захват';
  @override
  String get media_tracking_watched_show =>
      'Посмотреть все просмотренные аниме';
  @override
  String get media_tracking_watched_title => 'Просмотрено на Bangumi';
  @override
  String get media_tracking_watched_empty =>
      'На этом аккаунте Bangumi нет аниме, отмеченных как просмотренные.';
  @override
  String media_tracking_watched_load_failed({required Object error}) =>
      'Не удалось загрузить просмотренные аниме: ${error}';
  @override
  String media_tracking_watched_progress({required Object n}) =>
      'Просмотрено ${n} эпизодов';
  @override
  String get media_tracking_manual_required => 'Требуется ручная привязка';
  @override
  String media_tracking_manual_required_count({required Object n}) =>
      '${n} элементов требуют ручной привязки';
  @override
  String get media_tracking_manual_required_hint =>
      'Эти локальные элементы уже имеют прогресс, но не привязаны к Bangumi.';
  @override
  String get media_tracking_no_local_history =>
      'Нет локального прогресса просмотра, чтения или игр, требующего привязки.';
  @override
  String media_tracking_more_manual_required({required Object n}) =>
      'Ещё ${n} элементов требуют ручной привязки';
  @override
  String get manga_import_hint =>
      'Выберите папку с мангой, архив страниц .cbz/.zip, .pdf или файл .mokuro.';
  @override
  String get manga_import_pick_file => 'Выбрать файл манги';
  @override
  String get manga_import_pick_folder => 'Выбрать папку манги';
  @override
  String get manga_import_missing_input =>
      'Сначала выберите файл или папку с мангой.';
  @override
  String get manga_import_detected_title => 'Это похоже на мангу';
  @override
  String get manga_import_detected_confirm => 'Импортировать как мангу';
  @override
  String manga_import_detected_message({required Object name}) =>
      '«${name}» — файл манги, поэтому он будет обработан импортёром манги, а не импортёром книг.';
  @override
  String get video_jimaku_source_loading => 'Проверка доступности субтитров...';
  @override
  String get video_jimaku_source_failed =>
      'Не удалось проверить доступность субтитров. Попробуйте поискать снова.';
  @override
  String get video_jimaku_language_unknown => 'Язык не указан';
  @override
  String video_jimaku_source_summary({
    required Object files,
    required Object episodes,
    required Object languages,
  }) => '${files} файлов субтитров · ${episodes} эпизодов · ${languages}';
  @override
  String video_jimaku_episode_unlabeled({
    required Object episode,
    required Object count,
  }) =>
      'Нет субтитров с пометкой эпизод ${episode}; ${count} файлов без пометки могут подойти';
  @override
  String video_jimaku_episode_unavailable({required Object episode}) =>
      'Субтитры для эпизода ${episode} не найдены';
  @override
  String video_jimaku_episode_available({
    required Object count,
    required Object languages,
  }) => '${count} субтитров доступно · ${languages}';
  @override
  String get manga_online_source_disabled =>
      'Этот интернет-источник отключён. Включите его в «Источниках», чтобы просматривать каталог.';
  @override
  String get selection_web_search => 'Искать в интернете';
  @override
  String get selection_web_search_unavailable =>
      'Нет приложения для поиска в интернете.';
  @override
  String get selection_share_failed => 'Не удалось открыть меню «Поделиться».';
  @override
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang} (автогенерация)';
  @override
  String get anki_dedup_progress_title => 'Удаление дубликатов медиа';
  @override
  String anki_dedup_progress_scanning({required Object count}) =>
      'Сканирование папки медиа… (найдено ${count} файлов)';
  @override
  String anki_dedup_progress_hashing({
    required Object done,
    required Object total,
  }) => 'Сравнение файлов одинакового размера… (${done} / ${total})';
  @override
  String anki_dedup_progress_resolving({
    required Object done,
    required Object total,
  }) => 'Обработка дубликатов… (${done} / ${total})';
  @override
  String anki_dedup_progress_freed({required Object size}) =>
      'Освобождено ${size}';
  @override
  String get anki_dedup_cancelling => 'Отмена…';
  @override
  String get anki_dedup_cancelled =>
      'Удаление дубликатов отменено; завершённые изменения сохранены.';
  @override
  String get anki_dedup_report_cancelled_note =>
      'Отменено досрочно — цифры ниже отражают только то, что было завершено.';
  @override
  String get anki_dedup_plan_busy_note =>
      'Anki может не отвечать во время выполнения; не используйте Anki, пока процесс не завершится.';
  @override
  String get video_setting_subtitle_position_secondary =>
      'Позиция вторичных субтитров';
  @override
  String get dict_download_learning_language => 'Изучаемый язык';
  @override
  String get dict_category_bilingual => 'Двуязычный';
  @override
  String get dict_category_monolingual => 'Одноязычный';
  @override
  String get shortcut_action_video_hold_speed =>
      'Удерживать для временной скорости';
  @override
  String get handlebar_phonetic_transcriptions => 'Фонетические транскрипции';
  @override
  String get sync_progress_preparing => 'Подготовка синхронизации';
  @override
  String get sync_progress_collections => 'Синхронизация коллекций';
  @override
  String get sync_progress_book => 'Синхронизация книги';
  @override
  String sync_progress_book_titled({required Object title}) =>
      'Синхронизация «${title}»';
  @override
  String sync_last_completed({required Object count}) =>
      'Последняя синхронизация: завершена (${count} каналов)';
  @override
  String get sync_last_no_channels =>
      'Последняя синхронизация: ничего не синхронизировано — нет подключённых каналов';
  @override
  String get sync_last_nothing =>
      'Последняя синхронизация: нечего синхронизировать';
  @override
  String get sync_last_auto_disabled =>
      'Последняя синхронизация: пропущена — автосинхронизация отключена';
  @override
  String get sync_last_cooled_down =>
      'Последняя синхронизация: пропущена — синхронизировано недавно';
  @override
  String get sync_last_failed => 'Последняя синхронизация: ошибка';
  @override
  String anime_download_no_results_detail({
    required Object query,
    required Object filters,
  }) =>
      'Сервис ответил успешно, но вернул 0 результатов. Запрос: ${query}; фильтры: ${filters}. Попробуйте другое название или ослабьте фильтры.';
  @override
  String get anime_download_streaming_ready =>
      'В библиотеке · загрузка продолжается';
  @override
  String get anime_download_unfiltered => 'Без фильтра «Доверенные»';
  @override
  String get interconnect_enable_footer =>
      'Как использовать: на устройстве с библиотекой включите сервер синхронизации ниже; на другом устройстве добавьте адрес этого сервера для привязки. Устройство может работать только в одной роли — сервер или клиент.';
  @override
  String get interconnect_peer_list_title => 'Добавленные узлы';
  @override
  String get interconnect_peer_list_empty =>
      'Узлы не добавлены. Выберите обнаруженное устройство из списка LAN ниже для автоматической привязки или добавьте адрес узла вручную.';
  @override
  String get anki_lapis_visual_editor => 'Визуальный редактор';
  @override
  String get anki_lapis_visual_editor_hint =>
      'Предварительный просмотр карточки Lapis с возможностью изменить стиль, положение и привязку полей каждой области без написания CSS.';
  @override
  String get anki_lapis_visual_front => 'Лицевая сторона';
  @override
  String get anki_lapis_visual_back => 'Обратная сторона';
  @override
  String get anki_lapis_visual_preview => 'Предпросмотр карточки Lapis';
  @override
  String get anki_lapis_visual_select_field => 'Выберите, что редактировать';
  @override
  String get anki_lapis_visual_reset_field => 'Сбросить поле';
  @override
  String anki_lapis_visual_font_size({required Object percent}) =>
      'Размер шрифта: ${percent}%';
  @override
  String get anki_lapis_visual_bold => 'Жирный';
  @override
  String get anki_lapis_visual_alignment => 'Выравнивание';
  @override
  String get anki_lapis_visual_color => 'Цвет текста';
  @override
  String get anki_lapis_visual_default => 'По умолчанию';
  @override
  String get anki_lapis_visual_advanced_css => 'Расширенный CSS';
  @override
  String get anki_lapis_visual_field_expression => 'Слово';
  @override
  String get anki_lapis_visual_field_reading => 'Чтение';
  @override
  String get anki_lapis_visual_field_sentence => 'Предложение';
  @override
  String get anki_lapis_visual_field_primary_definition =>
      'Основное определение';
  @override
  String get anki_lapis_visual_field_glossaries => 'Другие определения';
  @override
  String get anki_lapis_visual_target_card_content => 'Содержимое карточки';
  @override
  String get anki_lapis_visual_target_definition => 'Определение';
  @override
  String get anki_lapis_visual_target_inside_definition => 'Внутри определения';
  @override
  String get anki_lapis_visual_field_definition_info => 'Индикатор определения';
  @override
  String get anki_lapis_visual_field_definition_box => 'Блок определения';
  @override
  String get anki_lapis_visual_field_definition_content =>
      'Определение целиком';
  @override
  String get anki_lapis_visual_field_selected_definition =>
      'Выбранное определение';
  @override
  String get anki_lapis_visual_field_dictionary_entry => 'Словарная статья';
  @override
  String get anki_lapis_visual_field_dictionary_name => 'Название словаря';
  @override
  String get anki_lapis_visual_field_definition_example =>
      'Пример к определению';
  @override
  String get anki_lapis_visual_line_height => 'Межстрочный интервал';
  @override
  String get anki_lapis_visual_background_color => 'Выделение фона';
  @override
  String get anki_lapis_visual_box_layout => 'Внешний вид блока';
  @override
  String get anki_lapis_visual_border_width => 'Граница';
  @override
  String get anki_lapis_visual_border_color => 'Цвет границы';
  @override
  String get anki_lapis_visual_corner_radius => 'Скругление углов';
  @override
  String get anki_lapis_visual_padding => 'Внутренний отступ';
  @override
  String get anki_lapis_visual_margin => 'Внешний отступ';
  @override
  String get anki_lapis_visual_field_definition_info_note =>
      'Отображается только на карточках с несколькими блоками определений; на карточках с одним определением скрыто.';
  @override
  String get anki_lapis_visual_field_dictionary_name_note =>
      'На карточках Fushi этот ярлык также содержит теги частей речи, поэтому их нельзя стилизовать отдельно.';
  @override
  String get game_upscaling_error_bundle_missing =>
      'Установка Fushi неполная: встроенный компонент Magpie отсутствует. Переустановите или обновите Fushi.';
  @override
  String get game_upscaling_error_bundle_invalid =>
      'Встроенный компонент Magpie повреждён или не прошёл проверку. Переустановите или обновите Fushi.';
  @override
  String download_test_connection_failed_reason({required Object message}) =>
      'Ошибка подключения: ${message}';
  @override
  String get delete_disclosure_will_delete_label => 'Будет удалено';
  @override
  String get delete_disclosure_will_keep_label => 'Будет сохранено';
  @override
  String get delete_disclosure_book_records =>
      'Прогресс чтения, закладки, теги и данные субтитров';
  @override
  String get delete_disclosure_book_extracted =>
      'Файлы книги, извлечённые Fushi в собственное хранилище';
  @override
  String get delete_disclosure_book_audiobook =>
      'Аудио и синхронизированные субтитры прикреплённой аудиокниги, если есть';
  @override
  String get delete_disclosure_source_kept =>
      'Оригинальные файлы, которые вы импортировали (книга, субтитры, аудио)';
  @override
  String get delete_disclosure_stats_kept => 'Статистика чтения';
  @override
  String get delete_disclosure_audiobook_files =>
      'Аудио и синхронизированные субтитры, скопированные Fushi в собственное хранилище';
  @override
  String get delete_disclosure_audiobook_book_kept =>
      'Сама книга и прогресс чтения';
  @override
  String get delete_disclosure_audiobook_source_kept =>
      'Оригинальные аудиофайлы, которые вы импортировали';
  @override
  String get audiobook_delete => 'Удалить аудиокнигу';
  @override
  String get audiobook_delete_confirm =>
      'Удалить прикреплённую аудиокнигу? Её аудиофайлы будут удалены с этого устройства.';
  @override
  String get delete_collection_confirm =>
      'Удаляется только группировка. Элементы в ней сохраняются.';
  @override
  String get shortcut_action_video_enter_caret =>
      'Включить курсор поиска по субтитрам';
  @override
  String get audiobook_export_clip_too_long =>
      'Выбранный фрагмент слишком длинный для экспорта (лимит: 5 минут)';
  @override
  String get sync_err_forbidden =>
      'Сервер отклонил этот запрос. С авторизацией всё в порядке — проверьте настройки сервера.';
  @override
  String sync_err_forbidden_detail({required Object reason}) =>
      'Сервер отклонил этот запрос: ${reason} (с авторизацией всё в порядке)';
  @override
  String get collection_group_extras => 'Доп. материалы и PV';
  @override
  String collection_group_season({required Object n}) => 'Сезон ${n}';
  @override
  String get collection_sort_by_season => 'Сортировать по сезону';
  @override
  String get mining_animated_format_avif => 'AVIF (наименьший размер)';
  @override
  String get mining_animated_format_webp => 'WebP (широкая поддержка)';
  @override
  String get mining_animated_format_gif => 'GIF (максимальная совместимость)';
  @override
  String get video_mining_animated_format => 'Формат анимации видеокарточек';
  @override
  String get video_mining_animated_format_hint =>
      'AVIF значительно меньше GIF при том же качестве, а его максимальный уровень качества позволяет более высокое разрешение и частоту кадров, чем GIF или WebP. Автоматически переключается на GIF, если встроенный кодировщик не может создать AVIF.';
  @override
  String get gal_mining_animated_format => 'Формат анимации игровых карточек';
  @override
  String get gal_mining_animated_format_hint =>
      'Те же форматы, что и для видеокарточек, хранятся отдельно: кадр гальге почти не меняется в пределах одной строки, поэтому баланс иной.';
  @override
  String get scrape_all => 'Получить данные для всех';
  @override
  String scrape_all_title({required Object kind}) =>
      'Получить данные для всех ${kind}';
  @override
  String scrape_all_running({required Object current, required Object total}) =>
      'Обработка ${current} / ${total}';
  @override
  String scrape_all_item({required Object title}) => 'Обработка: ${title}';
  @override
  String scrape_all_done({
    required Object applied,
    required Object review,
    required Object skipped,
    required Object failed,
  }) =>
      'Готово: ${applied} применено, ${review} требуют проверки, ${skipped} пропущено, ${failed} с ошибкой';
  @override
  String get scrape_all_empty =>
      'В этой библиотеке нет элементов для получения метаданных.';
  @override
  String get scrape_all_start => 'Начать';
  @override
  String collection_hero_total_episodes({required Object count}) =>
      '${count} эпизодов';
  @override
  String get video_scrape_collection_rename_title =>
      'Переименовать эту коллекцию?';
  @override
  String get video_scrape_collection_rename_body =>
      'Найденная запись имеет другое название. Переименование необязательно: обложка и подробности сохраняются в любом случае, а при переименовании старое название заменяется и на других синхронизированных устройствах.';
  @override
  String video_scrape_collection_rename_from({required Object name}) =>
      'Текущее название: ${name}';
  @override
  String video_scrape_collection_rename_to({required Object name}) =>
      'Новое название: ${name}';
  @override
  String get video_scrape_collection_rename_keep => 'Оставить текущее название';
  @override
  String get download_task_toggle_failed =>
      'Не удалось приостановить/возобновить';
  @override
  String get download_task_eta => 'Осталось';
  @override
  String get download_task_ratio => 'Соотношение';
  @override
  String get download_task_status_downloading => 'Загрузка';
  @override
  String get download_task_status_seeding => 'Раздача';
  @override
  String get download_task_status_completed => 'Завершено';
  @override
  String get download_task_status_paused => 'Приостановлено';
  @override
  String get download_task_status_queued => 'В очереди';
  @override
  String get download_task_status_stalled => 'Остановлено';
  @override
  String get download_task_status_checking => 'Проверка';
  @override
  String get download_task_status_metadata => 'Получение метаданных';
  @override
  String get download_task_status_moving => 'Перемещение';
  @override
  String get download_task_status_error => 'Ошибка';
  @override
  String get download_task_pause => 'Приостановить';
  @override
  String get download_task_resume => 'Возобновить';
  @override
  String get download_airing_calendar_title => 'Календарь выхода';
  @override
  String get download_airing_calendar_show_all => 'Показать все за этот сезон';
  @override
  String get download_airing_calendar_empty_guidance =>
      'Пока нечего показывать: привяжите коллекцию к AniList или добавьте подписку на загрузку, и время выхода появится здесь.';
  @override
  String get download_airing_calendar_error =>
      'Не удалось загрузить расписание выхода';
  @override
  String get download_airing_calendar_in_library => 'В библиотеке';
  @override
  String get download_airing_calendar_subscribed => 'Подписка';
  @override
  String download_airing_calendar_episode_label({required Object episode}) =>
      'Эп. ${episode}';
  @override
  String get download_airing_calendar_week_prev => 'Предыдущая неделя';
  @override
  String get download_airing_calendar_week_next => 'Следующая неделя';
  @override
  String get download_airing_calendar_week_empty =>
      'На этой неделе ничего не выходит';
  @override
  String get video_jimaku_format => 'Формат';
  @override
  String get video_jimaku_format_all => 'Все';
  @override
  String get video_setting_tmdb_key => 'Пользовательский ключ API TMDB';
  @override
  String get video_setting_tmdb_key_hint =>
      'Необязательно. Оставьте пустым, чтобы использовать встроенный ключ. Укажите свой, только если поиск метаданных перестал работать или вы хотите использовать собственную квоту.';
  @override
  String get about_tmdb_attribution =>
      'Это приложение использует TMDB и API TMDB, но не одобрено, не сертифицировано и никак не поддержано TMDB.';
  @override
  String get anki_lapis_visual_layout => 'Макет';
  @override
  String get anki_lapis_visual_layout_hint =>
      'Использует собственные переключатели макета Lapis, поэтому и десктопный, и мобильный Anki следуют ему.';
  @override
  String get anki_lapis_visual_layout_sentence => 'Расположение предложения';
  @override
  String get anki_lapis_visual_layout_sentence_above => 'Над определениями';
  @override
  String get anki_lapis_visual_layout_sentence_below => 'Под определениями';
  @override
  String get anki_lapis_visual_layout_picture => 'Расположение изображения';
  @override
  String get anki_lapis_visual_layout_picture_right => 'Справа от слова';
  @override
  String get anki_lapis_visual_layout_picture_left => 'Слева от слова';
  @override
  String get anki_lapis_visual_layout_picture_alt => 'Внутри предложения';
  @override
  String get anki_lapis_visual_layout_audio => 'Кнопки аудио';
  @override
  String get anki_lapis_visual_layout_audio_header => 'Рядом с чтением';
  @override
  String get anki_lapis_visual_layout_audio_fixed => 'Закреплены внизу';
  @override
  String get anki_lapis_visual_layout_audio_alt => 'Внутри предложения';
  @override
  String get anki_lapis_visual_mapping_hint =>
      'Поля Anki, заполняющие выбранную область. Изменения сохраняются вместе со стилем.';
  @override
  String get anki_lapis_visual_mapping_none =>
      'Эта область формируется самим шаблоном и не имеет собственного поля.';
  @override
  String get anki_lapis_visual_color_custom => 'Свой цвет';
  @override
  String get anki_lapis_visual_color_picker_title => 'Выберите цвет';
  @override
  String get video_scrape_tmdb_key_hint => 'Введите ключ API TMDB';
  @override
  String get video_scrape_tmdb_key_required => 'Для TMDB требуется ключ API';
  @override
  String get video_scrape_tmdb_key_save => 'Сохранить';
  @override
  String get video_scrape_tmdb_key_empty =>
      'Сохраните ключ API TMDB, затем нажмите «Поиск». Результаты из других источников здесь не отображаются.';
  @override
  String get download_detail_tab_overview => 'Обзор';
  @override
  String get download_detail_tab_files => 'Файлы';
  @override
  String get download_detail_tab_peers => 'Пиры';
  @override
  String get download_detail_tab_trackers => 'Трекеры';
  @override
  String get download_detail_backend_unsupported =>
      'Не поддерживается текущим бэкендом загрузок';
  @override
  String get download_detail_task_gone => 'Задача не найдена в бэкенде';
  @override
  String get download_detail_task_missing =>
      'Исходный бэкенд загрузок онлайн, но этот торрент больше не найден. Данные о пирах и трекерах в реальном времени восстановить нельзя; показана сохранённая информация о задаче.';
  @override
  String get download_detail_section_transfer => 'Передача';
  @override
  String get download_detail_section_network => 'Сеть';
  @override
  String get download_detail_section_task => 'Задача';
  @override
  String get download_detail_seeds_label => 'Сиды';
  @override
  String get download_detail_leechers_label => 'Личеры';
  @override
  String get download_detail_connections_label => 'Подключения';
  @override
  String get download_detail_content_path_label => 'Путь к содержимому';
  @override
  String get download_detail_time_active => 'Время активности';
  @override
  String get download_detail_time_seeding => 'Время раздачи';
  @override
  String get download_detail_total_size_label => 'Общий размер';
  @override
  String get download_detail_listen_port => 'Порт прослушивания';
  @override
  String get download_detail_dht_nodes => 'Узлы DHT';
  @override
  String get download_detail_hash_label => 'Инфо-хеш';
  @override
  String get download_detail_port_mapping => 'Проброс портов';
  @override
  String get download_detail_session_rates => 'Скорости сессии';
  @override
  String get download_detail_pieces_label => 'Части';
  @override
  String get download_detail_priority_skip => 'Не загружать';
  @override
  String get download_detail_raw_state_label => 'Состояние бэкенда';
  @override
  String get download_detail_remaining_label => 'Осталось';
  @override
  String get download_detail_save_path_label => 'Путь сохранения';
  @override
  String get download_detail_priority_normal => 'Обычный';
  @override
  String get download_detail_priority_high => 'Высокий';
  @override
  String get download_detail_tracker_working => 'Работает';
  @override
  String get download_detail_tracker_updating => 'Обновляется';
  @override
  String get download_detail_tracker_not_contacted => 'Ещё не подключался';
  @override
  String get download_detail_tracker_not_working => 'Не работает';
  @override
  String get download_detail_tracker_disabled => 'Отключён';
  @override
  String get download_detail_no_peers => 'Нет подключённых пиров';
  @override
  String get download_detail_no_trackers => 'Нет трекеров';
  @override
  String get video_filter_year => 'Год';
  @override
  String get video_filter_year_unknown => 'Год неизвестен';
  @override
  String get video_filter_watch_status => 'Статус просмотра';
  @override
  String get video_filter_watch_status_unwatched => 'Не просмотрено';
  @override
  String get video_filter_watch_status_watching => 'Смотрю';
  @override
  String get video_filter_watch_status_completed => 'Просмотрено';
  @override
  String get video_hero_detail_view => 'Подробности';
  @override
  String video_hero_episodes_watched({required Object n}) =>
      '${n} эп. просмотрено';
  @override
  String get video_recently_added_badge => 'НОВОЕ';
  @override
  String get video_air_season_winter => 'Зима';
  @override
  String get video_air_season_spring => 'Весна';
  @override
  String get video_air_season_summer => 'Лето';
  @override
  String get video_air_season_autumn => 'Осень';
  @override
  String get delete_scope_no_channel =>
      'Синхронизация не настроена — удаление затронет только это устройство';
  @override
  String get mihon_sources_title => 'Источники манги';
  @override
  String get mihon_extensions_title => 'Расширения для манги';
  @override
  String get mihon_store_add => 'Добавить магазин расширений';
  @override
  String get mihon_store_url => 'URL магазина расширений';
  @override
  String get mihon_store_empty =>
      'Магазинов расширений пока нет. Добавьте совместимый магазин Mihon или импортируйте локальный APK.';
  @override
  String get mihon_extension_import => 'Импорт локального APK';
  @override
  String get mihon_extension_warning =>
      'Сторонние расширения выполняют код с разрешениями Fushi. Устанавливайте только расширения и подписантов, которым доверяете.';
  @override
  String get mihon_extension_install => 'Установить';
  @override
  String get mihon_extension_update => 'Обновить';
  @override
  String get mihon_extension_uninstall => 'Удалить';
  @override
  String get mihon_extension_installed => 'Установлено';
  @override
  String get mihon_extension_disabled => 'Отключено';
  @override
  String get mihon_source_empty =>
      'Нет включённых источников манги. Сначала установите и включите расширение.';
  @override
  String get mihon_source_popular => 'Популярное';
  @override
  String get mihon_source_latest => 'Новинки';
  @override
  String get mihon_source_search => 'Поиск манги';
  @override
  String get mihon_source_preferences => 'Настройки источника';
  @override
  String get mihon_source_clear_data => 'Очистить данные источника';
  @override
  String get mihon_source_clear_data_hint =>
      'Очищает настройки и куки этого источника. Установленные расширения сохраняются.';
  @override
  String get mihon_signer_trust_title => 'Доверять подписанту расширения?';
  @override
  String get mihon_signer_fingerprint => 'SHA-256 подписанта';
  @override
  String get mihon_runtime_unavailable =>
      'Расширения Mihon недоступны на этой платформе.';
  @override
  String get mihon_extension_incompatible => 'Несовместимое расширение';
  @override
  String get mihon_store_refresh => 'Обновить магазины';
  @override
  String get mihon_source_browse_mokuro => 'Встроенный каталог Mokuro';
  @override
  String get mihon_source_no_results => 'Манга не найдена.';
  @override
  String get mihon_chapters_title => 'Главы';
  @override
  String get mihon_extension_language_filter => 'Язык';
  @override
  String get mihon_extension_language_all => 'Все языки';
  @override
  String get mihon_filter_ignore => 'Игнорировать';
  @override
  String get mihon_filter_include => 'Включить';
  @override
  String get mihon_filter_exclude => 'Исключить';
  @override
  String get mihon_filter_ascending => 'По возрастанию';
  @override
  String get mihon_filter_descending => 'По убыванию';
  @override
  String get mihon_add_to_bookshelf => 'Добавить на полку манги';
  @override
  String get mihon_in_bookshelf => 'На полке манги';
  @override
  String scrape_all_confirm({required Object n}) =>
      'Сопоставить все ${n} элементов библиотеки по названию. Только высоконадёжные совпадения применяются автоматически — видео оцениваются по названию вместе с годом, типом и другими сигналами, а для книг и игр требуется уникальное точное совпадение. Обложки, выбранные вами вручную, никогда не перезаписываются (локальные изображения, записи из диалога выбора и файлы постеров в папке), а неоднозначные результаты остаются для ручной проверки.';
  @override
  String get collection_related_title => 'Связанные произведения';
  @override
  String get collection_relation_prequel => 'Приквел';
  @override
  String get collection_relation_sequel => 'Сиквел';
  @override
  String get collection_relation_side_story => 'Побочная история';
  @override
  String get collection_relation_movie => 'Фильм';
  @override
  String get collection_relation_spin_off => 'Спин-офф';
  @override
  String get collection_relation_other => 'Связанное';
  @override
  String get collection_relation_download => 'Загрузить';
  @override
  String get collection_relation_bind => 'Привязать к существующей коллекции';
  @override
  String get collection_episode_rename => 'Переименовать эпизоды из метаданных';
  @override
  String get collection_episode_rename_title => 'Переименовать эпизоды';
  @override
  String get collection_episode_rename_empty => 'Нечего переименовывать';
  @override
  String get collection_episode_download => 'Загрузить этот эпизод';
  @override
  String get collection_episode_fill_missing => 'Заполнить недостающие эпизоды';
  @override
  String get collection_episode_no_missing => 'Нет недостающих эпизодов';
  @override
  String get collection_split_by_season => 'Разделить по сезонам';
  @override
  String get collection_split_keep_original => 'Сохранить исходную коллекцию';
  @override
  String get collection_split_confirm => 'Разделить';
  @override
  String collection_relation_bound({required Object name}) =>
      'Привязано к ${name}';
  @override
  String collection_episode_rename_apply({required Object n}) =>
      'Переименовать ${n} эпизодов';
  @override
  String collection_split_done({required Object n}) =>
      'Разделено на ${n} коллекций';
  @override
  String collection_episode_watched_at({required Object position}) =>
      'Просмотрено до ${position}';
  @override
  String collection_episode_rename_partial({
    required Object n,
    required Object m,
  }) => 'Переименовано ${n} эпизодов, ${m} с ошибкой';
  @override
  String get sync_err_browser_timeout =>
      'Браузер не вернул авторизацию. Попробуйте снова и убедитесь, что ваш прокси пропускает 127.0.0.1.';
  @override
  String get manga_rescan_running => 'Распознавание выбранной области...';
  @override
  String get manga_rescan_empty => 'Текст в этой области не распознан.';
  @override
  String get stat_hourly_band_epub => 'Текстовые книги';
  @override
  String get stat_hourly_band_pdf => 'PDF';
  @override
  String get stat_hourly_band_manga => 'Манга';
  @override
  String get stat_hourly_band_unattributed => 'Нераспределённая история';
  @override
  String get stat_hourly_unattributed_note =>
      'Часы, записанные до появления отслеживания по формату, не содержат информации о типе и не могут быть разделены. Они отображаются как общая сумма и не присваиваются какому-либо типу.';
  @override
  String get book_convert_to_manga_action => 'Конвертировать в мангу';
  @override
  String get book_convert_to_book_action => 'Вернуть в формат книги';
  @override
  String get book_convert_running => 'Конвертация…';
  @override
  String get book_convert_done => 'Конвертация завершена';
  @override
  String get book_convert_failed => 'Ошибка конвертации';
  @override
  String get book_convert_blocked_already => 'Эта книга уже в этом формате.';
  @override
  String get book_convert_blocked_text_only =>
      'Это текстовая книга без изображений страниц. Только отсканированные книги с изображениями могут стать мангой.';
  @override
  String get book_convert_blocked_no_original =>
      'Эта манга была импортирована из изображений, поэтому исходная книга для обратной конвертации отсутствует.';
  @override
  String get book_convert_blocked_source_missing =>
      'Исходные файлы удалены с диска.';
  @override
  String manga_online_retry_waiting({
    required Object attempt,
    required Object total,
  }) => 'Автоматическая повторная попытка (${attempt}/${total})';
  @override
  String get manga_ocr_wizard_already_ocred =>
      'Для этого тома уже есть данные OCR на каждой странице. Повторный запуск OCR перезапишет их.';
  @override
  String get shortcut_scope_universal => 'Назад / Выход';
  @override
  String get game_attach_and_capture => 'Подключить и захватить';
  @override
  String get remote_delete_failed =>
      'Не удалось удалить на сопряжённом устройстве';
  @override
  String get remote_delete_unsupported =>
      'Сопряжённое устройство слишком старой версии для удалённого удаления. Сначала обновите Fushi на нём.';
  @override
  String get anki_lapis_visual_blocks => 'Пользовательские области';
  @override
  String get anki_lapis_visual_blocks_hint =>
      'Показать существующие поля в другом месте на карточке. Только отображение: поля Anki не добавляются и не удаляются.';
  @override
  String get anki_lapis_visual_block_add => 'Добавить область';
  @override
  String get anki_lapis_visual_block_delete => 'Удалить область';
  @override
  String anki_lapis_visual_block_name({required Object index}) =>
      'Область ${index}';
  @override
  String get anki_lapis_visual_block_anchor => 'Расположение на карточке';
  @override
  String get anki_lapis_visual_block_anchor_top => 'Верх карточки';
  @override
  String get anki_lapis_visual_block_anchor_above_sentence => 'Под словом';
  @override
  String get anki_lapis_visual_block_anchor_above_definition =>
      'Под предложением';
  @override
  String get anki_lapis_visual_block_anchor_below_definition =>
      'Под определениями';
  @override
  String get anki_lapis_visual_block_anchor_bottom => 'Низ карточки';
  @override
  String get anki_lapis_visual_block_fields => 'Отображаемые поля';
  @override
  String get anki_lapis_visual_block_no_fields => 'Поля ещё не выбраны';
  @override
  String get anki_lapis_visual_block_needs_note_type =>
      'Сначала выберите тип записи, чтобы указать поля.';
  @override
  String get anki_lapis_restore_factory => 'Восстановить стандартный Lapis';
  @override
  String get anki_lapis_restore_factory_hint =>
      'Перезаписать тип записи Lapis в Anki версией, встроенной в Fushi, и сбросить все настройки.';
  @override
  String get anki_lapis_restore_factory_confirm =>
      'Это перезапишет стили и шаблоны карточек Lapis в Anki встроенной версией Fushi и сбросит размер шрифта, пользовательский CSS и пользовательские области. Резервная копия текущего состояния будет сохранена. Данные карточек не затрагиваются.';
  @override
  String get anki_lapis_restore_factory_done =>
      'Lapis восстановлен до стандартных настроек';
  @override
  String anki_lapis_restore_factory_failed({required Object error}) =>
      'Ошибка восстановления: ${error}';
  @override
  String get anki_lapis_visual_select_field_hint =>
      'Нажмите на любую часть предпросмотра или выберите ниже. Выбранный элемент — это то, что редактируют элементы управления ниже.';
  @override
  String get anki_lapis_visual_editing_now => 'Редактирование';
  @override
  String get mihon_extension_preview => 'Предпросмотр';
  @override
  String get mihon_extension_preview_warning =>
      'Предпросмотр запускает код расширения до его установки. В библиотеку ничего не добавляется, пока вы не решите установить.';
  @override
  String get mihon_extension_preview_discard => 'Отклонить';
  @override
  String get mihon_extension_preview_source_select =>
      'Выберите источник для предпросмотра';
  @override
  String get mihon_extension_sources_included => 'Включённые источники';
  @override
  String get mihon_extension_preview_read_only =>
      'Предпросмотр доступен только для чтения. Установите расширение, чтобы открывать и читать.';
  @override
  String get selection_copy_empty => 'Текст не выбран.';
  @override
  String get video_library_empty_source_hint =>
      'Добавьте папку с видео из источников, чтобы заполнить библиотеку';
  @override
  String get video_source_scrape_action =>
      'Получить метаданные для этого источника';
  @override
  String get video_source_scrape_settings => 'Настройки получения метаданных';
  @override
  String get video_source_scrape_auto_after_scan =>
      'Получать метаданные после сканирования';
  @override
  String get video_source_scrape_auto_after_scan_hint =>
      'Автоматически получать метаданные после сканирования этого источника';
  @override
  String get video_source_scrape_write_nfo => 'Записывать NFO-файлы';
  @override
  String get video_source_scrape_write_images => 'Записывать файлы изображений';
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
      'Последнее получение (${status}): ${succeeded} успешно, ${pending} в ожидании, ${failed} с ошибкой';
  @override
  String get video_source_scrape_phase_planning => 'Планирование';
  @override
  String get video_source_scrape_phase_recognizing => 'Сопоставление';
  @override
  String get video_source_scrape_phase_fetching => 'Получение метаданных';
  @override
  String get video_source_scrape_phase_applying => 'Сохранение метаданных';
  @override
  String get video_source_scrape_phase_writing_sidecars =>
      'Запись сопроводительных файлов';
  @override
  String get video_source_scrape_status_interrupted => 'Прервано';
  @override
  String get video_source_scrape_locale => 'Язык метаданных';
  @override
  String get video_source_scrape_locale_hint =>
      'Предпочтительный язык для названий, описаний и изображений';
  @override
  String get video_source_scrape_confirmation_title =>
      'Подтвердите совпадение метаданных';
  @override
  String get video_source_scrape_confirmation_hint =>
      'Найдено несколько точных совпадений. Выберите правильное произведение, чтобы сохранить привязку к провайдеру.';
  @override
  String get video_source_scrape_confirmation_skip =>
      'Пропустить это произведение';
  @override
  String get video_source_scrape_nfo_policy => 'Политика записи NFO';
  @override
  String get video_source_scrape_image_policy => 'Политика записи изображений';
  @override
  String get video_source_scrape_policy_skip => 'Не записывать';
  @override
  String get video_source_scrape_policy_missing_only => 'Только при отсутствии';
  @override
  String get video_source_scrape_policy_overwrite => 'Обновлять файлы Fushi';
  @override
  String get video_source_scrape_external_overwrite =>
      'Разрешить перезапись защищённых файлов';
  @override
  String get video_source_scrape_external_overwrite_hint =>
      'Сторонние или отредактированные пользователем файлы остаются защищёнными, пока вы не подтвердите каждую ручную партию повторно.';
  @override
  String get video_source_scrape_external_overwrite_confirm_title =>
      'Перезаписать защищённые файлы?';
  @override
  String get video_source_scrape_external_overwrite_confirm_body =>
      'Эта партия может заменить сторонние NFO/изображения или отредактированные вами файлы Fushi. Медиафайлы не изменяются. Продолжить?';
  @override
  String get video_source_scrape_tasks_open => 'Фоновые задачи';
  @override
  String get video_source_scrape_background_started =>
      'Получение метаданных выполняется в фоне';
  @override
  String get video_source_scrape_tasks_current => 'Текущая задача';
  @override
  String get video_source_scrape_tasks_history => 'Недавние задачи';
  @override
  String get video_source_scrape_tasks_empty =>
      'Задач получения метаданных пока нет';
  @override
  String get video_source_scrape_waiting_confirmation =>
      'Ожидание вашего подтверждения';
  @override
  String get video_source_scrape_phase_scanning => 'Сканирование источника';
  @override
  String get video_library_all_videos => 'Все видео';
  @override
  String get video_work_voice_roles => 'Озвучка и персонажи';
  @override
  String get video_work_cast_crew => 'Актёры и съёмочная группа';
  @override
  String get video_work_trailers => 'Трейлеры';
  @override
  String get video_work_extras => 'Доп. материалы';
  @override
  String get video_work_details => 'Подробности';
  @override
  String get video_work_external_ids => 'Внешние ID';
  @override
  String get video_work_metadata_pending =>
      'Подробные метаданные ещё не получены. Повторите получение для этого источника в разделе «Источники», затем откройте произведение заново.';
  @override
  String get video_work_genres => 'Жанры';
  @override
  String get video_work_keywords => 'Ключевые слова';
  @override
  String get video_work_studios => 'Студии';
  @override
  String get video_work_countries => 'Страны';
  @override
  String get video_work_content_rating => 'Возрастной рейтинг';
  @override
  String get video_all_videos_list_view => 'Список';
  @override
  String get video_all_videos_grid_view => 'Сетка';
  @override
  String video_home_continue_episode_number({required Object n}) =>
      'Воспроизведение эпизода ${n}';
  @override
  String video_home_next_episode_number({required Object n}) =>
      'Далее · Эпизод ${n}';
  @override
  String video_home_recent_episode_number({required Object n}) =>
      'Недавно добавлено · Эпизод ${n}';
  @override
  String video_home_remaining_minutes({required Object minutes}) =>
      'Осталось ${minutes} мин';
  @override
  String get video_subtitle_replay => 'Повторить эту строку';
  @override
  String get manga_ocr_done => 'OCR завершено';
  @override
  String get settings_destination_manga_summary =>
      'Чтение, OCR и онлайн-каталог';
  @override
  String get manga_page_animation => 'Анимация перелистывания';
  @override
  String get manga_page_animation_none => 'Нет';
  @override
  String get manga_page_animation_slide => 'Скольжение';
  @override
  String get manga_page_animation_fade => 'Затухание';
  @override
  String get manga_default_zoom => 'Масштаб по умолчанию';
  @override
  String get manga_zoom_sensitivity => 'Чувствительность масштабирования';
  @override
  String get manga_volume_key_paging => 'Перелистывание кнопками громкости';
  @override
  String get manga_volume_key_paging_subtitle =>
      'Используйте кнопки громкости для перелистывания страниц в читалке манги';
  @override
  String get manga_tap_zone_paging => 'Перелистывание касанием краёв';
  @override
  String get manga_tap_zone_paging_subtitle =>
      'Коснитесь левого или правого края страницы для перелистывания';
  @override
  String get manga_section_viewing => 'Просмотр и перелистывание';
  @override
  String get game_capture_setup_title => 'Завершите настройку захвата';
  @override
  String get game_capture_setup_hint =>
      'Сначала выберите поток диалогов. Fushi может сопоставлять аудио только со строками выбранного потока.';
  @override
  String get game_audio_requires_thread =>
      'Источник захвата аудио может быть готов, но аудио предложений не существует, пока не выбран поток и не получена строка.';
  @override
  String get game_session_waiting_thread => 'Ожидание потока диалогов';
  @override
  String get anki_connect_use_on_mobile => 'Use AnkiConnect on Android';
  @override
  String get anki_connect_use_on_mobile_hint =>
      'Используйте только в доверенной сети. AnkiConnect работает через открытый HTTP; настройте соответствующий API-ключ, затем обновите колоды и типы записей после переключения.';
  @override
  String get anki_connect_api_key_hint =>
      'Обязательно для удалённого AnkiConnect; должен совпадать с ключом, настроенным в дополнении';
  @override
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before enabling the Android backend.';
  @override
  String anki_connect_backend_switch_failed({required Object error}) =>
      'Не удалось переключить бэкенд Anki: ${error}';
  @override
  String get migration_settings_entry => 'Перенос в Fushi';
  @override
  String get migration_settings_entry_subtitle =>
      'Перенести все данные в новое приложение Fushi';
  @override
  String get migration_intro =>
      'Fushi — новое название этого приложения. При переносе все данные экспортируются пакетами в папку обмена, затем Fushi импортирует и проверяет их. Данные здесь остаются нетронутыми, пока вы не удалите это приложение.';
  @override
  String get migration_target_missing =>
      'Fushi ещё не установлено. Сначала установите Fushi, затем вернитесь сюда.';
  @override
  String get migration_download_fushi => 'Скачать Fushi';
  @override
  String get migration_start => 'Начать перенос';
  @override
  String get migration_open_fushi => 'Открыть Fushi';
  @override
  String get migration_include_local_audio =>
      'Также экспортировать локальное аудио произношения (может быть большим)';
  @override
  String migration_batch_running({required Object batch}) =>
      'Экспорт ${batch}…';
  @override
  String migration_batch_done({required Object batch}) =>
      '${batch} экспортировано';
  @override
  String get migration_export_done =>
      'Экспорт завершён. Откройте Fushi для импорта и проверки.';
  @override
  String migration_export_failed({required Object error}) =>
      'Ошибка экспорта: ${error}';
  @override
  String get migration_readonly_note =>
      'Ваши данные экспортированы в Fushi. Это приложение теперь доступно только для чтения: используйте Fushi для чтения и создания карточек. Вы можете повторить экспорт в любое время, если Fushi сообщит о недостающих данных.';
  @override
  String get migration_reexport => 'Повторный экспорт';
  @override
  String get migration_batch_core_label => 'Настройки, прогресс и статистика';
  @override
  String get migration_import_entry => 'Импорт из Hibiki';
  @override
  String get migration_import_entry_subtitle =>
      'Импортировать данные, экспортированные из старого приложения Hibiki';
  @override
  String get migration_import_detected =>
      'Обнаружены данные переноса из Hibiki. Импортировать сейчас?';
  @override
  String get migration_import_start => 'Начать импорт';
  @override
  String migration_import_running({required Object batch}) =>
      'Импорт ${batch}…';
  @override
  String migration_import_verify_failed({
    required Object batch,
    required Object detail,
  }) =>
      '${batch} не прошёл проверку и сохранён для повторного экспорта: ${detail}';
  @override
  String migration_import_counts_failed({required Object detail}) =>
      'Импортированные данные неполные: ${detail}. Повторно экспортируйте недостающие части из Hibiki, затем импортируйте снова.';
  @override
  String get migration_import_success => 'Импорт завершён и проверен.';
  @override
  String get migration_import_nothing =>
      'Данные для переноса не найдены в папке обмена.';
  @override
  String get migration_uninstall_prompt =>
      'Перенос завершён. Удалить старое приложение Hibiki?';
  @override
  String get migration_uninstall_button => 'Удалить Hibiki';
  @override
  String get migration_uninstall_still_installed =>
      'Hibiki всё ещё установлено. Вы можете удалить его в любое время.';
  @override
  String get migration_import_permission_title =>
      'Требуется разрешение на доступ к хранилищу';
  @override
  String get migration_import_permission_body =>
      'Папка обмена была создана старым приложением. Без разрешения «Доступ ко всем файлам» Fushi не сможет её прочитать — данные в целости, просто не могут быть открыты.';
  @override
  String get migration_import_permission_grant => 'Предоставить разрешение';
  @override
  String migration_import_verifying({
    required Object batch,
    required Object done,
    required Object total,
  }) => 'Проверка ${batch} (${done}/${total})';
  @override
  String get migration_import_verifying_hint =>
      'Вычисление контрольных сумм архивов. Для больших библиотек это может занять несколько минут.';
  @override
  String get game_line_copy_tooltip => 'Копировать предложение';
  @override
  String get game_japanese_locale_auto => 'Авто';
  @override
  String get game_japanese_locale_on => 'Всегда вкл.';
  @override
  String get game_japanese_locale_off => 'Выкл.';
  @override
  String get game_japanese_locale => 'Японская локаль';
  @override
  String get game_japanese_locale_hint =>
      'Для сборок с китайским/английским патчем нужно отключить, иначе игра вылетит при запуске';
  @override
  String get video_scrape_diagnostic_export => 'Экспорт диагностики скрейпинга';
  @override
  String get video_scrape_diagnostic_confirm_title =>
      'Экспортировать диагностику скрейпинга?';
  @override
  String get video_scrape_diagnostic_saved => 'Диагностический пакет сохранён';
  @override
  String video_scrape_diagnostic_failed({required Object reason}) =>
      'Не удалось экспортировать диагностический пакет: ${reason}';
  @override
  String get video_scrape_diagnostic_share_subject =>
      'Диагностика скрейпинга видео Fushi';
  @override
  String get video_scrape_diagnostic_confirm_body =>
      'Пакет содержит относительные имена файлов и папок, сводки скрейпинга и оригинальное содержимое NFO. Видео, субтитры, изображения, абсолютные пути, настройки приложения и учётные данные не включены. Оригинальные NFO-файлы сохраняются без изменений и могут содержать личную информацию или секреты; проверьте пакет перед публикацией.';
  @override
  String get video_discovery_search_hint => 'Поиск фильмов, сериалов, аниме';
  @override
  String get video_discovery_hot => 'Популярное сейчас';
  @override
  String get video_discovery_seasonal_anime => 'Сезонное аниме';
  @override
  String get video_discovery_all_works => 'Все произведения';
  @override
  String get video_discovery_search_results => 'Результаты поиска';
  @override
  String get video_discovery_provider_warning =>
      'Некоторые провайдеры недоступны. Показаны доступные результаты.';
  @override
  String get video_discovery_load_failed => 'Не удалось загрузить результаты.';
  @override
  String get video_discovery_empty => 'Совпадений не найдено.';
  @override
  String get video_discovery_resource_search => 'Поиск ресурсов';
  @override
  String get video_discovery_subtitle_search => 'Поиск субтитров';
  @override
  String get video_discovery_subscribe => 'Подписаться';
  @override
  String get video_discovery_subscription_manage => 'Управление подпиской';
  @override
  String get video_discovery_pipeline_idle =>
      'Не загружено → Загрузка → Организация → Субтитры → Скрейпинг → Библиотека';
  @override
  String get video_discovery_details_load_failed =>
      'Не удалось загрузить подробности.';
  @override
  String get video_discovery_sort_popularity => 'Популярность';
  @override
  String get video_discovery_sort_rating => 'Рейтинг';
  @override
  String get video_discovery_sort_release => 'Дата выхода';
  @override
  String get video_discovery_in_library => 'В библиотеке';
  @override
  String get video_discovery_play => 'Воспроизвести';
  @override
  String get download_resources_tab => 'Ресурсы';
  @override
  String get video_external_settings_section =>
      'Внешние провайдеры ресурсов и субтитров';
  @override
  String get video_torznab_settings_title => 'Индексаторы Torznab';
  @override
  String get video_torznab_add => 'Добавить индексатор';
  @override
  String get video_torznab_name => 'Название';
  @override
  String get video_torznab_endpoint => 'Конечная точка';
  @override
  String get video_torznab_endpoint_hint =>
      'Требуется HTTPS, за исключением loopback-адресов.';
  @override
  String get video_torznab_api_key => 'API-ключ';
  @override
  String get video_torznab_priority => 'Приоритет';
  @override
  String get video_torznab_categories => 'Категории';
  @override
  String get video_torznab_categories_hint =>
      'Числовые ID категорий через запятую';
  @override
  String get video_external_enabled => 'Включено';
  @override
  String get video_external_insecure_http => 'Разрешить незащищённый HTTP';
  @override
  String get video_external_insecure_http_hint =>
      'Используйте только для доверенных конечных точек в локальной сети.';
  @override
  String get video_external_endpoint_invalid =>
      'Введите корректную конечную точку без учётных данных, параметров запроса или фрагментов.';
  @override
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  @override
  String get video_opensubtitles_user_agent => 'User-Agent';
  @override
  String get video_opensubtitles_languages_hint =>
      'Коды языков через запятую, например zh-CN,en,ja';
  @override
  String get video_download_path_mappings_title =>
      'Соответствия путей qBittorrent';
  @override
  String get video_download_path_mappings_hint =>
      'Укажите соответствие каждого удалённого корневого каталога qBittorrent локальной папке.';
  @override
  String get video_download_path_mapping_add => 'Добавить соответствие путей';
  @override
  String get video_download_backend_profile_id => 'ID профиля бэкенда';
  @override
  String get video_download_remote_root => 'Удалённый корень';
  @override
  String get video_download_local_root => 'Локальный корень';
  @override
  String get video_download_target_source_title =>
      'Источник видео по умолчанию';
  @override
  String get video_download_target_source_hint =>
      'Новые загрузки размещаются в этом локальном источнике видео.';
  @override
  String get video_download_target_source_none =>
      'Выберите локальный источник видео';
  @override
  String get video_external_remove => 'Удалить';
  @override
  String get video_external_username_optional =>
      'Имя пользователя (необязательно)';
  @override
  String get video_external_password_optional => 'Пароль (необязательно)';
  @override
  String get video_external_api_key => 'API-ключ';
  @override
  String get video_external_save_error =>
      'Не удалось сохранить конфигурацию. Проверьте выделенные поля.';
  @override
  String get video_external_categories_invalid =>
      'Категории должны быть числовыми ID через запятую.';
  @override
  String get video_download_path_mapping_invalid =>
      'Введите ID профиля, удалённый корень и абсолютный локальный путь.';
  @override
  String get video_opensubtitles_endpoint => 'Конечная точка API';
  @override
  String get video_download_target_source_empty =>
      'Нет доступного локального источника видео. Сначала добавьте его на вкладке «Источники».';
  @override
  String get video_setting_drag_seek_sensitivity =>
      'Чувствительность перемотки жестом';
  @override
  String get video_setting_drag_seek_sensitivity_hint =>
      'Длительность перемотки при полном свайпе по экрану: Низкая — около 45 с, Средняя — около 90 с, Высокая — около 180 с. Не зависит от длительности видео. Только для сенсорного управления; мышь и клавиатура не затрагиваются.';
  @override
  String get video_setting_drag_seek_sensitivity_low => 'Низкая';
  @override
  String get video_setting_drag_seek_sensitivity_medium => 'Средняя';
  @override
  String get video_setting_drag_seek_sensitivity_high => 'Высокая';
  @override
  String video_subtitle_read_failed({required Object label}) =>
      'Не удалось прочитать файл субтитров (повреждён или пуст): ${label}';
  @override
  String dict_downloading_size({
    required Object name,
    required Object done,
    required Object total,
  }) => 'Загрузка ${name} (${done} / ${total})';
  @override
  String get video_subtitle_attach_book_missing =>
      'Это видео не в вашей библиотеке, поэтому субтитры не были прикреплены';
  @override
  String get dict_download_hide => 'Продолжить в фоне';
  @override
  String get dict_download_progress_show => 'Показать прогресс';
  @override
  String get dict_download_cancelled => 'Загрузка отменена.';
  @override
  String get dict_download_import_uncancellable => 'Импорт невозможно прервать';
  @override
  String get dict_download_busy => 'Загрузка словаря уже выполняется.';
  @override
  String get gal_hook_ingame_lookup => 'Поиск по словарю в игре';
  @override
  String get gal_hook_ingame_lookup_hint =>
      'Показывать карточку словаря прямо в окне игры (движок KiriKiri, только Windows)';
  @override
  String download_subscription_start_episode({required Object episode}) =>
      '从第 ${episode} 集开始';
  @override
  String get drag_drop_failed =>
      'Не удалось обработать перетащенные файлы. Попробуйте снова.';
  @override
  String get tag_add_failed => 'Не удалось добавить тег. Попробуйте снова.';
  @override
  String get tag_reorder_failed =>
      'Не удалось сохранить новый порядок тегов. Попробуйте снова.';
  @override
  String get download_task_error_summary_source_missing =>
      'Управляемый источник видео отсутствует или недоступен';
  @override
  String get download_task_error_summary_backend_unconfirmed =>
      'Торрент не удалось подтвердить по хешу, названию и категории';
  @override
  String get download_task_error_summary_subtitle =>
      'Субтитры недоступны или не удалось установить';
  @override
  String get download_task_error_summary_backend_unavailable =>
      'Бэкенд загрузки недоступен или больше не соответствует';
  @override
  String get download_task_error_summary_legacy =>
      'Устаревший импорт требует ручного вмешательства';
  @override
  String get download_task_error_summary_torrent_info =>
      'Идентификатор торрента отсутствует или не поддаётся проверке';
  @override
  String get download_task_error_summary_generic => 'В задаче произошла ошибка';
  @override
  String get download_task_error_view_detail => 'Подробности';
  @override
  String get download_task_error_detail_title => 'Подробности ошибки';
  @override
  String get download_task_error_copied => 'Подробности ошибки скопированы';
  @override
  String get download_task_lifecycle_active => 'Выполняется';
  @override
  String get download_task_lifecycle_needs_attention => 'Требует внимания';
  @override
  String get download_task_location_missing =>
      'Расположение файла задачи недоступно.';
  @override
  String get download_task_location_open_failed =>
      'Не удалось открыть расположение файла.';
  @override
  String get download_task_open_location => 'Показать в папке';
  @override
  String get download_task_lifecycle_completed => 'Завершено';
  @override
  String get download_task_lifecycle_failed => 'Ошибка';
  @override
  String get download_task_lifecycle_cancelled => 'Отменено';
  @override
  String get download_task_stage_enqueue => 'Очередь';
  @override
  String get download_task_stage_download => 'Загрузка';
  @override
  String get download_task_stage_organize => 'Организация';
  @override
  String get download_task_stage_subtitle => 'Субтитры';
  @override
  String get download_task_stage_import => 'Импорт';
  @override
  String get download_task_stage_scrape => 'Скрейпинг';
  @override
  String get video_discovery_manual_identity_hint =>
      'Введите название, внешний ID и год выше для активации поиска';
  @override
  String get collection_split_move_to => 'Переместить в';
  @override
  String get collection_split_new_group => 'Новая группа';
  @override
  String collection_split_selected({required Object n}) => 'Выбрано: ${n}';
  @override
  String get sync_pair_rate_limited =>
      'Слишком много попыток. Подождите несколько минут и попробуйте снова.';
  @override
  String get sync_pair_tls_failed =>
      'Ошибка проверки сертификата. Сертификат устройства не совпадает с закреплённым.';
  @override
  String get sync_pair_timeout => 'Устройство не ответило вовремя.';
  @override
  String get sync_pair_expired =>
      'Время сопряжения истекло. Начните сопряжение заново с этого устройства.';
  @override
  String get sync_pair_upgrade_required =>
      'На другом устройстве установлена устаревшая версия, которая не может безопасно выполнить сопряжение из этой сети. Обновите его, затем повторите сопряжение.';
  @override
  String get sync_pair_fingerprint_changed_title => 'Сертификат изменился';
  @override
  String get sync_pair_fingerprint_stored_label => 'Закреплён ранее';
  @override
  String get sync_pair_fingerprint_new_label => 'Обнаружен сейчас';
  @override
  String get sync_pair_fingerprint_retrust => 'Сбросить и доверять заново';
  @override
  String get sync_pair_fingerprint_changed_body =>
      'Этот адрес ранее был привязан к другому сертификату. Продолжайте только если знаете, что устройство было переустановлено или сброшено — иначе кто-то может перехватывать соединение.';
  @override
  String get interconnect_upload_section_footer =>
      'Выберите, что это устройство отправляет подключённому устройству. Не зависит от переключателей облачного резервного копирования и по умолчанию отключено. Эти переключатели действуют только при включённом соединении: отключение соединения останавливает все передачи.';
  @override
  String get remote_delete_audiobook_partial =>
      'Книга удалена, но аудиокнигу не удалось удалить на сопряжённом устройстве';
  @override
  String get download_detail_task_queued =>
      'В очереди: ожидание освобождения слота другими загрузками. Задача ещё не передана загрузчику, поэтому данные о пирах и трекерах отсутствуют.';
  @override
  String video_subscription_group_release_count({required Object count}) =>
      'Выпусков: ${count}';
  @override
  String get download_task_priority => 'Приоритет в очереди';
  @override
  String get download_task_priority_high => 'Высокий';
  @override
  String get download_task_priority_normal => 'Обычный';
  @override
  String get download_task_priority_low => 'Низкий';
  @override
  String get library_view_import => 'Импорт';
  @override
  String get quick_import_title => 'Быстрый импорт';
  @override
  String get media_source_section_title => 'Источники библиотеки';
  @override
  String get media_import_folder => 'Импорт папки';
  @override
  String get media_import_folder_as_source =>
      'Добавить как источник библиотеки';
  @override
  String get book_import_folder_as_source_hint =>
      'Продолжать сканировать эту папку на наличие новых книг';
  @override
  String get media_import_folder_once => 'Импортировать однократно';
  @override
  String get library_empty_go_import => 'Перейти к импорту';
  @override
  String get game_import_drop_hint =>
      'Вы также можете перетащить .exe файлы в библиотеку игр';
  @override
  String get library_view_sources => 'Источники';
  @override
  String get video_setting_secondary_av_delay =>
      'Синхронизация вторичных субтитров';
  @override
  String get video_setting_secondary_av_delay_hint =>
      'Настроить смещение вторичных субтитров отдельно. По умолчанию следует за основным смещением.';
  @override
  String get video_setting_secondary_delay_follow => 'Следовать за основными';
  @override
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      'Синхронизация вторичных субтитров: ${ms} мс';
  @override
  String get video_subtitle_secondary_delay_follow_osd =>
      'Синхронизация вторичных субтитров: следовать за основными';
  @override
  String get video_setting_subtitle_anchor => 'Привязка основных субтитров';
  @override
  String get video_subtitle_anchor_bottom => 'Снизу';
  @override
  String get video_subtitle_anchor_top => 'Сверху';
  @override
  String get video_setting_subtitle_drag_adjust =>
      'Перетаскивание для регулировки позиции';
  @override
  String get video_subtitle_drag_adjust_hint =>
      'Перетащите субтитры вверх или вниз для изменения положения';
  @override
  String get anki_connect_mobile_disabled_key_cleared =>
      'AnkiConnect на мобильных устройствах требует API-ключ, поэтому его удаление отключило переключатель. Anki снова использует встроенный бэкенд.';
  @override
  String manga_import_batch_hint({required Object n}) =>
      'В этой папке ${n} томов; каждый импортируется как отдельная книга с именем файла.';
  @override
  String manga_import_batch_done({
    required Object imported,
    required Object skipped,
    required Object failed,
  }) => 'Импортировано ${imported}, пропущено ${skipped}, ошибок ${failed}.';
  @override
  String get srt_book_reimport => 'Повторный импорт';
  @override
  String get srt_book_reimport_subtitle_hint =>
      'Замена субтитров пересоздаёт текст книги из новых реплик.';
  @override
  String get srt_book_reimport_no_cues =>
      'В этом файле не найдено строк субтитров';
  @override
  String get srt_book_reimport_body_rebuilt =>
      'Текст книги пересоздан — откройте книгу заново для чтения';
  @override
  String get video_setting_torrent_backend_embedded => 'Встроенный движок';
  @override
  String get download_backend_unsupported_note =>
      'Встроенный движок недоступен на этой платформе. Загрузки используют внешний qBittorrent.';
  @override
  String get aidoku_runtime_unavailable =>
      'Расширения Aidoku в настоящее время доступны только на macOS.';
  @override
  String get aidoku_extensions_title => 'Расширения Aidoku';
  @override
  String get aidoku_extension_empty => 'Расширения Aidoku не установлены.';
  @override
  String get aidoku_extension_remove => 'Удалить расширение Aidoku';
  @override
  String get aidoku_extension_warning =>
      'Расширения Aidoku выполняют сторонний код WebAssembly с сетевым доступом. Продолжайте только с источниками, которым вы доверяете.';
  @override
  String get aidoku_webview_unsupported =>
      'Этот источник требует API WebView Aidoku, которые пока не поддерживаются.';
  @override
  String get aidoku_extension_imported => 'Расширение Aidoku импортировано';
  @override
  String get aidoku_extension_import => 'Импорт расширения Aidoku (.aix)';
  @override
  String get aidoku_extension_confirm_title => 'Установить расширение Aidoku?';
  @override
  String get aidoku_extension_version => 'Версия';
  @override
  String get aidoku_repository_url => 'URL репозитория';
  @override
  String get aidoku_repository_sources => 'Источники репозитория';
  @override
  String get aidoku_repository_identity_mismatch =>
      'Загруженный пакет не соответствует индексу репозитория.';
  @override
  String get aidoku_repository_installed => 'Установлено';
  @override
  String get aidoku_repository_search => 'Поиск источников репозитория';
  @override
  String get aidoku_repository_install => 'Установить';
  @override
  String get aidoku_repository_update => 'Обновить';
  @override
  String get aidoku_repository_add => 'Добавить репозиторий Aidoku';
  @override
  String get aidoku_repository_added => 'Репозиторий Aidoku добавлен';
  @override
  String get aidoku_repository_browse => 'Обзор репозитория';
  @override
  String get aidoku_repository_hint =>
      'Вставьте URL домашней страницы или index.min.json репозитория Aidoku. Репозиторий сообщества подставлен по умолчанию.';
  @override
  String get aidoku_repository_remove => 'Удалить репозиторий';
  @override
  String get aidoku_repository_empty => 'Репозитории Aidoku не добавлены.';
  @override
  String get dict_language_tooltip => 'Язык содержимого';
  @override
  String get dict_language_title => 'Язык содержимого словаря';
  @override
  String get dict_language_description =>
      'Определяет, какой шрифт используется для отображения текста словаря. «Автоматически» использует язык, указанный в словаре.';
  @override
  String get dict_language_auto => 'Автоматически';
  @override
  String get book_language_action => 'Язык содержимого';
  @override
  String get book_language_description =>
      'Определяет, какой шрифт используется для отображения текста книги. «Автоматически» использует язык, указанный в EPUB.';
  @override
  String get local_audio_reference_unavailable =>
      'Невозможно сослаться на исходный файл без полного доступа к файлам; вместо этого импортирована копия.';
  @override
  String get video_collection_scrape => 'Получить информацию и обложку';
  @override
  String get update_testflight_open => 'Открыть TestFlight';
  @override
  String get update_app_store_open => 'Открыть App Store';
  @override
  String get update_release_page_open => 'Страница релиза';
  @override
  String update_install_gal_hook_holder({
    required Object pid,
    required Object path,
  }) =>
      'Компонент захвата Galgame используется: PID ${pid} — ${path} (это игра, в которую вы играете, или её хост захвата). Закройте игру, затем обновите снова.';
  @override
  String get game_hook_reason_protocol_mismatch =>
      'Компонент захвата не соответствует этой сборке Fushi. Он поставляется внутри Fushi, устанавливать его отдельно не нужно. Сначала полностью закройте игру и запустите её заново: процесс игры может удерживать компонент, внедрённый предыдущей сессией. Если несоответствие сохраняется, файлы компонента на диске устарели, потому что последнее обновление Fushi не смогло их заменить, пока игра была запущена. Закройте все игры, затем запустите установщик Fushi заново.';
  @override
  String get video_mining_still_format => 'Формат скриншота видеокарточки';
  @override
  String get video_mining_still_format_hint =>
      'Формат кодирования для статичного скриншота карточки. JPG значительно меньше; PNG без потерь, но в несколько раз больше. На анимированные обложки не влияет — они следуют настройке формата анимации.';
  @override
  String get mining_still_format_jpg => 'JPG (компактнее)';
  @override
  String get mining_still_format_png => 'PNG (без потерь)';
  @override
  String get gal_mining_still_format => 'Формат скриншота игровой карточки';
  @override
  String get gal_mining_still_format_hint =>
      'Те же форматы, что и для видеокарточек, хранятся отдельно. Снимки окна игры приходят в PNG: сохранение PNG — без потерь, но в несколько раз больше, а JPG соответствует прежнему способу сжатия этих скриншотов.';
  @override
  String get manga_source_cloudflare_blocked =>
      'Этот источник защищён Cloudflare и пока недоступен для встроенного ридера.';
  @override
  String get manga_global_search_title => 'Поиск по всем источникам';
  @override
  String get manga_global_search_hint => 'Поиск по всем включённым источникам';
  @override
  String get manga_global_search_prompt =>
      'Введите название для поиска по всем включённым источникам манги одновременно.';
  @override
  String get anki_connect_addon_install => 'Установить AnkiConnect';
  @override
  String get anki_connect_addon_install_hint =>
      'Загружает AnkiConnect из AnkiWeb и передаёт в запущенный Anki. Anki попросит подтвердить, а затем предложит перезапуск.';
  @override
  String get anki_connect_addon_handed =>
      'AnkiConnect передан в Anki. Подтвердите запрос в Anki, затем перезапустите Anki.';
  @override
  String get anki_connect_addon_anki_not_running =>
      'Запущенный Anki не найден. Сначала запустите Anki на компьютере, затем попробуйте снова.';
  @override
  String anki_connect_addon_download_failed({required Object error}) =>
      'Не удалось загрузить AnkiConnect из AnkiWeb: ${error}';
  @override
  String get anki_connect_addon_invalid =>
      'AnkiWeb вернул что-то, не являющееся пригодным пакетом дополнения.';
  @override
  String anki_connect_addon_launch_failed({required Object error}) =>
      'Не удалось передать дополнение в Anki: ${error}';
  @override
  String get settings_content_language_title => 'Язык содержимого по умолчанию';
  @override
  String get settings_content_language_unset => 'Не задан';
  @override
  String get settings_content_language_description =>
      'Резервный язык для контента, в котором язык не указан. Индивидуальные настройки книги, видео, игры и словаря имеют приоритет.';
  @override
  String get manga_ocr_lens_language_label => 'Язык распознавания';
  @override
  String get sync_err_peer_unreachable =>
      'Не удаётся связаться с сопряжённым устройством — возможно, оно не в сети или на нём не запущено Fushi.';
  @override
  String get remote_book_list_failed =>
      'Не удалось получить удалённую библиотеку с сопряжённого устройства.';
  @override
  String get video_torznab_settings_hint =>
      'Настройте один или несколько Jackett, Prowlarr или совместимых Torznab-эндпоинтов. Секреты никогда не экспортируются в резервных копиях; они могут синхронизироваться с сопряжёнными устройствами через Interconnect (можно отключить в настройках Interconnect).';
  @override
  String get video_opensubtitles_settings_hint =>
      'Учётные данные API никогда не экспортируются в резервных копиях; они могут синхронизироваться с сопряжёнными устройствами через Interconnect (можно отключить в настройках Interconnect).';
  @override
  String get sync_interconnect_service_config_toggle =>
      'Синхронизация конфигурации сервисов от хоста';
  @override
  String get sync_interconnect_service_config_toggle_desc =>
      'Получать настройки внешних сервисов и API-ключи (Jimaku, TMDB, Torznab, OpenSubtitles, трекинг) от сопряжённого хоста по зашифрованному каналу Interconnect. Требуется TLS.';
  @override
  String get video_setting_subtitle_backfill =>
      'Автоматическая загрузка субтитров после скрейпинга';
  @override
  String get video_setting_subtitle_backfill_hint =>
      'После завершения скрейпинга видео без субтитров получают их из настроенных онлайн-источников. Существующие субтитры не заменяются.';
  @override
  String get video_setting_subtitle_sources_section =>
      'Онлайн-источники субтитров';
  @override
  String get video_subtitle_no_source_configured =>
      'Субтитры не найдены · настройте онлайн-источник субтитров';
  @override
  String get anime_download_subs_retrying =>
      'Субтитры: ещё не загружены — повторная попытка автоматически';
  @override
  String get video_jimaku_language_follow_video => 'Следовать за языком видео';
  @override
  String get video_setting_jimaku_default_language_hint =>
      'По умолчанию используется язык видео (аудиодорожка / метаданные скрейпинга). Выберите конкретный язык, чтобы всегда предпочитать его.';
  @override
  String get onboarding_title => 'Начало работы';
  @override
  String get onboarding_welcome_headline => 'Добро пожаловать!';
  @override
  String get onboarding_feature_anki => 'Карточки Anki';
  @override
  String get onboarding_feature_anki_hint =>
      'Подключите AnkiConnect или AnkiDroid для создания карточек';
  @override
  String get onboarding_feature_backup =>
      'Резервное копирование и синхронизация';
  @override
  String get onboarding_feature_backup_hint =>
      'Создавайте резервные копии данных в Google Drive, WebDAV и другие хранилища';
  @override
  String get onboarding_feature_interconnect => 'Соединение устройств';
  @override
  String get onboarding_feature_interconnect_hint =>
      'Свяжите устройства в локальной сети для обмена библиотеками и прогрессом';
  @override
  String get onboarding_step_dictionary_action => 'Открыть менеджер словарей';
  @override
  String get onboarding_step_anki_title => 'Настройка Anki';
  @override
  String get onboarding_step_anki_action =>
      'Открыть настройки создания карточек';
  @override
  String get onboarding_step_backup_title => 'Настройка резервного копирования';
  @override
  String get onboarding_step_backup_body =>
      'Выберите хранилище для резервных копий и войдите в систему, или экспортируйте локальный файл резервной копии.';
  @override
  String get onboarding_step_backup_action =>
      'Открыть настройки резервного копирования';
  @override
  String get onboarding_step_interconnect_title =>
      'Настройка соединения устройств';
  @override
  String get onboarding_step_interconnect_body =>
      'Включите соединение и свяжите устройства в локальной сети для обмена библиотеками, прогрессом и результатами поиска.';
  @override
  String get onboarding_step_interconnect_action =>
      'Открыть настройки соединения';
  @override
  String get onboarding_finish_title => 'Всё готово';
  @override
  String get onboarding_finish_body =>
      'Вы можете вернуться к этому руководству в любое время: Настройки → Система.';
  @override
  String get onboarding_action_next => 'Далее';
  @override
  String get onboarding_action_finish => 'Готово';
  @override
  String get onboarding_action_skip => 'Пропустить';
  @override
  String get onboarding_reopen => 'Руководство по началу работы';
  @override
  String get onboarding_welcome_body =>
      'Сначала выберите язык интерфейса и тему — далее мы проведём вас через остальные шаги.';
  @override
  String get onboarding_features_title => 'Выберите, что вы используете';
  @override
  String get onboarding_features_modules_label =>
      'Вкладки библиотеки (снятые скрыты из панели навигации; можно изменить в Настройках)';
  @override
  String get onboarding_features_setup_label => 'Что настроить далее';
  @override
  String get onboarding_feature_manga => 'Библиотека манги';
  @override
  String get onboarding_feature_manga_hint =>
      'Читайте мангу с OCR-поиском по словарю';
  @override
  String get onboarding_feature_video => 'Видеобиблиотека';
  @override
  String get onboarding_feature_video_hint =>
      'Смотрите видео с поиском по субтитрам и созданием карточек';
  @override
  String get onboarding_feature_games => 'Библиотека Galgame';
  @override
  String get onboarding_feature_games_hint =>
      'Запускайте гальге с перехватом текста и поиском по словарю (только Windows)';
  @override
  String get onboarding_feature_pack => 'Рекомендуемый набор (словари + аудио)';
  @override
  String get onboarding_feature_pack_hint =>
      'Одна загрузка настраивает японские словари и аудио произношения JA/EN';
  @override
  String get onboarding_step_pack_title => 'Установка рекомендуемого набора';
  @override
  String get onboarding_step_pack_body =>
      'Рекомендуемый набор включает японские словари слов, акцентов и частотности, а также базы аудио произношения японского/английского. Загрузите и импортируйте его здесь; импорт заменяет локальные данные, поэтому выполняйте на чистой установке. Изучаете другой язык? Используйте менеджер словарей для импорта собственных словарей.';
  @override
  String get onboarding_step_pack_download_action =>
      'Загрузить и импортировать';
  @override
  String get onboarding_step_pack_import_existing_action =>
      'Импортировать загруженный набор';
  @override
  String get onboarding_step_pack_pick_action =>
      'Выбрать локальный файл набора';
  @override
  String get onboarding_pack_downloading =>
      'Загрузка… можно отменить, продолжится при следующем запуске';
  @override
  String onboarding_pack_download_failed({required Object message}) =>
      'Ошибка загрузки: ${message}';
  @override
  String get onboarding_step_extension_title => 'Расширение для браузера';
  @override
  String get onboarding_step_extension_body =>
      'Установите расширение-компаньон для поиска слов на любой веб-странице.';
  @override
  String get onboarding_step_extension_action =>
      'Открыть руководство по расширению';
  @override
  String get onboarding_step_fonts_title => 'Шрифты для чтения';
  @override
  String get onboarding_step_fonts_body =>
      'Импортируйте пользовательские шрифты и выберите, где их использовать: в интерфейсе, тексте книг или словарях.';
  @override
  String get settings_section_modules => 'Функциональные модули';
  @override
  String get module_toggle_hint =>
      'Показывать вкладку этой библиотеки в панели навигации; отключите, чтобы скрыть';
  @override
  String get video_setting_youtube_quality => 'Качество YouTube';
  @override
  String get video_setting_youtube_quality_hint =>
      'Начинать потоки с наивысшего уровня до выбранного предела; «Авто» предпочитает плавное воспроизведение (совместимый с оборудованием кодек, до 1080p)';
  @override
  String get library_view_discover => 'Обзор';
  @override
  String get manga_discovery_section_trending => 'В тренде';
  @override
  String get manga_discovery_section_popular => 'Популярное';
  @override
  String get manga_discovery_section_top_rated => 'Лучшие по оценкам';
  @override
  String get manga_discovery_section_latest_finished => 'Недавно завершённые';
  @override
  String get manga_discovery_load_failed =>
      'Не удалось загрузить ленту обзора.';
  @override
  String get manga_discovery_match_section => 'Читать из источника';
  @override
  String get manga_discovery_match_running =>
      'Поиск совпадений в включённых источниках...';
  @override
  String get manga_discovery_match_none =>
      'Совпадений в включённых источниках не найдено.';
  @override
  String get manga_discovery_status_releasing => 'Выходит';
  @override
  String get manga_discovery_status_finished => 'Завершено';
  @override
  String get manga_discovery_status_hiatus => 'На паузе';
  @override
  String get manga_discovery_status_cancelled => 'Отменено';
  @override
  String get manga_discovery_status_not_yet_released => 'Ещё не выпущено';
  @override
  String manga_discovery_source_popular({required Object source}) =>
      'Популярное на ${source}';
  @override
  String get mihon_extension_error => 'Ошибка расширения';
  @override
  String get discovery_all_sources => 'Все источники';
  @override
  String get discovery_search_hint => 'Поиск онлайн-ресурсов';
  @override
  String get discovery_enter_query_hint => 'Введите ключевое слово для поиска';
  @override
  String get discovery_empty => 'Нет результатов';
  @override
  String get discovery_partial_failure => 'Некоторые источники недоступны';
  @override
  String get discovery_load_more => 'Загрузить ещё';
  @override
  String get discovery_download_queued => 'Добавлено в загрузки';
  @override
  String get discovery_torrent_pushed => 'Торрент-задача добавлена';
  @override
  String get discovery_torrent_failed => 'Не удалось добавить торрент-задачу';
  @override
  String get discovery_kind_novel => 'Ранобэ';
  @override
  String get discovery_kind_audiobook => 'Аудиокниги';
  @override
  String get discovery_source_pick_hint =>
      'Выберите источник для просмотра или введите ключевое слово для поиска по всем источникам';
  @override
  String get discovery_source_query_required =>
      'Этот источник поддерживает только поиск по ключевым словам';
  @override
  String get manga_discovery_sources_browse => 'Просмотр источника';
  @override
  String get discovery_kind_manga => 'Манга';
  @override
  String get game_capture_workbench_tab => 'Рабочая область захвата';
  @override
  String get video_builtin_sources_title => 'Встроенные источники';
  @override
  String get video_resource_no_provider_title =>
      'Индексатор ресурсов не настроен';
  @override
  String get video_subtitle_no_provider_title =>
      'Провайдер субтитров не настроен';
  @override
  String get video_subtitle_no_provider_hint =>
      'Введите API-ключ Jimaku или включите OpenSubtitles в разделе Настройки, Загрузки, Внешние провайдеры ресурсов и субтитров.';
  @override
  String get anime_download_require_subs => 'Требуются субтитры';
  @override
  String get video_jimaku_scope_hint =>
      'Японские субтитры для аниме и японских игровых фильмов/сериалов. Требуется бесплатный API-ключ.';
  @override
  String get video_builtin_apibay_hint =>
      'Фильмы и сериалы. Публичный индекс, аккаунт не нужен.';
  @override
  String get video_builtin_knaben_hint =>
      'Фильмы и сериалы. Агрегирует несколько публичных индексаторов.';
  @override
  String get video_jimaku_enabled_hint =>
      'Если выключено, Jimaku пропускается, даже если API-ключ сохранён.';
  @override
  String get discovery_sources_settings_title => 'Источники обнаружения';
  @override
  String get discovery_sources_settings_hint =>
      'Какие встроенные источники участвуют в поиске «Все источники» на странице обнаружения. Выбор одного источника в выпадающем списке всегда работает, даже если он здесь отключён.';
  @override
  String get video_builtin_sources_hint =>
      'Встроены в приложение: без аккаунта, без API-ключа. Отключите источник, чтобы исключить его из поиска ресурсов.';
  @override
  String get video_builtin_nyaa_hint =>
      'Только аниме. Фильмы и сериалы покрываются двумя публичными индексаторами ниже.';
  @override
  String get video_resource_no_provider_hint =>
      'Для этого поиска не нашлось провайдера. Включите встроенный источник или добавьте Torznab-индексатор в разделе Настройки, Загрузки, Внешние провайдеры ресурсов и субтитров.';
  @override
  String discovery_source_kinds_label({required Object kinds}) =>
      'Охватывает: ${kinds}';
  @override
  String get video_source_scrape_rescrape_source =>
      'Пересканировать этот источник';
  @override
  String get video_source_scrape_run_detail_title => 'Результат сканирования';
  @override
  String get video_source_scrape_run_no_issues =>
      'Предупреждения и ошибки не зафиксированы.';
  @override
  String get video_source_scrape_manual_search_title =>
      'Указать произведение вручную';
  @override
  String get video_source_scrape_manual_search_hint =>
      'Найдите произведение по названию в провайдере метаданных и выберите нужное.';
  @override
  String get video_source_scrape_manual_search_action => 'Искать';
  @override
  String get video_source_scrape_manual_search_empty => 'Нет результатов';
  @override
  String get profile_media_manga => 'Манга';
  @override
  String get profile_media_game => 'Игра';
  @override
  String get profile_media_browser => 'Браузер';
  @override
  String get mihon_store_remove => 'Удалить магазин расширений';
  @override
  String get video_import_folder_as_source_hint =>
      'Продолжать сканировать эту папку на наличие новых видео';
  @override
  String get manga_import_folder_as_source_hint =>
      'Продолжать сканировать эту папку на наличие новой манги';
  @override
  String get download_no_managed_video_source =>
      'Управляемый видеоисточник ещё не добавлен. Для загрузок нужна локальная видеопапка.';
  @override
  String get download_add_video_source => 'Добавить видеоисточник';
  @override
  String get video_subtitle_prev_cue_align =>
      'Привязать предыдущую строку к текущему моменту';
  @override
  String get video_subtitle_next_cue_align =>
      'Привязать следующую строку к текущему моменту';
  @override
  String video_control_custom_action({required Object index}) =>
      'Быстрое действие ${index}';
  @override
  String get video_control_custom_action_none => 'Не назначено';
  @override
  String get settings_destination_storage => 'Хранилище';
  @override
  String get settings_destination_storage_summary =>
      'Расположение данных и использование диска';
  @override
  String get storage_overview_section => 'Использование диска';
  @override
  String get storage_overview_total => 'Всего';
  @override
  String get storage_overview_refresh => 'Пересканировать';
  @override
  String get storage_overview_scanning => 'Сканирование…';
  @override
  String get storage_category_books => 'Книги и аудиокниги';
  @override
  String get storage_category_dictionaries => 'Словари';
  @override
  String get storage_category_video_downloads => 'Загруженные видео';
  @override
  String get storage_category_covers => 'Обложки и миниатюры';
  @override
  String get storage_category_subtitles => 'Субтитры';
  @override
  String get storage_category_shaders => 'Видеошейдеры';
  @override
  String get storage_category_custom_fonts => 'Пользовательские шрифты';
  @override
  String get storage_category_web => 'Веб-архив и данные браузера';
  @override
  String get storage_category_exports => 'Экспорт';
  @override
  String get storage_category_database => 'База данных и внутренние данные';
  @override
  String get storage_category_ocr_models => 'Модели OCR для манги';
  @override
  String storage_entry_more_rest({required Object n, required Object size}) =>
      'Ещё ${n} элементов, всего ${size}';
  @override
  String storage_entry_delete_confirm_title({required Object name}) =>
      'Удалить ${name}?';
  @override
  String get storage_entry_delete_book_confirm_body =>
      'Будет удалена книга, прогресс чтения и копии привязанного аудио с этого устройства.';
  @override
  String get storage_entry_delete_dictionary_confirm_body =>
      'Будет удалён словарь и его импортированные данные.';
  @override
  String get storage_entry_delete_done => 'Удалено';
  @override
  String storage_entry_delete_failed({required Object reason}) =>
      'Ошибка удаления: ${reason}';
  @override
  String get storage_modules_anime4k_title => 'Шейдеры Anime4K';
  @override
  String get storage_modules_anime4k_hint =>
      'Можно загрузить снова в любое время в настройках видео';
  @override
  String storage_modules_anime4k_delete_done({required Object n}) =>
      'Удалено файлов шейдеров: ${n}';
  @override
  String get storage_bundled_section => 'Встроенные компоненты';
  @override
  String get storage_bundled_hint =>
      'Поставляются с установщиком; удалённые файлы вернутся при следующем обновлении, показаны для справки.';
  @override
  String get storage_dictionary_delete_incomplete =>
      'Словарь всё ещё присутствует после удаления, см. журнал ошибок';
  @override
  String get module_extension_label => 'Расширение для браузера';
  @override
  String get onboarding_feature_books => 'Библиотека романов';
  @override
  String get onboarding_feature_books_hint =>
      'Читайте EPUB-романы с поиском по словарю и синхронизацией аудиокниг';
  @override
  String get onboarding_feature_extension_hint =>
      'Ищите слова на любой веб-странице (только десктоп)';
  @override
  String get video_setting_tap_toggles_playback =>
      'Нажатие на видео для воспроизведения/паузы';
  @override
  String get video_setting_tap_toggles_playback_hint =>
      'Отключите, чтобы нажатие на видео только показывало элементы управления';
  @override
  String get manga_ocr_engine_auto_desc =>
      'Предпочитает уже настроенный офлайн-движок; никогда не загружает в Lens самостоятельно.';
  @override
  String get manga_ocr_engine_local_onnx_desc =>
      'Полностью офлайн, лучшее качество. Требуется однократная загрузка модели, на старом оборудовании работает медленно.';
  @override
  String get manga_ocr_engine_google_lens_desc =>
      'Требуется интернет, изображения страниц отправляются в Google. Быстро и без загрузки, но качество ниже локальной модели.';
  @override
  String get manga_ocr_engine_external_desc =>
      'Вызывает установленную вами команду mokuro. Только для десктопа.';
  @override
  String get manga_ocr_engine_paired_host_desc =>
      'Передаёт работу сопряжённому устройству в вашей сети. Ничего не загружается на это устройство.';
  @override
  String manga_ocr_model_disk_usage({required Object size}) =>
      'Занимает ${size} на диске';
  @override
  String manga_ocr_model_download_size({required Object size}) =>
      'Требуется ${size}';
  @override
  String manga_ocr_delete_done_freed({required Object size}) =>
      'Модели удалены, освобождено ${size}';
  @override
  String get manga_ocr_model_unused_by_engine =>
      'Текущий движок не использует эти локальные файлы моделей.';
  @override
  String manga_ocr_download_total_progress({
    required Object done,
    required Object total,
  }) => '${done} из ${total}';
  @override
  String get media_source_network_subtitle_video =>
      'Удалённая библиотека WebDAV (потоковое воспроизведение на месте)';
  @override
  String get jellyfin_settings_title => 'Медиасервер (Jellyfin / Emby)';
  @override
  String get jellyfin_server_url => 'URL сервера';
  @override
  String get jellyfin_sign_in => 'Войти';
  @override
  String get jellyfin_sign_out => 'Выйти';
  @override
  String get jellyfin_sign_in_failed => 'Ошибка входа';
  @override
  String get jellyfin_settings_hint =>
      'Видео на сервере отображаются в видеотеке и воспроизводятся напрямую.';
  @override
  String get video_setting_mpv_lua_scripts => 'Загрузить Lua-скрипты';
  @override
  String get video_setting_mpv_lua_scripts_hint =>
      'Загружать все файлы .lua из папки mpv_scripts в плеер. Отключение вступит в силу при следующем открытии видео.';
  @override
  String get video_setting_mpv_lua_scripts_import =>
      'Импортировать Lua-скрипты';
  @override
  String get video_setting_mpv_lua_scripts_imported => 'Скрипты импортированы';
  @override
  String get video_setting_mpv_lua_scripts_dir_copy =>
      'Скопировать путь к папке скриптов';
  @override
  String get video_setting_mpv_lua_scripts_dir_copied =>
      'Путь к папке скопирован';
  @override
  String get interconnect_share_statistics => 'Делиться статистикой';
  @override
  String get interconnect_share_statistics_hint =>
      'Время чтения и просмотра, количество символов, счётчики поиска и создания карточек';
  @override
  String get interconnect_share_favorites => 'Делиться избранным';
  @override
  String get interconnect_share_favorites_hint =>
      'Избранные слова и предложения, включая удаление из избранного';
  @override
  String get interconnect_share_section => 'Обмен с сопряжёнными устройствами';
  @override
  String get interconnect_share_section_footer =>
      'Данные синхронизируются в обе стороны с сопряжённым устройством и включены по умолчанию. Отключение прекращает и отправку, и получение.';
  @override
  String get game_hook_mining_no_session_lines =>
      'Захваченных строк пока нет, поэтому не к чему привязать эту карточку. Выберите другой текстовый поток в рабочей области.';
  @override
  String get shortcut_action_manga_pan_up => 'Сдвиг вверх';
  @override
  String get shortcut_action_manga_pan_down => 'Сдвиг вниз';
  @override
  String get shortcut_action_manga_pan_left => 'Сдвиг влево';
  @override
  String get shortcut_action_manga_pan_right => 'Сдвиг вправо';
  @override
  String get drag_drop_folder_source_added =>
      'Папка добавлена как источник библиотеки и просканирована.';
  @override
  String get drag_drop_folder_source_exists =>
      'Эта папка уже является источником библиотеки.';
  @override
  String get sync_pair_invalid_url => 'Неверный формат адреса';
  @override
  String get sync_pair_peer_requires_https =>
      'Это устройство принимает только HTTPS. Используйте адрес https://.';
  @override
  String get sync_pair_peer_not_https =>
      'Устройство не использует HTTPS на этом порту. Используйте адрес http://.';
  @override
  String get sync_pair_not_fushi_discovered =>
      'Устройство Fushi по этому адресу не найдено.';
  @override
  String get shortcut_action_popup_play_audio => 'Воспроизвести аудио слова';
  @override
  String get sync_progress_asset_transfer => 'Подготовка передачи';
  @override
  String get sync_asset_dictionary_upload => 'Загрузить словари на устройство';
  @override
  String get sync_asset_dictionary_download => 'Скачать словари с устройства';
  @override
  String get sync_asset_local_audio_upload =>
      'Загрузить локальные аудиобазы на устройство';
  @override
  String get sync_asset_local_audio_download =>
      'Скачать локальные аудиобазы с устройства';
  @override
  String get sync_asset_upload_hint =>
      'Отправляет то, что есть на этом устройстве и отсутствует на удалённом. Пакеты могут быть большими.';
  @override
  String get sync_asset_upload_action => 'Загрузить';
  @override
  String get sync_asset_download_action => 'Скачать';
  @override
  String get sync_asset_download_hint =>
      'Получает то, что есть на удалённом устройстве и отсутствует на этом, включая записи, удалённые вами локально.';
  @override
  String get sync_asset_legacy_notice_title =>
      'Синхронизация словарей и аудио теперь ручная';
  @override
  String get sync_asset_legacy_notice_body =>
      'На этом устройстве была включена автоматическая синхронизация словарей и локальных аудиобаз. Этот переключатель убран — используйте действия «Загрузить» / «Скачать» ниже, когда нужно их передать. Ничего не удалено, но новые словари больше не резервируются автоматически.';
  @override
  String get sync_asset_legacy_notice_dismiss => 'Понятно';
  @override
  String get download_task_add => 'Добавить задачу';
  @override
  String get download_task_add_pick_torrent => 'Выбрать torrent-файл';
  @override
  String get download_task_add_title_label => 'Название';
  @override
  String get download_task_add_content_kind => 'Тип содержимого';
  @override
  String get download_task_add_invalid =>
      'Нераспознанная magnet-ссылка или torrent-файл';
  @override
  String get download_task_add_submitted => 'Задача добавлена';
  @override
  String get download_task_search_hint => 'Поиск задач';
  @override
  String get download_task_sort_created => 'Дата добавления';
  @override
  String get download_task_sort_progress => 'Прогресс';
  @override
  String get download_task_sort_status => 'Статус';
  @override
  String get download_task_no_match => 'Подходящих задач нет';
  @override
  String subtitle_version_episode_count({required Object n}) => '${n} эпизодов';
  @override
  String subtitle_version_unnumbered_count({required Object n}) =>
      '${n} без нумерации';
  @override
  String get subtitle_version_ai_translated => 'Перевод ИИ';
  @override
  String get subtitle_version_content_language => 'Содержание';
  @override
  String get subtitle_version_show_files => 'Показать файлы';
  @override
  String get subtitle_version_view_files => 'Список файлов';
  @override
  String get resource_version_batch => 'Пакет';
  @override
  String get resource_version_view_flat => 'Все релизы';
  @override
  String get subscription_mode_one_shot => 'Разовая';
  @override
  String get subscription_mode_ongoing => 'Постоянная';
  @override
  String get subscription_legacy_badge => 'Устаревшая';
  @override
  String get subscription_legacy_hint =>
      'Импортировано из старой системы; автоматические проверки не применяются.';
  @override
  String subscription_next_check({required Object time}) =>
      'Следующая проверка: ${time}';
  @override
  String subscription_last_matched({required Object time}) =>
      'Последнее совпадение: ${time}';
  @override
  String get subscription_item_status_discovered => 'Ожидает';
  @override
  String get subscription_item_status_queued => 'В очереди';
  @override
  String get subscription_item_status_processed => 'Импортировано';
  @override
  String get subscription_item_status_skipped => 'Пропущено';
  @override
  String get subscription_item_status_failed => 'Ошибка';
  @override
  String get subscription_items_empty => 'Отслеживаемых релизов пока нет';
  @override
  String get subscription_edit_title => 'Редактировать подписку';
  @override
  String get subscription_edit_rule_hint =>
      'Правила идентификации и версии здесь изменить нельзя. Подпишитесь заново, чтобы сменить версию — история сохранится.';
  @override
  String get subscription_search_hint => 'Поиск подписок';
  @override
  String get subscription_sort_last_checked => 'Последняя проверка';
  @override
  String get subscription_sort_last_matched => 'Последнее совпадение';
  @override
  String get subscription_show_items => 'История эпизодов';
  @override
  String get subscription_sort_created => 'Дата добавления';
  @override
  String get subscription_no_match => 'Подходящих подписок нет';
  @override
  String get download_subscription_start_episode_invalid =>
      'Введите целое число (0 или больше) или оставьте пустым';
  @override
  String get download_subscription_source_unavailable =>
      'Текущий источник (недоступен)';
  @override
  String resource_version_episode_count({required Object n}) => '${n} эпизодов';
  @override
  String get resource_version_show_files => 'Показать файлы';
  @override
  String get manga_online_detail_load_failed =>
      'Не удалось загрузить эту мангу.';
  @override
  String get manga_online_error_view_detail => 'Подробности';
  @override
  String get discovery_sources_unavailable => 'Все источники недоступны';
  @override
  String get font_target_game_lookup => 'Шрифт окна поиска в игре';
  @override
  String get gal_hook_text_font => 'Шрифт окна поиска в игре';
  @override
  String get gal_hook_text_font_hint =>
      'Выберите шрифты из управляемой библиотеки шрифтов. Используется первый включённый шрифт.';
  @override
  String get gal_hook_text_letter_spacing => 'Межбуквенный интервал';
  @override
  String get gal_hook_text_letter_spacing_hint =>
      'Настройте расстояние между символами без изменения зоны попадания при поиске.';
  @override
  String get gal_hook_text_line_height => 'Межстрочный интервал';
  @override
  String get gal_hook_text_line_height_hint =>
      'Настройте вертикальный интервал переносимых строк.';
  @override
  String get gal_hook_text_bold => 'Жирный текст';
  @override
  String get gal_hook_text_bold_hint =>
      'Используйте полужирный текст для лучшей читаемости поверх игровой графики.';
  @override
  String get gal_hook_text_alignment => 'Выравнивание текста';
  @override
  String get gal_hook_text_alignment_center => 'По центру';
  @override
  String get gal_hook_text_alignment_left => 'По левому краю';
  @override
  String get gal_hook_text_color => 'Цвет текста';
  @override
  String get gal_hook_overlay_legibility_section => 'Окно и читаемость';
  @override
  String get gal_hook_text_background_color => 'Цвет фона окна';
  @override
  String get gal_hook_text_background_opacity => 'Прозрачность фона окна';
  @override
  String get gal_hook_text_background_opacity_hint =>
      'Установите 0% для прозрачного окна в стиле экранных субтитров.';
  @override
  String get gal_hook_text_outline_color => 'Цвет обводки';
  @override
  String get gal_hook_text_outline_width => 'Толщина обводки';
  @override
  String get gal_hook_text_outline_width_hint =>
      'Установите 0 для отключения обводки; лёгкая тень сохранится.';
  @override
  String get gal_hook_text_padding => 'Горизонтальный отступ текста';
  @override
  String get gal_hook_text_padding_hint =>
      'Отодвиньте текст от краёв окна и ручки изменения размера.';
  @override
  String get gal_hook_text_corner_radius => 'Скругление углов окна';
  @override
  String get gal_hook_text_corner_radius_hint =>
      'Настройте радиус скругления углов фона.';
  @override
  String get storage_shaders_delete_anime4k => 'Удалить шейдеры Anime4K';
  @override
  String get video_jimaku_series_lookup_degraded =>
      'Не удалось подтвердить сериал на AniList в этот раз, поэтому результаты получены простым поиском по названию и могут включать другие сезоны того же сериала.';
  @override
  String get dict_style_tab_visual => 'Визуальный';
  @override
  String get dict_style_tab_code => 'CSS';
  @override
  String get dict_style_scope_all => 'Все словари';
  @override
  String get dict_style_part_entry_card => 'Карточка записи';
  @override
  String get dict_style_part_expression => 'Слово';
  @override
  String get dict_style_part_ruby => 'Фуригана';
  @override
  String get dict_style_part_deinflection_tag => 'Цепочка деинфлекции';
  @override
  String get dict_style_part_frequency => 'Частотность';
  @override
  String get dict_style_part_pitch => 'Тональное ударение';
  @override
  String get dict_style_part_dictionary_label => 'Название словаря';
  @override
  String get dict_style_part_glossary_content => 'Определение';
  @override
  String get dict_style_part_glossary_tag => 'Теги определения';
  @override
  String get dict_style_prop_text_color => 'Цвет текста';
  @override
  String get dict_style_prop_background => 'Подсветка';
  @override
  String get dict_style_prop_bold => 'Жирный';
  @override
  String get dict_style_prop_italic => 'Курсив';
  @override
  String get dict_style_prop_underline => 'Подчёркивание';
  @override
  String get dict_style_prop_font_scale => 'Размер шрифта';
  @override
  String get dict_style_prop_corner_radius => 'Скругление углов';
  @override
  String get dict_style_part_reset => 'Сбросить часть';
  @override
  String get dict_style_reset_all => 'Сбросить всё';
  @override
  String get dict_style_global_only => 'Настраивается только для всех словарей';
  @override
  String get dict_style_preview_title => 'Предпросмотр';
  @override
  String get dict_style_pick_hint =>
      'Нажмите на часть в предпросмотре, чтобы перейти к ней';
  @override
  String get dict_style_prop_default => 'По умолчанию';
  @override
  String get dict_style_part_expression_tag => 'Теги выражения';
  @override
  String get dict_style_prop_on => 'Вкл';
  @override
  String get dict_style_prop_off => 'Выкл';
  @override
  String get dict_style_title => 'Оформление словаря';
  @override
  String get video_source_scrape_anidb_client => 'Имя клиента AniDB';
  @override
  String get video_source_scrape_anidb_client_hint =>
      'Зарегистрированное имя клиента AniDB HTTP API; оставьте пустым, чтобы использовать только кэшированный каталог';
  @override
  String get video_source_scrape_anidb_client_version => 'Версия клиента AniDB';
  @override
  String get video_source_scrape_anidb_client_version_hint =>
      'Положительный номер версии, зарегистрированный в AniDB; HTTP API остаётся отключённым, пока оба поля не заполнены корректно';
  @override
  String get video_scrape_view_source => 'Подробности источника';
  @override
  String get video_setting_auto_scrape_hint =>
      'Автоматически определять и загружать метаданные видео после сканирования библиотеки';
  @override
  String get video_resource_identity_provider =>
      'Источник идентификации ресурса';
  @override
  String get video_source_scrape_clear_all =>
      'Очистить все записи сканирования';
  @override
  String get video_source_scrape_clear_all_hint =>
      'Удалить все метаданные сканирования видео, а также обложки и NFO-файлы, созданные Fushi.';
  @override
  String get video_source_scrape_clear_all_confirm_title =>
      'Очистить все записи сканирования видео?';
  @override
  String get video_source_scrape_clear_all_confirm_body =>
      'Будут удалены все полученные метаданные и привязки к источникам, очищены результаты серий и удалены неизменённые обложки и NFO-файлы, созданные Fushi. Видеофайлы, записи библиотеки, группы, прогресс просмотра, субтитры, теги, выбранные вручную обложки и изменённые пользователем сопроводительные файлы сохранятся. Действие необратимо.';
  @override
  String get video_source_scrape_clear_all_confirm_action => 'Очистить';
  @override
  String get video_source_scrape_clear_all_completed =>
      'Все записи сканирования видео очищены.';
  @override
  String get video_source_scrape_clear_all_completed_protected =>
      'Записи сканирования очищены. Изменённые или непроверяемые сопроводительные файлы сохранены.';
  @override
  String get video_source_scrape_clear_all_busy =>
      'Сканирование или извлечение метаданных видео ещё выполняется. Повторите после завершения.';
  @override
  String get video_source_scrape_clear_all_failed =>
      'Не удалось очистить все записи сканирования. Непроверенные пользовательские файлы не удалены.';
  @override
  String get video_source_scrape_clear_all_in_progress =>
      'Очистка записей сканирования уже выполняется.';
  @override
  String get game_session_japanese_locale => 'Японская локаль';
  @override
  String get game_session_japanese_locale_hint =>
      'Игра была запущена с японской локалью (CP932). Если текст отображается неправильно или появляется ошибка скрипта, установите для этой игры японскую локаль в «Никогда».';
  @override
  String get onboarding_anki_intro_body =>
      'Anki — это бесплатное приложение для интервального повторения: новые слова становятся карточками, а повторения планируются по кривой забывания. После поиска слова Fushi может превратить его в карточку Anki одним нажатием — со значением, предложением, аудио и скриншотом.';
  @override
  String get onboarding_anki_setup_desktop_hint =>
      'Установите десктопное приложение Anki, затем добавьте аддон AnkiConnect: в Anki откройте Инструменты - Аддоны - Скачать аддон и введите код 2055492159. Держите Anki запущенным при создании карточек.';
  @override
  String get onboarding_anki_setup_ios_hint =>
      'При установленном AnkiMobile создание карточек работает сразу. Для полного набора функций подключитесь к Anki на компьютере в той же сети через AnkiConnect.';
  @override
  String get onboarding_anki_backend_label => 'Подключение';
  @override
  String get onboarding_anki_test_action => 'Проверить подключение';
  @override
  String onboarding_anki_test_success({required Object count}) =>
      'Подключено: найдено колод: ${count}';
  @override
  String get onboarding_anki_get_anki_action => 'Скачать Anki (десктоп)';
  @override
  String get onboarding_anki_get_ankidroid_action => 'Скачать AnkiDroid';
  @override
  String get onboarding_anki_mobile_ankiconnect_title =>
      'Дополнительно: использовать AnkiConnect на этом устройстве';
  @override
  String get onboarding_anki_mobile_ankiconnect_hint =>
      'Это устройство также может создавать карточки в Anki на компьютере в той же сети: включите AnkiConnect в настройках создания карточек и введите адрес компьютера.';
  @override
  String get onboarding_anki_fsrs_title => 'Переключите Anki на FSRS';
  @override
  String get onboarding_anki_fsrs_body =>
      'В Anki встроен FSRS — планировщик, значительно лучше устаревшего SM-2: лучше запоминание при меньшем количестве повторений. В Anki откройте настройки колоды и включите FSRS (один переключатель на всю коллекцию). Это делается в самом Anki.';
  @override
  String get onboarding_step_pack_browser_action => 'Скачать в браузере';
  @override
  String get onboarding_anki_setup_android_hint =>
      'Установите AnkiDroid и откройте его один раз для первоначальной настройки. Вернувшись в Fushi, нажмите «Разрешить» в диалоге разрешений, который появится при создании первой карточки — настройки AnkiDroid менять не нужно.';
  @override
  String get onboarding_anki_install_addon_action =>
      'Установить аддон AnkiConnect';
  @override
  String get onboarding_anki_addon_installed =>
      'AnkiConnect установлен. Запустите (или перезапустите) Anki, затем нажмите «Проверить подключение».';
  @override
  String get onboarding_anki_addon_no_anki =>
      'Папка данных Anki не найдена. Установите Anki и откройте его один раз, затем повторите попытку.';
  @override
  String onboarding_anki_addon_failed({required Object message}) =>
      'Ошибка установки: ${message}';
  @override
  String get game_hook_reason_capability_probe_failed =>
      'Компонент захвата не ответил на проверку возможностей. Он найден на диске, но не смог запуститься или не ответил вовремя — возможно, антивирус блокирует его, Fushi не хватает прав на запуск или завис старый вспомогательный процесс. Закройте все игры, проверьте карантин антивируса и попробуйте снова.';
  @override
  String get download_backend_setup_title => 'Настройка бэкенда загрузок';
  @override
  String get download_backend_setup_intro =>
      'Выберите, какой движок будет выполнять загрузки. Это можно изменить в любой момент в настройках загрузок.';
  @override
  String get download_backend_embedded_hint =>
      'Рекомендуется. Загрузки выполняются внутри Fushi — ничего дополнительно устанавливать не нужно.';
  @override
  String get download_backend_qb_hint =>
      'Подключите Fushi к уже запущенному qBittorrent WebUI.';
  @override
  String get download_backend_setup_start => 'Настроить';
  @override
  String get download_backend_embedded_unavailable =>
      'В этой установке отсутствует среда выполнения встроенного движка. Переустановите полный пакет или используйте внешний qBittorrent.';
  @override
  String get download_backend_qb_url_invalid =>
      'Введите полный адрес, например http://127.0.0.1:8080';
  @override
  String get mihon_store_zero_extensions =>
      'Этот репозиторий вернул 0 расширений. Возможно, его адрес указывает на устаревший индекс.';
  @override
  String get mihon_store_edit => 'Изменить адрес репозитория';
  @override
  String get manga_ocr_download_resume => 'Продолжить загрузку';
  @override
  String get manga_ocr_import => 'Импорт локальной модели';
  @override
  String get manga_ocr_import_title => 'Импорт скачанной модели';
  @override
  String get manga_ocr_import_intro =>
      'Если загрузка внутри приложения не проходит, скачайте эти файлы самостоятельно и импортируйте их здесь. Подойдёт и zip-архив с ними.';
  @override
  String get manga_ocr_import_copy_urls => 'Копировать ссылки';
  @override
  String get manga_ocr_import_urls_copied => 'Ссылки скопированы';
  @override
  String get manga_ocr_import_pick_folder => 'Выбрать папку';
  @override
  String get manga_ocr_import_pick_files => 'Выбрать файлы';
  @override
  String get manga_ocr_import_running => 'Импорт…';
  @override
  String manga_ocr_import_done({required Object count}) =>
      'Импортировано файлов: ${count}';
  @override
  String get manga_ocr_import_matched_nothing =>
      'Пригодные файлы модели не распознаны';
  @override
  String manga_ocr_import_size_mismatch({
    required Object file,
    required Object expected,
    required Object actual,
  }) => 'Неверный размер ${file}: ожидался ${expected}, получен ${actual}';
  @override
  String manga_ocr_import_still_missing({required Object count}) =>
      'Не хватает ещё файлов: ${count}';
  @override
  String get manga_ocr_import_failed => 'Не удалось импортировать модель';
  @override
  String get manga_tap_ocr_notice_title => 'Распознать по нажатию';
  @override
  String get manga_tap_ocr_notice_body =>
      'На этой странице ещё нет текстовых данных. Fushi распознает её движком OCR, выбранным в настройках, после чего можно нажимать на слова и искать их. Сменить движок или отключить это поведение можно в «Настройки › OCR манги».';
  @override
  String get manga_tap_ocr_notice_confirm => 'Распознать';
  @override
  String get manga_tap_ocr_running => 'Распознавание страницы…';
  @override
  String get manga_tap_to_ocr => 'Распознавание по нажатию';
  @override
  String get manga_tap_to_ocr_desc =>
      'Нажмите на нераспознанное текстовое облачко, чтобы распознать страницу и сразу искать слова.';
  @override
  String get manga_ocr_engine_system => 'OCR устройства';
  @override
  String get manga_ocr_engine_system_desc =>
      'Использует распознавание текста, встроенное в ваше устройство. Ничего не нужно скачивать, работает полностью офлайн, ничего не отправляется — но с вертикальными облачками и рукописным текстом справляется заметно хуже локальной модели.';
  @override
  String get manga_ocr_engine_system_unavailable =>
      'На этом устройстве нет доступного встроенного распознавания текста';
  @override
  String get manga_tap_ocr_online_lens_only =>
      'Онлайн-главы не хранятся локально, поэтому прочитать их может только Google Lens — изображение страницы отправляется в Google.';
  @override
  String get settings_destination_services => 'Онлайн-сервисы';
  @override
  String get settings_destination_services_summary =>
      'Сторонние API, индексаторы и медиасерверы';
  @override
  String get section_services_subtitles => 'Источники субтитров';
  @override
  String get section_services_resources => 'Индексаторы ресурсов';
  @override
  String get section_services_metadata => 'Сбор метаданных';
  @override
  String get settings_services_link_subtitle =>
      'Jimaku, OpenSubtitles, Torznab, Jellyfin, AniDB и TMDB настраиваются здесь вместе';
  @override
  String get game_hook_btn_replay => 'Воспроизвести озвучку этой реплики';
  @override
  String get game_hook_btn_recapture => 'Перезаписать озвучку';
  @override
  String get game_hook_btn_follow => 'Следовать за новыми репликами';
  @override
  String get game_hook_btn_passthrough => 'Пропускать клики в игру';
  @override
  String get game_hook_btn_transparency => 'Переключить фон';
  @override
  String get game_hook_btn_lock => 'Закрепить позицию';
  @override
  String get game_hook_btn_workbench => 'Открыть рабочую панель захвата';
  @override
  String get game_hook_btn_topmost => 'Поверх всех окон';
  @override
  String get game_hook_btn_close => 'Закрыть оверлей';
  @override
  String get video_jimaku_search_failed =>
      'Не удалось выполнить поиск субтитров';
  @override
  String video_subtitle_error_with_code({
    required Object msg,
    required Object code,
  }) => '${msg} (HTTP ${code})';
  @override
  String get manga_rescan_run => 'Распознать выделенную область заново';
  @override
  String get manga_rescan_failed =>
      'Не удалось заново распознать выделенную область';
  @override
  String get manga_rescan_region_updated =>
      'Выделенная область распознана заново и сохранена на странице';
  @override
  String get manga_ocr_mobile_note =>
      'На мобильных устройствах эти модели питают локальный движок для распознавания всего тома, по нажатию и по выделенной области в читалке манги.';
  @override
  String get manga_rescan_hint =>
      'Обведите рамкой текст, который нужно распознать заново. Результат заменит существующий текстовый слой внутри рамки.';
  @override
  String get manga_rescan_undone =>
      'Текстовый слой до повторного распознавания восстановлен';
  @override
  String get manga_rescan_undo_failed =>
      'Не удалось восстановить предыдущий текстовый слой';
  @override
  String get module_tool_toggle_hint =>
      'Показывать эту вкладку в панели навигации; выключите, чтобы скрыть';
  @override
  String get module_downloads_hidden_hint =>
      'Вкладка «Загрузки» скрыта в разделе Настройки → Внешний вид → Функциональные модули; включите её снова, чтобы управлять подписками.';
  @override
  String get book_file_location_open => 'Открыть расположение файла';
  @override
  String get book_file_location_failed =>
      'Не удалось открыть расположение файла этой книги.';
  @override
  String storage_entry_database_snapshots_label({required Object n}) =>
      'Снимки резервных копий базы данных (${n} файлов)';
  @override
  String get storage_entry_delete_database_snapshots_confirm_body =>
      'Будут удалены все оставшиеся снимки резервных копий базы данных (corrupt-bak / pre-restore / копии старых миграций). Действующая база данных и её файлы -wal/-shm не затрагиваются.';
  @override
  String get manga_global_search_no_sources =>
      'Включённых источников манги пока нет. Добавьте один на вкладке «Импорт».';
  @override
  String get manga_global_search_open_sources => 'К импорту';
  @override
  String get settings_downloads_open_page_hint =>
      'Открыть страницу загрузок (задачи, ресурсы, подписки)';
  @override
  String get download_video_source_required => 'Требуется источник видео';
  @override
  String get game_hook_reason_stale_session =>
      'Предыдущий сеанс захвата ещё не освобождён; Fushi повторяет попытку сам, ничего делать не нужно.';
  @override
  String get video_subtitle_delete => 'Удалить файл субтитров';
  @override
  String video_subtitle_delete_confirm({required Object path}) =>
      'Удалить этот файл субтитров с диска? Это действие нельзя отменить.\n${path}';
  @override
  String video_subtitle_deleted({required Object label}) =>
      'Файл субтитров удалён: ${label}';
  @override
  String video_subtitle_delete_failed({required Object label}) =>
      'Не удалось удалить файл субтитров: ${label}';
  @override
  String get shortcut_action_manga_toggle_chrome =>
      'Переключить интерфейс манги';
  @override
  String get manga_interface_hide => 'Скрыть интерфейс';
  @override
  String get manga_interface_show => 'Показать интерфейс';
  @override
  String get gal_hook_text_vertical_alignment => 'Вертикальное выравнивание';
  @override
  String get gal_hook_text_vertical_alignment_center => 'По центру';
  @override
  String get gal_hook_text_vertical_alignment_top => 'Сверху';
  @override
  String get storage_entry_external_audio_hint =>
      'Аудио ссылается на исходные файлы и не занимает место приложения';
  @override
  String get jellyfin_auto_list_title => 'Выводить список при входе в «Видео»';
  @override
  String get jellyfin_auto_list_hint =>
      'Выключено: при открытии страницы видео запрос на медиасервер не отправляется; потяните для обновления в видеотеке, чтобы вывести список вручную. Рекомендуется для очень больших серверов, где автоматический перебор выглядит как скрапинг и может сработать защита от злоупотреблений.';
  @override
  String get jellyfin_libraries_title => 'Библиотеки для вывода';
  @override
  String get jellyfin_libraries_hint =>
      'Если ничего не выбрано, выводятся все видеотеки. Ограничение теми библиотеками, которые вы действительно смотрите, избавит огромные серверы от полного перебора.';
  @override
  String get jellyfin_libraries_load_failed =>
      'Не удалось загрузить список библиотек';
  @override
  String get video_filter_series => 'Сериалы';
  @override
  String get video_filter_series_in => 'В сериале';
  @override
  String get video_filter_series_standalone => 'Вне сериала';
  @override
  String get manga_source_cloudflare_verify_title => 'Проверка сайта';
  @override
  String get manga_source_cloudflare_verify_hint =>
      'Пройдите проверку Cloudflare ниже. После её прохождения загрузка продолжится автоматически.';
  @override
  String get db_cannot_open_title => 'Расположение данных недоступно';
  @override
  String get db_cannot_open_message =>
      'Fushi не смог открыть или создать базу данных в указанном расположении данных. Ничего не повреждено — папки может не быть, она может быть доступна только для чтения или находиться на отключённом диске. Проверьте расположение данных в Настройках или перезапустите приложение, чтобы использовать расположение по умолчанию.';
  @override
  String get anki_error_field_mapping_mismatch =>
      'Ни одно из ваших сопоставлений полей не подходит к выбранному типу заметки, поэтому Anki отклонил карточку. Откройте Настройки Anki и сопоставьте поля заново или воспользуйтесь «Создать колоду Lapis».';
  @override
  String get anki_error_first_field_empty =>
      'Первое поле выбранного типа заметки пусто, а такую заметку Anki не принимает. Сопоставьте ему поле в Настройках Anki.';
  @override
  String get storage_category_cache => 'Кэш и временные файлы';
  @override
  String get storage_category_other => 'Прочее без категории';
  @override
  String get collection_export_pick_source => 'Выберите источник';
  @override
  String get collection_export_all_sources => 'Все источники';
  @override
  String get video_subtitle_list_search => 'Поиск по субтитрам';
  @override
  String get video_subtitle_list_search_hint =>
      'Введите текст, чтобы отфильтровать строки';
  @override
  String get video_subtitle_list_search_empty => 'Нет подходящих строк';
  @override
  String get video_subtitle_list_export_favorites =>
      'Экспортировать избранные строки';
  @override
  String get shortcut_action_video_search_subtitle_list =>
      'Поиск по списку субтитров';
  @override
  String get game_hook_code_paste_title => 'Вставить hook-код';
  @override
  String get game_hook_code_paste_hint =>
      'Вставьте код как есть, например /HQN4@4CE90:game.exe';
  @override
  String get game_hook_code_paste_body =>
      'Код привязывается к исполняемому файлу запущенной игры, поэтому Fushi сможет использовать его в следующий раз.';
  @override
  String get game_hook_code_paste_saved => 'Hook-код сохранён для этой игры';
  @override
  String get game_hook_code_paste_invalid => 'Это не похоже на hook-код';
  @override
  String get game_hook_code_label => 'Метка (необязательно)';
  @override
  String get discovery_game_type_all => 'Все';
  @override
  String get discovery_game_type_raw => 'Без перевода';
  @override
  String get discovery_game_type_translated => 'С переводом';
  @override
  String get discovery_game_type_mobile => 'Мобильные';
  @override
  String get discovery_game_type_unlabelled => 'Без метки';
  @override
  String get game_library_downloading => 'Загрузка';
  @override
  String get game_library_download_queued => 'В очереди';
  @override
  String get game_library_download_retrying => 'Повторная попытка';
  @override
  String get delete_disclosure_audio_source_files =>
      'Оригинальные аудиофайлы, которые вы импортировали';
  @override
  String get delete_local_files => 'Также удалить локальные файлы';
  @override
  String get delete_local_files_video_desc =>
      'Видеофайл будет удалён с этого устройства, а связанная задача загрузки — очищена. Отменить это нельзя.';
  @override
  String get delete_local_files_audio_desc =>
      'Исходные аудиофайлы будут удалены с этого устройства; исходные файлы книги и субтитров останутся. Отменить это нельзя.';
  @override
  String get delete_disclosure_book_source_kept =>
      'Импортированные вами исходные файлы книги и субтитров';
  @override
  String get download_task_delete_files_failed =>
      'Не удалось удалить загруженные данные: движок загрузок не подтвердил операцию';
  @override
  String delete_local_files_failed({required Object n}) =>
      'Не удалось удалить локальные файлы (${n}); возможно, они ещё используются';
  @override
  String batch_hidden_by_filter_note({required Object n}) =>
      'Ещё ${n} выбранных элементов скрыты текущим фильтром и не будут обработаны.';
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
  String get manga_online_series_empty => 'В этой серии нет томов.';
  @override
  String sync_peer_book_delete_confirm({required Object name}) =>
      'Удалить «${name}» с сопряжённого устройства? Его файлы и прогресс чтения там будут удалены безвозвратно, а на этом устройстве копии нет. Отменить это действие нельзя.';
  @override
  String sync_peer_video_delete_confirm({required Object name}) =>
      'Убрать «${name}» из библиотеки сопряжённого устройства? Видеофайл, импортированный самим устройством, останется. Отменить это действие нельзя.';
  @override
  String get storage_entry_delete_files_confirm_body =>
      'Будет сразу удалено с диска. Ничто в вашей библиотеке на это не ссылается — это кеш, экспортированные или заново загружаемые данные.';
  @override
  String get manga_series_refresh => 'Обновить главы';
  @override
  String get manga_series_refresh_failed => 'Не удалось обновить из источника';
  @override
  String get manga_series_source_disabled =>
      'Этот источник не установлен или отключён';
  @override
  String get manga_series_platform_unsupported =>
      'Этот источник недоступен на этой платформе';
  @override
  String get manga_series_offline_hint =>
      'Показаны главы, сохранённые на этом устройстве';
  @override
  String get manga_series_no_chapters => 'Глав пока нет';
  @override
  String get manga_series_all_read => 'Все главы прочитаны';
  @override
  String get manga_series_sort_newest => 'Сначала новые';
  @override
  String get manga_series_sort_oldest => 'Сначала старые';
  @override
  String get manga_series_unread_only => 'Только непрочитанные';
  @override
  String get manga_series_mark_read => 'Отметить как прочитанное';
  @override
  String get manga_series_mark_unread => 'Отметить как непрочитанное';
  @override
  String get manga_series_mark_previous_read =>
      'Отметить эту и более ранние как прочитанные';
  @override
  String get manga_series_local_volume => 'Локальный том';
  @override
  String get manga_series_volume_info => 'Том';
  @override
  String get manga_series_page_count => 'Страниц';
  @override
  String get manga_series_chapters_action => 'Главы';
  @override
  String get manga_series_next_chapter => 'Следующая глава';
  @override
  String get manga_series_previous_chapter => 'Предыдущая глава';
  @override
  String get manga_series_last_chapter_reached => 'Это самая новая глава';
  @override
  String get manga_series_first_chapter_reached => 'Это первая глава';
  @override
  String get manga_series_open_series => 'Страница произведения';
  @override
  String manga_series_read_progress({
    required Object page,
    required Object total,
  }) => 'Прочитано до страницы ${page} из ${total}';
  @override
  String manga_series_read_progress_partial({required Object page}) =>
      'Прочитано до страницы ${page}';
  @override
  String mihon_store_extension_count({required Object count}) =>
      'Расширений: ${count}';
  @override
  String mihon_extension_sources_more({required Object count}) =>
      'Показать все источники (${count})';
  @override
  String get mihon_extension_sources_less => 'Показать меньше источников';
  @override
  String get options_website => 'Открыть официальный сайт';
  @override
  String get video_setting_mpv_group_hdr => 'HDR';
  @override
  String get video_setting_hdr_tone_mapping => 'Тональное отображение HDR';
  @override
  String get video_setting_hdr_tone_mapping_hint =>
      'Кривая, по которой HDR-источник укладывается в SDR-экран. «Авто» оставляет выбор за mpv для каждого источника.';
  @override
  String get video_setting_hdr_compute_peak => 'Динамическое определение пика';
  @override
  String get video_setting_hdr_compute_peak_hint =>
      'Измеряет реальную пиковую яркость каждого кадра вместо доверия метаданным источника. Света лучше, но нагружает GPU.';
  @override
  String get video_setting_hdr_auto => 'Авто';
  @override
  String get video_setting_hdr_on => 'Вкл.';
  @override
  String get video_setting_hdr_off => 'Выкл.';
  @override
  String get video_discovery_cancel_downloads_title => 'Отменить загрузки?';
  @override
  String video_discovery_cancel_downloads_body({required Object n}) =>
      'Будет остановлено загрузок для этого тайтла: ${n}. Уже скачанные части останутся на диске — загрузку можно начать снова позже.';
  @override
  String get video_discovery_cancel_downloads_failed =>
      'Не удалось отменить загрузку. Возможно, задача уже завершилась или бэкенд загрузок недоступен.';
  @override
  String get gal_hook_click_lookup => 'Нажмите на слово, чтобы найти его';
  @override
  String get gal_hook_click_lookup_hint =>
      'Выключено — клики по субтитрам никогда не запускают поиск. Удобно вместе с включённым сквозным кликом, когда не хочется случайно попасть по слову.';
  @override
  String get gal_hook_lookup_trigger => 'Кнопка поиска';
  @override
  String get gal_hook_lookup_trigger_hint =>
      'Какая кнопка мыши ищет слово под указателем. Не зависит от переключателя выше: можно выключить поиск по нажатию и всё равно искать боковой кнопкой.';
  @override
  String get gal_hook_lookup_trigger_left => 'Left click';
  @override
  String get gal_hook_lookup_trigger_middle => 'Middle click';
  @override
  String get gal_hook_lookup_trigger_side => 'Side button';
  @override
  String get gal_hook_toolbar_auto_hide => 'Автоматически скрывать панель';
  @override
  String get gal_hook_toolbar_auto_hide_hint =>
      'Скрывает панель, пока указатель не дойдёт до блока субтитров — как в LunaHook. Скрыто значит скрыто по-настоящему: эти пиксели возвращаются игре.';
  @override
  String get gal_hook_passthrough_blocks_mouse =>
      'Субтитры продолжают ловить клики при сквозном клике';
  @override
  String get gal_hook_passthrough_blocks_mouse_hint =>
      'Вкл.: строки текста по-прежнему принимают клики, поэтому по слову можно нажать. Выкл.: весь оверлей прозрачен для мыши — вы кликаете то, что под ним, но нажатие по словам больше не работает.';
  @override
  String get floating_lyric_passthrough => 'Пропускать клики вниз';
  @override
  String get floating_lyric_transparency => 'Переключить фон';
  @override
  String get floating_lyric_topmost => 'Поверх других окон';
  @override
  String get gal_hook_fold_progressive_lines =>
      'Объединять разбитые строки диалога';
  @override
  String get gal_hook_fold_progressive_lines_hint =>
      'Некоторые движки перерисовывают строку целиком при каждом клике, поэтому одна строка захватывается несколько раз. Сворачивать такие снимки в одну строку.';
  @override
  String get gal_hook_ingame_lookup_engine_unsupported =>
      'Этот движок игры пока не поддерживает поиск внутри игры';
  @override
  String get gal_hook_ingame_lookup_version_unsupported =>
      'Эта версия игры пока не в списке поддерживаемых';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copy =>
      'Скопировать SHA-256 исполняемого файла игры';
  @override
  String get gal_hook_ingame_lookup_exe_hash_unavailable =>
      'Не удалось прочитать исполняемый файл игры';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copied =>
      'SHA-256 исполняемого файла скопирован';
}
