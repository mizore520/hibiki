part of 'strings.g.dart';

// Path: <root>
class _StringsKo extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsKo.build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.ko,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super.build(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <ko>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  @override
  late final _StringsKo _root = this; // ignore: unused_field

  // Translations
  @override
  String get action_exit => '종료';
  @override
  String get action_favorite => '즐겨찾기';
  @override
  String activity_days_ago({required Object n}) => '${n}일 전';
  @override
  String activity_hours_ago({required Object n}) => '${n}시간 전';
  @override
  String get activity_just_now => '방금 전';
  @override
  String activity_minutes_ago({required Object n}) => '${n}분 전';
  @override
  String get add_to_collection => '컬렉션에 추가';
  @override
  String get anime_download_back => '뒤로';
  @override
  String get anime_download_batch => '일괄';
  @override
  String get anime_download_category_all => '전체';
  @override
  String get anime_download_category_english => '영어 번역';
  @override
  String get anime_download_category_non_english => '영어 외';
  @override
  String get anime_download_category_raw => '무자막';
  @override
  String get anime_download_delete => '삭제';
  @override
  String anime_download_episode_count({required Object count}) => 'EP ${count}';
  @override
  String get anime_download_generic_download => '다운로드';
  @override
  String get anime_download_generic_hint => '마그넷 링크';
  @override
  String get anime_download_generic_title => '링크 붙여넣기 (도서, 동영상 등)';
  @override
  String get anime_download_include_subs => '자막 포함';
  @override
  String get anime_download_kind_auto => '자동';
  @override
  String get anime_download_kind_book => '도서';
  @override
  String get anime_download_kind_video => '동영상';
  @override
  String get anime_download_magnet_invalid => '유효하지 않은 마그넷 링크';
  @override
  String get anime_download_no_results => '결과 없음';
  @override
  String get anime_download_no_subs => '자막 없음';
  @override
  String get anime_download_no_tasks => '다운로드 작업이 없습니다';
  @override
  String get anime_download_nyaa_query => 'Nyaa 검색어';
  @override
  String get anime_download_play_now => '다운로드하면서 재생';
  @override
  String get anime_download_play_now_fail =>
      '아직 준비되지 않았습니다 (메타데이터 대기 중 또는 연결 실패) — 나중에 다시 시도하세요';
  @override
  String get anime_download_play_now_ok =>
      '가져오기 완료 — 동영상 라이브러리에서 열어 다운로드하면서 재생하세요';
  @override
  String get anime_download_push => '다운로드 전송';
  @override
  String get anime_download_push_failed => 'qBittorrent로 전송 실패';
  @override
  String get anime_download_pushed => '전송 완료 — 완료되면 자동으로 가져옵니다';
  @override
  String get anime_download_refresh => '새로고침';
  @override
  String get anime_download_relocate => '이름 변경 / 이동';
  @override
  String anime_download_relocate_engine_failed({required Object reason}) =>
      '실패, 변경 사항 없음: ${reason}';
  @override
  String get anime_download_relocate_hint =>
      'Fushi는 다운로드 엔진을 통해 이름 변경/이동하므로 시딩이 중단되지 않습니다. 탐색기에서 이름을 변경하면 복구할 수 없습니다.';
  @override
  String anime_download_relocate_library_failed({required Object reason}) =>
      '파일은 이동되었지만 라이브러리가 여전히 이전 경로를 가리킵니다: ${reason}';
  @override
  String get anime_download_relocate_move_title => '폴더로 이동';
  @override
  String get anime_download_relocate_no_files =>
      '이 작업에는 아직 이름을 변경할 파일이 없습니다 (메타데이터 준비 안 됨)';
  @override
  String anime_download_relocate_ok({required Object rows}) =>
      '이름 변경 / 이동 완료; ${rows}개 라이브러리 항목 업데이트됨';
  @override
  String get anime_download_relocate_pick_folder => '대상 폴더 선택';
  @override
  String get anime_download_relocate_rename_title => '파일 이름 변경';
  @override
  String get anime_download_retry => '재시도';
  @override
  String get anime_download_search => '검색';
  @override
  String get anime_download_search_error_proxy_hint =>
      '사이트에 직접 접속할 수 없는 경우 다운로드 설정에서 네트워크 프록시를 구성하세요.';
  @override
  String get anime_download_search_failed => '검색 실패 또는 시간 초과. 재시도를 탭하세요.';
  @override
  String get anime_download_search_hint => '애니메이션 제목';
  @override
  String get anime_download_search_start_hint =>
      '위에서 제목을 검색하세요 - 토렌트와 자막이 자동으로 매칭됩니다. 다운로드는 동영상에 국한되지 않으며 도서, 만화, 오디오북, 게임도 가져올 수 있습니다.';
  @override
  String get anime_download_sort_date => '게시일';
  @override
  String get anime_download_sort_seeders => '시더';
  @override
  String get anime_download_sort_size => '크기';
  @override
  String get anime_download_store_unavailable => '다운로드 계획 저장소를 사용할 수 없습니다';
  @override
  String get anime_download_subs_badge => '자막';
  @override
  String get anime_download_subs_failed => '자막 검색 실패. 재시도를 탭하세요.';
  @override
  String get anime_download_subs_need_key =>
      '자막을 검색하려면 위에 Jimaku API 키를 입력하세요.';
  @override
  String get anime_download_tasks => '다운로드 작업';
  @override
  String get anime_download_title => '애니메이션 다운로드';
  @override
  String get anime_download_trusted => '신뢰됨';
  @override
  String get anime_download_trusted_only => '신뢰된 항목만';
  @override
  String get anki_allow_duplicates => '중복 허용';
  @override
  String get anki_allow_duplicates_hint => '카드 추가 시 중복 검사를 건너뜁니다';
  @override
  String get anki_card_action_failed => '카드 작업 실패. 다시 시도하세요.';
  @override
  String get anki_compact_glossaries => '간결한 용어 해설';
  @override
  String get anki_compact_glossaries_hint => '용어 해설 항목에 간결한 형식을 사용합니다';
  @override
  String get anki_connect_api_key => 'API 키';
  @override
  String get anki_connect_host => '호스트';
  @override
  String get anki_connect_port => '포트';
  @override
  String get anki_create_lapis => 'Lapis 덱 만들기';
  @override
  String get anki_create_lapis_exists => 'Lapis 노트 유형과 덱이 이미 있어 선택했습니다.';
  @override
  String anki_create_lapis_failed({required Object error}) =>
      'Lapis 덱을 만들 수 없습니다: ${error}';
  @override
  String get anki_create_lapis_hint =>
      'Anki에 Lapis 노트 유형과 Lapis 덱을 추가한 뒤 자동으로 선택합니다.';
  @override
  String get anki_create_lapis_success => 'Lapis 노트 유형과 덱을 만들었습니다.';
  @override
  String get anki_deck => '덱';
  @override
  String get anki_duplicate_scope => '중복 확인 범위';
  @override
  String get anki_duplicate_scope_collection => '전체 컬렉션';
  @override
  String get anki_duplicate_scope_deck => '선택한 덱 (하위 덱 포함)';
  @override
  String get anki_duplicate_scope_deck_root => '최상위 덱 (모든 하위 덱)';
  @override
  String get anki_duplicate_scope_hint =>
      '카드가 이미 존재하는지 확인할 때 검색할 덱. AnkiConnect 전용; AnkiDroid는 항상 전체 컬렉션을 검색합니다.';
  @override
  String get anki_error_collection_unavailable =>
      'AnkiDroid 컬렉션을 현재 사용할 수 없습니다. AnkiDroid를 한 번 이상 실행하고, 동기화 중이 아니며 API가 켜져 있는지 확인한 뒤 다시 시도하세요.';
  @override
  String get anki_error_connection_refused =>
      'Anki에 연결할 수 없습니다: 연결이 거부되었습니다. Anki 데스크톱이 실행 중이고 AnkiConnect 애드온이 설치되어 있는지 확인하세요.';
  @override
  String get anki_error_connection_timeout =>
      'Anki에 연결할 수 없습니다: 연결 시간이 초과되었습니다. 호스트, 포트, 방화벽 설정을 확인하세요.';
  @override
  String get anki_error_connection_unknown =>
      'Anki로 내보낼 수 없습니다: 알 수 없는 연결 오류가 발생했습니다. 자세한 내용은 오류 로그를 확인하세요.';
  @override
  String get anki_error_http =>
      'Anki로 내보낼 수 없습니다: AnkiConnect에 연결하는 중 HTTP 오류가 발생했습니다.';
  @override
  String get anki_error_permission_denied =>
      'AnkiDroid에 카드 접근 권한이 부여되지 않았습니다. 방금 나타난 시스템 권한 대화 상자를 승인한 후 버튼을 다시 탭하여 내보내세요.';
  @override
  String get anki_fetch => '덱 및 노트 유형 새로고침';
  @override
  String get anki_fetching => '가져오는 중…';
  @override
  String get anki_field_mappings => '필드 매핑';
  @override
  String get anki_field_not_mapped => '매핑되지 않음';
  @override
  String get anki_mine_to_server => '페어링된 기기로 채굴';
  @override
  String get anki_mine_to_server_hint =>
      '채굴한 카드를 이 기기 대신 페어링된 호스트의 Anki(해당 덱 및 설정)로 전송합니다. 인터커넥트 페어링이 필요합니다.';
  @override
  String get anki_mined_action_add_duplicate => '새 카드로 추가';
  @override
  String get anki_mined_action_overwrite => '이 카드 덮어쓰기';
  @override
  String get anki_mined_action_view => 'Anki에서 보기 / 열기';
  @override
  String get anki_mined_card_subtitle => '일치하는 카드의 처리 방법을 선택하세요.';
  @override
  String get anki_mined_card_title => 'Anki에 이미 있는 카드';
  @override
  String anki_mined_multiple_matches({required Object count}) =>
      '일치하는 카드 ${count}개';
  @override
  String get anki_not_configured => '「새로고침」을 눌러 Anki 덱과 노트 유형을 불러오세요.';
  @override
  String get anki_note_open_failed => 'Anki에서 카드를 열 수 없습니다.';
  @override
  String get anki_note_type => '노트 유형';
  @override
  String get anki_note_viewer_empty => '이 카드에 읽을 수 있는 필드가 없습니다.';
  @override
  String get anki_note_viewer_open_in_anki => 'Anki에서 열기';
  @override
  String get anki_note_viewer_title => '기존 카드';
  @override
  String get anki_open_no_card => 'Anki에서 이 단어의 카드를 찾을 수 없습니다.';
  @override
  String get anki_overwrite_scope => '덮어쓰기 범위';
  @override
  String get anki_overwrite_scope_all => '일치하는 모든 카드';
  @override
  String get anki_overwrite_scope_hint => '초록색 ✓로 덮어쓸 수 있는, 이미 만든 카드의 범위';
  @override
  String get anki_overwrite_scope_latest => '가장 최근 카드만';
  @override
  String get anki_refresh_hint =>
      'Anki에서 덱이나 노트 유형을 만들거나 이름을 바꾼 뒤 여기를 눌러 새로고침하세요.';
  @override
  String anki_select_handlebar({required Object field}) => '${field}에 사용할 값 선택';
  @override
  String get anki_settings_label => 'Anki 설정';
  @override
  String get anki_tag_default_section => '기본 태그';
  @override
  String get anki_tag_include_category => '소스 분류 태그 추가';
  @override
  String get anki_tag_include_category_hint =>
      '책은 "book", 비디오는 "video", 게임은 "game"';
  @override
  String get anki_tag_include_fushi => '"fushi" 태그 추가';
  @override
  String get anki_tag_include_fushi_hint => 'Fushi로 만든 모든 카드에 표시합니다';
  @override
  String get anki_tags => '태그';
  @override
  String get anki_tags_hint => '모든 카드에 추가되는 공백 구분 태그';
  @override
  String get app_icon_label => '앱 아이콘';
  @override
  String get app_icon_presets => '프리셋';
  @override
  String get app_ui_scale => 'UI 크기';
  @override
  String get app_ui_scale_hint =>
      'Scales app text and spacing. Lower it on large screens if controls feel oversized.';
  @override
  String get app_version => '앱 버전';
  @override
  String get apply_theme => '테마 적용';
  @override
  String get audio_clip_failed =>
      '오디오 클립을 추출할 수 없습니다 — 오디오 소스가 없거나 읽을 수 없을 수 있습니다';
  @override
  String get audio_import => '오디오 가져오기';
  @override
  String get audio_panel_add_audio => '오디오 추가';
  @override
  String get audio_panel_auto => '자동';
  @override
  String get audio_panel_pick_new_subtitle => '새 자막 파일 선택';
  @override
  String get audio_source_added => '오디오 소스가 추가됨';
  @override
  String audio_source_dns_error({required Object host}) =>
      '오디오 소스 연결 실패: "${host}"를 확인할 수 없음 — 네트워크를 확인하거나 설정에서 이 소스를 제거하세요';
  @override
  String get audio_source_edit_target_gone =>
      '해당 오디오 소스가 더 이상 존재하지 않습니다 — 편집이 취소되었습니다';
  @override
  String get audio_source_edit_url => '오디오 소스 링크 편집';
  @override
  String audio_source_error({required Object detail}) => '오디오 소스 오류: ${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi 인터커넥트';
  @override
  String get audio_source_loopback_warning =>
      '이 기기를 가리키고 있습니다 — 기기를 변경한 후 다시 지정하세요';
  @override
  String audio_source_request_error({required Object detail}) =>
      '오디오 소스 요청 실패: ${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      '오디오 소스 시간 초과: "${host}" — 서버가 응답하지 않습니다. 나중에 다시 시도하거나 소스를 변경하세요';
  @override
  String get audio_source_updated => '오디오 소스 업데이트됨';
  @override
  String get audio_source_url_invalid =>
      '링크는 http(s)여야 하며 단어 또는 읽기 자리표시자를 포함해야 합니다';
  @override
  String get audio_unavailable => '오디오를 찾을 수 없습니다.';
  @override
  String get audio_volume => '볼륨';
  @override
  String get audiobook_attached => '오디오북 연결됨';
  @override
  String get audiobook_audio_missing => '오디오 파일 없음';
  @override
  String get audiobook_background_play => '종료 후에도 계속 재생';
  @override
  String get audiobook_background_play_hint =>
      '꺼져 있으면 리더를 떠날 때 오디오북 재생이 멈춥니다. 켜면 백그라운드에서 계속 재생합니다.';
  @override
  String get audiobook_export_clip => '클립 동영상 내보내기';
  @override
  String get audiobook_export_clip_failed => '클립 내보내기 실패';
  @override
  String get audiobook_export_clip_in_progress => '클립 내보내는 중…';
  @override
  String get audiobook_export_clip_no_selection => '클립을 내보내려면 먼저 텍스트를 선택하세요';
  @override
  String get audiobook_export_clip_no_text => '이 선택 영역에 렌더링할 텍스트가 없습니다';
  @override
  String get audiobook_export_clip_saved => '클립 저장됨';
  @override
  String get audiobook_export_clip_unsupported_range =>
      '이 선택 영역은 내보낼 수 없습니다 (챕터 또는 오디오 파일 경계를 넘김)';
  @override
  String get audiobook_import => '오디오북 가져오기';
  @override
  String get audiobook_import_error => '가져오기 실패';
  @override
  String audiobook_import_error_copy_failed({required Object name}) =>
      '파일 복사 실패: ${name}';
  @override
  String audiobook_import_error_disk_full({required Object size}) =>
      '디스크 공간이 부족합니다. 필요 용량: ${size}';
  @override
  String get audiobook_import_success => '오디오북 가져오기 완료';
  @override
  String get audiobook_load_error => '오디오북을 불러오지 못했습니다.';
  @override
  String get audiobook_pick_alignment => '정렬 파일 선택';
  @override
  String get audiobook_reference_original => '원본 파일 참조';
  @override
  String get audiobook_reference_original_desc =>
      '오디오를 원래 위치에 두고 원본 경로에서 재생합니다; 파일을 이동하거나 삭제하면 책이 깨집니다.';
  @override
  String get audiobook_relocate => '파일 재배치';
  @override
  String get audiobook_relocate_done => '오디오 재배치됨';
  @override
  String get auto_add_book_name_to_tags => '태그에 책 제목 자동 추가';
  @override
  String auto_chapter({required Object n}) => '챕터 ${n}';
  @override
  String get auto_read_on_lookup => '검색 시 자동 읽기';
  @override
  String get auto_search => '자동 검색';
  @override
  String get auto_search_debounce_delay => '자동 검색 지연 시간';
  @override
  String get auto_select_search_window => '검색 윈도우 자동 선택';
  @override
  String get auto_select_search_window_hint =>
      '가져오기 시 여러 윈도우 크기를 시험하여 적중률이 가장 높은 것을 선택';
  @override
  String get av_sync => 'A/V 동기화';
  @override
  String get av_sync_reset => '초기화';
  @override
  String get back => '뒤로';
  @override
  String get background_color => '배경색';
  @override
  String get background_color_desc => '리더 페이지 배경';
  @override
  String get backup_category_audiobooks => '오디오북 오디오';
  @override
  String get backup_category_audiobooks_desc => '오디오북 오디오 및 정렬';
  @override
  String get backup_category_books => '책 내용';
  @override
  String get backup_category_books_desc => '도서 파일 (EPUB 및 추출된 콘텐츠)';
  @override
  String get backup_category_dictionary => '사전';
  @override
  String get backup_category_dictionary_desc => '가져온 사전 및 관련 파일';
  @override
  String get backup_category_fonts => '사용자 지정 글꼴';
  @override
  String get backup_category_fonts_desc => '가져온 사용자 정의 글꼴 파일';
  @override
  String get backup_category_local_audio => '로컬 오디오 데이터베이스';
  @override
  String get backup_category_local_audio_desc => '로컬 발음 오디오 데이터베이스';
  @override
  String get backup_category_profiles => '프로필';
  @override
  String get backup_category_profiles_desc => '구성 프로필';
  @override
  String get backup_category_progress => '읽기 진행률';
  @override
  String get backup_category_progress_desc => '읽기 위치 및 북마크';
  @override
  String get backup_category_settings => '설정';
  @override
  String get backup_category_settings_desc => '앱 및 리더 설정';
  @override
  String get backup_category_statistics => '통계';
  @override
  String get backup_category_statistics_desc => '읽기, 동영상 및 채굴 통계';
  @override
  String get backup_category_videos => '비디오';
  @override
  String get backup_category_videos_desc => '로컬 동영상 파일';
  @override
  String get backup_export => '백업 내보내기';
  @override
  String get backup_export_books_all => '모든 도서';
  @override
  String backup_export_books_selected({required Object count}) =>
      '도서 ${count}권 선택됨';
  @override
  String get backup_export_categories_hint =>
      '백업에 포함할 항목을 선택하세요. 도서를 선택 해제하면 해당 도서가 완전히 제거됩니다 — 콘텐츠와 기록이 함께 삭제됩니다.';
  @override
  String get backup_export_categories_title => '내보낼 항목 선택';
  @override
  String get backup_export_choose_books => '도서 선택';
  @override
  String get backup_export_choose_videos => '동영상 선택';
  @override
  String backup_export_failed({required Object message}) =>
      '백업 내보내기 실패: ${message}';
  @override
  String get backup_export_hint =>
      '포함할 항목을 선택하세요. 데이터베이스(도서, 진행 상황, 통계)는 항상 포함됩니다. 큰 항목(로컬 오디오, 동영상)의 선택을 해제하면 백업 크기를 줄일 수 있습니다.';
  @override
  String get backup_export_no_books => '선택할 도서가 없습니다';
  @override
  String get backup_export_no_videos => '선택할 동영상이 없습니다';
  @override
  String get backup_export_select_all => '모두 선택';
  @override
  String get backup_export_select_none => '선택 해제';
  @override
  String get backup_export_success => '백업을 내보냈습니다';
  @override
  String get backup_export_videos_all => '모든 동영상';
  @override
  String backup_export_videos_selected({required Object count}) =>
      '동영상 ${count}개 선택됨';
  @override
  String get backup_exporting => '백업 생성 중…';
  @override
  String get backup_import => '백업 가져오기';
  @override
  String backup_import_confirm({
    required Object date,
    required Object bookCount,
    required Object statsCount,
  }) =>
      '현재 모든 데이터가 ${date} 백업으로 대체됩니다.\n\n책 ${bookCount}권, 통계 기록 ${statsCount}개.\n\n복원 후 앱이 다시 시작됩니다.';
  @override
  String get backup_import_confirm_title => '백업을 복원할까요?';
  @override
  String get backup_import_contents_hint => '건너뛸 항목의 선택을 해제하세요.';
  @override
  String get backup_import_contents_title => '이 백업에 포함된 항목';
  @override
  String backup_import_failed({required Object message}) =>
      '백업 가져오기 실패: ${message}';
  @override
  String get backup_import_hint => '백업 파일에서 복원합니다. 앱이 다시 시작됩니다.';
  @override
  String get backup_import_invalid => '잘못된 백업 파일';
  @override
  String backup_import_merge_preview({
    required Object bookCount,
    required Object progressCount,
  }) => '병합하면 도서 ${bookCount}권을 추가하고 읽기 위치 ${progressCount}개를 업데이트합니다.';
  @override
  String get backup_import_mode_label => '가져오기 모드';
  @override
  String get backup_import_mode_merge => '현재 라이브러리에 병합';
  @override
  String get backup_import_mode_overwrite => '전체 라이브러리 덮어쓰기';
  @override
  String get backup_import_overlay_title => '백업 가져오는 중';
  @override
  String get backup_import_overlay_warning => '데이터를 복원하고 있습니다. 앱을 닫지 마세요.';
  @override
  String get backup_import_preserve_sync_note =>
      '이 기기의 동기화 설정(계정 및 자격 증명)은 유지됩니다.';
  @override
  String get backup_import_restart_button => '지금 재시작';
  @override
  String get backup_import_settings_off_hint =>
      '이 기기의 글꼴/외관/프로필을 유지하고 책 및 읽기 데이터만 복원합니다.';
  @override
  String get backup_import_settings_on_hint =>
      '전체 복원: 글꼴, 외관, 프로필을 백업에서 가져옵니다.';
  @override
  String get backup_import_settings_toggle => '설정 및 프로필 가져오기';
  @override
  String get backup_import_success => '백업을 복원했습니다. 다시 시작 중…';
  @override
  String get backup_import_validating_hint =>
      '백업 파일을 확인하고 미리 보는 중입니다. 잠시 기다려 주세요.';
  @override
  String get backup_import_validating_title => '백업 읽는 중…';
  @override
  String backup_schema_newer({required Object version}) =>
      '이 백업에는 더 새로운 버전의 앱이 필요합니다 (스키마 ${version}). 먼저 업데이트해 주세요.';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      '${n}개 항목을 컬렉션에 추가했습니다.';
  @override
  String batch_delete_confirm({required Object n}) =>
      '${n}개 도서를 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      '동영상 ${n}개를 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      '미디어 ${n}개를 삭제하고 컬렉션 ${m}개를 해체하시겠습니까? 이 작업은 되돌릴 수 없습니다.';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      '미디어 ${n}개 삭제, 컬렉션 ${m}개 해체됨.';
  @override
  String batch_delete_success({required Object n}) => '${n}개 도서가 삭제되었습니다.';
  @override
  String batch_delete_success_video({required Object n}) => '동영상 ${n}개 삭제됨.';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      '컬렉션 ${m}개를 해체하시겠습니까? 그룹화가 제거되며 미디어는 유지됩니다.';
  @override
  String batch_dissolve_success({required Object m}) => '컬렉션 ${m}개 해체됨.';
  @override
  String get batch_invert_selection => '선택 반전';
  @override
  String get batch_select => '선택';
  @override
  String get batch_select_all => '전체';
  @override
  String batch_selected_count({required Object n}) => '${n}개 선택됨';
  @override
  String get batch_tag_add => '추가';
  @override
  String batch_tag_added({required Object name, required Object n}) =>
      '태그 "${name}"이(가) ${n}개 도서에 추가되었습니다.';
  @override
  String batch_tag_added_video({required Object n, required Object name}) =>
      '동영상 ${n}개에 태그 "${name}" 추가됨.';
  @override
  String get batch_tag_apply => '적용';
  @override
  String get batch_tag_keep => '유지';
  @override
  String get batch_tag_remove => '제거';
  @override
  String batch_tag_removed({required Object name, required Object n}) =>
      '태그 "${name}"이(가) ${n}개 도서에서 제거되었습니다.';
  @override
  String batch_tag_removed_video({required Object n, required Object name}) =>
      '동영상 ${n}개에서 태그 "${name}" 제거됨.';
  @override
  String get batch_tag_title => '태그 관리';
  @override
  String get book_continue_reading => 'Continue Reading';
  @override
  String get book_css_editor_cancel => '취소';
  @override
  String get book_css_editor_confirm_reset => '이 파일의 CSS를 기본값으로 초기화하시겠습니까?';
  @override
  String get book_css_editor_confirm_reset_all =>
      '모든 파일의 CSS를 기본값으로 초기화하시겠습니까?';
  @override
  String get book_css_editor_discard => '버리기';
  @override
  String get book_css_editor_edit_css => '책 CSS 편집';
  @override
  String get book_css_editor_no_css_files => '이 책에 CSS 파일이 없습니다.';
  @override
  String get book_css_editor_no_extract_dir =>
      '책 디렉토리를 찾을 수 없습니다. CSS를 편집하려면 책을 다시 가져오세요.';
  @override
  String get book_css_editor_reset_all => '모두 초기화';
  @override
  String get book_css_editor_reset_current => '현재 초기화';
  @override
  String get book_css_editor_reset_done => 'CSS가 초기화되었습니다.';
  @override
  String get book_css_editor_save => '저장';
  @override
  String get book_css_editor_saved => 'CSS가 저장되었습니다.';
  @override
  String get book_css_editor_title => '책 CSS 편집기';
  @override
  String get book_css_editor_unsaved_changes => '저장되지 않은 변경';
  @override
  String get book_css_editor_unsaved_changes_message =>
      '저장되지 않은 변경 사항이 있습니다. 버리시겠습니까?';
  @override
  String get book_directory_not_found => '책 디렉토리를 찾을 수 없습니다.';
  @override
  String get book_edit_author => '저자';
  @override
  String get book_file_not_found => '책 파일을 찾을 수 없음';
  @override
  String get book_import_duplicate_cancel => '아니요, 취소';
  @override
  String get book_import_duplicate_cancelled => '가져오기 취소됨';
  @override
  String get book_import_duplicate_keep => '예, 접미사 추가';
  @override
  String book_import_duplicate_message({required Object name}) =>
      '"${name}"(이)라는 책이 이미 있습니다. 그래도 가져올까요? "예"는 번호 접미사를 붙여 가져오고, "아니요"는 취소합니다.';
  @override
  String get book_import_duplicate_title => '중복된 책';
  @override
  String get book_mark_completed_action => '읽기 완료로 표시';
  @override
  String get book_mark_uncompleted_action => '미완료로 표시';
  @override
  String get book_marked_completed => '읽기 완료로 표시됨';
  @override
  String get book_marked_uncompleted => '미완료로 표시됨';
  @override
  String get book_mode => '책 모드';
  @override
  String book_read_progress({required Object percent}) => '${percent}% 읽음';
  @override
  String get book_scrape_cover => '온라인에서 표지 검색';
  @override
  String get book_scrape_empty => '일치하는 표지 없음';
  @override
  String get book_scrape_failed => '표지를 가져오지 못했습니다';
  @override
  String get book_scrape_hint => '도서 제목 / 저자';
  @override
  String get book_scrape_search => '검색';
  @override
  String get book_scrape_search_failed => '검색 실패. 검색을 탭하여 재시도하세요.';
  @override
  String get book_scrape_title => '온라인 표지 매칭';
  @override
  String get book_scrape_use => '사용';
  @override
  String get book_search => '책 내 검색';
  @override
  String get book_search_hint => '검색어 입력…';
  @override
  String get book_search_no_results => '결과 없음';
  @override
  String book_search_results({required Object n}) => '${n}개 결과';
  @override
  String get books => '책';
  @override
  String get browser_extension_enable_server_first =>
      '팁: 먼저 위에서 "Yomitan API 서버"를 활성화하고 API 키를 설정하면 확장 프로그램이 자동으로 연결 구성됩니다.';
  @override
  String get browser_extension_mobile_unsupported =>
      '모바일 브라우저에서는 이 확장 프로그램을 로드할 수 없습니다. 대신 앱 내 리더나 동영상 플레이어에서 사전 검색을 사용하세요.';
  @override
  String get browser_extension_page_intro =>
      '데스크톱에서 Chrome 또는 Edge에서 바로 단어 검색, 자막 파싱, 카드 채굴을 할 수 있습니다. 아래에서 확장 프로그램을 준비한 후 브라우저에 로드하세요.';
  @override
  String get browser_extension_prepare_button => '확장 프로그램 파일 준비';
  @override
  String get browser_extension_prepare_hint =>
      '검색 서버를 시작하고 확장 프로그램을 로컬에 언팩합니다; 폴더 경로가 클립보드에 복사됩니다.';
  @override
  String get browser_extension_reinstall_button => '재준비 / 파일 새로고침';
  @override
  String get browser_extension_server_off => '검색 서버 꺼짐';
  @override
  String get browser_extension_server_on => '검색 서버 켜짐';
  @override
  String get browser_extension_status_connected => '확장 프로그램 연결됨';
  @override
  String get browser_extension_status_never => '확장 프로그램이 아직 감지되지 않음';
  @override
  String get browser_extension_step_dev_mode => '"개발자 모드"를 켜세요 (오른쪽 상단 토글).';
  @override
  String get browser_extension_step_done_auto =>
      '완료. 확장 프로그램은 이미 Fushi에 연결하여 검색하도록 설정되어 있으므로 수동으로 입력할 필요가 없습니다.';
  @override
  String get browser_extension_step_load_unpacked =>
      '"압축 해제된 확장 프로그램 로드"를 클릭하세요.';
  @override
  String get browser_extension_step_open_page => '브라우저 확장 프로그램 페이지를 여세요:';
  @override
  String get browser_extension_step_pick_folder =>
      '아래 확장 프로그램 폴더를 선택하세요 (경로가 이미 클립보드에 복사되어 있습니다).';
  @override
  String get browser_extension_step_verify => '확장 프로그램이 로드되고 연결되었는지 확인';
  @override
  String get browser_extension_verify_button => '연결 확인';
  @override
  String get browser_extension_verify_checking => '확인 중…';
  @override
  String get browser_extension_verify_connected => '확장 프로그램이 감지되고 연결되었습니다.';
  @override
  String get browser_extension_verify_not_detected =>
      '확장 프로그램이 아직 감지되지 않았습니다. 브라우저에서 로드 및 활성화되어 있는지 확인한 후 다시 확인하세요.';
  @override
  String get browser_extension_version_app => '앱 번들';
  @override
  String get browser_extension_version_browser => '브라우저에 로드됨';
  @override
  String get browser_extension_version_label => '확장 프로그램 버전';
  @override
  String get browser_extension_version_mismatch =>
      '브라우저에 로드된 확장 프로그램이 오래되었습니다. 필요한 경우 확장 프로그램을 다시 준비한 후 브라우저 확장 프로그램 페이지(chrome://extensions)에서 다시 로드하세요.';
  @override
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      '포트 ${port}가 다른 프로세스에서 사용 중입니다 (보통 yomitan-api 컴포넌트 — 브라우저가 실행한 Python 프로세스). 해당 프로세스를 종료하거나 Yomitan 고급 설정에서 Yomitan API를 비활성화한 후 Fushi에서 Yomitan API 서버를 다시 활성화하세요.';
  @override
  String get cancel => '취소';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      '카드 표지가 정지 프레임으로 대체됨 (애니메이션 클립 사용 불가): ${reason}';
  @override
  String get card_duplicate => '중복 카드 — 내보내지 않았습니다.';
  @override
  String get card_export_failed => '카드 내보내기에 실패했습니다.';
  @override
  String card_export_failed_detail({required Object reason}) =>
      '카드 내보내기 실패: ${reason}';
  @override
  String get card_export_not_configured =>
      'Anki가 설정되지 않았습니다. Anki 설정을 열고 가져오기를 눌러주세요.';
  @override
  String card_exported({required Object deck}) => '카드가 『${deck}』(으)로 내보내졌습니다.';
  @override
  String card_exported_audio_failed({required Object reason}) =>
      '카드를 내보냈지만 오디오 다운로드에 실패했습니다(${reason}).';
  @override
  String get card_mined_no_sentence_captured =>
      '카드가 생성되었지만 문장이 캡처되지 않았습니다 (단어를 다시 선택하거나, 이 텍스트에 인식 가능한 문장이 없습니다).';
  @override
  String get card_mined_unmapped_sentence_audio_field =>
      '문장 오디오가 포함된 카드가 생성되었지만 Anki 노트 유형에 매핑된 필드가 없습니다. {sentence-audio}에 필드를 매핑하세요.';
  @override
  String get card_mined_unmapped_sentence_field =>
      '카드가 생성되었지만 Anki 노트 유형에 문장에 매핑된 필드가 없습니다. 설정 -> \'Lapis 덱 만들기\'를 사용하거나 {sentence}에 필드를 매핑하세요.';
  @override
  String get card_mined_without_sentence_audio =>
      '카드를 만들었지만 이번 선택 범위에서 문장 오디오를 찾지 못했습니다.';
  @override
  String get card_mining_pending => '카드 추가 중…';
  @override
  String card_overwritten({required Object deck}) => '『${deck}』에 카드를 덮어썼습니다.';
  @override
  String get change_source => '소스 변경';
  @override
  String get changelog_empty => '변경 로그를 찾을 수 없습니다. 네트워크 또는 프록시 설정을 확인하세요.';
  @override
  String get changelog_open_releases => '릴리스 페이지 열기';
  @override
  String get changelog_prerelease => '프리릴리스';
  @override
  String chapter_progress({
    required Object idx,
    required Object total,
    required Object suffix,
    required Object pct,
  }) => '챕터 ${idx} / ${total}${suffix} · ${pct}%';
  @override
  String get clear => '지우기';
  @override
  String get clear_dictionary_description =>
      '기록의 모든 사전 검색 결과가 삭제됩니다. 계속하시겠습니까?';
  @override
  String get clear_dictionary_title => '사전 검색 기록 삭제';
  @override
  String get lookup_block_capture => '화면 캡처 차단';
  @override
  String get lookup_block_capture_hint =>
      '검색 및 클립보드 팝업 창을 스크린샷, 화면 녹화, 라이브 스트리밍에서 제외합니다 (Windows). 스크린샷, 녹화, 스트리밍에서 검색 팝업을 캡처하려면 이 옵션을 끄세요.';
  @override
  String get collapse_dictionaries => '사전 접기';
  @override
  String get collection_bookmark => '북마크';
  @override
  String get collection_clear_confirm => '선택한 컬렉션을 영구 삭제하시겠습니까? 되돌릴 수 없습니다.';
  @override
  String get collection_clear_scope => '범위 지우기';
  @override
  String get collection_collapse => '접기';
  @override
  String collection_continue_progress({required Object n}) => '계속 · EP ${n}';
  @override
  String get collection_empty => '컬렉션이 비어 있습니다';
  @override
  String get collection_expand => '펼치기';
  @override
  String get collection_export_all_books => '모든 도서';
  @override
  String get collection_export_all_mined => '채굴한 모든 문장';
  @override
  String get collection_export_all_words => '즐겨찾기 단어 전체';
  @override
  String get collection_export_dedupe => '문장별 중복 제거';
  @override
  String get collection_export_failed => '내보내기 실패';
  @override
  String get collection_export_favorites_scope => '즐겨찾기 문장';
  @override
  String get collection_export_format => '형식';
  @override
  String get collection_export_mined_title => 'Mined Sentences';
  @override
  String get collection_export_no_items => '내보낼 항목이 없습니다';
  @override
  String get collection_export_pick_book => '도서 선택';
  @override
  String get collection_export_save => 'Save Export';
  @override
  String get collection_export_saved => '내보내기 저장됨';
  @override
  String get collection_export_scope => '내보내기 범위';
  @override
  String get collection_export_sentences_title => 'Favorite Sentences';
  @override
  String get collection_export_words_title => 'Favorite Words';
  @override
  String get collection_loading_hint => '컬렉션 및 오디오 파일 매칭 중…';
  @override
  String get collection_member_removed => '컬렉션에서 제거됨';
  @override
  String get collection_merge_title => '컬렉션 병합';
  @override
  String get collection_merged => '컬렉션이 병합되었습니다.';
  @override
  String get collection_mined => '마이닝한 문장';
  @override
  String get collection_open => '열기';
  @override
  String get collection_play => '재생';
  @override
  String get collection_remove_member => '컬렉션에서 제거';
  @override
  String get collection_remove_member_confirm =>
      '이 항목을 컬렉션에서 제거하시겠습니까? 항목 자체는 유지됩니다.';
  @override
  String get collection_sentence => '문장';
  @override
  String get collection_sort_by_imported => '가져온 날짜순 정렬';
  @override
  String get collection_sort_by_title => '이름순 정렬';
  @override
  String get collection_view_all => '전체 보기';
  @override
  String collection_watched_progress({
    required Object done,
    required Object total,
  }) => '${done}/${total} 시청함';
  @override
  String get collection_word => '단어';
  @override
  String get collections => '모음';
  @override
  String get color_container => '컨테이너';
  @override
  String get color_container_desc => '트랙 전환, 재생 바 배경';
  @override
  String get color_link => '링크 색상';
  @override
  String get color_link_desc => '리더 하이퍼링크 색상';
  @override
  String get color_primary => '기본색';
  @override
  String get color_primary_desc => '오디오 하이라이트, 버튼, 스위치';
  @override
  String get color_sentence_audio_highlight => '오디오 하이라이트';
  @override
  String get color_sentence_audio_highlight_desc => '오디오북 자막 동기화 하이라이트';
  @override
  String get color_secondary => '보조색';
  @override
  String get color_secondary_desc => '사전 항목, 책장 뱃지';
  @override
  String get color_tertiary => '3차색';
  @override
  String get color_tertiary_desc => '모음, 독서 통계';
  @override
  String get columns_per_page => '페이지당 열 수';
  @override
  String get combine_into_series => '시리즈로 합치기';
  @override
  String get copied => '복사됨';
  @override
  String get copied_to_clipboard => '클립보드에 복사되었습니다.';
  @override
  String get copy => '복사';
  @override
  String get copy_error => '오류 복사';
  @override
  String get crash_dump_empty => '크래시 덤프 없음';
  @override
  String crash_dump_label({required Object n}) => '크래시 덤프 (${n})';
  @override
  String get crash_dump_open_folder => '덤프 폴더 열기';
  @override
  String get crash_dump_privacy_notice =>
      '크래시 덤프 파일(.dmp)에는 프로세스 메모리 스냅샷이 들어 있어 읽던 텍스트, 찾아본 단어, 기타 앱 내 데이터가 포함될 수 있습니다. 신뢰하는 개발자에게만 공유하세요.';
  @override
  String get crash_dump_share => '덤프 공유';
  @override
  String get crash_dump_share_subject => 'Fushi 크래시 덤프';
  @override
  String get create_series => '시리즈 만들기';
  @override
  String get creator_action_add_to_stash => '보관함에 추가';
  @override
  String get creator_action_copy_to_clipboard => '클립보드에 복사';
  @override
  String get creator_action_play_audio => '오디오 재생';
  @override
  String get creator_action_share => '공유';
  @override
  String get creator_enhancement_audio_recorder => '녹음';
  @override
  String get creator_enhancement_camera => '카메라';
  @override
  String get creator_enhancement_clear_field => '필드 지우기';
  @override
  String get creator_enhancement_crop_image => '이미지 자르기';
  @override
  String get creator_enhancement_local_audio => '로컬 오디오';
  @override
  String get creator_enhancement_open_stash => '보관함 열기';
  @override
  String get creator_enhancement_pick_audio => '오디오 선택';
  @override
  String get creator_enhancement_pick_image => '이미지 선택';
  @override
  String get creator_enhancement_pop_from_stash => '보관함에서 꺼내기';
  @override
  String get creator_enhancement_save_tags => '태그 저장';
  @override
  String get creator_enhancement_search_dictionary => '사전 검색';
  @override
  String get creator_enhancement_sentence_picker => '문장 선택';
  @override
  String get creator_enhancement_text_segmentation => '텍스트 분할';
  @override
  String get creator_export_card => '카드 생성';
  @override
  String get creator_field_audio => '단어 오디오';
  @override
  String get creator_field_audio_sentence => '예문 오디오';
  @override
  String get creator_field_cloze_after => '빈칸 뒤';
  @override
  String get creator_field_cloze_before => '빈칸 앞';
  @override
  String get creator_field_cloze_inside => '빈칸 내용';
  @override
  String get creator_field_collapsed_meaning => '접힘 뜻';
  @override
  String get creator_field_context => '문맥';
  @override
  String get creator_field_cue_sentence => '자막 예문';
  @override
  String get creator_field_expanded_meaning => '펼침 뜻';
  @override
  String get creator_field_frequency => '빈도';
  @override
  String get creator_field_furigana => '후리가나';
  @override
  String get creator_field_hidden_meaning => '숨김 뜻';
  @override
  String get creator_field_image => '이미지';
  @override
  String get creator_field_meaning => '뜻';
  @override
  String get creator_field_notes => '메모';
  @override
  String get creator_field_pitch_accent => '악센트';
  @override
  String get creator_field_reading => '읽기';
  @override
  String get creator_field_sentence => '예문';
  @override
  String get creator_field_tags => '태그';
  @override
  String get creator_field_term => '표제어';
  @override
  String get custom_dict_css => '사용자 CSS';
  @override
  String get custom_dict_css_global => '전체 (모든 사전)';
  @override
  String get custom_fonts => '사용자 글꼴';
  @override
  String get custom_fonts_add_system => '시스템 글꼴 추가';
  @override
  String get custom_fonts_archive_error => '아카이브 추출 실패';
  @override
  String get custom_fonts_catalog_title => '글꼴 라이브러리';
  @override
  String get custom_fonts_download_failed => '다운로드 실패';
  @override
  String get custom_fonts_downloading => '다운로드 중…';
  @override
  String get custom_fonts_drag_hint => '드래그하여 글꼴 우선순위 변경';
  @override
  String get custom_fonts_empty => '추가된 사용자 글꼴이 없습니다';
  @override
  String get custom_fonts_font_roles => '글꼴 역할';
  @override
  String get custom_fonts_import_file => '글꼴 파일 가져오기';
  @override
  String get custom_fonts_import_url => 'URL에서 가져오기';
  @override
  String custom_fonts_imported_count({required Object count}) =>
      '${count}개 글꼴 가져옴';
  @override
  String get custom_fonts_manage => '글꼴 관리';
  @override
  String get custom_fonts_no_fonts_in_archive => '아카이브에서 글꼴 파일을 찾을 수 없습니다';
  @override
  String get custom_fonts_recommended => '추천 글꼴';
  @override
  String get custom_fonts_removed => '글꼴이 제거되었습니다';
  @override
  String get custom_fonts_search_hint => '글꼴 검색';
  @override
  String get custom_theme => '사용자 테마';
  @override
  String custom_theme_default_name({required Object n}) => '사용자 정의 ${n}';
  @override
  String get custom_theme_long_press_hint => '탭하여 전환 · 길게 눌러 편집';
  @override
  String get custom_theme_name => '이름';
  @override
  String get dark_mode => '다크 모드';
  @override
  String get dark_mode_dark => '어둡게';
  @override
  String get dark_mode_light => '밝게';
  @override
  String get dark_mode_system => '시스템';
  @override
  String data_root_unavailable_message({required Object path}) =>
      '구성된 데이터 위치 ${path}에 일시적으로 접근할 수 없습니다 (드라이브가 절전 중이거나, 사용 중이거나, 연결이 해제되었을 수 있습니다). 데이터는 해당 위치에 안전하게 보존되어 있으며 손실된 것은 없습니다. 드라이브가 준비되면 재시도를 탭하여 데이터를 로드하거나, 일단 기본 위치로 시작하세요 (기존 데이터는 수정되지 않습니다).';
  @override
  String get data_root_unavailable_title => '데이터 위치가 응답하지 않음';
  @override
  String get data_root_use_default_button => '기본 위치로 시작';
  @override
  String get data_storage_change_button => '위치 변경';
  @override
  String get data_storage_change_confirm_body =>
      'Fushi가 모든 데이터를 새 폴더로 이동한 후 재시작합니다. 이동 중에는 앱을 닫지 마세요.';
  @override
  String get data_storage_change_confirm_title => '데이터 저장 위치를 변경하시겠습니까?';
  @override
  String get data_storage_location_default => '기본 위치';
  @override
  String get data_storage_location_hint =>
      'Fushi가 라이브러리, 오디오북, 데이터베이스를 보관하는 위치. 데스크톱 전용.';
  @override
  String get data_storage_location_title => '데이터 저장 위치';
  @override
  String data_storage_migrate_failed({required Object message}) =>
      '데이터를 이동할 수 없습니다: ${message}';
  @override
  String get data_storage_migrate_failed_restart => '재시작';
  @override
  String get data_storage_migrate_failed_suggestions =>
      '다른 빈 폴더로 다시 시도하세요. 앱의 설치 폴더를 선택하지 말고 해당 위치의 파일이 사용 중이 아닌지 확인하세요.';
  @override
  String get data_storage_migrate_failed_title => '데이터 마이그레이션 실패';
  @override
  String data_storage_migrate_overlay_progress({
    required Object copied,
    required Object total,
  }) => '파일 복사 중: ${copied} / ${total}';
  @override
  String get data_storage_migrate_overlay_title => '데이터 이동 중';
  @override
  String get data_storage_migrate_overlay_warning =>
      '앱을 열어 두세요. 완료될 때까지 앱을 닫거나 컴퓨터를 종료하지 마세요.';
  @override
  String get data_storage_migrate_success => '데이터 이동 완료. 재시작 중…';
  @override
  String get data_storage_migrating => '데이터 이동 중…';
  @override
  String get data_storage_reject_install_dir =>
      '해당 폴더는 앱의 설치 위치이므로 데이터를 저장할 수 없습니다. 다른 빈 폴더를 선택하세요.';
  @override
  String get data_storage_restart_failed =>
      '데이터가 이동되었지만 자동 재시작에 실패했습니다. Fushi를 수동으로 다시 여세요.';
  @override
  String db_downgrade_message({
    required Object dbVersion,
    required Object appVersion,
  }) =>
      '이 데이터베이스는 더 새로운 버전의 Fushi(schema v${dbVersion})로 만들어졌습니다. 현재 앱이 너무 오래되었습니다(v${appVersion}). 데이터 보호를 위해 열기가 차단되었습니다. 앱을 업데이트한 뒤 다시 시도하세요.';
  @override
  String get db_downgrade_title => 'Fushi 업데이트';
  @override
  String get db_unrecoverable_message =>
      '자동 복구 후에도 데이터베이스를 열 수 없습니다. 손상되었을 가능성이 높습니다. 설정에서 백업을 복원하거나 앱 데이터를 초기화하여 새로 시작할 수 있습니다.';
  @override
  String get db_unrecoverable_title => '데이터베이스 손상';
  @override
  String get debug_log_share_subject => 'Fushi 디버그 로그';
  @override
  String debug_log_title({required Object count}) => '디버그 로그 (${count})';
  @override
  String get debug_log_toggle => '디버그 로그 활성화';
  @override
  String get decrease => '감소';
  @override
  String get deduplicate_pitch_accents => '악센트 중복 제거';
  @override
  String get delete_collection => '컬렉션 삭제';
  @override
  String get delete_collection_also_books => '포함된 도서도 삭제';
  @override
  String get delete_collection_also_videos => '동영상도 삭제 (원본 동영상 파일은 유지)';
  @override
  String get delete_custom_theme => '테마 삭제';
  @override
  String get delete_custom_theme_confirm =>
      '이 사용자 정의 테마를 삭제하시겠습니까? 되돌릴 수 없습니다.';
  @override
  String get delete_in_progress => '삭제 진행 중';
  @override
  String get delete_prompt_delete_selected => '선택 항목 삭제';
  @override
  String get delete_prompt_message => '다른 기기에서 이 항목이 삭제되었습니다. 여기에서도 삭제하시겠습니까?';
  @override
  String get delete_prompt_select_all => '모두 선택';
  @override
  String get delete_prompt_title => '다른 기기에서 삭제됨';
  @override
  String get delete_scope_keep_local_desc => '다른 기기에는 사본이 유지됩니다';
  @override
  String get delete_scope_sync_everywhere => '모든 기기에서 삭제';
  @override
  String get delete_scope_sync_everywhere_desc => '다음 동기화 시 다른 기기에서 삭제가 확인됩니다';
  @override
  String get design_system_auto => '자동';
  @override
  String get design_system_hint => '앱의 시각적 스타일을 전환합니다';
  @override
  String get design_system_label => '디자인 시스템';
  @override
  String get dialog_add => '추가';
  @override
  String get dialog_append => '추가';
  @override
  String get dialog_cancel => '취소';
  @override
  String get dialog_clear => '지우기';
  @override
  String get dialog_clear_all_dictionaries => '모든 사전 삭제';
  @override
  String get dialog_close => '닫기';
  @override
  String get dialog_connect => '연결';
  @override
  String get dialog_content_dictionary_clear =>
      '사전 데이터베이스를 초기화하면 기록의 모든 검색 결과도 삭제됩니다.';
  @override
  String get dialog_content_dictionary_delete =>
      '단일 사전 삭제는 전체 사전 데이터베이스 초기화보다 더 오래 걸릴 수 있습니다. 기록의 모든 검색 결과도 삭제됩니다.';
  @override
  String get dialog_create => '생성';
  @override
  String get dialog_crop => '자르기';
  @override
  String get dialog_delete => '삭제';
  @override
  String get dialog_done => '완료';
  @override
  String get dialog_edit => '편집';
  @override
  String get dialog_edit_info => '정보 편집';
  @override
  String get dialog_exit => '종료';
  @override
  String get dialog_export => '내보내기';
  @override
  String get dialog_import => '가져오기';
  @override
  String get dialog_import_dictionary => '사전 가져오기';
  @override
  String get dialog_import_folder => '폴더 사전 가져오기';
  @override
  String get dialog_importing => '가져오는 중…';
  @override
  String get dialog_launch_ankidroid => 'ANKIDROID 실행';
  @override
  String get dialog_ok => '확인';
  @override
  String get dialog_play => '재생';
  @override
  String get dialog_read => '읽기';
  @override
  String get dialog_record => '녹음';
  @override
  String get dialog_replace => '교체';
  @override
  String get dialog_save => '저장';
  @override
  String get dialog_search => '검색';
  @override
  String get dialog_select => '선택';
  @override
  String get dialog_share => '공유';
  @override
  String get dialog_stash => '보관함 열기';
  @override
  String get dialog_stop => '정지';
  @override
  String get dialog_title_dictionary_clear => '모든 사전을 삭제하시겠습니까?';
  @override
  String dialog_title_dictionary_delete({required Object name}) =>
      '『${name}』을(를) 삭제하시겠습니까?';
  @override
  String get dict_auto_update => '자동 업데이트';
  @override
  String get dict_auto_update_hint => '실행 시 사전 업데이트 확인';
  @override
  String dict_auto_update_last({required Object time}) => '마지막 확인 성공: ${time}';
  @override
  String get dict_auto_update_never => '없음';
  @override
  String get dict_category_frequency => '빈도';
  @override
  String get dict_category_grammar => '문법';
  @override
  String get dict_category_ja_en => '일영';
  @override
  String get dict_category_ja_ja => '일일';
  @override
  String get dict_category_ja_other => '기타 일본어';
  @override
  String get dict_category_kanji => '한자';
  @override
  String get dict_category_names => '이름';
  @override
  String get dict_category_supplementary => '보충';
  @override
  String get dict_download_browse => '사전 다운로드';
  @override
  String dict_download_button({required Object count}) => '다운로드 (${count})';
  @override
  String get dict_download_complete => '다운로드 완료.';
  @override
  String dict_download_failed({required Object error}) => '다운로드 실패: ${error}';
  @override
  String get dict_download_installed => '설치됨';
  @override
  String get dict_download_language => '사용 언어';
  @override
  String dict_download_partial({
    required Object success,
    required Object total,
    required Object error,
  }) => '${success} / ${total} 성공. 실패: ${error}';
  @override
  String get dict_download_select_title => '사전 선택';
  @override
  String dict_downloading({required Object name}) => '${name} 다운로드 중…';
  @override
  String dict_import_failed_summary({required Object n}) => '사전 ${n}개 가져오기 실패';
  @override
  String get dict_import_started => '백그라운드에서 사전을 가져오는 중…';
  @override
  String dict_import_success_summary({required Object n}) => '사전 ${n}개를 가져왔습니다';
  @override
  String get dict_update_check => '업데이트 확인';
  @override
  String get dict_update_checking => '업데이트 확인 중…';
  @override
  String dict_update_done({required Object name}) => '${name} 업데이트됨.';
  @override
  String dict_update_failed({required Object error}) => '업데이트 실패: ${error}';
  @override
  String get dict_update_interval_daily => '매일';
  @override
  String get dict_update_interval_monthly => '매월';
  @override
  String get dict_update_interval_weekly => '매주';
  @override
  String get dict_update_latest => '이미 최신 상태입니다.';
  @override
  String dict_update_name_mismatch_body({
    required Object incoming,
    required Object existing,
  }) => '선택한 파일은 "${incoming}"이지만 "${existing}"을(를) 업데이트하고 있습니다. 그래도 교체할까요?';
  @override
  String get dict_update_name_mismatch_title => '이름이 일치하지 않습니다';
  @override
  String get dict_update_none => '모든 사전이 최신 상태입니다.';
  @override
  String dict_update_summary({
    required Object updated,
    required Object current,
    required Object failed,
  }) => '${updated}개 업데이트, ${current}개 최신, ${failed}개 실패.';
  @override
  String get dict_update_tooltip => '사전 업데이트';
  @override
  String dict_update_updating({required Object name}) => '${name} 업데이트 중…';
  @override
  String get dictionaries => '사전 관리';
  @override
  String get dictionaries_delete_failed => '사전 삭제 실패';
  @override
  String get dictionaries_deleting_data => '사전 데이터 삭제 중...';
  @override
  String get dictionaries_menu_empty => '사용할 사전을 가져오세요';
  @override
  String get dictionary_delete_failed => '사전 삭제 실패';
  @override
  String get dictionary_font_size => '사전 글꼴 크기';
  @override
  String get dictionary_font_size_zoom_hint => 'Ctrl + 스크롤 휠로 팝업 내용을 확대/축소합니다';
  @override
  String get dictionary_section_frequency => '빈도 사전';
  @override
  String get dictionary_section_kanji => '한자 사전';
  @override
  String get dictionary_section_pitch => '악센트 사전';
  @override
  String get dictionary_section_term => '용어 사전';
  @override
  String get dictionary_settings => '사전 설정';
  @override
  String get dictionary_type_frequency => '빈도';
  @override
  String get dictionary_type_pitch => '악센트';
  @override
  String get dictionary_type_term => '용어';
  @override
  String get dictionary_unrecognized_format => '인식할 수 없는 사전 형식';
  @override
  String get dismiss_swipe_sensitivity => '스와이프 해제 민감도';
  @override
  String get display_settings => '서체 설정';
  @override
  String get download_backend_not_configured => '다운로드 백엔드가 아직 구성되지 않았습니다.';
  @override
  String get download_clear_finished => '완료된 항목 지우기';
  @override
  String get download_detail_backend_offline =>
      '원래 다운로드 백엔드가 오프라인입니다. 저장된 작업 정보가 표시됩니다; 실시간 매개변수를 사용할 수 없습니다.';
  @override
  String get download_network_proxy_auto => '자동';
  @override
  String get download_network_proxy_auto_hint =>
      'AniList, Nyaa, Jimaku에만 적용됩니다. 자동은 환경 변수를 먼저 사용한 후 활성화된 시스템 프록시를 사용합니다; 토렌트 트래픽은 변경되지 않습니다.';
  @override
  String get download_network_proxy_custom => '사용자 정의';
  @override
  String get download_network_proxy_custom_label => '사용자 정의 프록시';
  @override
  String get download_network_proxy_direct => '직접 연결';
  @override
  String get download_network_proxy_section => '탐색 네트워크';
  @override
  String get download_open_settings => '설정 열기';
  @override
  String get download_save_root_change => '폴더 변경';
  @override
  String get download_save_root_create_failed =>
      '해당 폴더를 만들 수 없습니다. 드라이브와 권한을 확인하세요.';
  @override
  String get download_save_root_fallback_warning =>
      '구성된 다운로드 폴더를 사용할 수 없어 기본 폴더를 사용하고 있습니다.';
  @override
  String get download_save_root_hint =>
      '새 다운로드가 여기에 저장됩니다. 기존 작업은 원래 폴더를 유지합니다.';
  @override
  String get download_save_root_not_absolute => '절대 폴더 경로를 선택하세요.';
  @override
  String get download_save_root_not_writable => '해당 폴더에 쓸 수 없습니다.';
  @override
  String get download_save_root_reset => '기본값 복원';
  @override
  String get download_save_root_title => '다운로드 폴더';
  @override
  String get download_settings => '다운로드 설정';
  @override
  String get download_status_cancelled => '취소됨';
  @override
  String get download_status_queued => '대기 중';
  @override
  String download_subscription_after_episode({required Object episode}) =>
      '${episode}화 이후';
  @override
  String get download_subscription_check_all => '모두 확인';
  @override
  String get download_subscription_check_now => '지금 확인';
  @override
  String download_subscription_choice_hint({
    required Object group,
    required Object resolution,
  }) => '${group} · ${resolution} 팔로우. 새 단편 에피소드가 대기열에 추가됩니다.';
  @override
  String get download_subscription_created => '다운로드 대기열에 추가 및 구독 생성됨';
  @override
  String get download_subscription_delete => '구독 삭제';
  @override
  String download_subscription_delete_confirm({required Object title}) =>
      '${title}에 대한 구독을 삭제하시겠습니까? 다운로드된 작업은 유지됩니다.';
  @override
  String get download_subscription_download_and_create => '다운로드 및 구독';
  @override
  String get download_subscription_empty_body =>
      '탐색에서 단편 에피소드 릴리스를 선택하고 다운로드 및 구독을 사용하세요.';
  @override
  String get download_subscription_empty_title => '아직 구독이 없습니다';
  @override
  String download_subscription_last_checked({required Object time}) =>
      '마지막 확인: ${time}';
  @override
  String download_subscription_latest_episode({required Object episode}) =>
      '최근 대기열: ${episode}화';
  @override
  String get download_subscription_never_checked => '확인한 적 없음';
  @override
  String get download_subscription_running_hint =>
      'Fushi는 앱이 실행되는 동안 15분마다 활성화된 구독을 확인합니다.';
  @override
  String get download_subscription_unavailable_hint =>
      '구독하려면 인식 가능한 릴리스 그룹이 있는 단편 에피소드 릴리스를 선택하세요.';
  @override
  String get download_subscriptions_tab => '구독';
  @override
  String download_task_action_failed({required Object error}) =>
      '작업 실행 실패: ${error}';
  @override
  String get download_task_delete => '작업 삭제';
  @override
  String download_task_delete_confirm({required Object title}) =>
      '${title}에 대한 다운로드 작업을 삭제하시겠습니까?';
  @override
  String get download_task_delete_files => '다운로드된 파일도 삭제';
  @override
  String get download_task_details => '세부 정보 보기';
  @override
  String get download_tasks_tab => '작업';
  @override
  String get download_test_connection => '연결 테스트';
  @override
  String get download_test_connection_failed => '연결 실패. 주소와 자격 증명을 확인하세요.';
  @override
  String download_test_connection_ok({required Object version}) =>
      '연결됨 (버전: ${version})';
  @override
  String get drag_drop_need_card_target => '자막이나 오디오를 책 또는 비디오 위에 놓으세요';
  @override
  String get drag_drop_unsupported_on_books =>
      '책 파일을 여기에 놓으세요. 비디오나 사전 파일은 해당 페이지로 전환하세요.';
  @override
  String get drag_drop_unsupported_on_dictionary =>
      '.zip, .dsl, .mdx 사전 파일을 여기에 놓으세요. CSS 파일은 사전 패키지와 함께만 가져올 수 있습니다.';
  @override
  String get drag_drop_unsupported_on_video =>
      '비디오, 재생목록, 자막을 여기에 놓으세요. 책이나 사전 파일은 해당 페이지로 전환하세요.';
  @override
  String get edit_custom_theme => '사용자 정의 테마 편집';
  @override
  String get eink_mode => 'E-ink 모드';
  @override
  String get eink_mode_hint =>
      '애니메이션 없이 순수 흑백 테마와 라인 스타일 하이라이트 적용, E-ink 디스플레이용';
  @override
  String get enable_swipe_to_close => '스와이프로 팝업 닫기';
  @override
  String get epub_delete_error => '책 삭제에 실패했습니다';
  @override
  String get epub_delete_title => '책 삭제';
  @override
  String get epub_parse_fallback => '데이터베이스에서 책 메타데이터를 복구했습니다';
  @override
  String get error_ankidroid_api => 'AnkiDroid 오류';
  @override
  String get error_ankidroid_api_content =>
      'AnkiDroid와 통신 중 문제가 발생했습니다.\n\n계속하려면 AnkiDroid 백그라운드 서비스가 활성화되어 있고 관련 앱 권한이 모두 부여되었는지 확인하세요.';
  @override
  String get error_copied => '오류가 클립보드에 복사됨';
  @override
  String get error_load_failed => '로드 중 문제가 발생했습니다';
  @override
  String get error_log_diagnostics_section => '진단 / 포렌식 (앱 오류 아님)';
  @override
  String get error_log_empty => '오류 로그 없음';
  @override
  String error_log_label({required Object n}) => '오류 로그 (${n})';
  @override
  String get error_log_previous_run => '이전 로그 (지난 실행 전)';
  @override
  String get error_log_share_subject => 'Fushi 오류 로그';
  @override
  String get extension_popup_independent_size => '브라우저 확장 프로그램 별도 크기';
  @override
  String get extension_popup_independent_size_hint =>
      '브라우저 확장 프로그램 검색 팝업에 인앱 팝업과 다른 최대 크기를 지정합니다';
  @override
  String get extension_popup_max_height => '확장 프로그램 팝업 최대 높이';
  @override
  String get extension_popup_max_width => '확장 프로그램 팝업 최대 너비';
  @override
  String get external_window_capture_failed => '창 캡처 실패';
  @override
  String get external_window_current_game => '현재 게임';
  @override
  String get external_window_mining => '외부 창 채굴';
  @override
  String get external_window_no_windows => '캡처 가능한 창이 없습니다';
  @override
  String get external_window_none => '연결된 창 없음 (탭하여 선택)';
  @override
  String get external_window_refresh => '창 목록 새로고침';
  @override
  String get external_window_select => '대상 창 선택';
  @override
  String get external_window_unbind => '창 연결 해제';
  @override
  String get external_window_unsupported => '외부 창 채굴은 Windows에서만 지원됩니다';
  @override
  String get failed_online_service => '온라인 서비스와 통신에 실패했습니다';
  @override
  String get favorite_added => '문장이 즐겨찾기에 저장되었습니다';
  @override
  String get favorite_removed => '즐겨찾기에서 제거됨';
  @override
  String favorites({required Object n}) => '즐겨찾기 (${n})';
  @override
  String field_fallback_used({
    required Object field,
    required Object secondField,
  }) => '${field} 필드가 ${secondField}을(를) 대체 검색어로 사용했습니다.';
  @override
  String file_count({required Object count}) => '${count}개 파일';
  @override
  String get floating_dict_close => '닫기';
  @override
  String get floating_dict_title => '사전';
  @override
  String get floating_lyric_bg_opacity => '플로팅 자막 배경 불투명도';
  @override
  String get floating_lyric_button_bg_opacity => '플로팅 자막 버튼 배경 불투명도';
  @override
  String get floating_lyric_click_lookup => '플로팅 자막을 탭해 단어 찾기';
  @override
  String get floating_lyric_click_lookup_hint =>
      '위치를 고정해도 단어 찾기를 쓰려면 이 옵션을 켜 두세요.';
  @override
  String get floating_lyric_close => '닫기';
  @override
  String get floating_lyric_context_lines => '플로팅 자막 전후 줄 수';
  @override
  String get floating_lyric_context_lines_hint =>
      '0은 현재 줄만 표시 (한 줄, 변경 없음); 1-3으로 설정하면 앞뒤로 해당 줄 수를 표시합니다';
  @override
  String get floating_lyric_corner_radius => '플로팅 자막 모서리 둥글기';
  @override
  String get floating_lyric_corner_radius_hint =>
      '0은 각 플랫폼의 기본 모서리를 유지합니다; 값을 높이면 바와 버튼을 더 둥글게 만듭니다';
  @override
  String get floating_lyric_font_size => '플로팅 자막 글꼴 크기';
  @override
  String get floating_lyric_hint => '다른 앱 위에 현재 문장을 표시합니다.';
  @override
  String get floating_lyric_lock => '잠금';
  @override
  String get floating_lyric_next => '다음';
  @override
  String get floating_lyric_no_audio => '이 책에는 들을 오디오가 없습니다';
  @override
  String get floating_lyric_permission_hint => '플로팅 가사를 표시하려면 오버레이 권한이 필요합니다.';
  @override
  String get floating_lyric_permission_hint_coloros =>
      '시스템이 오버레이 권한을 계속 거부하는 경우: 파일 관리자로 이 앱의 APK를 한 번 다시 설치하거나 개발자 옵션에서 권한 모니터링을 끈 후 다시 시도하세요.';
  @override
  String get floating_lyric_play_pause => '재생';
  @override
  String get floating_lyric_previous => '이전';
  @override
  String get floating_lyric_text_opacity => '플로팅 자막 텍스트 불투명도';
  @override
  String get floating_lyric_toggle_action => '플로팅 자막';
  @override
  String get floating_lyric_unavailable_hint => '플로팅 자막 창을 표시할 수 없습니다.';
  @override
  String get floating_lyric_unlock => '잠금 해제';
  @override
  String get floating_lyric_width => '플로팅 자막 너비';
  @override
  String get floating_lyric_width_hint =>
      '0은 플랫폼 기본 너비를 사용합니다; 값을 설정하면 바를 고정 너비로 만듭니다';
  @override
  String get focus_navigation_enabled => '키보드/게임패드 포커스 내비게이션';
  @override
  String get focus_navigation_enabled_hint =>
      '방향키나 게임패드로 포커스를 이동하고 포커스 링을 표시합니다.';
  @override
  String get folder_picker_permission_required => '폴더를 탐색하려면 저장소 권한이 필요합니다';
  @override
  String get follow_audio_off_tooltip => '오디오 따라가기: 꺼짐';
  @override
  String get follow_audio_on_tooltip => '오디오 따라가기: 켜짐';
  @override
  String get font_color => '글꼴 색상';
  @override
  String get font_color_desc => '리더 텍스트 색상';
  @override
  String get font_desc_hina_mincho => '부드러운 장식 명조 · Noto Sans JP 폴백 권장';
  @override
  String get font_desc_klee_one => '손글씨 교과서체 · 선명하고 읽기 쉬움 · Noto Sans JP 폴백 권장';
  @override
  String get font_desc_mplus_rounded_1c =>
      '둥근 귀여운 스타일 · 라이트노벨에 적합 · Noto Sans JP 폴백 권장';
  @override
  String get font_desc_noto_sans_jp => 'Google/Adobe 고딕 · 일본어 자형 우선 · 가변 굵기';
  @override
  String get font_desc_noto_sans_sc =>
      'Google/Adobe 고딕 · 중국어 간체 우선 · 일본어 폰트 폴백용';
  @override
  String get font_desc_noto_sans_tc => 'Google/Adobe 고딕 · 중국어 번체 우선';
  @override
  String get font_desc_noto_serif_jp =>
      'Google/Adobe 명조 · 일본어 자형 우선 · 세로쓰기에 최적';
  @override
  String get font_desc_noto_serif_sc =>
      'Google/Adobe 명조 · 중국어 간체 우선 · 일본어 폰트 폴백용';
  @override
  String get font_desc_noto_serif_tc =>
      'Google/Adobe 세리프 · 번체 중국어 글리프 우선 · 세로 읽기에 적합';
  @override
  String get font_desc_shippori_mincho =>
      '우아한 명조체 · 문학 작품 추천 · Noto Sans JP 폴백 권장';
  @override
  String get font_desc_zen_kaku_gothic_new =>
      '모던 각 고딕 · 일반 독서용 · Noto Sans JP 폴백 권장';
  @override
  String get font_desc_zen_maru_gothic => '부드러운 둥근 고딕 · Noto Sans JP 폴백 권장';
  @override
  String get font_desc_zen_old_mincho =>
      '빈티지 명조체 · 고전 문학 스타일 · Noto Sans JP 폴백 권장';
  @override
  String get font_source_file => '파일';
  @override
  String get font_source_system => '시스템';
  @override
  String get font_target_app_ui => '시스템 UI 글꼴';
  @override
  String get font_target_body => '소설 본문 글꼴';
  @override
  String get font_target_dictionary => '사전 글꼴';
  @override
  String get font_target_video_subtitle => 'Video Subtitle Font';
  @override
  String get gal_hook_text_font_size => '갈게임 자막 글꼴 크기';
  @override
  String get gal_hook_text_font_size_hint =>
      '오버레이 모서리를 드래그하여 창 크기를 조절하세요. 자막 크기는 여기서 설정합니다.';
  @override
  String get game_add => '게임 추가';
  @override
  String get game_already_added => '이 게임은 이미 라이브러리에 있습니다';
  @override
  String get game_audio_backend_engine => '엔진 PCM';
  @override
  String get game_audio_backend_loopback => '시스템 루프백 (믹스)';
  @override
  String get game_audio_backend_none => '오디오 소스 없음';
  @override
  String get game_audio_backend_resource => '게임 리소스 오디오';
  @override
  String get game_audio_duration => '오디오 길이';
  @override
  String get game_audio_fallback_disabled_missing =>
      '未找到与该句匹配的游戏资源音频；已关闭降级，未制卡';
  @override
  String get game_audio_resource_id => '音频资源 ID';
  @override
  String get game_audio_tracks => '활성 오디오 트랙';
  @override
  String get game_auto_cover => '표지 자동 가져오기';
  @override
  String get game_back_to_capture => '캡처 작업 공간으로 돌아가기';
  @override
  String get game_back_to_library => '게임 라이브러리로 돌아가기';
  @override
  String get game_capture_active => '캡처 활성';
  @override
  String get game_capture_degraded_loopback =>
      '게임이 실행 중이지만 엔진 주입에 실패했습니다. 시스템 오디오로 대체하며, BGM과 효과음이 섞일 수 있습니다.';
  @override
  String get game_capture_description =>
      '게임을 실행하거나 연결한 후, 텍스트, 음성, 스크린샷 및 Anki 출력을 모니터링합니다.';
  @override
  String get game_capture_empty_body =>
      '게임을 실행하거나 연결하세요. 텍스트와 음성 상태가 여기에 표시됩니다.';
  @override
  String get game_capture_empty_title => '아직 수신된 대사 없음';
  @override
  String get game_capture_launch_failed => '게임 실행 또는 캡처 실패';
  @override
  String get game_capture_launching => '게임 실행 및 캡처 시작 중...';
  @override
  String get game_capture_running => '캡처 세션 실행 중';
  @override
  String get game_capture_window_missing =>
      '게임 프로세스가 시작되었지만 창이 나타나지 않아 게임이 실행되지 않았을 수 있습니다. 다시 시작해 보세요.';
  @override
  String get game_capture_workbench => '캡처 작업 공간';
  @override
  String get game_captured_lines => '캡처된 대사';
  @override
  String get game_card_mapping_missing => 'Anki 필드 매핑에 게임 카드 토큰이 없습니다';
  @override
  String get game_card_sentence_audio_missing =>
      '문장 오디오 없이 카드가 생성되었습니다. 다른 대사의 오디오로 대체되지 않았습니다.';
  @override
  String get game_clear_events => '이벤트 지우기';
  @override
  String get game_cover_not_found => '게임 폴더나 실행 파일에서 사용 가능한 표지를 찾을 수 없습니다';
  @override
  String get game_cover_searching => '표지 검색 중...';
  @override
  String get game_cover_updated => '표지 업데이트됨';
  @override
  String get game_dashboard => '홈';
  @override
  String get game_detail_missing => '이 게임은 더 이상 라이브러리에 없습니다';
  @override
  String get game_detail_tab_edit => '편집';
  @override
  String get game_detail_tab_stats => '통계';
  @override
  String get game_detail_tab_summary => '개요';
  @override
  String get game_diagnostics => '호환성 진단';
  @override
  String get game_diagnostics_subtitle => '세션 단계, 엔드포인트, 오디오 트랙 및 구조화된 이벤트';
  @override
  String game_drop_imported({required Object count}) => '${count}개 게임 추가됨';
  @override
  String get game_drop_no_exe => '드롭된 파일 중 새 게임 .exe가 없습니다';
  @override
  String get game_edit_developer => '개발사';
  @override
  String get game_edit_display_name => '표시 이름';
  @override
  String get game_edit_exe_path => '실행 파일 경로';
  @override
  String get game_edit_invalid_date => '출시일은 YYYY-MM-DD 형식이어야 합니다';
  @override
  String get game_edit_launch_args => '실행 인수';
  @override
  String get game_edit_launch_args_hint => '게임 실행 시 전달됩니다. 예: -windowed';
  @override
  String get game_edit_nsfw => '성인용 타이틀';
  @override
  String get game_edit_release_date => '출시일 (YYYY-MM-DD)';
  @override
  String get game_edit_save => '저장';
  @override
  String get game_edit_saved => '저장됨';
  @override
  String get game_edit_summary => '설명';
  @override
  String get game_edit_tags => '태그 (쉼표로 구분)';
  @override
  String get game_edit_user_rating => '내 평점 (0-10)';
  @override
  String get game_edit_user_review => '내 리뷰';
  @override
  String get game_edit_workdir => '작업 디렉토리';
  @override
  String get game_empty => '아직 추가된 게임이 없습니다';
  @override
  String get game_endpoint_phase_connected => '연결됨';
  @override
  String get game_endpoint_phase_connecting => '연결 중';
  @override
  String get game_endpoint_phase_retrying => '재시도 중';
  @override
  String get game_endpoint_phase_stopped => '중지됨';
  @override
  String get game_endpoints_engine_active =>
      '엔진 후크가 텍스트를 제공합니다. 이 엔드포인트는 선택 사항입니다';
  @override
  String get game_endpoints_hint =>
      '외부 텍스트 도구(Textractor / LunaTranslator 등)용 포트입니다. 사용하지 않으면 무시하세요';
  @override
  String get game_event_all => '모든 이벤트';
  @override
  String get game_event_warnings => '경고 및 오류';
  @override
  String get game_exe_missing => '게임 실행 파일을 찾을 수 없습니다';
  @override
  String get game_filter => '필터';
  @override
  String get game_filter_all => '전체';
  @override
  String get game_filter_favorited => '즐겨찾기';
  @override
  String get game_filter_hide_nsfw => '성인용 타이틀 숨기기';
  @override
  String get game_filter_local_only => '로컬 파일 있음';
  @override
  String get game_filter_metadata_only => '메타데이터만';
  @override
  String get game_filter_mined => '채굴됨';
  @override
  String get game_filter_reset => '필터 초기화';
  @override
  String get game_filter_source => '가용성';
  @override
  String get game_filter_status => '플레이 상태';
  @override
  String get game_filter_tags => '태그';
  @override
  String get game_filter_with_audio => '오디오 있음';
  @override
  String get game_focus_continue => '계속하기';
  @override
  String get game_follow_live => '실시간 따라가기';
  @override
  String get game_health => '상태';
  @override
  String get game_health_anki => 'Anki 출력';
  @override
  String get game_health_audio => '오디오 소스';
  @override
  String get game_health_helper => '후크 헬퍼';
  @override
  String get game_health_process => '게임 프로세스';
  @override
  String get game_health_text => '텍스트 소스';
  @override
  String get game_health_upscaling => '창 업스케일링';
  @override
  String get game_health_window => '게임 창';
  @override
  String get game_helper_download => '다운로드';
  @override
  String game_helper_download_failed({required Object error}) =>
      '엔진 구성 요소 다운로드 실패: ${error}';
  @override
  String get game_helper_downloading => '엔진 구성 요소 다운로드 중…';
  @override
  String get game_helper_install_incomplete => '엔진 구성 요소 설치 미완료, 다시 시도해 주세요';
  @override
  String game_helper_needed_body({required Object size}) =>
      '갈게임을 실행하려면 엔진 후크 인젝터 구성 요소(약 ${size})가 필요합니다. 프로세스 주입 코드가 포함되어 있으며 바이러스 백신 오탐을 방지하기 위해 앱과 별도로 제공됩니다. 지금 다운로드하시겠습니까?';
  @override
  String get game_helper_needed_title => '갈게임 엔진 구성 요소 필요';
  @override
  String get game_helper_size_unknown => '크기 알 수 없음';
  @override
  String get game_helper_verification_failed =>
      '엔진 구성 요소 차단됨: 체크섬을 확인할 수 없습니다(GitHub의 .sha256 파일에 접근할 수 없거나, 누락되었거나, 일치하지 않습니다). Fushi는 확인되지 않은 인젝터 코드를 설치하지 않습니다.';
  @override
  String get game_home_subtitle => '게임 라이브러리 및 캡처 모니터링';
  @override
  String get game_hook_fallback_all_audio_sources_failed =>
      '엔진 음성 후크와 시스템 루프백 모두 시작할 수 없습니다. 오디오를 캡처할 수 없습니다.';
  @override
  String get game_hook_fallback_engine_attach_failed =>
      '실행 중인 게임에 엔진 음성 후크를 연결하지 못했습니다. 시스템 믹스로 대체합니다.';
  @override
  String get game_hook_fallback_engine_pcm_unavailable =>
      '엔진 음성 후크가 설치되었지만, 게임이 아직 음성을 재생하지 않았습니다. 첫 번째 음성이 도착하면 자동으로 전환되며, 그때까지 시스템 믹스를 사용합니다.';
  @override
  String get game_hook_fallback_launch_injection_failed =>
      '게임이 실행 중이지만 초기 엔진 주입에 실패했습니다. 시스템 믹스로 대체합니다.';
  @override
  String get game_hook_fallback_window_not_found =>
      '오디오 캡처가 실행 중이지만, 게임 창이 아직 나타나지 않아 스크린샷을 사용할 수 없습니다. 창이 나타나면 자동으로 연결됩니다.';
  @override
  String get game_hook_line_unavailable => '이 캡처된 대사는 더 이상 사용할 수 없습니다.';
  @override
  String get game_hook_reason_access_denied =>
      '게임이 더 높은 권한으로 실행됩니다. Fushi를 관리자 권한으로 시작한 후 다시 시도하세요.';
  @override
  String get game_hook_reason_bitness_mismatch =>
      '헬퍼 아키텍처가 게임과 맞지 않습니다(32비트 vs 64비트). 헬퍼를 다시 설치하세요.';
  @override
  String get game_hook_reason_create_process_failed =>
      'Fushi에서 게임을 시작할 수 없습니다. 실행 파일 경로를 확인하세요.';
  @override
  String get game_hook_reason_elevation_required =>
      '이 게임은 관리자 권한이 필요합니다. Fushi를 관리자 권한으로 시작한 후 다시 실행하세요.';
  @override
  String get game_hook_reason_game_exe_missing =>
      '저장된 경로에 게임 실행 파일이 더 이상 존재하지 않습니다.';
  @override
  String get game_hook_reason_guarded_hook_failed =>
      '프로필 가드 후크를 시간 내에 설치할 수 없습니다. 자동으로 재시도합니다.';
  @override
  String get game_hook_reason_handshake_timeout =>
      '게임이 후킹되었지만 시간 내에 텍스트나 오디오를 생성하지 못했습니다. 이 엔진은 아직 지원되지 않을 수 있습니다.';
  @override
  String get game_hook_reason_helper_missing =>
      '이 게임 아키텍처용 음성 후크 헬퍼가 설치되어 있지 않습니다. 설치 후 다시 시도하세요.';
  @override
  String get game_hook_reason_hook_dll_missing =>
      '헬퍼 패키지가 불완전합니다(후크 라이브러리 누락). 다시 설치하세요.';
  @override
  String get game_hook_reason_injection_failed =>
      '게임 주입이 차단되었습니다. Fushi와 게임을 바이러스 백신 예외에 추가하세요.';
  @override
  String get game_hook_reason_ready_timeout =>
      '후크 라이브러리가 시간 내에 로딩을 완료하지 못했습니다. 바이러스 백신 검사가 원인일 수 있습니다.';
  @override
  String get game_hook_reason_resume_failed =>
      '실행된 게임을 재개할 수 없어 중지되었습니다. 다시 실행하세요.';
  @override
  String get game_hook_reason_shared_memory_unavailable =>
      '캡처 채널을 열 수 없습니다. Fushi를 다시 시작하세요.';
  @override
  String get game_hook_reason_spawn_failed =>
      '헬퍼를 시작할 수 없습니다. 바이러스 백신이 헬퍼를 삭제하거나 차단하지 않았는지 확인하세요.';
  @override
  String get game_hook_reason_resident_hook_mismatch =>
      '이전 캡처 세션이 아직 게임에 로드되어 있습니다. 게임을 한 번 다시 시작하세요.';
  @override
  String get game_hook_reason_steam_timeout =>
      'Steam이 실행 요청을 수락했지만 게임 프로세스가 나타나지 않았습니다.';
  @override
  String get game_hook_reason_target_missing =>
      '캡처할 게임 프로세스나 실행 파일이 선택되지 않았습니다.';
  @override
  String get game_hook_recapture_empty => '재캡처 시간 내에 캡처된 오디오 없음';
  @override
  String get game_hook_recapture_saved => '재캡처된 음성이 이 대사에 저장됨';
  @override
  String get game_hook_recapture_started => '녹음 중 — 게임에서 이 대사를 다시 재생하세요';
  @override
  String get game_hook_recapture_unavailable => '음성 재캡처에는 시스템 루프백 오디오가 필요합니다';
  @override
  String get game_kpi_total_games => '게임';
  @override
  String get game_kpi_week => '이번 주';
  @override
  String get game_latest_line => '최신 대사';
  @override
  String get game_launch => '실행';
  @override
  String get game_launch_and_capture => '실행 및 캡처';
  @override
  String get game_launch_unsupported => '게임 실행은 Windows에서만 지원됩니다';
  @override
  String get game_library => '게임 라이브러리';
  @override
  String get game_line_audio_encoded => '오디오 추출됨';
  @override
  String get game_line_audio_fallback => '대체';
  @override
  String get game_line_audio_matched => '오디오 준비됨';
  @override
  String get game_line_audio_missing => '오디오 없음';
  @override
  String get game_line_audio_pending => '매칭 중';
  @override
  String get game_line_audio_unavailable => '텍스트만';
  @override
  String get game_line_favorite_tooltip => '이 대사 즐겨찾기';
  @override
  String get game_line_mined => '채굴됨';
  @override
  String get game_line_preview_failed => '이 대사에 재생 가능한 오디오가 없습니다';
  @override
  String get game_line_preview_tooltip => '이 대사의 오디오 재생';
  @override
  String get game_line_track_applied => '음성 트랙이 이 대사에 적용됨';
  @override
  String get game_line_track_dialog_title => '이 대사의 음성 트랙';
  @override
  String get game_line_track_failed => '해당 트랙에 이 대사 근처의 오디오가 없습니다';
  @override
  String get game_line_track_tooltip => '이 대사의 음성 트랙 선택';
  @override
  String get game_line_unfavorite_tooltip => '즐겨찾기 해제';
  @override
  String get game_live_lines => '실시간 대사';
  @override
  String get game_manage_tracks => '오디오 트랙 관리';
  @override
  String get game_meta_added => '추가됨';
  @override
  String get game_meta_ranking => '순위';
  @override
  String get game_meta_source => '데이터 소스';
  @override
  String get game_never_played => '플레이한 적 없음';
  @override
  String get game_no_active_line => '대사를 선택하여 문장 오디오 상태를 확인하세요.';
  @override
  String get game_no_events => '아직 세션 이벤트 없음';
  @override
  String get game_no_match => '현재 필터와 일치하는 게임이 없습니다';
  @override
  String get game_no_tracks => '아직 오디오 트랙 데이터 없음';
  @override
  String get game_open_capture_workspace => '캡처 작업 공간 열기';
  @override
  String get game_phase_attaching => '연결 중';
  @override
  String get game_phase_degraded => '저하됨';
  @override
  String get game_phase_error => '오류';
  @override
  String get game_phase_idle => '대기 중';
  @override
  String get game_phase_injecting => '주입 중';
  @override
  String get game_phase_launching => '실행 중';
  @override
  String get game_phase_resolving => '해석 중';
  @override
  String get game_phase_running => '실행 중';
  @override
  String get game_phase_stopping => '중지 중';
  @override
  String get game_phase_waiting_signals => '신호 대기 중';
  @override
  String get game_pipeline => '세션 파이프라인';
  @override
  String get game_play_status => '플레이 상태';
  @override
  String get game_random_reroll => '셔플';
  @override
  String get game_random_title => '랜덤 선택';
  @override
  String get game_recently_played => '최근 플레이';
  @override
  String get game_refresh_tracks => '트랙 새로고침';
  @override
  String get game_remove => '삭제';
  @override
  String get game_rename => '이름 변경';
  @override
  String get game_rename_label => '게임 이름';
  @override
  String get game_scrape => '메타데이터 가져오기';
  @override
  String get game_scrape_applied => '메타데이터 업데이트됨';
  @override
  String get game_scrape_failed => '메타데이터 가져오기 실패';
  @override
  String get game_scrape_no_result => '일치하는 항목을 찾을 수 없습니다';
  @override
  String get game_scrape_query => '제목 또는 소스 ID';
  @override
  String get game_search => '게임 검색';
  @override
  String get game_session_events => '세션 이벤트';
  @override
  String get game_session_idle => '캡처가 시작되지 않았습니다';
  @override
  String get game_session_listening => '수신 중';
  @override
  String get game_set_cover => '표지 설정';
  @override
  String get game_show_hook_text_window => '후크 텍스트 창 표시';
  @override
  String get game_site_score => '사이트 평점';
  @override
  String get game_sort => '정렬';
  @override
  String get game_sort_added => '추가 날짜';
  @override
  String get game_sort_last_played => '마지막 플레이';
  @override
  String get game_sort_name => '이름';
  @override
  String get game_sort_release => '출시일';
  @override
  String get game_sort_site_score => '사이트 평점';
  @override
  String get game_sort_user_rating => '내 평점';
  @override
  String get game_stat_daily => '일간 플레이 시간';
  @override
  String get game_stat_delete_session => '이 세션 삭제';
  @override
  String get game_stat_last_played => '마지막 플레이';
  @override
  String get game_stat_no_sessions => '아직 기록된 플레이 세션이 없습니다';
  @override
  String get game_stat_session_list => '세션 기록';
  @override
  String get game_stat_sessions => '세션';
  @override
  String get game_stat_today => '오늘 플레이 시간';
  @override
  String get game_stat_total_time => '총 플레이 시간';
  @override
  String get game_status_dropped => '중단';
  @override
  String get game_status_not_configured => '미확인';
  @override
  String get game_status_on_hold => '보류';
  @override
  String get game_status_played => '플레이 완료';
  @override
  String get game_status_playing => '플레이 중';
  @override
  String get game_status_ready => '준비됨';
  @override
  String get game_status_unset => '미설정';
  @override
  String get game_status_waiting => '대기 중';
  @override
  String get game_status_want_to_play => '플레이 예정';
  @override
  String get game_stop_listening => '수신 중지';
  @override
  String get game_summary_aliases => '별칭';
  @override
  String get game_summary_all_titles => '모든 제목';
  @override
  String get game_summary_average_hours => '평균 플레이 시간';
  @override
  String get game_summary_none => '아직 설명이 없습니다. 메타데이터를 가져와 채워보세요.';
  @override
  String get game_summary_release_date => '출시일';
  @override
  String get game_tags_clear => '선택 해제';
  @override
  String get game_tags_title => '게임 태그';
  @override
  String get game_text_endpoints => '텍스트 엔드포인트';
  @override
  String get game_text_gaps => '시퀀스 갭';
  @override
  String get game_text_gaps_hint => '시퀀스 갭 = 후크 텍스트 링에서 누락된 대사 수. 0이 정상입니다';
  @override
  String get game_text_source_engine => '엔진 후크';
  @override
  String get game_text_source_unknown => '알 수 없는 소스';
  @override
  String get game_text_source_websocket => 'WebSocket';
  @override
  String get game_text_thread => '텍스트 스레드';
  @override
  String game_text_thread_audio_count({required Object count}) =>
      '${count}개 오디오 포함';
  @override
  String get game_text_thread_hint => 'LunaTranslator처럼 깨끗한 대화 스레드를 선택하세요';
  @override
  String get game_track_auto => '자동 선택';
  @override
  String get game_track_clips => '클립';
  @override
  String get game_track_energy => '에너지';
  @override
  String get game_track_exclude_bgm => 'BGM으로 표시';
  @override
  String get game_track_exclusion_hint =>
      'BGM/환경음 트랙을 제외로 표시하면 자동 선택에서 음성으로 취급하지 않습니다. 음성이 없는 대사가 더 이상 BGM을 가져오지 않습니다.';
  @override
  String get game_track_exclusion_title => '오디오 트랙 제외';
  @override
  String get game_track_preview => '이 트랙 미리 듣기';
  @override
  String get game_track_preview_failed => '이 트랙에서 최근 오디오를 캡처할 수 없습니다';
  @override
  String get game_track_preview_stop => '미리 듣기 중지';
  @override
  String get game_track_restore => '트랙 복원';
  @override
  String get game_track_select_as_voice => '음성 트랙으로 사용';
  @override
  String get game_track_select_requires_engine => '트랙 선택에는 활성 엔진 후크 세션이 필요합니다';
  @override
  String get game_track_voice => '음성';
  @override
  String get game_tracks_loopback_hint =>
      '시스템 루프백은 전체 시스템의 믹스된 출력을 하나의 스트림으로 캡처합니다. 개별 트랙 열거는 사용할 수 없습니다.';
  @override
  String get game_tracks_pcm_only_hint =>
      '개별 트랙 선택은 엔진 PCM이 활성 오디오 백엔드일 때만 캡처에 영향을 줍니다. 현재 백엔드에서는 아래 목록이 읽기 전용입니다.';
  @override
  String get game_tracks_resource_mode_hint =>
      '게임 리소스 오디오 모드에서는 각 음성 대사가 게임 파일에서 직접 추출되므로, PCM 트랙 목록이 없습니다. 자동 또는 수동 트랙 선택은 엔진 PCM 캡처에만 적용됩니다.';
  @override
  String get game_unread_lines => '읽지 않음';
  @override
  String get game_upscaling => '게임 창 업스케일링';
  @override
  String get game_upscaling_auto => '자동';
  @override
  String get game_upscaling_hint_external =>
      '이미 실행 중인 Magpie가 감지되어 Fushi가 그대로 두었습니다. Win+Shift+A를 눌러 게임 창을 업스케일링하세요.';
  @override
  String get game_upscaling_hint_first_run =>
      'Magpie가 이번에 초기 설정을 완료해야 했습니다. Win+Shift+A를 눌러 지금 업스케일링하세요. 다음에 게임을 시작하면 자동으로 적용됩니다.';
  @override
  String get game_upscaling_hint_manual => 'Win+Shift+A를 눌러 게임 창을 업스케일링하세요.';
  @override
  String get game_upscaling_installed_only => '설치된 경우만';
  @override
  String get game_upscaling_off => '끄기';
  @override
  String get game_upscaling_status_active => '창 업스케일링 켜짐';
  @override
  String get game_upscaling_status_failed => '창 업스케일링을 시작할 수 없습니다';
  @override
  String get game_upscaling_status_manual => '창 업스케일링이 준비되었지만 자동으로 시작되지 않았습니다';
  @override
  String get game_upscaling_status_unavailable => '창 업스케일링을 사용할 수 없습니다';
  @override
  String get game_user_rating => '내 평점';
  @override
  String get game_view_detail => '상세 보기';
  @override
  String get game_waiting_for_text => '텍스트 대기 중';
  @override
  String game_waveform_range_label({
    required Object start,
    required Object end,
    required Object duration,
    required Object total,
  }) => '${start} - ${end} (선택 ${duration} / 전체 ${total})';
  @override
  String get game_waveform_select_title => '오디오 범위 선택';
  @override
  String get game_window_bound => '연결됨';
  @override
  String get game_window_missing => '미연결';
  @override
  String get games => '게임';
  @override
  String get global_context_capture => '선택 컨텍스트 캡처';
  @override
  String get global_context_capture_hint =>
      '포그라운드 앱에서 주변 텍스트를 읽어 현재 문장을 표시합니다 (Windows 전용)';
  @override
  String go_to_chapter({required Object n}) => '챕터 ${n}';
  @override
  String get handlebar_audio => '오디오';
  @override
  String get handlebar_book_cover => '책 표지';
  @override
  String get handlebar_card_image => 'Card Image (Cover / GIF)';
  @override
  String get handlebar_cue_sentence => '자막 예문';
  @override
  String handlebar_deprecated_label({required Object label}) =>
      '${label} (지원 중단)';
  @override
  String get handlebar_document_title => '문서 제목';
  @override
  String get handlebar_expression => '표현';
  @override
  String get handlebar_frequencies => '빈도 (HTML)';
  @override
  String get handlebar_frequency_harmonic_rank => '빈도 (순위)';
  @override
  String get handlebar_furigana_plain => '후리가나';
  @override
  String get handlebar_glossary => '해설';
  @override
  String get handlebar_glossary_first => '해설 (첫 번째)';
  @override
  String get handlebar_pitch_accent_categories => '악센트 유형';
  @override
  String get handlebar_pitch_accent_positions => '악센트 위치';
  @override
  String get handlebar_popup_selection_text => '팝업 선택 텍스트';
  @override
  String get handlebar_reading => '읽기';
  @override
  String get handlebar_selected_glossary => '선택된 해설';
  @override
  String get handlebar_sentence => '예문';
  @override
  String get handlebar_sentence_audio => 'Sentence Audio';
  @override
  String get handlebar_video_clip => 'Video Clip (GIF)';
  @override
  String get harmonic_frequency => '단어 빈도 집계';
  @override
  String health_match_summary({required Object pct}) => '일치 ${pct}%';
  @override
  String get highlight_on_tap => '탭 시 텍스트 강조';
  @override
  String get home_activity => '활동';
  @override
  String get home_activity_empty => '아직 활동이 없습니다';
  @override
  String get home_continue => '계속하기';
  @override
  String get home_filter_added => '추가됨';
  @override
  String get home_filter_all => '전체';
  @override
  String get home_filter_game => '게임';
  @override
  String get home_filter_read => '읽기';
  @override
  String get home_filter_watch => '시청';
  @override
  String get home_recently_added => '최근 추가';
  @override
  String get home_remote_source => '원격';
  @override
  String home_session_count({required Object n}) => '${n} 세션';
  @override
  String get home_today => '오늘';
  @override
  String get home_yesterday => '어제';
  @override
  String get hover_auto_lookup => '마우스를 올리면 사전 찾기';
  @override
  String get hover_auto_lookup_hint =>
      '마우스를 글자 위에 올리면 자동으로 사전을 찾습니다. 클릭하거나 Shift를 누를 필요가 없습니다. 팝업은 최대 1개 층까지. 데스크톱 전용.';
  @override
  String get icon_custom => '사용자 정의';
  @override
  String get icon_custom_confirm_body => '선택한 이미지로 홈 화면 바로가기를 만듭니다. 계속하시겠습니까?';
  @override
  String get icon_custom_confirm_title => '사용자 정의 아이콘';
  @override
  String get icon_custom_hint => '아이콘을 탭하여 전환하거나, 아래에서 사용자 정의 이미지를 선택하세요.';
  @override
  String get icon_default => '기본';
  @override
  String get icon_full => '전체';
  @override
  String get icon_shortcut_created => '홈 화면 바로가기가 생성되었습니다.';
  @override
  String get icon_shortcut_unsupported => '이 기기에서는 바로가기가 지원되지 않습니다.';
  @override
  String get icon_switch_success => '앱 아이콘이 변경되었습니다.';
  @override
  String get icon_transparent => '투명';
  @override
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  @override
  String get image_pause => '이미지에서 일시정지';
  @override
  String get image_pause_hint => '재생 중 이미지가 표시되면 자동으로 일시정지합니다.';
  @override
  String get image_pause_off => '끄기';
  @override
  String get image_search_label_after => '검색 결과';
  @override
  String get image_search_label_before => '이미지 선택 중 ';
  @override
  String get image_search_label_middle => '/ ';
  @override
  String get image_search_label_none_before => '선택 중 ';
  @override
  String get image_search_label_none_middle => '이미지 없음 ';
  @override
  String get import_complete => '사전 가져오기가 완료되었습니다.';
  @override
  String import_duplicate({required Object name}) =>
      '『${name}』이라는 이름의 사전이 이미 가져오기 되어있습니다.';
  @override
  String get import_extract => '파일 추출 중...';
  @override
  String get import_failed => '사전 가져오기에 실패했습니다.';
  @override
  String get import_in_progress => '가져오기 진행 중';
  @override
  String import_name({required Object name}) => '『${name}』 가져오는 중...';
  @override
  String import_sidecar_audio({required Object count}) =>
      '오디오 파일 ${count}개를 자동으로 연결했습니다';
  @override
  String import_sidecar_subtitle({required Object name}) =>
      '자막을 자동으로 연결했습니다: ${name}';
  @override
  String get import_start => '가져오기 준비 중...';
  @override
  String get import_step_building_epub => 'EPUB 생성 중…';
  @override
  String get import_step_converting_epub => 'EPUB로 변환 중…';
  @override
  String import_step_copying_file({required Object name}) => '${name} 복사 중…';
  @override
  String get import_step_done => '완료';
  @override
  String get import_step_importing_epub => 'EPUB 가져오는 중…';
  @override
  String get import_step_matching => '오디오 정렬 중…';
  @override
  String get import_step_parsing => '자막 분석 중…';
  @override
  String get import_step_persisting => '파일 저장 중…';
  @override
  String get import_step_reading => '파일 읽는 중…';
  @override
  String get import_step_reading_idb => '책 정보 읽는 중…';
  @override
  String get import_step_saving => '기록 저장 중…';
  @override
  String get import_theme => '테마 가져오기';
  @override
  String get import_theme_hint => '테마 코드 붙여넣기';
  @override
  String get import_theme_invalid => '유효하지 않은 테마 코드';
  @override
  String get import_theme_success => '테마가 가져와졌습니다';
  @override
  String import_unsupported_file_format({required Object ext}) =>
      '지원하지 않는 파일 형식: ${ext}';
  @override
  String get increase => '증가';
  @override
  String get info_empty_home_tab => '기록이 비어 있습니다';
  @override
  String init_error_message({required Object error}) => '초기화 실패: ${error}';
  @override
  String get initialization_failed => '초기화 실패';
  @override
  String get interconnect_backup_backend => '인터커넥트를 백업 백엔드로 사용';
  @override
  String get interconnect_backup_backend_active =>
      '백업이 이미 페어링된 기기로 전송됩니다. 동기화 및 백업에서 다른 백엔드를 선택하여 변경하세요.';
  @override
  String get interconnect_backup_backend_apply => '백업 백엔드로 설정';
  @override
  String interconnect_backup_backend_current({required Object backend}) =>
      '현재 백업 백엔드: ${backend}';
  @override
  String get interconnect_backup_backend_hint =>
      '클라우드 드라이브 대신 페어링된 기기로 백업 및 동기화합니다. 위의 페어링된 기기 업로드 스위치에서 허용하는 모든 항목이 전송됩니다.';
  @override
  String get interconnect_backup_backend_needs_pairing => '먼저 위에서 기기를 연결하세요.';
  @override
  String get interconnect_enable => '인터커넥트 활성화';
  @override
  String get interconnect_enable_hint =>
      'LAN을 통해 다른 기기에 연결합니다. 클라우드 백업 백엔드와 함께 사용 가능하며, 서로 충돌하지 않습니다.';
  @override
  String get interconnect_moved_note => '연결 및 서버 설정은 Fushi 인터커넥트 카테고리에 있습니다';
  @override
  String get interconnect_section_client => '다른 기기에 연결';
  @override
  String get interconnect_section_delegate => '페어링된 기기에 위임';
  @override
  String get interconnect_section_related => '원격 콘텐츠 및 검색';
  @override
  String get interconnect_summary => '기기 간 직접 동기화 및 이 기기를 서버로 호스팅';
  @override
  String get interconnect_upload_audiobook_files => '오디오북 파일 업로드';
  @override
  String get interconnect_upload_audiobook_files_hint =>
      '이 기기의 오디오북 음성 및 자막 패키지를 인터커넥트 피어로 동기화합니다 (대용량).';
  @override
  String get interconnect_upload_content => '도서 파일 업로드';
  @override
  String get interconnect_upload_content_hint =>
      '이 기기의 도서 및 읽기 콘텐츠를 인터커넥트 피어로 동기화합니다.';
  @override
  String get interconnect_upload_dictionary => '사전 업로드';
  @override
  String get interconnect_upload_dictionary_hint =>
      '이 기기의 사전을 인터커넥트 피어로 동기화합니다.';
  @override
  String get interconnect_upload_section => '인터커넥트 피어로 업로드';
  @override
  String get interconnect_upload_video_files => '동영상 파일 업로드';
  @override
  String get interconnect_upload_video_files_hint =>
      '이 기기의 로컬 동영상 파일을 인터커넥트 피어로 동기화합니다 (대용량).';
  @override
  String get invert_audiobook_skip_direction => '하단 바 건너뛰기 버튼 반전';
  @override
  String get invert_swipe_direction => '스와이프 페이지 넘김 방향 반전';
  @override
  String get invert_volume_buttons => '볼륨 버튼 반전';
  @override
  String get jump_to_char => '문자 위치로 이동';
  @override
  String jump_to_char_current({
    required Object current,
    required Object total,
  }) => '현재: ${current} / ${total}';
  @override
  String get jump_to_char_hint => '문자 위치를 입력하세요…';
  @override
  String get keep_screen_awake => '화면 항상 켜기';
  @override
  String get library_search => '라이브러리 검색';
  @override
  String get loading_illustrations => '삽화 로드 중…';
  @override
  String get loading_slow_message =>
      '데이터 저장 위치가 현재 연결 해제된 네트워크 또는 이동식 드라이브에 있으면 시작이 멈출 수 있습니다. 재시도를 눌러 이 세션에서 기본 저장 위치를 사용하세요. 데이터는 그대로 유지됩니다.';
  @override
  String get loading_slow_message_mobile =>
      '시작이 평소보다 오래 걸리고 있습니다 — Fushi가 대용량 라이브러리나 사전을 로드하는 중일 수 있습니다. 잠시 기다리거나 재시도를 눌러 다시 로드하세요. 데이터는 안전하며 손실되지 않습니다.';
  @override
  String get loading_slow_title => '시작이 평소보다 오래 걸리고 있습니다';
  @override
  String get local_audio => '로컬 오디오';
  @override
  String get local_audio_add_db => '로컬 오디오 데이터베이스 추가';
  @override
  String get local_audio_edit_sources => '소스 편집';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      '오디오 데이터베이스 가져오기 실패: ${reason}';
  @override
  String get local_audio_imported => '오디오 데이터베이스가 추가됨';
  @override
  String get local_audio_invalid_db =>
      '이 파일은 사용 가능한 오디오 데이터베이스가 아닙니다 (Local Audio Server 데이터베이스가 아니거나 오디오가 없습니다).';
  @override
  String get local_audio_no_sources => '이 데이터베이스에서 소스를 찾을 수 없음';
  @override
  String get local_audio_reference_original => '원본 파일 참조 (복사하지 않음)';
  @override
  String get local_audio_reference_original_desc =>
      '데이터베이스를 현재 위치에 유지하고 원본 경로에서 읽습니다. 파일이 이동되거나 삭제되면 소스가 끊어집니다.';
  @override
  String get local_audio_source_order_title => '소스 우선순위';
  @override
  String get log_copy_all => '모두 복사';
  @override
  String get log_export_failed => '내보내기 실패';
  @override
  String get log_export_file => '파일로 내보내기';
  @override
  String get log_export_saved => '로그 저장됨';
  @override
  String get log_upload_action => '서버에 업로드';
  @override
  String get log_upload_consent_agree => '동의하고 업로드';
  @override
  String get log_upload_consent_body =>
      '문제 진단을 돕기 위해 로그 텍스트(오류 메시지, 파일 경로, 책 제목 등이 포함될 수 있음)와 앱 버전, 플랫폼, 기기 모델이 개발자 서버로 업로드됩니다. 업로드를 누를 때만 전송되며 자동으로 보내지지 않습니다.';
  @override
  String get log_upload_consent_title => '로그를 서버에 업로드할까요?';
  @override
  String get log_upload_failed => '업로드 실패';
  @override
  String get log_upload_in_progress => '로그 업로드 중…';
  @override
  String get log_upload_success => '로그가 업로드됨';
  @override
  String get log_upload_too_large => '로그가 너무 커서 업로드할 수 없습니다';
  @override
  String get login => '로그인';
  @override
  String get lookup_audio_volume => '단어 찾기 음량';
  @override
  String get low_memory_mode => '저메모리 모드';
  @override
  String get low_memory_mode_hint =>
      '캐시 및 메모리 사용량을 줄입니다. 일부 변경 사항은 재시작 후 적용됩니다.';
  @override
  String get low_memory_mode_suggestion => '설정 → 기타 설정에서 저메모리 모드를 활성화해 보세요.';
  @override
  String get lyrics_artist => '아티스트';
  @override
  String get lyrics_blur => '가사 흐리게';
  @override
  String get lyrics_blur_hint => '듣기 몰입을 위해 현재 줄을 흐리게 합니다. 마우스를 올리거나 탭하면 표시됩니다';
  @override
  String get lyrics_font_size => '가사 글꼴 크기';
  @override
  String get lyrics_font_size_hint => '가사 글꼴 크기는 책 모드와 독립적입니다';
  @override
  String get lyrics_mode => '가사 모드';
  @override
  String get lyrics_mode_hint_body =>
      '가사 모드에는 자체 글꼴 크기 설정이 있습니다. ⚙ 설정 → 타이포그래피에서 조정할 수 있습니다.';
  @override
  String get lyrics_mode_hint_title => '가사 모드';
  @override
  String get lyrics_text_color => '가사 텍스트 색상';
  @override
  String get lyrics_text_color_hint => '테마를 따르지 않고 가사 텍스트에 사용자 지정 색상을 사용합니다';
  @override
  String get lyrics_title => '제목';
  @override
  String get lyrics_vertical_writing => '세로 가사';
  @override
  String get lyrics_vertical_writing_hint =>
      '가사를 위에서 아래로, 오른쪽에서 왼쪽으로 읽습니다 (도서 모드와 독립)';
  @override
  String get manage_audio_sources => '오디오 소스 관리';
  @override
  String get manager => '관리';
  @override
  String get manga_mode_toggle => 'Reading Mode';
  @override
  String get manga_ocr_delete => '모델 삭제';
  @override
  String get manga_ocr_delete_confirm_message =>
      '디스크 공간이 확보됩니다. 나중에 다시 다운로드할 수 있습니다.';
  @override
  String get manga_ocr_delete_confirm_title => 'OCR 모델을 삭제하시겠습니까?';
  @override
  String get manga_ocr_delete_done => '모델 삭제됨';
  @override
  String get manga_ocr_download => '모델 다운로드';
  @override
  String get manga_ocr_download_done => '모델 다운로드 완료';
  @override
  String get manga_ocr_download_failed => '모델 다운로드 실패';
  @override
  String manga_ocr_downloading_file({required Object file}) =>
      '${file} 다운로드 중…';
  @override
  String get manga_ocr_engine_builtin => '내장';
  @override
  String get manga_ocr_engine_external => '외부 Mokuro';
  @override
  String get manga_ocr_engine_none =>
      '사용 가능한 OCR 엔진이 없습니다. 내장 모델을 다운로드하거나 설정에서 Mokuro CLI 경로를 지정하세요.';
  @override
  String get manga_ocr_external_cli_hint =>
      '자동 감지하려면 비워 두세요 (FUSHI_MOKURO / PATH)';
  @override
  String get manga_ocr_external_cli_label => '외부 Mokuro CLI 경로';
  @override
  String get manga_ocr_external_detect => '감지';
  @override
  String manga_ocr_external_detected({required Object version}) =>
      '감지됨: ${version}';
  @override
  String get manga_ocr_external_not_found => 'Mokuro를 찾을 수 없습니다';
  @override
  String get manga_ocr_model_status_missing => 'OCR 모델이 다운로드되지 않았습니다';
  @override
  String get manga_ocr_model_status_ready => 'OCR 모델 준비 완료';
  @override
  String get manga_ocr_section => '만화 OCR';
  @override
  String get manga_ocr_section_summary => '내장 OCR 모델 및 외부 Mokuro CLI';
  @override
  String get manga_ocr_unsupported => '이 플랫폼에서는 내장 만화 OCR을 아직 사용할 수 없습니다.';
  @override
  String get manga_ocr_wizard_done => '만화 가져오기 완료';
  @override
  String get manga_ocr_wizard_failed => 'OCR 실패';
  @override
  String get manga_ocr_wizard_has_mokuro =>
      '이 폴더에 이미 .mokuro 파일이 있습니다 — 일반 가져오기를 사용하세요.';
  @override
  String get manga_ocr_wizard_importing => '가져오는 중…';
  @override
  String get manga_ocr_wizard_no_images => '이 폴더에 이미지가 없습니다.';
  @override
  String manga_ocr_wizard_page_progress({
    required Object done,
    required Object total,
  }) => '페이지 ${done} / ${total}';
  @override
  String get manga_ocr_wizard_pick_folder => '이미지 폴더 선택';
  @override
  String get manga_ocr_wizard_run => 'OCR 실행';
  @override
  String get manga_ocr_wizard_running => 'OCR 실행 중…';
  @override
  String get manga_ocr_wizard_title => 'OCR 만화 가져오기';
  @override
  String get manga_ocr_wizard_title_label => '제목 (선택 사항)';
  @override
  String get manga_online_base_url_label => '온라인 카탈로그 URL';
  @override
  String get manga_online_catalog_title => '온라인 카탈로그';
  @override
  String get manga_online_download_selected => '선택 항목 다운로드';
  @override
  String get manga_online_downloaded => '가져오기 완료';
  @override
  String get manga_online_failed => '다운로드 실패';
  @override
  String get manga_online_load_failed => '카탈로그 로드 실패';
  @override
  String get manga_online_queue_added => '다운로드 대기열에 추가됨';
  @override
  String manga_online_queue_progress({
    required Object done,
    required Object total,
  }) => '권 ${done} / ${total}';
  @override
  String get manga_online_queue_section => '만화 카탈로그 다운로드';
  @override
  String get manga_online_search_hint => '시리즈 검색';
  @override
  String get manga_online_stage_cbz => '권 다운로드 중…';
  @override
  String get manga_online_stage_extract => '압축 해제 중…';
  @override
  String get manga_online_stage_mokuro => 'OCR 데이터 다운로드 중…';
  @override
  String get manga_reading_mode_spread => '펼침 보기';
  @override
  String get manga_reading_mode_webtoon => '웹툰';
  @override
  String get manga_remote_ocr_cancelled => '호스트에서 원격 OCR이 취소되었습니다.';
  @override
  String get manga_remote_ocr_engine => '페어링된 호스트';
  @override
  String get manga_remote_ocr_failed => '원격 OCR 실패';
  @override
  String get manga_remote_ocr_no_host => '만화 OCR을 지원하는 페어링된 호스트에 연결할 수 없습니다.';
  @override
  String get manga_remote_ocr_not_ready =>
      '페어링된 호스트의 OCR 모델이 다운로드되지 않았습니다. 호스트에서 먼저 다운로드해 주세요.';
  @override
  String get manga_remote_ocr_running => '페어링된 호스트에서 OCR 실행 중…';
  @override
  String get manga_remote_ocr_unsupported => '페어링된 호스트가 만화 OCR을 지원하지 않습니다.';
  @override
  String manga_remote_ocr_uploading({
    required Object done,
    required Object total,
  }) => '페이지 업로드 중 ${done} / ${total}…';
  @override
  String get margin_bottom => '아래 여백';
  @override
  String get margin_left => '왼쪽 여백';
  @override
  String get margin_right => '오른쪽 여백';
  @override
  String get margin_top => '위 여백';
  @override
  String get maximum_terms => '사전 검색 결과 최대 표제어 수';
  @override
  String get media_source_add => 'Add Source';
  @override
  String get media_source_add_local_folder => 'Local Folder';
  @override
  String get media_source_add_network => '네트워크';
  @override
  String media_source_count_book({required Object n}) => '도서 ${n}권';
  @override
  String media_source_count_video({required Object n}) => '동영상 ${n}개';
  @override
  String media_source_last_scan({required Object time}) => '마지막 스캔 ${time}';
  @override
  String get media_source_manage_title => 'Manage Sources';
  @override
  String get media_source_network_label_optional => '표시 이름 (선택 사항)';
  @override
  String get media_source_network_missing_fields =>
      '호스트, 사용자 이름, 원격 경로, 비밀번호 또는 키를 입력하세요';
  @override
  String get media_source_network_remote_path => '원격 경로';
  @override
  String get media_source_network_subtitle => 'SFTP / FTP / WebDAV 원격 라이브러리';
  @override
  String get media_source_no_sources => '소스가 아직 없습니다';
  @override
  String get media_source_open_folder => 'Open Folder';
  @override
  String get media_source_remove => 'Remove Source';
  @override
  String get media_source_remove_keeps_media => '소스를 제거해도 가져온 미디어는 삭제되지 않습니다.';
  @override
  String get media_source_rescan => '다시 스캔';
  @override
  String get media_source_scan_error => '스캔 실패';
  @override
  String get media_tracking_access_token => '액세스 토큰';
  @override
  String get media_tracking_access_token_hint => '쓰기 권한이 있는 개인 액세스 토큰을 생성하세요';
  @override
  String get media_tracking_account => 'Bangumi 계정';
  @override
  String get media_tracking_add_mapping => '매핑 추가';
  @override
  String get media_tracking_anime => '애니메이션';
  @override
  String get media_tracking_chapter => '화';
  @override
  String get media_tracking_connect => '연결 및 확인';
  @override
  String get media_tracking_connected_as => '연결된 계정';
  @override
  String get media_tracking_delete_mapping => '매핑 제거';
  @override
  String get media_tracking_episode => '에피소드';
  @override
  String get media_tracking_kind => '카테고리';
  @override
  String get media_tracking_local_item => '로컬 항목';
  @override
  String get media_tracking_manga => '만화';
  @override
  String get media_tracking_mappings => '항목 매핑';
  @override
  String get media_tracking_no_mappings =>
      '수동 매핑이 아직 없습니다. Fushi가 첫 번째 에피소드 완료 또는 읽기 진행 시 자동으로 매칭합니다. 모호한 항목은 여기에 추가하세요.';
  @override
  String get media_tracking_novel => '소설';
  @override
  String get media_tracking_pending => '대기 중인 업데이트';
  @override
  String get media_tracking_progress_mode => '진행 단위';
  @override
  String get media_tracking_progress_offset => '시작 번호';
  @override
  String get media_tracking_saved => '매핑 저장됨';
  @override
  String get media_tracking_search => 'Bangumi 검색';
  @override
  String get media_tracking_search_results => 'Bangumi 결과';
  @override
  String get media_tracking_summary => '애니메이션, 소설, 만화 진행 상황을 Bangumi에 자동 기록';
  @override
  String get media_tracking_sync_failed => '동기화 실패. 업데이트가 대기열에 남아 있습니다.';
  @override
  String get media_tracking_sync_now => '지금 동기화';
  @override
  String get media_tracking_sync_success => '동기화 완료';
  @override
  String get media_tracking_token_required => '먼저 액세스 토큰을 입력하고 확인하세요';
  @override
  String get media_tracking_volume => '권';
  @override
  String get microphone_permission_denied => '녹음하려면 마이크 권한이 필요합니다.';
  @override
  String get mining_audio_quality => '오디오 품질';
  @override
  String get mining_audio_quality_high => '높음';
  @override
  String get mining_audio_quality_hint => '비트레이트가 높을수록 음질이 좋지만 카드 크기가 커집니다.';
  @override
  String get mining_audio_quality_max => '최대';
  @override
  String get mining_audio_quality_standard => '표준';
  @override
  String get mining_image_quality => '이미지 / GIF 품질';
  @override
  String get mining_image_quality_hd => 'HD';
  @override
  String get mining_image_quality_hint =>
      '높을수록 선명하지만 카드 크기가 커집니다. 최대는 원본 해상도를 유지하며, 애니메이션 GIF는 카드 사용성을 위해 제한됩니다.';
  @override
  String get mining_image_quality_max => '최대';
  @override
  String get mining_image_quality_standard => '표준';
  @override
  String get mining_image_quality_thrift => '데이터 절약';
  @override
  String get move_down => '아래로 이동';
  @override
  String get move_up => '위로 이동';
  @override
  String get name => '이름';
  @override
  String get nav_browser_extension => '확장 프로그램';
  @override
  String get nav_downloads => '다운로드';
  @override
  String get nav_game => '게임';
  @override
  String get nav_home => '홈';
  @override
  String get nav_lookup => '단어 찾기';
  @override
  String get nav_video => '비디오';
  @override
  String get next_sentence => '다음 문장';
  @override
  String get no_audio_file => '저장할 오디오 파일이 없습니다.';
  @override
  String get no_collections => '북마크나 저장된 문장이 없습니다';
  @override
  String get no_debug_logs => '디버그 로그가 없습니다.';
  @override
  String get no_illustrations_found => '삽화를 찾을 수 없습니다';
  @override
  String get no_results_found => '결과를 찾을 수 없습니다.';
  @override
  String get no_search_results => '검색 결과가 없습니다.';
  @override
  String get no_sentence_selected => '선택한 문장이 없습니다';
  @override
  String get no_sentences_found => '문장을 찾을 수 없습니다';
  @override
  String get no_text => '텍스트가 없습니다.';
  @override
  String get no_text_to_search => '검색할 텍스트가 없습니다.';
  @override
  String get now_listening_label => '현재 듣는 중';
  @override
  String get on_screen_keyboard => '화면 키보드';
  @override
  String get options_collapse => '검색 시 접기';
  @override
  String get options_delete => '삭제';
  @override
  String get options_edit => '편집';
  @override
  String get options_expand => '검색 시 펼치기';
  @override
  String get options_github => 'GitHub 저장소 보기';
  @override
  String get options_hide => '검색 시 숨기기';
  @override
  String get options_language => '언어 설정';
  @override
  String get options_show => '검색 시 표시';
  @override
  String get overlay_lookup_independent_size => '팝아웃 검색 별도 크기';
  @override
  String get overlay_lookup_independent_size_hint =>
      '앱 외부 팝아웃 검색 창에 앱 내 팝업을 따르지 않는 별도의 최대 크기를 지정합니다';
  @override
  String get overlay_lookup_max_height => '팝아웃 검색 최대 높이';
  @override
  String get overlay_lookup_max_width => '팝아웃 검색 최대 너비';
  @override
  String page_progress({required Object current, required Object total}) =>
      '페이지 ${current} / ${total}';
  @override
  String get paste => '붙여넣기';
  @override
  String get pause => '일시정지';
  @override
  String get pause_on_lookup => '검색 시 일시정지';
  @override
  String get pdf_bookmark_added => '북마크 추가됨';
  @override
  String get pdf_bookmarks => '북마크';
  @override
  String get pdf_bookmarks_empty => '북마크가 아직 없습니다.';
  @override
  String get pdf_no_text_layer => '이 PDF에는 텍스트 레이어가 없어(스캔 이미지) 검색을 사용할 수 없습니다.';
  @override
  String get pdf_outline => '목차';
  @override
  String get pdf_outline_empty => '이 PDF에는 목차가 없습니다.';
  @override
  String get pick_image => '이미지 선택';
  @override
  String get play => '재생';
  @override
  String get play_from_cue => '이 문장부터 재생';
  @override
  String get playback_auto_pause => '자막 일시정지 재생 모드';
  @override
  String get playback_speed => '속도';
  @override
  String get popup_append_sentence_tooltip => '이 문장을 카드에 추가';
  @override
  String get popup_auto_expand_dictionaries => '자동 행 펼치기';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      '\'사전 접기\'가 켜져 있어도 사전 블록의 처음 N개 행을 펼친 상태로 유지합니다. 펼쳐지는 수는 열 설정을 따릅니다: 행 x 열 (0 = 모두 접기)';
  @override
  String get popup_bottom_docked => '하단 고정 팝업';
  @override
  String get popup_bottom_docked_hint =>
      '단어 찾기 팝업을 찾은 단어를 따라가지 않고 화면 하단의 전체 폭 패널로 고정합니다.';
  @override
  String get popup_clear_sentence_draft_tooltip => '추가한 문장 비우기';
  @override
  String get popup_ctx_adjust_button => '문맥 조정';
  @override
  String get popup_ctx_box_current => 'Current';
  @override
  String get popup_ctx_box_empty => '(없음)';
  @override
  String get popup_ctx_box_next => 'After';
  @override
  String get popup_ctx_box_prev => 'Before';
  @override
  String get popup_ctx_cancel => '취소';
  @override
  String get popup_ctx_confirm => 'Confirm';
  @override
  String get popup_ctx_modal_count => 'Selected %d';
  @override
  String get popup_ctx_modal_eyebrow => 'Before mining';
  @override
  String get popup_ctx_modal_title => '문장 문맥 선택';
  @override
  String get popup_ctx_next_minus => 'Remove after';
  @override
  String get popup_ctx_next_plus => 'Add after';
  @override
  String get popup_ctx_prev_minus => 'Remove before';
  @override
  String get popup_ctx_prev_plus => 'Add before';
  @override
  String get popup_dictionary_max_columns => '최대 사전 열 수 (자동 채움)';
  @override
  String get popup_dictionary_max_columns_hint =>
      '행당 이 수까지 사전 열을 자동 채웁니다. 좁은 화면에서는 더 적게 표시됩니다';
  @override
  String get popup_font_size_decrease => '사전 텍스트 축소';
  @override
  String get popup_font_size_increase => '사전 텍스트 확대';
  @override
  String get popup_instant_scroll => '팝업 즉시 스크롤';
  @override
  String get popup_instant_scroll_hint =>
      'e-잉크 화면용: 단어 찾기 팝업을 스크롤 애니메이션 없이 고정 거리만큼 즉시 이동합니다.';
  @override
  String get popup_max_height => '팝업 최대 높이';
  @override
  String get popup_max_width => '팝업 최대 너비';
  @override
  String get popup_no_audio_available => '사용 가능한 오디오 없음';
  @override
  String get popup_sentence_context_next_label => '뒤';
  @override
  String get popup_sentence_context_prev_label => '앞';
  @override
  String get popup_wheel_speed => '팝업 스크롤 속도';
  @override
  String get popup_wheel_speed_hint =>
      '사전 팝업의 마우스 휠 스크롤 속도 (브라우저 확장 프로그램에도 적용됩니다).';
  @override
  String get prev_sentence => '이전 문장';
  @override
  String get preview => '미리보기';
  @override
  String get preview_badge => '뱃지';
  @override
  String get preview_switch => '스위치';
  @override
  String get processing_in_progress => '이미지 처리 중';
  @override
  String get profile_book_profile => '프로필 지정';
  @override
  String profile_confirm_delete({required Object name}) =>
      '프로필 "${name}"을(를) 삭제하시겠습니까?';
  @override
  String get profile_copy => '복사';
  @override
  String get profile_copy_suffix => '(복사)';
  @override
  String get profile_create => '프로필 생성';
  @override
  String get profile_delete => '삭제';
  @override
  String get profile_export => '내보내기';
  @override
  String get profile_export_failed => '내보내기 실패';
  @override
  String profile_follow_default_current({required Object name}) =>
      '기본값 따르기 (${name})';
  @override
  String get profile_import => '가져오기';
  @override
  String get profile_import_failed => '가져오기 실패';
  @override
  String get profile_import_invalid => '잘못된 프로필 파일';
  @override
  String get profile_import_success => '프로필을 가져왔습니다';
  @override
  String get profile_label => '프로필';
  @override
  String get profile_management => '프로필 관리';
  @override
  String get profile_media_audiobook => '오디오북';
  @override
  String get profile_media_epub => '일반 책';
  @override
  String get profile_media_lyrics => '가사 모드';
  @override
  String get profile_media_none => '없음';
  @override
  String get profile_media_srtbook => '자막 북';
  @override
  String get profile_media_type_bindings => '미디어 유형 바인딩';
  @override
  String get profile_media_video => '동영상';
  @override
  String get profile_name_hint => '프로필 이름';
  @override
  String get profile_rename => '이름 변경';
  @override
  String get reader_auto_hide_chrome_duration => '플로팅 컨트롤 자동 숨김 시간';
  @override
  String get reader_content_timeout =>
      '콘텐츠 로딩 시간이 초과되었습니다. 표시가 비정상이면 다시 열어 주세요';
  @override
  String get reader_copy_image => '이미지 복사';
  @override
  String get reader_gallery => '갤러리';
  @override
  String get reader_gallery_current => '현재 읽는 위치';
  @override
  String get reader_gallery_empty => '이 책에 삽화가 없습니다';
  @override
  String get reader_gallery_jump => '이 삽화로 이동';
  @override
  String get reader_gallery_tooltip => '삽화 둘러보기';
  @override
  String reader_image_copy_failed({required Object error}) =>
      '이미지 복사 실패: ${error}';
  @override
  String get reader_image_file_unavailable => '이미지 파일을 사용할 수 없습니다.';
  @override
  String reader_image_share_failed({required Object error}) =>
      '이미지 공유 실패: ${error}';
  @override
  String get reader_open_failed => '책 열기 실패';
  @override
  String get reader_settings_section => '리더 설정';
  @override
  String get reader_theme_black => '블랙';
  @override
  String get reader_theme_dark => '다크';
  @override
  String get reader_theme_ecru => '에크루';
  @override
  String get reader_theme_eyecare => 'Eye Care';
  @override
  String get reader_theme_gray => '그레이';
  @override
  String get reader_theme_light => '화이트';
  @override
  String get reader_theme_water => '워터 블루';
  @override
  String get reader_top_progress_floating => '플로팅 읽기 진행률';
  @override
  String get reader_unsupported_platform => '이 플랫폼에서는 아직 리더를 사용할 수 없습니다.';
  @override
  String get reading_activity => '학습 활동';
  @override
  String get reading_progress => '읽기 진행률';
  @override
  String get reading_section_mode => '모드 및 방향';
  @override
  String get reading_statistics => '독서 통계';
  @override
  String get record => '녹음';
  @override
  String get refresh => '새로고침';
  @override
  String get rematch_adjust_window => '검색 창을 조정하고 다시 매칭';
  @override
  String get rematch_run => '다시 매칭 실행';
  @override
  String get remote_audio_source => '원격 오디오';
  @override
  String get remote_book_audiobook_download_failed => '이 책의 오디오북을 다운로드할 수 없습니다';
  @override
  String get remote_book_download => '이 기기로 다운로드';
  @override
  String get remote_book_download_failed => '원격 책을 다운로드할 수 없습니다';
  @override
  String get remote_book_downloaded => '원격 책을 다운로드함';
  @override
  String get remote_book_downloading => '다운로드 중…';
  @override
  String get remote_book_info => '정보';
  @override
  String get remote_book_info_has_audiobook => '오디오북 포함';
  @override
  String get remote_book_unavailable => '페어링된 기기를 사용할 수 없음';
  @override
  String get remote_dict_lookup => '원격 사전 검색';
  @override
  String get remote_dict_lookup_hint => '로컬 사전에 없을 때 설정된 Fushi 서버에 질의합니다';
  @override
  String get remote_video_download => '이 기기로 다운로드';
  @override
  String get remote_video_download_failed => '원격 비디오를 다운로드할 수 없습니다';
  @override
  String get remote_video_downloaded => '원격 비디오를 다운로드함';
  @override
  String get remote_video_downloading => '다운로드 중…';
  @override
  String get remote_video_info => '정보';
  @override
  String get remote_video_info_has_subtitle => '자막 포함';
  @override
  String get remote_video_info_no_subtitle => '자막 없음';
  @override
  String remote_video_info_size({required Object size}) => '크기: ${size}';
  @override
  String get remote_video_list_failed =>
      '원격 동영상을 불러올 수 없습니다. 다른 기기가 온라인이고 같은 네트워크에 있는지 확인한 후 다시 시도하세요.';
  @override
  String get remote_video_unavailable => '페어링된 기기를 사용할 수 없음';
  @override
  String get rename_collection => '컬렉션 이름 변경';
  @override
  String get render_restart_required => '앱을 다시 시작하면 적용됩니다';
  @override
  String get repeat_cue => '문장 반복';
  @override
  String get reset => '초기화';
  @override
  String get retry => '다시 시도';
  @override
  String get reverse_arrow_page_turn => '키보드 좌우 페이지 넘김 방향 반전';
  @override
  String get reverse_navigation_bar => '내비게이션 바 반전';
  @override
  String get reverse_reader_bottom_bar => '리더 하단 바 반전';
  @override
  String get audiobook_rematch_all_zero => '모든 윈도우 점수가 0%입니다. 수동으로 조정하세요';
  @override
  String audiobook_rematch_auto_failed({required Object error}) =>
      '자동 매칭 실패: ${error}';
  @override
  String get audiobook_rematch_auto_match => '자동 매칭';
  @override
  String audiobook_rematch_auto_picked({
    required Object window,
    required Object pct,
  }) => '${window} 자동 선택됨 (적중률 ${pct}%)';
  @override
  String audiobook_rematch_default_value({required Object n}) => '기본값 ${n}';
  @override
  String audiobook_rematch_health_label({
    required Object pct,
    required Object detail,
  }) => '${pct} 일치 — ${detail}';
  @override
  String get audiobook_rematch_matching => '매칭 중...';
  @override
  String get audiobook_rematch_no_chapters => 'EPUB에 챕터 텍스트가 없습니다';
  @override
  String get audiobook_rematch_no_cues_to_match => '매칭할 큐가 없습니다';
  @override
  String get audiobook_rematch_no_sections => '챕터 텍스트를 찾을 수 없어 자동 매칭 불가';
  @override
  String get audiobook_rematch_no_stored_cues => '저장된 큐가 없어 다시 실행할 수 없습니다';
  @override
  String audiobook_rematch_failed({required Object error}) =>
      '재매칭 실패: ${error}';
  @override
  String audiobook_rematch_result({
    required Object pct,
    required Object window,
  }) => '재매칭: ${pct}% (윈도우: ${window})';
  @override
  String get audiobook_rematch_search_window => '검색 윈도우';
  @override
  String get audiobook_rematch_similarity_threshold => '유사도 임계값';
  @override
  String get audiobook_rematch_threshold_hint =>
      '퍼지 매칭의 최소 유사도 (Dice 계수)입니다. 낮추면 텍스트 차이를 더 허용하지만, 너무 낮으면 잘못된 매칭이 발생합니다.';
  @override
  String get audiobook_rematch_window_hint =>
      '텍스트에서 큐당 앞으로 검색할 문자 수입니다. 적중률이 낮으면 조정하세요. 너무 크면 짧은 노이즈 큐에서 커서가 어긋날 수 있습니다.';
  @override
  String get saved_tags => '태그가 저장되었습니다.';
  @override
  String get scan_non_japanese_text => '비일본어 텍스트 스캔';
  @override
  String get scan_non_japanese_text_hint => '끄면 일본어가 아닌 문자에서 선택이 멈춥니다';
  @override
  String get search => '검색';
  @override
  String get search_ellipsis => '검색...';
  @override
  String get searching_in_progress => '검색 중 ';
  @override
  String get section_advanced_colors => '고급';
  @override
  String get section_advanced_typography => '고급';
  @override
  String get section_audiobook => '오디오북';
  @override
  String get section_audiobook_lyrics => '오디오북 및 가사';
  @override
  String get section_epub => 'EPUB 라이브러리';
  @override
  String get section_floating_lyric => '플로팅 가사';
  @override
  String get section_interface => '인터페이스';
  @override
  String get section_layout => '레이아웃 및 표시';
  @override
  String get section_navigation => '탐색';
  @override
  String get section_page_turn_direction => '페이지 넘김 방향';
  @override
  String get section_reader_colors => '리더 색상';
  @override
  String get section_system_theme => '시스템 테마 색상';
  @override
  String get section_typography => '타이포그래피';
  @override
  String get section_update => '업데이트 설정';
  @override
  String get section_video_danmaku => '탄막';
  @override
  String get section_video_library => '라이브러리';
  @override
  String get section_video_playback => '재생';
  @override
  String get section_video_subtitles => '자막';
  @override
  String get seed_color => '시드 색상';
  @override
  String get seed_color_desc => '아래의 모든 기본 색상을 생성합니다';
  @override
  String get selection_color => '선택 강조색';
  @override
  String get selection_color_desc => '리더 텍스트 선택 강조';
  @override
  String get send => '보내기';
  @override
  String get series => '시리즈';
  @override
  String get series_created => '시리즈 생성됨';
  @override
  String get series_default_name => '새 시리즈';
  @override
  String series_item_count({required Object n}) => '${n}개 항목';
  @override
  String get series_name_hint => '시리즈 이름';
  @override
  String get server_address => '서버 주소';
  @override
  String get settings => '설정';
  @override
  String get settings_check_update_now => '업데이트 확인';
  @override
  String get settings_destination_appearance => '외관';
  @override
  String get settings_destination_card_creation => '카드 만들기';
  @override
  String get settings_destination_diagnostics => '진단';
  @override
  String get settings_destination_interconnect => 'Fushi Interconnect';
  @override
  String get settings_destination_listening => '듣기';
  @override
  String get settings_destination_lookup => '검색';
  @override
  String get settings_destination_profiles => '구성 스킴';
  @override
  String get settings_destination_reading => '읽기';
  @override
  String get settings_destination_reading_controls => '읽기 컨트롤';
  @override
  String get settings_destination_sync_backup => '동기화 및 백업';
  @override
  String get settings_destination_system => '시스템';
  @override
  String get settings_destination_system_summary => '일반, 업데이트 및 진단';
  @override
  String get settings_destination_tracking => '미디어 트래킹';
  @override
  String get settings_destination_video => '비디오';
  @override
  String get settings_search_hint => '설정 검색';
  @override
  String get settings_search_no_results => '일치하는 설정 없음';
  @override
  String get settings_secret_hide => '값 숨기기';
  @override
  String get settings_secret_show => '값 표시';
  @override
  String get settings_section_app_shell => '앱';
  @override
  String get settings_section_data_storage => '데이터 저장 위치';
  @override
  String get settings_section_gal_hook_overlay => '갈게 자막 오버레이';
  @override
  String get settings_section_general => '일반';
  @override
  String get settings_section_lookup_audio => '발음 및 피드백';
  @override
  String get settings_section_lookup_content => '항목 내용';
  @override
  String get settings_section_lookup_integrations => '외부 연동';
  @override
  String get settings_section_lookup_popup_window => '팝업 창';
  @override
  String get settings_section_lookup_trigger => '검색 트리거';
  @override
  String get settings_section_page_turn_input => '페이지 넘기기 및 상호작용';
  @override
  String get settings_section_reader_chrome => '리더 인터페이스';
  @override
  String get settings_section_update_channel => '업데이트 채널';
  @override
  String get settings_view_changelog => '변경 로그 보기';
  @override
  String get share => '공유';
  @override
  String get share_theme => '테마 공유';
  @override
  String get shortcut_action_audiobook_next_sentence => '다음 문장';
  @override
  String get shortcut_action_audiobook_play_pause => '재생 / 일시정지';
  @override
  String get shortcut_action_audiobook_prev_sentence => '이전 문장';
  @override
  String get shortcut_action_audiobook_seek_clicked => '클릭한 문장으로 오디오 이동';
  @override
  String get shortcut_action_dpad_down => '방향키 아래';
  @override
  String get shortcut_action_dpad_left => '방향키 왼쪽';
  @override
  String get shortcut_action_dpad_right => '방향키 오른쪽';
  @override
  String get shortcut_action_dpad_up => '방향키 위';
  @override
  String get shortcut_action_global_back => '뒤로 가기';
  @override
  String get shortcut_action_global_external_lookup =>
      'App-external lookup hotkey';
  @override
  String get shortcut_action_global_scroll_page_down => '한 화면 아래로 스크롤';
  @override
  String get shortcut_action_global_scroll_page_up => '한 화면 위로 스크롤';
  @override
  String get shortcut_action_global_toggle_fullscreen => '전체 화면 전환';
  @override
  String get shortcut_action_home_focus_search => '검색 포커스';
  @override
  String get shortcut_action_home_tab_books => '책 탭';
  @override
  String get shortcut_action_home_tab_dict => '사전 탭';
  @override
  String get shortcut_action_home_tab_next => '다음 탭';
  @override
  String get shortcut_action_home_tab_prev => '이전 탭';
  @override
  String get shortcut_action_home_tab_settings => '설정 탭';
  @override
  String get shortcut_action_popup_next_entry => '다음 단어 항목';
  @override
  String get shortcut_action_popup_prev_entry => '이전 단어 항목';
  @override
  String get shortcut_action_reader_create_card_from_popup => '팝업에서 카드 만들기';
  @override
  String get shortcut_action_reader_dismiss_dict => '사전 닫기';
  @override
  String get shortcut_action_reader_enter_caret => '사전 찾기 커서 진입';
  @override
  String get shortcut_action_reader_lookup_at_cursor => '단어 찾기 / 커서 활성화';
  @override
  String get shortcut_action_reader_open_menu => 'Open Settings Menu';
  @override
  String get shortcut_action_reader_open_navigation => 'Open Navigation';
  @override
  String get shortcut_action_reader_page_backward => '이전 페이지';
  @override
  String get shortcut_action_reader_page_forward => '다음 페이지';
  @override
  String get shortcut_action_reader_shift_lookup => 'Shift 단어 찾기';
  @override
  String get shortcut_action_reader_toggle_chrome => '컨트롤 전환';
  @override
  String get shortcut_action_reader_toggle_furigana => '후리가나 전환';
  @override
  String get shortcut_action_video_align_subtitle_to_next =>
      '다음 자막을 현재 시점에 맞추기';
  @override
  String get shortcut_action_video_align_subtitle_to_prev =>
      '이전 자막을 현재 시점에 맞추기';
  @override
  String get shortcut_action_video_cycle_secondary_subtitle_obscure =>
      'Cycle Secondary Subtitle Obscure';
  @override
  String get shortcut_action_video_cycle_subtitle_obscure =>
      'Cycle Subtitle Obscure Mode';
  @override
  String get shortcut_action_video_next_chapter => '다음 챕터';
  @override
  String get shortcut_action_video_next_frame => '다음 프레임';
  @override
  String get shortcut_action_video_next_subtitle => '다음 자막';
  @override
  String get shortcut_action_video_open_subtitle_align => '자막 파형 정렬 열기';
  @override
  String get shortcut_action_video_pause => '일시정지';
  @override
  String get shortcut_action_video_play => '재생';
  @override
  String get shortcut_action_video_previous_chapter => '이전 챕터';
  @override
  String get shortcut_action_video_previous_frame => '이전 프레임';
  @override
  String get shortcut_action_video_previous_subtitle => '이전 자막';
  @override
  String get shortcut_action_video_replay_current_subtitle => '현재 자막 다시 재생';
  @override
  String get shortcut_action_video_replay_previous_subtitle => '이전 자막 다시 재생';
  @override
  String get shortcut_action_video_reset_speed => '속도 초기화';
  @override
  String get shortcut_action_video_screenshot => '스크린샷';
  @override
  String get shortcut_action_video_seek_backward => '되감기';
  @override
  String get shortcut_action_video_seek_forward => '빨리 감기';
  @override
  String get shortcut_action_video_speed_down => '속도 느리게';
  @override
  String get shortcut_action_video_speed_up => '속도 빠르게';
  @override
  String get shortcut_action_video_subtitle_delay_decrease => '자막 딜레이 −';
  @override
  String get shortcut_action_video_subtitle_delay_increase => '자막 딜레이 +';
  @override
  String get shortcut_action_video_toggle_favorite_sentence => '현재 문장 즐겨찾기';
  @override
  String get shortcut_action_video_toggle_fullscreen => '전체 화면 전환';
  @override
  String get shortcut_action_video_toggle_immersive_lock => '몰입 잠금 전환';
  @override
  String get shortcut_action_video_toggle_mute => '음소거 전환';
  @override
  String get shortcut_action_video_toggle_play_pause => '재생 / 일시정지';
  @override
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle Hide Secondary Subtitle';
  @override
  String get shortcut_action_video_toggle_shader_compare => '셰이더 비교 전환';
  @override
  String get shortcut_action_video_toggle_subtitle_blur => '자막 흐리게 전환';
  @override
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle Hide Subtitles';
  @override
  String get shortcut_action_video_toggle_subtitle_list => '자막 목록 전환';
  @override
  String get shortcut_action_video_volume_down => '음량 -';
  @override
  String get shortcut_action_video_volume_up => '음량 +';
  @override
  String get shortcut_assign_pick_action => '동작에 할당…';
  @override
  String get shortcut_clear => '지우기';
  @override
  String shortcut_conflict({required Object s}) => '이미 사용 중: ${s}';
  @override
  String shortcut_conflict_replace_confirm({required Object s}) =>
      '이 단축키는 이미 ${s}에서 사용 중입니다. 이 동작으로 옮길까요?';
  @override
  String get shortcut_gamepad => '게임패드';
  @override
  String get shortcut_gamepad_brand_label => '게임패드 버튼 스타일';
  @override
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  @override
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  @override
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  @override
  String get shortcut_gamepad_pick_list => '목록에서 선택';
  @override
  String get shortcut_gamepad_unavailable_hint =>
      'GameInput 구성 요소가 감지되지 않아 게임패드를 사용할 수 없습니다. 컨트롤러 지원을 활성화하려면 Windows 게임 서비스를 설치하세요.';
  @override
  String get shortcut_keyboard => '키보드';
  @override
  String get shortcut_mouse_back => '뒤로 버튼';
  @override
  String get shortcut_mouse_button => '마우스 버튼';
  @override
  String get shortcut_mouse_forward => '앞으로 버튼';
  @override
  String get shortcut_mouse_left => '왼쪽 클릭';
  @override
  String get shortcut_mouse_middle => '가운데 클릭';
  @override
  String get shortcut_mouse_right => '오른쪽 클릭';
  @override
  String get shortcut_press_gamepad => '게임패드 버튼을 누르세요...';
  @override
  String get shortcut_press_key => '키 조합을 누르세요...';
  @override
  String get shortcut_press_mouse_button => '마우스 버튼을 누르세요...';
  @override
  String get shortcut_press_wheel => '수정 키를 누른 채 여기서 스크롤하세요';
  @override
  String get shortcut_reset_confirm => '이 섹션의 모든 단축키를 기본값으로 초기화할까요?';
  @override
  String get shortcut_reset_defaults => '기본값으로 초기화';
  @override
  String get shortcut_scope_audiobook => '오디오북';
  @override
  String get shortcut_scope_dictionary_popup => '사전 팝업';
  @override
  String get shortcut_scope_dictionary_popup_note => '포인터가 사전 팝업 위에 있을 때 작동합니다';
  @override
  String get shortcut_scope_gamepad => '게임패드';
  @override
  String get shortcut_scope_global => '전역';
  @override
  String get shortcut_scope_global_external => '글로벌 (앱 외부)';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this hotkey.';
  @override
  String get shortcut_scope_home => '홈';
  @override
  String get shortcut_scope_reader => '리더';
  @override
  String get shortcut_scope_video => '비디오';
  @override
  String get shortcut_settings_title => '키보드 단축키';
  @override
  String get shortcut_stop_capture => '중지';
  @override
  String get shortcut_tap_to_assign => '미설정 · 탭하여 할당';
  @override
  String get shortcut_view_list => '목록 보기';
  @override
  String get shortcut_view_visual => '컨트롤러 레이아웃';
  @override
  String get shortcut_wheel => '마우스 휠';
  @override
  String get shortcut_wheel_down => '휠 아래로';
  @override
  String get shortcut_wheel_needs_modifier =>
      '기본 휠은 팝업을 스크롤합니다 — Alt / Ctrl / Shift를 누른 채 스크롤하세요';
  @override
  String get shortcut_wheel_up => '휠 위로';
  @override
  String get show_bottom_bar_cue => '현재 문장 표시';
  @override
  String get show_expression_tags => '표현 태그 표시';
  @override
  String get show_floating_lyric => '플로팅 자막';
  @override
  String get show_media_notification => '미디어 알림 표시';
  @override
  String get show_options => '옵션 표시';
  @override
  String get show_top_progress_bar => '상단 읽기 진행률 표시줄';
  @override
  String get skip_action => '동작 건너뛰기';
  @override
  String skip_action_seconds({required Object n}) => '${n} 秒';
  @override
  String get skip_action_sentence => '1문장';
  @override
  String get sort_by => '정렬';
  @override
  String get sort_imported => '가져온 날짜';
  @override
  String get sort_recent_read => '최근 읽은 순';
  @override
  String get sort_recent_watched => '최근 시청 순';
  @override
  String get sort_title => '이름';
  @override
  String get source_description_epub => 'EPUB 읽기 및 사전 검색';
  @override
  String get source_name_bookshelf => '서재';
  @override
  String get spread_auto => '자동';
  @override
  String get spread_direction => '펼침 방향';
  @override
  String get spread_direction_ltr => '왼쪽에서 오른쪽';
  @override
  String get spread_direction_rtl => '오른쪽에서 왼쪽';
  @override
  String get spread_mode => '펼침 모드';
  @override
  String get spread_off => '끄기';
  @override
  String get spread_on => '켜기';
  @override
  String get srt_audio_unresolved => '오디오 파일을 찾을 수 없습니다 — 다시 연결하세요';
  @override
  String get srt_books_section => '자막 오디오북';
  @override
  String srt_delete_confirm({required Object title}) =>
      '『${title}』을(를) 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';
  @override
  String get srt_delete_title => '자막 책 삭제';
  @override
  String get srt_epub_not_ready => '책이 준비되지 않았습니다 — 다시 가져오기 하세요';
  @override
  String get srt_import => '책 가져오기';
  @override
  String get srt_import_audio_needs_subtitle =>
      '오디오는 자막과 함께 사용해야 합니다. 기존 EPUB에 오디오를 추가하려면 서재에서 책을 길게 누르세요.';
  @override
  String get srt_import_author_hint => '저자 (선택사항)';
  @override
  String get srt_import_error => '가져오기 실패';
  @override
  String srt_import_files_selected({required Object n}) => '${n}개 파일 선택됨';
  @override
  String get srt_import_hint_epub_or_srt => 'EPUB 또는 자막 파일을 선택하여 가져오세요.';
  @override
  String get srt_import_missing_input => 'EPUB 또는 자막 파일을 하나 이상 선택하세요';
  @override
  String get srt_import_missing_title => '책 제목을 입력하세요';
  @override
  String get srt_import_pick_audio_dir => '오디오 디렉토리 선택';
  @override
  String get srt_import_pick_audio_files => '오디오 파일 선택';
  @override
  String get srt_import_pick_cover => '표지 이미지 선택';
  @override
  String get srt_import_pick_epub => 'EPUB 선택';
  @override
  String get srt_import_pick_subtitle_files => '자막 파일 선택';
  @override
  String get srt_import_success => '책 가져오기 완료';
  @override
  String get srt_import_title_hint => '책 제목';
  @override
  String get startup_default_dictionary_tab => '시작 시 단어 찾기 열기';
  @override
  String get startup_default_dictionary_tab_hint =>
      '홈 화면을 현재 기본값 대신 단어 찾기 탭으로 시작합니다.';
  @override
  String get stash => '보관함 열기';
  @override
  String get stash_added_multiple => '여러 항목이 보관함에 추가되었습니다.';
  @override
  String stash_added_single({required Object term}) =>
      '『${term}』이(가) 보관함에 추가되었습니다.';
  @override
  String get stash_clear_description => '모든 내용이 삭제됩니다. 계속하시겠습니까?';
  @override
  String stash_clear_single({required Object term}) =>
      '『${term}』이(가) 보관함에서 제거되었습니다.';
  @override
  String get stash_clear_title => '보관함 비우기';
  @override
  String get stash_nothing_to_pop => '보관함에서 꺼낼 항목이 없습니다.';
  @override
  String get stash_placeholder => '보관함에 항목이 없습니다';
  @override
  String get stat_all_time => '전체';
  @override
  String get stat_bookshelf_compare => '책장';
  @override
  String get stat_clear_all => '통계 초기화';
  @override
  String get stat_clear_all_confirm => '초기화';
  @override
  String get stat_clear_all_reading_message =>
      '모든 읽기 시간, 글자 수, 검색/채굴 횟수를 초기화하시겠습니까? 저장된 단어, 문장, 채굴된 카드는 유지됩니다. 이 작업은 되돌릴 수 없습니다.';
  @override
  String get stat_clear_all_title => '모든 통계 초기화';
  @override
  String get stat_clear_all_video_message =>
      '모든 시청 시간, 자막 글자 수, 검색/채굴 횟수를 초기화하시겠습니까? 저장된 단어, 문장, 채굴된 카드는 유지됩니다. 이 작업은 되돌릴 수 없습니다.';
  @override
  String get stat_daily_average => '일 평균';
  @override
  String get stat_delete_message =>
      '이 항목의 시간, 글자 수, 검색/채굴 통계를 삭제하시겠습니까? 저장된 단어와 문장에는 영향을 주지 않습니다.';
  @override
  String get stat_delete_title => '통계 삭제';
  @override
  String get stat_fastest_day => 'Fastest Day';
  @override
  String get stat_favorited => '즐겨찾기';
  @override
  String get stat_favorited_sentence => '즐겨찾기한 문장';
  @override
  String stat_format_chars({required Object n}) => '${n}자';
  @override
  String stat_format_chars_wan({required Object n}) => '${n}만자';
  @override
  String stat_format_days({required Object n}) => '${n}일';
  @override
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h}시간 ${m}분';
  @override
  String stat_format_minutes({required Object n}) => '${n}분';
  @override
  String get stat_goal => 'Daily Goal';
  @override
  String get stat_goal_daily => 'Daily Goal';
  @override
  String get stat_goal_presets => '프리셋';
  @override
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} 글자';
  @override
  String get stat_goal_reached => '목표 달성';
  @override
  String stat_goal_recent_average({required Object n}) => '최근 7일: 평균 ${n} 글자/일';
  @override
  String get stat_goal_set => 'Set Goal';
  @override
  String get stat_goal_unit_chars => '글자';
  @override
  String get stat_goal_weekly => 'Weekly Goal';
  @override
  String get stat_last_30_days => '최근 30일';
  @override
  String get stat_lookup => '검색';
  @override
  String get stat_metric_chars => '글자 수';
  @override
  String get stat_metric_speed => '속도';
  @override
  String get stat_metric_time => '시간';
  @override
  String get stat_mined => '만든 카드';
  @override
  String get stat_no_data => '독서 데이터가 아직 없습니다';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => '활동일 (7일)';
  @override
  String get stat_refresh => '새로고침';
  @override
  String get stat_slowest_day => 'Slowest Day';
  @override
  String get stat_sort_by_chars => '글자 수순';
  @override
  String get stat_sort_by_speed => '속도순';
  @override
  String get stat_sort_by_time => '시간순';
  @override
  String get stat_speed_anomaly => '이상값';
  @override
  String get stat_speed_avg => '이동 평균';
  @override
  String stat_speed_cph({required Object n}) => '${n} 자/시간';
  @override
  String get stat_speed_summary => 'Speed Summary';
  @override
  String get stat_streak => '연속 기록';
  @override
  String get stat_this_month => '이번 달';
  @override
  String get stat_this_week => '이번 주';
  @override
  String get stat_today => '오늘';
  @override
  String get stat_today_hourly => '오늘 시간대별';
  @override
  String get stat_trend_daily => '일간';
  @override
  String get stat_trend_monthly => '월간';
  @override
  String get stat_trend_weekly => '주간';
  @override
  String get stat_typical_day => 'Typical Day';
  @override
  String get stat_vs_prev => '이전 14일 대비';
  @override
  String get stat_weighted_avg_speed => 'Weighted Avg';
  @override
  String get stop => '정지';
  @override
  String get storage_permissions => 'AnkiDroid로 내보내려면 다음 권한을 부여해 주세요.';
  @override
  String get stream => '스트림';
  @override
  String get swipe_page_turn_sensitivity => '스와이프 페이지 넘김 감도';
  @override
  String get sync_account => '계정';
  @override
  String get sync_audiobook => '오디오북 위치 동기화';
  @override
  String get sync_audiobook_files => '오디오북 파일 동기화';
  @override
  String get sync_audiobook_files_warning => '오디오와 자막은 용량이 클 수 있습니다.';
  @override
  String sync_auth_error({required Object message}) => '인증 실패: ${message}';
  @override
  String get sync_auto_sync => '자동 동기화';
  @override
  String get sync_backend => '저장소 백엔드';
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
  String get sync_checking_account => '계정 확인 중…';
  @override
  String get sync_client_connected => '연결됨';
  @override
  String get sync_client_token => '피어 액세스 토큰';
  @override
  String get sync_client_token_manual => '토큰 직접 입력';
  @override
  String get sync_compare => '데이터 비교';
  @override
  String get sync_compare_all_books => '모든 책';
  @override
  String get sync_compare_all_local => '모두 → 로컬';
  @override
  String get sync_compare_all_remote => '모두 → 원격';
  @override
  String get sync_compare_all_skip => '모두 → 건너뛰기';
  @override
  String sync_compare_applied({required Object count}) => '변경 사항 ${count}개 적용됨';
  @override
  String sync_compare_apply({required Object count}) => '지금 동기화 (${count})';
  @override
  String get sync_compare_close => '닫기';
  @override
  String get sync_compare_conflicts => '충돌';
  @override
  String get sync_compare_days => '일';
  @override
  String get sync_compare_delete_audiobook => '원격에서 오디오북 삭제';
  @override
  String get sync_compare_delete_book => '원격에서 책 삭제';
  @override
  String sync_compare_delete_confirm({required Object name}) =>
      '원격에서 "${name}"(을)를 삭제할까요? 로컬 데이터는 유지됩니다. 되돌릴 수 없습니다.';
  @override
  String get sync_compare_delete_dict => '원격에서 사전 삭제';
  @override
  String get sync_compare_deleted => '원격에서 삭제됨';
  @override
  String get sync_compare_dictionaries => '사전';
  @override
  String get sync_compare_download => '다운로드';
  @override
  String get sync_compare_empty => '책을 찾을 수 없음';
  @override
  String get sync_compare_local => '로컬';
  @override
  String get sync_compare_no_content => '클라우드 데이터만 있음 — 다운로드할 책 없음';
  @override
  String get sync_compare_no_data => '데이터 없음';
  @override
  String get sync_compare_remote => '원격';
  @override
  String get sync_compare_select_all => '모두 선택';
  @override
  String get sync_compare_skip => '건너뛰기';
  @override
  String get sync_compare_title => '로컬 vs 원격';
  @override
  String get sync_compare_unavailable => 'Set up sync first';
  @override
  String get sync_compare_use_local => '로컬';
  @override
  String get sync_compare_use_remote => '원격';
  @override
  String get sync_connection_failed => '연결 실패';
  @override
  String get sync_connection_success => '연결 성공';
  @override
  String get sync_content => '책 파일 동기화';
  @override
  String get sync_content_warning => '큰 파일은 저장 공간과 데이터를 사용합니다';
  @override
  String get sync_err_auth_expired => '로그인이 만료되었습니다 — 다시 로그인해 주세요.';
  @override
  String get sync_err_invalid_client =>
      '이 빌드에 대한 클라이언트 자격 증명이 유효하지 않습니다 — 앱을 업데이트하세요.';
  @override
  String get sync_err_network => '서버에 연결할 수 없습니다 — 네트워크 또는 프록시 설정을 확인하세요.';
  @override
  String get sync_err_not_configured =>
      '이 빌드에는 Google 동기화 자격 증명이 설정되어 있지 않습니다.';
  @override
  String get sync_err_quota => '클라우드 저장소가 가득 찼습니다 (할당량 초과).';
  @override
  String get sync_err_scope_upgrade =>
      '동기화 권한이 변경되었습니다. 동기화를 계속하려면 Google에 다시 로그인해 주세요.';
  @override
  String get sync_err_timeout => '연결 시간 초과 — 서버가 제때 응답하지 않았습니다.';
  @override
  String sync_error({required Object message}) => '동기화 오류: ${message}';
  @override
  String get sync_exit_warning => '동기화가 아직 진행 중입니다. 지금 종료하면 데이터가 손실될 수 있습니다.';
  @override
  String get sync_exit_warning_title => '동기화 진행 중';
  @override
  String get sync_host => '호스트';
  @override
  String get sync_lan_discovery => 'LAN 기기';
  @override
  String get sync_lan_no_devices => '기기를 찾을 수 없음';
  @override
  String get sync_lan_scan_failed => '검색 실패 — 네트워크 권한 또는 방화벽을 확인하세요.';
  @override
  String get sync_not_signed_in => '로그인되지 않음';
  @override
  String get sync_now => '지금 동기화';
  @override
  String sync_now_audio_in({required Object count}) => '↓오디오북 ${count}개';
  @override
  String sync_now_audio_out({required Object count}) => '↑오디오북 ${count}개';
  @override
  String sync_now_books_in({required Object count}) => '↓책 ${count}권';
  @override
  String get sync_now_busy => '동기화가 이미 실행 중입니다';
  @override
  String sync_now_dicts_in({required Object count}) => '↓사전 ${count}개';
  @override
  String sync_now_dicts_out({required Object count}) => '↑사전 ${count}개';
  @override
  String sync_now_done({required Object detail}) => '동기화됨 · ${detail}';
  @override
  String sync_now_failed_suffix({required Object count}) => ' · ${count}개 실패';
  @override
  String get sync_now_hint => '지금 클라우드와 양방향 전체 동기화를 실행합니다';
  @override
  String sync_now_local_audio_in({required Object count}) => '↓${count} 오디오 소스';
  @override
  String sync_now_local_audio_out({required Object count}) =>
      '↑${count} 오디오 소스';
  @override
  String get sync_now_no_changes => '변경 없음';
  @override
  String get sync_pair_allow => '허용';
  @override
  String sync_pair_confirm_identity_body({required Object device}) =>
      '${device}와 페어링하려고 합니다. 계속하기 전에 예상하는 기기가 맞는지 확인하세요.';
  @override
  String get sync_pair_confirm_identity_title => '기기 확인';
  @override
  String get sync_pair_continue => '계속';
  @override
  String get sync_pair_denied => '상대 기기가 페어링을 거부했습니다';
  @override
  String get sync_pair_deny => '거부';
  @override
  String get sync_pair_enter_pin_body => '다른 기기에 표시된 6자리 PIN을 입력하세요.';
  @override
  String get sync_pair_enter_pin_title => 'PIN 입력';
  @override
  String get sync_pair_failed => '페어링 실패';
  @override
  String get sync_pair_fingerprint_changed =>
      '인증서가 변경되었습니다 — 안전을 위해 페어링이 중단되었습니다(가로채기 가능성).';
  @override
  String get sync_pair_fingerprint_label => '인증서 지문';
  @override
  String get sync_pair_not_fushi => '이 주소에서 Fushi 기기를 찾을 수 없습니다. 주소가 저장되었습니다.';
  @override
  String get sync_pair_pairing => '페어링 중…';
  @override
  String get sync_pair_pin_label => '다른 기기에 이 PIN을 입력하세요';
  @override
  String get sync_pair_pin_waiting => '다른 기기가 이 PIN을 입력할 때까지 대기 중…';
  @override
  String get sync_pair_pin_wrong => '잘못된 PIN — 다시 시도하세요';
  @override
  String get sync_pair_repair => '다시 페어링';
  @override
  String get sync_pair_request_body => '한 기기가 페어링을 요청합니다. 이 기기와 동기화하도록 허용할까요?';
  @override
  String get sync_pair_request_title => '페어링 요청';
  @override
  String get sync_pair_success => '페어링 완료 — 토큰이 입력되었습니다';
  @override
  String get sync_pair_unavailable =>
      '상대 기기가 준비되지 않았거나 이전 버전입니다. 업데이트하고 동기화를 켠 후 다시 시도하세요.';
  @override
  String get sync_pair_unknown_device => '알 수 없는 기기';
  @override
  String get sync_paired_peer_remove => '제거';
  @override
  String get sync_paired_peer_removed => '페어링된 기기 제거됨';
  @override
  String get sync_paired_peer_unknown => '알 수 없는 기기';
  @override
  String get sync_paired_peers_empty => '페어링된 기기가 아직 없습니다';
  @override
  String get sync_paired_peers_title => '페어링된 기기';
  @override
  String get sync_password => '비밀번호';
  @override
  String get sync_port => '포트';
  @override
  String get sync_private_key => '개인 키';
  @override
  String get sync_progress_audiobooks => '오디오북 동기화 중';
  @override
  String get sync_progress_books => '책 가져오는 중';
  @override
  String get sync_progress_dictionaries => '사전 동기화 중';
  @override
  String get sync_progress_local_audio => '로컬 오디오 동기화 중';
  @override
  String get sync_progress_reading => '독서 데이터 동기화 중';
  @override
  String get sync_progress_videos => '동영상 동기화 중';
  @override
  String get sync_role_locked_by_client =>
      '이미 다른 기기에 연결되어 있습니다. 서버로 호스팅하려면 먼저 연결을 해제하세요.';
  @override
  String get sync_role_locked_by_server =>
      '이 기기는 서버로 호스팅 중입니다. 다른 기기에 연결하려면 먼저 서버를 끄세요.';
  @override
  String get sync_section_actions => '동기화 작업';
  @override
  String get sync_section_backup => '로컬 백업';
  @override
  String get sync_section_content => '동기화 항목';
  @override
  String get sync_section_host_server => '이 기기를 동기화 서버로 사용';
  @override
  String get sync_section_host_server_footer =>
      '다른 기기가 이 기기에서 동기화하도록 허용합니다. 위의 동기화 백엔드와 무관합니다.';
  @override
  String get sync_section_method => '동기화 방식';
  @override
  String get sync_server_copy_token => '토큰 복사';
  @override
  String get sync_server_enable => '동기화 서버 사용';
  @override
  String get sync_server_mode_active => '이 기기는 동기화 서버입니다';
  @override
  String get sync_server_mode_clients_drive =>
      '연결된 클라이언트가 동기화를 시작하므로 이 기기에서는 수동 동기화가 필요 없습니다.';
  @override
  String get sync_server_port => '서버 포트';
  @override
  String sync_server_port_in_use({required Object port}) =>
      '포트 ${port}가 이미 사용 중입니다 — 다른 포트를 선택하세요.';
  @override
  String get sync_server_regenerate_token => '토큰 재생성';
  @override
  String get sync_server_running => '서버 실행 중';
  @override
  String get sync_server_stopped => '서버 중지됨';
  @override
  String get sync_server_tls_enable => 'Interconnect 암호화 (HTTPS/TLS)';
  @override
  String get sync_server_tls_repair_hint => '이 설정을 변경하면 페어링된 기기를 다시 페어링해야 합니다';
  @override
  String get sync_server_token => '액세스 토큰';
  @override
  String get sync_show_remote_entries => '원격 항목 표시';
  @override
  String get sync_show_remote_entries_warning =>
      '페어링된 기기나 클라우드에 있는 도서 및 동영상을 다운로드하거나 스트리밍할 수 있는 플레이스홀더 카드로 표시합니다.';
  @override
  String get sync_sign_in => '로그인';
  @override
  String get sync_sign_out => '로그아웃';
  @override
  String get sync_signed_in => '로그인됨';
  @override
  String get sync_statistics => '통계 동기화';
  @override
  String get sync_summary => '클라우드, LAN P2P 및 로컬 백업';
  @override
  String get sync_test_connection => '연결 테스트';
  @override
  String get sync_use_tls => 'TLS 사용';
  @override
  String get sync_username => '사용자 이름';
  @override
  String get sync_video_files => '동영상 파일 업로드';
  @override
  String get sync_video_files_warning => '동영상 파일은 매우 클 수 있습니다.';
  @override
  String get sync_webdav_missing_fields => '입력하지 않은 항목이 있습니다';
  @override
  String sync_webdav_test_failed({required Object message}) =>
      '연결 실패: ${message}';
  @override
  String get sync_webdav_url => '서버 URL';
  @override
  String tag_added_to_book({required Object name}) =>
      '태그 "${name}"이(가) 책에 추가되었습니다.';
  @override
  String tag_added_to_collection({required Object name}) =>
      '태그 ${name}이(가) 컬렉션에 추가되었습니다.';
  @override
  String tag_added_to_video({required Object name}) =>
      '태그 「${name}」을(를) 비디오에 추가했습니다.';
  @override
  String tag_already_on_book({required Object name}) =>
      '태그 "${name}"이(가) 이미 이 책에 있습니다.';
  @override
  String tag_already_on_collection({required Object name}) =>
      '태그 ${name}이(가) 이미 이 컬렉션에 있습니다.';
  @override
  String tag_book_count({required Object count}) => '${count}권';
  @override
  String get tag_clear_filter => '필터 해제';
  @override
  String get tag_color => '색상';
  @override
  String tag_delete_confirm({required Object name}) =>
      '태그 "${name}"을(를) 삭제하시겠습니까?';
  @override
  String get tag_filter_title => '태그로 필터';
  @override
  String get tag_label => '태그';
  @override
  String get tag_manage => '태그 관리';
  @override
  String get tag_manage_title => '태그 관리';
  @override
  String get tag_name_duplicate => '같은 이름의 태그가 이미 존재합니다.';
  @override
  String get tag_name_empty => '태그 이름은 비울 수 없습니다.';
  @override
  String get tag_name_hint => '태그 이름';
  @override
  String get tag_new => '새 태그';
  @override
  String get tag_no_books_for_filter => '선택한 태그에 맞는 책이 없습니다.';
  @override
  String get tag_no_tags_hint => '태그가 없습니다. 하나 만들어 시작하세요.';
  @override
  String get tag_seed_stars => '별점 태그 추가';
  @override
  String get tag_seed_stars_added => '별점 태그가 추가되었습니다';
  @override
  String get tag_seed_stars_exists => '별점 태그가 이미 존재합니다';
  @override
  String get tap_empty_hide_chrome => '플로팅 컨트롤 바';
  @override
  String get text_segmentation => '텍스트 분할';
  @override
  String get texthooker => '텍스트 후커';
  @override
  String get texthooker_enabled => 'Texthooker(텍스트 수신)';
  @override
  String get texthooker_enabled_hint =>
      'Textractor/mpv/agent에 연결해 수신한 텍스트를 검색합니다';
  @override
  String get theme_black => '퓨어 블랙';
  @override
  String get theme_code_copied => '테마 코드가 클립보드에 복사되었습니다';
  @override
  String get theme_dark => '딥 다크';
  @override
  String get theme_ecru => '에크루';
  @override
  String get theme_eyecare => 'Eye Care';
  @override
  String get theme_gray => '그레이 다크';
  @override
  String get theme_light => '화이트';
  @override
  String get theme_seed_preview_hint =>
      '아래 색상 견본은 시드 색상에서 실제로 생성된 색을 미리 보여 줍니다. 특정 색을 주요 강조색으로 고정하려면 「주요 색」 토글을 켜고 직접 선택하세요.';
  @override
  String get theme_water => '워터 블루';
  @override
  String toc_section({required Object n}) => '목차 (${n})';
  @override
  String get top_progress_pos_center => '가운데';
  @override
  String get top_progress_pos_left => '왼쪽 상단';
  @override
  String get top_progress_pos_right => '오른쪽 상단';
  @override
  String get top_progress_position => '진행률 위치';
  @override
  String get torrent_upload_intro_body =>
      '업로드(시딩)는 기본적으로 꺼져 있습니다. 켜면 다운로드한 콘텐츠를 스웜에 다시 공유합니다 — 업로드 대역폭을 사용합니다. 설정에서 언제든지 변경할 수 있습니다.';
  @override
  String get torrent_upload_intro_confirm => '저장';
  @override
  String get torrent_upload_intro_enable => '업로드 / 시딩 활성화';
  @override
  String get torrent_upload_intro_keep_off => '끈 상태 유지';
  @override
  String get torrent_upload_intro_title => '업로드 / 시딩';
  @override
  String get reader_blur_images => '이미지 블러 (스포일러 방지)';
  @override
  String get reader_font_size => '글꼴 크기';
  @override
  String get reader_font_vpal => 'VPAL (세로 대체)';
  @override
  String get reader_furigana_hide => '숨기기';
  @override
  String get reader_furigana_mode => '후리가나';
  @override
  String get reader_furigana_mode_hint => '';
  @override
  String get reader_furigana_partial => '부분';
  @override
  String get reader_furigana_show => '표시';
  @override
  String get reader_furigana_toggle => '전환';
  @override
  String get reader_horizontal => '가로';
  @override
  String get reader_line_height => '줄 간격';
  @override
  String get reader_merge_image_pages => '삽화 페이지를 본문에 병합';
  @override
  String get reader_merge_image_pages_subtitle =>
      '단독 이미지 챕터가 별도 페이지 대신 인접 텍스트 챕터 안에 인라인으로 표시됩니다';
  @override
  String get reader_no_books_added => '서재에 책이 없습니다';
  @override
  String get reader_not_bound_cannot_rematch =>
      '오디오북이 책에 바인딩되지 않아 다시 매칭할 수 없습니다';
  @override
  String get reader_orient_mixed => '혼합';
  @override
  String get reader_orient_upright => '직립';
  @override
  String get reader_page_columns_auto => '자동';
  @override
  String get reader_paginated => '페이지 넘김';
  @override
  String get reader_paragraph_spacing => '문단 간격';
  @override
  String get reader_reader_styles => '책 스타일 우선';
  @override
  String get reader_scroll => '스크롤';
  @override
  String get reader_text_indentation => '문단 들여쓰기';
  @override
  String get reader_text_justify => '양쪽 정렬';
  @override
  String get reader_theme => '테마';
  @override
  String get reader_vert_kerning => '커닝 (세로)';
  @override
  String get reader_vert_text_orient => '글자 방향';
  @override
  String get reader_vertical => '세로';
  @override
  String get reader_view_mode_label => '페이지 / 스크롤';
  @override
  String get reader_vn => 'Visual Novel';
  @override
  String get reader_writing_direction => '글쓰기 방향';
  @override
  String get undo => '되돌리기';
  @override
  String get unit_milliseconds => 'ms';
  @override
  String get unit_pixels => 'px';
  @override
  String untitled_book({required Object id}) => '도서 ${id}';
  @override
  String get untitled_chapter => '(제목 없음)';
  @override
  String get update_already_latest => '최신 버전을 사용 중입니다';
  @override
  String get update_auto_install => '자동 설치';
  @override
  String get update_available => '업데이트 가능';
  @override
  String update_cached_newer({required Object version}) =>
      '업데이트 ${version} 사용 가능 (확인 중…)';
  @override
  String update_cached_up_to_date({required Object version}) =>
      '최신 알려진 버전 ${version} 사용 중 (확인 중…)';
  @override
  String get update_cancel => '취소';
  @override
  String get update_cancelled => '다운로드를 취소했습니다';
  @override
  String get update_cancelling => '취소 중…';
  @override
  String get update_channel_beta => '베타';
  @override
  String get update_channel_debug => '디버그';
  @override
  String get update_channel_stable => '안정';
  @override
  String get update_check_failed => '업데이트 확인 실패';
  @override
  String get update_checking_now => '업데이트 확인 중…';
  @override
  String get update_connecting => '연결 중…';
  @override
  String get update_custom_proxy_auto_hint =>
      'Leave blank to use environment variables, then the enabled system proxy.';
  @override
  String get update_custom_proxy_hint =>
      '호스트:포트, 예: 127.0.0.1:7890 (IPv4/호스트만 지원)';
  @override
  String get update_custom_proxy_invalid => '잘못된 프록시입니다. 호스트:포트 형식을 사용하세요';
  @override
  String get update_custom_proxy_label => 'Custom update proxy';
  @override
  String get update_debug_channel => '디버그 업데이트 채널';
  @override
  String get update_debug_channel_warning =>
      '디버그 채널 빌드는 불안정할 수 있습니다. 본인 책임하에 사용하세요.';
  @override
  String get update_download => '다운로드';
  @override
  String get update_download_failed => '다운로드 실패';
  @override
  String get update_download_restarted_from_zero => '처음부터 다시 받음';
  @override
  String update_download_resume_status({required Object status}) =>
      '이어받기: ${status}';
  @override
  String get update_download_resumed => '이어받음';
  @override
  String update_download_size({
    required Object received,
    required Object total,
  }) => '다운로드: ${received} / ${total}';
  @override
  String update_download_source({required Object source}) => '소스: ${source}';
  @override
  String update_download_speed({required Object speed}) => '속도: ${speed}';
  @override
  String get update_downloading => '업데이트 다운로드 중…';
  @override
  String get update_hide => '숨기기';
  @override
  String update_install_current_executable({required Object path}) =>
      '실행 중인 프로그램: ${path}';
  @override
  String update_install_deletefile_failure({
    required Object path,
    required Object code,
  }) => '설치 프로그램이 ${path}을(를) 교체하지 못했습니다(코드 ${code})';
  @override
  String update_install_detected_location({
    required Object source,
    required Object path,
  }) => '감지된 설치 위치(${source}): ${path}';
  @override
  String update_install_failure_summary({required Object summary}) =>
      '원인: ${summary}';
  @override
  String get update_install_incomplete_message =>
      '설치 프로그램이 시작되었지만 Fushi는 여전히 이전 버전입니다. 아래 설치 로그를 확인하세요.';
  @override
  String get update_install_incomplete_title => '업데이트가 끝나지 않음';
  @override
  String update_install_installer_pid({required Object pid}) =>
      '설치 프로그램 PID: ${pid}';
  @override
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi가 ${version} 버전 설치 프로그램을 시작하지 못했습니다. 아래 로그 경로를 확인하세요.';
  @override
  String get update_install_launch_failed_title => '업데이트 설치 프로그램이 시작되지 않음';
  @override
  String update_install_launcher_pid({required Object pid}) =>
      '업데이트 런처 PID: ${pid}';
  @override
  String update_install_libmpv_holder({
    required Object pid,
    required Object path,
  }) => 'libmpv 점유 프로세스: PID ${pid} - ${path}';
  @override
  String get update_install_log_not_observed => '실행 후 점검 시 설치 로그가 생성되지 않았습니다.';
  @override
  String get update_install_log_observed => '실행 후 점검 시 설치 로그가 생성되었습니다.';
  @override
  String update_install_log_path({required Object path}) => '설치 로그: ${path}';
  @override
  String get update_install_manual_close_retry =>
      '위의 PID/경로로 Fushi를 직접 종료한 뒤 업데이트를 다시 시도하거나 설치 프로그램을 다시 실행하세요.';
  @override
  String get update_install_parent_exit_not_observed =>
      '업데이트 런처가 설치 프로그램 실행 전에 Fushi가 종료된 것을 확인하지 못했습니다.';
  @override
  String get update_install_parent_exit_observed =>
      '설치 프로그램을 실행하기 전에 Fushi가 종료된 것을 확인했습니다.';
  @override
  String update_install_path_mismatch({required Object warning}) =>
      '설치 디렉터리 불일치: ${warning}';
  @override
  String get update_install_permission_cancel => '취소';
  @override
  String get update_install_permission_message =>
      '시스템 설정에서 Fushi의 앱 설치를 허용한 후 다시 시도해 주세요.';
  @override
  String get update_install_permission_retry => '설치 재시도';
  @override
  String get update_install_permission_title => '업데이트 설치 허용';
  @override
  String get update_install_restart_windows_hint =>
      '위 프로세스를 종료해도 libmpv-2.dll이 여전히 잠겨 있으면 Windows를 재시작한 뒤 다시 설치하세요.';
  @override
  String update_install_running_process({
    required Object pid,
    required Object path,
  }) => '실행 중인 Fushi 프로세스: PID ${pid} - ${path}';
  @override
  String update_install_success_message({required Object version}) =>
      'Fushi가 ${version} 버전으로 업데이트되었습니다.';
  @override
  String get update_install_success_title => '업데이트 설치됨';
  @override
  String update_install_target_dir({required Object path}) => '설치 대상: ${path}';
  @override
  String get update_installing => '설치 중…';
  @override
  String get update_mac_install_incomplete_message =>
      '업데이트를 적용할 수 없어 Fushi가 이전 버전으로 유지됩니다. 업데이트를 다시 시도하거나 최신 릴리스를 수동으로 다운로드할 수 있습니다.';
  @override
  String update_message({required Object version}) =>
      '버전 ${version}을(를) 사용할 수 있습니다.';
  @override
  String update_network_failure({
    required Object host,
    required Object reason,
  }) => '${host}에 연결할 수 없습니다: ${reason}';
  @override
  String get update_never_remind => '업데이트 알림 끄기';
  @override
  String get update_skip => '건너뛰기';
  @override
  String get url => 'URL';
  @override
  String get video_audio_track => '오디오 트랙';
  @override
  String get video_audio_track_empty => '전환 가능한 오디오 트랙 없음';
  @override
  String video_audio_track_switched({required Object label}) =>
      '오디오 트랙: ${label}';
  @override
  String get video_auto_play_next_cancel => '취소';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      '${seconds}초 후 다음 에피소드';
  @override
  String get video_black_flash_notice_action => '해결 방법 보기';
  @override
  String get video_black_flash_notice_dont_show_again => '다시 표시하지 않기';
  @override
  String get video_bottom_next_cue => '다음 자막(없으면 조금 앞으로)';
  @override
  String get video_bottom_play_pause => '재생 / 일시정지';
  @override
  String get video_bottom_prev_cue => '이전 자막(없으면 조금 뒤로)';
  @override
  String get video_bottom_seek_back => '10초 뒤로';
  @override
  String get video_bottom_seek_back_label => '−10초';
  @override
  String get video_bottom_seek_forward => '10초 앞으로';
  @override
  String get video_bottom_seek_forward_label => '+10초';
  @override
  String video_chapter_n({required Object n}) => '챕터 ${n}';
  @override
  String get video_chapters => '챕터';
  @override
  String get video_chapters_empty => '챕터 없음';
  @override
  String get video_clip_export => '클립 내보내기';
  @override
  String get video_clip_export_cancelled => '클립 내보내기 취소됨';
  @override
  String video_clip_export_failed({required Object reason}) =>
      '클립 내보내기 실패: ${reason}';
  @override
  String get video_clip_export_ffmpeg_failed => 'ffmpeg 실행 실패';
  @override
  String get video_clip_export_ffmpeg_unavailable => 'ffmpeg를 사용할 수 없습니다';
  @override
  String get video_clip_export_input_missing => '원본 비디오를 사용할 수 없습니다';
  @override
  String get video_clip_export_invalid_range => '유효한 클립 범위가 없습니다';
  @override
  String get video_clip_export_output_missing => '내보낸 파일이 생성되지 않았습니다';
  @override
  String get video_clip_export_remote_download_required =>
      '클립을 내보내기 전에 원격 비디오를 이 기기로 다운로드하세요';
  @override
  String get video_clip_export_source_changed =>
      '비디오 소스가 변경되어 클립 내보내기가 취소되었습니다';
  @override
  String get video_clip_export_start => '클립 내보내기 시작';
  @override
  String get video_clip_export_stop => '중지하고 클립 내보내기';
  @override
  String video_clip_exported({required Object path}) => '클립을 내보냈습니다: ${path}';
  @override
  String video_clip_exported_with_subtitles({required Object path}) =>
      '자막 포함 클립 내보내기 완료: ${path}';
  @override
  String get video_clip_exporting => '클립 내보내는 중…';
  @override
  String get video_continue_watching => 'Continue Watching';
  @override
  String get video_control_audio_track => '오디오 트랙';
  @override
  String get video_control_customize_hint =>
      '각 버튼이 플레이어의 어디에 놓일지 선택하거나 빼낼 수 있습니다.';
  @override
  String get video_control_episode_list => '에피소드 목록';
  @override
  String get video_control_favorite_sentence => '현재 문장 즐겨찾기';
  @override
  String get video_control_fullscreen => '전체 화면';
  @override
  String get video_control_next_cue => '다음 자막';
  @override
  String get video_control_palette_hint =>
      '버튼을 슬롯으로 드래그하면 추가됩니다. 한 버튼을 여러 슬롯에 둘 수 있습니다.';
  @override
  String get video_control_palette_title => '모든 버튼';
  @override
  String get video_control_play_pause => '재생/일시정지';
  @override
  String get video_control_previous_cue => '이전 자막';
  @override
  String get video_control_reject_required => '필수 조작은 플레이어에 남아 있어야 합니다.';
  @override
  String get video_control_reject_unavailable => '이 조작은 여기에 둘 수 없습니다.';
  @override
  String get video_control_reject_volume_bottom => '음량은 하단 바에만 둘 수 있습니다.';
  @override
  String get video_control_remove_from_slot => '빼내기';
  @override
  String get video_control_reset_layout => '플레이어 버튼 배치 초기화';
  @override
  String get video_control_screenshot => '스크린샷';
  @override
  String get video_control_seek_backward => '10초 뒤로';
  @override
  String get video_control_seek_forward => '10초 앞으로';
  @override
  String get video_control_settings => '플레이어 설정';
  @override
  String get video_control_slot_bottom_center => '하단 바(가운데)';
  @override
  String get video_control_slot_bottom_left => '하단 바(왼쪽)';
  @override
  String get video_control_slot_bottom_right => '하단 바(오른쪽)';
  @override
  String get video_control_slot_drop_hint => '버튼을 여기로 드래그하세요';
  @override
  String get video_control_slot_hidden => '플레이어에서 제거됨';
  @override
  String get video_control_slot_screen_left => '화면 왼쪽';
  @override
  String get video_control_slot_screen_right => '화면 오른쪽';
  @override
  String get video_control_slot_top_center => '상단 바(가운데)';
  @override
  String get video_control_slot_top_left => '상단 바(왼쪽)';
  @override
  String get video_control_slot_top_right => '상단 바(오른쪽)';
  @override
  String get video_control_speed => '배속';
  @override
  String get video_control_subtitle_list => '자막 목록';
  @override
  String get video_control_subtitle_track => '자막 트랙';
  @override
  String get video_control_title => '비디오 제목';
  @override
  String get video_control_volume => '음량';
  @override
  String get video_danmaku_manual_bind_empty => '이 에피소드의 탄막이 아직 없습니다.';
  @override
  String get video_danmaku_manual_bind_failed =>
      '이 에피소드의 탄막을 불러올 수 없습니다. 나중에 다시 시도하세요.';
  @override
  String get video_danmaku_manual_bind_server_error =>
      '탄막 서버가 요청을 거부했습니다. 나중에 다시 시도하세요.';
  @override
  String get video_danmaku_manual_match_title => '탄막 매칭';
  @override
  String get video_danmaku_manual_network_error =>
      '네트워크 오류. 연결을 확인하고 다시 시도하세요.';
  @override
  String get video_danmaku_manual_no_result => '일치하는 애니메이션을 찾을 수 없습니다.';
  @override
  String get video_danmaku_manual_search_action => '검색';
  @override
  String get video_danmaku_manual_search_hint => '애니메이션 제목';
  @override
  String get video_danmaku_manual_search_prompt =>
      'Dandanplay에서 애니메이션 제목으로 검색한 후 에피소드를 선택하세요.';
  @override
  String get video_danmaku_manual_server_error => '검색 실패. 나중에 다시 시도하세요.';
  @override
  String video_delete_confirm({required Object title}) =>
      '『${title}』을(를) 삭제할까요? 되돌릴 수 없습니다.';
  @override
  String get video_delete_title => '비디오 삭제';
  @override
  String get video_double_tap_next_cue => '다음 줄';
  @override
  String get video_double_tap_prev_cue => '이전 줄';
  @override
  String get video_drop_audio_unsupported =>
      '현재 비디오 위에 자막 파일을 놓으세요. 오디오 파일은 여기에 연결할 수 없습니다.';
  @override
  String get video_drop_subtitle_only => '현재 비디오 위에 자막 파일을 놓으세요.';
  @override
  String get video_episode_list => '에피소드';
  @override
  String get video_episode_list_empty => '에피소드 없음';
  @override
  String video_favorite_count({required Object count}) => '즐겨찾기 ${count}개';
  @override
  String get video_file_error_content =>
      '동영상 파일을 로드할 수 없습니다. 파일이 존재하고 앱에서 접근 가능한 디렉토리에 있는지 확인하세요.';
  @override
  String get video_file_not_found => '동영상 파일을 찾을 수 없음';
  @override
  String get video_immersive_locked => '몰입 모드 켜짐';
  @override
  String get video_immersive_mode_full => '전체 조작';
  @override
  String get video_immersive_mode_lookup_only => '단어 찾기만';
  @override
  String get video_immersive_mode_seek_lookup => '단축키 + 단어 찾기';
  @override
  String get video_immersive_mode_unlock_only => '잠금 해제만';
  @override
  String get video_immersive_unlock => '잠금 해제';
  @override
  String get video_immersive_unlocked => '몰입 모드 꺼짐';
  @override
  String get video_import_action => '비디오 가져오기';
  @override
  String get video_import_confirm => '가져오기';
  @override
  String get video_import_pick_subtitle => '자막 선택';
  @override
  String get video_import_pick_video => '비디오 파일 선택';
  @override
  String get video_import_stream_advanced => '고급 (안티 리치 헤더)';
  @override
  String get video_import_stream_referer => 'Referer (선택 사항)';
  @override
  String get video_import_stream_subtitle_url_field => '외부 자막 URL (선택 사항)';
  @override
  String get video_import_stream_url_field => '동영상 스트림 URL';
  @override
  String get video_import_stream_url_hint =>
      'HLS/m3u8/mp4 스트림 URL 재생 (선택 사항으로 외부 자막 URL 및 안티 리치 Referer/User-Agent 포함)';
  @override
  String get video_import_stream_user_agent => 'User-Agent (선택 사항)';
  @override
  String get video_import_subtitle_optional =>
      '외부 자막(선택 사항). 재생 중 내장/외부 자막을 언제든 전환할 수 있습니다.';
  @override
  String get video_import_title => '비디오 가져오기';
  @override
  String get video_jimaku_anime_match => '애니메이션 매칭';
  @override
  String get video_jimaku_api_key => 'Jimaku API 키';
  @override
  String get video_jimaku_api_key_hint =>
      'jimaku.cc/account에서 무료 API key를 받으세요';
  @override
  String get video_jimaku_api_key_set => 'API key 설정됨';
  @override
  String video_jimaku_batch_done({
    required Object done,
    required Object total,
  }) => '자막 가져오기 완료: ${done}/${total}';
  @override
  String get video_jimaku_batch_download => '모두 다운로드';
  @override
  String get video_jimaku_batch_title => '컬렉션 자막 가져오기';
  @override
  String get video_jimaku_download_failed => '다운로드 실패';
  @override
  String get video_jimaku_downloaded => '자막을 다운로드해 적용했습니다';
  @override
  String get video_jimaku_episode => '에피소드 (선택 사항)';
  @override
  String get video_jimaku_episode_hint => '비워두면 전체 목록 표시';
  @override
  String get video_jimaku_fetch => '자막 가져오기(Jimaku)';
  @override
  String get video_jimaku_filter => '결과 필터(예: WEBRip, BD)';
  @override
  String get video_jimaku_find_sources => '자막 찾기';
  @override
  String get video_jimaku_language => '언어';
  @override
  String get video_jimaku_language_all => '전체';
  @override
  String get video_jimaku_no_key => '먼저 Jimaku API key를 입력하세요';
  @override
  String get video_jimaku_no_results => '자막을 찾지 못했습니다';
  @override
  String get video_jimaku_query => '시리즈 이름';
  @override
  String get video_jimaku_search => '검색';
  @override
  String get video_jimaku_series => '시리즈';
  @override
  String get video_jimaku_show_all_episodes => '모든 에피소드 표시';
  @override
  String get video_jimaku_source => '자막 소스';
  @override
  String get video_jimaku_source_hint =>
      'Jimaku 항목을 하나 선택하세요. 시즌 팩은 에피소드별로 자동 매칭됩니다.';
  @override
  String video_last_watched({required Object date}) => '마지막 시청 ${date}';
  @override
  String get video_library_empty => '아직 가져온 비디오가 없습니다';
  @override
  String get video_load_failed_back => '뒤로';
  @override
  String get video_load_failed_generic => '이 동영상을 불러올 수 없습니다.';
  @override
  String get video_load_failed_network => '네트워크 오류 - 연결을 확인하고 다시 시도하세요.';
  @override
  String get video_load_failed_not_found => '이 항목을 라이브러리에서 찾을 수 없습니다.';
  @override
  String get video_load_failed_retry => '재시도';
  @override
  String get video_load_failed_timeout =>
      '연결 시간 초과 - 네트워크가 느리거나 소스에서 요청을 제한하고 있습니다. 다시 시도해 주세요.';
  @override
  String get video_load_failed_title => '동영상 로드 실패';
  @override
  String get video_load_failed_unavailable =>
      '동영상 스트림을 가져올 수 없습니다 - 사용 불가, 지역 또는 연령 제한이 있거나 소스가 변경되었을 수 있습니다.';
  @override
  String get video_loading_buffering => '버퍼링 중…';
  @override
  String get video_loading_connecting => '스트림 연결 중…';
  @override
  String get video_loading_preparing => '준비 중…';
  @override
  String get video_loading_subtitle => '자막 다운로드 중…';
  @override
  String get video_menu_fullscreen => '전체 화면 전환';
  @override
  String get video_menu_lock => '몰입 / 잠금 모드';
  @override
  String get video_menu_play_pause => '재생 / 일시정지';
  @override
  String get video_menu_subtitle_track => '자막 트랙';
  @override
  String get video_mining_image_mode => '동영상 카드 이미지';
  @override
  String get video_mining_image_mode_current_frame => '채굴 시점 스크린샷';
  @override
  String get video_mining_image_mode_gif => '애니메이션 GIF (자막 클립)';
  @override
  String get video_mining_image_mode_hint =>
      '동영상 카드 커버를 자막 클립 애니메이션으로 할지, 단일 정지 프레임으로 할지 — 그리고 어떤 프레임을 사용할지 설정합니다';
  @override
  String get video_mining_image_mode_subtitle_start => '자막 시작 시점 스크린샷';
  @override
  String get video_next_episode => '다음 에피소드';
  @override
  String video_playlist_episodes({required Object count}) => '${count}화';
  @override
  String get video_prev_episode => '이전 에피소드';
  @override
  String get video_quality => '화질';
  @override
  String get video_quality_auto => '자동';
  @override
  String get video_quality_empty => '이 동영상에 전환 가능한 화질이 없습니다';
  @override
  String get video_quality_enhancement_hint =>
      '이 옵션을 켜면 mpv의 내장 고화질 스케일링으로 화면을 더 선명하게 만듭니다. 애니메이션은 물론 실사 드라마와 영화에도 적용됩니다. Anime4K 같은 셰이더로 더 강화하려면 비디오 재생 중 「화질 개선」을 열어 레벨을 선택하세요.';
  @override
  String get video_quality_load_failed => '이 동영상의 화질 목록을 불러올 수 없습니다.';
  @override
  String get video_quality_loading => '사용 가능한 화질 로딩 중…';
  @override
  String video_quality_switched({required Object label}) => '화질: ${label}';
  @override
  String get video_rename => '이름 바꾸기';
  @override
  String get video_rename_hint => '제목';
  @override
  String get video_render_skia_fix_confirm_action => '다시 시작';
  @override
  String get video_render_skia_fix_confirm_body =>
      'Impeller 렌더러를 비활성화하고 적용을 위해 앱을 다시 시작합니다.';
  @override
  String get video_render_skia_fix_confirm_title => 'Skia로 전환하고 다시 시작하시겠습니까?';
  @override
  String get video_render_skia_fix_hint =>
      '오디오는 재생되지만 동영상이 검은 화면인 경우 사용하세요. Impeller를 비활성화하며 다시 시작하여 적용됩니다.';
  @override
  String get video_render_skia_fix_title => '화면이 검은색인가요? 렌더러를 전환하세요 (Skia)';
  @override
  String video_resource_missing_message({required Object title}) =>
      '『${title}』의 파일을 찾을 수 없습니다. 위치가 변경되었거나 드라이브가 연결되어 있지 않을 수 있습니다. 다시 가져오거나 이 항목을 삭제할 수 있습니다.';
  @override
  String get video_resource_missing_reimport => '다시 가져오기';
  @override
  String get video_resource_missing_title => '동영상을 사용할 수 없음';
  @override
  String get video_resource_relink_success => '동영상 재연결됨';
  @override
  String get video_scrape_episodes => '에피소드';
  @override
  String get video_scrape_info => '시리즈 정보';
  @override
  String video_scrape_rating_votes({required Object count}) => '평가 ${count}개';
  @override
  String get video_screenshot => '스크린샷';
  @override
  String video_screenshot_failed_reason({required Object reason}) =>
      '스크린샷 실패: ${reason}';
  @override
  String video_screenshot_ready({required Object file}) => '스크린샷 준비됨: ${file}';
  @override
  String video_screenshot_saved_to({required Object path}) =>
      '스크린샷이 저장됨: ${path}';
  @override
  String get video_secondary_subtitle_hint => '플레이어가 렌더링 (사전 검색 불가)';
  @override
  String get video_secondary_subtitle_sources => '보조 자막';
  @override
  String get video_setting_auto_play_next => '다음 에피소드 자동 재생';
  @override
  String get video_setting_auto_scrape => '시리즈 정보 자동 가져오기';
  @override
  String get video_setting_av_delay => '자막 동기화';
  @override
  String get video_setting_av_delay_hint =>
      '양수 = 자막이 늦게(자막을 뒤로 밀기), 음수 = 자막이 빠르게. 슬라이더, +/- 버튼을 쓰거나 값을 직접 입력하세요.';
  @override
  String get video_setting_danmaku_area => '표시 영역';
  @override
  String get video_setting_danmaku_area_hint =>
      '댄마쿠가 차지할 수 있는 화면 높이 비율 (상단 기준).';
  @override
  String get video_setting_danmaku_block_rules => '차단 단어 / 정규식';
  @override
  String get video_setting_danmaku_block_rules_hint =>
      '한 줄에 하나의 규칙. /패턴/으로 감싸면 정규식으로 처리되고, 그렇지 않으면 대소문자 구분 없이 텍스트로 매칭됩니다.';
  @override
  String get video_setting_danmaku_block_rules_placeholder => '예: 스포일러 또는 /패턴/';
  @override
  String get video_setting_danmaku_enabled => '탄막 표시';
  @override
  String get video_setting_danmaku_enabled_hint =>
      '로컬 또는 매칭된 탄막을 비디오 위에 렌더링하되 조작을 가리지 않습니다.';
  @override
  String get video_setting_danmaku_font_scale => '글꼴 크기';
  @override
  String get video_setting_danmaku_font_scale_hint => '댄마쿠 텍스트 크기를 조절합니다.';
  @override
  String get video_setting_danmaku_manual_match => '수동 매칭';
  @override
  String get video_setting_danmaku_manual_match_hint =>
      '자동 매칭이 실패하거나 잘못된 경우 Dandanplay에서 제목으로 검색하고 에피소드를 선택합니다.';
  @override
  String get video_setting_danmaku_max_active => '동시 표시 탄막 제한';
  @override
  String get video_setting_danmaku_max_active_hint =>
      '프레임당 렌더링되는 댓글 수를 제한해 큰 파일에서도 반응을 유지합니다.';
  @override
  String get video_setting_danmaku_online => 'Dandanplay 온라인 매칭';
  @override
  String get video_setting_danmaku_online_hint =>
      '사용 가능한 로컬 사이드카가 없을 때 연 비디오를 Dandanplay로 매칭해 관련 댓글을 가져옵니다.';
  @override
  String get video_setting_danmaku_opacity => '불투명도';
  @override
  String get video_setting_danmaku_opacity_hint => '댄마쿠 전체 투명도.';
  @override
  String get video_setting_danmaku_server_url => '탄막 서버 주소';
  @override
  String get video_setting_danmaku_speed => '속도';
  @override
  String get video_setting_danmaku_speed_hint =>
      '높을수록 빠르며, 스크롤 댄마쿠가 화면을 더 빠르게 지나갑니다.';
  @override
  String get video_setting_double_tap => '더블 탭 이동';
  @override
  String get video_setting_double_tap_hint => '비디오의 왼쪽이나 오른쪽을 두 번 탭하면 이동합니다';
  @override
  String get video_setting_double_tap_off => '끄기';
  @override
  String get video_setting_double_tap_subtitle => '자막';
  @override
  String get video_setting_immersive_mode => '몰입 모드';
  @override
  String get video_setting_immersive_mode_hint =>
      '측면 잠금 버튼을 누른 뒤에도 어떤 조작이 가능한지 제어합니다';
  @override
  String get video_setting_lock_window_aspect => '창을 비디오 비율로 고정';
  @override
  String get video_setting_long_press_speed => '길게 눌러 배속';
  @override
  String get video_setting_long_press_speed_hint =>
      '비디오를 누르고 있는 동안 임시로 이 속도를 사용합니다.';
  @override
  String get video_setting_mpv_aspect => '화면 비율';
  @override
  String get video_setting_mpv_aspect_auto => '원본';
  @override
  String get video_setting_mpv_brightness => '밝기';
  @override
  String get video_setting_mpv_channels => '채널';
  @override
  String get video_setting_mpv_channels_auto => '자동';
  @override
  String get video_setting_mpv_channels_mono => '모노';
  @override
  String get video_setting_mpv_channels_stereo => '스테레오(다운믹스)';
  @override
  String get video_setting_mpv_contrast => '대비';
  @override
  String get video_setting_mpv_correct_downscale => '선형 다운스케일링';
  @override
  String get video_setting_mpv_deband => '디밴딩';
  @override
  String get video_setting_mpv_deinterlace => '디인터레이스';
  @override
  String get video_setting_mpv_dither => '디더링';
  @override
  String get video_setting_mpv_gamma => '감마';
  @override
  String get video_setting_mpv_group_advanced => '고급';
  @override
  String get video_setting_mpv_group_audio => '오디오';
  @override
  String get video_setting_mpv_group_color => '색상';
  @override
  String get video_setting_mpv_group_decode => '디코딩';
  @override
  String get video_setting_mpv_group_geometry => '화면';
  @override
  String get video_setting_mpv_group_playback => '재생';
  @override
  String get video_setting_mpv_group_quality => '화질';
  @override
  String get video_setting_mpv_hue => '색조';
  @override
  String get video_setting_mpv_hwdec => '하드웨어 디코딩';
  @override
  String get video_setting_mpv_hwdec_auto => '자동(안전)';
  @override
  String get video_setting_mpv_hwdec_copy => '자동(복사)';
  @override
  String get video_setting_mpv_hwdec_off => '끄기';
  @override
  String get video_setting_mpv_interpolation => '모션 보간';
  @override
  String get video_setting_mpv_loop => '파일 반복';
  @override
  String get video_setting_mpv_normalize => '다운믹스 음량 정규화';
  @override
  String get video_setting_mpv_panscan => '팬 & 스캔(테두리 잘라내기)';
  @override
  String get video_setting_mpv_pitch => '속도 변경 시 음높이 유지';
  @override
  String get video_setting_mpv_raw => '추가 mpv 옵션(한 줄에 하나, key=value)';
  @override
  String get video_setting_mpv_raw_hint =>
      '데스크톱 전용. 런타임에 적용할 수 없는 항목(예: vo, profile)은 무시됩니다. SVP/RIFE는 외부 도구가 필요해 지원되지 않습니다.';
  @override
  String get video_setting_mpv_reset => '모두 초기화';
  @override
  String get video_setting_mpv_rotate => '회전';
  @override
  String get video_setting_mpv_saturation => '채도';
  @override
  String get video_setting_mpv_sigmoid => '시그모이드 업스케일링';
  @override
  String get video_setting_mpv_sigmoid_hint =>
      '시그모이드 곡선 업스케일링은 링잉을 줄이지만 GPU를 사용합니다. 성능을 위해 기본적으로 꺼져 있으며, 더 선명한 업스케일링을 원하면 켜세요.';
  @override
  String get video_setting_mpv_zoom => '확대/축소';
  @override
  String get video_setting_picture_fit => '화면 스케일링';
  @override
  String get video_setting_picture_fit_contain => '맞춤';
  @override
  String get video_setting_picture_fit_cover => '채우기';
  @override
  String get video_setting_picture_fit_fill => '늘려서 채우기';
  @override
  String get video_setting_picture_fit_hint => '화면이 플레이어 영역을 채우는 방식';
  @override
  String get video_setting_qb_category => 'qBittorrent 카테고리';
  @override
  String get video_setting_qb_category_hint =>
      'Fushi가 전송한 다운로드에 이 카테고리가 적용되며, 완료 추적도 이 카테고리만 감시합니다.';
  @override
  String get video_setting_qb_password => 'WebUI 비밀번호';
  @override
  String get video_setting_qb_url => 'qBittorrent WebUI URL';
  @override
  String get video_setting_qb_url_hint =>
      '예: http://127.0.0.1:8080. 비워두면 애니메이션 다운로드가 비활성화됩니다.';
  @override
  String get video_setting_qb_username => 'WebUI 사용자 이름';
  @override
  String get video_setting_secondary_subtitle_obscure => '보조 자막 가리기';
  @override
  String get video_setting_secondary_subtitle_obscure_hint =>
      '보조(번역) 자막을 흐리게 하거나 숨깁니다';
  @override
  String get video_setting_seek_seconds => '이동 간격(초)';
  @override
  String get video_setting_speed => '재생 속도';
  @override
  String get video_setting_speed_step => '속도 단계';
  @override
  String get video_setting_subtitle_appearance => '자막 외관';
  @override
  String get video_setting_subtitle_bg_color => '배경 색상';
  @override
  String get video_setting_subtitle_bg_opacity => '배경 불투명도';
  @override
  String get video_setting_subtitle_font_size => '글자 크기';
  @override
  String get video_setting_subtitle_font_weight => '글자 두께';
  @override
  String get video_setting_subtitle_no_background => '배경 없음';
  @override
  String get video_setting_subtitle_no_background_hint => '자막 배경을 투명하게 만듭니다.';
  @override
  String get video_setting_subtitle_obscure => '자막 가리기';
  @override
  String get video_setting_subtitle_obscure_blur => '흐리게';
  @override
  String get video_setting_subtitle_obscure_hide => '숨기기';
  @override
  String get video_setting_subtitle_obscure_hint =>
      '리스닝 연습을 위해 자막을 가리는 방법을 선택하세요: 끄기, 흐리게 (마우스를 올리거나 탭하면 표시), 숨기기.';
  @override
  String get video_setting_subtitle_obscure_none => '끄기';
  @override
  String get video_setting_subtitle_position => '세로 위치';
  @override
  String get video_setting_subtitle_reset => '기본값으로 되돌리기';
  @override
  String get video_setting_subtitle_respect_ass => '자막 자체 스타일 사용';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      '.ass 자막에 내장된 글꼴, 색상, 외곽선을 사용합니다. 끄면 사용자 설정이 강제 적용됩니다.';
  @override
  String get video_setting_subtitle_shadow => '그림자';
  @override
  String get video_setting_subtitle_sync_input => '오프셋 (ms)';
  @override
  String get video_setting_subtitle_text_color => '텍스트 색상';
  @override
  String get video_setting_theme => '테마';
  @override
  String get video_setting_torrent_active_downloads => '최대 활성 다운로드 수';
  @override
  String get video_setting_torrent_active_seeds => '최대 활성 시드 수';
  @override
  String get video_setting_torrent_anonymous => '익명 모드';
  @override
  String get video_setting_torrent_antileech => '안티리치 활성화';
  @override
  String get video_setting_torrent_backend_qb => '외부 qBittorrent';
  @override
  String get video_setting_torrent_ban_progress_cheat => '진행률 속임수 차단';
  @override
  String get video_setting_torrent_ban_relative_cheat => '상대 진행률 속임수 차단';
  @override
  String get video_setting_torrent_ban_time => '차단 기간 (분)';
  @override
  String get video_setting_torrent_ban_time_hint => '0 = 영구';
  @override
  String get video_setting_torrent_connections_hint => '0 = 엔진 기본값';
  @override
  String get video_setting_torrent_dht => 'DHT';
  @override
  String get video_setting_torrent_download_limit => '다운로드 제한 (KB/s)';
  @override
  String get video_setting_torrent_encryption_disabled => '비활성화';
  @override
  String get video_setting_torrent_encryption_forced => '강제';
  @override
  String get video_setting_torrent_encryption_prefer => '선호';
  @override
  String get video_setting_torrent_limit_hint => '0 = 무제한';
  @override
  String get video_setting_torrent_listen_port => '수신 포트';
  @override
  String get video_setting_torrent_listen_port_hint => '0 = 기본값 (6881)';
  @override
  String get video_setting_torrent_lsd => '로컬 피어 탐색 (LSD)';
  @override
  String get video_setting_torrent_max_connections => '최대 연결 수';
  @override
  String get video_setting_torrent_max_ip_ports => 'IP당 최대 포트 수';
  @override
  String get video_setting_torrent_memory_hint =>
      '엔진 메모리를 제한합니다. 0 = 자동 (기기 RAM 기준).';
  @override
  String get video_setting_torrent_memory_limit => '메모리 제한 (MB)';
  @override
  String get video_setting_torrent_natpmp => 'NAT-PMP 포트 매핑';
  @override
  String get video_setting_torrent_section_antileech => '안티리치';
  @override
  String get video_setting_torrent_section_session => '세션';
  @override
  String get video_setting_torrent_seed_ratio_hint =>
      '업로드/다운로드 비율이 이 값에 도달하면 업로드를 중지합니다. 0 = 무제한.';
  @override
  String get video_setting_torrent_seed_ratio_limit => '시드 비율 제한';
  @override
  String get video_setting_torrent_seed_time_hint =>
      '이 시간만큼 시딩한 후 업로드를 중지합니다. 0 = 무제한.';
  @override
  String get video_setting_torrent_seed_time_limit => '시드 시간 제한 (분)';
  @override
  String get video_setting_torrent_upload_enabled => '업로드 / 시딩 활성화';
  @override
  String get video_setting_torrent_upload_enabled_hint =>
      '기본적으로 꺼져 있습니다. 다운로드 후 스웜에 시딩합니다.';
  @override
  String get video_setting_torrent_upload_limit => '업로드 제한 (KB/s)';
  @override
  String get video_setting_torrent_upload_slots => '최대 업로드 슬롯';
  @override
  String get video_setting_torrent_upnp => 'UPnP 포트 매핑';
  @override
  String get video_setting_torrent_zero_default => '0 = 기본값';
  @override
  String get video_setting_torrent_zero_off => '0 = 끄기';
  @override
  String get video_settings_cat_audio => '오디오';
  @override
  String get video_settings_cat_controls => '조작 버튼';
  @override
  String get video_settings_cat_danmaku => '탄막';
  @override
  String get video_settings_cat_mpv => 'mpv';
  @override
  String get video_settings_cat_playback => '재생';
  @override
  String get video_settings_cat_shaders => '화질 개선';
  @override
  String get video_settings_cat_subtitle => '자막';
  @override
  String get video_settings_title => '비디오 설정';
  @override
  String get video_shader_anime4k_hint =>
      '다운로드할 프리셋을 선택하세요. 다운로드한 뒤 목록에서 체크하면 활성화됩니다. 데스크톱 전용.';
  @override
  String get video_shader_anime4k_title => 'Anime4K 추천 셰이더';
  @override
  String get video_shader_download_anime4k => 'Anime4K 프리셋 다운로드';
  @override
  String video_shader_download_done({required Object count}) =>
      '셰이더 ${count}개를 다운로드했습니다';
  @override
  String get video_shader_download_failed => '셰이더 다운로드 실패';
  @override
  String video_shader_download_partial({
    required Object ok,
    required Object failed,
  }) => '셰이더 ${ok}개 다운로드, ${failed}개 실패';
  @override
  String get video_shader_download_url => '링크에서 다운로드';
  @override
  String get video_shader_downloaded_label => '다운로드됨';
  @override
  String get video_shader_downloading => '셰이더 다운로드 중…';
  @override
  String get video_shader_first_use_body =>
      '想让动画画面更清晰，可以进入“画质增强”并点击“下载 Anime4K 推荐着色器”。下载后在已安装列表里勾选即可启用。';
  @override
  String get video_shader_first_use_download => '다운로드하고 활성화';
  @override
  String get video_shader_first_use_title => '试试 Anime4K 画质增强';
  @override
  String get video_shader_import => '셰이더 가져오기(.glsl)';
  @override
  String video_shader_import_done({required Object count}) =>
      '셰이더 ${count}개를 가져왔습니다';
  @override
  String get video_shader_import_from_mpv => '로컬 mpv에서 가져오기';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自动搜索本机 mpv；未找到时可手动选择 mpv 目录。';
  @override
  String get video_shader_mobile_perf_hint =>
      '휴대폰에서는 셰이더가 표준 GPU 렌더 경로에서만 적용되며 효과는 기기 GPU에 따라 다릅니다. 높은 단계는 프레임 드롭이나 발열을 일으킬 수 있습니다. 먼저 낮음/중간을 써 보고 기기에서 결과를 확인하세요.';
  @override
  String video_shader_mpv_dir_current({required Object path}) =>
      'mpv 폴더: ${path}';
  @override
  String get video_shader_mpv_dir_empty => '그 폴더에서 셰이더를 찾지 못했습니다';
  @override
  String get video_shader_mpv_not_found => '로컬 mpv 셰이더를 찾지 못했습니다';
  @override
  String get video_shader_mpv_pick_title => 'mpv에서 셰이더 가져오기';
  @override
  String get video_shader_pick_mpv_dir => 'Specify mpv folder';
  @override
  String get video_shader_preset_mode_a_fast =>
      '대부분의 1080p 애니메이션에 적합. GPU 부하가 낮습니다.';
  @override
  String get video_shader_preset_mode_a_hq =>
      '1080p 애니메이션 최고 화질. 강력한 GPU가 필요합니다.';
  @override
  String get video_shader_preset_mode_b_fast =>
      '리샘플링 아티팩트가 있는 오래된 720p 애니메이션에 적합.';
  @override
  String get video_shader_preset_mode_b_hq =>
      '리샘플링 아티팩트가 있는 오래된 720p 애니메이션용 고화질. 강력한 GPU가 필요합니다.';
  @override
  String get video_shader_preset_mode_c_fast =>
      '압축 번짐이 있는 오래된 SD(480p) 애니메이션에 적합.';
  @override
  String get video_shader_preset_mode_c_hq =>
      '압축 번짐이 있는 오래된 SD(480p) 애니메이션용 고화질. 강력한 GPU가 필요합니다.';
  @override
  String get video_shader_quality_tier => '화질 개선';
  @override
  String get video_shader_section_advanced => '고급(수동 셰이더)';
  @override
  String get video_shader_section_installed => '설치된 셰이더';
  @override
  String get video_shader_showing_original => '셰이더 꺼짐(원본)';
  @override
  String get video_shader_showing_shaded => '셰이더 켜짐';
  @override
  String get video_shader_tier_custom_hint =>
      '사용자 지정 셰이더 조합. 위에서 단계를 선택하면 프리셋으로 전환됩니다.';
  @override
  String get video_shader_tier_high => '높음';
  @override
  String get video_shader_tier_high_hint =>
      'Anime4K HQ. 더 선명하며 애니메이션에 가장 좋고 실사에도 쓸 수 있습니다(개선 폭은 작음). 중상급 GPU(NVIDIA RTX 4060 / RTX 3070, AMD RX 6700 XT / RX 7700 XT)가 필요합니다.';
  @override
  String get video_shader_tier_low => '낮음';
  @override
  String get video_shader_tier_low_hint =>
      'mpv 내장 샤프닝(ewa_lanczossharp). 모든 비디오(애니메이션·실사)에 적용됩니다. 다운로드가 필요 없고 GPU 부하가 가장 낮습니다. 내장 그래픽이나 오래된 그래픽카드(NVIDIA GTX 1050, AMD RX 560, Intel iGPU)는 이 단계를 선택하세요.';
  @override
  String get video_shader_tier_medium => '중간';
  @override
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast. 애니메이션에 가장 좋고 실사 영화/TV에도 쓸 수 있습니다(개선 폭은 작음). 중급 GPU(NVIDIA GTX 1660 / RTX 3050, AMD RX 6600)에서 동작합니다.';
  @override
  String get video_shader_tier_off => '없음';
  @override
  String get video_shader_tier_off_hint => '개선하지 않음. 원본 비디오를 그대로 재생합니다.';
  @override
  String get video_shader_tier_ultra => '최고';
  @override
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A(UL 초대형 네트워크 복원). Anime4K 계열 최강 복원이며 실사에도 쓸 수 있습니다(개선 폭은 작음). 플래그십 GPU(NVIDIA RTX 4080 / RTX 5090, AMD RX 7900 XTX)가 필요합니다. GPU가 약하면 더 낮은 단계를 선택하세요.';
  @override
  String get video_shader_url_hint => '셰이더 .glsl 링크를 붙여넣으세요(예: GitHub)';
  @override
  String get video_shaders_empty => '아직 가져온 셰이더가 없습니다';
  @override
  String get video_stat_by_video => '비디오별';
  @override
  String get video_stat_completed => '완료';
  @override
  String get video_stat_no_data => '아직 비디오 통계가 없습니다';
  @override
  String get video_statistics => '비디오 통계';
  @override
  String get video_subtitle_attach_playlist_hint => '재생목록을 열어 에피소드별로 자막을 연결하세요';
  @override
  String video_subtitle_attached_to_video({
    required Object title,
    required Object count,
  }) => '${title}에 자막을 연결했습니다(${count}개 큐)';
  @override
  String get video_subtitle_auto_align => '자막 자동 정렬';
  @override
  String video_subtitle_auto_align_done({required Object ms}) =>
      '자막을 ${ms} ms 자동 정렬했습니다';
  @override
  String get video_subtitle_auto_align_low_confidence =>
      '자동 정렬할 수 없습니다(명확한 음성 일치를 찾지 못함)';
  @override
  String get video_subtitle_auto_align_running => '자막 자동 정렬 중…';
  @override
  String get video_subtitle_color_note => '비디오 자막 색상은 비디오 플레이어 안에서 설정합니다.';
  @override
  String video_subtitle_delay_osd({required Object ms}) => '자막 동기화: ${ms} ms';
  @override
  String get video_subtitle_filter_all => '전체';
  @override
  String get video_subtitle_filter_favorites => '즐겨찾기';
  @override
  String get video_subtitle_filter_favorites_empty => '아직 즐겨찾기한 자막이 없습니다';
  @override
  String get video_subtitle_graphic_hint => '그래픽 자막 · 화면에 표시 · 단어 찾기 불가';
  @override
  String video_subtitle_graphic_shown({required Object label}) =>
      '그래픽 자막을 화면에 표시함(단어 찾기 불가): ${label}';
  @override
  String get video_subtitle_import_failed => '자막 가져오기 실패';
  @override
  String get video_subtitle_import_file => '자막 파일 가져오기…';
  @override
  String get video_subtitle_import_unsupported => '지원되지 않는 자막 형식';
  @override
  String get video_subtitle_list => '자막 목록';
  @override
  String get video_subtitle_list_auto_scroll => '자동 스크롤';
  @override
  String get video_subtitle_list_empty => '불러온 자막 없음';
  @override
  String get video_subtitle_list_font_larger => '글자 크게';
  @override
  String get video_subtitle_list_font_smaller => '글자 작게';
  @override
  String get video_subtitle_list_jump => '이 줄로 이동';
  @override
  String get video_subtitle_list_loading => '자막을 불러오는 중…';
  @override
  String video_subtitle_load_failed({required Object label}) =>
      '이 자막을 불러올 수 없습니다(그래픽 자막이거나 지원되지 않는 트랙): ${label}';
  @override
  String get video_subtitle_off => '자막 끄기';
  @override
  String get video_subtitle_remote_host => '페어링된 기기의 자막';
  @override
  String video_subtitle_switched({required Object label}) => '자막: ${label}';
  @override
  String get video_subtitle_waveform_cue_list => '자막 목록';
  @override
  String get video_subtitle_waveform_jump_playhead => '재생 위치로 이동';
  @override
  String get video_subtitle_waveform_legend_cue => '자막 큐';
  @override
  String get video_subtitle_waveform_legend_energy => '음량';
  @override
  String get video_subtitle_waveform_legend_playhead => '재생 위치';
  @override
  String get video_subtitle_waveform_open => '파형 정렬';
  @override
  String get video_subtitle_waveform_open_hint => '탭하여 확대하고 정렬';
  @override
  String get video_subtitle_waveform_scroll_hint =>
      '드래그하여 타임라인을 탐색하세요. 아래 컨트롤로 정렬하세요';
  @override
  String get video_subtitle_waveform_unavailable => '이 기기에서 파형을 사용할 수 없습니다';
  @override
  String get video_subtitle_waveform_zoom_in => '확대';
  @override
  String get video_subtitle_waveform_zoom_out => '축소';
  @override
  String get video_subtitle_youtube_empty => '이 자막 트랙에 텍스트가 없습니다';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang} (번역됨)';
  @override
  String video_watched_up_to({required Object time}) => '${time}까지 시청함';
  @override
  String get video_windows_black_flash_notice_body =>
      'Windows에서 GPU 부하가 높으면 동영상이 검은색으로 깜빡일 수 있습니다. 부하를 줄이려면 위의 화질 향상, 시그모이드 업스케일링, 디밴딩을 끄거나 하드웨어 디코딩을 복사로 전환해 보세요.';
  @override
  String get video_windows_black_flash_notice_title => 'Windows에서 검은색 깜빡임?';
  @override
  String get view_illustrations => '삽화';
  @override
  String get volume_button_page_turning => '볼륨 버튼으로 페이지 넘기기';
  @override
  String get volume_key_sentence_nav => '볼륨 키 문장 탐색';
  @override
  String get wheel_page_turn_interval => '마우스 휠 페이지 넘김 간격';
  @override
  String get word_favorite_added => '단어가 즐겨찾기에 저장되었습니다';
  @override
  String get word_favorite_removed => '단어가 즐겨찾기에서 삭제되었습니다';
  @override
  String get yomitan_api_key => 'Yomitan API key(선택)';
  @override
  String get yomitan_api_server => 'Yomitan API 서버';
  @override
  String get yomitan_api_server_hint =>
      'yomitan-api 클라이언트가 Fushi 사전을 조회하도록 허용합니다(포트 19633)';
  @override
  String get yomitan_api_server_started => 'Yomitan API 서버가 시작되었습니다';
  @override
  String get yomitan_port_kill_action => '프로세스를 종료하고 재시도';
  @override
  String get yomitan_port_kill_confirm => '프로세스 종료';
  @override
  String yomitan_port_kill_confirm_message({required Object process}) =>
      '현재 포트를 사용 중인 프로세스: ${process}';
  @override
  String yomitan_port_kill_confirm_title({required Object port}) =>
      '포트 ${port}를 사용 중인 프로세스를 종료하시겠습니까?';
  @override
  String yomitan_port_kill_failed({required Object process}) =>
      '${process}를 종료할 수 없습니다. 수동으로 종료한 후 다시 시도하세요.';
  @override
  String yomitan_port_kill_protected({required Object process}) =>
      '${process}는 중요한 시스템 프로세스입니다. Fushi가 종료하지 않습니다. 대신 포트를 변경하세요.';
  @override
  String get yomitan_port_kill_self_instance =>
      '이 프로세스는 이 앱의 다른 실행 중인 인스턴스입니다.';
  @override
  String get game_track_bgm => 'BGM / 제외됨';
  @override
  String get game_line_audio_no_voice => '음성 없음';
  @override
  String get game_line_audio_overlong => '너무 긴 클립';
  @override
  String get game_line_audio_overlong_hint =>
      '한 줄보다 훨씬 길며, BGM이나 다른 혼합 오디오가 포함될 수 있습니다';
  @override
  String get game_line_audio_loopback_hint => '시스템 믹스 폴백; BGM이 포함될 수 있습니다';
  @override
  String get game_line_recapture => '음성 다시 캡처';
  @override
  String get game_line_recapture_stop => '캡처 완료';
  @override
  String get game_line_tracks => '이 줄의 트랙';
  @override
  String get game_line_tracks_hint => '이 줄의 시점에서 각 트랙을 미리 듣고 BGM 트랙을 제외하세요';
  @override
  String get game_line_track_use => '이 줄에 사용';
  @override
  String get game_user_tags_title => '내 태그';
  @override
  String get anki_lapis_section => 'Lapis 카드 스타일';
  @override
  String get anki_lapis_font_scale => '카드 글꼴 배율';
  @override
  String get anki_lapis_font_scale_hint =>
      '모든 Lapis 글꼴 크기를 조절합니다. "Anki에 스타일 적용"을 통해 적용됩니다.';
  @override
  String get anki_lapis_custom_css => '사용자 정의 CSS';
  @override
  String get anki_lapis_custom_css_hint => '보호된 사용자 섹션에서 Lapis 스타일시트에 추가됩니다.';
  @override
  String get anki_lapis_apply => 'Anki에 스타일 적용';
  @override
  String get anki_lapis_apply_done => 'Lapis 스타일이 적용되었습니다. 먼저 백업이 저장되었습니다.';
  @override
  String anki_lapis_apply_failed({required Object error}) =>
      '스타일을 적용할 수 없습니다: ${error}';
  @override
  String get anki_lapis_up_to_date => 'Lapis 스타일이 이미 최신 상태입니다.';
  @override
  String get anki_lapis_foreign_edit_title => 'Anki에서 템플릿이 변경됨';
  @override
  String get anki_lapis_foreign_edit_body =>
      'Anki의 Lapis 템플릿이 Fushi가 마지막으로 적용한 것과 다릅니다 - 수동으로 편집된 것일 수 있습니다. 적용하면 덮어쓰게 되며, 먼저 백업이 저장됩니다. 계속하시겠습니까?';
  @override
  String get anki_lapis_backup => 'Lapis 템플릿 백업';
  @override
  String anki_lapis_backup_done({required Object path}) => '템플릿 백업 완료: ${path}';
  @override
  String anki_lapis_backup_failed({required Object error}) => '백업 실패: ${error}';
  @override
  String get anki_lapis_not_found => 'Anki에서 Lapis 노트 유형을 찾을 수 없습니다.';
  @override
  String get anki_lapis_restore => '백업에서 복원';
  @override
  String get anki_lapis_restore_empty => '아직 백업이 없습니다.';
  @override
  String get anki_lapis_restore_confirm =>
      '이 백업으로 Anki의 Lapis 템플릿을 덮어쓰시겠습니까? 현재 상태가 먼저 백업됩니다.';
  @override
  String get anki_lapis_restore_done => '템플릿이 복원되었습니다.';
  @override
  String anki_lapis_restore_failed({required Object error}) =>
      '복원 실패: ${error}';
  @override
  String get anki_dedup_section => 'Anki 미디어 저장소 최적화';
  @override
  String get anki_dedup_scan => '중복 검색 (변경 없음)';
  @override
  String get anki_dedup_run => '지금 중복 제거';
  @override
  String get anki_dedup_report_title => '미디어 중복 제거 보고서';
  @override
  String anki_dedup_report_body({
    required Object groups,
    required Object removed,
    required Object size,
    required Object notes,
    required Object models,
    required Object skipped,
  }) =>
      '중복 그룹 ${groups}개; 추가 사본 ${removed}개 (${size}); 노트 ${notes}개와 노트 유형 ${models}개 재작성; ${skipped}개 건너뜀.';
  @override
  String get anki_dedup_report_dry_note => '검색만 수행됨 - 변경된 사항이 없습니다.';
  @override
  String get anki_dedup_report_clean => '바이트 단위로 동일한 중복이 없습니다.';
  @override
  String anki_dedup_failed({required Object error}) => '중복 제거 실패: ${error}';
  @override
  String get anki_dedup_unavailable =>
      '이 컴퓨터에서 Anki가 실행 중이어야 합니다 (AnkiConnect).';
  @override
  String get anki_dedup_run_hint =>
      '먼저 검색하고 삭제될 항목을 정확히 나열합니다. 확인하기 전까지 아무것도 삭제되지 않습니다.';
  @override
  String get anki_dedup_plan_title => '삭제할 파일';
  @override
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '추가 사본 ${count}개, ${size} 회수 가능. 각 파일의 사본 하나가 유지되고 모든 참조가 먼저 그것을 가리키도록 변경됩니다. 재인코딩은 하지 않습니다.';
  @override
  String anki_dedup_plan_entry({
    required Object file,
    required Object size,
    required Object canonical,
  }) => '${file} (${size}) 삭제 - ${canonical} 유지';
  @override
  String get anki_dedup_plan_delete => '이 파일들을 삭제';
  @override
  String get anki_dedup_plan_journal => '모든 재작성 및 삭제 기록이 먼저 백업 폴더에 저장됩니다.';
  @override
  String get manga_ocr_default_engine => '기본 OCR 엔진';
  @override
  String get manga_ocr_engine_auto => '자동 (Lens에 업로드하지 않음)';
  @override
  String get manga_ocr_engine_local_onnx => '로컬 ONNX';
  @override
  String get manga_ocr_engine_google_lens => 'Google Lens';
  @override
  String get manga_google_lens_disclosure_title =>
      '만화 페이지를 Google Lens로 전송하시겠습니까?';
  @override
  String get manga_google_lens_disclosure_body =>
      '이 만화를 인식하면 OCR 텍스트 없이 축소된 JPEG 사본이 Google에 전송됩니다. 결과는 이 기기에 캐시됩니다. 비공식 엔드포인트이므로 중단될 수 있습니다. 동의하지 않으면 아무것도 업로드되지 않습니다.';
  @override
  String get manga_google_lens_disclosure_accept => '동의하고 OCR 시작';
  @override
  String get manga_google_lens_disclosure_decline => '취소';
  @override
  String get manga_reading_direction => '읽기 방향';
  @override
  String get manga_direction_rtl => '오른쪽에서 왼쪽';
  @override
  String get manga_direction_ltr => '왼쪽에서 오른쪽';
  @override
  String get manga_zoom => '확대/축소';
  @override
  String get manga_jump_to_page => '페이지로 이동';
  @override
  String get manga_previous_page => '이전 페이지';
  @override
  String get manga_next_page => '다음 페이지';
  @override
  String manga_page_number_hint({required Object total}) =>
      '페이지 번호 (1-${total})';
  @override
  String get manga_import_direct => 'OCR 없이 가져오기';
  @override
  String get manga_library => '만화';
  @override
  String get manga_import_action => '만화 가져오기';
  @override
  String get game_scrape_search => '검색';
  @override
  String get game_scrape_use => '사용';
  @override
  String get game_scrape_search_failed => '검색에 실패했습니다. 네트워크를 확인하고 다시 시도하세요.';
  @override
  String get game_remove_confirm =>
      '이 게임을 라이브러리에서 삭제하시겠습니까? 디스크의 게임 파일은 삭제되지 않습니다.';
  @override
  String manga_ocr_acceleration_status({required Object engine}) =>
      'OCR 가속: ${engine}';
  @override
  String manga_ocr_acceleration_degraded({
    required Object engine,
    required Object reason,
  }) => 'GPU 가속을 사용할 수 없어 ${engine}에서 OCR 실행 중: ${reason}';
  @override
  String get media_tracking_status => '컬렉션 상태';
  @override
  String get media_tracking_signup => 'Bangumi 계정 만들기';
  @override
  String get media_tracking_game => '게임';
  @override
  String get download_rate_limit_lan_exempt =>
      '로컬 네트워크에는 적용되지 않습니다. LAN 전송은 항상 최대 속도로 실행됩니다.';
  @override
  String get scrape_reason_network =>
      '커버 소스에서 유효한 응답을 받을 수 없습니다. 네트워크를 확인하고 다시 시도하세요.';
  @override
  String get scrape_reason_server =>
      '커버 소스에서 오류를 반환했습니다. 나중에 다시 시도하거나 다른 후보를 선택하세요.';
  @override
  String get common_more_actions => '더 많은 작업';
  @override
  String get collection_already_has_item => '이 항목은 이미 컬렉션에 있습니다.';
  @override
  String get drag_drop_manga_archive_unsupported =>
      '.cbr/.rar 만화 아카이브를 가져올 수 없습니다. .cbz 또는 이미지 폴더로 다시 패킹하세요.';
  @override
  String get collection_add_failed => '항목을 컬렉션에 추가할 수 없습니다. 다시 시도하세요.';
  @override
  String get anki_dedup_auto => '자동 처리';
  @override
  String get anki_dedup_auto_hint =>
      '기본적으로 꺼져 있습니다. 켜면 Fushi가 시작 시 검색하고 (최대 주 1회) 먼저 목록을 보여줍니다. 확인하기 전까지 아무것도 삭제되지 않습니다.';
  @override
  String get anki_dedup_auto_delete => '확인 없이 자동 삭제';
  @override
  String get anki_dedup_auto_delete_hint =>
      '확인 대화 상자를 건너뜁니다. 바이트 단위로 동일한 추가 사본만 삭제되며 재인코딩은 하지 않지만, 삭제는 취소할 수 없습니다.';
  @override
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      '중복 Anki 미디어 파일 ${count}개 발견 (${size} 회수 가능)';
  @override
  String get anki_dedup_auto_review => '검토';
  @override
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      '중복 Anki 미디어 파일 ${count}개 삭제, ${size} 회수됨';
  @override
  String anki_lapis_backup_done_pruned({
    required Object path,
    required Object count,
  }) => '${path}에 백업됨 (90일 / 최대 10개 정책에 따라 이전 백업 ${count}개 정리됨)';
  @override
  String get game_audio_fallback_policy => '오디오 폴백';
  @override
  String get game_audio_fallback_full => '혼합 오디오 허용';
  @override
  String get game_audio_fallback_clean => '깨끗한 소스만';
  @override
  String get game_audio_fallback_resource => '원본 리소스만';
  @override
  String get game_track_silent_at_cue => '이 줄에 소리 없음';
  @override
  String get game_audio_fallback_full_hint =>
      '깨끗한 음성이 캡처되지 않으면 시스템 믹스로 폴백합니다. 클립에 BGM과 효과음이 포함될 수 있습니다.';
  @override
  String get game_audio_fallback_clean_hint =>
      '게임 리소스 오디오와 엔진 PCM만 사용합니다. 음성이 없는 줄은 BGM을 포함하는 대신 오디오 없이 마이닝됩니다.';
  @override
  String get game_audio_fallback_resource_hint =>
      '게임에 포함된 원본 음성 파일이 필요합니다. 없으면 마이닝이 거부됩니다.';
  @override
  String get game_line_audio_suppressed => '믹스 건너뜀';
  @override
  String get game_line_audio_suppressed_hint =>
      '이 줄에 대해 깨끗한 오디오 소스가 없었고, 오디오 폴백 정책에 따라 시스템 믹스가 건너뛰어졌습니다. 이 줄에 음성이 없다는 의미는 아닙니다.';
  @override
  String get video_setting_torrent_limit_lan => 'LAN 피어에 제한 적용';
  @override
  String get video_setting_torrent_limit_lan_hint =>
      '기본적으로 꺼져 있습니다. 로컬 네트워크의 피어와의 전송은 위의 제한을 무시합니다.';
  @override
  String get download_rate_limit_lan_included => '로컬 네트워크에도 적용됩니다.';
  @override
  String get video_collection_no_local_member => '이 컬렉션에 로컬 동영상이 없습니다';
  @override
  String get gal_mining_image_mode => '갈게 카드 이미지';
  @override
  String get gal_mining_image_mode_screenshot => '스크린샷';
  @override
  String get gal_mining_image_mode_hint =>
      '갈게 장면은 한 줄 내에서 거의 변하지 않으므로, 정지 스크린샷이 보통 더 작고 충분히 유용합니다.';
  @override
  String get shortcut_scope_manga => '만화';
  @override
  String get shortcut_action_manga_page_forward => '다음 페이지';
  @override
  String get shortcut_action_manga_page_backward => '이전 페이지';
  @override
  String get shortcut_action_manga_dismiss_dict => '사전 닫기';
  @override
  String get video_setting_jimaku_default_language => '기본 자막 언어';
  @override
  String get video_jimaku_api_key_settings_hint =>
      '설정 → 동영상 → 자막에서도 편집할 수 있습니다';
  @override
  String get anime_download_subs_episodes_unverified =>
      '에피소드 번호가 이 팩과 검증되지 않았습니다 - 자막이 다른 시즌의 것일 수 있습니다.';
  @override
  String get anime_download_subs_deferred => '자막은 다운로드 후 팩의 실제 파일에서 매칭됩니다';
  @override
  String get anime_download_subs_pending => '자막: 다운로드 완료 대기 중';
  @override
  String get anime_download_subs_unmatched => '자막: 이 팩과 일치하는 항목 없음';
  @override
  String get stat_source_breakdown => '소스별';
  @override
  String stat_format_pages({required Object n}) => '${n}페이지';
  @override
  String anime_download_subs_season_mismatch({required Object season}) =>
      '이 팩의 시즌 ${season}과 일치하는 자막 항목이 없습니다 - 자동 선택되지 않았습니다. 그래도 원하면 수동으로 선택하세요.';
  @override
  String get media_tracking_card_title => 'Bangumi 동기화';
  @override
  String get media_tracking_not_connected =>
      '연결되지 않았습니다. 진행 상황은 로컬에 유지되며 Bangumi에 전송되지 않습니다.';
  @override
  String get media_tracking_last_sync => '마지막 동기화';
  @override
  String get media_tracking_never_synced => '동기화한 적 없음';
  @override
  String media_tracking_linked_count({required Object n}) => '${n}개 연결됨';
  @override
  String media_tracking_pending_count({required Object n}) => '${n}개 전송 대기 중';
  @override
  String get media_tracking_all_synced => '모두 전송됨';
  @override
  String get media_tracking_unauthorized =>
      'Bangumi가 액세스 토큰을 거부했습니다. 설정에서 다시 연결하세요.';
  @override
  String get media_tracking_open_subject => 'Bangumi에서 열기';
  @override
  String get media_tracking_manage_links => '연결 관리';
  @override
  String get media_tracking_last_error => '마지막 오류';
  @override
  String get shortcut_action_popup_mine_entry => '카드 만들기 (마이닝)';
  @override
  String get game_upscaling_auto_hint =>
      'Magpie가 이미 실행 중이면 사용하고, 아니면 Fushi에 번들된 버전을 사용합니다. 다운로드가 필요하지 않습니다.';
  @override
  String get game_upscaling_installed_only_hint =>
      'Magpie가 이미 설치되어 있거나 실행 중일 때만 사용합니다. Fushi의 번들 버전은 풀지 않습니다.';
  @override
  String get game_upscaling_off_hint => '게임 창을 업스케일링하지 않습니다.';
  @override
  String get game_helper_bundle_missing =>
      '갈게 훅 헬퍼가 이 빌드에 포함되어 있지 않습니다. Fushi를 업데이트하세요.';
  @override
  String game_upscaling_pick_title({required Object name}) =>
      '${name}의 창 업스케일링';
  @override
  String get game_upscaling_pick_body =>
      '캡처 세션이 실행되는 동안 Magpie로 이 게임 창을 업스케일링합니다. 게임별로 설정되며, 네이티브 해상도가 화면보다 낮은 게임에만 유용합니다. GPU를 사용합니다.';
  @override
  String get game_upscaling_hint_not_installed =>
      'Magpie가 준비되지 않았습니다. 창 업스케일링을 자동으로 설정하여 Fushi에 번들된 사본을 사용하세요. 그래도 시작되지 않으면 Fushi를 업데이트하거나 재설치하세요.';
  @override
  String media_source_count_manga({required Object n}) => '${n}권';
  @override
  String get library_view_shelf => '서재';
  @override
  String get library_view_browse => '발견';
  @override
  String get library_view_media => '라이브러리';
  @override
  String get scrape_failure_detail_show => '세부 정보 보기';
  @override
  String get scrape_failure_detail_hide => '세부 정보 숨기기';
  @override
  String get media_tracking_retry_mapping => '매칭 다시 시도';
  @override
  String get media_tracking_retry_matched => '매칭되어 현재 진행 상황이 대기열에 추가됨';
  @override
  String get media_tracking_retry_no_match =>
      '일치하는 항목을 찾을 수 없습니다. 수동 연결을 시도하세요.';
  @override
  String get game_statistics => '게임 통계';
  @override
  String get game_stat_by_game => '게임별';
  @override
  String get stat_clear_all_game_message =>
      '모든 게임 플레이 시간과 세션 수를 지우시겠습니까? 게임 라이브러리와 활동 타임라인은 유지됩니다. 이 작업은 취소할 수 없습니다.';
  @override
  String batch_selection_stale_skipped({
    required Object n,
    required Object m,
  }) => '선택한 ${n}개 항목 중 더 이상 존재하지 않는 ${m}개를 건너뜀';
  @override
  String get game_text_thread_unset => '스레드가 선택되지 않았습니다 - 캡처를 시작하려면 하나를 선택하세요';
  @override
  String get media_tracking_watched_show => '시청한 모든 애니메이션 보기';
  @override
  String get media_tracking_watched_title => 'Bangumi에서 시청 완료';
  @override
  String get media_tracking_watched_empty =>
      '이 Bangumi 계정에 시청 완료로 표시된 애니메이션이 없습니다.';
  @override
  String media_tracking_watched_load_failed({required Object error}) =>
      '시청한 애니메이션을 불러올 수 없습니다: ${error}';
  @override
  String media_tracking_watched_progress({required Object n}) =>
      '에피소드 ${n}개 시청';
  @override
  String get media_tracking_manual_required => '수동 연결 필요';
  @override
  String media_tracking_manual_required_count({required Object n}) =>
      '${n}개 항목에 수동 연결 필요';
  @override
  String get media_tracking_manual_required_hint =>
      '이 로컬 항목들은 이미 진행 상황이 있지만 Bangumi에 연결되어 있지 않습니다.';
  @override
  String get media_tracking_no_local_history =>
      '연결이 필요한 로컬 시청, 읽기 또는 게임 진행 상황이 없습니다.';
  @override
  String media_tracking_more_manual_required({required Object n}) =>
      '${n}개 더 수동 연결 필요';
  @override
  String get manga_import_hint =>
      '만화 폴더, .cbz/.zip 페이지 아카이브, .pdf 또는 .mokuro 파일을 선택하세요.';
  @override
  String get manga_import_pick_file => '만화 파일 선택';
  @override
  String get manga_import_pick_folder => '만화 폴더 선택';
  @override
  String get manga_import_missing_input => '먼저 만화 파일이나 폴더를 선택하세요.';
  @override
  String get manga_import_detected_title => '만화로 보입니다';
  @override
  String get manga_import_detected_confirm => '만화로 가져오기';
  @override
  String manga_import_detected_message({required Object name}) =>
      '"${name}"은(는) 만화 파일이므로 책 가져오기 대신 만화 가져오기로 처리됩니다.';
  @override
  String get video_jimaku_source_loading => '자막 가용성 확인 중...';
  @override
  String get video_jimaku_source_failed => '자막 가용성을 확인할 수 없습니다. 다시 검색해 보세요.';
  @override
  String get video_jimaku_language_unknown => '언어 미표기';
  @override
  String video_jimaku_source_summary({
    required Object files,
    required Object episodes,
    required Object languages,
  }) => '자막 파일 ${files}개 · 에피소드 ${episodes}개 · ${languages}';
  @override
  String video_jimaku_episode_unlabeled({
    required Object episode,
    required Object count,
  }) => '에피소드 ${episode}으로 표시된 자막이 없습니다. 라벨 없는 파일 ${count}개가 일치할 수 있습니다';
  @override
  String video_jimaku_episode_unavailable({required Object episode}) =>
      '에피소드 ${episode}에 대한 자막을 찾을 수 없습니다';
  @override
  String video_jimaku_episode_available({
    required Object count,
    required Object languages,
  }) => '자막 ${count}개 사용 가능 · ${languages}';
  @override
  String get manga_online_source_disabled =>
      '이 인터넷 소스는 비활성화되어 있습니다. 카탈로그를 찾아보려면 소스에서 활성화하세요.';
  @override
  String get selection_web_search => '웹 검색';
  @override
  String get selection_web_search_unavailable => '웹을 검색할 수 있는 앱이 없습니다.';
  @override
  String get selection_share_failed => '공유 시트를 열 수 없습니다.';
  @override
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang} (자동 생성)';
  @override
  String get anki_dedup_progress_title => '미디어 중복 제거 중';
  @override
  String anki_dedup_progress_scanning({required Object count}) =>
      '미디어 폴더 검색 중... (파일 ${count}개 발견)';
  @override
  String anki_dedup_progress_hashing({
    required Object done,
    required Object total,
  }) => '같은 크기의 파일 비교 중... (${done} / ${total})';
  @override
  String anki_dedup_progress_resolving({
    required Object done,
    required Object total,
  }) => '중복 처리 중... (${done} / ${total})';
  @override
  String anki_dedup_progress_freed({required Object size}) => '지금까지 ${size} 확보';
  @override
  String get anki_dedup_cancelling => '취소 중...';
  @override
  String get anki_dedup_cancelled => '중복 제거가 취소되었습니다. 완료된 변경 사항은 유지됩니다.';
  @override
  String get anki_dedup_report_cancelled_note =>
      '조기에 취소됨 - 아래 수치는 완료된 부분만 포함합니다.';
  @override
  String get anki_dedup_plan_busy_note =>
      '실행 중에 Anki가 응답하지 않을 수 있습니다. 완료될 때까지 Anki 사용을 피하세요.';
  @override
  String get video_setting_subtitle_position_secondary => '보조 자막 위치';
  @override
  String get dict_download_learning_language => '학습 언어';
  @override
  String get dict_category_bilingual => '이중 언어';
  @override
  String get dict_category_monolingual => '단일 언어';
  @override
  String get shortcut_action_video_hold_speed => '길게 눌러 임시 속도 변경';
  @override
  String get handlebar_phonetic_transcriptions => '발음 표기';
  @override
  String get sync_progress_preparing => '동기화 준비 중';
  @override
  String get sync_progress_collections => '컬렉션 동기화 중';
  @override
  String get sync_progress_book => '책 동기화 중';
  @override
  String sync_progress_book_titled({required Object title}) => '${title} 동기화 중';
  @override
  String sync_last_completed({required Object count}) =>
      '마지막 동기화: 완료 (채널 ${count}개)';
  @override
  String get sync_last_no_channels => '마지막 동기화: 동기화 안 됨 - 연결된 동기화 채널 없음';
  @override
  String get sync_last_nothing => '마지막 동기화: 동기화할 항목 없음';
  @override
  String get sync_last_auto_disabled => '마지막 동기화: 건너뜀 - 자동 동기화 꺼짐';
  @override
  String get sync_last_cooled_down => '마지막 동기화: 건너뜀 - 최근에 동기화됨';
  @override
  String get sync_last_failed => '마지막 동기화: 실패';
  @override
  String anime_download_no_results_detail({
    required Object query,
    required Object filters,
  }) =>
      '서비스가 정상 응답했지만 0개의 항목을 반환했습니다. 쿼리: ${query}; 필터: ${filters}. 다른 제목을 시도하거나 필터를 완화하세요.';
  @override
  String get anime_download_streaming_ready => '라이브러리에 있음 · 다운로드 계속 중';
  @override
  String get anime_download_unfiltered => '신뢰 필터 없음';
  @override
  String get interconnect_enable_footer =>
      '사용 방법: 라이브러리가 있는 기기에서 아래 동기화 서버 스위치를 켜세요. 다른 기기에서 해당 서버 주소를 추가하여 페어링하세요. 기기는 한 번에 하나의 역할만 할 수 있습니다 - 서버 또는 클라이언트.';
  @override
  String get interconnect_peer_list_title => '추가된 피어';
  @override
  String get interconnect_peer_list_empty =>
      '아직 추가된 피어가 없습니다. 아래 LAN 장치 목록에서 발견된 장치를 선택하여 자동으로 페어링하거나, 피어 주소를 수동으로 추가하세요.';
  @override
  String get anki_lapis_visual_editor => '비주얼 편집기';
  @override
  String get anki_lapis_visual_editor_hint =>
      'Lapis 카드를 미리 보고 CSS를 작성하지 않고도 각 영역의 스타일, 위치, 필드 매핑을 변경하세요.';
  @override
  String get anki_lapis_visual_front => '앞면';
  @override
  String get anki_lapis_visual_back => '뒷면';
  @override
  String get anki_lapis_visual_preview => 'Lapis 카드 미리보기';
  @override
  String get anki_lapis_visual_select_field => '편집할 항목 선택';
  @override
  String get anki_lapis_visual_reset_field => '필드 초기화';
  @override
  String anki_lapis_visual_font_size({required Object percent}) =>
      '글꼴 크기: ${percent}%';
  @override
  String get anki_lapis_visual_bold => '굵게';
  @override
  String get anki_lapis_visual_alignment => '정렬';
  @override
  String get anki_lapis_visual_color => '텍스트 색상';
  @override
  String get anki_lapis_visual_default => '기본값';
  @override
  String get anki_lapis_visual_advanced_css => '고급 CSS';
  @override
  String get anki_lapis_visual_field_expression => '단어';
  @override
  String get anki_lapis_visual_field_reading => '읽기';
  @override
  String get anki_lapis_visual_field_sentence => '문장';
  @override
  String get anki_lapis_visual_field_primary_definition => '기본 뜻';
  @override
  String get anki_lapis_visual_field_glossaries => '기타 뜻';
  @override
  String get anki_lapis_visual_target_card_content => '카드 내용';
  @override
  String get anki_lapis_visual_target_definition => '뜻풀이';
  @override
  String get anki_lapis_visual_target_inside_definition => '뜻풀이 내부';
  @override
  String get anki_lapis_visual_field_definition_info => '뜻풀이 표시기';
  @override
  String get anki_lapis_visual_field_definition_box => '뜻풀이 상자';
  @override
  String get anki_lapis_visual_field_definition_content => '전체 뜻풀이';
  @override
  String get anki_lapis_visual_field_selected_definition => '선택된 뜻풀이';
  @override
  String get anki_lapis_visual_field_dictionary_entry => '사전 항목';
  @override
  String get anki_lapis_visual_field_dictionary_name => '사전 이름';
  @override
  String get anki_lapis_visual_field_definition_example => '정의 예시';
  @override
  String get anki_lapis_visual_line_height => '줄 높이';
  @override
  String get anki_lapis_visual_background_color => '배경 강조';
  @override
  String get anki_lapis_visual_box_layout => '박스 외형';
  @override
  String get anki_lapis_visual_border_width => '테두리';
  @override
  String get anki_lapis_visual_border_color => '테두리 색상';
  @override
  String get anki_lapis_visual_corner_radius => '모서리 둥글기';
  @override
  String get anki_lapis_visual_padding => '안쪽 여백';
  @override
  String get anki_lapis_visual_margin => '바깥 여백';
  @override
  String get anki_lapis_visual_field_definition_info_note =>
      '정의 블록이 두 개 이상인 카드에서만 표시됩니다. 정의가 하나인 카드에서는 숨겨집니다.';
  @override
  String get anki_lapis_visual_field_dictionary_name_note =>
      'Fushi 카드에서는 이 라벨에 품사 태그도 함께 표시되므로 둘을 별도로 스타일링할 수 없습니다.';
  @override
  String get game_upscaling_error_bundle_missing =>
      'Fushi 설치가 불완전합니다: 번들된 Magpie 구성 요소가 없습니다. Fushi를 재설치하거나 업데이트하세요.';
  @override
  String get game_upscaling_error_bundle_invalid =>
      '번들된 Magpie 구성 요소가 손상되었거나 검증을 통과하지 못했습니다. Fushi를 재설치하거나 업데이트하세요.';
  @override
  String download_test_connection_failed_reason({required Object message}) =>
      '연결 실패: ${message}';
  @override
  String get delete_disclosure_will_delete_label => '삭제됨';
  @override
  String get delete_disclosure_will_keep_label => '유지됨';
  @override
  String get delete_disclosure_book_records => '읽기 진행률, 북마크, 태그 및 자막 데이터';
  @override
  String get delete_disclosure_book_extracted => 'Fushi가 자체 저장소에 추출한 도서 파일';
  @override
  String get delete_disclosure_book_audiobook =>
      '첨부된 오디오북의 오디오 및 정렬된 자막 (있는 경우)';
  @override
  String get delete_disclosure_source_kept => '가져온 원본 파일 (도서, 자막, 오디오)';
  @override
  String get delete_disclosure_stats_kept => '읽기 통계';
  @override
  String get delete_disclosure_audiobook_files =>
      'Fushi가 자체 저장소에 복사한 오디오 및 정렬된 자막';
  @override
  String get delete_disclosure_audiobook_book_kept => '도서 자체 및 읽기 진행률';
  @override
  String get delete_disclosure_audiobook_source_kept => '가져온 원본 오디오 파일';
  @override
  String get audiobook_delete => '오디오북 삭제';
  @override
  String get audiobook_delete_confirm =>
      '첨부된 오디오북을 삭제하시겠습니까? 이 기기에서 오디오 파일이 제거됩니다.';
  @override
  String get delete_collection_confirm => '그룹만 제거됩니다. 포함된 항목은 유지됩니다.';
  @override
  String get shortcut_action_video_enter_caret => '자막 조회 커서 진입';
  @override
  String get audiobook_export_clip_too_long => '선택한 오디오가 내보내기에 너무 깁니다 (제한: 5분)';
  @override
  String get sync_err_forbidden =>
      '서버가 이 요청을 거부했습니다. 로그인은 정상입니다 - 서버 설정을 확인하세요.';
  @override
  String sync_err_forbidden_detail({required Object reason}) =>
      '서버가 이 요청을 거부했습니다: ${reason} (로그인은 정상)';
  @override
  String get collection_group_extras => '엑스트라 & PV';
  @override
  String collection_group_season({required Object n}) => '시즌 ${n}';
  @override
  String get collection_sort_by_season => '시즌별 정렬';
  @override
  String get mining_animated_format_avif => 'AVIF (가장 작음)';
  @override
  String get mining_animated_format_webp => 'WebP (호환성 양호)';
  @override
  String get mining_animated_format_gif => 'GIF (가장 호환)';
  @override
  String get video_mining_animated_format => '동영상 카드 애니메이션 형식';
  @override
  String get video_mining_animated_format_hint =>
      'AVIF는 같은 품질에서 GIF보다 훨씬 작으며, 최고 품질 단계에서는 GIF나 WebP보다 높은 해상도와 프레임 속도를 지원합니다. 번들된 인코더가 생성할 수 없는 경우 자동으로 GIF로 대체됩니다.';
  @override
  String get gal_mining_animated_format => '게임 카드 애니메이션 형식';
  @override
  String get gal_mining_animated_format_hint =>
      '동영상 카드와 같은 형식이며 별도로 저장됩니다: 비주얼 노벨 프레임은 한 줄 내에서 거의 움직이지 않으므로 장단점이 다릅니다.';
  @override
  String get scrape_all => '전체 스크래핑';
  @override
  String scrape_all_title({required Object kind}) => '모든 ${kind} 스크래핑';
  @override
  String scrape_all_running({required Object current, required Object total}) =>
      '스크래핑 중 ${current} / ${total}';
  @override
  String scrape_all_item({required Object title}) => '처리 중: ${title}';
  @override
  String scrape_all_done({
    required Object applied,
    required Object review,
    required Object skipped,
    required Object failed,
  }) => '완료: ${applied} 적용, ${review} 검토 필요, ${skipped} 건너뜀, ${failed} 실패';
  @override
  String get scrape_all_empty => '이 라이브러리에 스크래핑할 항목이 없습니다.';
  @override
  String get scrape_all_start => '시작';
  @override
  String collection_hero_total_episodes({required Object count}) =>
      '${count} 에피소드';
  @override
  String get video_scrape_collection_rename_title => '이 컬렉션의 이름을 변경하시겠습니까?';
  @override
  String get video_scrape_collection_rename_body =>
      '매칭된 항목의 이름이 다릅니다. 이름 변경은 선택 사항입니다: 커버와 상세 정보는 어느 쪽이든 저장되며, 이름을 변경하면 동기화된 다른 기기에서도 기존 이름이 교체됩니다.';
  @override
  String video_scrape_collection_rename_from({required Object name}) =>
      '현재 이름: ${name}';
  @override
  String video_scrape_collection_rename_to({required Object name}) =>
      '새 이름: ${name}';
  @override
  String get video_scrape_collection_rename_keep => '현재 이름 유지';
  @override
  String get download_task_toggle_failed => '일시정지/재개 실패';
  @override
  String get download_task_eta => '남은 시간';
  @override
  String get download_task_ratio => '비율';
  @override
  String get download_task_status_downloading => '다운로드 중';
  @override
  String get download_task_status_seeding => '시딩 중';
  @override
  String get download_task_status_completed => '완료';
  @override
  String get download_task_status_paused => '일시정지';
  @override
  String get download_task_status_queued => '대기 중';
  @override
  String get download_task_status_stalled => '정체됨';
  @override
  String get download_task_status_checking => '확인 중';
  @override
  String get download_task_status_metadata => '메타데이터 가져오는 중';
  @override
  String get download_task_status_moving => '이동 중';
  @override
  String get download_task_status_error => '오류';
  @override
  String get download_task_pause => '일시정지';
  @override
  String get download_task_resume => '재개';
  @override
  String get download_airing_calendar_title => '방영 일정';
  @override
  String get download_airing_calendar_show_all => '이번 시즌 모두 보기';
  @override
  String get download_airing_calendar_empty_guidance =>
      '아직 표시할 항목이 없습니다: 컬렉션을 AniList에 연결하거나 다운로드 구독을 추가하면 방영 시간이 여기에 표시됩니다.';
  @override
  String get download_airing_calendar_error => '방영 일정을 불러오지 못했습니다';
  @override
  String get download_airing_calendar_in_library => '라이브러리에 있음';
  @override
  String get download_airing_calendar_subscribed => '구독 중';
  @override
  String download_airing_calendar_episode_label({required Object episode}) =>
      '${episode}화';
  @override
  String get download_airing_calendar_week_prev => '이전 주';
  @override
  String get download_airing_calendar_week_next => '다음 주';
  @override
  String get download_airing_calendar_week_empty => '이번 주 방영 없음';
  @override
  String get video_jimaku_format => '형식';
  @override
  String get video_jimaku_format_all => '전체';
  @override
  String get video_setting_tmdb_key => '사용자 지정 TMDB API 키';
  @override
  String get video_setting_tmdb_key_hint =>
      '선택 사항입니다. 비워두면 내장 키를 사용합니다. 스크래핑이 작동하지 않거나 자체 할당량을 사용하려는 경우에만 입력하세요.';
  @override
  String get about_tmdb_attribution =>
      '이 애플리케이션은 TMDB 및 TMDB API를 사용하지만, TMDB가 보증, 인증 또는 승인하지 않습니다.';
  @override
  String get anki_lapis_visual_layout => '레이아웃';
  @override
  String get anki_lapis_visual_layout_hint =>
      'Lapis 자체 레이아웃 스위치를 사용하므로 데스크톱과 모바일 Anki 모두 이를 따릅니다.';
  @override
  String get anki_lapis_visual_layout_sentence => '문장 위치';
  @override
  String get anki_lapis_visual_layout_sentence_above => '정의 위';
  @override
  String get anki_lapis_visual_layout_sentence_below => '정의 아래';
  @override
  String get anki_lapis_visual_layout_picture => '이미지 위치';
  @override
  String get anki_lapis_visual_layout_picture_right => '단어 오른쪽';
  @override
  String get anki_lapis_visual_layout_picture_left => '단어 왼쪽';
  @override
  String get anki_lapis_visual_layout_picture_alt => '문장 내부';
  @override
  String get anki_lapis_visual_layout_audio => '오디오 버튼';
  @override
  String get anki_lapis_visual_layout_audio_header => '읽기 옆';
  @override
  String get anki_lapis_visual_layout_audio_fixed => '하단에 고정';
  @override
  String get anki_lapis_visual_layout_audio_alt => '문장 내부';
  @override
  String get anki_lapis_visual_mapping_hint =>
      '선택한 영역을 채우는 Anki 필드입니다. 변경 사항은 스타일과 함께 저장됩니다.';
  @override
  String get anki_lapis_visual_mapping_none =>
      '이 영역은 템플릿 자체에서 그려지며 고유 필드가 없습니다.';
  @override
  String get anki_lapis_visual_color_custom => '사용자 지정';
  @override
  String get anki_lapis_visual_color_picker_title => '색상 선택';
  @override
  String get video_scrape_tmdb_key_hint => 'TMDB API 키 입력';
  @override
  String get video_scrape_tmdb_key_required => 'TMDB에는 API 키가 필요합니다';
  @override
  String get video_scrape_tmdb_key_save => '저장';
  @override
  String get video_scrape_tmdb_key_empty =>
      'TMDB API 키를 저장한 후 검색을 누르세요. 다른 소스의 결과는 여기에 표시되지 않습니다.';
  @override
  String get download_detail_tab_overview => '개요';
  @override
  String get download_detail_tab_files => '파일';
  @override
  String get download_detail_tab_peers => '피어';
  @override
  String get download_detail_tab_trackers => '트래커';
  @override
  String get download_detail_backend_unsupported => '현재 다운로드 백엔드에서 지원하지 않음';
  @override
  String get download_detail_task_gone => '백엔드에서 작업을 찾을 수 없음';
  @override
  String get download_detail_task_missing =>
      '원래 다운로드 백엔드는 온라인이지만 이 토렌트가 더 이상 존재하지 않습니다. 실시간 피어와 트래커는 복구할 수 없으며, 저장된 작업 정보가 표시됩니다.';
  @override
  String get download_detail_section_transfer => '전송';
  @override
  String get download_detail_section_network => '네트워크';
  @override
  String get download_detail_section_task => '작업';
  @override
  String get download_detail_seeds_label => '시드';
  @override
  String get download_detail_leechers_label => '리처';
  @override
  String get download_detail_connections_label => '연결';
  @override
  String get download_detail_content_path_label => '콘텐츠 경로';
  @override
  String get download_detail_time_active => '활성 시간';
  @override
  String get download_detail_time_seeding => '시딩 시간';
  @override
  String get download_detail_total_size_label => '전체 크기';
  @override
  String get download_detail_listen_port => '수신 포트';
  @override
  String get download_detail_dht_nodes => 'DHT 노드';
  @override
  String get download_detail_hash_label => '정보 해시';
  @override
  String get download_detail_port_mapping => '포트 매핑';
  @override
  String get download_detail_session_rates => '세션 속도';
  @override
  String get download_detail_pieces_label => '조각';
  @override
  String get download_detail_priority_skip => '다운로드 안 함';
  @override
  String get download_detail_raw_state_label => '백엔드 상태';
  @override
  String get download_detail_remaining_label => '남은 양';
  @override
  String get download_detail_save_path_label => '저장 경로';
  @override
  String get download_detail_priority_normal => '보통';
  @override
  String get download_detail_priority_high => '높음';
  @override
  String get download_detail_tracker_working => '작동 중';
  @override
  String get download_detail_tracker_updating => '업데이트 중';
  @override
  String get download_detail_tracker_not_contacted => '아직 연결하지 않음';
  @override
  String get download_detail_tracker_not_working => '작동하지 않음';
  @override
  String get download_detail_tracker_disabled => '비활성화됨';
  @override
  String get download_detail_no_peers => '연결된 피어 없음';
  @override
  String get download_detail_no_trackers => '트래커 없음';
  @override
  String get video_filter_year => '연도';
  @override
  String get video_filter_year_unknown => '연도 미상';
  @override
  String get video_filter_watch_status => '시청 상태';
  @override
  String get video_filter_watch_status_unwatched => '미시청';
  @override
  String get video_filter_watch_status_watching => '시청 중';
  @override
  String get video_filter_watch_status_completed => '시청 완료';
  @override
  String get video_hero_detail_view => '상세 정보';
  @override
  String video_hero_episodes_watched({required Object n}) => '${n}화 시청';
  @override
  String get video_recently_added_badge => 'NEW';
  @override
  String get video_air_season_winter => '겨울';
  @override
  String get video_air_season_spring => '봄';
  @override
  String get video_air_season_summer => '여름';
  @override
  String get video_air_season_autumn => '가을';
  @override
  String get delete_scope_no_channel => '동기화가 설정되지 않았습니다 - 이 삭제는 이 기기에만 적용됩니다';
  @override
  String get mihon_sources_title => '만화 소스';
  @override
  String get mihon_extensions_title => '만화 확장 프로그램';
  @override
  String get mihon_store_add => '확장 프로그램 스토어 추가';
  @override
  String get mihon_store_url => '확장 프로그램 스토어 URL';
  @override
  String get mihon_store_empty =>
      '확장 프로그램 스토어가 없습니다. 호환되는 Mihon 스토어를 추가하거나 로컬 APK를 가져오세요.';
  @override
  String get mihon_extension_import => '로컬 APK 가져오기';
  @override
  String get mihon_extension_warning =>
      '서드파티 확장 프로그램은 Fushi 권한으로 코드를 실행합니다. 신뢰할 수 있는 확장 프로그램과 서명자만 설치하세요.';
  @override
  String get mihon_extension_install => '설치';
  @override
  String get mihon_extension_update => '업데이트';
  @override
  String get mihon_extension_uninstall => '제거';
  @override
  String get mihon_extension_installed => '설치됨';
  @override
  String get mihon_extension_disabled => '비활성화됨';
  @override
  String get mihon_source_empty => '활성화된 만화 소스가 없습니다. 먼저 확장 프로그램을 설치하고 활성화하세요.';
  @override
  String get mihon_source_popular => '인기';
  @override
  String get mihon_source_latest => '최신';
  @override
  String get mihon_source_search => '만화 검색';
  @override
  String get mihon_source_preferences => '소스 환경설정';
  @override
  String get mihon_source_clear_data => '소스 데이터 삭제';
  @override
  String get mihon_source_clear_data_hint =>
      '이 소스의 환경설정과 쿠키를 삭제합니다. 설치된 확장 프로그램은 유지됩니다.';
  @override
  String get mihon_signer_trust_title => '확장 프로그램 서명자를 신뢰하시겠습니까?';
  @override
  String get mihon_signer_fingerprint => '서명자 SHA-256';
  @override
  String get mihon_runtime_unavailable => '이 플랫폼에서는 Mihon 확장 프로그램을 사용할 수 없습니다.';
  @override
  String get mihon_extension_incompatible => '호환되지 않는 확장 프로그램';
  @override
  String get mihon_store_refresh => '스토어 새로고침';
  @override
  String get mihon_source_browse_mokuro => '내장 Mokuro 카탈로그';
  @override
  String get mihon_source_no_results => '만화를 찾을 수 없습니다.';
  @override
  String get mihon_chapters_title => '챕터';
  @override
  String get mihon_extension_language_filter => '언어';
  @override
  String get mihon_extension_language_all => '모든 언어';
  @override
  String get mihon_filter_ignore => '무시';
  @override
  String get mihon_filter_include => '포함';
  @override
  String get mihon_filter_exclude => '제외';
  @override
  String get mihon_filter_ascending => '오름차순';
  @override
  String get mihon_filter_descending => '내림차순';
  @override
  String get mihon_add_to_bookshelf => '만화 서재에 추가';
  @override
  String get mihon_in_bookshelf => '만화 서재에 있음';
  @override
  String scrape_all_confirm({required Object n}) =>
      '모든 ${n}개 라이브러리 항목을 제목으로 매칭합니다. 높은 신뢰도의 매칭만 자동으로 적용됩니다 — 동영상은 제목과 연도, 유형 및 기타 신호를 함께 평가하고, 도서와 게임은 고유한 정확한 제목이 필요합니다. 직접 선택한 커버는 절대 덮어쓰지 않으며 (설정한 로컬 이미지, 매칭 대화 상자에서 선택한 항목, 폴더에 배치한 포스터 파일), 모호한 결과는 수동 검토를 위해 보류됩니다.';
  @override
  String get collection_related_title => '관련 작품';
  @override
  String get collection_relation_prequel => '전편';
  @override
  String get collection_relation_sequel => '후편';
  @override
  String get collection_relation_side_story => '외전';
  @override
  String get collection_relation_movie => '극장판';
  @override
  String get collection_relation_spin_off => '스핀오프';
  @override
  String get collection_relation_other => '관련';
  @override
  String get collection_relation_download => '다운로드';
  @override
  String get collection_relation_bind => '기존 컬렉션에 연결';
  @override
  String get collection_episode_rename => '스크래핑에서 에피소드 이름 변경';
  @override
  String get collection_episode_rename_title => '에피소드 이름 변경';
  @override
  String get collection_episode_rename_empty => '이름을 변경할 항목 없음';
  @override
  String get collection_episode_download => '이 에피소드 다운로드';
  @override
  String get collection_episode_fill_missing => '누락 에피소드 채우기';
  @override
  String get collection_episode_no_missing => '누락 에피소드 없음';
  @override
  String get collection_split_by_season => '시즌별로 분리';
  @override
  String get collection_split_keep_original => '원본 컬렉션 유지';
  @override
  String get collection_split_confirm => '분리';
  @override
  String collection_relation_bound({required Object name}) => '${name}에 연결됨';
  @override
  String collection_episode_rename_apply({required Object n}) =>
      '${n}개 에피소드 이름 변경';
  @override
  String collection_split_done({required Object n}) => '${n}개 컬렉션으로 분리됨';
  @override
  String collection_episode_watched_at({required Object position}) =>
      '${position}까지 시청함';
  @override
  String collection_episode_rename_partial({
    required Object n,
    required Object m,
  }) => '${n}개 에피소드 이름 변경됨, ${m}개 실패';
  @override
  String get sync_err_browser_timeout =>
      '브라우저에서 인증을 반환하지 않았습니다. 다시 시도하고 프록시가 127.0.0.1을 통과시키는지 확인하세요.';
  @override
  String get manga_rescan_running => '선택한 박스를 인식하는 중...';
  @override
  String get manga_rescan_empty => '이 박스에서 텍스트를 인식하지 못했습니다.';
  @override
  String get stat_hourly_band_epub => '텍스트 도서';
  @override
  String get stat_hourly_band_pdf => 'PDF';
  @override
  String get stat_hourly_band_manga => '만화';
  @override
  String get stat_hourly_band_unattributed => '분류 안 된 기록';
  @override
  String get stat_hourly_unattributed_note =>
      '형식별 추적이 도입되기 전에 기록된 시간은 유형이 저장되지 않아 분류할 수 없습니다. 합산 총계로 표시되며 어떤 유형에도 할당되지 않습니다.';
  @override
  String get book_convert_to_manga_action => '만화로 변환';
  @override
  String get book_convert_to_book_action => '도서로 되돌리기';
  @override
  String get book_convert_running => '변환 중…';
  @override
  String get book_convert_done => '변환 완료';
  @override
  String get book_convert_failed => '변환 실패';
  @override
  String get book_convert_blocked_already => '이 도서는 이미 해당 형식입니다.';
  @override
  String get book_convert_blocked_text_only =>
      '이것은 페이지 이미지가 없는 텍스트 도서입니다. 스캔된 이미지 도서만 만화로 변환할 수 있습니다.';
  @override
  String get book_convert_blocked_no_original =>
      '이 만화는 이미지에서 가져온 것이므로 되돌릴 원본 도서가 없습니다.';
  @override
  String get book_convert_blocked_source_missing => '원본 파일이 디스크에서 사라졌습니다.';
  @override
  String manga_online_retry_waiting({
    required Object attempt,
    required Object total,
  }) => '자동 재시도 중 (${attempt}/${total})';
  @override
  String get manga_ocr_wizard_already_ocred =>
      '이 권에는 이미 모든 페이지에 OCR 데이터가 있습니다. OCR을 다시 실행하면 덮어쓰게 됩니다.';
  @override
  String get shortcut_scope_universal => '뒤로 / 나가기';
  @override
  String get game_attach_and_capture => '연결 및 캡처';
  @override
  String get remote_delete_failed => '페어링된 기기에서 삭제할 수 없습니다';
  @override
  String get remote_delete_unsupported =>
      '페어링된 기기가 원격 삭제를 지원하기에 너무 오래된 버전입니다. 먼저 해당 기기의 Fushi를 업데이트하세요.';
  @override
  String get anki_lapis_visual_blocks => '사용자 지정 영역';
  @override
  String get anki_lapis_visual_blocks_hint =>
      '기존 필드를 카드의 다른 위치에 표시합니다. 표시 전용: Anki 필드가 추가되거나 삭제되지 않습니다.';
  @override
  String get anki_lapis_visual_block_add => '영역 추가';
  @override
  String get anki_lapis_visual_block_delete => '영역 삭제';
  @override
  String anki_lapis_visual_block_name({required Object index}) => '영역 ${index}';
  @override
  String get anki_lapis_visual_block_anchor => '카드 위치';
  @override
  String get anki_lapis_visual_block_anchor_top => '카드 상단';
  @override
  String get anki_lapis_visual_block_anchor_above_sentence => '단어 아래';
  @override
  String get anki_lapis_visual_block_anchor_above_definition => '문장 아래';
  @override
  String get anki_lapis_visual_block_anchor_below_definition => '정의 아래';
  @override
  String get anki_lapis_visual_block_anchor_bottom => '카드 하단';
  @override
  String get anki_lapis_visual_block_fields => '여기에 표시되는 필드';
  @override
  String get anki_lapis_visual_block_no_fields => '아직 선택된 필드 없음';
  @override
  String get anki_lapis_visual_block_needs_note_type =>
      '필드를 선택하려면 먼저 노트 유형을 선택하세요.';
  @override
  String get anki_lapis_restore_factory => 'Lapis 초기화';
  @override
  String get anki_lapis_restore_factory_hint =>
      'Anki의 Lapis 노트 유형을 Fushi에 번들된 버전으로 덮어쓰고 모든 사용자 지정을 초기화합니다.';
  @override
  String get anki_lapis_restore_factory_confirm =>
      'Anki의 Lapis 스타일과 카드 템플릿을 Fushi의 번들 버전으로 덮어쓰고, 글꼴 크기, 사용자 지정 CSS 및 사용자 지정 영역을 초기화합니다. 현재 상태의 백업이 먼저 저장됩니다. 카드 데이터는 영향을 받지 않습니다.';
  @override
  String get anki_lapis_restore_factory_done => 'Lapis가 초기 설정으로 복원됨';
  @override
  String anki_lapis_restore_factory_failed({required Object error}) =>
      '복원 실패: ${error}';
  @override
  String get anki_lapis_visual_select_field_hint =>
      '미리보기의 아무 부분을 클릭하거나 아래에서 선택하세요. 선택한 항목이 아래 컨트롤의 편집 대상입니다.';
  @override
  String get anki_lapis_visual_editing_now => '편집 중';
  @override
  String get mihon_extension_preview => '미리보기';
  @override
  String get mihon_extension_preview_warning =>
      '미리보기는 설치 전에 이 확장 프로그램의 코드를 실행합니다. 설치를 선택할 때까지 라이브러리에 추가되지 않습니다.';
  @override
  String get mihon_extension_preview_discard => '버리기';
  @override
  String get mihon_extension_preview_source_select => '미리볼 소스 선택';
  @override
  String get mihon_extension_sources_included => '포함된 소스';
  @override
  String get mihon_extension_preview_read_only =>
      '미리보기는 읽기 전용입니다. 열어서 읽으려면 확장 프로그램을 설치하세요.';
  @override
  String get selection_copy_empty => '선택된 텍스트가 없습니다.';
  @override
  String get video_library_empty_source_hint =>
      '소스에서 동영상 폴더를 추가하여 라이브러리를 구축하세요';
  @override
  String get video_source_scrape_action => '이 소스 스크래핑';
  @override
  String get video_source_scrape_settings => '소스 스크래핑 설정';
  @override
  String get video_source_scrape_auto_after_scan => '스캔 후 스크래핑';
  @override
  String get video_source_scrape_auto_after_scan_hint =>
      '이 소스가 스캔된 후 메타데이터 스크래핑을 자동으로 실행';
  @override
  String get video_source_scrape_write_nfo => 'NFO 파일 쓰기';
  @override
  String get video_source_scrape_write_images => '이미지 파일 쓰기';
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
  }) => '마지막 스크래핑 (${status}): ${succeeded} 성공, ${pending} 보류, ${failed} 실패';
  @override
  String get video_source_scrape_phase_planning => '계획 중';
  @override
  String get video_source_scrape_phase_recognizing => '매칭 중';
  @override
  String get video_source_scrape_phase_fetching => '메타데이터 가져오는 중';
  @override
  String get video_source_scrape_phase_applying => '메타데이터 저장 중';
  @override
  String get video_source_scrape_phase_writing_sidecars => '사이드카 파일 쓰는 중';
  @override
  String get video_source_scrape_status_interrupted => '중단됨';
  @override
  String get video_source_scrape_locale => '메타데이터 언어';
  @override
  String get video_source_scrape_locale_hint => '제목, 요약 및 이미지에 선호하는 언어';
  @override
  String get video_source_scrape_confirmation_title => '메타데이터 매칭 확인';
  @override
  String get video_source_scrape_confirmation_hint =>
      '여러 정확한 매칭이 발견되었습니다. 올바른 작품을 선택하여 프로바이더 바인딩을 저장하세요.';
  @override
  String get video_source_scrape_confirmation_skip => '이 작품 건너뛰기';
  @override
  String get video_source_scrape_nfo_policy => 'NFO 쓰기 정책';
  @override
  String get video_source_scrape_image_policy => '이미지 쓰기 정책';
  @override
  String get video_source_scrape_policy_skip => '쓰지 않음';
  @override
  String get video_source_scrape_policy_missing_only => '없는 경우에만';
  @override
  String get video_source_scrape_policy_overwrite => 'Fushi 파일 업데이트';
  @override
  String get video_source_scrape_external_overwrite => '보호된 사이드카 덮어쓰기 허용';
  @override
  String get video_source_scrape_external_overwrite_hint =>
      '서드파티 또는 사용자가 수정한 파일은 수동 스크래핑 배치를 다시 확인할 때까지 보호 상태를 유지합니다.';
  @override
  String get video_source_scrape_external_overwrite_confirm_title =>
      '보호된 사이드카를 덮어쓰시겠습니까?';
  @override
  String get video_source_scrape_external_overwrite_confirm_body =>
      '이 배치는 서드파티 NFO/이미지 또는 편집한 Fushi 파일을 교체할 수 있습니다. 미디어 파일은 변경되지 않습니다. 계속하시겠습니까?';
  @override
  String get video_source_scrape_tasks_open => '백그라운드 작업';
  @override
  String get video_source_scrape_background_started => '스크래핑이 백그라운드에서 실행 중입니다';
  @override
  String get video_source_scrape_tasks_current => '현재 작업';
  @override
  String get video_source_scrape_tasks_history => '최근 작업';
  @override
  String get video_source_scrape_tasks_empty => '아직 스크래핑 작업이 없습니다';
  @override
  String get video_source_scrape_waiting_confirmation => '확인을 기다리는 중';
  @override
  String get video_source_scrape_phase_scanning => '소스 스캔 중';
  @override
  String get video_library_all_videos => '모든 동영상';
  @override
  String get video_work_voice_roles => '성우 및 캐릭터';
  @override
  String get video_work_cast_crew => '출연진 및 제작진';
  @override
  String get video_work_trailers => '예고편';
  @override
  String get video_work_extras => '부가 영상';
  @override
  String get video_work_details => '상세 정보';
  @override
  String get video_work_external_ids => '외부 ID';
  @override
  String get video_work_metadata_pending =>
      '상세 메타데이터가 아직 스크래핑되지 않았습니다. 소스에서 이 소스를 다시 시도한 후 작품을 다시 여세요.';
  @override
  String get video_work_genres => '장르';
  @override
  String get video_work_keywords => '키워드';
  @override
  String get video_work_studios => '스튜디오';
  @override
  String get video_work_countries => '국가';
  @override
  String get video_work_content_rating => '등급';
  @override
  String get video_all_videos_list_view => '목록 보기';
  @override
  String get video_all_videos_grid_view => '그리드 보기';
  @override
  String video_home_continue_episode_number({required Object n}) =>
      '${n}화 재생 중';
  @override
  String video_home_next_episode_number({required Object n}) => '다음 · ${n}화';
  @override
  String video_home_recent_episode_number({required Object n}) =>
      '최근 추가 · ${n}화';
  @override
  String video_home_remaining_minutes({required Object minutes}) =>
      '남은 시간 ${minutes}분';
  @override
  String get video_subtitle_replay => '이 자막 다시 재생';
  @override
  String get manga_ocr_done => 'OCR 완료';
  @override
  String get settings_destination_manga_summary => '리더, OCR 및 온라인 카탈로그';
  @override
  String get manga_page_animation => '페이지 넘김 애니메이션';
  @override
  String get manga_page_animation_none => '없음';
  @override
  String get manga_page_animation_slide => '슬라이드';
  @override
  String get manga_page_animation_fade => '페이드';
  @override
  String get manga_default_zoom => '기본 확대/축소';
  @override
  String get manga_zoom_sensitivity => '확대/축소 감도';
  @override
  String get manga_volume_key_paging => '볼륨 키로 페이지 넘기기';
  @override
  String get manga_volume_key_paging_subtitle => '만화 리더에서 볼륨 업/다운 키로 페이지를 넘깁니다';
  @override
  String get manga_tap_zone_paging => '가장자리 탭으로 페이지 넘기기';
  @override
  String get manga_tap_zone_paging_subtitle => '페이지 왼쪽 또는 오른쪽 가장자리를 탭하여 넘깁니다';
  @override
  String get manga_section_viewing => '보기 및 페이지 넘기기';
  @override
  String get game_capture_setup_title => '캡처 설정 완료';
  @override
  String get game_capture_setup_hint =>
      '먼저 대화 스레드를 선택하세요. Fushi는 선택한 스레드의 대사에만 오디오를 매칭할 수 있습니다.';
  @override
  String get game_audio_requires_thread =>
      '오디오 캡처 소스가 준비되었을 수 있지만, 스레드가 선택되고 대사가 수신될 때까지 문장 오디오는 존재하지 않습니다.';
  @override
  String get game_session_waiting_thread => '대화 스레드 대기 중';
  @override
  String get anki_connect_use_on_mobile => 'Use AnkiConnect on Android';
  @override
  String get anki_connect_use_on_mobile_hint =>
      '신뢰할 수 있는 네트워크에서만 사용하세요. AnkiConnect는 평문 HTTP를 사용합니다. 일치하는 API 키를 설정한 후 전환 후에 덱과 노트 유형을 새로고침하세요.';
  @override
  String get anki_connect_api_key_hint =>
      '원격 AnkiConnect에 필요합니다. 애드온에 설정된 키와 일치해야 합니다';
  @override
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before enabling the Android backend.';
  @override
  String anki_connect_backend_switch_failed({required Object error}) =>
      'Anki 백엔드를 전환할 수 없습니다: ${error}';
  @override
  String get migration_settings_entry => 'Fushi로 마이그레이션';
  @override
  String get migration_settings_entry_subtitle => '모든 데이터를 새 Fushi 앱으로 이동';
  @override
  String get migration_intro =>
      'Fushi는 이 앱의 새 이름입니다. 마이그레이션은 모든 데이터를 배치별로 전송 폴더에 내보낸 후, Fushi가 가져와서 검증합니다. 이 앱의 데이터는 앱을 삭제할 때까지 그대로 유지됩니다.';
  @override
  String get migration_target_missing =>
      'Fushi가 아직 설치되지 않았습니다. 먼저 Fushi를 설치한 후 다시 돌아오세요.';
  @override
  String get migration_download_fushi => 'Fushi 받기';
  @override
  String get migration_start => '마이그레이션 시작';
  @override
  String get migration_open_fushi => 'Fushi 열기';
  @override
  String get migration_include_local_audio => '로컬 발음 오디오도 내보내기 (용량이 클 수 있음)';
  @override
  String migration_batch_running({required Object batch}) => '${batch} 내보내는 중…';
  @override
  String migration_batch_done({required Object batch}) => '${batch} 내보내기 완료';
  @override
  String get migration_export_done => '내보내기 완료. Fushi를 열어 가져오기 및 검증을 진행하세요.';
  @override
  String migration_export_failed({required Object error}) =>
      '내보내기 실패: ${error}';
  @override
  String get migration_readonly_note =>
      '데이터가 Fushi로 내보내기되었습니다. 이 앱은 이제 읽기 전용입니다. 읽기와 채굴은 Fushi를 사용하세요. Fushi에서 누락된 데이터가 보고되면 언제든 다시 내보낼 수 있습니다.';
  @override
  String get migration_reexport => '다시 내보내기';
  @override
  String get migration_batch_core_label => '설정, 진행 상황 및 통계';
  @override
  String get migration_import_entry => 'Hibiki에서 가져오기';
  @override
  String get migration_import_entry_subtitle => '이전 Hibiki 앱에서 내보낸 데이터 가져오기';
  @override
  String get migration_import_detected =>
      'Hibiki 마이그레이션 데이터가 감지되었습니다. 지금 가져오시겠습니까?';
  @override
  String get migration_import_start => '가져오기 시작';
  @override
  String migration_import_running({required Object batch}) =>
      '${batch} 가져오는 중…';
  @override
  String migration_import_verify_failed({
    required Object batch,
    required Object detail,
  }) => '${batch} 검증 실패, 다시 내보내기용으로 보관됨: ${detail}';
  @override
  String migration_import_counts_failed({required Object detail}) =>
      '가져온 데이터가 불완전합니다: ${detail}. Hibiki에서 누락된 부분을 다시 내보낸 후 다시 가져오세요.';
  @override
  String get migration_import_success => '가져오기 완료 및 검증됨.';
  @override
  String get migration_import_nothing => '전송 폴더에 마이그레이션 데이터가 없습니다.';
  @override
  String get migration_uninstall_prompt =>
      '마이그레이션이 완료되었습니다. 이전 Hibiki 앱을 삭제하시겠습니까?';
  @override
  String get migration_uninstall_button => 'Hibiki 삭제';
  @override
  String get migration_uninstall_still_installed =>
      'Hibiki가 아직 설치되어 있습니다. 언제든 삭제할 수 있습니다.';
  @override
  String get migration_import_permission_title => '저장소 권한 필요';
  @override
  String get migration_import_permission_body =>
      '전송 폴더는 이전 앱에서 생성되었습니다. "모든 파일 접근" 권한이 없으면 Fushi가 읽을 수 없습니다 — 데이터는 손상되지 않았으며 열 수 없을 뿐입니다.';
  @override
  String get migration_import_permission_grant => '권한 허용';
  @override
  String migration_import_verifying({
    required Object batch,
    required Object done,
    required Object total,
  }) => '${batch} 검증 중 (${done}/${total})';
  @override
  String get migration_import_verifying_hint =>
      '아카이브 체크섬 검증 중. 대용량 라이브러리는 몇 분 걸릴 수 있습니다.';
  @override
  String get game_line_copy_tooltip => '문장 복사';
  @override
  String get game_japanese_locale_auto => '자동';
  @override
  String get game_japanese_locale_on => '항상 켜기';
  @override
  String get game_japanese_locale_off => '끄기';
  @override
  String get game_japanese_locale => '일본어 로케일';
  @override
  String get game_japanese_locale_hint =>
      '중국어/영어 패치 빌드에서는 이 옵션을 꺼야 합니다. 그렇지 않으면 게임 실행 시 충돌합니다';
  @override
  String get video_scrape_diagnostic_export => '스크랩 진단 내보내기';
  @override
  String get video_scrape_diagnostic_confirm_title => '스크랩 진단을 내보내시겠습니까?';
  @override
  String get video_scrape_diagnostic_saved => '진단 패키지 저장됨';
  @override
  String video_scrape_diagnostic_failed({required Object reason}) =>
      '진단 패키지를 내보낼 수 없습니다: ${reason}';
  @override
  String get video_scrape_diagnostic_share_subject => 'Fushi 동영상 스크랩 진단';
  @override
  String get video_scrape_diagnostic_confirm_body =>
      '패키지에는 상대 파일 및 폴더 이름, 스크랩 요약, 원본 NFO 내용이 포함됩니다. 동영상, 자막, 이미지, 절대 경로, 앱 설정 또는 앱 자격 증명은 포함되지 않습니다. 원본 NFO 파일은 변경 없이 보존되며 개인 정보나 비밀이 포함될 수 있으므로, 공개적으로 공유하기 전에 패키지를 검토하세요.';
  @override
  String get video_discovery_search_hint => '영화, 시리즈, 애니메이션 검색';
  @override
  String get video_discovery_hot => '지금 인기';
  @override
  String get video_discovery_seasonal_anime => '시즌별 애니메이션';
  @override
  String get video_discovery_all_works => '전체 작품';
  @override
  String get video_discovery_search_results => '검색 결과';
  @override
  String get video_discovery_provider_warning =>
      '일부 제공자를 사용할 수 없습니다. 사용 가능한 결과를 표시합니다.';
  @override
  String get video_discovery_load_failed => '검색 결과를 불러올 수 없습니다.';
  @override
  String get video_discovery_empty => '일치하는 작품이 없습니다.';
  @override
  String get video_discovery_resource_search => '리소스 검색';
  @override
  String get video_discovery_subtitle_search => '자막 검색';
  @override
  String get video_discovery_subscribe => '구독';
  @override
  String get video_discovery_subscription_manage => '구독 관리';
  @override
  String get video_discovery_pipeline_idle =>
      '미다운로드 → 다운로드 → 정리 → 자막 → 스크랩 → 라이브러리';
  @override
  String get video_discovery_details_load_failed => '작품 상세 정보를 불러올 수 없습니다.';
  @override
  String get video_discovery_sort_popularity => '인기순';
  @override
  String get video_discovery_sort_rating => '평점순';
  @override
  String get video_discovery_sort_release => '출시일순';
  @override
  String get video_discovery_in_library => '라이브러리에 있음';
  @override
  String get video_discovery_play => '재생';
  @override
  String get download_resources_tab => '리소스';
  @override
  String get video_external_settings_section => '외부 리소스 및 자막 제공자';
  @override
  String get video_torznab_settings_title => 'Torznab 인덱서';
  @override
  String get video_torznab_add => '인덱서 추가';
  @override
  String get video_torznab_name => '이름';
  @override
  String get video_torznab_endpoint => '엔드포인트';
  @override
  String get video_torznab_endpoint_hint => '루프백 주소를 제외하고 HTTPS가 필요합니다.';
  @override
  String get video_torznab_api_key => 'API 키';
  @override
  String get video_torznab_priority => '우선순위';
  @override
  String get video_torznab_categories => '카테고리';
  @override
  String get video_torznab_categories_hint => '쉼표로 구분된 숫자 카테고리 ID';
  @override
  String get video_external_enabled => '활성화';
  @override
  String get video_external_insecure_http => '비보안 HTTP 허용';
  @override
  String get video_external_insecure_http_hint =>
      '신뢰할 수 있는 로컬 네트워크 엔드포인트에서만 사용하세요.';
  @override
  String get video_external_endpoint_invalid =>
      '자격 증명, 쿼리 매개변수 또는 프래그먼트가 없는 유효한 엔드포인트를 입력하세요.';
  @override
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  @override
  String get video_opensubtitles_user_agent => 'User-Agent';
  @override
  String get video_opensubtitles_languages_hint =>
      '쉼표로 구분된 언어 코드, 예: zh-CN,en,ja';
  @override
  String get video_download_path_mappings_title => 'qBittorrent 경로 매핑';
  @override
  String get video_download_path_mappings_hint =>
      '각 qBittorrent 원격 루트를 로컬에서 접근 가능한 폴더로 매핑하세요.';
  @override
  String get video_download_path_mapping_add => '경로 매핑 추가';
  @override
  String get video_download_backend_profile_id => '백엔드 프로필 ID';
  @override
  String get video_download_remote_root => '원격 루트';
  @override
  String get video_download_local_root => '로컬 루트';
  @override
  String get video_download_target_source_title => '기본 관리 동영상 소스';
  @override
  String get video_download_target_source_hint => '새 다운로드는 이 로컬 동영상 소스에 정리됩니다.';
  @override
  String get video_download_target_source_none => '로컬 동영상 소스 선택';
  @override
  String get video_external_remove => '제거';
  @override
  String get video_external_username_optional => '사용자 이름 (선택사항)';
  @override
  String get video_external_password_optional => '비밀번호 (선택사항)';
  @override
  String get video_external_api_key => 'API 키';
  @override
  String get video_external_save_error => '설정을 저장할 수 없습니다. 강조 표시된 필드를 확인하세요.';
  @override
  String get video_external_categories_invalid => '카테고리는 쉼표로 구분된 숫자 ID여야 합니다.';
  @override
  String get video_download_path_mapping_invalid =>
      '프로필 ID, 원격 루트, 절대 로컬 루트를 입력하세요.';
  @override
  String get video_opensubtitles_endpoint => 'API 엔드포인트';
  @override
  String get video_download_target_source_empty =>
      '로컬에서 접근 가능한 동영상 소스가 없습니다. 먼저 소스 탭에서 추가하세요.';
  @override
  String get video_setting_drag_seek_sensitivity => '드래그 탐색 감도';
  @override
  String get video_setting_drag_seek_sensitivity_hint =>
      '터치 화면에서 전체 너비 스와이프 시 탐색 범위: 낮음 약 45초, 보통 약 90초, 높음 약 180초. 동영상 전체 길이와 무관합니다. 터치 드래그만 해당; 마우스 및 키보드 탐색에는 영향 없음.';
  @override
  String get video_setting_drag_seek_sensitivity_low => '낮음';
  @override
  String get video_setting_drag_seek_sensitivity_medium => '보통';
  @override
  String get video_setting_drag_seek_sensitivity_high => '높음';
  @override
  String video_subtitle_read_failed({required Object label}) =>
      '이 자막 파일을 읽을 수 없습니다 (손상되었거나 비어 있음): ${label}';
  @override
  String dict_downloading_size({
    required Object name,
    required Object done,
    required Object total,
  }) => '${name} 다운로드 중 (${done} / ${total})';
  @override
  String get video_subtitle_attach_book_missing =>
      '이 동영상이 라이브러리에 없어서 자막이 첨부되지 않았습니다';
  @override
  String get dict_download_hide => '백그라운드에서 실행';
  @override
  String get dict_download_progress_show => '진행 상황 보기';
  @override
  String get dict_download_cancelled => '다운로드 취소됨.';
  @override
  String get dict_download_import_uncancellable => '가져오기는 중단할 수 없습니다';
  @override
  String get dict_download_busy => '사전 다운로드가 이미 진행 중입니다.';
  @override
  String get gal_hook_ingame_lookup => '인게임 사전 조회';
  @override
  String get gal_hook_ingame_lookup_hint =>
      '게임 창 안에 사전 카드를 표시합니다 (KiriKiri 엔진, Windows 전용)';
  @override
  String download_subscription_start_episode({required Object episode}) =>
      '从第 ${episode} 集开始';
  @override
  String get drag_drop_failed => '드롭된 파일을 처리할 수 없습니다. 다시 시도해 주세요.';
  @override
  String get tag_add_failed => '태그를 추가할 수 없습니다. 다시 시도해 주세요.';
  @override
  String get tag_reorder_failed => '새 태그 순서를 저장할 수 없습니다. 다시 시도해 주세요.';
  @override
  String get download_task_error_summary_source_missing =>
      '관리 동영상 소스가 누락되었거나 접근할 수 없습니다';
  @override
  String get download_task_error_summary_backend_unconfirmed =>
      '해시, 제목, 카테고리로 토렌트를 확인할 수 없습니다';
  @override
  String get download_task_error_summary_subtitle => '자막을 사용할 수 없거나 설치할 수 없습니다';
  @override
  String get download_task_error_summary_backend_unavailable =>
      '다운로드 백엔드를 사용할 수 없거나 더 이상 일치하지 않습니다';
  @override
  String get download_task_error_summary_legacy => '레거시 가져오기에 수동 조치가 필요합니다';
  @override
  String get download_task_error_summary_torrent_info =>
      '토렌트 ID가 누락되었거나 확인할 수 없습니다';
  @override
  String get download_task_error_summary_generic => '작업에서 오류가 발생했습니다';
  @override
  String get download_task_error_view_detail => '상세 보기';
  @override
  String get download_task_error_detail_title => '오류 상세';
  @override
  String get download_task_error_copied => '오류 상세가 복사되었습니다';
  @override
  String get download_task_lifecycle_active => '진행 중';
  @override
  String get download_task_lifecycle_needs_attention => '주의 필요';
  @override
  String get download_task_location_missing => '작업 파일 위치를 사용할 수 없습니다.';
  @override
  String get download_task_location_open_failed => '파일 위치를 열 수 없습니다.';
  @override
  String get download_task_open_location => '폴더에서 보기';
  @override
  String get download_task_lifecycle_completed => '완료됨';
  @override
  String get download_task_lifecycle_failed => '실패';
  @override
  String get download_task_lifecycle_cancelled => '취소됨';
  @override
  String get download_task_stage_enqueue => '대기열';
  @override
  String get download_task_stage_download => '다운로드';
  @override
  String get download_task_stage_organize => '정리';
  @override
  String get download_task_stage_subtitle => '자막';
  @override
  String get download_task_stage_import => '가져오기';
  @override
  String get download_task_stage_scrape => '스크랩';
  @override
  String get video_discovery_manual_identity_hint =>
      '검색을 활성화하려면 위에 제목, 외부 ID, 연도를 입력하세요';
  @override
  String get collection_split_move_to => '이동';
  @override
  String get collection_split_new_group => '새 그룹';
  @override
  String collection_split_selected({required Object n}) => '${n}개 선택됨';
  @override
  String get sync_pair_rate_limited => '시도 횟수가 너무 많습니다. 몇 분 후에 다시 시도하세요.';
  @override
  String get sync_pair_tls_failed => '인증서 확인 실패. 상대방의 인증서가 고정된 인증서와 일치하지 않습니다.';
  @override
  String get sync_pair_timeout => '상대 기기가 시간 내에 응답하지 않았습니다.';
  @override
  String get sync_pair_expired => '페어링 시간이 초과되었습니다. 이 기기에서 페어링을 다시 시작하세요.';
  @override
  String get sync_pair_upgrade_required =>
      '상대 기기가 이 네트워크에서 안전하게 페어링할 수 없는 이전 버전을 실행 중입니다. 업데이트한 후 다시 페어링하세요.';
  @override
  String get sync_pair_fingerprint_changed_title => '인증서 변경됨';
  @override
  String get sync_pair_fingerprint_stored_label => '이전에 고정됨';
  @override
  String get sync_pair_fingerprint_new_label => '현재 확인됨';
  @override
  String get sync_pair_fingerprint_retrust => '지우고 다시 신뢰';
  @override
  String get sync_pair_fingerprint_changed_body =>
      '이 주소가 이전에 다른 인증서에 고정되어 있었습니다. 상대방이 재설치하거나 초기화한 경우에만 계속하세요 — 그렇지 않으면 누군가가 연결을 가로채고 있을 수 있습니다.';
  @override
  String get interconnect_upload_section_footer =>
      '이 기기가 연결된 상대에게 업로드할 항목을 선택하세요. 클라우드 백업 스위치와 독립적이며 기본값은 꺼짐입니다. 이 스위치는 인터커넥트 활성화가 켜져 있을 때만 적용됩니다: 인터커넥트를 끄면 여기의 모든 업로드가 중지됩니다.';
  @override
  String get remote_delete_audiobook_partial =>
      '책은 삭제되었으나, 페어링된 기기에서 오디오북을 제거할 수 없습니다';
  @override
  String get download_detail_task_queued =>
      '대기 중: 다른 다운로드가 슬롯을 비울 때까지 대기합니다. 이 작업은 아직 다운로더에 전달되지 않아 라이브 피어 또는 트래커 데이터가 없습니다.';
  @override
  String video_subscription_group_release_count({required Object count}) =>
      '${count}개 릴리스';
  @override
  String get download_task_priority => '대기열 우선순위';
  @override
  String get download_task_priority_high => '높음';
  @override
  String get download_task_priority_normal => '보통';
  @override
  String get download_task_priority_low => '낮음';
  @override
  String get library_view_import => '가져오기';
  @override
  String get quick_import_title => '빠른 가져오기';
  @override
  String get media_source_section_title => '라이브러리 소스';
  @override
  String get media_import_folder => '폴더 가져오기';
  @override
  String get media_import_folder_as_source => '라이브러리 소스로 추가';
  @override
  String get book_import_folder_as_source_hint => '이 폴더를 계속 스캔하여 새 책을 찾습니다';
  @override
  String get media_import_folder_once => '한 번만 가져오기';
  @override
  String get library_empty_go_import => '가져오기로 이동';
  @override
  String get game_import_drop_hint => '.exe 파일을 게임 라이브러리에 드래그 앤 드롭할 수도 있습니다';
  @override
  String get library_view_sources => '소스';
  @override
  String get video_setting_secondary_av_delay => '보조 자막 동기화';
  @override
  String get video_setting_secondary_av_delay_hint =>
      '보조 자막 오프셋을 독립적으로 조정합니다. 여기서 설정할 때까지 기본 오프셋을 따릅니다.';
  @override
  String get video_setting_secondary_delay_follow => '기본 따르기';
  @override
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      '보조 자막 동기화: ${ms} ms';
  @override
  String get video_subtitle_secondary_delay_follow_osd => '보조 자막 동기화: 기본 따르기';
  @override
  String get video_setting_subtitle_anchor => '기본 자막 앵커';
  @override
  String get video_subtitle_anchor_bottom => '하단';
  @override
  String get video_subtitle_anchor_top => '상단';
  @override
  String get video_setting_subtitle_drag_adjust => '드래그하여 위치 조정';
  @override
  String get video_subtitle_drag_adjust_hint => '자막을 위아래로 드래그하여 위치를 변경합니다';
  @override
  String get anki_connect_mobile_disabled_key_cleared =>
      'AnkiConnect는 모바일에서 API 키가 필요하므로, 키를 지우면 스위치가 다시 꺼집니다. 이제 Anki는 내장 백엔드를 다시 사용합니다.';
  @override
  String manga_import_batch_hint({required Object n}) =>
      '이 폴더에 ${n}개의 볼륨 파일이 있습니다. 각각 파일 이름을 따서 별도의 책으로 가져옵니다.';
  @override
  String manga_import_batch_done({
    required Object imported,
    required Object skipped,
    required Object failed,
  }) => '${imported}개 가져옴, ${skipped}개 건너뜀, ${failed}개 실패.';
  @override
  String get srt_book_reimport => '다시 가져오기';
  @override
  String get srt_book_reimport_subtitle_hint => '자막을 교체하면 새 큐에서 책 텍스트를 재구성합니다.';
  @override
  String get srt_book_reimport_no_cues => '해당 파일에서 자막 라인을 찾을 수 없습니다';
  @override
  String get srt_book_reimport_body_rebuilt => '책 텍스트 재구성됨 — 책을 다시 열어 읽으세요';
  @override
  String get video_setting_torrent_backend_embedded => '내장 엔진';
  @override
  String get download_backend_unsupported_note =>
      '이 플랫폼에서는 내장 엔진을 사용할 수 없습니다. 외부 qBittorrent를 사용하여 다운로드합니다.';
  @override
  String get aidoku_runtime_unavailable => 'Aidoku 확장은 현재 macOS에서만 사용할 수 있습니다.';
  @override
  String get aidoku_extensions_title => 'Aidoku 확장';
  @override
  String get aidoku_extension_empty => '설치된 Aidoku 확장이 없습니다.';
  @override
  String get aidoku_extension_remove => 'Aidoku 확장 제거';
  @override
  String get aidoku_extension_warning =>
      'Aidoku 확장은 네트워크 접근 권한이 있는 서드파티 WebAssembly 코드를 실행합니다. 신뢰할 수 있는 소스에서만 계속하세요.';
  @override
  String get aidoku_webview_unsupported =>
      '이 소스는 아직 지원되지 않는 Aidoku WebView API가 필요합니다.';
  @override
  String get aidoku_extension_imported => 'Aidoku 확장 가져옴';
  @override
  String get aidoku_extension_import => 'Aidoku 확장 가져오기 (.aix)';
  @override
  String get aidoku_extension_confirm_title => 'Aidoku 확장을 설치하시겠습니까?';
  @override
  String get aidoku_extension_version => '버전';
  @override
  String get aidoku_repository_url => '저장소 URL';
  @override
  String get aidoku_repository_sources => '저장소 소스';
  @override
  String get aidoku_repository_identity_mismatch =>
      '다운로드한 패키지가 저장소 인덱스와 일치하지 않습니다.';
  @override
  String get aidoku_repository_installed => '설치됨';
  @override
  String get aidoku_repository_search => '저장소 소스 검색';
  @override
  String get aidoku_repository_install => '설치';
  @override
  String get aidoku_repository_update => '업데이트';
  @override
  String get aidoku_repository_add => 'Aidoku 저장소 추가';
  @override
  String get aidoku_repository_added => 'Aidoku 저장소 추가됨';
  @override
  String get aidoku_repository_browse => '저장소 탐색';
  @override
  String get aidoku_repository_hint =>
      'Aidoku 저장소 홈페이지 또는 index.min.json URL을 붙여넣으세요. 커뮤니티 저장소가 기본으로 입력되어 있습니다.';
  @override
  String get aidoku_repository_remove => '저장소 제거';
  @override
  String get aidoku_repository_empty => '추가된 Aidoku 저장소가 없습니다.';
  @override
  String get dict_language_tooltip => '콘텐츠 언어';
  @override
  String get dict_language_title => '사전 콘텐츠 언어';
  @override
  String get dict_language_description =>
      '이 사전의 텍스트를 렌더링할 글꼴을 결정합니다. 자동은 사전이 선언한 언어를 사용합니다.';
  @override
  String get dict_language_auto => '자동';
  @override
  String get book_language_action => '콘텐츠 언어';
  @override
  String get book_language_description =>
      '이 책의 텍스트를 렌더링할 글꼴을 결정합니다. 자동은 EPUB에 선언된 언어를 사용합니다.';
  @override
  String get local_audio_reference_unavailable =>
      '모든 파일 접근 권한 없이는 원본 파일을 참조할 수 없어 사본이 대신 가져와졌습니다.';
  @override
  String get video_collection_scrape => '정보 및 표지 스크랩';
  @override
  String get update_testflight_open => 'TestFlight 열기';
  @override
  String get update_app_store_open => 'App Store 열기';
  @override
  String get update_release_page_open => '릴리스 페이지';
  @override
  String update_install_gal_hook_holder({
    required Object pid,
    required Object path,
  }) =>
      '게임 캡처 구성 요소 사용 중: PID ${pid} - ${path} (현재 플레이 중인 게임 또는 캡처 호스트입니다). 게임을 종료한 후 다시 업데이트하세요.';
  @override
  String get game_hook_reason_protocol_mismatch =>
      '캡처 구성 요소가 이 Fushi 빌드와 일치하지 않습니다. 이 구성 요소는 Fushi에 포함되어 있으므로 별도로 설치할 필요가 없습니다. 먼저 게임을 완전히 종료하고 다시 실행하세요: 게임 프로세스가 이전 세션에서 주입된 구성 요소를 아직 보유하고 있을 수 있습니다. 여전히 불일치하면, 마지막 Fushi 업데이트 시 게임이 실행 중이어서 디스크의 구성 요소 파일이 Fushi보다 오래된 것입니다. 모든 게임을 종료한 후 Fushi 설치 프로그램을 다시 실행하세요.';
  @override
  String get video_mining_still_format => '동영상 카드 스크린샷 형식';
  @override
  String get video_mining_still_format_hint =>
      '카드 이미지가 정지 스크린샷일 때 사용되는 인코딩. JPG가 훨씬 작고, PNG는 무손실이지만 몇 배 더 큽니다. 애니메이션 표지는 영향 없음 — 애니메이션 형식 설정을 따릅니다.';
  @override
  String get mining_still_format_jpg => 'JPG (작은 용량)';
  @override
  String get mining_still_format_png => 'PNG (무손실)';
  @override
  String get gal_mining_still_format => '게임 카드 스크린샷 형식';
  @override
  String get gal_mining_still_format_hint =>
      '동영상 카드와 동일한 형식이며 별도로 저장됩니다. 게임 창 캡처는 PNG로 들어옵니다: PNG를 유지하면 무손실이지만 몇 배 더 크고, JPG는 이전에 스크린샷이 압축되던 방식과 동일합니다.';
  @override
  String get manga_source_cloudflare_blocked =>
      '이 소스는 Cloudflare로 보호되어 있어 내장 리더로는 아직 접근할 수 없습니다.';
  @override
  String get manga_global_search_title => '모든 소스 검색';
  @override
  String get manga_global_search_hint => '활성화된 모든 소스 검색';
  @override
  String get manga_global_search_prompt =>
      '제목을 입력하면 활성화된 모든 만화 소스를 한 번에 검색합니다.';
  @override
  String get anki_connect_addon_install => 'AnkiConnect 설치';
  @override
  String get anki_connect_addon_install_hint =>
      'AnkiWeb에서 AnkiConnect를 다운로드하여 실행 중인 Anki에 전달합니다. Anki에서 확인을 요청한 후 재시작을 안내합니다.';
  @override
  String get anki_connect_addon_handed =>
      'AnkiConnect를 Anki에 전달했습니다. Anki의 프롬프트를 확인한 후 안내에 따라 Anki를 재시작하세요.';
  @override
  String get anki_connect_addon_anki_not_running =>
      '실행 중인 Anki를 찾을 수 없습니다. 먼저 Anki 데스크톱을 시작한 후 다시 시도하세요.';
  @override
  String anki_connect_addon_download_failed({required Object error}) =>
      'AnkiWeb에서 AnkiConnect를 다운로드할 수 없습니다: ${error}';
  @override
  String get anki_connect_addon_invalid =>
      'AnkiWeb에서 사용 가능한 애드온 패키지가 아닌 것을 반환했습니다.';
  @override
  String anki_connect_addon_launch_failed({required Object error}) =>
      '애드온을 Anki에 전달할 수 없습니다: ${error}';
  @override
  String get settings_content_language_title => '기본 콘텐츠 언어';
  @override
  String get settings_content_language_unset => '설정 안 됨';
  @override
  String get settings_content_language_description =>
      '언어를 선언하지 않은 콘텐츠의 대체 언어. 개별 책, 동영상, 게임, 사전 설정이 이를 재정의합니다.';
  @override
  String get manga_ocr_lens_language_label => '인식 언어';
  @override
  String get sync_err_peer_unreachable =>
      '페어링된 기기에 연결할 수 없습니다 - 오프라인이거나 Fushi가 실행 중이 아닐 수 있습니다.';
  @override
  String get remote_book_list_failed => '페어링된 기기에서 원격 라이브러리를 가져올 수 없습니다.';
  @override
  String get video_torznab_settings_hint =>
      '하나 이상의 Jackett, Prowlarr 또는 호환되는 Torznab 엔드포인트를 구성하세요. 비밀 정보는 백업에 내보내지지 않으며, 인터커넥트를 통해 페어링된 기기로 동기화될 수 있습니다 (인터커넥트 설정에서 끌 수 있음).';
  @override
  String get video_opensubtitles_settings_hint =>
      'API 자격 증명은 백업에 내보내지지 않으며, 인터커넥트를 통해 페어링된 기기로 동기화될 수 있습니다 (인터커넥트 설정에서 끌 수 있음).';
  @override
  String get sync_interconnect_service_config_toggle => '호스트에서 서비스 구성 동기화';
  @override
  String get sync_interconnect_service_config_toggle_desc =>
      '암호화된 인터커넥트 채널을 통해 페어링된 호스트에서 외부 서비스 설정 및 API 키(Jimaku, TMDB, Torznab, OpenSubtitles, 추적)를 수신합니다. TLS가 필요합니다.';
  @override
  String get video_setting_subtitle_backfill => '스크랩 후 자막 자동 가져오기';
  @override
  String get video_setting_subtitle_backfill_hint =>
      '스크랩이 완료되면, 아직 자막이 없는 동영상이 설정된 온라인 소스에서 자막을 가져옵니다. 기존 자막을 교체하지 않습니다.';
  @override
  String get video_setting_subtitle_sources_section => '온라인 자막 소스';
  @override
  String get video_subtitle_no_source_configured =>
      '자막을 찾을 수 없음 · 온라인 자막 소스를 설정하세요';
  @override
  String get anime_download_subs_retrying => '자막: 아직 올라오지 않음 — 자동으로 재시도합니다';
  @override
  String get video_jimaku_language_follow_video => '동영상 언어 따르기';
  @override
  String get video_setting_jimaku_default_language_hint =>
      '기본적으로 동영상 자체 언어(오디오 트랙 / 스크랩된 메타데이터)를 사용합니다. 항상 특정 언어를 선호하려면 선택하세요.';
  @override
  String get onboarding_title => '시작하기';
  @override
  String get onboarding_welcome_headline => '환영합니다!';
  @override
  String get onboarding_feature_anki => 'Anki 플래시카드';
  @override
  String get onboarding_feature_anki_hint =>
      'AnkiConnect 또는 AnkiDroid를 연결하여 플래시카드 생성';
  @override
  String get onboarding_feature_backup => '백업 및 동기화';
  @override
  String get onboarding_feature_backup_hint =>
      'Google Drive, WebDAV 및 기타 백엔드에 데이터 백업';
  @override
  String get onboarding_feature_interconnect => '기기 인터커넥트';
  @override
  String get onboarding_feature_interconnect_hint =>
      'LAN에서 기기를 페어링하여 라이브러리와 진행 상황 공유';
  @override
  String get onboarding_step_dictionary_action => '사전 관리자 열기';
  @override
  String get onboarding_step_anki_title => 'Anki 설정';
  @override
  String get onboarding_step_anki_action => '카드 생성 설정 열기';
  @override
  String get onboarding_step_backup_title => '백업 설정';
  @override
  String get onboarding_step_backup_body =>
      '백업 백엔드를 선택하고 로그인하거나, 로컬 백업 파일을 내보내세요.';
  @override
  String get onboarding_step_backup_action => '백업 설정 열기';
  @override
  String get onboarding_step_interconnect_title => '인터커넥트 설정';
  @override
  String get onboarding_step_interconnect_body =>
      '인터커넥트를 활성화하고 LAN에서 다른 기기와 페어링하여 라이브러리, 진행 상황, 조회를 공유하세요.';
  @override
  String get onboarding_step_interconnect_action => '인터커넥트 설정 열기';
  @override
  String get onboarding_finish_title => '모두 완료';
  @override
  String get onboarding_finish_body => '설정 → 시스템에서 이 가이드를 언제든 다시 볼 수 있습니다.';
  @override
  String get onboarding_action_next => '다음';
  @override
  String get onboarding_action_finish => '완료';
  @override
  String get onboarding_action_skip => '나중에 하기';
  @override
  String get onboarding_reopen => '시작 가이드';
  @override
  String get onboarding_welcome_body =>
      '먼저 인터페이스 언어와 테마를 설정하세요 — 다음 단계에서 나머지를 안내합니다.';
  @override
  String get onboarding_features_title => '사용할 기능 선택';
  @override
  String get onboarding_features_modules_label =>
      '라이브러리 탭 (체크 해제 시 내비게이션 바에서 숨김; 설정에서 언제든 변경 가능)';
  @override
  String get onboarding_features_setup_label => '다음에 설정할 항목';
  @override
  String get onboarding_feature_manga => '만화 라이브러리';
  @override
  String get onboarding_feature_manga_hint => 'OCR 조회로 만화 읽기';
  @override
  String get onboarding_feature_video => '동영상 라이브러리';
  @override
  String get onboarding_feature_video_hint => '자막 조회 및 채굴로 동영상 시청';
  @override
  String get onboarding_feature_games => '게임 라이브러리';
  @override
  String get onboarding_feature_games_hint => '텍스트 후킹 조회로 게임 실행 (Windows 전용)';
  @override
  String get onboarding_feature_pack => '추천 팩 (사전 + 오디오)';
  @override
  String get onboarding_feature_pack_hint => '한 번의 다운로드로 일본어 사전과 일/영 발음 오디오 설정';
  @override
  String get onboarding_step_pack_title => '추천 팩 설치';
  @override
  String get onboarding_step_pack_body =>
      '추천 팩에는 일본어 단어, 악센트, 빈도 사전과 일본어/영어 발음 오디오 데이터베이스가 포함되어 있습니다. 여기서 다운로드하여 가져오세요. 가져오기는 로컬 데이터를 교체하므로 새로 설치한 상태에서 실행하세요. 다른 언어를 학습 중이라면 사전 관리자에서 직접 사전을 가져오세요.';
  @override
  String get onboarding_step_pack_download_action => '다운로드 및 가져오기';
  @override
  String get onboarding_step_pack_import_existing_action => '다운로드된 팩 가져오기';
  @override
  String get onboarding_step_pack_pick_action => '로컬 팩 파일 선택';
  @override
  String get onboarding_pack_downloading => '다운로드 중… 언제든 취소 가능, 다음에 재개됨';
  @override
  String onboarding_pack_download_failed({required Object message}) =>
      '다운로드 실패: ${message}';
  @override
  String get onboarding_step_extension_title => '브라우저 확장';
  @override
  String get onboarding_step_extension_body =>
      '동반 브라우저 확장을 설치하여 모든 웹 페이지에서 단어를 조회하세요.';
  @override
  String get onboarding_step_extension_action => '확장 가이드 열기';
  @override
  String get onboarding_step_fonts_title => '읽기 글꼴';
  @override
  String get onboarding_step_fonts_body =>
      '사용자 지정 글꼴을 가져와서 UI, 책 텍스트, 사전 중 어디에서 사용할지 선택하세요.';
  @override
  String get settings_section_modules => '기능 모듈';
  @override
  String get module_toggle_hint => '내비게이션 바에 이 라이브러리 탭 표시; 끄면 숨김';
  @override
  String get video_setting_youtube_quality => 'YouTube 화질';
  @override
  String get video_setting_youtube_quality_hint =>
      '이 목표까지의 최고 등급으로 스트림을 시작합니다. 자동은 원활한 재생을 선호합니다 (하드웨어 친화적 코덱, 최대 1080p)';
  @override
  String get library_view_discover => '발견';
  @override
  String get manga_discovery_section_trending => '트렌딩';
  @override
  String get manga_discovery_section_popular => '인기';
  @override
  String get manga_discovery_section_top_rated => '최고 평점';
  @override
  String get manga_discovery_section_latest_finished => '최근 완결';
  @override
  String get manga_discovery_load_failed => '발견 피드를 불러올 수 없습니다.';
  @override
  String get manga_discovery_match_section => '소스에서 읽기';
  @override
  String get manga_discovery_match_running => '활성화된 소스에서 매칭 중...';
  @override
  String get manga_discovery_match_none => '활성화된 소스에서 일치하는 항목을 찾을 수 없습니다.';
  @override
  String get manga_discovery_status_releasing => '연재 중';
  @override
  String get manga_discovery_status_finished => '완결';
  @override
  String get manga_discovery_status_hiatus => '휴재 중';
  @override
  String get manga_discovery_status_cancelled => '취소됨';
  @override
  String get manga_discovery_status_not_yet_released => '미출시';
  @override
  String manga_discovery_source_popular({required Object source}) =>
      '${source}에서 인기';
  @override
  String get mihon_extension_error => '확장 오류';
  @override
  String get discovery_all_sources => '모든 소스';
  @override
  String get discovery_search_hint => '온라인 리소스 검색';
  @override
  String get discovery_enter_query_hint => '키워드를 입력하여 검색';
  @override
  String get discovery_empty => '결과 없음';
  @override
  String get discovery_partial_failure => '일부 소스를 사용할 수 없습니다';
  @override
  String get discovery_load_more => '더 보기';
  @override
  String get discovery_download_queued => '다운로드에 추가됨';
  @override
  String get discovery_torrent_pushed => '토렌트 작업 추가됨';
  @override
  String get discovery_torrent_failed => '토렌트 작업 추가 실패';
  @override
  String get discovery_kind_novel => '소설';
  @override
  String get discovery_kind_audiobook => '오디오북';
  @override
  String get discovery_source_pick_hint => '탐색할 소스를 선택하거나 키워드를 입력하여 모든 소스 검색';
  @override
  String get discovery_source_query_required => '이 소스는 키워드 검색만 지원합니다';
  @override
  String get manga_discovery_sources_browse => '소스 탐색';
  @override
  String get discovery_kind_manga => '만화';
  @override
  String get game_capture_workbench_tab => '캡처 작업 공간';
  @override
  String get video_builtin_sources_title => '내장 소스';
  @override
  String get video_resource_no_provider_title => '리소스 인덱서가 설정되지 않았습니다';
  @override
  String get video_subtitle_no_provider_title => '자막 제공자가 설정되지 않았습니다';
  @override
  String get video_subtitle_no_provider_hint =>
      '설정 > 다운로드 > 외부 리소스 및 자막 제공자에서 Jimaku API 키를 입력하거나 OpenSubtitles를 활성화하세요.';
  @override
  String get anime_download_require_subs => '자막 필요';
  @override
  String get video_jimaku_scope_hint =>
      '애니메이션 및 일본 실사 작품용 일본어 자막. 무료 API 키가 필요합니다.';
  @override
  String get video_builtin_apibay_hint => '영화 및 TV 프로그램. 공개 인덱스, 계정 불필요.';
  @override
  String get video_builtin_knaben_hint => '영화 및 TV 프로그램. 여러 공개 인덱서를 통합합니다.';
  @override
  String get video_jimaku_enabled_hint => '끄면 API 키가 저장되어 있어도 Jimaku를 건너뜁니다.';
  @override
  String get discovery_sources_settings_title => '탐색 소스';
  @override
  String get discovery_sources_settings_hint =>
      '탐색 페이지의 전체 소스 검색에 참여할 내장 소스를 선택합니다. 소스 드롭다운에서 단일 소스를 선택하면 여기서 꺼져 있어도 항상 작동합니다.';
  @override
  String get video_builtin_sources_hint =>
      '앱에 내장: 계정이나 API 키 불필요. 하나를 끄면 리소스 검색에서 제외됩니다.';
  @override
  String get video_builtin_nyaa_hint =>
      '애니메이션 전용. 영화 및 TV 프로그램은 아래 두 공개 인덱서에서 다룹니다.';
  @override
  String get video_resource_no_provider_hint =>
      '이 검색에 쿼리할 제공자가 없습니다. 설정 > 다운로드 > 외부 리소스 및 자막 제공자에서 내장 소스를 다시 활성화하거나 Torznab 인덱서를 추가하세요.';
  @override
  String discovery_source_kinds_label({required Object kinds}) =>
      '대상: ${kinds}';
  @override
  String get video_source_scrape_rescrape_source => '이 소스 재스크래핑';
  @override
  String get video_source_scrape_run_detail_title => '스크래핑 결과';
  @override
  String get video_source_scrape_run_no_issues => '경고나 오류가 기록되지 않았습니다.';
  @override
  String get video_source_scrape_manual_search_title => '작품을 수동으로 지정';
  @override
  String get video_source_scrape_manual_search_hint =>
      '메타데이터 제공자에서 제목으로 검색한 후 올바른 작품을 선택하세요.';
  @override
  String get video_source_scrape_manual_search_action => '검색';
  @override
  String get video_source_scrape_manual_search_empty => '결과 없음';
  @override
  String get profile_media_manga => '만화';
  @override
  String get profile_media_game => '게임';
  @override
  String get profile_media_browser => '브라우저';
  @override
  String get mihon_store_remove => '확장 스토어 제거';
  @override
  String get video_import_folder_as_source_hint => '이 폴더에서 새 동영상을 계속 스캔';
  @override
  String get manga_import_folder_as_source_hint => '이 폴더에서 새 만화를 계속 스캔';
  @override
  String get download_no_managed_video_source =>
      '관리 중인 동영상 소스가 없습니다. 다운로드를 저장할 로컬 동영상 폴더가 필요합니다.';
  @override
  String get download_add_video_source => '동영상 소스 추가';
  @override
  String get video_subtitle_prev_cue_align => '이전 줄을 현재 시점에 맞추기';
  @override
  String get video_subtitle_next_cue_align => '다음 줄을 현재 시점에 맞추기';
  @override
  String video_control_custom_action({required Object index}) => '단축키 ${index}';
  @override
  String get video_control_custom_action_none => '미지정';
  @override
  String get settings_destination_storage => '저장소';
  @override
  String get settings_destination_storage_summary => '데이터 위치 및 디스크 사용량';
  @override
  String get storage_overview_section => '디스크 사용량';
  @override
  String get storage_overview_total => '전체';
  @override
  String get storage_overview_refresh => '다시 스캔';
  @override
  String get storage_overview_scanning => '스캔 중…';
  @override
  String get storage_category_books => '도서 및 오디오북';
  @override
  String get storage_category_dictionaries => '사전';
  @override
  String get storage_category_video_downloads => '동영상 다운로드';
  @override
  String get storage_category_covers => '표지 및 썸네일';
  @override
  String get storage_category_subtitles => '자막';
  @override
  String get storage_category_shaders => '동영상 셰이더';
  @override
  String get storage_category_custom_fonts => '사용자 정의 글꼴';
  @override
  String get storage_category_web => '웹 아카이브 및 브라우저 데이터';
  @override
  String get storage_category_exports => '내보내기';
  @override
  String get storage_category_database => '데이터베이스 및 내부 데이터';
  @override
  String get storage_category_ocr_models => '만화 OCR 모델';
  @override
  String storage_entry_more_rest({required Object n, required Object size}) =>
      '${n}개 항목 더, 총 ${size}';
  @override
  String storage_entry_delete_confirm_title({required Object name}) =>
      '${name}을(를) 삭제하시겠습니까?';
  @override
  String get storage_entry_delete_book_confirm_body =>
      '이 기기에서 도서, 읽기 진행 상황 및 페어링된 오디오 사본을 제거합니다.';
  @override
  String get storage_entry_delete_dictionary_confirm_body =>
      '사전과 가져온 데이터를 제거합니다.';
  @override
  String get storage_entry_delete_done => '삭제됨';
  @override
  String storage_entry_delete_failed({required Object reason}) =>
      '삭제 실패: ${reason}';
  @override
  String get storage_modules_anime4k_title => 'Anime4K 셰이더';
  @override
  String get storage_modules_anime4k_hint => '동영상 설정에서 언제든 다시 다운로드할 수 있습니다';
  @override
  String storage_modules_anime4k_delete_done({required Object n}) =>
      '셰이더 파일 ${n}개 삭제됨';
  @override
  String get storage_bundled_section => '번들 구성 요소';
  @override
  String get storage_bundled_hint =>
      '설치 프로그램에 포함됨; 삭제된 파일은 다음 업데이트 시 복원되며, 참고용으로만 표시됩니다.';
  @override
  String get storage_dictionary_delete_incomplete =>
      '삭제 후에도 사전이 남아 있습니다. 오류 로그를 확인하세요';
  @override
  String get module_extension_label => '브라우저 확장';
  @override
  String get onboarding_feature_books => '소설 라이브러리';
  @override
  String get onboarding_feature_books_hint => '사전 검색 및 오디오북 동기화로 EPUB 소설 읽기';
  @override
  String get onboarding_feature_extension_hint => '모든 웹 페이지에서 단어 검색 (데스크톱 전용)';
  @override
  String get video_setting_tap_toggles_playback => '동영상 탭으로 재생/일시정지';
  @override
  String get video_setting_tap_toggles_playback_hint => '끄면 동영상 탭 시 컨트롤만 표시합니다';
  @override
  String get manga_ocr_engine_auto_desc =>
      '이미 설정한 오프라인 엔진을 우선 사용하며, 자동으로 Lens에 업로드하지 않습니다.';
  @override
  String get manga_ocr_engine_local_onnx_desc =>
      '완전 오프라인, 최고 품질. 일회성 모델 다운로드가 필요하며 오래된 하드웨어에서는 느립니다.';
  @override
  String get manga_ocr_engine_google_lens_desc =>
      '인터넷이 필요하며 페이지 이미지를 Google에 업로드합니다. 다운로드 없이 빠르지만 품질은 로컬 모델보다 낮습니다.';
  @override
  String get manga_ocr_engine_external_desc =>
      '직접 설치한 mokuro 명령줄을 호출합니다. 데스크톱 전용.';
  @override
  String get manga_ocr_engine_paired_host_desc =>
      '네트워크에 페어링된 기기에 작업을 넘깁니다. 이 기기에는 아무것도 다운로드되지 않습니다.';
  @override
  String manga_ocr_model_disk_usage({required Object size}) =>
      '디스크에서 ${size} 사용 중';
  @override
  String manga_ocr_model_download_size({required Object size}) => '${size} 필요';
  @override
  String manga_ocr_delete_done_freed({required Object size}) =>
      '모델 삭제됨, ${size} 확보';
  @override
  String get manga_ocr_model_unused_by_engine =>
      '현재 엔진은 이 로컬 모델 파일을 사용하지 않습니다.';
  @override
  String manga_ocr_download_total_progress({
    required Object total,
    required Object done,
  }) => '${total} 중 ${done}';
  @override
  String get media_source_network_subtitle_video =>
      'WebDAV 원격 라이브러리 (원본 위치에서 스트리밍)';
  @override
  String get jellyfin_settings_title => '미디어 서버 (Jellyfin / Emby)';
  @override
  String get jellyfin_server_url => '서버 URL';
  @override
  String get jellyfin_sign_in => '로그인';
  @override
  String get jellyfin_sign_out => '로그아웃';
  @override
  String get jellyfin_sign_in_failed => '로그인 실패';
  @override
  String get jellyfin_settings_hint => '서버의 동영상이 동영상 라이브러리에 표시되며 직접 스트리밍됩니다.';
  @override
  String get video_setting_mpv_lua_scripts => 'Lua 스크립트 로드';
  @override
  String get video_setting_mpv_lua_scripts_hint =>
      'mpv_scripts 폴더의 모든 .lua 파일을 플레이어에 로드합니다. 끄면 다음에 동영상을 열 때 적용됩니다.';
  @override
  String get video_setting_mpv_lua_scripts_import => 'Lua 스크립트 가져오기';
  @override
  String get video_setting_mpv_lua_scripts_imported => '스크립트 가져옴';
  @override
  String get video_setting_mpv_lua_scripts_dir_copy => '스크립트 폴더 경로 복사';
  @override
  String get video_setting_mpv_lua_scripts_dir_copied => '폴더 경로 복사됨';
  @override
  String get interconnect_share_statistics => '통계 공유';
  @override
  String get interconnect_share_statistics_hint =>
      '읽기 및 시청 시간, 글자 수, 검색 및 카드 제작 횟수';
  @override
  String get interconnect_share_favorites => '즐겨찾기 공유';
  @override
  String get interconnect_share_favorites_hint => '즐겨찾기한 단어와 문장, 즐겨찾기 해제 포함';
  @override
  String get interconnect_share_section => '페어링된 기기와 공유';
  @override
  String get interconnect_share_section_footer =>
      '페어링된 기기와 양방향으로 병합되며 기본적으로 켜져 있습니다. 하나를 끄면 해당 항목의 전송과 수신이 모두 중지됩니다.';
  @override
  String get game_hook_mining_no_session_lines =>
      '아직 캡처된 텍스트가 없어 이 카드에 연결할 내용이 없습니다. 워크벤치에서 다른 텍스트 스레드를 선택하세요.';
  @override
  String get shortcut_action_manga_pan_up => '위로 이동';
  @override
  String get shortcut_action_manga_pan_down => '아래로 이동';
  @override
  String get shortcut_action_manga_pan_left => '왼쪽으로 이동';
  @override
  String get shortcut_action_manga_pan_right => '오른쪽으로 이동';
  @override
  String get drag_drop_folder_source_added => '폴더가 라이브러리 소스로 추가되고 스캔되었습니다.';
  @override
  String get drag_drop_folder_source_exists => '이 폴더는 이미 라이브러리 소스입니다.';
  @override
  String get sync_pair_invalid_url => '잘못된 주소 형식';
  @override
  String get sync_pair_peer_requires_https =>
      '이 기기는 HTTPS만 허용합니다. https:// 주소를 사용하세요.';
  @override
  String get sync_pair_peer_not_https =>
      '피어가 이 포트에서 HTTPS를 사용하지 않습니다. http:// 주소를 사용하세요.';
  @override
  String get sync_pair_not_fushi_discovered => '이 주소에서 Fushi 기기를 찾을 수 없습니다.';
  @override
  String get shortcut_action_popup_play_audio => '단어 오디오 재생';
  @override
  String get sync_progress_asset_transfer => '전송 준비 중';
  @override
  String get sync_asset_dictionary_upload => '사전 업로드';
  @override
  String get sync_asset_dictionary_download => '사전 다운로드';
  @override
  String get sync_asset_local_audio_upload => '로컬 오디오 데이터베이스 업로드';
  @override
  String get sync_asset_local_audio_download => '로컬 오디오 데이터베이스 다운로드';
  @override
  String get sync_asset_upload_hint =>
      '이 기기에 있고 원격 기기에 없는 항목을 전송합니다. 패키지가 클 수 있습니다.';
  @override
  String get sync_asset_upload_action => '업로드';
  @override
  String get sync_asset_download_action => '다운로드';
  @override
  String get sync_asset_download_hint =>
      '원격 기기에 있고 이 기기에 없는 항목을 가져옵니다 - 로컬에서 삭제한 항목도 포함됩니다.';
  @override
  String get sync_asset_legacy_notice_title => '사전 및 오디오 동기화가 수동으로 변경되었습니다';
  @override
  String get sync_asset_legacy_notice_body =>
      '이 기기에서 사전 및 로컬 오디오 데이터베이스의 자동 동기화가 켜져 있었습니다. 해당 스위치가 제거되었습니다 - 전송하려면 아래의 업로드/다운로드 동작을 사용하세요. 삭제된 것은 없지만 새 사전은 더 이상 자동으로 백업되지 않습니다.';
  @override
  String get sync_asset_legacy_notice_dismiss => '확인';
  @override
  String get download_task_add => '작업 추가';
  @override
  String get download_task_add_pick_torrent => '토렌트 파일 선택';
  @override
  String get download_task_add_title_label => '제목';
  @override
  String get download_task_add_content_kind => '콘텐츠 유형';
  @override
  String get download_task_add_invalid => '인식할 수 없는 마그넷 링크 또는 토렌트 파일';
  @override
  String get download_task_add_submitted => '작업 추가됨';
  @override
  String get download_task_search_hint => '작업 검색';
  @override
  String get download_task_sort_created => '추가된 날짜';
  @override
  String get download_task_sort_progress => '진행률';
  @override
  String get download_task_sort_status => '상태';
  @override
  String get download_task_no_match => '일치하는 작업 없음';
  @override
  String subtitle_version_episode_count({required Object n}) => '${n}개 에피소드';
  @override
  String subtitle_version_unnumbered_count({required Object n}) =>
      '${n}개 번호 없음';
  @override
  String get subtitle_version_ai_translated => 'AI 번역';
  @override
  String get subtitle_version_content_language => '콘텐츠';
  @override
  String get subtitle_version_show_files => '파일 보기';
  @override
  String get subtitle_version_view_files => '파일 목록';
  @override
  String get resource_version_batch => '일괄';
  @override
  String get resource_version_view_flat => '전체 릴리스';
  @override
  String get subscription_mode_one_shot => '일회성';
  @override
  String get subscription_mode_ongoing => '계속 진행';
  @override
  String get subscription_legacy_badge => '레거시';
  @override
  String get subscription_legacy_hint => '이전 시스템에서 가져옴; 자동 확인이 적용되지 않습니다.';
  @override
  String subscription_next_check({required Object time}) => '다음 확인: ${time}';
  @override
  String subscription_last_matched({required Object time}) => '마지막 일치: ${time}';
  @override
  String get subscription_item_status_discovered => '대기 중';
  @override
  String get subscription_item_status_queued => '대기열';
  @override
  String get subscription_item_status_processed => '가져옴';
  @override
  String get subscription_item_status_skipped => '건너뜀';
  @override
  String get subscription_item_status_failed => '실패';
  @override
  String get subscription_items_empty => '아직 추적 중인 릴리스 없음';
  @override
  String get subscription_edit_title => '구독 편집';
  @override
  String get subscription_edit_rule_hint =>
      '여기서 ID 및 버전 규칙을 변경할 수 없습니다. 버전을 전환하려면 다시 구독하세요 - 기록은 유지됩니다.';
  @override
  String get subscription_search_hint => '구독 검색';
  @override
  String get subscription_sort_last_checked => '마지막 확인';
  @override
  String get subscription_sort_last_matched => '마지막 일치';
  @override
  String get subscription_show_items => '에피소드 기록';
  @override
  String get subscription_sort_created => '추가된 날짜';
  @override
  String get subscription_no_match => '일치하는 구독 없음';
  @override
  String get download_subscription_start_episode_invalid =>
      '정수(0 이상)를 입력하거나 비워 두세요';
  @override
  String get download_subscription_source_unavailable => '현재 대상 (사용 불가)';
  @override
  String resource_version_episode_count({required Object n}) => '${n}개 에피소드';
  @override
  String get resource_version_show_files => '파일 보기';
  @override
  String get manga_online_detail_load_failed => '이 만화를 불러올 수 없습니다.';
  @override
  String get manga_online_error_view_detail => '상세 보기';
  @override
  String get discovery_sources_unavailable => '모든 소스를 사용할 수 없습니다';
  @override
  String get font_target_game_lookup => '게임 검색 창 글꼴';
  @override
  String get gal_hook_text_font => '게임 검색 창 글꼴';
  @override
  String get gal_hook_text_font_hint =>
      '관리 중인 글꼴 라이브러리에서 글꼴을 선택하세요. 첫 번째 활성 글꼴이 사용됩니다.';
  @override
  String get gal_hook_text_letter_spacing => '자간';
  @override
  String get gal_hook_text_letter_spacing_hint =>
      '검색 판정 영역을 변경하지 않고 글자 사이 간격을 조정합니다.';
  @override
  String get gal_hook_text_line_height => '줄 높이';
  @override
  String get gal_hook_text_line_height_hint => '줄 바꿈된 텍스트의 세로 간격을 조정합니다.';
  @override
  String get gal_hook_text_bold => '굵은 텍스트';
  @override
  String get gal_hook_text_bold_hint =>
      '게임 그래픽 위에서 가독성을 높이기 위해 세미볼드 텍스트를 사용합니다.';
  @override
  String get gal_hook_text_alignment => '텍스트 정렬';
  @override
  String get gal_hook_text_alignment_center => '가운데';
  @override
  String get gal_hook_text_alignment_left => '왼쪽';
  @override
  String get gal_hook_text_color => '텍스트 색상';
  @override
  String get gal_hook_overlay_legibility_section => '창 및 가독성';
  @override
  String get gal_hook_text_background_color => '창 배경색';
  @override
  String get gal_hook_text_background_opacity => '창 배경 불투명도';
  @override
  String get gal_hook_text_background_opacity_hint =>
      '데스크톱 가사 스타일의 투명 창을 만들려면 0%로 설정하세요.';
  @override
  String get gal_hook_text_outline_color => '외곽선 색상';
  @override
  String get gal_hook_text_outline_width => '외곽선 두께';
  @override
  String get gal_hook_text_outline_width_hint =>
      '외곽선을 비활성화하려면 0으로 설정하세요; 은은한 그림자는 유지됩니다.';
  @override
  String get gal_hook_text_padding => '가로 텍스트 여백';
  @override
  String get gal_hook_text_padding_hint => '텍스트를 창 가장자리 및 크기 조절 핸들에서 떨어뜨립니다.';
  @override
  String get gal_hook_text_corner_radius => '창 모서리 반경';
  @override
  String get gal_hook_text_corner_radius_hint => '배경 모서리 반경을 조정합니다.';
  @override
  String get storage_shaders_delete_anime4k => 'Anime4K 셰이더 삭제';
  @override
  String get video_jimaku_series_lookup_degraded =>
      '이번에 AniList에서 시리즈를 확인할 수 없어 일반 제목 검색 결과를 표시합니다. 같은 시리즈의 다른 시즌이 섞여 있을 수 있습니다.';
  @override
  String get dict_style_tab_visual => '비주얼';
  @override
  String get dict_style_tab_code => 'CSS';
  @override
  String get dict_style_scope_all => '모든 사전';
  @override
  String get dict_style_part_entry_card => '항목 카드';
  @override
  String get dict_style_part_expression => '표제어';
  @override
  String get dict_style_part_ruby => '후리가나';
  @override
  String get dict_style_part_deinflection_tag => '활용 복원 체인';
  @override
  String get dict_style_part_frequency => '빈도';
  @override
  String get dict_style_part_pitch => '피치 악센트';
  @override
  String get dict_style_part_dictionary_label => '사전 이름';
  @override
  String get dict_style_part_glossary_content => '정의';
  @override
  String get dict_style_part_glossary_tag => '정의 태그';
  @override
  String get dict_style_prop_text_color => '텍스트 색상';
  @override
  String get dict_style_prop_background => '강조';
  @override
  String get dict_style_prop_bold => '굵게';
  @override
  String get dict_style_prop_italic => '기울임';
  @override
  String get dict_style_prop_underline => '밑줄';
  @override
  String get dict_style_prop_font_scale => '글꼴 크기';
  @override
  String get dict_style_prop_corner_radius => '모서리 반경';
  @override
  String get dict_style_part_reset => '부분 초기화';
  @override
  String get dict_style_reset_all => '전체 초기화';
  @override
  String get dict_style_global_only => '전체 사전에서만 조정 가능';
  @override
  String get dict_style_preview_title => '미리보기';
  @override
  String get dict_style_pick_hint => '미리보기에서 부분을 탭하면 해당 항목으로 이동합니다';
  @override
  String get dict_style_prop_default => '기본값';
  @override
  String get dict_style_part_expression_tag => '표현 태그';
  @override
  String get dict_style_prop_on => '켜기';
  @override
  String get dict_style_prop_off => '끄기';
  @override
  String get dict_style_title => '사전 스타일';
  @override
  String get video_source_scrape_anidb_client => 'AniDB 클라이언트 이름';
  @override
  String get video_source_scrape_anidb_client_hint =>
      '등록된 AniDB HTTP API 클라이언트 이름; 캐시된 제목 카탈로그만 사용하려면 비워 두세요';
  @override
  String get video_source_scrape_anidb_client_version => 'AniDB 클라이언트 버전';
  @override
  String get video_source_scrape_anidb_client_version_hint =>
      'AniDB에 등록된 양수 버전; 두 필드가 모두 유효할 때까지 HTTP API는 비활성 상태입니다';
  @override
  String get video_scrape_view_source => '소스 상세 보기';
  @override
  String get video_setting_auto_scrape_hint =>
      '라이브러리 스캔 후 동영상 메타데이터를 자동으로 식별하고 가져옵니다';
  @override
  String get video_resource_identity_provider => '리소스 ID 소스';
  @override
  String get video_source_scrape_clear_all => '모든 스크래핑 기록 지우기';
  @override
  String get video_source_scrape_clear_all_hint =>
      '모든 동영상 스크래핑 메타데이터와 Fushi가 생성한 표지 및 NFO 파일을 제거합니다.';
  @override
  String get video_source_scrape_clear_all_confirm_title =>
      '모든 동영상 스크래핑 기록을 지우시겠습니까?';
  @override
  String get video_source_scrape_clear_all_confirm_body =>
      '모든 스크래핑 메타데이터와 소스 바인딩을 제거하고, 시리즈 결과를 지우고, Fushi가 생성한 수정되지 않은 표지 및 NFO 파일을 삭제합니다. 동영상 파일, 라이브러리 항목, 그룹, 시청 진행 상황, 자막, 태그, 수동 선택한 표지 및 사용자가 수정한 사이드카 파일은 유지됩니다. 이 작업은 되돌릴 수 없습니다.';
  @override
  String get video_source_scrape_clear_all_confirm_action => '지우기';
  @override
  String get video_source_scrape_clear_all_completed =>
      '모든 동영상 스크래핑 기록이 지워졌습니다.';
  @override
  String get video_source_scrape_clear_all_completed_protected =>
      '스크래핑 기록이 지워졌습니다. 수정되었거나 확인할 수 없는 사이드카 파일은 유지되었습니다.';
  @override
  String get video_source_scrape_clear_all_busy =>
      '동영상 스캔 또는 스크래핑이 아직 실행 중입니다. 완료 후 다시 시도하세요.';
  @override
  String get video_source_scrape_clear_all_failed =>
      '모든 스크래핑 기록을 지울 수 없습니다. 확인되지 않은 사용자 파일은 삭제되지 않았습니다.';
  @override
  String get video_source_scrape_clear_all_in_progress =>
      '스크래핑 기록 정리가 이미 진행 중입니다.';
  @override
  String get game_session_japanese_locale => '일본어 로케일';
  @override
  String get game_session_japanese_locale_hint =>
      '이 게임은 일본어(CP932) 로케일에서 시작되었습니다. 텍스트가 깨지거나 스크립트 오류가 나타나면 이 게임의 일본어 로케일을 \'사용 안 함\'으로 설정하세요.';
  @override
  String get onboarding_anki_intro_body =>
      'Anki는 무료 간격 반복 플래시카드 앱입니다. 새 단어가 카드가 되고 망각 곡선에 따라 복습이 예약됩니다. 검색 후 Fushi에서 한 번의 탭으로 뜻, 예문, 오디오, 스크린샷과 함께 Anki 카드를 만들 수 있습니다.';
  @override
  String get onboarding_anki_setup_desktop_hint =>
      'Anki 데스크톱 앱을 설치한 다음 AnkiConnect 애드온을 추가하세요: Anki에서 도구 > 부가기능 > 부가기능 받기를 열고 코드 2055492159를 입력하세요. 카드를 만드는 동안 Anki를 실행 상태로 유지하세요.';
  @override
  String get onboarding_anki_setup_ios_hint =>
      'AnkiMobile이 설치되어 있으면 카드 추가가 바로 작동합니다. 전체 기능을 사용하려면 같은 네트워크의 컴퓨터에서 실행 중인 Anki에 AnkiConnect로 연결하세요.';
  @override
  String get onboarding_anki_backend_label => '연결';
  @override
  String get onboarding_anki_test_action => '연결 테스트';
  @override
  String onboarding_anki_test_success({required Object count}) =>
      '연결됨: 덱 ${count}개 발견';
  @override
  String get onboarding_anki_get_anki_action => 'Anki 받기 (데스크톱)';
  @override
  String get onboarding_anki_get_ankidroid_action => 'AnkiDroid 받기';
  @override
  String get onboarding_anki_mobile_ankiconnect_title =>
      '고급: 이 기기에서 AnkiConnect 사용';
  @override
  String get onboarding_anki_mobile_ankiconnect_hint =>
      '이 기기에서도 같은 네트워크의 컴퓨터에서 실행 중인 Anki에 카드를 만들 수 있습니다: 카드 생성 설정에서 AnkiConnect를 활성화하고 컴퓨터 주소를 입력하세요.';
  @override
  String get onboarding_anki_fsrs_title => 'Anki를 FSRS로 전환';
  @override
  String get onboarding_anki_fsrs_body =>
      'Anki에는 30년 된 SM-2 기본값보다 훨씬 뛰어난 스케줄러인 FSRS가 내장되어 있습니다: 더 적은 복습으로 더 나은 기억률을 제공합니다. Anki에서 덱 옵션을 열고 FSRS를 켜세요 (하나의 스위치로 전체 컬렉션에 적용됩니다). 이 설정은 Anki 내에서 직접 해야 합니다.';
  @override
  String get onboarding_step_pack_browser_action => '브라우저에서 다운로드';
  @override
  String get onboarding_anki_setup_android_hint =>
      'AnkiDroid를 설치하고 한 번 열어 초기 설정을 완료하세요. Fushi로 돌아와 첫 카드를 만들 때 나타나는 권한 대화상자에서 허용을 탭하세요 - AnkiDroid 설정을 변경할 필요가 없습니다.';
  @override
  String get onboarding_anki_install_addon_action => 'AnkiConnect 애드온 설치';
  @override
  String get onboarding_anki_addon_installed =>
      'AnkiConnect가 설치되었습니다. Anki를 시작(또는 재시작)한 다음 연결 테스트를 탭하세요.';
  @override
  String get onboarding_anki_addon_no_anki =>
      'Anki 데이터 폴더를 찾을 수 없습니다. Anki를 설치하고 한 번 열은 다음 다시 시도하세요.';
  @override
  String onboarding_anki_addon_failed({required Object message}) =>
      '설치 실패: ${message}';
  @override
  String get game_hook_reason_capability_probe_failed =>
      '캡처 구성 요소가 기능 확인에 응답하지 않았습니다. 디스크에서 발견되었지만 실행할 수 없거나 시간 내에 응답하지 않았습니다 - 바이러스 백신이 차단하고 있거나, Fushi에 실행 권한이 없거나, 남아 있는 헬퍼 프로세스가 멈춰 있을 수 있습니다. 모든 게임을 닫고, 바이러스 백신 격리 목록을 확인한 다음 다시 시도하세요.';
  @override
  String get download_backend_setup_title => '다운로드 백엔드 설정';
  @override
  String get download_backend_setup_intro =>
      '다운로드를 실행할 엔진을 선택하세요. 나중에 다운로드 설정에서 언제든지 바꿀 수 있어요.';
  @override
  String get download_backend_embedded_hint =>
      '권장. 다운로드가 Fushi 안에서 처리되어 따로 설치할 것이 없어요.';
  @override
  String get download_backend_qb_hint =>
      '이미 실행 중인 qBittorrent WebUI에 Fushi를 연결해요.';
  @override
  String get download_backend_setup_start => '지금 설정';
  @override
  String get download_backend_embedded_unavailable =>
      '이번 설치본에는 내장 엔진 런타임이 없어요. 전체 패키지를 다시 설치하거나 외부 qBittorrent을 사용하세요.';
  @override
  String get download_backend_qb_url_invalid =>
      '전체 주소를 입력하세요. 예: http://127.0.0.1:8080';
  @override
  String get mihon_store_zero_extensions =>
      '이 저장소가 확장 기능을 0개 반환했어요. 주소가 오래된 인덱스를 가리키고 있을 수 있어요.';
  @override
  String get mihon_store_edit => '저장소 주소 편집';
  @override
  String get manga_ocr_download_resume => '다운로드 이어받기';
  @override
  String get manga_ocr_import => '로컬 모델 가져오기';
  @override
  String get manga_ocr_import_title => '내려받은 모델 가져오기';
  @override
  String get manga_ocr_import_intro =>
      '앱 안에서 다운로드가 되지 않으면 아래 파일을 직접 내려받아 여기에서 가져오세요. 그 파일들이 들어 있는 zip도 괜찮아요.';
  @override
  String get manga_ocr_import_copy_urls => '다운로드 링크 복사';
  @override
  String get manga_ocr_import_urls_copied => '다운로드 링크를 복사했어요';
  @override
  String get manga_ocr_import_pick_folder => '폴더 선택';
  @override
  String get manga_ocr_import_pick_files => '파일 선택';
  @override
  String get manga_ocr_import_running => '가져오는 중…';
  @override
  String manga_ocr_import_done({required Object count}) =>
      '파일 ${count}개를 가져왔어요';
  @override
  String get manga_ocr_import_matched_nothing => '사용할 수 있는 모델 파일을 인식하지 못했어요';
  @override
  String manga_ocr_import_size_mismatch({
    required Object file,
    required Object expected,
    required Object actual,
  }) => '${file} 크기가 맞지 않아요: 예상 ${expected}, 실제 ${actual}';
  @override
  String manga_ocr_import_still_missing({required Object count}) =>
      '아직 파일 ${count}개가 부족해요';
  @override
  String get manga_ocr_import_failed => '모델 가져오기에 실패했어요';
  @override
  String get manga_tap_ocr_notice_title => '탭해서 인식';
  @override
  String get manga_tap_ocr_notice_body =>
      '이 페이지에는 아직 텍스트 데이터가 없어요. Fushi가 설정에서 고른 OCR 엔진으로 바로 인식하고, 인식이 끝나면 단어를 탭해서 찾아볼 수 있어요. 엔진을 바꾸거나 이 동작을 끄려면 설정 › 만화 OCR에서 하면 돼요.';
  @override
  String get manga_tap_ocr_notice_confirm => '지금 인식';
  @override
  String get manga_tap_ocr_running => '이 페이지를 인식하는 중…';
  @override
  String get manga_tap_to_ocr => '탭해서 인식';
  @override
  String get manga_tap_to_ocr_desc =>
      '아직 인식하지 않은 말풍선을 탭하면 페이지를 인식하고 바로 단어를 찾아볼 수 있어요.';
  @override
  String get manga_ocr_engine_system => '기기 OCR';
  @override
  String get manga_ocr_engine_system_desc =>
      '기기에 내장된 문자 인식을 사용해요. 다운로드가 필요 없고 완전히 오프라인이며 아무것도 업로드하지 않아요. 다만 세로쓰기 말풍선과 손글씨에서는 로컬 모델보다 눈에 띄게 약해요.';
  @override
  String get manga_ocr_engine_system_unavailable =>
      '이 기기에는 사용할 수 있는 내장 문자 인식이 없어요';
  @override
  String get manga_tap_ocr_online_lens_only =>
      '온라인 챕터는 기기에 저장되지 않아 Google Lens로만 읽을 수 있어요. 페이지 이미지는 Google로 업로드돼요.';
  @override
  String get settings_destination_services => '온라인 서비스';
  @override
  String get settings_destination_services_summary => '서드파티 API, 인덱서, 미디어 서버';
  @override
  String get section_services_subtitles => '자막 소스';
  @override
  String get section_services_resources => '리소스 인덱서';
  @override
  String get section_services_metadata => '메타데이터 스크래핑';
  @override
  String get settings_services_link_subtitle =>
      'Jimaku, OpenSubtitles, Torznab, Jellyfin, AniDB, TMDB를 여기에서 함께 설정해요';
  @override
  String get game_hook_btn_replay => '이 대사 음성 다시 재생';
  @override
  String get game_hook_btn_recapture => '음성 다시 녹음';
  @override
  String get game_hook_btn_follow => '새 대사 따라가기';
  @override
  String get game_hook_btn_passthrough => '클릭을 게임으로 통과';
  @override
  String get game_hook_btn_transparency => '배경 전환';
  @override
  String get game_hook_btn_lock => '위치 고정';
  @override
  String get game_hook_btn_workbench => '수집 작업대 열기';
  @override
  String get game_hook_btn_topmost => '항상 위에 표시';
  @override
  String get game_hook_btn_close => '오버레이 닫기';
  @override
  String get video_jimaku_search_failed => '자막 검색에 실패했어요';
  @override
  String video_subtitle_error_with_code({
    required Object msg,
    required Object code,
  }) => '${msg} (HTTP ${code})';
  @override
  String get manga_rescan_run => '선택 영역 다시 인식';
  @override
  String get manga_rescan_failed => '선택 영역을 다시 인식하지 못했어요';
  @override
  String get manga_rescan_region_updated => '선택 영역을 다시 인식해 페이지에 저장했어요';
  @override
  String get manga_ocr_mobile_note =>
      '모바일에서는 이 모델들이 만화 뷰어의 전권·탭·선택 영역 OCR을 담당하는 로컬 엔진에 쓰여요.';
  @override
  String get manga_rescan_hint =>
      '다시 인식할 텍스트를 드래그해 상자로 감싸세요. 결과는 상자 안의 기존 텍스트 레이어를 대체해요.';
  @override
  String get manga_rescan_undone => '다시 인식하기 전의 텍스트 레이어로 되돌렸어요';
  @override
  String get manga_rescan_undo_failed => '이전 텍스트 레이어로 되돌리지 못했어요';
  @override
  String get module_tool_toggle_hint => '이 탭을 내비게이션 바에 표시해요. 끄면 숨겨져요';
  @override
  String get module_downloads_hidden_hint =>
      '‘다운로드’ 탭이 설정 → 외관 → 기능 모듈에서 숨겨져 있어요. 구독을 관리하려면 다시 켜세요.';
  @override
  String get book_file_location_open => '파일 위치 열기';
  @override
  String get book_file_location_failed => '이 책의 파일 위치를 열 수 없어요.';
  @override
  String storage_entry_database_snapshots_label({required Object n}) =>
      '데이터베이스 백업 스냅샷(${n}개 파일)';
  @override
  String get storage_entry_delete_database_snapshots_confirm_body =>
      '남아 있는 데이터베이스 백업 스냅샷(corrupt-bak / pre-restore / 이전 버전 마이그레이션 사본)을 모두 삭제해요. 사용 중인 데이터베이스와 그 -wal/-shm 사이드카는 건드리지 않아요.';
  @override
  String get manga_global_search_no_sources =>
      '활성화된 만화 소스가 아직 없어요. ‘가져오기’ 탭에서 하나 추가하세요.';
  @override
  String get manga_global_search_open_sources => '가져오기로 이동';
  @override
  String get settings_downloads_open_page_hint => '다운로드 페이지 열기 (작업 / 리소스 / 구독)';
  @override
  String get download_video_source_required => '동영상 소스가 필요해요';
  @override
  String get game_hook_reason_stale_session =>
      '이전 캡처 세션이 아직 해제되지 않았어요. Fushi가 알아서 다시 시도하니 따로 할 일은 없어요.';
  @override
  String get video_subtitle_delete => '자막 파일 삭제';
  @override
  String video_subtitle_delete_confirm({required Object path}) =>
      '이 자막 파일을 디스크에서 삭제할까요? 되돌릴 수 없어요.\n${path}';
  @override
  String video_subtitle_deleted({required Object label}) =>
      '자막 파일을 삭제했어요: ${label}';
  @override
  String video_subtitle_delete_failed({required Object label}) =>
      '자막 파일 삭제에 실패했어요: ${label}';
  @override
  String get shortcut_action_manga_toggle_chrome => '만화 인터페이스 전환';
  @override
  String get manga_interface_hide => '인터페이스 숨기기';
  @override
  String get manga_interface_show => '인터페이스 표시';
  @override
  String get gal_hook_text_vertical_alignment => '세로 정렬';
  @override
  String get gal_hook_text_vertical_alignment_center => '가운데';
  @override
  String get gal_hook_text_vertical_alignment_top => '위';
  @override
  String get storage_entry_external_audio_hint =>
      '오디오는 원본 파일을 참조하므로 앱 저장 공간을 쓰지 않아요';
  @override
  String get jellyfin_auto_list_title => '비디오에 들어갈 때 항목 자동 나열';
  @override
  String get jellyfin_auto_list_hint =>
      '끄면: 비디오 페이지에 들어가도 미디어 서버로 요청을 보내지 않아요. 비디오 라이브러리에서 당겨서 새로고침하면 수동으로 나열할 수 있어요. 아주 큰 서버에서는 자동 열거가 스크래핑처럼 보여 남용 감지에 걸릴 수 있으니 끄는 것을 권장해요.';
  @override
  String get jellyfin_libraries_title => '나열할 라이브러리';
  @override
  String get jellyfin_libraries_hint =>
      '아무것도 선택하지 않으면 모든 비디오 라이브러리를 나열해요. 실제로 보는 라이브러리로 좁히면 거대한 서버가 통째로 열거되는 것을 막을 수 있어요.';
  @override
  String get jellyfin_libraries_load_failed => '라이브러리 목록을 불러오지 못했어요';
  @override
  String get video_filter_series => '시리즈';
  @override
  String get video_filter_series_in => '시리즈에 포함';
  @override
  String get video_filter_series_standalone => '시리즈 없음';
  @override
  String get manga_source_cloudflare_verify_title => '사이트 확인';
  @override
  String get manga_source_cloudflare_verify_hint =>
      '아래 Cloudflare 확인을 완료하세요. 통과하면 자동으로 불러오기를 계속합니다.';
  @override
  String get db_cannot_open_title => '데이터 위치를 사용할 수 없음';
  @override
  String get db_cannot_open_message =>
      'Fushi가 설정된 데이터 위치에서 데이터베이스를 열거나 만들지 못했습니다. 손상된 것은 없습니다 — 폴더가 없거나, 읽기 전용이거나, 연결이 끊긴 드라이브에 있을 수 있습니다. 설정에서 데이터 위치를 확인하거나, 다시 시작해 기본 위치를 사용하세요.';
  @override
  String get anki_error_field_mapping_mismatch =>
      '필드 매핑 중 어느 것도 선택한 노트 유형과 맞지 않아 Anki가 카드를 거부했습니다. Anki 설정을 열어 필드를 다시 매핑하거나 \'Lapis 덱 만들기\'를 사용하세요.';
  @override
  String get anki_error_first_field_empty =>
      '선택한 노트 유형의 첫 번째 필드가 비어 있어 Anki가 이런 노트를 받지 않습니다. Anki 설정에서 필드를 매핑하세요.';
  @override
  String get storage_category_cache => '캐시 및 임시 파일';
  @override
  String get storage_category_other => '기타 미분류';
  @override
  String get collection_export_pick_source => '소스 선택';
  @override
  String get collection_export_all_sources => '모든 소스';
  @override
  String get video_subtitle_list_search => '자막 검색';
  @override
  String get video_subtitle_list_search_hint => '입력해 자막 필터링';
  @override
  String get video_subtitle_list_search_empty => '일치하는 자막 없음';
  @override
  String get video_subtitle_list_export_favorites => '즐겨찾기한 자막 내보내기';
  @override
  String get shortcut_action_video_search_subtitle_list => '자막 목록 검색';
  @override
  String get game_hook_code_paste_title => '후크 코드 붙여넣기';
  @override
  String get game_hook_code_paste_hint =>
      '원본 코드를 붙여넣으세요. 예: /HQN4@4CE90:game.exe';
  @override
  String get game_hook_code_paste_body =>
      '이 코드는 현재 실행 중인 게임의 실행 파일에 연결되어 다음에 자동으로 다시 사용됩니다.';
  @override
  String get game_hook_code_paste_saved => '이 게임의 후크 코드를 저장했습니다';
  @override
  String get game_hook_code_paste_invalid => '후크 코드로 보이지 않습니다';
  @override
  String get game_hook_code_label => '라벨(선택)';
  @override
  String get discovery_game_type_all => '전체';
  @override
  String get discovery_game_type_raw => '미번역';
  @override
  String get discovery_game_type_translated => '번역됨';
  @override
  String get discovery_game_type_mobile => '모바일';
  @override
  String get discovery_game_type_unlabelled => '미분류';
  @override
  String get game_library_downloading => '다운로드 중';
  @override
  String get game_library_download_queued => '대기 중';
  @override
  String get game_library_download_retrying => '재시도 중';
  @override
  String get delete_disclosure_audio_source_files => '가져온 원본 오디오 파일';
  @override
  String get delete_local_files => '로컬 파일도 삭제';
  @override
  String get delete_local_files_video_desc =>
      '이 기기에서 동영상 파일을 삭제하고 해당 다운로드 작업도 함께 지웁니다. 되돌릴 수 없습니다.';
  @override
  String get delete_local_files_audio_desc =>
      '이 기기에서 원본 오디오 파일을 삭제합니다. 책과 자막 원본 파일은 그대로 둡니다. 되돌릴 수 없습니다.';
  @override
  String get delete_disclosure_book_source_kept => '가져온 원본 책 및 자막 파일';
  @override
  String get download_task_delete_files_failed =>
      '다운로드된 데이터를 삭제하지 못했습니다. 다운로드 엔진이 확인하지 않았습니다';
  @override
  String delete_local_files_failed({required Object n}) =>
      '로컬 파일 ${n} 개를 삭제하지 못했습니다. 아직 사용 중일 수 있습니다';
  @override
  String batch_hidden_by_filter_note({required Object n}) =>
      '선택한 항목 중 ${n}개는 현재 필터로 숨겨져 있어 처리되지 않습니다.';
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
  String get download_direct_queue_section => '직접 링크 다운로드';
  @override
  String get download_task_kind_all => '모든 유형';
  @override
  String get download_task_kind_filter => '유형별 필터';
  @override
  String get manga_online_series_empty => '이 시리즈에는 권이 없습니다.';
  @override
  String sync_peer_book_delete_confirm({required Object name}) =>
      '상대 기기에서 "${name}"을(를) 삭제할까요? 해당 기기의 파일과 읽기 진행률이 영구히 삭제되며, 이 기기에는 사본이 없습니다. 이 작업은 되돌릴 수 없습니다.';
  @override
  String sync_peer_video_delete_confirm({required Object name}) =>
      '상대 기기의 라이브러리에서 "${name}"을(를) 제거할까요? 상대 기기가 직접 가져온 동영상 파일은 유지됩니다. 이 작업은 되돌릴 수 없습니다.';
  @override
  String get storage_entry_delete_files_confirm_body =>
      '디스크에서 즉시 삭제합니다. 라이브러리의 어떤 항목도 이를 참조하지 않습니다 — 캐시, 내보낸 파일, 또는 다시 받을 수 있는 데이터입니다.';
  @override
  String get manga_series_refresh => '챕터 새로고침';
  @override
  String get manga_series_refresh_failed => '소스에서 새로고침하지 못했습니다';
  @override
  String get manga_series_source_disabled => '이 소스가 설치되지 않았거나 비활성화되었습니다';
  @override
  String get manga_series_platform_unsupported =>
      '이 소스 런타임은 이 플랫폼에서 사용할 수 없습니다';
  @override
  String get manga_series_offline_hint => '이 기기에 저장된 챕터를 표시하고 있습니다';
  @override
  String get manga_series_no_chapters => '아직 챕터가 없습니다';
  @override
  String get manga_series_all_read => '모든 챕터를 읽었습니다';
  @override
  String get manga_series_sort_newest => '최신순';
  @override
  String get manga_series_sort_oldest => '오래된순';
  @override
  String get manga_series_unread_only => '읽지 않은 것만';
  @override
  String get manga_series_mark_read => '읽음으로 표시';
  @override
  String get manga_series_mark_unread => '읽지 않음으로 표시';
  @override
  String get manga_series_mark_previous_read => '이 챕터까지 읽음으로 표시';
  @override
  String get manga_series_local_volume => '로컬 권';
  @override
  String get manga_series_volume_info => '권 정보';
  @override
  String get manga_series_page_count => '페이지 수';
  @override
  String get manga_series_chapters_action => '챕터';
  @override
  String get manga_series_next_chapter => '다음 챕터';
  @override
  String get manga_series_previous_chapter => '이전 챕터';
  @override
  String get manga_series_last_chapter_reached => '최신 챕터입니다';
  @override
  String get manga_series_first_chapter_reached => '첫 번째 챕터입니다';
  @override
  String get manga_series_open_series => '작품 페이지';
  @override
  String manga_series_read_progress({
    required Object total,
    required Object page,
  }) => '${total}페이지 중 ${page}페이지까지 읽음';
  @override
  String manga_series_read_progress_partial({required Object page}) =>
      '${page}페이지까지 읽음';
  @override
  String mihon_store_extension_count({required Object count}) => '확장 ${count}개';
  @override
  String mihon_extension_sources_more({required Object count}) =>
      '소스 ${count}개 모두 보기';
  @override
  String get mihon_extension_sources_less => '소스 적게 보기';
  @override
  String get options_website => '공식 웹사이트 방문';
  @override
  String get video_setting_mpv_group_hdr => 'HDR';
  @override
  String get video_setting_hdr_tone_mapping => 'HDR 톤 매핑';
  @override
  String get video_setting_hdr_tone_mapping_hint =>
      'HDR 소스를 SDR 디스플레이에 맞출 때 쓰는 곡선입니다. ‘자동’은 mpv가 소스마다 고르게 합니다.';
  @override
  String get video_setting_hdr_compute_peak => '동적 피크 검출';
  @override
  String get video_setting_hdr_compute_peak_hint =>
      '소스 메타데이터를 믿는 대신 프레임마다 실제 최대 밝기를 측정합니다. 하이라이트가 좋아지지만 GPU를 조금 씁니다.';
  @override
  String get video_setting_hdr_auto => '자동';
  @override
  String get video_setting_hdr_on => '켜기';
  @override
  String get video_setting_hdr_off => '끄기';
  @override
  String get video_discovery_cancel_downloads_title => '다운로드를 취소할까요?';
  @override
  String video_discovery_cancel_downloads_body({required Object n}) =>
      '이 작품의 다운로드 작업 ${n}개를 중지합니다. 이미 받은 조각은 디스크에 남아 있어 나중에 다시 시작할 수 있습니다.';
  @override
  String get video_discovery_cancel_downloads_failed =>
      '다운로드를 취소하지 못했습니다. 작업이 이미 끝났거나 다운로드 백엔드를 사용할 수 없습니다.';
  @override
  String get gal_hook_click_lookup => '단어를 눌러 사전 찾기';
  @override
  String get gal_hook_click_lookup_hint =>
      '끄면 자막을 클릭해도 사전을 찾지 않습니다. 클릭 통과를 켠 채로 실수로 단어를 누르고 싶지 않을 때 유용합니다.';
  @override
  String get gal_hook_lookup_trigger => '사전 찾기 버튼';
  @override
  String get gal_hook_lookup_trigger_hint =>
      '포인터 아래 단어를 찾을 마우스 버튼입니다. 위 스위치와는 별개예요: 눌러서 찾기를 꺼도 옆 버튼으로는 찾을 수 있습니다.';
  @override
  String get gal_hook_lookup_trigger_left => 'Left click';
  @override
  String get gal_hook_lookup_trigger_middle => 'Middle click';
  @override
  String get gal_hook_lookup_trigger_side => 'Side button';
  @override
  String get gal_hook_toolbar_auto_hide => '도구 모음 자동 숨김';
  @override
  String get gal_hook_toolbar_auto_hide_hint =>
      '포인터가 자막 상자에 닿을 때까지 도구 모음을 숨깁니다(LunaHook 방식). 숨긴다는 건 정말로 사라진다는 뜻이라, 그 픽셀은 게임으로 돌아갑니다.';
  @override
  String get gal_hook_passthrough_blocks_mouse => '클릭 통과 중에도 자막은 클릭을 받음';
  @override
  String get gal_hook_passthrough_blocks_mouse_hint =>
      '켬: 자막 줄이 계속 클릭을 받아 단어를 누를 수 있습니다. 끔: 오버레이 전체가 마우스에 투명해져 아래 것을 클릭할 수 있지만, 단어 누르기는 더 이상 되지 않습니다.';
  @override
  String get floating_lyric_passthrough => '클릭을 아래 창으로 통과';
  @override
  String get floating_lyric_transparency => '배경 전환';
  @override
  String get floating_lyric_topmost => '항상 위에 표시';
  @override
  String get gal_hook_fold_progressive_lines => '나뉜 대사 줄 합치기';
  @override
  String get gal_hook_fold_progressive_lines_hint =>
      '클릭할 때마다 줄 전체를 다시 그리는 엔진이 있어 같은 줄이 여러 번 캡처됩니다. 그 스냅숏들을 한 줄로 접습니다.';
  @override
  String get gal_hook_ingame_lookup_engine_unsupported =>
      '이 게임 엔진은 아직 인게임 사전 검색을 지원하지 않습니다';
  @override
  String get gal_hook_ingame_lookup_version_unsupported =>
      '이 게임 버전은 아직 지원 목록에 없습니다';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copy => '게임 실행 파일의 SHA-256 복사';
  @override
  String get gal_hook_ingame_lookup_exe_hash_unavailable =>
      '게임 실행 파일을 읽을 수 없습니다 (권한 부족일 수 있음)';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copied => '실행 파일의 SHA-256을 복사했습니다';
}
