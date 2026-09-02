part of 'strings.g.dart';

// Path: <root>
class _StringsVi extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsVi.build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.vi,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super.build(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <vi>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  @override
  late final _StringsVi _root = this; // ignore: unused_field

  // Translations
  @override
  String get action_exit => 'Thoát';
  @override
  String get action_favorite => 'Yêu thích';
  @override
  String activity_days_ago({required Object n}) => '${n} ngày trước';
  @override
  String activity_hours_ago({required Object n}) => '${n} giờ trước';
  @override
  String get activity_just_now => 'Vừa xong';
  @override
  String activity_minutes_ago({required Object n}) => '${n} phút trước';
  @override
  String get add_to_collection => 'Thêm vào bộ sưu tập';
  @override
  String get anime_download_back => 'Quay lại';
  @override
  String get anime_download_batch => 'Trọn bộ';
  @override
  String get anime_download_category_all => 'Tất cả';
  @override
  String get anime_download_category_english => 'Dịch tiếng Anh';
  @override
  String get anime_download_category_non_english => 'Không phải tiếng Anh';
  @override
  String get anime_download_category_raw => 'Nguyên bản';
  @override
  String get anime_download_delete => 'Xóa';
  @override
  String anime_download_episode_count({required Object count}) =>
      'Tập ${count}';
  @override
  String get anime_download_generic_download => 'Tải xuống';
  @override
  String get anime_download_generic_hint => 'Liên kết magnet';
  @override
  String get anime_download_generic_title =>
      'Dán liên kết (sách, video, bất kỳ)';
  @override
  String get anime_download_include_subs => 'Bao gồm phụ đề';
  @override
  String get anime_download_kind_auto => 'Tự động';
  @override
  String get anime_download_kind_book => 'Sách';
  @override
  String get anime_download_kind_video => 'Video';
  @override
  String get anime_download_magnet_invalid => 'Liên kết magnet không hợp lệ';
  @override
  String get anime_download_no_results => 'Không có kết quả';
  @override
  String get anime_download_no_subs => 'Không có phụ đề';
  @override
  String get anime_download_no_tasks => 'Chưa có tác vụ tải xuống';
  @override
  String get anime_download_nyaa_query => 'Từ khóa tìm kiếm Nyaa';
  @override
  String get anime_download_play_now => 'Phát trong khi tải';
  @override
  String get anime_download_play_now_fail =>
      'Chưa sẵn sàng (đang chờ metadata hoặc kết nối thất bại) — thử lại sau';
  @override
  String get anime_download_play_now_ok =>
      'Đã nhập — mở từ thư viện video để phát trong khi tải';
  @override
  String get anime_download_push => 'Đẩy tải xuống';
  @override
  String get anime_download_push_failed => 'Không thể đẩy đến qBittorrent';
  @override
  String get anime_download_pushed => 'Đã đẩy — sẽ tự động nhập khi hoàn tất';
  @override
  String get anime_download_refresh => 'Làm mới';
  @override
  String get anime_download_relocate => 'Đổi tên / di chuyển';
  @override
  String anime_download_relocate_engine_failed({required Object reason}) =>
      'Thất bại, không có gì thay đổi: ${reason}';
  @override
  String get anime_download_relocate_hint =>
      'Fushi đổi tên/di chuyển thông qua trình tải xuống, nên việc chia sẻ không bị gián đoạn. Đổi tên trong Explorer không thể khôi phục.';
  @override
  String anime_download_relocate_library_failed({required Object reason}) =>
      'Đã di chuyển tệp, nhưng thư viện vẫn trỏ đến đường dẫn cũ: ${reason}';
  @override
  String get anime_download_relocate_move_title => 'Di chuyển đến thư mục';
  @override
  String get anime_download_relocate_no_files =>
      'Tác vụ này chưa có tệp để đổi tên (metadata chưa sẵn sàng)';
  @override
  String anime_download_relocate_ok({required Object rows}) =>
      'Đã đổi tên / di chuyển; ${rows} mục thư viện được cập nhật';
  @override
  String get anime_download_relocate_pick_folder => 'Chọn thư mục đích';
  @override
  String get anime_download_relocate_rename_title => 'Đổi tên tệp';
  @override
  String get anime_download_retry => 'Thử lại';
  @override
  String get anime_download_search => 'Tìm kiếm';
  @override
  String get anime_download_search_error_proxy_hint =>
      'Nếu không thể truy cập trang web trực tiếp, hãy cấu hình proxy mạng trong cài đặt tải xuống.';
  @override
  String get anime_download_search_failed =>
      'Tìm kiếm thất bại hoặc hết thời gian. Nhấn thử lại.';
  @override
  String get anime_download_search_hint => 'Tên anime';
  @override
  String get anime_download_search_start_hint =>
      'Tìm kiếm tên ở trên - torrent và phụ đề được tự động khớp. Không giới hạn ở video: sách, truyện tranh, sách nói và trò chơi cũng được nhập.';
  @override
  String get anime_download_sort_date => 'Ngày đăng';
  @override
  String get anime_download_sort_seeders => 'Người chia sẻ';
  @override
  String get anime_download_sort_size => 'Kích thước';
  @override
  String get anime_download_store_unavailable =>
      'Bộ nhớ kế hoạch tải xuống không khả dụng';
  @override
  String get anime_download_subs_badge => 'Phụ đề';
  @override
  String get anime_download_subs_failed =>
      'Tìm kiếm phụ đề thất bại. Nhấn thử lại.';
  @override
  String get anime_download_subs_need_key =>
      'Nhập khóa API Jimaku ở trên để tìm kiếm phụ đề.';
  @override
  String get anime_download_tasks => 'Tác vụ tải xuống';
  @override
  String get anime_download_title => 'Tải xuống anime';
  @override
  String get anime_download_trusted => 'Tin cậy';
  @override
  String get anime_download_trusted_only => 'Chỉ nguồn tin cậy';
  @override
  String get anki_allow_duplicates => 'Cho phép trùng lặp';
  @override
  String get anki_allow_duplicates_hint =>
      'Bỏ qua kiểm tra trùng lặp khi thêm thẻ';
  @override
  String get anki_card_action_failed =>
      'Thao tác thẻ thất bại. Vui lòng thử lại.';
  @override
  String get anki_compact_glossaries => 'Giải nghĩa thu gọn';
  @override
  String get anki_compact_glossaries_hint =>
      'Dùng định dạng thu gọn cho các mục giải nghĩa';
  @override
  String get anki_connect_api_key => 'Khóa API';
  @override
  String get anki_connect_host => 'Máy chủ';
  @override
  String get anki_connect_port => 'Cổng';
  @override
  String get anki_create_lapis => 'Tạo bộ thẻ Lapis';
  @override
  String get anki_create_lapis_exists =>
      'Loại ghi chú và bộ thẻ Lapis đã có sẵn — đã chọn chúng.';
  @override
  String anki_create_lapis_failed({required Object error}) =>
      'Không thể tạo bộ thẻ Lapis: ${error}';
  @override
  String get anki_create_lapis_hint =>
      'Thêm loại ghi chú Lapis và bộ thẻ Lapis vào Anki, rồi tự chọn chúng.';
  @override
  String get anki_create_lapis_success =>
      'Đã tạo loại ghi chú và bộ thẻ Lapis.';
  @override
  String get anki_deck => 'Bộ thẻ';
  @override
  String get anki_duplicate_scope => 'Phạm vi kiểm tra trùng lặp';
  @override
  String get anki_duplicate_scope_collection => 'Toàn bộ bộ sưu tập';
  @override
  String get anki_duplicate_scope_deck => 'Bộ thẻ đã chọn (và các bộ con)';
  @override
  String get anki_duplicate_scope_deck_root => 'Bộ thẻ gốc (tất cả bộ con)';
  @override
  String get anki_duplicate_scope_hint =>
      'Những bộ thẻ nào được tìm kiếm khi kiểm tra thẻ đã tồn tại. Chỉ AnkiConnect; AnkiDroid luôn tìm trong toàn bộ bộ sưu tập.';
  @override
  String get anki_error_collection_unavailable =>
      'Bộ sưu tập của AnkiDroid hiện không khả dụng. Hãy mở AnkiDroid ít nhất một lần, đảm bảo nó không đang đồng bộ và API đã được bật, rồi thử lại.';
  @override
  String get anki_error_connection_refused =>
      'Không thể kết nối tới Anki: kết nối bị từ chối. Hãy đảm bảo Anki Desktop đang chạy và add-on AnkiConnect đã được cài đặt.';
  @override
  String get anki_error_connection_timeout =>
      'Không thể kết nối tới Anki: kết nối đã hết thời gian chờ. Hãy kiểm tra máy chủ, cổng và cài đặt tường lửa.';
  @override
  String get anki_error_connection_unknown =>
      'Không thể xuất sang Anki: đã xảy ra lỗi kết nối không xác định. Xem nhật ký lỗi để biết chi tiết.';
  @override
  String get anki_error_http =>
      'Không thể xuất sang Anki: đã xảy ra lỗi HTTP khi liên hệ với AnkiConnect.';
  @override
  String get anki_error_permission_denied =>
      'AnkiDroid chưa cấp quyền truy cập thẻ. Chấp nhận hộp thoại quyền hệ thống vừa xuất hiện, sau đó nhấn lại nút để xuất.';
  @override
  String get anki_fetch => 'Làm mới bộ thẻ & loại ghi chú';
  @override
  String get anki_fetching => 'Đang tải…';
  @override
  String get anki_field_mappings => 'Ánh xạ trường';
  @override
  String get anki_field_not_mapped => 'Chưa ánh xạ';
  @override
  String get anki_mine_to_server => 'Gửi thẻ đến thiết bị đã ghép nối';
  @override
  String get anki_mine_to_server_hint =>
      'Gửi thẻ đã khai thác đến Anki của thiết bị chủ đã ghép nối (bộ thẻ và cài đặt của nó) thay vì thiết bị này. Yêu cầu ghép nối kết nối.';
  @override
  String get anki_mined_action_add_duplicate => 'Thêm như thẻ mới';
  @override
  String get anki_mined_action_overwrite => 'Ghi đè thẻ này';
  @override
  String get anki_mined_action_view => 'Xem / mở trong Anki';
  @override
  String get anki_mined_card_subtitle => 'Chọn thao tác với thẻ trùng khớp.';
  @override
  String get anki_mined_card_title => 'Thẻ đã có trong Anki';
  @override
  String anki_mined_multiple_matches({required Object count}) =>
      '${count} thẻ trùng khớp';
  @override
  String get anki_not_configured =>
      'Nhấn Làm mới để tải các bộ thẻ và loại ghi chú Anki của bạn.';
  @override
  String get anki_note_open_failed => 'Không thể mở thẻ trong Anki.';
  @override
  String get anki_note_type => 'Loại ghi chú';
  @override
  String get anki_note_viewer_empty => 'Thẻ này không có trường có thể đọc.';
  @override
  String get anki_note_viewer_open_in_anki => 'Mở trong Anki';
  @override
  String get anki_note_viewer_title => 'Thẻ hiện có';
  @override
  String get anki_open_no_card => 'Không tìm thấy thẻ cho từ này trong Anki.';
  @override
  String get anki_overwrite_scope => 'Phạm vi ghi đè';
  @override
  String get anki_overwrite_scope_all => 'Tất cả thẻ khớp';
  @override
  String get anki_overwrite_scope_hint =>
      'Dấu ✓ xanh có thể ghi đè những thẻ đã tạo nào';
  @override
  String get anki_overwrite_scope_latest => 'Chỉ thẻ mới nhất';
  @override
  String get anki_refresh_hint =>
      'Sau khi tạo hoặc đổi tên bộ thẻ hay loại ghi chú trong Anki, nhấn vào đây để làm mới.';
  @override
  String anki_select_handlebar({required Object field}) =>
      'Chọn giá trị cho ${field}';
  @override
  String get anki_settings_label => 'Cài đặt Anki';
  @override
  String get anki_tag_default_section => 'Thẻ mặc định';
  @override
  String get anki_tag_include_category => 'Thêm thẻ phân loại nguồn';
  @override
  String get anki_tag_include_category_hint =>
      'Sách gắn "book", video gắn "video", trò chơi gắn "game"';
  @override
  String get anki_tag_include_fushi => 'Thêm thẻ "fushi"';
  @override
  String get anki_tag_include_fushi_hint =>
      'Đánh dấu mọi thẻ được tạo bởi Fushi';
  @override
  String get anki_tags => 'Thẻ tag';
  @override
  String get anki_tags_hint =>
      'Các tag cách nhau bằng dấu cách, thêm vào mỗi thẻ';
  @override
  String get app_icon_label => 'Biểu tượng ứng dụng';
  @override
  String get app_icon_presets => 'Mẫu có sẵn';
  @override
  String get app_ui_scale => 'Cỡ giao diện';
  @override
  String get app_ui_scale_hint =>
      'Scales app text and spacing. Lower it on large screens if controls feel oversized.';
  @override
  String get app_version => 'Phiên bản ứng dụng';
  @override
  String get apply_theme => 'Áp dụng giao diện';
  @override
  String get audio_clip_failed =>
      'Không thể trích đoạn âm thanh — nguồn âm thanh có thể bị thiếu hoặc không đọc được';
  @override
  String get audio_import => 'Nhập âm thanh';
  @override
  String get audio_panel_add_audio => 'Thêm âm thanh';
  @override
  String get audio_panel_auto => 'Tự động';
  @override
  String get audio_panel_pick_new_subtitle => 'Chọn tệp phụ đề mới';
  @override
  String get audio_source_added => 'Đã thêm nguồn âm thanh';
  @override
  String audio_source_dns_error({required Object host}) =>
      'Kết nối nguồn âm thanh thất bại: không thể phân giải "${host}" — kiểm tra mạng hoặc xóa nguồn này trong cài đặt';
  @override
  String get audio_source_edit_target_gone =>
      'Nguồn âm thanh đó không còn tồn tại — đã hủy chỉnh sửa';
  @override
  String get audio_source_edit_url => 'Sửa liên kết nguồn âm thanh';
  @override
  String audio_source_error({required Object detail}) =>
      'Lỗi nguồn âm thanh: ${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi Interconnect';
  @override
  String get audio_source_loopback_warning =>
      'Đang trỏ đến thiết bị này — hãy chỉnh lại sau khi đổi máy';
  @override
  String audio_source_request_error({required Object detail}) =>
      'Yêu cầu nguồn âm thanh thất bại: ${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      'Hết thời gian nguồn âm thanh: "${host}" — máy chủ không phản hồi, thử lại sau hoặc thay đổi nguồn';
  @override
  String get audio_source_updated => 'Đã cập nhật nguồn âm thanh';
  @override
  String get audio_source_url_invalid =>
      'Liên kết phải là http(s) và chứa placeholder cho từ hoặc cách đọc';
  @override
  String get audio_unavailable => 'Không tìm thấy âm thanh.';
  @override
  String get audio_volume => 'Âm lượng';
  @override
  String get audiobook_attached => 'Đã gắn sách nói';
  @override
  String get audiobook_audio_missing => 'Thiếu tệp âm thanh';
  @override
  String get audiobook_background_play => 'Tiếp tục phát sau khi thoát';
  @override
  String get audiobook_background_play_hint =>
      'Khi tắt, sách nói sẽ dừng phát khi bạn rời trình đọc. Bật để tiếp tục phát ở chế độ nền.';
  @override
  String get audiobook_export_clip => 'Xuất clip video';
  @override
  String get audiobook_export_clip_failed => 'Xuất clip thất bại';
  @override
  String get audiobook_export_clip_in_progress => 'Đang xuất clip…';
  @override
  String get audiobook_export_clip_no_selection =>
      'Chọn văn bản trước để xuất clip';
  @override
  String get audiobook_export_clip_no_text =>
      'Vùng chọn này không có văn bản để hiển thị';
  @override
  String get audiobook_export_clip_saved => 'Đã lưu clip';
  @override
  String get audiobook_export_clip_unsupported_range =>
      'Không thể xuất vùng chọn này (vượt qua chương hoặc tệp âm thanh)';
  @override
  String get audiobook_import => 'Nhập sách nói';
  @override
  String get audiobook_import_error => 'Nhập thất bại';
  @override
  String audiobook_import_error_copy_failed({required Object name}) =>
      'Sao chép tệp thất bại: ${name}';
  @override
  String audiobook_import_error_disk_full({required Object size}) =>
      'Không đủ dung lượng đĩa. Cần: ${size}';
  @override
  String get audiobook_import_success => 'Đã nhập sách nói';
  @override
  String get audiobook_load_error => 'Tải sách nói thất bại.';
  @override
  String get audiobook_pick_alignment => 'Chọn tệp căn chỉnh';
  @override
  String get audiobook_reference_original => 'Tham chiếu tệp gốc';
  @override
  String get audiobook_reference_original_desc =>
      'Giữ âm thanh tại chỗ và phát từ đường dẫn gốc; sách sẽ hỏng nếu tệp bị di chuyển hoặc xóa.';
  @override
  String get audiobook_relocate => 'Di chuyển tệp';
  @override
  String get audiobook_relocate_done => 'Đã di chuyển âm thanh';
  @override
  String get auto_add_book_name_to_tags => 'Tự thêm tên sách vào tag';
  @override
  String auto_chapter({required Object n}) => 'Chương ${n}';
  @override
  String get auto_read_on_lookup => 'Tự đọc từ khi tra cứu';
  @override
  String get auto_search => 'Tự động tìm kiếm';
  @override
  String get auto_search_debounce_delay => 'Độ trễ tìm kiếm tự động';
  @override
  String get auto_select_search_window => 'Tự động chọn cửa sổ tìm kiếm';
  @override
  String get auto_select_search_window_hint =>
      'Thử nhiều kích thước cửa sổ khi nhập, chọn cửa sổ có tỷ lệ khớp tốt nhất';
  @override
  String get av_sync => 'Đồng bộ A/V';
  @override
  String get av_sync_reset => 'Đặt lại';
  @override
  String get back => 'Quay lại';
  @override
  String get background_color => 'Màu nền';
  @override
  String get background_color_desc => 'Nền trang đọc';
  @override
  String get backup_category_audiobooks => 'Âm thanh sách nói';
  @override
  String get backup_category_audiobooks_desc =>
      'Âm thanh và căn chỉnh sách nói';
  @override
  String get backup_category_books => 'Nội dung sách';
  @override
  String get backup_category_books_desc =>
      'Tệp sách (EPUB và nội dung đã giải nén)';
  @override
  String get backup_category_dictionary => 'Từ điển';
  @override
  String get backup_category_dictionary_desc =>
      'Từ điển đã nhập và tệp của chúng';
  @override
  String get backup_category_fonts => 'Phông tùy chỉnh';
  @override
  String get backup_category_fonts_desc => 'Tệp phông chữ tùy chỉnh đã nhập';
  @override
  String get backup_category_local_audio => 'Cơ sở dữ liệu âm thanh cục bộ';
  @override
  String get backup_category_local_audio_desc =>
      'Cơ sở dữ liệu âm thanh phát âm cục bộ';
  @override
  String get backup_category_profiles => 'Hồ sơ';
  @override
  String get backup_category_profiles_desc => 'Hồ sơ cấu hình';
  @override
  String get backup_category_progress => 'Tiến độ đọc';
  @override
  String get backup_category_progress_desc => 'Vị trí đọc và đánh dấu';
  @override
  String get backup_category_settings => 'Cài đặt';
  @override
  String get backup_category_settings_desc => 'Cài đặt ứng dụng và trình đọc';
  @override
  String get backup_category_statistics => 'Thống kê';
  @override
  String get backup_category_statistics_desc =>
      'Thống kê đọc, video và khai thác thẻ';
  @override
  String get backup_category_videos => 'Video';
  @override
  String get backup_category_videos_desc => 'Tệp video cục bộ';
  @override
  String get backup_export => 'Xuất bản sao lưu';
  @override
  String get backup_export_books_all => 'Tất cả sách';
  @override
  String backup_export_books_selected({required Object count}) =>
      'Đã chọn ${count} cuốn sách';
  @override
  String get backup_export_categories_hint =>
      'Chọn nội dung cần đưa vào bản sao lưu. Bỏ chọn Sách sẽ xóa hoàn toàn những cuốn sách đó — nội dung và bản ghi đi kèm.';
  @override
  String get backup_export_categories_title => 'Chọn nội dung để xuất';
  @override
  String get backup_export_choose_books => 'Chọn sách';
  @override
  String get backup_export_choose_videos => 'Chọn video';
  @override
  String backup_export_failed({required Object message}) =>
      'Xuất bản sao lưu thất bại: ${message}';
  @override
  String get backup_export_hint =>
      'Chọn nội dung muốn đưa vào; cơ sở dữ liệu (sách, tiến độ, thống kê) luôn được đưa vào. Bỏ chọn các mục lớn (âm thanh cục bộ, video) để giảm dung lượng bản sao lưu.';
  @override
  String get backup_export_no_books => 'Không có sách để chọn';
  @override
  String get backup_export_no_videos => 'Không có video để chọn';
  @override
  String get backup_export_select_all => 'Chọn tất cả';
  @override
  String get backup_export_select_none => 'Bỏ chọn tất cả';
  @override
  String get backup_export_success => 'Đã xuất bản sao lưu thành công';
  @override
  String get backup_export_videos_all => 'Tất cả video';
  @override
  String backup_export_videos_selected({required Object count}) =>
      'Đã chọn ${count} video';
  @override
  String get backup_exporting => 'Đang tạo bản sao lưu…';
  @override
  String get backup_import => 'Nhập bản sao lưu';
  @override
  String backup_import_confirm({
    required Object date,
    required Object bookCount,
    required Object statsCount,
  }) =>
      'Thao tác này sẽ thay thế toàn bộ dữ liệu hiện tại bằng bản sao lưu từ ${date}.\n\n${bookCount} sách, ${statsCount} bản ghi thống kê.\n\nỨng dụng sẽ khởi động lại sau khi khôi phục.';
  @override
  String get backup_import_confirm_title => 'Khôi phục bản sao lưu?';
  @override
  String get backup_import_contents_hint => 'Bỏ chọn mục để bỏ qua.';
  @override
  String get backup_import_contents_title => 'Bản sao lưu này chứa';
  @override
  String backup_import_failed({required Object message}) =>
      'Nhập bản sao lưu thất bại: ${message}';
  @override
  String get backup_import_hint =>
      'Khôi phục từ tệp sao lưu. Ứng dụng sẽ khởi động lại.';
  @override
  String get backup_import_invalid => 'Tệp sao lưu không hợp lệ';
  @override
  String backup_import_merge_preview({
    required Object bookCount,
    required Object progressCount,
  }) =>
      'Hợp nhất sẽ thêm ${bookCount} cuốn sách và cập nhật ${progressCount} vị trí đọc.';
  @override
  String get backup_import_mode_label => 'Chế độ nhập';
  @override
  String get backup_import_mode_merge => 'Hợp nhất vào thư viện hiện tại';
  @override
  String get backup_import_mode_overwrite => 'Ghi đè toàn bộ thư viện';
  @override
  String get backup_import_overlay_title => 'Đang nhập bản sao lưu';
  @override
  String get backup_import_overlay_warning =>
      'Đang khôi phục dữ liệu. Vui lòng không đóng ứng dụng.';
  @override
  String get backup_import_preserve_sync_note =>
      'Cài đặt đồng bộ trên thiết bị này (tài khoản và thông tin đăng nhập) sẽ được giữ lại.';
  @override
  String get backup_import_restart_button => 'Khởi động lại ngay';
  @override
  String get backup_import_settings_off_hint =>
      'Giữ phông chữ/giao diện/hồ sơ của thiết bị này; chỉ khôi phục sách & dữ liệu đọc.';
  @override
  String get backup_import_settings_on_hint =>
      'Khôi phục đầy đủ: phông chữ, giao diện và hồ sơ lấy từ bản sao lưu.';
  @override
  String get backup_import_settings_toggle => 'Nhập cài đặt & hồ sơ';
  @override
  String get backup_import_success =>
      'Đã khôi phục bản sao lưu. Đang khởi động lại…';
  @override
  String get backup_import_validating_hint =>
      'Đang kiểm tra và xem trước tệp sao lưu. Có thể mất một lúc.';
  @override
  String get backup_import_validating_title => 'Đang đọc bản sao lưu…';
  @override
  String backup_schema_newer({required Object version}) =>
      'Bản sao lưu này cần phiên bản ứng dụng mới hơn (schema ${version}). Vui lòng cập nhật trước.';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      'Đã thêm ${n} mục vào bộ sưu tập.';
  @override
  String batch_delete_confirm({required Object n}) =>
      'Xóa ${n} cuốn sách? Thao tác này không thể hoàn tác.';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      'Xóa ${n} video? Thao tác này không thể hoàn tác.';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      'Xóa ${n} mục media và giải tán ${m} bộ sưu tập? Thao tác này không thể hoàn tác.';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      'Đã xóa ${n} mục media, giải tán ${m} bộ sưu tập.';
  @override
  String batch_delete_success({required Object n}) => 'Đã xóa ${n} cuốn sách.';
  @override
  String batch_delete_success_video({required Object n}) =>
      'Đã xóa ${n} video.';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      'Giải tán ${m} bộ sưu tập? Nhóm bị xóa; nội dung được giữ lại.';
  @override
  String batch_dissolve_success({required Object m}) =>
      'Đã giải tán ${m} bộ sưu tập.';
  @override
  String get batch_invert_selection => 'Đảo ngược';
  @override
  String get batch_select => 'Chọn';
  @override
  String get batch_select_all => 'Tất cả';
  @override
  String batch_selected_count({required Object n}) => 'Đã chọn ${n}';
  @override
  String get batch_tag_add => 'Thêm';
  @override
  String batch_tag_added({required Object name, required Object n}) =>
      'Đã thêm thẻ "${name}" vào ${n} cuốn sách.';
  @override
  String batch_tag_added_video({required Object name, required Object n}) =>
      'Đã thêm nhãn "${name}" cho ${n} video.';
  @override
  String get batch_tag_apply => 'Áp dụng';
  @override
  String get batch_tag_keep => 'Giữ';
  @override
  String get batch_tag_remove => 'Xóa';
  @override
  String batch_tag_removed({required Object name, required Object n}) =>
      'Đã xóa thẻ "${name}" khỏi ${n} cuốn sách.';
  @override
  String batch_tag_removed_video({required Object name, required Object n}) =>
      'Đã xóa nhãn "${name}" khỏi ${n} video.';
  @override
  String get batch_tag_title => 'Quản lý thẻ';
  @override
  String get book_continue_reading => 'Continue Reading';
  @override
  String get book_css_editor_cancel => 'Hủy';
  @override
  String get book_css_editor_confirm_reset =>
      'Đặt lại CSS của tệp này về mặc định?';
  @override
  String get book_css_editor_confirm_reset_all =>
      'Đặt lại CSS của TẤT CẢ tệp về mặc định?';
  @override
  String get book_css_editor_discard => 'Bỏ';
  @override
  String get book_css_editor_edit_css => 'Sửa CSS sách';
  @override
  String get book_css_editor_no_css_files =>
      'Không tìm thấy tệp CSS trong sách này.';
  @override
  String get book_css_editor_no_extract_dir =>
      'Không tìm thấy thư mục sách. Nhập lại sách để sửa CSS.';
  @override
  String get book_css_editor_reset_all => 'Đặt lại tất cả';
  @override
  String get book_css_editor_reset_current => 'Đặt lại hiện tại';
  @override
  String get book_css_editor_reset_done => 'Đã đặt lại CSS.';
  @override
  String get book_css_editor_save => 'Lưu';
  @override
  String get book_css_editor_saved => 'Đã lưu CSS.';
  @override
  String get book_css_editor_title => 'Trình sửa CSS sách';
  @override
  String get book_css_editor_unsaved_changes => 'Thay đổi chưa lưu';
  @override
  String get book_css_editor_unsaved_changes_message =>
      'Bạn có thay đổi chưa lưu. Bỏ qua chúng?';
  @override
  String get book_directory_not_found => 'Không tìm thấy thư mục sách.';
  @override
  String get book_edit_author => 'Tác giả';
  @override
  String get book_file_not_found => 'Không tìm thấy tệp sách';
  @override
  String get book_import_duplicate_cancel => 'Không, hủy';
  @override
  String get book_import_duplicate_cancelled => 'Đã hủy nhập';
  @override
  String get book_import_duplicate_keep => 'Có, thêm hậu tố';
  @override
  String book_import_duplicate_message({required Object name}) =>
      'Đã có sách tên "${name}". Vẫn nhập? "Có" sẽ nhập với hậu tố đánh số; "Không" sẽ hủy.';
  @override
  String get book_import_duplicate_title => 'Sách trùng lặp';
  @override
  String get book_mark_completed_action => 'Đánh dấu đã hoàn thành';
  @override
  String get book_mark_uncompleted_action => 'Đánh dấu chưa hoàn thành';
  @override
  String get book_marked_completed => 'Đã đánh dấu hoàn thành';
  @override
  String get book_marked_uncompleted => 'Đã đánh dấu chưa hoàn thành';
  @override
  String get book_mode => 'Chế độ sách';
  @override
  String book_read_progress({required Object percent}) => 'Đã đọc ${percent}%';
  @override
  String get book_scrape_cover => 'Tìm bìa trực tuyến';
  @override
  String get book_scrape_empty => 'Không tìm thấy bìa phù hợp';
  @override
  String get book_scrape_failed => 'Không thể tải bìa';
  @override
  String get book_scrape_hint => 'Tên sách / tác giả';
  @override
  String get book_scrape_search => 'Tìm kiếm';
  @override
  String get book_scrape_search_failed =>
      'Tìm kiếm thất bại. Nhấn Tìm kiếm để thử lại.';
  @override
  String get book_scrape_title => 'Tìm bìa trực tuyến';
  @override
  String get book_scrape_use => 'Sử dụng';
  @override
  String get book_search => 'Tìm trong sách';
  @override
  String get book_search_hint => 'Nhập nội dung tìm kiếm…';
  @override
  String get book_search_no_results => 'Không tìm thấy kết quả';
  @override
  String book_search_results({required Object n}) => '${n} kết quả';
  @override
  String get books => 'Sách';
  @override
  String get browser_extension_enable_server_first =>
      'Mẹo: bật "Máy chủ API Yomitan" và đặt khóa API ở trên trước, để tiện ích mở rộng được tự động cấu hình với kết nối hoạt động.';
  @override
  String get browser_extension_mobile_unsupported =>
      'Trình duyệt di động không thể tải tiện ích này. Thay vào đó, hãy dùng tra cứu trong ứng dụng ở trình đọc hoặc trình phát video.';
  @override
  String get browser_extension_page_intro =>
      'Trên máy tính, tra từ, phân tích phụ đề và tạo thẻ ngay trong Chrome hoặc Edge. Chuẩn bị tiện ích mở rộng bên dưới, sau đó tải vào trình duyệt.';
  @override
  String get browser_extension_prepare_button =>
      'Chuẩn bị tệp tiện ích mở rộng';
  @override
  String get browser_extension_prepare_hint =>
      'Khởi động máy chủ tra cứu và giải nén tiện ích mở rộng cục bộ; đường dẫn thư mục được sao chép vào bộ nhớ tạm.';
  @override
  String get browser_extension_reinstall_button => 'Chuẩn bị lại / làm mới tệp';
  @override
  String get browser_extension_server_off => 'Máy chủ tra cứu tắt';
  @override
  String get browser_extension_server_on => 'Máy chủ tra cứu bật';
  @override
  String get browser_extension_status_connected =>
      'Tiện ích mở rộng đã kết nối';
  @override
  String get browser_extension_status_never =>
      'Chưa phát hiện tiện ích mở rộng';
  @override
  String get browser_extension_step_dev_mode =>
      'Bật "Chế độ nhà phát triển" (nút gạt ở góc trên bên phải).';
  @override
  String get browser_extension_step_done_auto =>
      'Xong. Tiện ích mở rộng đã được thiết lập để kết nối với Fushi tra cứu — không cần điền thủ công.';
  @override
  String get browser_extension_step_load_unpacked =>
      'Nhấp "Tải tiện ích đã giải nén".';
  @override
  String get browser_extension_step_open_page =>
      'Mở trang tiện ích mở rộng của trình duyệt:';
  @override
  String get browser_extension_step_pick_folder =>
      'Chọn thư mục tiện ích mở rộng bên dưới (đường dẫn đã được sao chép vào bộ nhớ tạm).';
  @override
  String get browser_extension_step_verify =>
      'Xác nhận tiện ích mở rộng đã được tải và kết nối';
  @override
  String get browser_extension_verify_button => 'Kiểm tra kết nối';
  @override
  String get browser_extension_verify_checking => 'Đang kiểm tra…';
  @override
  String get browser_extension_verify_connected =>
      'Đã phát hiện và kết nối tiện ích mở rộng.';
  @override
  String get browser_extension_verify_not_detected =>
      'Chưa phát hiện tiện ích mở rộng. Đảm bảo tiện ích đã được tải và bật trong trình duyệt, sau đó kiểm tra lại.';
  @override
  String get browser_extension_version_app => 'Phiên bản đi kèm ứng dụng';
  @override
  String get browser_extension_version_browser => 'Đã tải trong trình duyệt';
  @override
  String get browser_extension_version_label => 'Phiên bản tiện ích mở rộng';
  @override
  String get browser_extension_version_mismatch =>
      'Tiện ích mở rộng trong trình duyệt đã lỗi thời. Chuẩn bị lại tiện ích nếu cần, sau đó tải lại từ trang tiện ích mở rộng của trình duyệt (chrome://extensions).';
  @override
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      'Cổng ${port} đang được sử dụng bởi tiến trình khác (thường là thành phần yomitan-api — một tiến trình Python được trình duyệt khởi chạy). Kết thúc tiến trình đó, hoặc tắt Yomitan API trong cài đặt nâng cao của Yomitan, sau đó bật lại máy chủ Yomitan API trong Fushi.';
  @override
  String get cancel => 'Hủy';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      'Bìa thẻ đã chuyển về ảnh tĩnh (clip động không khả dụng): ${reason}';
  @override
  String get card_duplicate => 'Thẻ trùng lặp — không xuất.';
  @override
  String get card_export_failed => 'Xuất thẻ thất bại.';
  @override
  String card_export_failed_detail({required Object reason}) =>
      'Xuất thẻ thất bại: ${reason}';
  @override
  String get card_export_not_configured =>
      'Anki chưa cấu hình. Mở cài đặt Anki và nhấn Tải.';
  @override
  String card_exported({required Object deck}) => 'Thẻ đã xuất sang 『${deck}』.';
  @override
  String card_exported_audio_failed({required Object reason}) =>
      'Đã xuất thẻ, nhưng tải âm thanh thất bại (${reason}).';
  @override
  String get card_mined_no_sentence_captured =>
      'Đã tạo thẻ, nhưng không có câu nào được ghi lại (chọn lại từ, hoặc văn bản này không có câu nhận dạng được).';
  @override
  String get card_mined_unmapped_sentence_audio_field =>
      'Đã tạo thẻ có âm thanh câu, nhưng loại ghi chú Anki của bạn không có trường ánh xạ cho nó. Ánh xạ một trường đến {sentence-audio}.';
  @override
  String get card_mined_unmapped_sentence_field =>
      'Đã tạo thẻ, nhưng loại ghi chú Anki của bạn không có trường ánh xạ cho câu. Sử dụng Cài đặt -> \'Tạo bộ thẻ Lapis\' hoặc ánh xạ một trường đến {sentence}.';
  @override
  String get card_mined_without_sentence_audio =>
      'Đã tạo thẻ nhưng không có âm thanh câu (không tìm thấy cho vùng chọn này).';
  @override
  String get card_mining_pending => 'Đang thêm thẻ…';
  @override
  String card_overwritten({required Object deck}) =>
      'Đã ghi đè thẻ trong 『${deck}』.';
  @override
  String get change_source => 'Đổi nguồn';
  @override
  String get changelog_empty =>
      'Không tìm thấy nhật ký thay đổi. Kiểm tra mạng hoặc cài đặt proxy.';
  @override
  String get changelog_open_releases => 'Mở trang phát hành';
  @override
  String get changelog_prerelease => 'Phiên bản thử nghiệm';
  @override
  String chapter_progress({
    required Object idx,
    required Object total,
    required Object suffix,
    required Object pct,
  }) => 'Chương ${idx} / ${total}${suffix} · ${pct}%';
  @override
  String get clear => 'Xóa';
  @override
  String get clear_dictionary_description =>
      'Thao tác này sẽ xóa tất cả kết quả tra cứu trong lịch sử. Bạn có chắc chắn?';
  @override
  String get clear_dictionary_title => 'Xóa lịch sử tra cứu từ điển';
  @override
  String get lookup_block_capture => 'Chặn chụp màn hình';
  @override
  String get lookup_block_capture_hint =>
      'Loại trừ cửa sổ tra cứu và bộ nhớ tạm khỏi chụp màn hình, quay màn hình và phát trực tiếp (Windows). Tắt để cho phép chụp, quay và phát trực tiếp ghi lại cửa sổ tra cứu.';
  @override
  String get collapse_dictionaries => 'Thu gọn từ điển';
  @override
  String get collection_bookmark => 'Đánh dấu';
  @override
  String get collection_clear_confirm =>
      'Xóa vĩnh viễn các bộ sưu tập đã chọn? Thao tác này không thể hoàn tác.';
  @override
  String get collection_clear_scope => 'Phạm vi xóa';
  @override
  String get collection_collapse => 'Thu gọn';
  @override
  String collection_continue_progress({required Object n}) =>
      'Tiếp tục · Tập ${n}';
  @override
  String get collection_empty => 'Bộ sưu tập trống';
  @override
  String get collection_expand => 'Mở rộng';
  @override
  String get collection_export_all_books => 'Tất cả sách';
  @override
  String get collection_export_all_mined => 'Tất cả câu đã khai thác';
  @override
  String get collection_export_all_words => 'Tất cả từ yêu thích';
  @override
  String get collection_export_dedupe => 'Loại trùng theo câu';
  @override
  String get collection_export_failed => 'Xuất thất bại';
  @override
  String get collection_export_favorites_scope => 'Câu yêu thích';
  @override
  String get collection_export_format => 'Định dạng';
  @override
  String get collection_export_mined_title => 'Mined Sentences';
  @override
  String get collection_export_no_items => 'Không có gì để xuất';
  @override
  String get collection_export_pick_book => 'Chọn sách';
  @override
  String get collection_export_save => 'Save Export';
  @override
  String get collection_export_saved => 'Đã lưu xuất';
  @override
  String get collection_export_scope => 'Phạm vi xuất';
  @override
  String get collection_export_sentences_title => 'Favorite Sentences';
  @override
  String get collection_export_words_title => 'Favorite Words';
  @override
  String get collection_loading_hint =>
      'Đang tải bộ sưu tập và khớp tệp âm thanh…';
  @override
  String get collection_member_removed => 'Đã xóa khỏi bộ sưu tập';
  @override
  String get collection_merge_title => 'Hợp nhất bộ sưu tập';
  @override
  String get collection_merged => 'Đã hợp nhất bộ sưu tập.';
  @override
  String get collection_mined => 'Câu đã tạo thẻ';
  @override
  String get collection_open => 'Mở';
  @override
  String get collection_play => 'Phát';
  @override
  String get collection_remove_member => 'Xóa khỏi bộ sưu tập';
  @override
  String get collection_remove_member_confirm =>
      'Xóa mục này khỏi bộ sưu tập? Bản thân mục vẫn được giữ lại.';
  @override
  String get collection_sentence => 'Câu';
  @override
  String get collection_sort_by_imported => 'Sắp xếp theo ngày nhập';
  @override
  String get collection_sort_by_title => 'Sắp xếp theo tên';
  @override
  String get collection_view_all => 'Xem tất cả';
  @override
  String collection_watched_progress({
    required Object done,
    required Object total,
  }) => 'Đã xem ${done}/${total}';
  @override
  String get collection_word => 'Từ';
  @override
  String get collections => 'Bộ sưu tập';
  @override
  String get color_container => 'Vùng chứa';
  @override
  String get color_container_desc => 'Chuyển bản nhạc, nền thanh phát';
  @override
  String get color_link => 'Màu liên kết';
  @override
  String get color_link_desc => 'Màu siêu liên kết trong trình đọc';
  @override
  String get color_primary => 'Chính';
  @override
  String get color_primary_desc => 'Đánh dấu âm thanh, nút, công tắc';
  @override
  String get color_sentence_audio_highlight => 'Tô sáng âm thanh';
  @override
  String get color_sentence_audio_highlight_desc =>
      'Tô sáng đồng bộ phụ đề sách nói';
  @override
  String get color_secondary => 'Phụ';
  @override
  String get color_secondary_desc => 'Mục từ điển, huy hiệu giá sách';
  @override
  String get color_tertiary => 'Cấp ba';
  @override
  String get color_tertiary_desc => 'Bộ sưu tập, thống kê đọc';
  @override
  String get columns_per_page => 'Số cột mỗi trang';
  @override
  String get combine_into_series => 'Gộp thành series';
  @override
  String get copied => 'Đã sao chép';
  @override
  String get copied_to_clipboard => 'Đã sao chép.';
  @override
  String get copy => 'Sao chép';
  @override
  String get copy_error => 'Sao chép lỗi';
  @override
  String get crash_dump_empty => 'Không có bản kết xuất sự cố';
  @override
  String crash_dump_label({required Object n}) => 'Bản kết xuất sự cố (${n})';
  @override
  String get crash_dump_open_folder => 'Mở thư mục kết xuất';
  @override
  String get crash_dump_privacy_notice =>
      'Các bản kết xuất sự cố (.dmp) chứa ảnh chụp bộ nhớ tiến trình và có thể gồm văn bản bạn đang đọc, các từ bạn đã tra hoặc dữ liệu khác trong ứng dụng. Chỉ chia sẻ với những nhà phát triển bạn tin tưởng.';
  @override
  String get crash_dump_share => 'Chia sẻ bản kết xuất';
  @override
  String get crash_dump_share_subject => 'Bản kết xuất sự cố Fushi';
  @override
  String get create_series => 'Tạo series';
  @override
  String get creator_action_add_to_stash => 'Thêm vào kho lưu';
  @override
  String get creator_action_copy_to_clipboard => 'Sao chép vào bộ nhớ tạm';
  @override
  String get creator_action_play_audio => 'Phát âm thanh';
  @override
  String get creator_action_share => 'Chia sẻ';
  @override
  String get creator_enhancement_audio_recorder => 'Ghi âm';
  @override
  String get creator_enhancement_camera => 'Máy ảnh';
  @override
  String get creator_enhancement_clear_field => 'Xóa trường';
  @override
  String get creator_enhancement_crop_image => 'Cắt ảnh';
  @override
  String get creator_enhancement_local_audio => 'Âm thanh cục bộ';
  @override
  String get creator_enhancement_open_stash => 'Mở kho lưu';
  @override
  String get creator_enhancement_pick_audio => 'Chọn âm thanh';
  @override
  String get creator_enhancement_pick_image => 'Chọn hình ảnh';
  @override
  String get creator_enhancement_pop_from_stash => 'Lấy từ kho lưu';
  @override
  String get creator_enhancement_save_tags => 'Lưu thẻ';
  @override
  String get creator_enhancement_search_dictionary => 'Tra từ điển';
  @override
  String get creator_enhancement_sentence_picker => 'Chọn câu';
  @override
  String get creator_enhancement_text_segmentation => 'Phân đoạn văn bản';
  @override
  String get creator_export_card => 'Tạo thẻ';
  @override
  String get creator_field_audio => 'Âm thanh từ';
  @override
  String get creator_field_audio_sentence => 'Âm thanh câu';
  @override
  String get creator_field_cloze_after => 'Sau chỗ trống';
  @override
  String get creator_field_cloze_before => 'Trước chỗ trống';
  @override
  String get creator_field_cloze_inside => 'Nội dung chỗ trống';
  @override
  String get creator_field_collapsed_meaning => 'Nghĩa thu gọn';
  @override
  String get creator_field_context => 'Ngữ cảnh';
  @override
  String get creator_field_cue_sentence => 'Câu phụ đề';
  @override
  String get creator_field_expanded_meaning => 'Nghĩa mở rộng';
  @override
  String get creator_field_frequency => 'Tần suất';
  @override
  String get creator_field_furigana => 'Furigana';
  @override
  String get creator_field_hidden_meaning => 'Nghĩa ẩn';
  @override
  String get creator_field_image => 'Hình ảnh';
  @override
  String get creator_field_meaning => 'Nghĩa';
  @override
  String get creator_field_notes => 'Ghi chú';
  @override
  String get creator_field_pitch_accent => 'Trọng âm';
  @override
  String get creator_field_reading => 'Cách đọc';
  @override
  String get creator_field_sentence => 'Câu ví dụ';
  @override
  String get creator_field_tags => 'Thẻ';
  @override
  String get creator_field_term => 'Từ vựng';
  @override
  String get custom_dict_css => 'CSS tùy chỉnh';
  @override
  String get custom_dict_css_global => 'Toàn cục (tất cả từ điển)';
  @override
  String get custom_fonts => 'Phông chữ tùy chỉnh';
  @override
  String get custom_fonts_add_system => 'Thêm phông hệ thống';
  @override
  String get custom_fonts_archive_error => 'Không thể giải nén tệp';
  @override
  String get custom_fonts_catalog_title => 'Thư viện phông';
  @override
  String get custom_fonts_download_failed => 'Tải xuống thất bại';
  @override
  String get custom_fonts_downloading => 'Đang tải…';
  @override
  String get custom_fonts_drag_hint =>
      'Kéo để sắp xếp thứ tự ưu tiên phông chữ';
  @override
  String get custom_fonts_empty => 'Chưa thêm phông chữ tùy chỉnh';
  @override
  String get custom_fonts_font_roles => 'Vai trò phông chữ';
  @override
  String get custom_fonts_import_file => 'Nhập tệp phông chữ';
  @override
  String get custom_fonts_import_url => 'Nhập từ URL';
  @override
  String custom_fonts_imported_count({required Object count}) =>
      'Đã nhập ${count} phông chữ';
  @override
  String get custom_fonts_manage => 'Quản lý phông chữ';
  @override
  String get custom_fonts_no_fonts_in_archive =>
      'Không tìm thấy tệp phông chữ trong tệp nén';
  @override
  String get custom_fonts_recommended => 'Phông chữ đề xuất';
  @override
  String get custom_fonts_removed => 'Đã xóa phông chữ';
  @override
  String get custom_fonts_search_hint => 'Tìm phông chữ';
  @override
  String get custom_theme => 'Giao diện tùy chỉnh';
  @override
  String custom_theme_default_name({required Object n}) => 'Tùy chỉnh ${n}';
  @override
  String get custom_theme_long_press_hint =>
      'Nhấn để chuyển · nhấn giữ để chỉnh sửa';
  @override
  String get custom_theme_name => 'Tên';
  @override
  String get dark_mode => 'Chế độ tối';
  @override
  String get dark_mode_dark => 'Tối';
  @override
  String get dark_mode_light => 'Sáng';
  @override
  String get dark_mode_system => 'Hệ thống';
  @override
  String data_root_unavailable_message({required Object path}) =>
      'Vị trí dữ liệu đã cấu hình ${path} tạm thời không thể truy cập (ổ đĩa có thể đang ngủ, bận hoặc ngắt kết nối). Dữ liệu của bạn vẫn an toàn và nguyên vẹn ở đó — không mất gì. Nhấn Thử lại khi ổ đĩa sẵn sàng để tải dữ liệu, hoặc bắt đầu với vị trí mặc định (dữ liệu hiện có KHÔNG bị thay đổi).';
  @override
  String get data_root_unavailable_title => 'Vị trí dữ liệu không phản hồi';
  @override
  String get data_root_use_default_button => 'Bắt đầu với vị trí mặc định';
  @override
  String get data_storage_change_button => 'Thay đổi vị trí';
  @override
  String get data_storage_change_confirm_body =>
      'Fushi sẽ di chuyển toàn bộ dữ liệu sang thư mục mới và khởi động lại. Không đóng ứng dụng trong khi di chuyển.';
  @override
  String get data_storage_change_confirm_title =>
      'Thay đổi vị trí lưu trữ dữ liệu?';
  @override
  String get data_storage_location_default => 'Vị trí mặc định';
  @override
  String get data_storage_location_hint =>
      'Nơi Fushi lưu trữ thư viện, sách nói và cơ sở dữ liệu. Chỉ trên máy tính.';
  @override
  String get data_storage_location_title => 'Vị trí lưu trữ dữ liệu';
  @override
  String data_storage_migrate_failed({required Object message}) =>
      'Không thể di chuyển dữ liệu: ${message}';
  @override
  String get data_storage_migrate_failed_restart => 'Khởi động lại';
  @override
  String get data_storage_migrate_failed_suggestions =>
      'Vui lòng thử lại với thư mục khác trống. Không chọn thư mục cài đặt ứng dụng, và đảm bảo không có tệp nào trong vị trí đó đang được sử dụng.';
  @override
  String get data_storage_migrate_failed_title => 'Di chuyển dữ liệu thất bại';
  @override
  String data_storage_migrate_overlay_progress({
    required Object copied,
    required Object total,
  }) => 'Đang sao chép tệp: ${copied} / ${total}';
  @override
  String get data_storage_migrate_overlay_title => 'Đang di chuyển dữ liệu';
  @override
  String get data_storage_migrate_overlay_warning =>
      'Vui lòng giữ ứng dụng mở. Không đóng hoặc tắt máy tính cho đến khi hoàn tất.';
  @override
  String get data_storage_migrate_success =>
      'Đã di chuyển dữ liệu. Đang khởi động lại…';
  @override
  String get data_storage_migrating => 'Đang di chuyển dữ liệu…';
  @override
  String get data_storage_reject_install_dir =>
      'Thư mục đó là vị trí cài đặt ứng dụng và không thể lưu trữ dữ liệu. Vui lòng chọn thư mục khác trống.';
  @override
  String get data_storage_restart_failed =>
      'Đã di chuyển dữ liệu, nhưng khởi động lại tự động thất bại. Vui lòng mở lại Fushi thủ công.';
  @override
  String db_downgrade_message({
    required Object dbVersion,
    required Object appVersion,
  }) =>
      'Cơ sở dữ liệu này được tạo bởi một phiên bản Fushi mới hơn (schema v${dbVersion}). Ứng dụng hiện tại của bạn quá cũ (v${appVersion}). Việc mở đã bị chặn để bảo vệ dữ liệu của bạn. Hãy cập nhật ứng dụng và thử lại.';
  @override
  String get db_downgrade_title => 'Hãy cập nhật Fushi';
  @override
  String get db_unrecoverable_message =>
      'Không thể mở cơ sở dữ liệu ngay cả sau khi sửa chữa tự động. Có khả năng bị hỏng. Bạn có thể khôi phục bản sao lưu trong Cài đặt, hoặc xóa dữ liệu ứng dụng để bắt đầu lại.';
  @override
  String get db_unrecoverable_title => 'Cơ sở dữ liệu bị hỏng';
  @override
  String get debug_log_share_subject => 'Nhật ký gỡ lỗi Fushi';
  @override
  String debug_log_title({required Object count}) =>
      'Nhật ký gỡ lỗi (${count})';
  @override
  String get debug_log_toggle => 'Bật nhật ký gỡ lỗi';
  @override
  String get decrease => 'Giảm';
  @override
  String get deduplicate_pitch_accents => 'Loại bỏ trùng lặp thanh điệu';
  @override
  String get delete_collection => 'Xóa bộ sưu tập';
  @override
  String get delete_collection_also_books => 'Đồng thời xóa sách trong đó';
  @override
  String get delete_collection_also_videos =>
      'Đồng thời xóa video (giữ lại tệp video gốc)';
  @override
  String get delete_custom_theme => 'Xóa giao diện';
  @override
  String get delete_custom_theme_confirm =>
      'Xóa giao diện tùy chỉnh này? Thao tác này không thể hoàn tác.';
  @override
  String get delete_in_progress => 'Đang xóa';
  @override
  String get delete_prompt_delete_selected => 'Xóa mục đã chọn';
  @override
  String get delete_prompt_message =>
      'Các mục này đã bị xóa trên thiết bị khác. Xóa ở đây luôn?';
  @override
  String get delete_prompt_select_all => 'Chọn tất cả';
  @override
  String get delete_prompt_title => 'Đã xóa trên thiết bị khác';
  @override
  String get delete_scope_keep_local_desc =>
      'Các thiết bị khác giữ bản sao của chúng';
  @override
  String get delete_scope_sync_everywhere => 'Xóa khỏi tất cả thiết bị';
  @override
  String get delete_scope_sync_everywhere_desc =>
      'Các thiết bị khác xác nhận xóa khi đồng bộ tiếp theo';
  @override
  String get design_system_auto => 'Tự động';
  @override
  String get design_system_hint => 'Điều khiển phong cách giao diện ứng dụng';
  @override
  String get design_system_label => 'Hệ thống thiết kế';
  @override
  String get dialog_add => 'THÊM';
  @override
  String get dialog_append => 'THÊM VÀO';
  @override
  String get dialog_cancel => 'HỦY';
  @override
  String get dialog_clear => 'XÓA';
  @override
  String get dialog_clear_all_dictionaries => 'Xóa tất cả từ điển';
  @override
  String get dialog_close => 'ĐÓNG';
  @override
  String get dialog_connect => 'KẾT NỐI';
  @override
  String get dialog_content_dictionary_clear =>
      'Xóa cơ sở dữ liệu từ điển cũng sẽ xóa tất cả kết quả tra cứu trong lịch sử.';
  @override
  String get dialog_content_dictionary_delete =>
      'Xóa một từ điển riêng lẻ có thể mất nhiều thời gian hơn so với xóa toàn bộ cơ sở dữ liệu. Thao tác này cũng sẽ xóa tất cả kết quả tra cứu trong lịch sử.';
  @override
  String get dialog_create => 'TẠO';
  @override
  String get dialog_crop => 'CẮT';
  @override
  String get dialog_delete => 'XÓA';
  @override
  String get dialog_done => 'XONG';
  @override
  String get dialog_edit => 'SỬA';
  @override
  String get dialog_edit_info => 'Sửa thông tin';
  @override
  String get dialog_exit => 'THOÁT';
  @override
  String get dialog_export => 'XUẤT';
  @override
  String get dialog_import => 'NHẬP';
  @override
  String get dialog_import_dictionary => 'Nhập từ điển';
  @override
  String get dialog_import_folder => 'Nhập từ điển dạng thư mục';
  @override
  String get dialog_importing => 'ĐANG NHẬP…';
  @override
  String get dialog_launch_ankidroid => 'MỞ ANKIDROID';
  @override
  String get dialog_ok => 'OK';
  @override
  String get dialog_play => 'PHÁT';
  @override
  String get dialog_read => 'ĐỌC';
  @override
  String get dialog_record => 'GHI ÂM';
  @override
  String get dialog_replace => 'Thay thế';
  @override
  String get dialog_save => 'LƯU';
  @override
  String get dialog_search => 'TÌM KIẾM';
  @override
  String get dialog_select => 'CHỌN';
  @override
  String get dialog_share => 'CHIA SẺ';
  @override
  String get dialog_stash => 'LƯU TẠM';
  @override
  String get dialog_stop => 'DỪNG';
  @override
  String get dialog_title_dictionary_clear => 'Xóa tất cả từ điển?';
  @override
  String dialog_title_dictionary_delete({required Object name}) =>
      'Xóa 『${name}』?';
  @override
  String get dict_auto_update => 'Tự động cập nhật';
  @override
  String get dict_auto_update_hint => 'Kiểm tra cập nhật từ điển khi khởi động';
  @override
  String dict_auto_update_last({required Object time}) =>
      'Lần kiểm tra thành công gần nhất: ${time}';
  @override
  String get dict_auto_update_never => 'Chưa bao giờ';
  @override
  String get dict_category_frequency => 'Tần suất';
  @override
  String get dict_category_grammar => 'Ngữ pháp';
  @override
  String get dict_category_ja_en => 'Nhật–Anh';
  @override
  String get dict_category_ja_ja => 'Nhật–Nhật';
  @override
  String get dict_category_ja_other => 'Tiếng Nhật khác';
  @override
  String get dict_category_kanji => 'Kanji';
  @override
  String get dict_category_names => 'Tên riêng';
  @override
  String get dict_category_supplementary => 'Bổ sung';
  @override
  String get dict_download_browse => 'Tải từ điển';
  @override
  String dict_download_button({required Object count}) =>
      'Tải xuống (${count})';
  @override
  String get dict_download_complete => 'Tải xuống hoàn tất.';
  @override
  String dict_download_failed({required Object error}) =>
      'Tải xuống thất bại: ${error}';
  @override
  String get dict_download_installed => 'Đã cài đặt';
  @override
  String get dict_download_language => 'Ngôn ngữ';
  @override
  String dict_download_partial({
    required Object success,
    required Object total,
    required Object error,
  }) => '${success} / ${total} thành công. Thất bại: ${error}';
  @override
  String get dict_download_select_title => 'Chọn từ điển';
  @override
  String dict_downloading({required Object name}) => 'Đang tải ${name}…';
  @override
  String dict_import_failed_summary({required Object n}) =>
      'Không thể nhập ${n} từ điển';
  @override
  String get dict_import_started => 'Đang nhập từ điển ở chế độ nền...';
  @override
  String dict_import_success_summary({required Object n}) =>
      'Đã nhập ${n} từ điển';
  @override
  String get dict_update_check => 'Kiểm tra cập nhật';
  @override
  String get dict_update_checking => 'Đang kiểm tra cập nhật…';
  @override
  String dict_update_done({required Object name}) => 'Đã cập nhật ${name}.';
  @override
  String dict_update_failed({required Object error}) =>
      'Cập nhật thất bại: ${error}';
  @override
  String get dict_update_interval_daily => 'Hằng ngày';
  @override
  String get dict_update_interval_monthly => 'Hằng tháng';
  @override
  String get dict_update_interval_weekly => 'Hằng tuần';
  @override
  String get dict_update_latest => 'Đã là mới nhất.';
  @override
  String dict_update_name_mismatch_body({
    required Object incoming,
    required Object existing,
  }) =>
      'Tệp đã chọn là "${incoming}", nhưng bạn đang cập nhật "${existing}". Vẫn thay thế?';
  @override
  String get dict_update_name_mismatch_title => 'Tên không khớp';
  @override
  String get dict_update_none => 'Tất cả từ điển đều là mới nhất.';
  @override
  String dict_update_summary({
    required Object updated,
    required Object current,
    required Object failed,
  }) => '${updated} đã cập nhật, ${current} mới nhất, ${failed} thất bại.';
  @override
  String get dict_update_tooltip => 'Cập nhật từ điển';
  @override
  String dict_update_updating({required Object name}) =>
      'Đang cập nhật ${name}…';
  @override
  String get dictionaries => 'Từ điển';
  @override
  String get dictionaries_delete_failed => 'Không thể xóa từ điển';
  @override
  String get dictionaries_deleting_data => 'Đang xóa dữ liệu từ điển…';
  @override
  String get dictionaries_menu_empty => 'Nhập một từ điển để sử dụng';
  @override
  String get dictionary_delete_failed => 'Không thể xóa từ điển';
  @override
  String get dictionary_font_size => 'Cỡ chữ từ điển';
  @override
  String get dictionary_font_size_zoom_hint =>
      'Ctrl + cuộn chuột để phóng to nội dung popup';
  @override
  String get dictionary_section_frequency => 'Từ điển tần suất';
  @override
  String get dictionary_section_kanji => 'Từ điển Kanji';
  @override
  String get dictionary_section_pitch => 'Từ điển thanh điệu';
  @override
  String get dictionary_section_term => 'Từ điển thuật ngữ';
  @override
  String get dictionary_settings => 'Cài đặt từ điển';
  @override
  String get dictionary_type_frequency => 'Tần suất';
  @override
  String get dictionary_type_pitch => 'Thanh điệu';
  @override
  String get dictionary_type_term => 'Thuật ngữ';
  @override
  String get dictionary_unrecognized_format =>
      'Không nhận dạng được định dạng từ điển';
  @override
  String get dismiss_swipe_sensitivity => 'Độ nhạy vuốt để đóng';
  @override
  String get display_settings => 'Cài đặt hiển thị';
  @override
  String get download_backend_not_configured =>
      'Chưa cấu hình trình tải xuống.';
  @override
  String get download_clear_finished => 'Xóa đã hoàn tất';
  @override
  String get download_detail_backend_offline =>
      'Trình tải xuống gốc đang ngoại tuyến. Thông tin tác vụ đã lưu được hiển thị; các tham số trực tiếp không khả dụng.';
  @override
  String get download_open_settings => 'Mở cài đặt';
  @override
  String get download_save_root_change => 'Đổi thư mục';
  @override
  String get download_save_root_create_failed =>
      'Không thể tạo thư mục đó. Kiểm tra ổ đĩa và quyền.';
  @override
  String get download_save_root_fallback_warning =>
      'Thư mục tải xuống đã cấu hình không khả dụng, đang sử dụng thư mục mặc định.';
  @override
  String get download_save_root_hint =>
      'Các tệp tải mới được lưu ở đây. Các tác vụ hiện có giữ thư mục gốc.';
  @override
  String get download_save_root_not_absolute =>
      'Vui lòng chọn đường dẫn thư mục tuyệt đối.';
  @override
  String get download_save_root_not_writable =>
      'Thư mục đó không có quyền ghi.';
  @override
  String get download_save_root_reset => 'Khôi phục mặc định';
  @override
  String get download_save_root_title => 'Thư mục tải xuống';
  @override
  String get download_settings => 'Cài đặt tải xuống';
  @override
  String get download_status_cancelled => 'Đã hủy';
  @override
  String get download_status_queued => 'Đang chờ';
  @override
  String download_subscription_after_episode({required Object episode}) =>
      'Sau tập ${episode}';
  @override
  String get download_subscription_check_all => 'Kiểm tra tất cả';
  @override
  String get download_subscription_check_now => 'Kiểm tra ngay';
  @override
  String download_subscription_choice_hint({
    required Object group,
    required Object resolution,
  }) =>
      'Theo dõi ${group} · ${resolution}. Các tập đơn phát hành mới sẽ được xếp hàng.';
  @override
  String get download_subscription_created =>
      'Đã xếp hàng tải xuống và tạo đăng ký';
  @override
  String get download_subscription_delete => 'Xóa đăng ký';
  @override
  String download_subscription_delete_confirm({required Object title}) =>
      'Xóa đăng ký cho ${title}? Các tác vụ đã tải được giữ lại.';
  @override
  String get download_subscription_download_and_create =>
      'Tải xuống và đăng ký';
  @override
  String get download_subscription_empty_body =>
      'Trong Khám phá, chọn bản phát hành tập đơn và sử dụng Tải xuống và đăng ký.';
  @override
  String get download_subscription_empty_title => 'Chưa có đăng ký nào';
  @override
  String download_subscription_last_checked({required Object time}) =>
      'Kiểm tra lần cuối: ${time}';
  @override
  String download_subscription_latest_episode({required Object episode}) =>
      'Tập mới nhất đã xếp hàng: tập ${episode}';
  @override
  String get download_subscription_never_checked => 'Chưa kiểm tra';
  @override
  String get download_subscription_running_hint =>
      'Fushi kiểm tra các đăng ký đã bật mỗi 15 phút khi ứng dụng đang chạy.';
  @override
  String get download_subscription_unavailable_hint =>
      'Chọn bản phát hành tập đơn có nhóm phát hành nhận dạng được để đăng ký.';
  @override
  String get download_subscriptions_tab => 'Đăng ký';
  @override
  String download_task_action_failed({required Object error}) =>
      'Thao tác tác vụ thất bại: ${error}';
  @override
  String get download_task_delete => 'Xóa tác vụ';
  @override
  String download_task_delete_confirm({required Object title}) =>
      'Xóa tác vụ tải xuống cho ${title}?';
  @override
  String get download_task_delete_files => 'Đồng thời xóa tệp đã tải';
  @override
  String get download_task_details => 'Xem chi tiết';
  @override
  String get download_tasks_tab => 'Tác vụ';
  @override
  String get download_test_connection => 'Kiểm tra kết nối';
  @override
  String get download_test_connection_failed =>
      'Kết nối thất bại. Kiểm tra địa chỉ và thông tin đăng nhập.';
  @override
  String download_test_connection_ok({required Object version}) =>
      'Đã kết nối (phiên bản: ${version})';
  @override
  String get drag_drop_need_card_target =>
      'Hãy thả phụ đề hoặc âm thanh lên một cuốn sách hoặc một video';
  @override
  String get drag_drop_unsupported_on_books =>
      'Hãy thả tệp sách vào đây. Chuyển sang Video hoặc Từ điển cho các tệp đó.';
  @override
  String get drag_drop_unsupported_on_dictionary =>
      'Hãy thả tệp từ điển .zip, .dsl hoặc .mdx vào đây. Tệp CSS chỉ dùng được cùng với một gói từ điển.';
  @override
  String get drag_drop_unsupported_on_video =>
      'Hãy thả video, danh sách phát hoặc phụ đề vào đây. Chuyển sang Sách hoặc Từ điển cho các tệp đó.';
  @override
  String get edit_custom_theme => 'Chỉnh sửa giao diện tùy chỉnh';
  @override
  String get eink_mode => 'Chế độ e-ink';
  @override
  String get eink_mode_hint =>
      'Giao diện đen trắng thuần túy, không hoạt ảnh và tô sáng kiểu đường kẻ, dành cho màn hình e-ink';
  @override
  String get enable_swipe_to_close => 'Vuốt để đóng cửa sổ tra';
  @override
  String get epub_delete_error => 'Xóa sách thất bại';
  @override
  String get epub_delete_title => 'Xóa sách';
  @override
  String get epub_parse_fallback =>
      'Đã khôi phục thông tin sách từ cơ sở dữ liệu';
  @override
  String get error_ankidroid_api => 'Lỗi AnkiDroid';
  @override
  String get error_ankidroid_api_content =>
      'Đã xảy ra lỗi khi giao tiếp với AnkiDroid.\n\nHãy đảm bảo dịch vụ nền AnkiDroid đang hoạt động và tất cả quyền ứng dụng liên quan đã được cấp.';
  @override
  String get error_copied => 'Đã sao chép lỗi vào bộ nhớ tạm';
  @override
  String get error_load_failed => 'Đã xảy ra lỗi khi tải';
  @override
  String get error_log_diagnostics_section =>
      'Chẩn đoán / pháp y (không phải lỗi ứng dụng)';
  @override
  String get error_log_empty => 'Không có nhật ký lỗi';
  @override
  String error_log_label({required Object n}) => 'Nhật ký lỗi (${n})';
  @override
  String get error_log_previous_run => 'Nhật ký cũ (trước lần chạy trước)';
  @override
  String get error_log_share_subject => 'Nhật ký lỗi Fushi';
  @override
  String get extension_popup_independent_size =>
      'Kích thước riêng cho tiện ích mở rộng trình duyệt';
  @override
  String get extension_popup_independent_size_hint =>
      'Cho popup tra cứu của tiện ích mở rộng trình duyệt kích thước tối đa riêng thay vì theo popup trong ứng dụng';
  @override
  String get extension_popup_max_height => 'Chiều cao tối đa popup tiện ích';
  @override
  String get extension_popup_max_width => 'Chiều rộng tối đa popup tiện ích';
  @override
  String get external_window_capture_failed => 'Chụp cửa sổ thất bại';
  @override
  String get external_window_current_game => 'Trò chơi hiện tại';
  @override
  String get external_window_mining => 'Khai thác cửa sổ bên ngoài';
  @override
  String get external_window_no_windows => 'Không tìm thấy cửa sổ có thể chụp';
  @override
  String get external_window_none => 'Chưa gắn cửa sổ nào (nhấn để chọn)';
  @override
  String get external_window_refresh => 'Làm mới danh sách cửa sổ';
  @override
  String get external_window_select => 'Chọn cửa sổ đích';
  @override
  String get external_window_unbind => 'Bỏ gắn cửa sổ';
  @override
  String get external_window_unsupported =>
      'Khai thác cửa sổ bên ngoài chỉ hỗ trợ Windows';
  @override
  String get failed_online_service => 'Không thể kết nối dịch vụ trực tuyến';
  @override
  String get favorite_added => 'Đã lưu câu vào mục yêu thích';
  @override
  String get favorite_removed => 'Đã xóa câu khỏi mục yêu thích';
  @override
  String favorites({required Object n}) => 'Yêu thích (${n})';
  @override
  String field_fallback_used({
    required Object field,
    required Object secondField,
  }) => 'Trường ${field} đã sử dụng ${secondField} làm từ tìm kiếm dự phòng.';
  @override
  String file_count({required Object count}) => '${count} tệp';
  @override
  String get floating_dict_close => 'Đóng';
  @override
  String get floating_dict_title => 'Từ điển';
  @override
  String get floating_lyric_bg_opacity => 'Độ mờ nền phụ đề nổi';
  @override
  String get floating_lyric_button_bg_opacity => 'Độ mờ nền nút phụ đề nổi';
  @override
  String get floating_lyric_click_lookup => 'Chạm phụ đề nổi để tra từ';
  @override
  String get floating_lyric_click_lookup_hint =>
      'Bật mục này cùng với khóa vị trí nếu bạn vẫn muốn tra từ.';
  @override
  String get floating_lyric_close => 'Đóng';
  @override
  String get floating_lyric_context_lines => 'Số dòng ngữ cảnh phụ đề nổi';
  @override
  String get floating_lyric_context_lines_hint =>
      '0 chỉ hiển thị dòng hiện tại (một dòng, không thay đổi); đặt 1-3 để hiển thị số dòng đó trước và sau';
  @override
  String get floating_lyric_corner_radius => 'Bán kính bo góc phụ đề nổi';
  @override
  String get floating_lyric_corner_radius_hint =>
      '0 giữ góc mặc định của mỗi nền tảng; tăng lên để bo tròn thanh và nút hơn';
  @override
  String get floating_lyric_font_size => 'Cỡ chữ phụ đề nổi';
  @override
  String get floating_lyric_hint => 'Hiện câu hiện tại trên các ứng dụng khác.';
  @override
  String get floating_lyric_lock => 'Khóa';
  @override
  String get floating_lyric_next => 'Sau';
  @override
  String get floating_lyric_no_audio =>
      'Cuốn sách này không có âm thanh để nghe';
  @override
  String get floating_lyric_permission_hint =>
      'Cần quyền hiển thị trên ứng dụng khác để hiện phụ đề nổi.';
  @override
  String get floating_lyric_permission_hint_coloros =>
      'Nếu hệ thống liên tục từ chối quyền hiển thị trên ứng dụng khác: cài lại APK một lần bằng trình quản lý tệp, hoặc tắt giám sát quyền trong Tùy chọn nhà phát triển, rồi thử lại.';
  @override
  String get floating_lyric_play_pause => 'Phát';
  @override
  String get floating_lyric_previous => 'Trước';
  @override
  String get floating_lyric_text_opacity => 'Độ mờ chữ phụ đề nổi';
  @override
  String get floating_lyric_toggle_action => 'Phụ đề nổi';
  @override
  String get floating_lyric_unavailable_hint =>
      'Không thể hiển thị cửa sổ phụ đề nổi.';
  @override
  String get floating_lyric_unlock => 'Mở khóa';
  @override
  String get floating_lyric_width => 'Chiều rộng phụ đề nổi';
  @override
  String get floating_lyric_width_hint =>
      '0 sử dụng chiều rộng mặc định; đặt giá trị để thanh có chiều rộng cố định';
  @override
  String get focus_navigation_enabled =>
      'Điều hướng tiêu điểm bằng bàn phím & tay cầm';
  @override
  String get focus_navigation_enabled_hint =>
      'Di chuyển tiêu điểm bằng phím mũi tên hoặc tay cầm và hiện vòng tiêu điểm.';
  @override
  String get folder_picker_permission_required =>
      'Cần cấp quyền bộ nhớ để duyệt thư mục';
  @override
  String get follow_audio_off_tooltip => 'Theo dõi âm thanh: TẮT';
  @override
  String get follow_audio_on_tooltip => 'Theo dõi âm thanh: BẬT';
  @override
  String get font_color => 'Màu chữ';
  @override
  String get font_color_desc => 'Màu chữ trình đọc';
  @override
  String get font_desc_hina_mincho =>
      'Mincho trang trí mềm mại · Nên dùng kèm Noto Sans JP';
  @override
  String get font_desc_klee_one =>
      'Kiểu chữ viết tay · Rõ ràng dễ đọc · Nên dùng kèm Noto Sans JP';
  @override
  String get font_desc_mplus_rounded_1c =>
      'Kiểu tròn dễ thương · Phù hợp light novel · Nên dùng kèm Noto Sans JP';
  @override
  String get font_desc_noto_sans_jp =>
      'Google/Adobe Gothic · Ưu tiên chữ Nhật · Độ dày thay đổi';
  @override
  String get font_desc_noto_sans_sc =>
      'Google/Adobe Gothic · Ưu tiên tiếng Trung giản thể · Dùng làm phông dự phòng';
  @override
  String get font_desc_noto_sans_tc =>
      'Google/Adobe Gothic · Ưu tiên tiếng Trung phồn thể';
  @override
  String get font_desc_noto_serif_jp =>
      'Google/Adobe Serif · Ưu tiên chữ Nhật · Phù hợp đọc dọc';
  @override
  String get font_desc_noto_serif_sc =>
      'Google/Adobe Serif · Ưu tiên tiếng Trung giản thể · Dùng làm phông dự phòng';
  @override
  String get font_desc_noto_serif_tc =>
      'Google/Adobe Serif · Ưu tiên chữ Hán phồn thể · Lý tưởng cho đọc dọc';
  @override
  String get font_desc_shippori_mincho =>
      'Mincho thanh lịch · Phù hợp văn học · Nên dùng kèm Noto Sans JP';
  @override
  String get font_desc_zen_kaku_gothic_new =>
      'Kaku Gothic hiện đại · Đọc sách thông thường · Nên dùng kèm Noto Sans JP';
  @override
  String get font_desc_zen_maru_gothic =>
      'Gothic tròn mềm mại · Nên dùng kèm Noto Sans JP';
  @override
  String get font_desc_zen_old_mincho =>
      'Mincho cổ điển · Phong cách văn học cổ · Nên dùng kèm Noto Sans JP';
  @override
  String get font_source_file => 'Tệp';
  @override
  String get font_source_system => 'Hệ thống';
  @override
  String get font_target_app_ui => 'Phông giao diện hệ thống';
  @override
  String get font_target_body => 'Phông nội dung tiểu thuyết';
  @override
  String get font_target_dictionary => 'Phông từ điển';
  @override
  String get font_target_video_subtitle => 'Video Subtitle Font';
  @override
  String get gal_hook_text_font_size => 'Cỡ chữ phụ đề Galgame';
  @override
  String get gal_hook_text_font_size_hint =>
      'Kéo góc cửa sổ nổi để thay đổi kích thước; cỡ chữ phụ đề được đặt ở đây.';
  @override
  String get game_add => 'Thêm trò chơi';
  @override
  String get game_already_added => 'Trò chơi này đã có trong thư viện';
  @override
  String get game_audio_backend_engine => 'PCM từ engine';
  @override
  String get game_audio_backend_loopback => 'Loopback hệ thống (trộn)';
  @override
  String get game_audio_backend_none => 'Không có nguồn âm thanh';
  @override
  String get game_audio_backend_resource => 'Âm thanh tài nguyên trò chơi';
  @override
  String get game_audio_duration => 'Thời lượng âm thanh';
  @override
  String get game_audio_fallback_disabled_missing =>
      '未找到与该句匹配的游戏资源音频；已关闭降级，未制卡';
  @override
  String get game_audio_resource_id => '音频资源 ID';
  @override
  String get game_audio_tracks => 'Track âm thanh đang hoạt động';
  @override
  String get game_auto_cover => 'Tự động lấy ảnh bìa';
  @override
  String get game_back_to_capture => 'Quay lại không gian thu thập';
  @override
  String get game_back_to_library => 'Quay lại thư viện trò chơi';
  @override
  String get game_capture_active => 'Đang thu thập';
  @override
  String get game_capture_degraded_loopback =>
      'Trò chơi đang chạy nhưng tiêm engine thất bại; đang dùng loopback hệ thống, có thể trộn lẫn nhạc nền và hiệu ứng.';
  @override
  String get game_capture_description =>
      'Khởi chạy hoặc gắn vào trò chơi, rồi theo dõi văn bản, giọng nói, ảnh chụp màn hình và đầu ra Anki.';
  @override
  String get game_capture_empty_body =>
      'Khởi chạy hoặc gắn vào trò chơi; trạng thái văn bản và âm thanh câu sẽ hiển thị ở đây.';
  @override
  String get game_capture_empty_title => 'Chưa nhận được dòng nào';
  @override
  String get game_capture_launch_failed =>
      'Khởi chạy hoặc thu thập trò chơi thất bại';
  @override
  String get game_capture_launching =>
      'Đang khởi chạy trò chơi và bắt đầu thu thập...';
  @override
  String get game_capture_running => 'Phiên thu thập đang chạy';
  @override
  String get game_capture_window_missing =>
      'Tiến trình trò chơi đã khởi động nhưng cửa sổ không xuất hiện, có thể trò chơi chưa được khởi chạy. Hãy thử lại.';
  @override
  String get game_capture_workbench => 'Không gian thu thập';
  @override
  String get game_captured_lines => 'Dòng đã thu thập';
  @override
  String get game_card_mapping_missing =>
      'Ánh xạ trường Anki thiếu token thẻ trò chơi';
  @override
  String get game_card_sentence_audio_missing =>
      'Thẻ được tạo mà không có âm thanh câu; không có âm thanh dòng khác được thay thế.';
  @override
  String get game_clear_events => 'Xóa sự kiện';
  @override
  String get game_cover_not_found =>
      'Không tìm thấy ảnh bìa trong thư mục hoặc tệp thực thi trò chơi';
  @override
  String get game_cover_searching => 'Đang tìm ảnh bìa...';
  @override
  String get game_cover_updated => 'Đã cập nhật ảnh bìa';
  @override
  String get game_dashboard => 'Trang chủ';
  @override
  String get game_detail_missing => 'Trò chơi này không còn trong thư viện';
  @override
  String get game_detail_tab_edit => 'Chỉnh sửa';
  @override
  String get game_detail_tab_stats => 'Thống kê';
  @override
  String get game_detail_tab_summary => 'Tổng quan';
  @override
  String get game_diagnostics => 'Chẩn đoán tương thích';
  @override
  String get game_diagnostics_subtitle =>
      'Giai đoạn phiên, điểm cuối, track âm thanh và sự kiện có cấu trúc';
  @override
  String game_drop_imported({required Object count}) =>
      'Đã thêm ${count} trò chơi';
  @override
  String get game_drop_no_exe =>
      'Không có tệp .exe trò chơi mới trong các tệp được thả';
  @override
  String get game_edit_developer => 'Nhà phát triển';
  @override
  String get game_edit_display_name => 'Tên hiển thị';
  @override
  String get game_edit_exe_path => 'Đường dẫn tệp thực thi';
  @override
  String get game_edit_invalid_date =>
      'Ngày phát hành phải theo định dạng YYYY-MM-DD';
  @override
  String get game_edit_launch_args => 'Tham số khởi chạy';
  @override
  String get game_edit_launch_args_hint =>
      'Truyền cho trò chơi khi khởi chạy, ví dụ: -windowed';
  @override
  String get game_edit_nsfw => 'Nội dung người lớn';
  @override
  String get game_edit_release_date => 'Ngày phát hành (YYYY-MM-DD)';
  @override
  String get game_edit_save => 'Lưu';
  @override
  String get game_edit_saved => 'Đã lưu';
  @override
  String get game_edit_summary => 'Mô tả';
  @override
  String get game_edit_tags => 'Thẻ (phân cách bằng dấu phẩy)';
  @override
  String get game_edit_user_rating => 'Đánh giá của tôi (0-10)';
  @override
  String get game_edit_user_review => 'Nhận xét của tôi';
  @override
  String get game_edit_workdir => 'Thư mục làm việc';
  @override
  String get game_empty => 'Chưa thêm trò chơi nào';
  @override
  String get game_endpoint_phase_connected => 'Đã kết nối';
  @override
  String get game_endpoint_phase_connecting => 'Đang kết nối';
  @override
  String get game_endpoint_phase_retrying => 'Đang thử lại';
  @override
  String get game_endpoint_phase_stopped => 'Đã dừng';
  @override
  String get game_endpoints_engine_active =>
      'Văn bản được cung cấp bởi hook engine; các điểm cuối này là tùy chọn';
  @override
  String get game_endpoints_hint =>
      'Cổng cho công cụ văn bản bên ngoài (Textractor / LunaTranslator v.v.); bỏ qua nếu bạn không dùng';
  @override
  String get game_event_all => 'Tất cả sự kiện';
  @override
  String get game_event_warnings => 'Cảnh báo và lỗi';
  @override
  String get game_exe_missing => 'Không tìm thấy tệp thực thi trò chơi';
  @override
  String get game_filter => 'Bộ lọc';
  @override
  String get game_filter_all => 'Tất cả';
  @override
  String get game_filter_favorited => 'Yêu thích';
  @override
  String get game_filter_hide_nsfw => 'Ẩn nội dung người lớn';
  @override
  String get game_filter_local_only => 'Có tệp cục bộ';
  @override
  String get game_filter_metadata_only => 'Chỉ siêu dữ liệu';
  @override
  String get game_filter_mined => 'Đã khai thác';
  @override
  String get game_filter_reset => 'Xóa bộ lọc';
  @override
  String get game_filter_source => 'Khả dụng';
  @override
  String get game_filter_status => 'Trạng thái chơi';
  @override
  String get game_filter_tags => 'Thẻ';
  @override
  String get game_filter_with_audio => 'Có âm thanh';
  @override
  String get game_focus_continue => 'Tiếp tục';
  @override
  String get game_follow_live => 'Theo dõi trực tiếp';
  @override
  String get game_health => 'Trạng thái hệ thống';
  @override
  String get game_health_anki => 'Đầu ra Anki';
  @override
  String get game_health_audio => 'Nguồn âm thanh';
  @override
  String get game_health_helper => 'Helper hook';
  @override
  String get game_health_process => 'Tiến trình trò chơi';
  @override
  String get game_health_text => 'Nguồn văn bản';
  @override
  String get game_health_upscaling => 'Nâng cấp cửa sổ';
  @override
  String get game_health_window => 'Cửa sổ trò chơi';
  @override
  String get game_helper_download => 'Tải xuống';
  @override
  String game_helper_download_failed({required Object error}) =>
      'Tải xuống thành phần engine thất bại: ${error}';
  @override
  String get game_helper_downloading => 'Đang tải xuống thành phần engine…';
  @override
  String get game_helper_install_incomplete =>
      'Cài đặt thành phần engine chưa hoàn tất, vui lòng thử lại';
  @override
  String game_helper_needed_body({required Object size}) =>
      'Khởi chạy galgame cần thành phần tiêm hook engine (khoảng ${size}). Thành phần này chứa mã tiêm tiến trình và được tách riêng khỏi ứng dụng để tránh phần mềm diệt virus báo nhầm. Tải xuống ngay?';
  @override
  String get game_helper_needed_title => 'Cần thành phần engine Galgame';
  @override
  String get game_helper_size_unknown => 'kích thước không xác định';
  @override
  String get game_helper_verification_failed =>
      'Thành phần engine bị chặn: không thể xác minh checksum (tệp .sha256 từ GitHub không thể truy cập, bị thiếu hoặc không khớp). Fushi từ chối cài đặt mã tiêm chưa được xác minh.';
  @override
  String get game_home_subtitle => 'Thư viện trò chơi và giám sát thu thập';
  @override
  String get game_hook_fallback_all_audio_sources_failed =>
      'Cả hook giọng nói engine và loopback hệ thống đều không thể khởi động; không thể thu thập âm thanh.';
  @override
  String get game_hook_fallback_engine_attach_failed =>
      'Gắn hook giọng nói engine vào trò chơi đang chạy thất bại; đang dùng âm thanh trộn hệ thống.';
  @override
  String get game_hook_fallback_engine_pcm_unavailable =>
      'Hook giọng nói engine đã cài đặt nhưng trò chơi chưa phát giọng nói nào. Đang dùng âm thanh trộn hệ thống và sẽ tự động chuyển lại khi giọng nói đầu tiên xuất hiện.';
  @override
  String get game_hook_fallback_launch_injection_failed =>
      'Trò chơi đang chạy nhưng tiêm engine sớm thất bại; đang dùng âm thanh trộn hệ thống.';
  @override
  String get game_hook_fallback_window_not_found =>
      'Thu thập âm thanh đang chạy nhưng cửa sổ trò chơi chưa xuất hiện nên không thể chụp màn hình. Sẽ tự động gắn khi cửa sổ xuất hiện.';
  @override
  String get game_hook_line_unavailable =>
      'Dòng thu thập này không còn khả dụng.';
  @override
  String get game_hook_reason_access_denied =>
      'Trò chơi chạy với quyền cao hơn; hãy khởi chạy Fushi với quyền quản trị viên và thử lại.';
  @override
  String get game_hook_reason_bitness_mismatch =>
      'Kiến trúc helper không khớp với trò chơi (32-bit và 64-bit); cài lại helper.';
  @override
  String get game_hook_reason_create_process_failed =>
      'Không thể khởi chạy trò chơi từ Fushi; kiểm tra đường dẫn tệp thực thi.';
  @override
  String get game_hook_reason_elevation_required =>
      'Trò chơi này yêu cầu quyền quản trị viên; hãy khởi chạy Fushi với quyền quản trị viên và thử lại.';
  @override
  String get game_hook_reason_game_exe_missing =>
      'Tệp thực thi trò chơi không còn tồn tại tại đường dẫn đã lưu.';
  @override
  String get game_hook_reason_guarded_hook_failed =>
      'Không thể cài đặt hook được bảo vệ bởi profile kịp thời; đang tự động thử lại.';
  @override
  String get game_hook_reason_handshake_timeout =>
      'Trò chơi đã được hook nhưng không tạo ra văn bản hoặc âm thanh kịp thời; engine này có thể chưa được hỗ trợ.';
  @override
  String get game_hook_reason_helper_missing =>
      'Helper hook giọng nói chưa được cài đặt cho kiến trúc trò chơi này; cài đặt và thử lại.';
  @override
  String get game_hook_reason_hook_dll_missing =>
      'Gói helper không đầy đủ (thiếu thư viện hook); cài lại.';
  @override
  String get game_hook_reason_injection_failed =>
      'Tiêm vào trò chơi bị chặn; thêm Fushi và trò chơi vào danh sách loại trừ phần mềm diệt virus.';
  @override
  String get game_hook_reason_ready_timeout =>
      'Thư viện hook không tải xong kịp thời; quét phần mềm diệt virus có thể gây ra điều này.';
  @override
  String get game_hook_reason_resume_failed =>
      'Trò chơi đã khởi chạy không thể tiếp tục và đã bị dừng; hãy khởi chạy lại.';
  @override
  String get game_hook_reason_shared_memory_unavailable =>
      'Không thể mở kênh thu thập; khởi động lại Fushi.';
  @override
  String get game_hook_reason_spawn_failed =>
      'Không thể khởi chạy helper; kiểm tra xem phần mềm diệt virus có xóa hoặc chặn nó không.';
  @override
  String get game_hook_reason_resident_hook_mismatch =>
      'Phiên thu thập trước vẫn được tải trong trò chơi; khởi động lại trò chơi.';
  @override
  String get game_hook_reason_steam_timeout =>
      'Steam đã chấp nhận yêu cầu khởi chạy nhưng tiến trình trò chơi không xuất hiện.';
  @override
  String get game_hook_reason_target_missing =>
      'Chưa chọn tiến trình hoặc tệp thực thi trò chơi để thu thập.';
  @override
  String get game_hook_recapture_empty =>
      'Không thu thập được âm thanh trong cửa sổ thu thập lại';
  @override
  String get game_hook_recapture_saved =>
      'Đã lưu giọng nói thu thập lại vào dòng này';
  @override
  String get game_hook_recapture_started =>
      'Đang ghi — phát lại dòng này trong trò chơi';
  @override
  String get game_hook_recapture_unavailable =>
      'Thu thập lại giọng nói cần loopback âm thanh hệ thống';
  @override
  String get game_kpi_total_games => 'Trò chơi';
  @override
  String get game_kpi_week => 'Tuần này';
  @override
  String get game_latest_line => 'Dòng mới nhất';
  @override
  String get game_launch => 'Khởi chạy';
  @override
  String get game_launch_and_capture => 'Khởi chạy và thu thập';
  @override
  String get game_launch_unsupported =>
      'Khởi chạy trò chơi chỉ được hỗ trợ trên Windows';
  @override
  String get game_library => 'Thư viện trò chơi';
  @override
  String get game_line_audio_encoded => 'Đã trích xuất âm thanh';
  @override
  String get game_line_audio_fallback => 'Dự phòng';
  @override
  String get game_line_audio_matched => 'Âm thanh sẵn sàng';
  @override
  String get game_line_audio_missing => 'Không có âm thanh';
  @override
  String get game_line_audio_pending => 'Đang khớp';
  @override
  String get game_line_audio_unavailable => 'Chỉ văn bản';
  @override
  String get game_line_favorite_tooltip => 'Yêu thích dòng này';
  @override
  String get game_line_mined => 'Đã khai thác';
  @override
  String get game_line_preview_failed =>
      'Không có âm thanh phát được cho dòng này';
  @override
  String get game_line_preview_tooltip => 'Phát âm thanh dòng này';
  @override
  String get game_line_track_applied =>
      'Đã áp dụng track giọng nói cho dòng này';
  @override
  String get game_line_track_dialog_title => 'Track giọng nói cho dòng này';
  @override
  String get game_line_track_failed =>
      'Track đó không có âm thanh quanh dòng này';
  @override
  String get game_line_track_tooltip => 'Chọn track giọng nói cho dòng này';
  @override
  String get game_line_unfavorite_tooltip => 'Bỏ yêu thích';
  @override
  String get game_live_lines => 'Dòng trực tiếp';
  @override
  String get game_manage_tracks => 'Quản lý track âm thanh';
  @override
  String get game_meta_added => 'Đã thêm';
  @override
  String get game_meta_ranking => 'Xếp hạng';
  @override
  String get game_meta_source => 'Nguồn dữ liệu';
  @override
  String get game_never_played => 'Chưa từng chơi';
  @override
  String get game_no_active_line =>
      'Chọn một dòng để xem trạng thái âm thanh câu.';
  @override
  String get game_no_events => 'Chưa có sự kiện phiên nào';
  @override
  String get game_no_match => 'Không có trò chơi nào khớp với bộ lọc hiện tại';
  @override
  String get game_no_tracks => 'Chưa có dữ liệu track âm thanh';
  @override
  String get game_open_capture_workspace => 'Mở không gian thu thập';
  @override
  String get game_phase_attaching => 'Đang gắn';
  @override
  String get game_phase_degraded => 'Suy giảm';
  @override
  String get game_phase_error => 'Lỗi';
  @override
  String get game_phase_idle => 'Chờ';
  @override
  String get game_phase_injecting => 'Đang tiêm';
  @override
  String get game_phase_launching => 'Đang khởi chạy';
  @override
  String get game_phase_resolving => 'Đang phân giải';
  @override
  String get game_phase_running => 'Đang chạy';
  @override
  String get game_phase_stopping => 'Đang dừng';
  @override
  String get game_phase_waiting_signals => 'Đang chờ tín hiệu';
  @override
  String get game_pipeline => 'Pipeline phiên';
  @override
  String get game_play_status => 'Trạng thái chơi';
  @override
  String get game_random_reroll => 'Xáo trộn';
  @override
  String get game_random_title => 'Chọn ngẫu nhiên';
  @override
  String get game_recently_played => 'Chơi gần đây';
  @override
  String get game_refresh_tracks => 'Làm mới track';
  @override
  String get game_remove => 'Xóa';
  @override
  String get game_rename => 'Đổi tên';
  @override
  String get game_rename_label => 'Tên trò chơi';
  @override
  String get game_scrape => 'Lấy siêu dữ liệu';
  @override
  String get game_scrape_applied => 'Đã cập nhật siêu dữ liệu';
  @override
  String get game_scrape_failed => 'Lấy siêu dữ liệu thất bại';
  @override
  String get game_scrape_no_result => 'Không tìm thấy kết quả phù hợp';
  @override
  String get game_scrape_query => 'Tên hoặc ID nguồn';
  @override
  String get game_search => 'Tìm kiếm trò chơi';
  @override
  String get game_session_events => 'Sự kiện phiên';
  @override
  String get game_session_idle => 'Chưa bắt đầu thu thập';
  @override
  String get game_session_listening => 'Đang lắng nghe';
  @override
  String get game_set_cover => 'Đặt ảnh bìa';
  @override
  String get game_show_hook_text_window => 'Hiển thị cửa sổ văn bản Hook';
  @override
  String get game_site_score => 'Đánh giá trang web';
  @override
  String get game_sort => 'Sắp xếp';
  @override
  String get game_sort_added => 'Ngày thêm';
  @override
  String get game_sort_last_played => 'Chơi lần cuối';
  @override
  String get game_sort_name => 'Tên';
  @override
  String get game_sort_release => 'Ngày phát hành';
  @override
  String get game_sort_site_score => 'Đánh giá trang web';
  @override
  String get game_sort_user_rating => 'Đánh giá của tôi';
  @override
  String get game_stat_daily => 'Thời gian chơi hàng ngày';
  @override
  String get game_stat_delete_session => 'Xóa phiên này';
  @override
  String get game_stat_last_played => 'Chơi lần cuối';
  @override
  String get game_stat_no_sessions => 'Chưa có phiên chơi nào được ghi lại';
  @override
  String get game_stat_session_list => 'Lịch sử phiên';
  @override
  String get game_stat_sessions => 'Phiên';
  @override
  String get game_stat_today => 'Thời gian chơi hôm nay';
  @override
  String get game_stat_total_time => 'Tổng thời gian chơi';
  @override
  String get game_status_dropped => 'Đã bỏ';
  @override
  String get game_status_not_configured => 'Chưa xác minh';
  @override
  String get game_status_on_hold => 'Tạm dừng';
  @override
  String get game_status_played => 'Đã chơi';
  @override
  String get game_status_playing => 'Đang chơi';
  @override
  String get game_status_ready => 'Sẵn sàng';
  @override
  String get game_status_unset => 'Chưa đặt';
  @override
  String get game_status_waiting => 'Đang chờ';
  @override
  String get game_status_want_to_play => 'Muốn chơi';
  @override
  String get game_stop_listening => 'Dừng lắng nghe';
  @override
  String get game_summary_aliases => 'Tên khác';
  @override
  String get game_summary_all_titles => 'Tất cả tên';
  @override
  String get game_summary_average_hours => 'Thời gian chơi trung bình';
  @override
  String get game_summary_none =>
      'Chưa có mô tả. Lấy siêu dữ liệu để điền vào.';
  @override
  String get game_summary_release_date => 'Ngày phát hành';
  @override
  String get game_tags_clear => 'Xóa lựa chọn';
  @override
  String get game_tags_title => 'Thẻ trò chơi';
  @override
  String get game_text_endpoints => 'Điểm cuối văn bản';
  @override
  String get game_text_gaps => 'Lỗ hổng chuỗi';
  @override
  String get game_text_gaps_hint =>
      'Lỗ hổng chuỗi = số dòng bị mất trong vòng văn bản hook; 0 là bình thường';
  @override
  String get game_text_source_engine => 'Hook engine';
  @override
  String get game_text_source_unknown => 'Nguồn không xác định';
  @override
  String get game_text_source_websocket => 'WebSocket';
  @override
  String get game_text_thread => 'Luồng văn bản';
  @override
  String game_text_thread_audio_count({required Object count}) =>
      '${count} có âm thanh';
  @override
  String get game_text_thread_hint =>
      'Chọn luồng hội thoại sạch, giống Luna Translator';
  @override
  String get game_track_auto => 'Chọn tự động';
  @override
  String get game_track_clips => 'Đoạn';
  @override
  String get game_track_energy => 'Năng lượng';
  @override
  String get game_track_exclude_bgm => 'Đánh dấu là nhạc nền';
  @override
  String get game_track_exclusion_hint =>
      'Đánh dấu track nhạc nền/môi trường để loại trừ, chọn tự động sẽ không coi nó là giọng nói — dòng không có giọng nói sẽ không lấy nhạc nền.';
  @override
  String get game_track_exclusion_title => 'Loại trừ track âm thanh';
  @override
  String get game_track_preview => 'Xem trước track này';
  @override
  String get game_track_preview_failed =>
      'Không thể thu thập âm thanh gần đây từ track này';
  @override
  String get game_track_preview_stop => 'Dừng xem trước';
  @override
  String get game_track_restore => 'Khôi phục track';
  @override
  String get game_track_select_as_voice => 'Dùng làm track giọng nói';
  @override
  String get game_track_select_requires_engine =>
      'Chọn track cần phiên hook engine đang hoạt động';
  @override
  String get game_track_voice => 'Giọng nói';
  @override
  String get game_tracks_loopback_hint =>
      'Loopback hệ thống thu toàn bộ đầu ra trộn của hệ thống dưới dạng một luồng; không có danh sách track riêng.';
  @override
  String get game_tracks_pcm_only_hint =>
      'Chọn track chỉ ảnh hưởng khi engine PCM là backend âm thanh đang hoạt động. Danh sách dưới đây ở chế độ chỉ đọc với backend hiện tại.';
  @override
  String get game_tracks_resource_mode_hint =>
      'Trong chế độ âm thanh tài nguyên trò chơi, mỗi dòng giọng nói được trích xuất trực tiếp từ tệp trò chơi, nên không có danh sách track PCM ở đây. Chọn track tự động hoặc thủ công chỉ áp dụng cho thu thập engine PCM.';
  @override
  String get game_unread_lines => 'Chưa đọc';
  @override
  String get game_upscaling => 'Nâng cấp cửa sổ trò chơi';
  @override
  String get game_upscaling_auto => 'Tự động';
  @override
  String get game_upscaling_hint_external =>
      'Một bản Magpie đã chạy sẵn nên Fushi không can thiệp. Nhấn Win+Shift+A để nâng cấp cửa sổ trò chơi.';
  @override
  String get game_upscaling_hint_first_run =>
      'Magpie vẫn cần thiết lập lần đầu. Nhấn Win+Shift+A để nâng cấp ngay — lần sau khởi chạy trò chơi sẽ tự động.';
  @override
  String get game_upscaling_hint_manual =>
      'Nhấn Win+Shift+A để nâng cấp cửa sổ trò chơi.';
  @override
  String get game_upscaling_installed_only => 'Chỉ đã cài đặt';
  @override
  String get game_upscaling_off => 'Tắt';
  @override
  String get game_upscaling_status_active => 'Nâng cấp cửa sổ đang bật';
  @override
  String get game_upscaling_status_failed =>
      'Không thể khởi động nâng cấp cửa sổ';
  @override
  String get game_upscaling_status_manual =>
      'Nâng cấp cửa sổ đã sẵn sàng nhưng không tự khởi động';
  @override
  String get game_upscaling_status_unavailable =>
      'Nâng cấp cửa sổ không khả dụng';
  @override
  String get game_user_rating => 'Đánh giá của tôi';
  @override
  String get game_view_detail => 'Xem chi tiết';
  @override
  String get game_waiting_for_text => 'Đang chờ văn bản';
  @override
  String game_waveform_range_label({
    required Object start,
    required Object end,
    required Object duration,
    required Object total,
  }) => '${start} - ${end} (đã chọn ${duration} / tổng ${total})';
  @override
  String get game_waveform_select_title => 'Chọn phạm vi âm thanh';
  @override
  String get game_window_bound => 'Đã gắn';
  @override
  String get game_window_missing => 'Chưa gắn';
  @override
  String get games => 'Trò chơi';
  @override
  String get global_context_capture => 'Thu thập ngữ cảnh lựa chọn';
  @override
  String get global_context_capture_hint =>
      'Đọc văn bản xung quanh từ ứng dụng tiền cảnh để hiển thị câu hiện tại (chỉ Windows)';
  @override
  String go_to_chapter({required Object n}) => 'Chương ${n}';
  @override
  String get handlebar_audio => 'Âm thanh';
  @override
  String get handlebar_book_cover => 'Bìa sách';
  @override
  String get handlebar_card_image => 'Card Image (Cover / GIF)';
  @override
  String get handlebar_cue_sentence => 'Câu phụ đề';
  @override
  String handlebar_deprecated_label({required Object label}) =>
      '${label} (ngừng sử dụng)';
  @override
  String get handlebar_document_title => 'Tiêu đề tài liệu';
  @override
  String get handlebar_expression => 'Biểu thức';
  @override
  String get handlebar_frequencies => 'Tần suất (HTML)';
  @override
  String get handlebar_frequency_harmonic_rank => 'Tần suất (Xếp hạng)';
  @override
  String get handlebar_furigana_plain => 'Furigana';
  @override
  String get handlebar_glossary => 'Giải nghĩa';
  @override
  String get handlebar_glossary_first => 'Giải nghĩa (Đầu tiên)';
  @override
  String get handlebar_pitch_accent_categories => 'Loại thanh điệu';
  @override
  String get handlebar_pitch_accent_positions => 'Vị trí thanh điệu';
  @override
  String get handlebar_popup_selection_text => 'Văn bản chọn trong popup';
  @override
  String get handlebar_reading => 'Phiên âm';
  @override
  String get handlebar_selected_glossary => 'Giải nghĩa đã chọn';
  @override
  String get handlebar_sentence => 'Câu';
  @override
  String get handlebar_sentence_audio => 'Sentence Audio';
  @override
  String get handlebar_video_clip => 'Video Clip (GIF)';
  @override
  String get harmonic_frequency => 'Tổng hợp tần suất từ';
  @override
  String health_match_summary({required Object pct}) => 'Khớp ${pct}%';
  @override
  String get highlight_on_tap => 'Tô sáng văn bản khi chạm';
  @override
  String get home_activity => 'Hoạt động';
  @override
  String get home_activity_empty => 'Chưa có hoạt động';
  @override
  String get home_continue => 'Tiếp tục';
  @override
  String get home_filter_added => 'Đã thêm';
  @override
  String get home_filter_all => 'Tất cả';
  @override
  String get home_filter_game => 'Trò chơi';
  @override
  String get home_filter_read => 'Đọc';
  @override
  String get home_filter_watch => 'Xem';
  @override
  String get home_recently_added => 'Thêm gần đây';
  @override
  String get home_remote_source => 'Từ xa';
  @override
  String home_session_count({required Object n}) => '${n} phiên';
  @override
  String get home_today => 'Hôm nay';
  @override
  String get home_yesterday => 'Hôm qua';
  @override
  String get hover_auto_lookup => 'Tra cứu khi di chuột';
  @override
  String get hover_auto_lookup_hint =>
      'Tự động tra cứu khi di chuột qua một ký tự; không cần nhấp hay giữ Shift. Hiển thị tối đa một lớp cửa sổ bật lên. Chỉ trên máy tính.';
  @override
  String get icon_custom => 'Tùy chỉnh';
  @override
  String get icon_custom_confirm_body =>
      'Thao tác này sẽ tạo lối tắt trên màn hình chính với hình ảnh bạn chọn. Tiếp tục?';
  @override
  String get icon_custom_confirm_title => 'Biểu tượng tùy chỉnh';
  @override
  String get icon_custom_hint =>
      'Chạm vào biểu tượng để chuyển đổi, hoặc chọn hình ảnh tùy chỉnh bên dưới.';
  @override
  String get icon_default => 'Mặc định';
  @override
  String get icon_full => 'Đầy đủ';
  @override
  String get icon_shortcut_created => 'Đã tạo lối tắt trên màn hình chính.';
  @override
  String get icon_shortcut_unsupported => 'Thiết bị không hỗ trợ lối tắt.';
  @override
  String get icon_switch_success => 'Đã đổi biểu tượng ứng dụng.';
  @override
  String get icon_transparent => 'Trong suốt';
  @override
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  @override
  String get image_pause => 'Tạm dừng khi có hình ảnh';
  @override
  String get image_pause_hint =>
      'Tự động tạm dừng khi hình ảnh xuất hiện trong khi phát.';
  @override
  String get image_pause_off => 'Tắt';
  @override
  String get image_search_label_after => 'tìm thấy cho';
  @override
  String get image_search_label_before => 'Đang chọn ảnh ';
  @override
  String get image_search_label_middle => 'trong số ';
  @override
  String get image_search_label_none_before => 'Đang chọn ';
  @override
  String get image_search_label_none_middle => 'không có ảnh ';
  @override
  String get import_complete => 'Nhập từ điển hoàn tất.';
  @override
  String import_duplicate({required Object name}) =>
      'Từ điển có tên 『${name}』 đã được nhập trước đó.';
  @override
  String get import_extract => 'Đang giải nén tệp…';
  @override
  String get import_failed => 'Nhập từ điển thất bại.';
  @override
  String get import_in_progress => 'Đang nhập';
  @override
  String import_name({required Object name}) => 'Đang nhập 『${name}』…';
  @override
  String import_sidecar_audio({required Object count}) =>
      'Đã tự gắn ${count} tệp âm thanh';
  @override
  String import_sidecar_subtitle({required Object name}) =>
      'Đã tự gắn phụ đề: ${name}';
  @override
  String get import_start => 'Chuẩn bị nhập…';
  @override
  String get import_step_building_epub => 'Đang tạo EPUB…';
  @override
  String get import_step_converting_epub => 'Đang chuyển đổi sang EPUB…';
  @override
  String import_step_copying_file({required Object name}) =>
      'Đang sao chép ${name}…';
  @override
  String get import_step_done => 'Xong';
  @override
  String get import_step_importing_epub => 'Đang nhập EPUB…';
  @override
  String get import_step_matching => 'Đang căn chỉnh âm thanh…';
  @override
  String get import_step_parsing => 'Đang phân tích phụ đề…';
  @override
  String get import_step_persisting => 'Đang lưu tệp…';
  @override
  String get import_step_reading => 'Đang đọc tệp…';
  @override
  String get import_step_reading_idb => 'Đang đọc thông tin sách…';
  @override
  String get import_step_saving => 'Đang lưu bản ghi…';
  @override
  String get import_theme => 'Nhập giao diện';
  @override
  String get import_theme_hint => 'Dán mã giao diện';
  @override
  String get import_theme_invalid => 'Mã giao diện không hợp lệ';
  @override
  String get import_theme_success => 'Đã nhập giao diện';
  @override
  String import_unsupported_file_format({required Object ext}) =>
      'Định dạng tệp không được hỗ trợ: ${ext}';
  @override
  String get increase => 'Tăng';
  @override
  String get info_empty_home_tab => 'Lịch sử trống';
  @override
  String init_error_message({required Object error}) =>
      'Khởi tạo thất bại: ${error}';
  @override
  String get initialization_failed => 'Khởi tạo thất bại';
  @override
  String get interconnect_backup_backend =>
      'Dùng kết nối liên thiết bị làm backend sao lưu';
  @override
  String get interconnect_backup_backend_active =>
      'Sao lưu đã đi tới thiết bị đã ghép nối. Chọn backend khác trong Đồng bộ & sao lưu để chuyển.';
  @override
  String get interconnect_backup_backend_apply => 'Đặt làm backend sao lưu';
  @override
  String interconnect_backup_backend_current({required Object backend}) =>
      'Backend sao lưu hiện tại: ${backend}';
  @override
  String get interconnect_backup_backend_hint =>
      'Sao lưu và đồng bộ tới thiết bị đã ghép nối thay vì ổ đám mây. Mọi thứ các nút tải lên thiết bị ghép nối cho phép sẽ được ghi vào đó.';
  @override
  String get interconnect_backup_backend_needs_pairing =>
      'Kết nối với thiết bị ở trên trước.';
  @override
  String get interconnect_enable => 'Bật kết nối liên thiết bị';
  @override
  String get interconnect_enable_hint =>
      'Kết nối với các thiết bị khác qua mạng LAN. Hoạt động cùng backend sao lưu đám mây — không xung đột.';
  @override
  String get interconnect_moved_note =>
      'Cài đặt kết nối & máy chủ nằm trong danh mục Fushi Interconnect';
  @override
  String get interconnect_section_client => 'Kết nối với thiết bị khác';
  @override
  String get interconnect_section_delegate =>
      'Ủy quyền cho thiết bị đã ghép nối';
  @override
  String get interconnect_section_related => 'Nội dung từ xa & tra cứu';
  @override
  String get interconnect_summary =>
      'Đồng bộ trực tiếp giữa thiết bị & phục vụ thiết bị này làm máy chủ';
  @override
  String get interconnect_upload_audiobook_files => 'Tải lên tệp sách nói';
  @override
  String get interconnect_upload_audiobook_files_hint =>
      'Đồng bộ tệp âm thanh và gói phụ đề sách nói của thiết bị này lên thiết bị ghép nối (dung lượng lớn).';
  @override
  String get interconnect_upload_content => 'Tải lên tệp sách';
  @override
  String get interconnect_upload_content_hint =>
      'Đồng bộ sách và nội dung đọc của thiết bị này lên thiết bị ghép nối.';
  @override
  String get interconnect_upload_dictionary => 'Tải lên từ điển';
  @override
  String get interconnect_upload_dictionary_hint =>
      'Đồng bộ từ điển của thiết bị này lên thiết bị ghép nối.';
  @override
  String get interconnect_upload_section => 'Tải lên thiết bị ghép nối';
  @override
  String get interconnect_upload_video_files => 'Tải lên tệp video';
  @override
  String get interconnect_upload_video_files_hint =>
      'Đồng bộ tệp video cục bộ của thiết bị này lên thiết bị ghép nối (dung lượng lớn).';
  @override
  String get invert_audiobook_skip_direction =>
      'Đảo ngược nút bỏ qua thanh dưới';
  @override
  String get invert_swipe_direction => 'Đảo ngược hướng vuốt lật trang';
  @override
  String get invert_volume_buttons => 'Đảo ngược nút âm lượng';
  @override
  String get jump_to_char => 'Nhảy đến ký tự';
  @override
  String jump_to_char_current({
    required Object current,
    required Object total,
  }) => 'Hiện tại: ${current} / ${total}';
  @override
  String get jump_to_char_hint => 'Nhập vị trí ký tự…';
  @override
  String get keep_screen_awake => 'Giữ màn hình sáng';
  @override
  String get library_search => 'Tìm kiếm thư viện';
  @override
  String get loading_illustrations => 'Đang tải minh họa…';
  @override
  String get loading_slow_message =>
      'Nếu vị trí lưu trữ dữ liệu nằm trên ổ mạng hoặc ổ rời hiện đang ngắt kết nối, việc khởi động có thể bị treo. Nhấn Thử lại để khởi chạy với vị trí lưu trữ mặc định cho phiên này; dữ liệu của bạn vẫn ở nguyên vị trí.';
  @override
  String get loading_slow_message_mobile =>
      'Khởi động mất nhiều thời gian hơn bình thường — Fushi có thể đang tải thư viện lớn hoặc từ điển. Vui lòng đợi một chút, hoặc nhấn Thử lại để tải lại. Dữ liệu của bạn an toàn và không bị mất.';
  @override
  String get loading_slow_title =>
      'Khởi động mất nhiều thời gian hơn bình thường';
  @override
  String get local_audio => 'Âm thanh cục bộ';
  @override
  String get local_audio_add_db => 'Thêm cơ sở dữ liệu âm thanh cục bộ';
  @override
  String get local_audio_edit_sources => 'Chỉnh sửa nguồn';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      'Nhập cơ sở dữ liệu âm thanh thất bại: ${reason}';
  @override
  String get local_audio_imported => 'Đã thêm cơ sở dữ liệu âm thanh';
  @override
  String get local_audio_invalid_db =>
      'Tệp này không phải cơ sở dữ liệu âm thanh hợp lệ (không phải cơ sở dữ liệu Local Audio Server, hoặc không có âm thanh).';
  @override
  String get local_audio_no_sources =>
      'Không tìm thấy nguồn trong cơ sở dữ liệu này';
  @override
  String get local_audio_reference_original =>
      'Tham chiếu tệp gốc (không sao chép)';
  @override
  String get local_audio_reference_original_desc =>
      'Giữ cơ sở dữ liệu tại vị trí hiện tại và đọc từ đường dẫn gốc; sẽ hỏng nếu tệp bị di chuyển hoặc xóa.';
  @override
  String get local_audio_source_order_title => 'Ưu tiên nguồn';
  @override
  String get log_copy_all => 'Sao chép tất cả';
  @override
  String get log_export_failed => 'Xuất thất bại';
  @override
  String get log_export_file => 'Xuất ra tệp';
  @override
  String get log_export_saved => 'Đã lưu nhật ký';
  @override
  String get log_upload_action => 'Tải lên máy chủ';
  @override
  String get log_upload_consent_agree => 'Đồng ý & tải lên';
  @override
  String get log_upload_consent_body =>
      'Nội dung nhật ký (có thể gồm thông báo lỗi, đường dẫn tệp và tên sách) cùng phiên bản ứng dụng, nền tảng và kiểu thiết bị của bạn sẽ được tải lên máy chủ của nhà phát triển để giúp chẩn đoán sự cố. Việc này chỉ xảy ra khi bạn nhấn tải lên — không có gì được gửi tự động.';
  @override
  String get log_upload_consent_title => 'Tải nhật ký lên máy chủ?';
  @override
  String get log_upload_failed => 'Tải lên thất bại';
  @override
  String get log_upload_in_progress => 'Đang tải nhật ký lên…';
  @override
  String get log_upload_success => 'Đã tải nhật ký lên';
  @override
  String get log_upload_too_large => 'Nhật ký quá lớn, không tải lên được';
  @override
  String get login => 'Đăng nhập';
  @override
  String get lookup_audio_volume => 'Âm lượng tra từ';
  @override
  String get low_memory_mode => 'Chế độ tiết kiệm bộ nhớ';
  @override
  String get low_memory_mode_hint =>
      'Giảm sử dụng bộ nhớ đệm và bộ nhớ cho thiết bị cấu hình thấp. Một số thay đổi cần khởi động lại.';
  @override
  String get low_memory_mode_suggestion =>
      'Thử bật chế độ tiết kiệm bộ nhớ trong Cài đặt → Khác.';
  @override
  String get lyrics_artist => 'Nghệ sĩ';
  @override
  String get lyrics_blur => 'Làm mờ lời bài';
  @override
  String get lyrics_blur_hint =>
      'Làm mờ dòng hiện tại để tập trung nghe; di chuột hoặc chạm để hiển thị';
  @override
  String get lyrics_font_size => 'Cỡ chữ lời bài hát';
  @override
  String get lyrics_font_size_hint =>
      'Cỡ chữ lời bài hát độc lập với chế độ sách';
  @override
  String get lyrics_mode => 'Chế độ lời bài hát';
  @override
  String get lyrics_mode_hint_body =>
      'Chế độ lời bài hát có cài đặt cỡ chữ riêng. Bạn có thể điều chỉnh trong ⚙ Cài đặt → Kiểu chữ.';
  @override
  String get lyrics_mode_hint_title => 'Chế độ lời bài hát';
  @override
  String get lyrics_text_color => 'Màu chữ lời';
  @override
  String get lyrics_text_color_hint =>
      'Dùng màu tùy chỉnh cho chữ lời thay vì theo chủ đề';
  @override
  String get lyrics_title => 'Tên bài';
  @override
  String get lyrics_vertical_writing => 'Lời bài dọc';
  @override
  String get lyrics_vertical_writing_hint =>
      'Đọc lời từ trên xuống dưới, phải sang trái (độc lập với chế độ sách)';
  @override
  String get manage_audio_sources => 'Quản lý nguồn âm thanh';
  @override
  String get manager => 'Quản lý';
  @override
  String get manga_mode_toggle => 'Reading Mode';
  @override
  String get manga_ocr_delete => 'Xóa mô hình';
  @override
  String get manga_ocr_delete_confirm_message =>
      'Thao tác này giải phóng dung lượng ổ đĩa. Bạn có thể tải lại sau.';
  @override
  String get manga_ocr_delete_confirm_title => 'Xóa mô hình OCR?';
  @override
  String get manga_ocr_delete_done => 'Đã xóa mô hình';
  @override
  String get manga_ocr_download => 'Tải xuống mô hình';
  @override
  String get manga_ocr_download_done => 'Đã tải xuống mô hình';
  @override
  String get manga_ocr_download_failed => 'Tải xuống mô hình thất bại';
  @override
  String manga_ocr_downloading_file({required Object file}) =>
      'Đang tải xuống ${file}…';
  @override
  String get manga_ocr_engine_builtin => 'Tích hợp sẵn';
  @override
  String get manga_ocr_engine_external => 'Mokuro bên ngoài';
  @override
  String get manga_ocr_engine_none =>
      'Không có công cụ OCR. Tải xuống mô hình tích hợp hoặc đặt đường dẫn CLI mokuro trong cài đặt.';
  @override
  String get manga_ocr_external_cli_hint =>
      'Để trống để tự động phát hiện (FUSHI_MOKURO / PATH)';
  @override
  String get manga_ocr_external_cli_label => 'Đường dẫn CLI mokuro bên ngoài';
  @override
  String get manga_ocr_external_detect => 'Phát hiện';
  @override
  String manga_ocr_external_detected({required Object version}) =>
      'Đã phát hiện: ${version}';
  @override
  String get manga_ocr_external_not_found => 'Không tìm thấy mokuro';
  @override
  String get manga_ocr_model_status_missing => 'Chưa tải mô hình OCR';
  @override
  String get manga_ocr_model_status_ready => 'Mô hình OCR sẵn sàng';
  @override
  String get manga_ocr_section => 'OCR truyện tranh';
  @override
  String get manga_ocr_section_summary =>
      'Mô hình OCR tích hợp và CLI mokuro bên ngoài';
  @override
  String get manga_ocr_unsupported =>
      'OCR truyện tranh tích hợp chưa khả dụng trên nền tảng này.';
  @override
  String get manga_ocr_wizard_done => 'Đã nhập truyện tranh';
  @override
  String get manga_ocr_wizard_failed => 'OCR thất bại';
  @override
  String get manga_ocr_wizard_has_mokuro =>
      'Thư mục này đã có tệp .mokuro — hãy dùng nhập thông thường.';
  @override
  String get manga_ocr_wizard_importing => 'Đang nhập…';
  @override
  String get manga_ocr_wizard_no_images =>
      'Không tìm thấy hình ảnh trong thư mục này.';
  @override
  String manga_ocr_wizard_page_progress({
    required Object done,
    required Object total,
  }) => 'Trang ${done} / ${total}';
  @override
  String get manga_ocr_wizard_pick_folder => 'Chọn thư mục hình ảnh';
  @override
  String get manga_ocr_wizard_run => 'Chạy OCR';
  @override
  String get manga_ocr_wizard_running => 'Đang chạy OCR…';
  @override
  String get manga_ocr_wizard_title => 'Nhập truyện tranh bằng OCR';
  @override
  String get manga_ocr_wizard_title_label => 'Tiêu đề (tùy chọn)';
  @override
  String get manga_online_base_url_label => 'URL danh mục trực tuyến';
  @override
  String get manga_online_catalog_title => 'Danh mục trực tuyến';
  @override
  String get manga_online_download_selected => 'Tải xuống đã chọn';
  @override
  String get manga_online_downloaded => 'Đã nhập';
  @override
  String get manga_online_failed => 'Tải xuống thất bại';
  @override
  String get manga_online_load_failed => 'Không thể tải danh mục';
  @override
  String get manga_online_queue_added => 'Đã thêm vào hàng đợi tải xuống';
  @override
  String manga_online_queue_progress({
    required Object done,
    required Object total,
  }) => 'Tập ${done} / ${total}';
  @override
  String get manga_online_queue_section => 'Tải xuống danh mục truyện tranh';
  @override
  String get manga_online_search_hint => 'Tìm kiếm bộ truyện';
  @override
  String get manga_online_stage_cbz => 'Đang tải xuống tập…';
  @override
  String get manga_online_stage_extract => 'Đang giải nén…';
  @override
  String get manga_online_stage_mokuro => 'Đang tải dữ liệu OCR…';
  @override
  String get manga_reading_mode_spread => 'Trang đôi';
  @override
  String get manga_reading_mode_webtoon => 'Webtoon';
  @override
  String get manga_remote_ocr_cancelled => 'OCR từ xa đã bị hủy trên máy chủ.';
  @override
  String get manga_remote_ocr_engine => 'Máy chủ đã ghép nối';
  @override
  String get manga_remote_ocr_failed => 'OCR từ xa thất bại';
  @override
  String get manga_remote_ocr_no_host =>
      'Không có máy chủ ghép nối nào hỗ trợ OCR truyện tranh có thể kết nối.';
  @override
  String get manga_remote_ocr_not_ready =>
      'Mô hình OCR trên máy chủ ghép nối chưa được tải xuống. Hãy tải chúng trên máy chủ trước.';
  @override
  String get manga_remote_ocr_running => 'Máy chủ ghép nối đang chạy OCR…';
  @override
  String get manga_remote_ocr_unsupported =>
      'Máy chủ ghép nối không hỗ trợ OCR truyện tranh.';
  @override
  String manga_remote_ocr_uploading({
    required Object done,
    required Object total,
  }) => 'Đang tải lên trang ${done} / ${total}…';
  @override
  String get margin_bottom => 'Lề dưới';
  @override
  String get margin_left => 'Lề trái';
  @override
  String get margin_right => 'Lề phải';
  @override
  String get margin_top => 'Lề trên';
  @override
  String get maximum_terms => 'Số từ đầu tối đa trong kết quả từ điển';
  @override
  String get media_source_add => 'Add Source';
  @override
  String get media_source_add_local_folder => 'Local Folder';
  @override
  String get media_source_add_network => 'Mạng';
  @override
  String media_source_count_book({required Object n}) => '${n} sách';
  @override
  String media_source_count_video({required Object n}) => '${n} video';
  @override
  String media_source_last_scan({required Object time}) =>
      'Quét lần cuối ${time}';
  @override
  String get media_source_manage_title => 'Manage Sources';
  @override
  String get media_source_network_label_optional => 'Tên hiển thị (tùy chọn)';
  @override
  String get media_source_network_missing_fields =>
      'Nhập máy chủ, tên người dùng, đường dẫn từ xa và mật khẩu hoặc khóa';
  @override
  String get media_source_network_remote_path => 'Đường dẫn từ xa';
  @override
  String get media_source_network_subtitle =>
      'Thư viện từ xa SFTP / FTP / WebDAV';
  @override
  String get media_source_no_sources => 'Chưa có nguồn nào';
  @override
  String get media_source_open_folder => 'Open Folder';
  @override
  String get media_source_remove => 'Remove Source';
  @override
  String get media_source_remove_keeps_media =>
      'Xóa nguồn không xóa nội dung đã nhập.';
  @override
  String get media_source_rescan => 'Quét lại';
  @override
  String get media_source_scan_error => 'Quét thất bại';
  @override
  String get media_tracking_access_token => 'Mã truy cập';
  @override
  String get media_tracking_access_token_hint =>
      'Tạo mã truy cập cá nhân với quyền ghi';
  @override
  String get media_tracking_account => 'Tài khoản Bangumi';
  @override
  String get media_tracking_add_mapping => 'Thêm ánh xạ';
  @override
  String get media_tracking_anime => 'Anime';
  @override
  String get media_tracking_chapter => 'Chương';
  @override
  String get media_tracking_connect => 'Kết nối và xác minh';
  @override
  String get media_tracking_connected_as => 'Tài khoản đã kết nối';
  @override
  String get media_tracking_delete_mapping => 'Xóa ánh xạ';
  @override
  String get media_tracking_episode => 'Tập';
  @override
  String get media_tracking_kind => 'Danh mục';
  @override
  String get media_tracking_local_item => 'Mục cục bộ';
  @override
  String get media_tracking_manga => 'Truyện tranh';
  @override
  String get media_tracking_mappings => 'Ánh xạ mục';
  @override
  String get media_tracking_no_mappings =>
      'Chưa có ánh xạ thủ công. Fushi tự động khớp khi hoàn thành tập đầu tiên hoặc có tiến trình đọc; thêm các mục mơ hồ tại đây.';
  @override
  String get media_tracking_novel => 'Tiểu thuyết';
  @override
  String get media_tracking_pending => 'Cập nhật đang chờ';
  @override
  String get media_tracking_progress_mode => 'Đơn vị tiến trình';
  @override
  String get media_tracking_progress_offset => 'Số bắt đầu';
  @override
  String get media_tracking_saved => 'Đã lưu ánh xạ';
  @override
  String get media_tracking_search => 'Tìm kiếm Bangumi';
  @override
  String get media_tracking_search_results => 'Kết quả Bangumi';
  @override
  String get media_tracking_summary =>
      'Tự động ghi lại tiến trình anime, tiểu thuyết và truyện tranh lên Bangumi';
  @override
  String get media_tracking_sync_failed =>
      'Đồng bộ thất bại. Bản cập nhật vẫn nằm trong hàng đợi.';
  @override
  String get media_tracking_sync_now => 'Đồng bộ ngay';
  @override
  String get media_tracking_sync_success => 'Đồng bộ hoàn tất';
  @override
  String get media_tracking_token_required =>
      'Nhập và xác minh mã truy cập trước';
  @override
  String get media_tracking_volume => 'Tập';
  @override
  String get microphone_permission_denied => 'Cần quyền micro để ghi âm.';
  @override
  String get mining_audio_quality => 'Chất lượng âm thanh';
  @override
  String get mining_audio_quality_high => 'Cao';
  @override
  String get mining_audio_quality_hint =>
      'Bitrate cao hơn rõ ràng hơn nhưng thẻ sẽ lớn hơn.';
  @override
  String get mining_audio_quality_max => 'Tối đa';
  @override
  String get mining_audio_quality_standard => 'Tiêu chuẩn';
  @override
  String get mining_image_quality => 'Chất lượng hình ảnh / GIF';
  @override
  String get mining_image_quality_hd => 'HD';
  @override
  String get mining_image_quality_hint =>
      'Cao hơn sắc nét hơn nhưng thẻ sẽ lớn hơn. Tối đa giữ nguyên ảnh chụp ở độ phân giải gốc; GIF động vẫn bị giới hạn để thẻ dễ sử dụng.';
  @override
  String get mining_image_quality_max => 'Tối đa';
  @override
  String get mining_image_quality_standard => 'Tiêu chuẩn';
  @override
  String get mining_image_quality_thrift => 'Tiết kiệm dữ liệu';
  @override
  String get move_down => 'Di chuyển xuống';
  @override
  String get move_up => 'Di chuyển lên';
  @override
  String get name => 'Tên';
  @override
  String get nav_browser_extension => 'Tiện ích mở rộng';
  @override
  String get nav_downloads => 'Tải xuống';
  @override
  String get nav_game => 'Trò chơi';
  @override
  String get nav_home => 'Trang chủ';
  @override
  String get nav_lookup => 'Tra từ';
  @override
  String get nav_video => 'Video';
  @override
  String get next_sentence => 'Câu sau';
  @override
  String get no_audio_file => 'Không có tệp âm thanh để lưu.';
  @override
  String get no_collections => 'Chưa có đánh dấu hoặc câu đã lưu';
  @override
  String get no_debug_logs => 'Không có nhật ký gỡ lỗi.';
  @override
  String get no_illustrations_found => 'Không tìm thấy minh họa';
  @override
  String get no_results_found => 'Không tìm thấy kết quả.';
  @override
  String get no_search_results => 'Không tìm thấy kết quả.';
  @override
  String get no_sentence_selected => 'Chưa chọn câu nào';
  @override
  String get no_sentences_found => 'Không tìm thấy câu';
  @override
  String get no_text => 'Không có văn bản.';
  @override
  String get no_text_to_search => 'Không có văn bản để tìm kiếm.';
  @override
  String get now_listening_label => 'Đang nghe';
  @override
  String get on_screen_keyboard => 'Bàn phím ảo';
  @override
  String get options_collapse => 'Thu gọn khi tra cứu';
  @override
  String get options_delete => 'Xóa';
  @override
  String get options_edit => 'Sửa';
  @override
  String get options_expand => 'Mở rộng khi tra cứu';
  @override
  String get options_github => 'Xem mã nguồn trên GitHub';
  @override
  String get options_hide => 'Ẩn khi tra cứu';
  @override
  String get options_language => 'Cài đặt ngôn ngữ';
  @override
  String get options_show => 'Hiện khi tra cứu';
  @override
  String get overlay_lookup_independent_size =>
      'Kích thước riêng cho cửa sổ tra cứu nổi';
  @override
  String get overlay_lookup_independent_size_hint =>
      'Cung cấp kích thước tối đa riêng cho cửa sổ tra cứu nổi bên ngoài ứng dụng thay vì theo cửa sổ popup trong ứng dụng';
  @override
  String get overlay_lookup_max_height => 'Chiều cao tối đa cửa sổ tra cứu nổi';
  @override
  String get overlay_lookup_max_width => 'Chiều rộng tối đa cửa sổ tra cứu nổi';
  @override
  String page_progress({required Object current, required Object total}) =>
      'Trang ${current} / ${total}';
  @override
  String get paste => 'Dán';
  @override
  String get pause => 'Tạm dừng';
  @override
  String get pause_on_lookup => 'Tạm dừng khi tra cứu';
  @override
  String get pdf_bookmark_added => 'Đã thêm đánh dấu';
  @override
  String get pdf_bookmarks => 'Đánh dấu';
  @override
  String get pdf_bookmarks_empty => 'Chưa có đánh dấu nào.';
  @override
  String get pdf_no_text_layer =>
      'PDF này không có lớp văn bản (ảnh quét), nên không thể tra cứu.';
  @override
  String get pdf_outline => 'Mục lục';
  @override
  String get pdf_outline_empty => 'PDF này không có mục lục.';
  @override
  String get pick_image => 'Chọn ảnh';
  @override
  String get play => 'Phát';
  @override
  String get play_from_cue => 'Phát từ câu';
  @override
  String get playback_auto_pause => 'Chế độ tạm dừng theo phụ đề';
  @override
  String get playback_speed => 'Tốc độ';
  @override
  String get popup_append_sentence_tooltip => 'Thêm câu này vào thẻ';
  @override
  String get popup_auto_expand_dictionaries => 'Tự động mở rộng hàng';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      'Giữ N hàng đầu tiên của khối từ điển mở rộng ngay cả khi bật \'Thu gọn từ điển\'. Số lượng mở rộng theo cài đặt cột: hàng x cột (0 = thu gọn tất cả)';
  @override
  String get popup_bottom_docked => 'Cửa sổ tra neo dưới đáy';
  @override
  String get popup_bottom_docked_hint =>
      'Ghim cửa sổ tra thành một bảng rộng toàn màn hình ở đáy màn hình thay vì bám theo từ được tra.';
  @override
  String get popup_clear_sentence_draft_tooltip => 'Xóa các câu đã thêm';
  @override
  String get popup_ctx_adjust_button => 'Điều chỉnh ngữ cảnh';
  @override
  String get popup_ctx_box_current => 'Current';
  @override
  String get popup_ctx_box_empty => '(không có)';
  @override
  String get popup_ctx_box_next => 'After';
  @override
  String get popup_ctx_box_prev => 'Before';
  @override
  String get popup_ctx_cancel => 'Hủy';
  @override
  String get popup_ctx_confirm => 'Confirm';
  @override
  String get popup_ctx_modal_count => 'Selected %d';
  @override
  String get popup_ctx_modal_eyebrow => 'Before mining';
  @override
  String get popup_ctx_modal_title => 'Chọn ngữ cảnh câu';
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
      'Số cột từ điển tối đa (tự động điền)';
  @override
  String get popup_dictionary_max_columns_hint =>
      'Tự động điền tối đa số cột từ điển này mỗi hàng; màn hình hẹp hơn sẽ dùng ít cột hơn';
  @override
  String get popup_font_size_decrease => 'Thu nhỏ chữ từ điển';
  @override
  String get popup_font_size_increase => 'Phóng to chữ từ điển';
  @override
  String get popup_instant_scroll => 'Cuộn tức thì cửa sổ tra';
  @override
  String get popup_instant_scroll_hint =>
      'Dành cho màn hình e-ink: cửa sổ tra nhảy theo khoảng cách cố định, không có hiệu ứng cuộn.';
  @override
  String get popup_max_height => 'Chiều cao tối đa cửa sổ tra';
  @override
  String get popup_max_width => 'Chiều rộng tối đa popup';
  @override
  String get popup_no_audio_available => 'Không có âm thanh khả dụng';
  @override
  String get popup_sentence_context_next_label => 'Sau';
  @override
  String get popup_sentence_context_prev_label => 'Trước';
  @override
  String get popup_wheel_speed => 'Tốc độ cuộn popup';
  @override
  String get popup_wheel_speed_hint =>
      'Tốc độ cuộn chuột cho popup từ điển (cũng áp dụng cho tiện ích mở rộng trình duyệt).';
  @override
  String get prev_sentence => 'Câu trước';
  @override
  String get preview => 'Xem trước';
  @override
  String get preview_badge => 'Huy hiệu';
  @override
  String get preview_switch => 'Công tắc';
  @override
  String get processing_in_progress => 'Đang xử lý ảnh';
  @override
  String get profile_book_profile => 'Chỉ định cấu hình';
  @override
  String profile_confirm_delete({required Object name}) =>
      'Xóa hồ sơ "${name}"?';
  @override
  String get profile_copy => 'Sao chép';
  @override
  String get profile_copy_suffix => '(Bản sao)';
  @override
  String get profile_create => 'Tạo hồ sơ';
  @override
  String get profile_delete => 'Xóa';
  @override
  String get profile_export => 'Xuất';
  @override
  String get profile_export_failed => 'Xuất thất bại';
  @override
  String profile_follow_default_current({required Object name}) =>
      'Theo mặc định (${name})';
  @override
  String get profile_import => 'Nhập';
  @override
  String get profile_import_failed => 'Nhập thất bại';
  @override
  String get profile_import_invalid => 'Tệp hồ sơ không hợp lệ';
  @override
  String get profile_import_success => 'Đã nhập hồ sơ';
  @override
  String get profile_label => 'Hồ sơ';
  @override
  String get profile_management => 'Quản lý hồ sơ';
  @override
  String get profile_media_audiobook => 'Sách nói';
  @override
  String get profile_media_epub => 'Sách';
  @override
  String get profile_media_lyrics => 'Chế độ lời bài hát';
  @override
  String get profile_media_none => 'Không';
  @override
  String get profile_media_srtbook => 'Sách phụ đề';
  @override
  String get profile_media_type_bindings => 'Liên kết loại media';
  @override
  String get profile_media_video => 'Video';
  @override
  String get profile_name_hint => 'Tên hồ sơ';
  @override
  String get profile_rename => 'Đổi tên';
  @override
  String get reader_auto_hide_chrome_duration =>
      'Tự động ẩn điều khiển nổi sau';
  @override
  String get reader_content_timeout =>
      'Tải nội dung quá thời gian. Mở lại nếu hiển thị bất thường';
  @override
  String get reader_copy_image => 'Sao chép hình ảnh';
  @override
  String get reader_gallery => 'Bộ sưu tập';
  @override
  String get reader_gallery_current => 'Đang đọc tại đây';
  @override
  String get reader_gallery_empty => 'Không có hình minh họa trong sách này';
  @override
  String get reader_gallery_jump => 'Nhảy đến hình minh họa này';
  @override
  String get reader_gallery_tooltip => 'Duyệt hình minh họa';
  @override
  String reader_image_copy_failed({required Object error}) =>
      'Sao chép hình ảnh thất bại: ${error}';
  @override
  String get reader_image_file_unavailable => 'Tệp hình ảnh không khả dụng.';
  @override
  String reader_image_share_failed({required Object error}) =>
      'Chia sẻ hình ảnh thất bại: ${error}';
  @override
  String get reader_open_failed => 'Không thể mở sách';
  @override
  String get reader_settings_section => 'Cài đặt trình đọc';
  @override
  String get reader_theme_black => 'Đen';
  @override
  String get reader_theme_dark => 'Tối';
  @override
  String get reader_theme_ecru => 'Kem';
  @override
  String get reader_theme_eyecare => 'Eye Care';
  @override
  String get reader_theme_gray => 'Xám';
  @override
  String get reader_theme_light => 'Trắng';
  @override
  String get reader_theme_water => 'Xanh nước';
  @override
  String get reader_top_progress_floating => 'Tiến trình đọc nổi';
  @override
  String get reader_unsupported_platform =>
      'Trình đọc chưa khả dụng trên nền tảng này.';
  @override
  String get reading_activity => 'Hoạt động học tập';
  @override
  String get reading_progress => 'Tiến độ đọc';
  @override
  String get reading_section_mode => 'Chế độ & hướng';
  @override
  String get reading_statistics => 'Thống kê đọc sách';
  @override
  String get record => 'Ghi âm';
  @override
  String get refresh => 'Làm mới';
  @override
  String get rematch_adjust_window => 'Điều chỉnh cửa sổ tìm kiếm và khớp lại';
  @override
  String get rematch_run => 'Chạy lại khớp';
  @override
  String get remote_audio_source => 'Âm thanh từ xa';
  @override
  String get remote_book_audiobook_download_failed =>
      'Không thể tải sách nói cho cuốn sách này';
  @override
  String get remote_book_download => 'Tải về thiết bị này';
  @override
  String get remote_book_download_failed =>
      'Không tải được sách từ thiết bị kia';
  @override
  String get remote_book_downloaded => 'Đã tải sách từ thiết bị kia';
  @override
  String get remote_book_downloading => 'Đang tải…';
  @override
  String get remote_book_info => 'Thông tin';
  @override
  String get remote_book_info_has_audiobook => 'Bao gồm sách nói';
  @override
  String get remote_book_unavailable => 'Thiết bị ghép nối không khả dụng';
  @override
  String get remote_dict_lookup => 'Tra từ điển từ xa';
  @override
  String get remote_dict_lookup_hint =>
      'Khi từ điển cục bộ không có, truy vấn máy chủ Fushi đã cấu hình';
  @override
  String get remote_video_download => 'Tải về thiết bị này';
  @override
  String get remote_video_download_failed =>
      'Không tải được video từ thiết bị kia';
  @override
  String get remote_video_downloaded => 'Đã tải video từ thiết bị kia';
  @override
  String get remote_video_downloading => 'Đang tải…';
  @override
  String get remote_video_info => 'Thông tin';
  @override
  String get remote_video_info_has_subtitle => 'Bao gồm phụ đề';
  @override
  String get remote_video_info_no_subtitle => 'Không có phụ đề';
  @override
  String remote_video_info_size({required Object size}) =>
      'Kích thước: ${size}';
  @override
  String get remote_video_list_failed =>
      'Không thể tải video từ xa. Đảm bảo thiết bị kia đang trực tuyến và cùng mạng, rồi thử lại.';
  @override
  String get remote_video_unavailable => 'Thiết bị ghép nối không khả dụng';
  @override
  String get rename_collection => 'Đổi tên bộ sưu tập';
  @override
  String get render_restart_required =>
      'Có hiệu lực sau khi khởi động lại ứng dụng';
  @override
  String get repeat_cue => 'Lặp lại câu';
  @override
  String get reset => 'Đặt lại';
  @override
  String get retry => 'Thử lại';
  @override
  String get reverse_arrow_page_turn =>
      'Đảo chiều lật trang phím trái/phải trên bàn phím';
  @override
  String get reverse_navigation_bar => 'Đảo ngược thanh điều hướng';
  @override
  String get reverse_reader_bottom_bar => 'Đảo ngược thanh dưới trình đọc';
  @override
  String get audiobook_rematch_all_zero =>
      'Tất cả cửa sổ có tỷ lệ 0%, vui lòng điều chỉnh thủ công';
  @override
  String audiobook_rematch_auto_failed({required Object error}) =>
      'Tự động khớp thất bại: ${error}';
  @override
  String get audiobook_rematch_auto_match => 'Tự động khớp';
  @override
  String audiobook_rematch_auto_picked({
    required Object window,
    required Object pct,
  }) => 'Đã tự động chọn ${window} (khớp ${pct}%)';
  @override
  String audiobook_rematch_default_value({required Object n}) =>
      'Mặc định ${n}';
  @override
  String audiobook_rematch_health_label({
    required Object pct,
    required Object detail,
  }) => '${pct} khớp — ${detail}';
  @override
  String get audiobook_rematch_matching => 'Đang khớp…';
  @override
  String get audiobook_rematch_no_chapters => 'EPUB không có văn bản chương';
  @override
  String get audiobook_rematch_no_cues_to_match => 'Không có cue để khớp';
  @override
  String get audiobook_rematch_no_sections =>
      'Không tìm thấy văn bản chương, không thể tự động khớp';
  @override
  String get audiobook_rematch_no_stored_cues =>
      'Không có cue đã lưu, không thể chạy lại';
  @override
  String audiobook_rematch_failed({required Object error}) =>
      'Khớp lại thất bại: ${error}';
  @override
  String audiobook_rematch_result({
    required Object pct,
    required Object window,
  }) => 'Đã khớp lại: ${pct}% (cửa sổ: ${window})';
  @override
  String get audiobook_rematch_search_window => 'Cửa sổ tìm kiếm';
  @override
  String get audiobook_rematch_similarity_threshold => 'Ngưỡng tương đồng';
  @override
  String get audiobook_rematch_threshold_hint =>
      'Độ tương đồng tối thiểu cho khớp mờ (hệ số Dice). Giảm để chấp nhận nhiều khác biệt văn bản hơn, nhưng quá thấp sẽ gây khớp sai.';
  @override
  String get audiobook_rematch_window_hint =>
      'Số ký tự tìm kiếm phía trước mỗi cue trong văn bản. Điều chỉnh nếu tỷ lệ khớp thấp; quá lớn có thể lệch con trỏ với cue ngắn nhiễu.';
  @override
  String get saved_tags => 'Đã lưu thẻ tag.';
  @override
  String get scan_non_japanese_text => 'Quét văn bản không phải tiếng Nhật';
  @override
  String get scan_non_japanese_text_hint =>
      'Khi tắt, vùng chọn dừng tại ký tự không phải tiếng Nhật';
  @override
  String get search => 'Tìm kiếm';
  @override
  String get search_ellipsis => 'Tìm kiếm…';
  @override
  String get searching_in_progress => 'Đang tìm kiếm ';
  @override
  String get section_advanced_colors => 'Nâng cao';
  @override
  String get section_advanced_typography => 'Nâng cao';
  @override
  String get section_audiobook => 'Sách nói';
  @override
  String get section_audiobook_lyrics => 'Sách nói & lời';
  @override
  String get section_epub => 'Thư viện EPUB';
  @override
  String get section_floating_lyric => 'Lời bài hát nổi';
  @override
  String get section_interface => 'Giao diện';
  @override
  String get section_layout => 'Bố cục & Hiển thị';
  @override
  String get section_navigation => 'Điều hướng';
  @override
  String get section_page_turn_direction => 'Hướng lật trang';
  @override
  String get section_reader_colors => 'Màu trình đọc';
  @override
  String get section_system_theme => 'Màu chủ đề hệ thống';
  @override
  String get section_typography => 'Kiểu chữ';
  @override
  String get section_update => 'Cài đặt cập nhật';
  @override
  String get section_video_danmaku => 'Danmaku';
  @override
  String get section_video_library => 'Thư viện';
  @override
  String get section_video_playback => 'Phát';
  @override
  String get section_video_subtitles => 'Phụ đề';
  @override
  String get seed_color => 'Màu chủ đạo';
  @override
  String get seed_color_desc => 'Tạo tất cả màu mặc định bên dưới';
  @override
  String get selection_color => 'Màu đánh dấu';
  @override
  String get selection_color_desc => 'Đánh dấu chọn văn bản trong trình đọc';
  @override
  String get send => 'Gửi';
  @override
  String get series => 'Bộ truyện';
  @override
  String get series_created => 'Đã tạo bộ truyện';
  @override
  String get series_default_name => 'Bộ truyện mới';
  @override
  String series_item_count({required Object n}) => '${n} mục';
  @override
  String get series_name_hint => 'Tên bộ truyện';
  @override
  String get server_address => 'Địa chỉ máy chủ';
  @override
  String get settings => 'Cài đặt';
  @override
  String get settings_check_update_now => 'Kiểm tra cập nhật';
  @override
  String get settings_destination_appearance => 'Giao diện';
  @override
  String get settings_destination_card_creation => 'Tạo thẻ';
  @override
  String get settings_destination_diagnostics => 'Chẩn đoán';
  @override
  String get settings_destination_interconnect => 'Fushi Interconnect';
  @override
  String get settings_destination_listening => 'Nghe';
  @override
  String get settings_destination_lookup => 'Tra cứu';
  @override
  String get settings_destination_profiles => 'Sơ đồ cấu hình';
  @override
  String get settings_destination_reading => 'Đọc sách';
  @override
  String get settings_destination_reading_controls => 'Điều khiển đọc';
  @override
  String get settings_destination_sync_backup => 'Đồng bộ & Sao lưu';
  @override
  String get settings_destination_system => 'Hệ thống';
  @override
  String get settings_destination_system_summary =>
      'Chung, cập nhật & chẩn đoán';
  @override
  String get settings_destination_tracking => 'Theo dõi nội dung';
  @override
  String get settings_destination_video => 'Video';
  @override
  String get settings_search_hint => 'Tìm kiếm cài đặt';
  @override
  String get settings_search_no_results => 'Không tìm thấy cài đặt phù hợp';
  @override
  String get settings_secret_hide => 'Ẩn giá trị';
  @override
  String get settings_secret_show => 'Hiện giá trị';
  @override
  String get settings_section_app_shell => 'Ứng dụng';
  @override
  String get settings_section_data_storage => 'Vị trí lưu trữ dữ liệu';
  @override
  String get settings_section_gal_hook_overlay => 'Lớp phủ phụ đề galgame';
  @override
  String get settings_section_general => 'Chung';
  @override
  String get settings_section_lookup_audio => 'Phát âm & phản hồi';
  @override
  String get settings_section_lookup_content => 'Nội dung mục từ';
  @override
  String get settings_section_lookup_integrations => 'Tích hợp bên ngoài';
  @override
  String get settings_section_lookup_popup_window => 'Cửa sổ popup';
  @override
  String get settings_section_lookup_trigger => 'Kích hoạt tra cứu';
  @override
  String get settings_section_page_turn_input => 'Lật trang & tương tác';
  @override
  String get settings_section_reader_chrome => 'Giao diện trình đọc';
  @override
  String get settings_section_update_channel => 'Kênh cập nhật';
  @override
  String get settings_view_changelog => 'Xem nhật ký thay đổi';
  @override
  String get share => 'Chia sẻ';
  @override
  String get share_theme => 'Chia sẻ giao diện';
  @override
  String get shortcut_action_audiobook_next_sentence => 'Câu kế tiếp';
  @override
  String get shortcut_action_audiobook_play_pause => 'Phát / Tạm dừng';
  @override
  String get shortcut_action_audiobook_prev_sentence => 'Câu trước';
  @override
  String get shortcut_action_audiobook_seek_clicked =>
      'Tua âm thanh tới câu đã nhấp';
  @override
  String get shortcut_action_dpad_down => 'D-pad Xuống';
  @override
  String get shortcut_action_dpad_left => 'D-pad Trái';
  @override
  String get shortcut_action_dpad_right => 'D-pad Phải';
  @override
  String get shortcut_action_dpad_up => 'D-pad Lên';
  @override
  String get shortcut_action_global_back => 'Quay lại';
  @override
  String get shortcut_action_global_external_lookup =>
      'App-external lookup hotkey';
  @override
  String get shortcut_action_global_scroll_page_down =>
      'Cuộn xuống một màn hình';
  @override
  String get shortcut_action_global_scroll_page_up => 'Cuộn lên một màn hình';
  @override
  String get shortcut_action_global_toggle_fullscreen =>
      'Bật/tắt toàn màn hình';
  @override
  String get shortcut_action_home_focus_search => 'Tập trung tìm kiếm';
  @override
  String get shortcut_action_home_tab_books => 'Tab Sách';
  @override
  String get shortcut_action_home_tab_dict => 'Tab Từ điển';
  @override
  String get shortcut_action_home_tab_next => 'Tab kế tiếp';
  @override
  String get shortcut_action_home_tab_prev => 'Tab trước';
  @override
  String get shortcut_action_home_tab_settings => 'Tab Cài đặt';
  @override
  String get shortcut_action_popup_next_entry => 'Mục từ tiếp theo';
  @override
  String get shortcut_action_popup_prev_entry => 'Mục từ trước đó';
  @override
  String get shortcut_action_reader_create_card_from_popup =>
      'Tạo thẻ từ cửa sổ tra';
  @override
  String get shortcut_action_reader_dismiss_dict => 'Đóng từ điển';
  @override
  String get shortcut_action_reader_enter_caret => 'Vào con trỏ tra cứu';
  @override
  String get shortcut_action_reader_lookup_at_cursor =>
      'Tra từ / kích hoạt con trỏ';
  @override
  String get shortcut_action_reader_open_menu => 'Open Settings Menu';
  @override
  String get shortcut_action_reader_open_navigation => 'Open Navigation';
  @override
  String get shortcut_action_reader_page_backward => 'Trang trước';
  @override
  String get shortcut_action_reader_page_forward => 'Trang sau';
  @override
  String get shortcut_action_reader_shift_lookup => 'Tra từ với Shift';
  @override
  String get shortcut_action_reader_toggle_chrome => 'Bật/tắt điều khiển';
  @override
  String get shortcut_action_reader_toggle_furigana => 'Bật/tắt furigana';
  @override
  String get shortcut_action_video_align_subtitle_to_next =>
      'Căn phụ đề tiếp theo về thời điểm hiện tại';
  @override
  String get shortcut_action_video_align_subtitle_to_prev =>
      'Căn phụ đề trước đó về thời điểm hiện tại';
  @override
  String get shortcut_action_video_cycle_secondary_subtitle_obscure =>
      'Cycle Secondary Subtitle Obscure';
  @override
  String get shortcut_action_video_cycle_subtitle_obscure =>
      'Cycle Subtitle Obscure Mode';
  @override
  String get shortcut_action_video_next_chapter => 'Chương sau';
  @override
  String get shortcut_action_video_next_frame => 'Khung hình sau';
  @override
  String get shortcut_action_video_next_subtitle => 'Câu phụ đề sau';
  @override
  String get shortcut_action_video_open_subtitle_align =>
      'Mở căn chỉnh sóng âm phụ đề';
  @override
  String get shortcut_action_video_pause => 'Tạm dừng';
  @override
  String get shortcut_action_video_play => 'Phát';
  @override
  String get shortcut_action_video_previous_chapter => 'Chương trước';
  @override
  String get shortcut_action_video_previous_frame => 'Khung hình trước';
  @override
  String get shortcut_action_video_previous_subtitle => 'Câu phụ đề trước';
  @override
  String get shortcut_action_video_replay_current_subtitle =>
      'Phát lại câu hiện tại';
  @override
  String get shortcut_action_video_replay_previous_subtitle =>
      'Phát lại câu trước';
  @override
  String get shortcut_action_video_reset_speed => 'Đặt lại tốc độ';
  @override
  String get shortcut_action_video_screenshot => 'Chụp màn hình';
  @override
  String get shortcut_action_video_seek_backward => 'Tua lùi';
  @override
  String get shortcut_action_video_seek_forward => 'Tua tới';
  @override
  String get shortcut_action_video_speed_down => 'Giảm tốc';
  @override
  String get shortcut_action_video_speed_up => 'Tăng tốc';
  @override
  String get shortcut_action_video_subtitle_delay_decrease =>
      'Giảm độ trễ phụ đề';
  @override
  String get shortcut_action_video_subtitle_delay_increase =>
      'Tăng độ trễ phụ đề';
  @override
  String get shortcut_action_video_toggle_favorite_sentence =>
      'Yêu thích câu hiện tại';
  @override
  String get shortcut_action_video_toggle_fullscreen => 'Bật/tắt toàn màn hình';
  @override
  String get shortcut_action_video_toggle_immersive_lock =>
      'Bật/tắt khóa đắm chìm';
  @override
  String get shortcut_action_video_toggle_mute => 'Bật/tắt tắt tiếng';
  @override
  String get shortcut_action_video_toggle_play_pause => 'Phát / Tạm dừng';
  @override
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle Hide Secondary Subtitle';
  @override
  String get shortcut_action_video_toggle_shader_compare =>
      'Bật/tắt so sánh shader';
  @override
  String get shortcut_action_video_toggle_subtitle_blur =>
      'Bật/tắt làm mờ phụ đề';
  @override
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle Hide Subtitles';
  @override
  String get shortcut_action_video_toggle_subtitle_list =>
      'Bật/tắt danh sách phụ đề';
  @override
  String get shortcut_action_video_volume_down => 'Giảm âm lượng';
  @override
  String get shortcut_action_video_volume_up => 'Tăng âm lượng';
  @override
  String get shortcut_assign_pick_action => 'Gán cho hành động…';
  @override
  String get shortcut_clear => 'Xóa';
  @override
  String shortcut_conflict({required Object s}) => 'Đã được dùng bởi: ${s}';
  @override
  String shortcut_conflict_replace_confirm({required Object s}) =>
      'Phím tắt này đã được ${s} dùng. Chuyển nó sang hành động này?';
  @override
  String get shortcut_gamepad => 'Tay cầm';
  @override
  String get shortcut_gamepad_brand_label => 'Kiểu nút tay cầm';
  @override
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  @override
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  @override
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  @override
  String get shortcut_gamepad_pick_list => 'Chọn từ danh sách';
  @override
  String get shortcut_gamepad_unavailable_hint =>
      'Không phát hiện thành phần GameInput — hỗ trợ tay cầm không khả dụng. Cài đặt Windows Gaming Services để bật hỗ trợ tay cầm.';
  @override
  String get shortcut_keyboard => 'Bàn phím';
  @override
  String get shortcut_mouse_back => 'Nút quay lại';
  @override
  String get shortcut_mouse_button => 'Nút chuột';
  @override
  String get shortcut_mouse_forward => 'Nút tiến';
  @override
  String get shortcut_mouse_left => 'Nhấp trái';
  @override
  String get shortcut_mouse_middle => 'Nhấp giữa';
  @override
  String get shortcut_mouse_right => 'Nhấp phải';
  @override
  String get shortcut_press_gamepad => 'Nhấn nút tay cầm...';
  @override
  String get shortcut_press_key => 'Nhấn tổ hợp phím...';
  @override
  String get shortcut_press_mouse_button => 'Nhấn nút chuột...';
  @override
  String get shortcut_press_wheel => 'Giữ phím bổ trợ và cuộn tại đây';
  @override
  String get shortcut_reset_confirm =>
      'Khôi phục mọi phím tắt trong mục này về mặc định?';
  @override
  String get shortcut_reset_defaults => 'Khôi phục mặc định';
  @override
  String get shortcut_scope_audiobook => 'Sách nói';
  @override
  String get shortcut_scope_dictionary_popup => 'Popup từ điển';
  @override
  String get shortcut_scope_dictionary_popup_note =>
      'Hoạt động khi con trỏ ở trên popup từ điển';
  @override
  String get shortcut_scope_gamepad => 'Tay cầm';
  @override
  String get shortcut_scope_global => 'Toàn cục';
  @override
  String get shortcut_scope_global_external => 'Toàn cục (ngoài ứng dụng)';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this hotkey.';
  @override
  String get shortcut_scope_home => 'Trang chủ';
  @override
  String get shortcut_scope_reader => 'Trình đọc';
  @override
  String get shortcut_scope_video => 'Video';
  @override
  String get shortcut_settings_title => 'Phím tắt bàn phím';
  @override
  String get shortcut_stop_capture => 'Dừng';
  @override
  String get shortcut_tap_to_assign => 'Chưa đặt · nhấn để gán';
  @override
  String get shortcut_view_list => 'Xem danh sách';
  @override
  String get shortcut_view_visual => 'Bố cục tay cầm';
  @override
  String get shortcut_wheel => 'Con lăn chuột';
  @override
  String get shortcut_wheel_down => 'Cuộn xuống';
  @override
  String get shortcut_wheel_needs_modifier =>
      'Con lăn trống sẽ cuộn popup — giữ Alt / Ctrl / Shift khi cuộn';
  @override
  String get shortcut_wheel_up => 'Cuộn lên';
  @override
  String get show_bottom_bar_cue => 'Hiển thị câu hiện tại';
  @override
  String get show_expression_tags => 'Hiển thị thẻ biểu đạt';
  @override
  String get show_floating_lyric => 'Phụ đề nổi';
  @override
  String get show_media_notification => 'Hiện thông báo media';
  @override
  String get show_options => 'Hiện tùy chọn';
  @override
  String get show_top_progress_bar => 'Chỉ báo tiến độ đọc';
  @override
  String get skip_action => 'Bỏ qua';
  @override
  String skip_action_seconds({required Object n}) => '${n} giây';
  @override
  String get skip_action_sentence => '1 câu';
  @override
  String get sort_by => 'Sắp xếp';
  @override
  String get sort_imported => 'Ngày nhập';
  @override
  String get sort_recent_read => 'Đọc gần đây';
  @override
  String get sort_recent_watched => 'Xem gần đây';
  @override
  String get sort_title => 'Tên';
  @override
  String get source_description_epub => 'Đọc EPUB & tra từ điển';
  @override
  String get source_name_bookshelf => 'Giá sách';
  @override
  String get spread_auto => 'Tự động';
  @override
  String get spread_direction => 'Hướng trải trang';
  @override
  String get spread_direction_ltr => 'Trái sang phải';
  @override
  String get spread_direction_rtl => 'Phải sang trái';
  @override
  String get spread_mode => 'Chế độ trải trang';
  @override
  String get spread_off => 'Tắt';
  @override
  String get spread_on => 'Bật';
  @override
  String get srt_audio_unresolved =>
      'Không tìm thấy tệp âm thanh — vui lòng gắn lại';
  @override
  String get srt_books_section => 'Sách nói phụ đề';
  @override
  String srt_delete_confirm({required Object title}) =>
      'Xóa 『${title}』? Không thể hoàn tác.';
  @override
  String get srt_delete_title => 'Xóa sách phụ đề';
  @override
  String get srt_epub_not_ready => 'Sách chưa sẵn sàng — vui lòng nhập lại';
  @override
  String get srt_import => 'Nhập sách';
  @override
  String get srt_import_audio_needs_subtitle =>
      'Âm thanh phải đi kèm phụ đề. Để gắn âm thanh vào EPUB hiện có, nhấn giữ sách trên giá.';
  @override
  String get srt_import_author_hint => 'Tác giả (tùy chọn)';
  @override
  String get srt_import_error => 'Nhập thất bại';
  @override
  String srt_import_files_selected({required Object n}) => 'Đã chọn ${n} tệp';
  @override
  String get srt_import_hint_epub_or_srt =>
      'Chọn tệp EPUB hoặc phụ đề để nhập.';
  @override
  String get srt_import_missing_input =>
      'Vui lòng chọn ít nhất một tệp EPUB hoặc phụ đề';
  @override
  String get srt_import_missing_title => 'Vui lòng nhập tên sách';
  @override
  String get srt_import_pick_audio_dir => 'Chọn thư mục âm thanh';
  @override
  String get srt_import_pick_audio_files => 'Chọn tệp âm thanh';
  @override
  String get srt_import_pick_cover => 'Chọn ảnh bìa';
  @override
  String get srt_import_pick_epub => 'Chọn EPUB';
  @override
  String get srt_import_pick_subtitle_files => 'Chọn tệp phụ đề';
  @override
  String get srt_import_success => 'Đã nhập sách';
  @override
  String get srt_import_title_hint => 'Tên sách';
  @override
  String get startup_default_dictionary_tab => 'Mở tra từ khi khởi động';
  @override
  String get startup_default_dictionary_tab_hint =>
      'Khởi động màn hình chính ở tab tra từ thay vì mặc định hiện tại.';
  @override
  String get stash => 'Lưu tạm';
  @override
  String get stash_added_multiple => 'Nhiều mục đã được thêm vào Lưu tạm.';
  @override
  String stash_added_single({required Object term}) =>
      '『${term}』 đã được thêm vào Lưu tạm.';
  @override
  String get stash_clear_description =>
      'Toàn bộ nội dung sẽ bị xóa. Bạn có chắc chắn?';
  @override
  String stash_clear_single({required Object term}) =>
      '『${term}』 đã được xóa khỏi Lưu tạm.';
  @override
  String get stash_clear_title => 'Xóa Lưu tạm';
  @override
  String get stash_nothing_to_pop => 'Không có mục nào để lấy ra từ Lưu tạm.';
  @override
  String get stash_placeholder => 'Không có mục nào trong Lưu tạm';
  @override
  String get stat_all_time => 'Tất cả';
  @override
  String get stat_bookshelf_compare => 'Tủ sách';
  @override
  String get stat_clear_all => 'Xóa thống kê';
  @override
  String get stat_clear_all_confirm => 'Xóa';
  @override
  String get stat_clear_all_reading_message =>
      'Xóa tất cả thời gian đọc, số ký tự và số lần tra cứu/tạo thẻ? Các từ, câu đã lưu và thẻ đã tạo được giữ lại. Không thể hoàn tác.';
  @override
  String get stat_clear_all_title => 'Xóa tất cả thống kê';
  @override
  String get stat_clear_all_video_message =>
      'Xóa tất cả thời gian xem, số ký tự phụ đề và số lần tra cứu/tạo thẻ? Các từ, câu đã lưu và thẻ đã tạo được giữ lại. Không thể hoàn tác.';
  @override
  String get stat_daily_average => 'TB hàng ngày';
  @override
  String get stat_delete_message =>
      'Xóa thời gian, số ký tự và thống kê tra cứu/tạo thẻ của mục này? Các từ và câu đã lưu không bị ảnh hưởng.';
  @override
  String get stat_delete_title => 'Xóa thống kê';
  @override
  String get stat_fastest_day => 'Fastest Day';
  @override
  String get stat_favorited => 'Đã yêu thích';
  @override
  String get stat_favorited_sentence => 'Câu đã yêu thích';
  @override
  String stat_format_chars({required Object n}) => '${n} ký tự';
  @override
  String stat_format_chars_wan({required Object n}) => '${n}万 ký tự';
  @override
  String stat_format_days({required Object n}) => '${n} ngày';
  @override
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h} giờ ${m} phút';
  @override
  String stat_format_minutes({required Object n}) => '${n} phút';
  @override
  String get stat_goal => 'Daily Goal';
  @override
  String get stat_goal_daily => 'Daily Goal';
  @override
  String get stat_goal_presets => 'Mẫu sẵn';
  @override
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} ký tự';
  @override
  String get stat_goal_reached => 'Đã đạt mục tiêu';
  @override
  String stat_goal_recent_average({required Object n}) =>
      '7 ngày qua: trung bình ${n} ký tự/ngày';
  @override
  String get stat_goal_set => 'Set Goal';
  @override
  String get stat_goal_unit_chars => 'ký tự';
  @override
  String get stat_goal_weekly => 'Weekly Goal';
  @override
  String get stat_last_30_days => '30 ngày qua';
  @override
  String get stat_lookup => 'Tra cứu';
  @override
  String get stat_metric_chars => 'Ký tự';
  @override
  String get stat_metric_speed => 'Tốc độ';
  @override
  String get stat_metric_time => 'Thời gian';
  @override
  String get stat_mined => 'Đã tạo thẻ';
  @override
  String get stat_no_data => 'Chưa có dữ liệu đọc';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => 'Ngày hoạt động (7n)';
  @override
  String get stat_refresh => 'Làm mới';
  @override
  String get stat_slowest_day => 'Slowest Day';
  @override
  String get stat_sort_by_chars => 'Theo số ký tự';
  @override
  String get stat_sort_by_speed => 'Theo tốc độ';
  @override
  String get stat_sort_by_time => 'Theo thời lượng';
  @override
  String get stat_speed_anomaly => 'Ngày bất thường';
  @override
  String get stat_speed_avg => 'Trung bình động';
  @override
  String stat_speed_cph({required Object n}) => '${n} ký tự/giờ';
  @override
  String get stat_speed_summary => 'Speed Summary';
  @override
  String get stat_streak => 'Chuỗi ngày';
  @override
  String get stat_this_month => 'Tháng này';
  @override
  String get stat_this_week => 'Tuần này';
  @override
  String get stat_today => 'Hôm nay';
  @override
  String get stat_today_hourly => 'Hôm nay theo giờ';
  @override
  String get stat_trend_daily => 'Ngày';
  @override
  String get stat_trend_monthly => 'Tháng';
  @override
  String get stat_trend_weekly => 'Tuần';
  @override
  String get stat_typical_day => 'Typical Day';
  @override
  String get stat_vs_prev => 'so với 14n trước';
  @override
  String get stat_weighted_avg_speed => 'Weighted Avg';
  @override
  String get stop => 'Dừng';
  @override
  String get storage_permissions =>
      'Vui lòng cấp các quyền sau để xuất sang AnkiDroid.';
  @override
  String get stream => 'Luồng phát';
  @override
  String get swipe_page_turn_sensitivity => 'Độ nhạy lật trang khi vuốt';
  @override
  String get sync_account => 'Tài khoản';
  @override
  String get sync_audiobook => 'Đồng bộ vị trí sách nói';
  @override
  String get sync_audiobook_files => 'Đồng bộ tệp sách nói';
  @override
  String get sync_audiobook_files_warning =>
      'Âm thanh và phụ đề có thể rất lớn.';
  @override
  String sync_auth_error({required Object message}) =>
      'Xác thực thất bại: ${message}';
  @override
  String get sync_auto_sync => 'Tự động đồng bộ';
  @override
  String get sync_backend => 'Phương thức lưu trữ';
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
  String get sync_checking_account => 'Đang kiểm tra tài khoản…';
  @override
  String get sync_client_connected => 'Đã kết nối';
  @override
  String get sync_client_token => 'Mã truy cập thiết bị ngang hàng';
  @override
  String get sync_client_token_manual => 'Nhập mã thủ công';
  @override
  String get sync_compare => 'So sánh dữ liệu';
  @override
  String get sync_compare_all_books => 'Tất cả sách';
  @override
  String get sync_compare_all_local => 'Tất cả → Cục bộ';
  @override
  String get sync_compare_all_remote => 'Tất cả → Từ xa';
  @override
  String get sync_compare_all_skip => 'Tất cả → Bỏ qua';
  @override
  String sync_compare_applied({required Object count}) =>
      'Đã áp dụng ${count} thay đổi';
  @override
  String sync_compare_apply({required Object count}) =>
      'Đồng bộ ngay (${count})';
  @override
  String get sync_compare_close => 'Đóng';
  @override
  String get sync_compare_conflicts => 'Xung đột';
  @override
  String get sync_compare_days => 'ngày';
  @override
  String get sync_compare_delete_audiobook => 'Xóa sách nói trên máy từ xa';
  @override
  String get sync_compare_delete_book => 'Xóa sách trên máy từ xa';
  @override
  String sync_compare_delete_confirm({required Object name}) =>
      'Xóa "${name}" khỏi máy từ xa? Dữ liệu cục bộ được giữ lại. Không thể hoàn tác.';
  @override
  String get sync_compare_delete_dict => 'Xóa từ điển trên máy từ xa';
  @override
  String get sync_compare_deleted => 'Đã xóa khỏi máy từ xa';
  @override
  String get sync_compare_dictionaries => 'Từ điển';
  @override
  String get sync_compare_download => 'Tải xuống';
  @override
  String get sync_compare_empty => 'Không tìm thấy sách';
  @override
  String get sync_compare_local => 'Cục bộ';
  @override
  String get sync_compare_no_content =>
      'Chỉ có dữ liệu trên đám mây — không có sách để tải';
  @override
  String get sync_compare_no_data => 'Không có dữ liệu';
  @override
  String get sync_compare_remote => 'Từ xa';
  @override
  String get sync_compare_select_all => 'Chọn tất cả';
  @override
  String get sync_compare_skip => 'Bỏ qua';
  @override
  String get sync_compare_title => 'Cục bộ và từ xa';
  @override
  String get sync_compare_unavailable => 'Set up sync first';
  @override
  String get sync_compare_use_local => 'Cục bộ';
  @override
  String get sync_compare_use_remote => 'Từ xa';
  @override
  String get sync_connection_failed => 'Kết nối thất bại';
  @override
  String get sync_connection_success => 'Kết nối thành công';
  @override
  String get sync_content => 'Đồng bộ tệp sách';
  @override
  String get sync_content_warning =>
      'Tệp lớn sẽ tốn dung lượng lưu trữ và dữ liệu mạng';
  @override
  String get sync_err_auth_expired =>
      'Phiên đăng nhập đã hết hạn — vui lòng đăng nhập lại.';
  @override
  String get sync_err_invalid_client =>
      'Thông tin xác thực máy khách không hợp lệ cho bản build này — hãy cập nhật ứng dụng.';
  @override
  String get sync_err_network =>
      'Không thể kết nối máy chủ — kiểm tra mạng hoặc cài đặt proxy.';
  @override
  String get sync_err_not_configured =>
      'Bản build này chưa được cấu hình thông tin xác thực đồng bộ Google.';
  @override
  String get sync_err_quota => 'Bộ nhớ đám mây đã đầy (đã đạt giới hạn).';
  @override
  String get sync_err_scope_upgrade =>
      'Quyền đồng bộ đã thay đổi — vui lòng đăng nhập lại Google để tiếp tục đồng bộ.';
  @override
  String get sync_err_timeout =>
      'Kết nối quá thời gian — máy chủ không phản hồi kịp.';
  @override
  String sync_error({required Object message}) => 'Lỗi đồng bộ: ${message}';
  @override
  String get sync_exit_warning =>
      'Quá trình đồng bộ vẫn đang diễn ra. Thoát ngay bây giờ có thể gây mất dữ liệu.';
  @override
  String get sync_exit_warning_title => 'Đang đồng bộ';
  @override
  String get sync_host => 'Máy chủ';
  @override
  String get sync_lan_discovery => 'Thiết bị trong mạng LAN';
  @override
  String get sync_lan_no_devices => 'Không tìm thấy thiết bị';
  @override
  String get sync_lan_scan_failed =>
      'Quét thất bại — kiểm tra quyền mạng hoặc tường lửa.';
  @override
  String get sync_not_signed_in => 'Chưa đăng nhập';
  @override
  String get sync_now => 'Đồng bộ ngay';
  @override
  String sync_now_audio_in({required Object count}) => '↓${count} sách nói';
  @override
  String sync_now_audio_out({required Object count}) => '↑${count} sách nói';
  @override
  String sync_now_books_in({required Object count}) => '↓${count} sách';
  @override
  String get sync_now_busy => 'Đã có một tác vụ đồng bộ đang chạy';
  @override
  String sync_now_dicts_in({required Object count}) => '↓${count} từ điển';
  @override
  String sync_now_dicts_out({required Object count}) => '↑${count} từ điển';
  @override
  String sync_now_done({required Object detail}) => 'Đã đồng bộ · ${detail}';
  @override
  String sync_now_failed_suffix({required Object count}) =>
      ' · ${count} thất bại';
  @override
  String get sync_now_hint =>
      'Chạy đồng bộ hai chiều đầy đủ với đám mây ngay bây giờ';
  @override
  String sync_now_local_audio_in({required Object count}) =>
      '↓${count} nguồn âm thanh';
  @override
  String sync_now_local_audio_out({required Object count}) =>
      '↑${count} nguồn âm thanh';
  @override
  String get sync_now_no_changes => 'không có thay đổi';
  @override
  String get sync_pair_allow => 'Cho phép';
  @override
  String sync_pair_confirm_identity_body({required Object device}) =>
      'Bạn đang ghép nối với ${device}. Xác nhận đây là thiết bị bạn mong đợi trước khi tiếp tục.';
  @override
  String get sync_pair_confirm_identity_title => 'Xác nhận thiết bị';
  @override
  String get sync_pair_continue => 'Tiếp tục';
  @override
  String get sync_pair_denied => 'Thiết bị kia đã từ chối ghép nối';
  @override
  String get sync_pair_deny => 'Từ chối';
  @override
  String get sync_pair_enter_pin_body =>
      'Nhập mã PIN 6 chữ số hiển thị trên thiết bị kia.';
  @override
  String get sync_pair_enter_pin_title => 'Nhập mã PIN';
  @override
  String get sync_pair_failed => 'Ghép nối thất bại';
  @override
  String get sync_pair_fingerprint_changed =>
      'Chứng chỉ đã thay đổi — đã hủy ghép nối để đảm bảo an toàn (có thể bị chặn).';
  @override
  String get sync_pair_fingerprint_label => 'Vân tay chứng chỉ';
  @override
  String get sync_pair_not_fushi =>
      'Không tìm thấy thiết bị Fushi tại địa chỉ này. Địa chỉ đã được lưu.';
  @override
  String get sync_pair_pairing => 'Đang ghép nối…';
  @override
  String get sync_pair_pin_label => 'Nhập mã PIN này trên thiết bị kia';
  @override
  String get sync_pair_pin_waiting => 'Đang chờ thiết bị kia nhập mã PIN…';
  @override
  String get sync_pair_pin_wrong => 'Mã PIN sai — thử lại';
  @override
  String get sync_pair_repair => 'Ghép nối lại';
  @override
  String get sync_pair_request_body =>
      'Một thiết bị đang yêu cầu ghép nối. Cho phép nó đồng bộ với thiết bị này?';
  @override
  String get sync_pair_request_title => 'Yêu cầu ghép nối';
  @override
  String get sync_pair_success => 'Đã ghép nối — đã điền mã';
  @override
  String get sync_pair_unavailable =>
      'Thiết bị kia chưa sẵn sàng hoặc đang dùng phiên bản cũ. Hãy cập nhật và bật đồng bộ, rồi thử lại.';
  @override
  String get sync_pair_unknown_device => 'Thiết bị không xác định';
  @override
  String get sync_paired_peer_remove => 'Xóa';
  @override
  String get sync_paired_peer_removed => 'Đã xóa thiết bị ghép nối';
  @override
  String get sync_paired_peer_unknown => 'Thiết bị không xác định';
  @override
  String get sync_paired_peers_empty => 'Chưa có thiết bị ghép nối';
  @override
  String get sync_paired_peers_title => 'Thiết bị đã ghép nối';
  @override
  String get sync_password => 'Mật khẩu';
  @override
  String get sync_port => 'Cổng';
  @override
  String get sync_private_key => 'Khóa riêng tư';
  @override
  String get sync_progress_audiobooks => 'Đang đồng bộ sách nói';
  @override
  String get sync_progress_books => 'Đang nhập sách';
  @override
  String get sync_progress_dictionaries => 'Đang đồng bộ từ điển';
  @override
  String get sync_progress_local_audio => 'Đang đồng bộ âm thanh cục bộ';
  @override
  String get sync_progress_reading => 'Đang đồng bộ dữ liệu đọc';
  @override
  String get sync_progress_videos => 'Đang đồng bộ video';
  @override
  String get sync_role_locked_by_client =>
      'Đã kết nối tới thiết bị khác. Gỡ kết nối trước khi chạy như máy chủ.';
  @override
  String get sync_role_locked_by_server =>
      'Thiết bị này đang chạy như máy chủ. Tắt máy chủ trước khi kết nối tới thiết bị khác.';
  @override
  String get sync_section_actions => 'Tác vụ đồng bộ';
  @override
  String get sync_section_backup => 'Sao lưu cục bộ';
  @override
  String get sync_section_content => 'Nội dung đồng bộ';
  @override
  String get sync_section_host_server => 'Thiết bị này làm máy chủ đồng bộ';
  @override
  String get sync_section_host_server_footer =>
      'Cho phép thiết bị khác đồng bộ từ thiết bị này. Độc lập với phương thức lưu trữ ở trên.';
  @override
  String get sync_section_method => 'Phương thức đồng bộ';
  @override
  String get sync_server_copy_token => 'Sao chép mã';
  @override
  String get sync_server_enable => 'Bật máy chủ đồng bộ';
  @override
  String get sync_server_mode_active => 'Thiết bị này là máy chủ đồng bộ';
  @override
  String get sync_server_mode_clients_drive =>
      'Các máy khách đã kết nối sẽ khởi tạo đồng bộ — máy này không cần đồng bộ thủ công.';
  @override
  String get sync_server_port => 'Cổng máy chủ';
  @override
  String sync_server_port_in_use({required Object port}) =>
      'Cổng ${port} đang được sử dụng — chọn cổng khác.';
  @override
  String get sync_server_regenerate_token => 'Tạo lại mã';
  @override
  String get sync_server_running => 'Máy chủ đang chạy';
  @override
  String get sync_server_stopped => 'Máy chủ đã dừng';
  @override
  String get sync_server_tls_enable => 'Mã hóa Interconnect (HTTPS/TLS)';
  @override
  String get sync_server_tls_repair_hint =>
      'Thay đổi này yêu cầu các thiết bị đã ghép nối phải ghép nối lại';
  @override
  String get sync_server_token => 'Mã truy cập';
  @override
  String get sync_show_remote_entries => 'Hiển thị mục từ xa';
  @override
  String get sync_show_remote_entries_warning =>
      'Hiển thị sách và video tồn tại trên thiết bị ghép nối hoặc đám mây dưới dạng thẻ giữ chỗ mà bạn có thể tải xuống hoặc phát trực tuyến.';
  @override
  String get sync_sign_in => 'Đăng nhập';
  @override
  String get sync_sign_out => 'Đăng xuất';
  @override
  String get sync_signed_in => 'Đã đăng nhập';
  @override
  String get sync_statistics => 'Đồng bộ thống kê';
  @override
  String get sync_summary => 'Đám mây, LAN P2P & sao lưu cục bộ';
  @override
  String get sync_test_connection => 'Kiểm tra kết nối';
  @override
  String get sync_use_tls => 'Dùng TLS';
  @override
  String get sync_username => 'Tên đăng nhập';
  @override
  String get sync_video_files => 'Tải lên tệp video';
  @override
  String get sync_video_files_warning => 'Tệp video có thể rất lớn.';
  @override
  String get sync_webdav_missing_fields => 'Thiếu thông tin';
  @override
  String sync_webdav_test_failed({required Object message}) =>
      'Kết nối thất bại: ${message}';
  @override
  String get sync_webdav_url => 'URL máy chủ';
  @override
  String tag_added_to_book({required Object name}) =>
      'Đã thêm thẻ "${name}" vào sách.';
  @override
  String tag_added_to_collection({required Object name}) =>
      'Đã thêm nhãn ${name} vào bộ sưu tập.';
  @override
  String tag_added_to_video({required Object name}) =>
      'Đã thêm thẻ「${name}」vào video.';
  @override
  String tag_already_on_book({required Object name}) =>
      'Thẻ "${name}" đã có trong sách này.';
  @override
  String tag_already_on_collection({required Object name}) =>
      'Nhãn ${name} đã có trong bộ sưu tập này.';
  @override
  String tag_book_count({required Object count}) => '${count} sách';
  @override
  String get tag_clear_filter => 'Xóa bộ lọc';
  @override
  String get tag_color => 'Màu';
  @override
  String tag_delete_confirm({required Object name}) => 'Xóa thẻ "${name}"?';
  @override
  String get tag_filter_title => 'Lọc theo thẻ';
  @override
  String get tag_label => 'Thẻ';
  @override
  String get tag_manage => 'Quản lý thẻ';
  @override
  String get tag_manage_title => 'Quản lý thẻ';
  @override
  String get tag_name_duplicate => 'Đã tồn tại thẻ với tên này.';
  @override
  String get tag_name_empty => 'Tên thẻ không được để trống.';
  @override
  String get tag_name_hint => 'Tên thẻ';
  @override
  String get tag_new => 'Thẻ mới';
  @override
  String get tag_no_books_for_filter =>
      'Không có sách nào khớp với thẻ đã chọn.';
  @override
  String get tag_no_tags_hint => 'Chưa có thẻ nào. Tạo một thẻ để bắt đầu.';
  @override
  String get tag_seed_stars => 'Thêm nhãn xếp hạng sao';
  @override
  String get tag_seed_stars_added => 'Đã thêm nhãn xếp hạng sao';
  @override
  String get tag_seed_stars_exists => 'Nhãn xếp hạng sao đã tồn tại';
  @override
  String get tap_empty_hide_chrome => 'Thanh điều khiển nổi';
  @override
  String get text_segmentation => 'Phân đoạn văn bản';
  @override
  String get texthooker => 'Texthooker';
  @override
  String get texthooker_enabled => 'Texthooker (nhận văn bản)';
  @override
  String get texthooker_enabled_hint =>
      'Kết nối Textractor/mpv/agent và tra văn bản nhận được';
  @override
  String get theme_black => 'Đen tuyền';
  @override
  String get theme_code_copied => 'Đã sao chép mã giao diện vào bộ nhớ tạm';
  @override
  String get theme_dark => 'Tối sâu';
  @override
  String get theme_ecru => 'Kem';
  @override
  String get theme_eyecare => 'Eye Care';
  @override
  String get theme_gray => 'Xám tối';
  @override
  String get theme_light => 'Trắng';
  @override
  String get theme_seed_preview_hint =>
      'Các ô màu bên dưới xem trước những màu thực sự được tạo từ màu hạt giống của bạn. Để buộc một màu cụ thể làm màu nhấn chính, hãy bật công tắc Màu chính và chọn nó rõ ràng.';
  @override
  String get theme_water => 'Xanh nước';
  @override
  String toc_section({required Object n}) => 'Mục lục (${n})';
  @override
  String get top_progress_pos_center => 'Giữa';
  @override
  String get top_progress_pos_left => 'Trên trái';
  @override
  String get top_progress_pos_right => 'Trên phải';
  @override
  String get top_progress_position => 'Vị trí tiến trình';
  @override
  String get torrent_upload_intro_body =>
      'Tải lên (seeding) mặc định tắt. Bật để chia sẻ nội dung đã tải xuống lại cho mạng — điều này sử dụng băng thông tải lên của bạn. Bạn có thể thay đổi bất cứ lúc nào trong Cài đặt.';
  @override
  String get torrent_upload_intro_confirm => 'Lưu';
  @override
  String get torrent_upload_intro_enable => 'Bật tải lên / seeding';
  @override
  String get torrent_upload_intro_keep_off => 'Giữ tắt';
  @override
  String get torrent_upload_intro_title => 'Tải lên / seeding';
  @override
  String get reader_blur_images => 'Làm mờ hình ảnh (chống spoiler)';
  @override
  String get reader_font_size => 'Cỡ chữ';
  @override
  String get reader_font_vpal => 'VPAL (thay thế dọc)';
  @override
  String get reader_furigana_hide => 'Ẩn';
  @override
  String get reader_furigana_mode => 'Furigana';
  @override
  String get reader_furigana_mode_hint => '';
  @override
  String get reader_furigana_partial => 'Một phần';
  @override
  String get reader_furigana_show => 'Hiện';
  @override
  String get reader_furigana_toggle => 'Chuyển đổi';
  @override
  String get reader_horizontal => 'Ngang';
  @override
  String get reader_line_height => 'Chiều cao dòng';
  @override
  String get reader_merge_image_pages => 'Ghép trang minh họa vào văn bản';
  @override
  String get reader_merge_image_pages_subtitle =>
      'Các chương chỉ có một hình ảnh sẽ hiển thị nội tuyến trong chương văn bản liền kề thay vì trên trang riêng';
  @override
  String get reader_no_books_added => 'Chưa có sách nào trong thư viện';
  @override
  String get reader_not_bound_cannot_rematch =>
      'Sách nói chưa liên kết với sách, không thể khớp lại';
  @override
  String get reader_orient_mixed => 'Hỗn hợp';
  @override
  String get reader_orient_upright => 'Thẳng đứng';
  @override
  String get reader_page_columns_auto => 'Tự động';
  @override
  String get reader_paginated => 'Phân trang';
  @override
  String get reader_paragraph_spacing => 'Khoảng cách đoạn văn';
  @override
  String get reader_reader_styles => 'Ưu tiên kiểu sách';
  @override
  String get reader_scroll => 'Cuộn';
  @override
  String get reader_text_indentation => 'Thụt đầu đoạn';
  @override
  String get reader_text_justify => 'Căn đều văn bản';
  @override
  String get reader_theme => 'Giao diện';
  @override
  String get reader_vert_kerning => 'Khoảng cách chữ (dọc)';
  @override
  String get reader_vert_text_orient => 'Hướng văn bản';
  @override
  String get reader_vertical => 'Dọc';
  @override
  String get reader_view_mode_label => 'Trang / Cuộn';
  @override
  String get reader_vn => 'Visual Novel';
  @override
  String get reader_writing_direction => 'Hướng viết';
  @override
  String get undo => 'Hoàn tác';
  @override
  String get unit_milliseconds => 'ms';
  @override
  String get unit_pixels => 'px';
  @override
  String untitled_book({required Object id}) => 'Sách ${id}';
  @override
  String get untitled_chapter => '(Không có tiêu đề)';
  @override
  String get update_already_latest => 'Bạn đang dùng phiên bản mới nhất';
  @override
  String get update_auto_install => 'Tự động cài đặt bản cập nhật';
  @override
  String get update_available => 'Có bản cập nhật';
  @override
  String update_cached_newer({required Object version}) =>
      'Có bản cập nhật ${version} (đang xác minh…)';
  @override
  String update_cached_up_to_date({required Object version}) =>
      'Đang ở phiên bản mới nhất ${version} (đang kiểm tra…)';
  @override
  String get update_cancel => 'Hủy';
  @override
  String get update_cancelled => 'Đã hủy tải xuống';
  @override
  String get update_cancelling => 'Đang hủy…';
  @override
  String get update_channel_beta => 'Beta';
  @override
  String get update_channel_debug => 'Debug';
  @override
  String get update_channel_stable => 'Ổn định';
  @override
  String get update_check_failed => 'Kiểm tra cập nhật thất bại';
  @override
  String get update_checking_now => 'Đang kiểm tra cập nhật…';
  @override
  String get update_connecting => 'Đang kết nối…';
  @override
  String get update_debug_channel => 'Kênh cập nhật gỡ lỗi';
  @override
  String get update_debug_channel_warning =>
      'Bản dựng kênh gỡ lỗi có thể không ổn định. Sử dụng theo rủi ro của bạn.';
  @override
  String get update_download => 'Tải xuống';
  @override
  String get update_download_failed => 'Tải xuống thất bại';
  @override
  String get update_download_restarted_from_zero => 'đã tải lại từ đầu';
  @override
  String update_download_resume_status({required Object status}) =>
      'Tiếp tục: ${status}';
  @override
  String get update_download_resumed => 'đã tiếp tục';
  @override
  String update_download_size({
    required Object received,
    required Object total,
  }) => 'Đã tải: ${received} / ${total}';
  @override
  String update_download_source({required Object source}) => 'Nguồn: ${source}';
  @override
  String update_download_speed({required Object speed}) => 'Tốc độ: ${speed}';
  @override
  String get update_downloading => 'Đang tải bản cập nhật…';
  @override
  String get update_hide => 'Ẩn';
  @override
  String update_install_current_executable({required Object path}) =>
      'Chương trình đang chạy: ${path}';
  @override
  String update_install_deletefile_failure({
    required Object path,
    required Object code,
  }) => 'Trình cài đặt không thể thay thế ${path} (mã ${code})';
  @override
  String update_install_detected_location({
    required Object source,
    required Object path,
  }) => 'Vị trí cài đặt phát hiện được (${source}): ${path}';
  @override
  String update_install_failure_summary({required Object summary}) =>
      'Lý do: ${summary}';
  @override
  String get update_install_incomplete_message =>
      'Trình cài đặt đã khởi chạy, nhưng Fushi vẫn ở phiên bản trước. Hãy xem nhật ký trình cài đặt bên dưới.';
  @override
  String get update_install_incomplete_title => 'Cập nhật chưa hoàn tất';
  @override
  String update_install_installer_pid({required Object pid}) =>
      'PID trình cài đặt: ${pid}';
  @override
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi không thể khởi chạy trình cài đặt cho phiên bản ${version}. Hãy xem đường dẫn nhật ký bên dưới.';
  @override
  String get update_install_launch_failed_title =>
      'Trình cài đặt cập nhật không khởi chạy';
  @override
  String update_install_launcher_pid({required Object pid}) =>
      'PID trình khởi chạy cập nhật: ${pid}';
  @override
  String update_install_libmpv_holder({
    required Object pid,
    required Object path,
  }) => 'Tiến trình giữ libmpv: PID ${pid} - ${path}';
  @override
  String get update_install_log_not_observed =>
      'Nhật ký trình cài đặt không được tạo trong lúc kiểm tra sau khởi chạy.';
  @override
  String get update_install_log_observed =>
      'Nhật ký trình cài đặt đã được tạo trong lúc kiểm tra sau khởi chạy.';
  @override
  String update_install_log_path({required Object path}) =>
      'Nhật ký trình cài đặt: ${path}';
  @override
  String get update_install_manual_close_retry =>
      'Hãy đóng Fushi theo PID/đường dẫn liệt kê ở trên, rồi thử lại cập nhật hoặc chạy lại trình cài đặt.';
  @override
  String get update_install_parent_exit_not_observed =>
      'Trình khởi chạy cập nhật không thấy Fushi thoát trước khi khởi chạy trình cài đặt.';
  @override
  String get update_install_parent_exit_observed =>
      'Fushi đã thoát trước khi trình cài đặt được khởi chạy.';
  @override
  String update_install_path_mismatch({required Object warning}) =>
      'Thư mục cài đặt không khớp: ${warning}';
  @override
  String get update_install_permission_cancel => 'Hủy';
  @override
  String get update_install_permission_message =>
      'Vui lòng cho phép Fushi cài đặt ứng dụng trong cài đặt hệ thống, rồi thử lại.';
  @override
  String get update_install_permission_retry => 'Thử cài đặt lại';
  @override
  String get update_install_permission_title => 'Cho phép cài đặt bản cập nhật';
  @override
  String get update_install_restart_windows_hint =>
      'Nếu các tiến trình liệt kê đã đóng nhưng libmpv-2.dll vẫn bị khóa, hãy khởi động lại Windows và cài đặt lại.';
  @override
  String update_install_running_process({
    required Object pid,
    required Object path,
  }) => 'Tiến trình Fushi đang chạy: PID ${pid} - ${path}';
  @override
  String update_install_success_message({required Object version}) =>
      'Fushi đã được cập nhật lên phiên bản ${version}.';
  @override
  String get update_install_success_title => 'Đã cài đặt cập nhật';
  @override
  String update_install_target_dir({required Object path}) =>
      'Thư mục cài đặt: ${path}';
  @override
  String get update_installing => 'Đang cài đặt…';
  @override
  String get update_mac_install_incomplete_message =>
      'Không thể áp dụng bản cập nhật, nên Fushi vẫn ở phiên bản trước. Bạn có thể thử cập nhật lại hoặc tải bản phát hành mới nhất thủ công.';
  @override
  String update_message({required Object version}) =>
      'Phiên bản ${version} đã có sẵn.';
  @override
  String update_network_failure({
    required Object host,
    required Object reason,
  }) => 'Không thể kết nối ${host}: ${reason}';
  @override
  String get update_never_remind => 'Không nhắc lại';
  @override
  String get update_skip => 'Bỏ qua';
  @override
  String get url => 'URL';
  @override
  String get video_audio_track => 'Bản âm thanh';
  @override
  String get video_audio_track_empty =>
      'Không có bản âm thanh có thể chuyển đổi';
  @override
  String video_audio_track_switched({required Object label}) =>
      'Bản âm thanh: ${label}';
  @override
  String get video_auto_play_next_cancel => 'Hủy';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      'Phát tập sau sau ${seconds} giây';
  @override
  String get video_black_flash_notice_action => 'Xem gợi ý';
  @override
  String get video_black_flash_notice_dont_show_again => 'Không hiển thị lại';
  @override
  String get video_bottom_next_cue =>
      'Câu phụ đề sau (tới một chút nếu không có)';
  @override
  String get video_bottom_play_pause => 'Phát / Tạm dừng';
  @override
  String get video_bottom_prev_cue =>
      'Câu phụ đề trước (lùi một chút nếu không có)';
  @override
  String get video_bottom_seek_back => 'Lùi 10 giây';
  @override
  String get video_bottom_seek_back_label => '−10s';
  @override
  String get video_bottom_seek_forward => 'Tới 10 giây';
  @override
  String get video_bottom_seek_forward_label => '+10s';
  @override
  String video_chapter_n({required Object n}) => 'Chương ${n}';
  @override
  String get video_chapters => 'Chương';
  @override
  String get video_chapters_empty => 'Không có chương';
  @override
  String get video_clip_export => 'Xuất đoạn';
  @override
  String get video_clip_export_cancelled => 'Đã hủy xuất clip';
  @override
  String video_clip_export_failed({required Object reason}) =>
      'Xuất đoạn thất bại: ${reason}';
  @override
  String get video_clip_export_ffmpeg_failed => 'ffmpeg thất bại';
  @override
  String get video_clip_export_ffmpeg_unavailable => 'ffmpeg không khả dụng';
  @override
  String get video_clip_export_input_missing => 'Video nguồn không khả dụng';
  @override
  String get video_clip_export_invalid_range => 'Không có khoảng đoạn hợp lệ';
  @override
  String get video_clip_export_output_missing =>
      'Không có tệp đầu ra nào được tạo';
  @override
  String get video_clip_export_remote_download_required =>
      'Hãy tải video từ thiết bị kia về máy này trước khi xuất đoạn';
  @override
  String get video_clip_export_source_changed =>
      'Nguồn video đã thay đổi; đã hủy xuất đoạn';
  @override
  String get video_clip_export_start => 'Bắt đầu xuất đoạn';
  @override
  String get video_clip_export_stop => 'Dừng và xuất đoạn';
  @override
  String video_clip_exported({required Object path}) => 'Đã xuất đoạn: ${path}';
  @override
  String video_clip_exported_with_subtitles({required Object path}) =>
      'Đã xuất clip kèm phụ đề: ${path}';
  @override
  String get video_clip_exporting => 'Đang xuất đoạn…';
  @override
  String get video_continue_watching => 'Continue Watching';
  @override
  String get video_control_audio_track => 'Bản âm thanh';
  @override
  String get video_control_customize_hint =>
      'Chọn vị trí đặt mỗi nút trên trình phát, hoặc gỡ nó ra.';
  @override
  String get video_control_episode_list => 'Danh sách tập';
  @override
  String get video_control_favorite_sentence => 'Yêu thích câu hiện tại';
  @override
  String get video_control_fullscreen => 'Toàn màn hình';
  @override
  String get video_control_next_cue => 'Câu phụ đề sau';
  @override
  String get video_control_palette_hint =>
      'Kéo một nút vào ô để thêm; một nút có thể nằm ở nhiều ô.';
  @override
  String get video_control_palette_title => 'Tất cả nút';
  @override
  String get video_control_play_pause => 'Phát/Tạm dừng';
  @override
  String get video_control_previous_cue => 'Câu phụ đề trước';
  @override
  String get video_control_reject_required =>
      'Các nút điều khiển bắt buộc phải ở lại trình phát.';
  @override
  String get video_control_reject_unavailable =>
      'Không thể đặt nút điều khiển này ở đó.';
  @override
  String get video_control_reject_volume_bottom =>
      'Âm lượng chỉ có thể đặt ở thanh dưới.';
  @override
  String get video_control_remove_from_slot => 'Gỡ ra';
  @override
  String get video_control_reset_layout =>
      'Khôi phục bố cục nút trình phát mặc định';
  @override
  String get video_control_screenshot => 'Chụp màn hình';
  @override
  String get video_control_seek_backward => 'Lùi 10 giây';
  @override
  String get video_control_seek_forward => 'Tới 10 giây';
  @override
  String get video_control_settings => 'Cài đặt trình phát';
  @override
  String get video_control_slot_bottom_center => 'Thanh dưới (giữa)';
  @override
  String get video_control_slot_bottom_left => 'Thanh dưới (trái)';
  @override
  String get video_control_slot_bottom_right => 'Thanh dưới (phải)';
  @override
  String get video_control_slot_drop_hint => 'Kéo nút vào đây';
  @override
  String get video_control_slot_hidden => 'Đã gỡ khỏi trình phát';
  @override
  String get video_control_slot_screen_left => 'Bên trái màn hình';
  @override
  String get video_control_slot_screen_right => 'Bên phải màn hình';
  @override
  String get video_control_slot_top_center => 'Thanh trên (giữa)';
  @override
  String get video_control_slot_top_left => 'Thanh trên (trái)';
  @override
  String get video_control_slot_top_right => 'Thanh trên (phải)';
  @override
  String get video_control_speed => 'Tốc độ';
  @override
  String get video_control_subtitle_list => 'Danh sách phụ đề';
  @override
  String get video_control_subtitle_track => 'Bản phụ đề';
  @override
  String get video_control_title => 'Tên video';
  @override
  String get video_control_volume => 'Âm lượng';
  @override
  String get video_danmaku_manual_bind_empty => 'Chưa có danmaku cho tập này.';
  @override
  String get video_danmaku_manual_bind_failed =>
      'Không thể tải danmaku cho tập này. Thử lại sau.';
  @override
  String get video_danmaku_manual_bind_server_error =>
      'Máy chủ danmaku từ chối yêu cầu. Thử lại sau.';
  @override
  String get video_danmaku_manual_match_title => 'Khớp danmaku';
  @override
  String get video_danmaku_manual_network_error =>
      'Lỗi mạng. Kiểm tra kết nối và thử lại.';
  @override
  String get video_danmaku_manual_no_result => 'Không tìm thấy anime phù hợp.';
  @override
  String get video_danmaku_manual_search_action => 'Tìm kiếm';
  @override
  String get video_danmaku_manual_search_hint => 'Tên anime';
  @override
  String get video_danmaku_manual_search_prompt =>
      'Tìm kiếm Dandanplay theo tên anime, rồi chọn một tập.';
  @override
  String get video_danmaku_manual_server_error =>
      'Tìm kiếm thất bại. Thử lại sau.';
  @override
  String video_delete_confirm({required Object title}) =>
      'Xóa 『${title}』? Không thể hoàn tác.';
  @override
  String get video_delete_title => 'Xóa video';
  @override
  String get video_double_tap_next_cue => 'Câu sau';
  @override
  String get video_double_tap_prev_cue => 'Câu trước';
  @override
  String get video_drop_audio_unsupported =>
      'Hãy thả tệp phụ đề lên video hiện tại. Tệp âm thanh không thể gắn ở đây.';
  @override
  String get video_drop_subtitle_only =>
      'Hãy thả tệp phụ đề lên video hiện tại.';
  @override
  String get video_episode_list => 'Danh sách tập';
  @override
  String get video_episode_list_empty => 'Không có tập';
  @override
  String video_favorite_count({required Object count}) =>
      '${count} câu yêu thích';
  @override
  String get video_file_error_content =>
      'Không thể tải tệp video. Hãy đảm bảo tệp tồn tại và nằm trong thư mục mà ứng dụng có thể truy cập.';
  @override
  String get video_file_not_found => 'Không tìm thấy tệp video';
  @override
  String get video_immersive_locked => 'Đã bật chế độ đắm chìm';
  @override
  String get video_immersive_mode_full => 'Toàn bộ điều khiển';
  @override
  String get video_immersive_mode_lookup_only => 'Chỉ tra từ';
  @override
  String get video_immersive_mode_seek_lookup => 'Phím tắt + tra từ';
  @override
  String get video_immersive_mode_unlock_only => 'Chỉ mở khóa';
  @override
  String get video_immersive_unlock => 'Mở khóa';
  @override
  String get video_immersive_unlocked => 'Đã tắt chế độ đắm chìm';
  @override
  String get video_import_action => 'Nhập video';
  @override
  String get video_import_confirm => 'Nhập';
  @override
  String get video_import_pick_subtitle => 'Chọn phụ đề';
  @override
  String get video_import_pick_video => 'Chọn tệp video';
  @override
  String get video_import_stream_advanced => 'Nâng cao (tiêu đề chống leech)';
  @override
  String get video_import_stream_referer => 'Referer (tùy chọn)';
  @override
  String get video_import_stream_subtitle_url_field =>
      'URL phụ đề bên ngoài (tùy chọn)';
  @override
  String get video_import_stream_url_field => 'URL luồng video';
  @override
  String get video_import_stream_url_hint =>
      'Phát URL luồng HLS/m3u8/mp4 (với URL phụ đề bên ngoài và Referer/User-Agent chống leech tùy chọn)';
  @override
  String get video_import_stream_user_agent => 'User-Agent (tùy chọn)';
  @override
  String get video_import_subtitle_optional =>
      'Phụ đề ngoài (tùy chọn) — khi phát bạn có thể chuyển đổi giữa phụ đề nhúng/phụ đề ngoài bất cứ lúc nào';
  @override
  String get video_import_title => 'Nhập video';
  @override
  String get video_jimaku_anime_match => 'Khớp anime';
  @override
  String get video_jimaku_api_key => 'Khóa API Jimaku';
  @override
  String get video_jimaku_api_key_hint =>
      'Lấy API key miễn phí tại jimaku.cc/account';
  @override
  String get video_jimaku_api_key_set => 'Đã đặt API key';
  @override
  String video_jimaku_batch_done({
    required Object done,
    required Object total,
  }) => 'Đã tải phụ đề: ${done}/${total}';
  @override
  String get video_jimaku_batch_download => 'Tải tất cả';
  @override
  String get video_jimaku_batch_title => 'Tải phụ đề cho bộ sưu tập';
  @override
  String get video_jimaku_download_failed => 'Tải thất bại';
  @override
  String get video_jimaku_downloaded => 'Đã tải và áp dụng phụ đề';
  @override
  String get video_jimaku_episode => 'Tập (tùy chọn)';
  @override
  String get video_jimaku_episode_hint => 'Để trống để liệt kê tất cả';
  @override
  String get video_jimaku_fetch => 'Lấy phụ đề (Jimaku)';
  @override
  String get video_jimaku_filter => 'Lọc kết quả (vd WEBRip, BD)';
  @override
  String get video_jimaku_find_sources => 'Tìm phụ đề';
  @override
  String get video_jimaku_language => 'Ngôn ngữ';
  @override
  String get video_jimaku_language_all => 'Tất cả';
  @override
  String get video_jimaku_no_key => 'Hãy nhập Jimaku API key trước';
  @override
  String get video_jimaku_no_results => 'Không tìm thấy phụ đề';
  @override
  String get video_jimaku_query => 'Tên series';
  @override
  String get video_jimaku_search => 'Tìm';
  @override
  String get video_jimaku_series => 'Bộ truyện';
  @override
  String get video_jimaku_show_all_episodes => 'Hiển thị tất cả các tập';
  @override
  String get video_jimaku_source => 'Nguồn phụ đề';
  @override
  String get video_jimaku_source_hint =>
      'Chọn một mục Jimaku. Gói theo mùa sẽ tự động khớp theo tập.';
  @override
  String video_last_watched({required Object date}) => 'Xem lần cuối ${date}';
  @override
  String get video_library_empty => 'Chưa nhập video nào';
  @override
  String get video_load_failed_back => 'Quay lại';
  @override
  String get video_load_failed_generic => 'Không thể tải video này.';
  @override
  String get video_load_failed_network =>
      'Lỗi mạng - kiểm tra kết nối và thử lại.';
  @override
  String get video_load_failed_not_found =>
      'Không tìm thấy mục này trong thư viện của bạn.';
  @override
  String get video_load_failed_retry => 'Thử lại';
  @override
  String get video_load_failed_timeout =>
      'Kết nối hết thời gian - mạng chậm hoặc nguồn đang giới hạn tốc độ. Vui lòng thử lại.';
  @override
  String get video_load_failed_title => 'Không thể tải video';
  @override
  String get video_load_failed_unavailable =>
      'Không thể lấy luồng video - có thể không khả dụng, bị giới hạn vùng hoặc độ tuổi, hoặc nguồn đã thay đổi.';
  @override
  String get video_loading_buffering => 'Đang bộ đệm…';
  @override
  String get video_loading_connecting => 'Đang kết nối đến luồng…';
  @override
  String get video_loading_preparing => 'Đang chuẩn bị…';
  @override
  String get video_loading_subtitle => 'Đang tải phụ đề…';
  @override
  String get video_menu_fullscreen => 'Bật/tắt toàn màn hình';
  @override
  String get video_menu_lock => 'Chế độ đắm chìm / khóa';
  @override
  String get video_menu_play_pause => 'Phát / Tạm dừng';
  @override
  String get video_menu_subtitle_track => 'Bản phụ đề';
  @override
  String get video_mining_image_mode => 'Hình ảnh thẻ video';
  @override
  String get video_mining_image_mode_current_frame =>
      'Ảnh chụp tại thời điểm tạo thẻ';
  @override
  String get video_mining_image_mode_gif => 'GIF động (đoạn phụ đề)';
  @override
  String get video_mining_image_mode_hint =>
      'Ảnh bìa thẻ video là ảnh động của đoạn phụ đề hay một khung hình tĩnh — và khung hình nào';
  @override
  String get video_mining_image_mode_subtitle_start =>
      'Chụp màn hình tại đầu phụ đề';
  @override
  String get video_next_episode => 'Tập sau';
  @override
  String video_playlist_episodes({required Object count}) => '${count} tập';
  @override
  String get video_prev_episode => 'Tập trước';
  @override
  String get video_quality => 'Chất lượng';
  @override
  String get video_quality_auto => 'Tự động';
  @override
  String get video_quality_empty =>
      'Không có chất lượng chuyển đổi cho video này';
  @override
  String get video_quality_enhancement_hint =>
      'Bật để dùng tính năng co giãn chất lượng cao tích hợp của mpv giúp hình ảnh sắc nét hơn, hợp cho cả anime lẫn phim/series người thật. Muốn đẩy xa hơn với các shader như Anime4K, hãy mở Tăng cường hình ảnh khi đang phát video và chọn mức ở đó.';
  @override
  String get video_quality_load_failed =>
      'Không thể tải danh sách chất lượng cho video này.';
  @override
  String get video_quality_loading => 'Đang tải các chất lượng khả dụng…';
  @override
  String video_quality_switched({required Object label}) =>
      'Chất lượng: ${label}';
  @override
  String get video_rename => 'Đổi tên';
  @override
  String get video_rename_hint => 'Tiêu đề';
  @override
  String get video_render_skia_fix_confirm_action => 'Khởi động lại';
  @override
  String get video_render_skia_fix_confirm_body =>
      'Thao tác này tắt trình kết xuất Impeller và khởi động lại ứng dụng để áp dụng.';
  @override
  String get video_render_skia_fix_confirm_title =>
      'Chuyển sang Skia và khởi động lại?';
  @override
  String get video_render_skia_fix_hint =>
      'Dùng khi có âm thanh nhưng video bị đen. Tắt Impeller; khởi động lại để áp dụng.';
  @override
  String get video_render_skia_fix_title =>
      'Màn hình đen? Chuyển trình kết xuất (Skia)';
  @override
  String video_resource_missing_message({required Object title}) =>
      'Không tìm thấy tệp cho 『${title}』. Vị trí có thể đã thay đổi, hoặc ổ đĩa chưa được kết nối. Bạn có thể nhập lại hoặc xóa mục này.';
  @override
  String get video_resource_missing_reimport => 'Nhập lại';
  @override
  String get video_resource_missing_title => 'Video không khả dụng';
  @override
  String get video_resource_relink_success => 'Đã liên kết lại video';
  @override
  String get video_scrape_episodes => 'Tập phim';
  @override
  String get video_scrape_info => 'Thông tin series';
  @override
  String video_scrape_rating_votes({required Object count}) =>
      '${count} đánh giá';
  @override
  String get video_screenshot => 'Chụp màn hình';
  @override
  String video_screenshot_failed_reason({required Object reason}) =>
      'Chụp màn hình thất bại: ${reason}';
  @override
  String video_screenshot_ready({required Object file}) =>
      'Ảnh chụp đã sẵn sàng: ${file}';
  @override
  String video_screenshot_saved_to({required Object path}) =>
      'Đã lưu ảnh chụp: ${path}';
  @override
  String get video_secondary_subtitle_hint =>
      'Hiển thị bởi trình phát (không tra cứu được)';
  @override
  String get video_secondary_subtitle_sources => 'Phụ đề phụ';
  @override
  String get video_setting_auto_play_next => 'Tự phát tập tiếp theo';
  @override
  String get video_setting_auto_scrape => 'Tự động lấy thông tin series';
  @override
  String get video_setting_av_delay => 'Đồng bộ phụ đề';
  @override
  String get video_setting_av_delay_hint =>
      'Số dương = phụ đề trễ hơn (lùi câu lại); số âm = phụ đề sớm hơn. Dùng thanh trượt, nút +/- hoặc nhập giá trị.';
  @override
  String get video_setting_danmaku_area => 'Vùng hiển thị';
  @override
  String get video_setting_danmaku_area_hint =>
      'Tỷ lệ chiều cao màn hình mà danmaku có thể chiếm, tính từ trên xuống.';
  @override
  String get video_setting_danmaku_block_rules =>
      'Chặn từ / biểu thức chính quy';
  @override
  String get video_setting_danmaku_block_rules_hint =>
      'Mỗi quy tắc một dòng. Bọc trong dấu gạch chéo như /pattern/ để dùng biểu thức chính quy; nếu không sẽ khớp dạng văn bản không phân biệt hoa thường.';
  @override
  String get video_setting_danmaku_block_rules_placeholder =>
      'VD: spoiler hoặc /pattern/';
  @override
  String get video_setting_danmaku_enabled => 'Hiện danmaku';
  @override
  String get video_setting_danmaku_enabled_hint =>
      'Hiển thị danmaku cục bộ hoặc khớp được trên video mà không chặn điều khiển.';
  @override
  String get video_setting_danmaku_font_scale => 'Cỡ chữ';
  @override
  String get video_setting_danmaku_font_scale_hint =>
      'Thay đổi tỷ lệ cỡ chữ danmaku.';
  @override
  String get video_setting_danmaku_manual_match => 'Ghép thủ công';
  @override
  String get video_setting_danmaku_manual_match_hint =>
      'Tìm kiếm trên Dandanplay theo tên và chọn tập khi ghép tự động thất bại hoặc sai.';
  @override
  String get video_setting_danmaku_max_active => 'Giới hạn danmaku hiển thị';
  @override
  String get video_setting_danmaku_max_active_hint =>
      'Giới hạn số bình luận render mỗi khung hình để tệp lớn vẫn mượt.';
  @override
  String get video_setting_danmaku_online => 'Khớp Dandanplay trực tuyến';
  @override
  String get video_setting_danmaku_online_hint =>
      'Khi không có sidecar cục bộ dùng được, khớp video đang mở với Dandanplay và lấy bình luận liên quan.';
  @override
  String get video_setting_danmaku_opacity => 'Độ trong suốt';
  @override
  String get video_setting_danmaku_opacity_hint =>
      'Độ trong suốt tổng thể của danmaku.';
  @override
  String get video_setting_danmaku_server_url => 'Địa chỉ máy chủ danmaku';
  @override
  String get video_setting_danmaku_speed => 'Tốc độ';
  @override
  String get video_setting_danmaku_speed_hint =>
      'Cao hơn nghĩa là nhanh hơn; danmaku cuộn qua màn hình sớm hơn.';
  @override
  String get video_setting_double_tap => 'Nhấp đúp để tua';
  @override
  String get video_setting_double_tap_hint =>
      'Nhấp đúp vào bên trái hoặc phải video để tua';
  @override
  String get video_setting_double_tap_off => 'Tắt';
  @override
  String get video_setting_double_tap_subtitle => 'Phụ đề';
  @override
  String get video_setting_immersive_mode => 'Chế độ đắm chìm';
  @override
  String get video_setting_immersive_mode_hint =>
      'Quyết định những gì vẫn khả dụng sau khi nhấn nút khóa bên cạnh';
  @override
  String get video_setting_lock_window_aspect => 'Khóa cửa sổ theo tỷ lệ video';
  @override
  String get video_setting_long_press_speed => 'Tốc độ khi nhấn giữ';
  @override
  String get video_setting_long_press_speed_hint =>
      'Tạm dùng tốc độ này khi nhấn giữ video.';
  @override
  String get video_setting_mpv_aspect => 'Tỷ lệ khung hình';
  @override
  String get video_setting_mpv_aspect_auto => 'Gốc';
  @override
  String get video_setting_mpv_brightness => 'Độ sáng';
  @override
  String get video_setting_mpv_channels => 'Kênh âm thanh';
  @override
  String get video_setting_mpv_channels_auto => 'Tự động';
  @override
  String get video_setting_mpv_channels_mono => 'Đơn kênh';
  @override
  String get video_setting_mpv_channels_stereo => 'Stereo (trộn xuống)';
  @override
  String get video_setting_mpv_contrast => 'Độ tương phản';
  @override
  String get video_setting_mpv_correct_downscale => 'Thu nhỏ tuyến tính';
  @override
  String get video_setting_mpv_deband => 'Khử dải màu';
  @override
  String get video_setting_mpv_deinterlace => 'Khử xen kẽ';
  @override
  String get video_setting_mpv_dither => 'Dithering';
  @override
  String get video_setting_mpv_gamma => 'Gamma';
  @override
  String get video_setting_mpv_group_advanced => 'Nâng cao';
  @override
  String get video_setting_mpv_group_audio => 'Âm thanh';
  @override
  String get video_setting_mpv_group_color => 'Màu sắc';
  @override
  String get video_setting_mpv_group_decode => 'Giải mã';
  @override
  String get video_setting_mpv_group_geometry => 'Khung hình';
  @override
  String get video_setting_mpv_group_playback => 'Phát';
  @override
  String get video_setting_mpv_group_quality => 'Chất lượng hình ảnh';
  @override
  String get video_setting_mpv_hue => 'Tông màu';
  @override
  String get video_setting_mpv_hwdec => 'Giải mã phần cứng';
  @override
  String get video_setting_mpv_hwdec_auto => 'Tự động (an toàn)';
  @override
  String get video_setting_mpv_hwdec_copy => 'Tự động (sao chép)';
  @override
  String get video_setting_mpv_hwdec_off => 'Tắt';
  @override
  String get video_setting_mpv_interpolation => 'Nội suy chuyển động';
  @override
  String get video_setting_mpv_loop => 'Lặp tệp';
  @override
  String get video_setting_mpv_normalize => 'Chuẩn hóa độ to khi downmix';
  @override
  String get video_setting_mpv_panscan => 'Pan & scan (cắt viền)';
  @override
  String get video_setting_mpv_pitch => 'Giữ cao độ khi tăng tốc';
  @override
  String get video_setting_mpv_raw =>
      'Tùy chọn mpv bổ sung (mỗi dòng một key=value)';
  @override
  String get video_setting_mpv_raw_hint =>
      'Chỉ trên máy tính; các tùy chọn không thể áp dụng khi đang chạy (vd vo, profile) sẽ bị bỏ qua. SVP/RIFE cần công cụ ngoài và không được hỗ trợ.';
  @override
  String get video_setting_mpv_reset => 'Khôi phục tất cả';
  @override
  String get video_setting_mpv_rotate => 'Xoay';
  @override
  String get video_setting_mpv_saturation => 'Độ bão hòa';
  @override
  String get video_setting_mpv_sigmoid => 'Upscale Sigmoid';
  @override
  String get video_setting_mpv_sigmoid_hint =>
      'Nâng cấp đường cong Sigmoid giảm hiện tượng ringing nhưng tốn GPU. Tắt mặc định để tối ưu hiệu năng; bật nếu bạn muốn nâng cấp sắc nét hơn.';
  @override
  String get video_setting_mpv_zoom => 'Phóng to';
  @override
  String get video_setting_picture_fit => 'Co giãn hình ảnh';
  @override
  String get video_setting_picture_fit_contain => 'Vừa khít';
  @override
  String get video_setting_picture_fit_cover => 'Lấp đầy';
  @override
  String get video_setting_picture_fit_fill => 'Kéo giãn lấp đầy';
  @override
  String get video_setting_picture_fit_hint =>
      'Cách hình ảnh lấp đầy vùng trình phát';
  @override
  String get video_setting_qb_category => 'Danh mục qBittorrent';
  @override
  String get video_setting_qb_category_hint =>
      'Các tải xuống do Fushi đẩy sẽ nhận danh mục này; theo dõi hoàn thành chỉ giám sát danh mục đó.';
  @override
  String get video_setting_qb_password => 'Mật khẩu WebUI';
  @override
  String get video_setting_qb_url => 'URL WebUI qBittorrent';
  @override
  String get video_setting_qb_url_hint =>
      'VD: http://127.0.0.1:8080. Để trống để tắt tải xuống anime.';
  @override
  String get video_setting_qb_username => 'Tên người dùng WebUI';
  @override
  String get video_setting_secondary_subtitle_obscure => 'Che phụ đề phụ';
  @override
  String get video_setting_secondary_subtitle_obscure_hint =>
      'Làm mờ hoặc ẩn phụ đề phụ (bản dịch)';
  @override
  String get video_setting_seek_seconds => 'Bước tua (giây)';
  @override
  String get video_setting_speed => 'Tốc độ phát';
  @override
  String get video_setting_speed_step => 'Bước tốc độ';
  @override
  String get video_setting_subtitle_appearance => 'Giao diện phụ đề';
  @override
  String get video_setting_subtitle_bg_color => 'Màu nền';
  @override
  String get video_setting_subtitle_bg_opacity => 'Độ mờ nền';
  @override
  String get video_setting_subtitle_font_size => 'Cỡ chữ';
  @override
  String get video_setting_subtitle_font_weight => 'Độ đậm chữ';
  @override
  String get video_setting_subtitle_no_background => 'Không nền';
  @override
  String get video_setting_subtitle_no_background_hint =>
      'Làm nền phụ đề trong suốt.';
  @override
  String get video_setting_subtitle_obscure => 'Che phụ đề';
  @override
  String get video_setting_subtitle_obscure_blur => 'Làm mờ';
  @override
  String get video_setting_subtitle_obscure_hide => 'Ẩn';
  @override
  String get video_setting_subtitle_obscure_hint =>
      'Chọn cách che phụ đề để luyện nghe: tắt, làm mờ (di chuột hoặc chạm để hiện), hoặc ẩn.';
  @override
  String get video_setting_subtitle_obscure_none => 'Tắt';
  @override
  String get video_setting_subtitle_position => 'Vị trí dọc';
  @override
  String get video_setting_subtitle_reset => 'Khôi phục mặc định';
  @override
  String get video_setting_subtitle_respect_ass => 'Giữ nguyên kiểu phụ đề gốc';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      'Dùng phông chữ, màu và viền tích hợp trong phụ đề .ass khi có; tắt để áp dụng cài đặt giao diện của bạn.';
  @override
  String get video_setting_subtitle_shadow => 'Bóng đổ';
  @override
  String get video_setting_subtitle_sync_input => 'Độ lệch (ms)';
  @override
  String get video_setting_subtitle_text_color => 'Màu chữ';
  @override
  String get video_setting_theme => 'Giao diện';
  @override
  String get video_setting_torrent_active_downloads =>
      'Tải xuống hoạt động tối đa';
  @override
  String get video_setting_torrent_active_seeds => 'Seed hoạt động tối đa';
  @override
  String get video_setting_torrent_anonymous => 'Chế độ ẩn danh';
  @override
  String get video_setting_torrent_antileech => 'Bật chống leech';
  @override
  String get video_setting_torrent_backend_qb => 'qBittorrent bên ngoài';
  @override
  String get video_setting_torrent_ban_progress_cheat =>
      'Cấm gian lận tiến trình';
  @override
  String get video_setting_torrent_ban_relative_cheat =>
      'Cấm gian lận tiến trình tương đối';
  @override
  String get video_setting_torrent_ban_time => 'Thời gian cấm (phút)';
  @override
  String get video_setting_torrent_ban_time_hint => '0 = vĩnh viễn';
  @override
  String get video_setting_torrent_connections_hint =>
      '0 = mặc định của engine';
  @override
  String get video_setting_torrent_dht => 'DHT';
  @override
  String get video_setting_torrent_download_limit =>
      'Giới hạn tải xuống (KB/s)';
  @override
  String get video_setting_torrent_encryption_disabled => 'Tắt';
  @override
  String get video_setting_torrent_encryption_forced => 'Bắt buộc';
  @override
  String get video_setting_torrent_encryption_prefer => 'Ưu tiên';
  @override
  String get video_setting_torrent_limit_hint => '0 = không giới hạn';
  @override
  String get video_setting_torrent_listen_port => 'Cổng lắng nghe';
  @override
  String get video_setting_torrent_listen_port_hint => '0 = mặc định (6881)';
  @override
  String get video_setting_torrent_lsd => 'Tìm peer mạng nội bộ (LSD)';
  @override
  String get video_setting_torrent_max_connections => 'Kết nối tối đa';
  @override
  String get video_setting_torrent_max_ip_ports => 'Cổng tối đa mỗi IP';
  @override
  String get video_setting_torrent_memory_hint =>
      'Giới hạn bộ nhớ engine. 0 = tự động (dựa trên RAM thiết bị).';
  @override
  String get video_setting_torrent_memory_limit => 'Giới hạn bộ nhớ (MB)';
  @override
  String get video_setting_torrent_natpmp => 'Ánh xạ cổng NAT-PMP';
  @override
  String get video_setting_torrent_section_antileech => 'Chống leech';
  @override
  String get video_setting_torrent_section_session => 'Phiên';
  @override
  String get video_setting_torrent_seed_ratio_hint =>
      'Ngừng tải lên khi tỷ lệ tải lên/tải xuống đạt mức này. 0 = không giới hạn.';
  @override
  String get video_setting_torrent_seed_ratio_limit => 'Giới hạn tỷ lệ seed';
  @override
  String get video_setting_torrent_seed_time_hint =>
      'Ngừng tải lên sau khi seed trong thời gian này. 0 = không giới hạn.';
  @override
  String get video_setting_torrent_seed_time_limit =>
      'Giới hạn thời gian seed (phút)';
  @override
  String get video_setting_torrent_upload_enabled => 'Bật tải lên / seed';
  @override
  String get video_setting_torrent_upload_enabled_hint =>
      'Tắt theo mặc định. Seed lại cho mạng sau khi tải xuống.';
  @override
  String get video_setting_torrent_upload_limit => 'Giới hạn tải lên (KB/s)';
  @override
  String get video_setting_torrent_upload_slots => 'Slot tải lên tối đa';
  @override
  String get video_setting_torrent_upnp => 'Ánh xạ cổng UPnP';
  @override
  String get video_setting_torrent_zero_default => '0 = mặc định';
  @override
  String get video_setting_torrent_zero_off => '0 = tắt';
  @override
  String get video_settings_cat_audio => 'Âm thanh';
  @override
  String get video_settings_cat_controls => 'Nút điều khiển';
  @override
  String get video_settings_cat_danmaku => 'Danmaku';
  @override
  String get video_settings_cat_mpv => 'mpv';
  @override
  String get video_settings_cat_playback => 'Phát';
  @override
  String get video_settings_cat_shaders => 'Tăng cường hình ảnh';
  @override
  String get video_settings_cat_subtitle => 'Phụ đề';
  @override
  String get video_settings_title => 'Cài đặt video';
  @override
  String get video_shader_anime4k_hint =>
      'Chọn một preset để tải. Tải xong, đánh dấu nó trong danh sách để bật. Chỉ trên máy tính.';
  @override
  String get video_shader_anime4k_title => 'Shader Anime4K đề xuất';
  @override
  String get video_shader_download_anime4k => 'Tải bộ shader Anime4K';
  @override
  String video_shader_download_done({required Object count}) =>
      'Đã tải ${count} shader';
  @override
  String get video_shader_download_failed => 'Tải shader thất bại';
  @override
  String video_shader_download_partial({
    required Object ok,
    required Object failed,
  }) => 'Đã tải ${ok} shader, ${failed} thất bại';
  @override
  String get video_shader_download_url => 'Tải từ liên kết';
  @override
  String get video_shader_downloaded_label => 'Đã tải';
  @override
  String get video_shader_downloading => 'Đang tải shader…';
  @override
  String get video_shader_first_use_body =>
      '想让动画画面更清晰，可以进入“画质增强”并点击“下载 Anime4K 推荐着色器”。下载后在已安装列表里勾选即可启用。';
  @override
  String get video_shader_first_use_download => 'Tải và bật';
  @override
  String get video_shader_first_use_title => '试试 Anime4K 画质增强';
  @override
  String get video_shader_import => 'Nhập shader (.glsl)';
  @override
  String video_shader_import_done({required Object count}) =>
      'Đã nhập ${count} shader';
  @override
  String get video_shader_import_from_mpv => 'Nhập từ mpv cục bộ';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自动搜索本机 mpv；未找到时可手动选择 mpv 目录。';
  @override
  String get video_shader_mobile_perf_hint =>
      'Trên điện thoại, shader chỉ áp dụng trên đường render GPU tiêu chuẩn và hiệu quả khác nhau tùy GPU thiết bị; mức cao có thể rớt khung hình hoặc gây nóng máy. Hãy thử mức Thấp/Trung bình trước và kiểm tra kết quả trên máy của bạn.';
  @override
  String video_shader_mpv_dir_current({required Object path}) =>
      'Thư mục mpv: ${path}';
  @override
  String get video_shader_mpv_dir_empty =>
      'Không tìm thấy shader trong thư mục đó';
  @override
  String get video_shader_mpv_not_found => 'Không tìm thấy shader mpv cục bộ';
  @override
  String get video_shader_mpv_pick_title => 'Nhập shader từ mpv';
  @override
  String get video_shader_pick_mpv_dir => 'Specify mpv folder';
  @override
  String get video_shader_preset_mode_a_fast =>
      'Cho hầu hết anime 1080p. Tải GPU nhẹ hơn.';
  @override
  String get video_shader_preset_mode_a_hq =>
      'Chất lượng cao nhất cho anime 1080p. Cần GPU mạnh.';
  @override
  String get video_shader_preset_mode_b_fast =>
      'Cho anime 720p cũ có nhiễu do lấy mẫu lại.';
  @override
  String get video_shader_preset_mode_b_hq =>
      'Chất lượng cao cho anime 720p cũ có nhiễu do lấy mẫu lại. Cần GPU mạnh.';
  @override
  String get video_shader_preset_mode_c_fast =>
      'Cho anime SD (480p) cũ bị nhòe do nén.';
  @override
  String get video_shader_preset_mode_c_hq =>
      'Chất lượng cao cho anime SD (480p) cũ bị nhòe do nén. Cần GPU mạnh.';
  @override
  String get video_shader_quality_tier => 'Tăng cường chất lượng';
  @override
  String get video_shader_section_advanced => 'Nâng cao (shader thủ công)';
  @override
  String get video_shader_section_installed => 'Shader đã cài';
  @override
  String get video_shader_showing_original => 'Đã tắt shader (gốc)';
  @override
  String get video_shader_showing_shaded => 'Đã bật shader';
  @override
  String get video_shader_tier_custom_hint =>
      'Lựa chọn shader tùy chỉnh. Chọn một mức ở trên để chuyển sang preset.';
  @override
  String get video_shader_tier_high => 'Cao';
  @override
  String get video_shader_tier_high_hint =>
      'Anime4K HQ. Sắc nét hơn; tốt nhất cho anime, cũng dùng được cho nội dung người thật (cải thiện ít hơn). Cần GPU tầm trung-cao (NVIDIA RTX 4060 / RTX 3070, AMD RX 6700 XT / RX 7700 XT).';
  @override
  String get video_shader_tier_low => 'Thấp';
  @override
  String get video_shader_tier_low_hint =>
      'Làm sắc nét tích hợp của mpv (ewa_lanczossharp). Dùng được cho mọi video (anime và người thật). Không cần tải, tải GPU thấp nhất. Chọn mức này với card tích hợp hoặc đời cũ (NVIDIA GTX 1050, AMD RX 560, iGPU Intel).';
  @override
  String get video_shader_tier_medium => 'Trung bình';
  @override
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast. Tốt nhất cho anime, nhưng cũng dùng được cho phim/TV người thật (cải thiện ít hơn). Chạy được trên GPU tầm trung (NVIDIA GTX 1660 / RTX 3050, AMD RX 6600).';
  @override
  String get video_shader_tier_off => 'Không';
  @override
  String get video_shader_tier_off_hint =>
      'Không tăng cường. Phát video gốc như nguyên bản.';
  @override
  String get video_shader_tier_ultra => 'Cực cao';
  @override
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A (UL, mạng siêu lớn). Tái tạo Anime4K mạnh nhất; cũng dùng được cho nội dung người thật (cải thiện ít hơn). Cần GPU đầu bảng (NVIDIA RTX 4080 / RTX 5090, AMD RX 7900 XTX). Chọn mức thấp hơn nếu GPU của bạn yếu hơn.';
  @override
  String get video_shader_url_hint => 'Dán liên kết shader .glsl (vd GitHub)';
  @override
  String get video_shaders_empty => 'Chưa nhập shader nào';
  @override
  String get video_stat_by_video => 'Theo video';
  @override
  String get video_stat_completed => 'Đã hoàn thành';
  @override
  String get video_stat_no_data => 'Chưa có thống kê video';
  @override
  String get video_statistics => 'Thống kê video';
  @override
  String get video_subtitle_attach_playlist_hint =>
      'Mở danh sách phát để gắn phụ đề cho từng tập';
  @override
  String video_subtitle_attached_to_video({
    required Object title,
    required Object count,
  }) => 'Đã gắn phụ đề cho ${title} (${count} câu)';
  @override
  String get video_subtitle_auto_align => 'Tự động căn chỉnh phụ đề';
  @override
  String video_subtitle_auto_align_done({required Object ms}) =>
      'Đã tự động căn chỉnh phụ đề ${ms} ms';
  @override
  String get video_subtitle_auto_align_low_confidence =>
      'Không thể tự động căn chỉnh một cách chắc chắn (không tìm thấy khớp giọng nói rõ ràng)';
  @override
  String get video_subtitle_auto_align_running =>
      'Đang tự động căn chỉnh phụ đề…';
  @override
  String get video_subtitle_color_note =>
      'Màu phụ đề video được đặt trong trình phát video.';
  @override
  String video_subtitle_delay_osd({required Object ms}) =>
      'Đồng bộ phụ đề: ${ms} ms';
  @override
  String get video_subtitle_filter_all => 'Tất cả';
  @override
  String get video_subtitle_filter_favorites => 'Yêu thích';
  @override
  String get video_subtitle_filter_favorites_empty =>
      'Chưa có dòng yêu thích nào';
  @override
  String get video_subtitle_graphic_hint =>
      'Phụ đề đồ họa · hiển thị trên hình · không tra từ';
  @override
  String video_subtitle_graphic_shown({required Object label}) =>
      'Đang hiển thị phụ đề đồ họa (hiển thị trên hình, không tra từ): ${label}';
  @override
  String get video_subtitle_import_failed => 'Nhập phụ đề thất bại';
  @override
  String get video_subtitle_import_file => 'Nhập tệp phụ đề…';
  @override
  String get video_subtitle_import_unsupported =>
      'Định dạng phụ đề không được hỗ trợ';
  @override
  String get video_subtitle_list => 'Danh sách phụ đề';
  @override
  String get video_subtitle_list_auto_scroll => 'Tự cuộn';
  @override
  String get video_subtitle_list_empty => 'Chưa tải phụ đề';
  @override
  String get video_subtitle_list_font_larger => 'Phóng to chữ';
  @override
  String get video_subtitle_list_font_smaller => 'Thu nhỏ chữ';
  @override
  String get video_subtitle_list_jump => 'Nhảy đến câu này';
  @override
  String get video_subtitle_list_loading => 'Đang tải phụ đề…';
  @override
  String video_subtitle_load_failed({required Object label}) =>
      'Không tải được phụ đề này (bản dạng đồ họa hoặc không hỗ trợ): ${label}';
  @override
  String get video_subtitle_off => 'Tắt phụ đề';
  @override
  String get video_subtitle_remote_host => 'Phụ đề từ thiết bị ghép nối';
  @override
  String video_subtitle_switched({required Object label}) => 'Phụ đề: ${label}';
  @override
  String get video_subtitle_waveform_cue_list => 'Danh sách phụ đề';
  @override
  String get video_subtitle_waveform_jump_playhead => 'Nhảy đến vị trí phát';
  @override
  String get video_subtitle_waveform_legend_cue => 'Phụ đề';
  @override
  String get video_subtitle_waveform_legend_energy => 'Âm lượng';
  @override
  String get video_subtitle_waveform_legend_playhead => 'Vị trí phát';
  @override
  String get video_subtitle_waveform_open => 'Căn chỉnh sóng âm';
  @override
  String get video_subtitle_waveform_open_hint =>
      'Chạm để phóng to và căn chỉnh';
  @override
  String get video_subtitle_waveform_scroll_hint =>
      'Kéo để quét dòng thời gian; dùng các nút bên dưới để căn chỉnh';
  @override
  String get video_subtitle_waveform_unavailable =>
      'Sóng âm không khả dụng trên thiết bị này';
  @override
  String get video_subtitle_waveform_zoom_in => 'Phóng to';
  @override
  String get video_subtitle_waveform_zoom_out => 'Thu nhỏ';
  @override
  String get video_subtitle_youtube_empty => 'Bản phụ đề này không có nội dung';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang} (đã dịch)';
  @override
  String video_watched_up_to({required Object time}) => 'Đã xem đến ${time}';
  @override
  String get video_windows_black_flash_notice_body =>
      'Trên Windows, video có thể nhấp nháy đen khi GPU chịu tải nặng. Để giảm tải, hãy thử tắt Nâng cao chất lượng, Nâng cấp Sigmoid và Khử dải ở trên, hoặc chuyển Giải mã phần cứng sang Sao chép.';
  @override
  String get video_windows_black_flash_notice_title =>
      'Nhấp nháy đen trên Windows?';
  @override
  String get view_illustrations => 'Minh họa';
  @override
  String get volume_button_page_turning => 'Lật trang bằng nút âm lượng';
  @override
  String get volume_key_sentence_nav => 'Điều hướng câu bằng phím âm lượng';
  @override
  String get wheel_page_turn_interval =>
      'Khoảng cách lật trang bằng con lăn chuột';
  @override
  String get word_favorite_added => 'Đã lưu từ vào yêu thích';
  @override
  String get word_favorite_removed => 'Đã xóa từ khỏi yêu thích';
  @override
  String get yomitan_api_key => 'Yomitan API key (tùy chọn)';
  @override
  String get yomitan_api_server => 'Máy chủ Yomitan API';
  @override
  String get yomitan_api_server_hint =>
      'Cho phép máy khách yomitan-api truy vấn từ điển của Fushi (cổng 19633)';
  @override
  String get yomitan_api_server_started => 'Đã khởi động máy chủ API Yomitan';
  @override
  String get yomitan_port_kill_action => 'Kết thúc tiến trình và thử lại';
  @override
  String get yomitan_port_kill_confirm => 'Kết thúc tiến trình';
  @override
  String yomitan_port_kill_confirm_message({required Object process}) =>
      'Cổng hiện đang được sử dụng bởi: ${process}';
  @override
  String yomitan_port_kill_confirm_title({required Object port}) =>
      'Kết thúc tiến trình đang dùng cổng ${port}?';
  @override
  String yomitan_port_kill_failed({required Object process}) =>
      'Không thể kết thúc ${process}. Vui lòng kết thúc thủ công rồi thử lại.';
  @override
  String yomitan_port_kill_protected({required Object process}) =>
      '${process} là tiến trình hệ thống quan trọng — Fushi sẽ không kết thúc nó. Hãy đổi cổng thay vì vậy.';
  @override
  String get yomitan_port_kill_self_instance =>
      'Tiến trình này là một phiên bản đang chạy khác của ứng dụng.';
  @override
  String get game_track_bgm => 'BGM / đã loại trừ';
  @override
  String get game_line_audio_no_voice => 'Không có giọng nói';
  @override
  String get game_line_audio_overlong => 'Đoạn ghi quá dài';
  @override
  String get game_line_audio_overlong_hint =>
      'Dài hơn nhiều so với một dòng; có thể chứa BGM hoặc âm thanh hỗn hợp khác';
  @override
  String get game_line_audio_loopback_hint =>
      'Thu âm hệ thống dự phòng; có thể chứa BGM';
  @override
  String get game_line_recapture => 'Thu lại giọng nói';
  @override
  String get game_line_recapture_stop => 'Hoàn tất thu lại';
  @override
  String get game_line_tracks => 'Track của dòng này';
  @override
  String get game_line_tracks_hint =>
      'Nghe thử từng track tại thời điểm của dòng này, rồi loại trừ các track BGM';
  @override
  String get game_line_track_use => 'Dùng cho dòng này';
  @override
  String get game_user_tags_title => 'Thẻ gắn của tôi';
  @override
  String get anki_lapis_section => 'Kiểu thẻ Lapis';
  @override
  String get anki_lapis_font_scale => 'Tỷ lệ chữ trên thẻ';
  @override
  String get anki_lapis_font_scale_hint =>
      'Thay đổi tỷ lệ tất cả cỡ chữ Lapis; có hiệu lực khi "Áp dụng kiểu lên Anki".';
  @override
  String get anki_lapis_custom_css => 'CSS tùy chỉnh';
  @override
  String get anki_lapis_custom_css_hint =>
      'Được thêm vào bảng kiểu Lapis trong phần người dùng được bảo vệ.';
  @override
  String get anki_lapis_apply => 'Áp dụng kiểu lên Anki';
  @override
  String get anki_lapis_apply_done =>
      'Đã áp dụng kiểu Lapis. Bản sao lưu đã được tạo trước.';
  @override
  String anki_lapis_apply_failed({required Object error}) =>
      'Không thể áp dụng kiểu: ${error}';
  @override
  String get anki_lapis_up_to_date => 'Kiểu Lapis đã là phiên bản mới nhất.';
  @override
  String get anki_lapis_foreign_edit_title => 'Mẫu đã thay đổi trong Anki';
  @override
  String get anki_lapis_foreign_edit_body =>
      'Mẫu Lapis trong Anki khác với phiên bản Fushi áp dụng lần cuối - có thể đã được chỉnh sửa thủ công. Áp dụng sẽ ghi đè; bản sao lưu được tạo trước. Tiếp tục?';
  @override
  String get anki_lapis_backup => 'Sao lưu mẫu Lapis';
  @override
  String anki_lapis_backup_done({required Object path}) =>
      'Đã sao lưu mẫu: ${path}';
  @override
  String anki_lapis_backup_failed({required Object error}) =>
      'Sao lưu thất bại: ${error}';
  @override
  String get anki_lapis_not_found =>
      'Không tìm thấy loại ghi chú Lapis trong Anki.';
  @override
  String get anki_lapis_restore => 'Khôi phục từ bản sao lưu';
  @override
  String get anki_lapis_restore_empty => 'Chưa có bản sao lưu nào.';
  @override
  String get anki_lapis_restore_confirm =>
      'Ghi đè mẫu Lapis trong Anki bằng bản sao lưu này? Trạng thái hiện tại sẽ được sao lưu trước.';
  @override
  String get anki_lapis_restore_done => 'Đã khôi phục mẫu.';
  @override
  String anki_lapis_restore_failed({required Object error}) =>
      'Khôi phục thất bại: ${error}';
  @override
  String get anki_dedup_section => 'Tối ưu lưu trữ media Anki';
  @override
  String get anki_dedup_scan => 'Quét tìm bản sao (không thay đổi gì)';
  @override
  String get anki_dedup_run => 'Loại bỏ trùng lặp ngay';
  @override
  String get anki_dedup_report_title => 'Báo cáo loại bỏ trùng lặp media';
  @override
  String anki_dedup_report_body({
    required Object groups,
    required Object removed,
    required Object size,
    required Object notes,
    required Object models,
    required Object skipped,
  }) =>
      '${groups} nhóm trùng lặp; ${removed} bản sao thừa (${size}); ${notes} ghi chú và ${models} loại ghi chú đã viết lại; ${skipped} đã bỏ qua.';
  @override
  String get anki_dedup_report_dry_note => 'Chỉ quét - không có gì thay đổi.';
  @override
  String get anki_dedup_report_clean =>
      'Không tìm thấy bản sao giống hệt byte nào.';
  @override
  String anki_dedup_failed({required Object error}) =>
      'Loại bỏ trùng lặp thất bại: ${error}';
  @override
  String get anki_dedup_unavailable =>
      'Yêu cầu Anki đang chạy trên máy này (AnkiConnect).';
  @override
  String get anki_dedup_run_hint =>
      'Quét trước và liệt kê chính xác những gì sẽ bị xóa; không xóa gì cho đến khi bạn xác nhận.';
  @override
  String get anki_dedup_plan_title => 'Tệp sẽ bị xóa';
  @override
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '${count} bản sao thừa, ${size} có thể thu hồi. Một bản sao của mỗi tệp được giữ lại và mọi tham chiếu được chuyển sang nó trước; không có gì bị mã hóa lại.';
  @override
  String anki_dedup_plan_entry({
    required Object file,
    required Object size,
    required Object canonical,
  }) => 'Xóa ${file} (${size}) - giữ ${canonical}';
  @override
  String get anki_dedup_plan_delete => 'Xóa các tệp này';
  @override
  String get anki_dedup_plan_journal =>
      'Nhật ký mọi lần viết lại và xóa được ghi vào thư mục sao lưu trước.';
  @override
  String get manga_ocr_default_engine => 'Engine OCR mặc định';
  @override
  String get manga_ocr_engine_auto => 'Tự động (không gửi lên Lens)';
  @override
  String get manga_ocr_engine_local_onnx => 'ONNX cục bộ';
  @override
  String get manga_ocr_engine_google_lens => 'Google Lens';
  @override
  String get manga_google_lens_disclosure_title =>
      'Gửi trang truyện tranh lên Google Lens?';
  @override
  String get manga_google_lens_disclosure_body =>
      'Nhận dạng truyện tranh này sẽ gửi bản JPEG thu nhỏ của mỗi trang (không kèm văn bản OCR) lên Google. Kết quả được lưu cache trên thiết bị. Đầu cuối này không chính thức và có thể ngừng hoạt động. Không gửi gì trừ khi bạn đồng ý.';
  @override
  String get manga_google_lens_disclosure_accept => 'Đồng ý và bắt đầu OCR';
  @override
  String get manga_google_lens_disclosure_decline => 'Hủy';
  @override
  String get manga_reading_direction => 'Hướng đọc';
  @override
  String get manga_direction_rtl => 'Phải sang trái';
  @override
  String get manga_direction_ltr => 'Trái sang phải';
  @override
  String get manga_zoom => 'Phóng to';
  @override
  String get manga_jump_to_page => 'Nhảy đến trang';
  @override
  String get manga_previous_page => 'Trang trước';
  @override
  String get manga_next_page => 'Trang tiếp';
  @override
  String manga_page_number_hint({required Object total}) =>
      'Số trang (1-${total})';
  @override
  String get manga_import_direct => 'Nhập không dùng OCR';
  @override
  String get manga_library => 'Truyện tranh';
  @override
  String get manga_import_action => 'Nhập truyện tranh';
  @override
  String get game_scrape_search => 'Tìm kiếm';
  @override
  String get game_scrape_use => 'Sử dụng';
  @override
  String get game_scrape_search_failed =>
      'Tìm kiếm thất bại. Kiểm tra mạng và thử lại.';
  @override
  String get game_remove_confirm =>
      'Xóa trò chơi này khỏi thư viện? Các tệp trò chơi trên ổ đĩa sẽ không bị xóa.';
  @override
  String manga_ocr_acceleration_status({required Object engine}) =>
      'Tăng tốc OCR: ${engine}';
  @override
  String manga_ocr_acceleration_degraded({
    required Object engine,
    required Object reason,
  }) => 'Tăng tốc GPU không khả dụng, đang chạy OCR trên ${engine}: ${reason}';
  @override
  String get media_tracking_status => 'Trạng thái bộ sưu tập';
  @override
  String get media_tracking_signup => 'Tạo tài khoản Bangumi';
  @override
  String get media_tracking_game => 'Trò chơi';
  @override
  String get download_rate_limit_lan_exempt =>
      'Không áp dụng trong mạng nội bộ; truyền LAN luôn chạy tốc độ tối đa.';
  @override
  String get scrape_reason_network =>
      'Không nhận được phản hồi hợp lệ từ nguồn ảnh bìa. Kiểm tra mạng và thử lại.';
  @override
  String get scrape_reason_server =>
      'Nguồn ảnh bìa trả về lỗi. Thử lại sau hoặc chọn ứng viên khác.';
  @override
  String get common_more_actions => 'Thêm thao tác';
  @override
  String get collection_already_has_item => 'Mục này đã có trong bộ sưu tập.';
  @override
  String get drag_drop_manga_archive_unsupported =>
      'Không thể nhập tệp lưu trữ truyện tranh .cbr/.rar — đóng gói lại dạng .cbz hoặc thư mục ảnh.';
  @override
  String get collection_add_failed =>
      'Không thể thêm mục vào bộ sưu tập. Vui lòng thử lại.';
  @override
  String get anki_dedup_auto => 'Xử lý tự động';
  @override
  String get anki_dedup_auto_hint =>
      'Tắt theo mặc định. Khi bật, Fushi quét khi khởi động (tối đa mỗi tuần một lần) và hiển thị danh sách trước — không xóa gì cho đến khi bạn xác nhận.';
  @override
  String get anki_dedup_auto_delete => 'Xóa tự động không hỏi';
  @override
  String get anki_dedup_auto_delete_hint =>
      'Bỏ qua hộp thoại xác nhận. Chỉ các bản sao thừa giống hệt byte mới bị xóa và không mã hóa lại, nhưng việc xóa không thể hoàn tác.';
  @override
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      'Tìm thấy ${count} tệp media Anki trùng lặp (${size} có thể thu hồi)';
  @override
  String get anki_dedup_auto_review => 'Xem lại';
  @override
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      'Đã xóa ${count} tệp media Anki trùng lặp, thu hồi ${size}';
  @override
  String anki_lapis_backup_done_pruned({
    required Object path,
    required Object count,
  }) =>
      'Đã sao lưu tại ${path} (đã dọn ${count} bản sao lưu cũ theo chính sách 90 ngày / giữ 10)';
  @override
  String get game_audio_fallback_policy => 'Âm thanh dự phòng';
  @override
  String get game_audio_fallback_full => 'Cho phép âm thanh hỗn hợp';
  @override
  String get game_audio_fallback_clean => 'Chỉ nguồn sạch';
  @override
  String get game_audio_fallback_resource => 'Chỉ tài nguyên gốc';
  @override
  String get game_track_silent_at_cue => 'Không có âm thanh tại dòng này';
  @override
  String get game_audio_fallback_full_hint =>
      'Dùng bản thu hệ thống khi không có giọng nói sạch; đoạn ghi có thể chứa BGM và hiệu ứng.';
  @override
  String get game_audio_fallback_clean_hint =>
      'Chỉ dùng âm thanh tài nguyên trò chơi và PCM engine. Dòng không có giọng nói sẽ tạo thẻ không có âm thanh thay vì thu BGM.';
  @override
  String get game_audio_fallback_resource_hint =>
      'Yêu cầu tệp giọng nói gốc đi kèm trò chơi; từ chối tạo thẻ khi thiếu.';
  @override
  String get game_line_audio_suppressed => 'Đã bỏ qua bản thu hỗn hợp';
  @override
  String get game_line_audio_suppressed_hint =>
      'Không nguồn âm thanh sạch nào tạo ra âm thanh cho dòng này, và bản thu hệ thống đã bị bỏ qua theo chính sách âm thanh dự phòng. Điều này không có nghĩa dòng không có giọng nói.';
  @override
  String get video_setting_torrent_limit_lan => 'Áp dụng giới hạn cho peer LAN';
  @override
  String get video_setting_torrent_limit_lan_hint =>
      'Tắt theo mặc định: truyền với peer trong mạng nội bộ bỏ qua các giới hạn trên.';
  @override
  String get download_rate_limit_lan_included =>
      'Cũng áp dụng trong mạng nội bộ.';
  @override
  String get video_collection_no_local_member =>
      'Không có video cục bộ trong bộ sưu tập này';
  @override
  String get gal_mining_image_mode => 'Ảnh thẻ galgame';
  @override
  String get gal_mining_image_mode_screenshot => 'Ảnh chụp màn hình';
  @override
  String get gal_mining_image_mode_hint =>
      'Cảnh galgame hầu như không thay đổi trong một dòng, nên ảnh tĩnh thường nhỏ hơn và đủ dùng.';
  @override
  String get shortcut_scope_manga => 'Truyện tranh';
  @override
  String get shortcut_action_manga_page_forward => 'Trang tiếp';
  @override
  String get shortcut_action_manga_page_backward => 'Trang trước';
  @override
  String get shortcut_action_manga_dismiss_dict => 'Đóng từ điển';
  @override
  String get video_setting_jimaku_default_language =>
      'Ngôn ngữ phụ đề mặc định';
  @override
  String get video_jimaku_api_key_settings_hint =>
      'Cũng có thể sửa trong Cài đặt → Video → Phụ đề';
  @override
  String get anime_download_subs_episodes_unverified =>
      'Số tập chưa được xác minh với gói này - phụ đề có thể từ mùa khác.';
  @override
  String get anime_download_subs_deferred =>
      'Phụ đề được ghép sau khi tải xong, từ các tệp thực tế của gói';
  @override
  String get anime_download_subs_pending =>
      'Phụ đề: đang chờ tải xuống hoàn tất';
  @override
  String get anime_download_subs_unmatched =>
      'Phụ đề: không tìm thấy kết quả phù hợp cho gói này';
  @override
  String get stat_source_breakdown => 'Theo nguồn';
  @override
  String stat_format_pages({required Object n}) => '${n} trang';
  @override
  String anime_download_subs_season_mismatch({required Object season}) =>
      'Không có mục phụ đề nào khớp mùa ${season} của gói này - không tự động chọn. Chọn thủ công nếu bạn vẫn muốn.';
  @override
  String get media_tracking_card_title => 'Đồng bộ Bangumi';
  @override
  String get media_tracking_not_connected =>
      'Chưa kết nối. Tiến trình chỉ lưu cục bộ và không gửi lên Bangumi.';
  @override
  String get media_tracking_last_sync => 'Đồng bộ lần cuối';
  @override
  String get media_tracking_never_synced => 'Chưa từng đồng bộ';
  @override
  String media_tracking_linked_count({required Object n}) => '${n} đã liên kết';
  @override
  String media_tracking_pending_count({required Object n}) =>
      '${n} đang chờ gửi';
  @override
  String get media_tracking_all_synced => 'Đã gửi tất cả';
  @override
  String get media_tracking_unauthorized =>
      'Bangumi từ chối mã truy cập. Kết nối lại trong cài đặt.';
  @override
  String get media_tracking_open_subject => 'Mở trên Bangumi';
  @override
  String get media_tracking_manage_links => 'Quản lý liên kết';
  @override
  String get media_tracking_last_error => 'Lỗi gần nhất';
  @override
  String get shortcut_action_popup_mine_entry => 'Tạo thẻ (thu thập)';
  @override
  String get game_upscaling_auto_hint =>
      'Dùng Magpie nếu đang chạy; nếu không thì dùng bản đi kèm Fushi. Không cần tải xuống.';
  @override
  String get game_upscaling_installed_only_hint =>
      'Chỉ dùng Magpie nếu đã cài đặt hoặc đang chạy. Không giải nén bản đi kèm Fushi.';
  @override
  String get game_upscaling_off_hint =>
      'Không bao giờ nâng cấp cửa sổ trò chơi.';
  @override
  String get game_helper_bundle_missing =>
      'Trình hỗ trợ hook galgame không có trong bản dựng này. Cập nhật Fushi để có nó.';
  @override
  String game_upscaling_pick_title({required Object name}) =>
      'Nâng cấp cửa sổ cho ${name}';
  @override
  String get game_upscaling_pick_body =>
      'Nâng cấp cửa sổ trò chơi này bằng Magpie trong khi phiên thu đang chạy. Cài đặt theo từng trò chơi - chỉ hữu ích cho trò chơi có độ phân giải gốc thấp hơn màn hình. Sử dụng GPU.';
  @override
  String get game_upscaling_hint_not_installed =>
      'Magpie chưa sẵn sàng. Đặt nâng cấp cửa sổ thành Tự động để dùng bản đi kèm Fushi; nếu vẫn không khởi động, hãy cập nhật hoặc cài lại Fushi.';
  @override
  String media_source_count_manga({required Object n}) => '${n} tập';
  @override
  String get library_view_shelf => 'Kệ';
  @override
  String get library_view_browse => 'Khám phá';
  @override
  String get library_view_media => 'Thư viện';
  @override
  String get scrape_failure_detail_show => 'Hiện chi tiết';
  @override
  String get scrape_failure_detail_hide => 'Ẩn chi tiết';
  @override
  String get media_tracking_retry_mapping => 'Thử ghép lại';
  @override
  String get media_tracking_retry_matched =>
      'Đã ghép và xếp hàng tiến trình hiện tại';
  @override
  String get media_tracking_retry_no_match =>
      'Không tìm thấy kết quả. Thử liên kết thủ công.';
  @override
  String get game_statistics => 'Thống kê trò chơi';
  @override
  String get game_stat_by_game => 'Theo trò chơi';
  @override
  String get stat_clear_all_game_message =>
      'Xóa toàn bộ thời gian chơi và số phiên? Thư viện trò chơi và dòng thời gian hoạt động được giữ nguyên. Không thể hoàn tác.';
  @override
  String batch_selection_stale_skipped({
    required Object m,
    required Object n,
  }) => 'Đã bỏ qua ${m} trong ${n} mục đã chọn vì không còn tồn tại';
  @override
  String get game_text_thread_unset =>
      'Chưa chọn luồng — chọn một luồng để bắt đầu thu thập';
  @override
  String get media_tracking_watched_show => 'Xem tất cả anime đã xem';
  @override
  String get media_tracking_watched_title => 'Đã xem trên Bangumi';
  @override
  String get media_tracking_watched_empty =>
      'Không có anime nào được đánh dấu đã xem trên tài khoản Bangumi này.';
  @override
  String media_tracking_watched_load_failed({required Object error}) =>
      'Không thể tải danh sách anime đã xem: ${error}';
  @override
  String media_tracking_watched_progress({required Object n}) =>
      'Đã xem ${n} tập';
  @override
  String get media_tracking_manual_required => 'Cần liên kết thủ công';
  @override
  String media_tracking_manual_required_count({required Object n}) =>
      '${n} mục cần liên kết thủ công';
  @override
  String get media_tracking_manual_required_hint =>
      'Các mục cục bộ này đã có tiến trình nhưng chưa được liên kết với Bangumi.';
  @override
  String get media_tracking_no_local_history =>
      'Không có tiến trình xem, đọc hoặc chơi cục bộ nào cần liên kết.';
  @override
  String media_tracking_more_manual_required({required Object n}) =>
      '${n} mục nữa cần liên kết thủ công';
  @override
  String get manga_import_hint =>
      'Chọn thư mục truyện tranh, tệp lưu trữ trang .cbz/.zip, tệp .pdf hoặc tệp .mokuro.';
  @override
  String get manga_import_pick_file => 'Chọn tệp truyện tranh';
  @override
  String get manga_import_pick_folder => 'Chọn thư mục truyện tranh';
  @override
  String get manga_import_missing_input =>
      'Hãy chọn tệp hoặc thư mục truyện tranh trước.';
  @override
  String get manga_import_detected_title => 'Đây có vẻ là truyện tranh';
  @override
  String get manga_import_detected_confirm => 'Nhập dạng truyện tranh';
  @override
  String manga_import_detected_message({required Object name}) =>
      '"${name}" là tệp truyện tranh, nên sẽ được xử lý qua trình nhập truyện tranh thay vì trình nhập sách.';
  @override
  String get video_jimaku_source_loading => 'Đang kiểm tra phụ đề khả dụng...';
  @override
  String get video_jimaku_source_failed =>
      'Không thể kiểm tra phụ đề khả dụng. Thử tìm kiếm lại.';
  @override
  String get video_jimaku_language_unknown => 'Ngôn ngữ không được ghi nhận';
  @override
  String video_jimaku_source_summary({
    required Object files,
    required Object episodes,
    required Object languages,
  }) => '${files} tệp phụ đề · ${episodes} tập · ${languages}';
  @override
  String video_jimaku_episode_unlabeled({
    required Object episode,
    required Object count,
  }) =>
      'Không có phụ đề ghi nhãn tập ${episode}; ${count} tệp không nhãn có thể phù hợp';
  @override
  String video_jimaku_episode_unavailable({required Object episode}) =>
      'Không tìm thấy phụ đề cho tập ${episode}';
  @override
  String video_jimaku_episode_available({
    required Object count,
    required Object languages,
  }) => '${count} phụ đề khả dụng · ${languages}';
  @override
  String get manga_online_source_disabled =>
      'Nguồn internet này bị tắt. Bật trong Nguồn để duyệt danh mục.';
  @override
  String get selection_web_search => 'Tìm trên web';
  @override
  String get selection_web_search_unavailable =>
      'Không có ứng dụng nào có thể tìm kiếm web.';
  @override
  String get selection_share_failed => 'Không thể mở bảng chia sẻ.';
  @override
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang} (tạo tự động)';
  @override
  String get anki_dedup_progress_title => 'Đang loại bỏ trùng lặp media';
  @override
  String anki_dedup_progress_scanning({required Object count}) =>
      'Đang quét thư mục media… (đã tìm thấy ${count} tệp)';
  @override
  String anki_dedup_progress_hashing({
    required Object done,
    required Object total,
  }) => 'Đang so sánh các tệp cùng kích thước… (${done} / ${total})';
  @override
  String anki_dedup_progress_resolving({
    required Object done,
    required Object total,
  }) => 'Đang xử lý trùng lặp… (${done} / ${total})';
  @override
  String anki_dedup_progress_freed({required Object size}) =>
      'Đã giải phóng ${size}';
  @override
  String get anki_dedup_cancelling => 'Đang hủy…';
  @override
  String get anki_dedup_cancelled =>
      'Đã hủy loại bỏ trùng lặp; các thay đổi đã hoàn thành được giữ lại.';
  @override
  String get anki_dedup_report_cancelled_note =>
      'Đã hủy sớm — các số liệu bên dưới chỉ bao gồm phần đã hoàn thành.';
  @override
  String get anki_dedup_plan_busy_note =>
      'Anki có thể không phản hồi trong khi chạy; tránh sử dụng Anki cho đến khi hoàn tất.';
  @override
  String get video_setting_subtitle_position_secondary => 'Vị trí phụ đề phụ';
  @override
  String get dict_download_learning_language => 'Ngôn ngữ đang học';
  @override
  String get dict_category_bilingual => 'Song ngữ';
  @override
  String get dict_category_monolingual => 'Đơn ngữ';
  @override
  String get shortcut_action_video_hold_speed => 'Giữ để tăng tốc tạm thời';
  @override
  String get handlebar_phonetic_transcriptions => 'Phiên âm';
  @override
  String get sync_progress_preparing => 'Đang chuẩn bị đồng bộ';
  @override
  String get sync_progress_collections => 'Đang đồng bộ bộ sưu tập';
  @override
  String get sync_progress_book => 'Đang đồng bộ sách';
  @override
  String sync_progress_book_titled({required Object title}) =>
      'Đang đồng bộ ${title}';
  @override
  String sync_last_completed({required Object count}) =>
      'Đồng bộ lần cuối: hoàn tất (${count} kênh)';
  @override
  String get sync_last_no_channels =>
      'Đồng bộ lần cuối: không đồng bộ gì - chưa có kênh đồng bộ nào được kết nối';
  @override
  String get sync_last_nothing => 'Đồng bộ lần cuối: không có gì để đồng bộ';
  @override
  String get sync_last_auto_disabled =>
      'Đồng bộ lần cuối: đã bỏ qua - đồng bộ tự động đang tắt';
  @override
  String get sync_last_cooled_down =>
      'Đồng bộ lần cuối: đã bỏ qua - vừa đồng bộ gần đây';
  @override
  String get sync_last_failed => 'Đồng bộ lần cuối: thất bại';
  @override
  String anime_download_no_results_detail({
    required Object query,
    required Object filters,
  }) =>
      'Dịch vụ phản hồi thành công nhưng trả về 0 kết quả. Truy vấn: ${query}; bộ lọc: ${filters}. Thử tiêu đề khác hoặc nới lỏng bộ lọc.';
  @override
  String get anime_download_streaming_ready =>
      'Trong thư viện · tải xuống tiếp tục';
  @override
  String get anime_download_unfiltered => 'Không có bộ lọc Tin cậy';
  @override
  String get interconnect_enable_footer =>
      'Cách sử dụng: trên thiết bị chứa thư viện, bật công tắc máy chủ đồng bộ bên dưới; trên thiết bị khác, thêm địa chỉ máy chủ đó để ghép nối. Một thiết bị chỉ có thể là một vai trò tại một thời điểm — máy chủ hoặc máy khách.';
  @override
  String get interconnect_peer_list_title => 'Các peer đã thêm';
  @override
  String get interconnect_peer_list_empty =>
      'Chưa thêm peer nào. Chọn thiết bị được phát hiện từ danh sách thiết bị LAN bên dưới để ghép nối tự động, hoặc thêm địa chỉ peer thủ công.';
  @override
  String get anki_lapis_visual_editor => 'Trình chỉnh sửa trực quan';
  @override
  String get anki_lapis_visual_editor_hint =>
      'Xem trước thẻ Lapis, sau đó thay đổi kiểu, vị trí và ánh xạ trường của từng vùng mà không cần viết CSS.';
  @override
  String get anki_lapis_visual_front => 'Mặt trước';
  @override
  String get anki_lapis_visual_back => 'Mặt sau';
  @override
  String get anki_lapis_visual_preview => 'Xem trước thẻ Lapis';
  @override
  String get anki_lapis_visual_select_field => 'Chọn vùng để chỉnh sửa';
  @override
  String get anki_lapis_visual_reset_field => 'Đặt lại trường';
  @override
  String anki_lapis_visual_font_size({required Object percent}) =>
      'Cỡ chữ: ${percent}%';
  @override
  String get anki_lapis_visual_bold => 'Đậm';
  @override
  String get anki_lapis_visual_alignment => 'Căn chỉnh';
  @override
  String get anki_lapis_visual_color => 'Màu chữ';
  @override
  String get anki_lapis_visual_default => 'Mặc định';
  @override
  String get anki_lapis_visual_advanced_css => 'CSS nâng cao';
  @override
  String get anki_lapis_visual_field_expression => 'Từ vựng';
  @override
  String get anki_lapis_visual_field_reading => 'Cách đọc';
  @override
  String get anki_lapis_visual_field_sentence => 'Câu ví dụ';
  @override
  String get anki_lapis_visual_field_primary_definition => 'Định nghĩa chính';
  @override
  String get anki_lapis_visual_field_glossaries => 'Định nghĩa khác';
  @override
  String get anki_lapis_visual_target_card_content => 'Nội dung thẻ';
  @override
  String get anki_lapis_visual_target_definition => 'Định nghĩa';
  @override
  String get anki_lapis_visual_target_inside_definition =>
      'Bên trong định nghĩa';
  @override
  String get anki_lapis_visual_field_definition_info => 'Chỉ báo định nghĩa';
  @override
  String get anki_lapis_visual_field_definition_box => 'Khung định nghĩa';
  @override
  String get anki_lapis_visual_field_definition_content => 'Toàn bộ định nghĩa';
  @override
  String get anki_lapis_visual_field_selected_definition =>
      'Định nghĩa đã chọn';
  @override
  String get anki_lapis_visual_field_dictionary_entry => 'Mục từ điển';
  @override
  String get anki_lapis_visual_field_dictionary_name => 'Tên từ điển';
  @override
  String get anki_lapis_visual_field_definition_example => 'Ví dụ định nghĩa';
  @override
  String get anki_lapis_visual_line_height => 'Chiều cao dòng';
  @override
  String get anki_lapis_visual_background_color => 'Tô nền';
  @override
  String get anki_lapis_visual_box_layout => 'Giao diện khung';
  @override
  String get anki_lapis_visual_border_width => 'Viền';
  @override
  String get anki_lapis_visual_border_color => 'Màu viền';
  @override
  String get anki_lapis_visual_corner_radius => 'Bo góc';
  @override
  String get anki_lapis_visual_padding => 'Khoảng cách trong';
  @override
  String get anki_lapis_visual_margin => 'Khoảng cách ngoài';
  @override
  String get anki_lapis_visual_field_definition_info_note =>
      'Chỉ hiển thị trên thẻ có nhiều hơn một khối định nghĩa; thẻ chỉ có một định nghĩa sẽ ẩn phần này.';
  @override
  String get anki_lapis_visual_field_dictionary_name_note =>
      'Trên thẻ Fushi, nhãn này cũng chứa thẻ từ loại, nên không thể tùy chỉnh kiểu riêng cho hai phần.';
  @override
  String get game_upscaling_error_bundle_missing =>
      'Cài đặt Fushi không đầy đủ: thiếu thành phần Magpie đi kèm. Hãy cài đặt lại hoặc cập nhật Fushi.';
  @override
  String get game_upscaling_error_bundle_invalid =>
      'Thành phần Magpie đi kèm bị hỏng hoặc không vượt qua xác minh. Hãy cài đặt lại hoặc cập nhật Fushi.';
  @override
  String download_test_connection_failed_reason({required Object message}) =>
      'Kết nối thất bại: ${message}';
  @override
  String get delete_disclosure_will_delete_label => 'Sẽ bị xóa';
  @override
  String get delete_disclosure_will_keep_label => 'Sẽ được giữ lại';
  @override
  String get delete_disclosure_book_records =>
      'Tiến trình đọc, đánh dấu, thẻ gắn và dữ liệu phụ đề';
  @override
  String get delete_disclosure_book_extracted =>
      'Các tệp sách mà Fushi đã giải nén vào bộ nhớ riêng';
  @override
  String get delete_disclosure_book_audiobook =>
      'Âm thanh và phụ đề đã đồng bộ của sách nói đính kèm, nếu có';
  @override
  String get delete_disclosure_source_kept =>
      'Các tệp gốc bạn đã nhập (sách, phụ đề, âm thanh)';
  @override
  String get delete_disclosure_stats_kept => 'Thống kê đọc';
  @override
  String get delete_disclosure_audiobook_files =>
      'Âm thanh và phụ đề đã đồng bộ mà Fushi sao chép vào bộ nhớ riêng';
  @override
  String get delete_disclosure_audiobook_book_kept =>
      'Cuốn sách và tiến trình đọc của nó';
  @override
  String get delete_disclosure_audiobook_source_kept =>
      'Các tệp âm thanh gốc bạn đã nhập';
  @override
  String get audiobook_delete => 'Xóa sách nói';
  @override
  String get audiobook_delete_confirm =>
      'Xóa sách nói đính kèm? Các tệp âm thanh sẽ bị xóa khỏi thiết bị này.';
  @override
  String get delete_collection_confirm =>
      'Chỉ xóa nhóm. Các mục trong đó vẫn được giữ lại.';
  @override
  String get shortcut_action_video_enter_caret => 'Bật con trỏ tra phụ đề';
  @override
  String get audiobook_export_clip_too_long =>
      'Đoạn âm thanh đã chọn quá dài để xuất (giới hạn: 5 phút)';
  @override
  String get sync_err_forbidden =>
      'Máy chủ đã từ chối yêu cầu này. Đăng nhập của bạn vẫn bình thường - hãy kiểm tra cài đặt máy chủ.';
  @override
  String sync_err_forbidden_detail({required Object reason}) =>
      'Máy chủ đã từ chối yêu cầu này: ${reason} (đăng nhập của bạn vẫn bình thường)';
  @override
  String get collection_group_extras => 'Phần thêm & PV';
  @override
  String collection_group_season({required Object n}) => 'Phần ${n}';
  @override
  String get collection_sort_by_season => 'Sắp xếp theo phần';
  @override
  String get mining_animated_format_avif => 'AVIF (nhỏ nhất)';
  @override
  String get mining_animated_format_webp => 'WebP (tương thích rộng hơn)';
  @override
  String get mining_animated_format_gif => 'GIF (tương thích nhất)';
  @override
  String get video_mining_animated_format => 'Định dạng hoạt ảnh thẻ video';
  @override
  String get video_mining_animated_format_hint =>
      'AVIF nhỏ hơn GIF rất nhiều ở cùng chất lượng, và chế độ chất lượng cao nhất cho phép độ phân giải và tốc độ khung hình cao hơn GIF hoặc WebP. Tự động chuyển về GIF khi bộ mã hóa đi kèm không tạo được.';
  @override
  String get gal_mining_animated_format => 'Định dạng hoạt ảnh thẻ trò chơi';
  @override
  String get gal_mining_animated_format_hint =>
      'Cùng định dạng với thẻ video, lưu riêng: khung hình galgame hầu như không chuyển động trong một dòng thoại, nên sự đánh đổi khác nhau.';
  @override
  String get scrape_all => 'Quét tất cả';
  @override
  String scrape_all_title({required Object kind}) => 'Quét tất cả ${kind}';
  @override
  String scrape_all_running({required Object current, required Object total}) =>
      'Đang quét ${current} / ${total}';
  @override
  String scrape_all_item({required Object title}) => 'Đang xử lý: ${title}';
  @override
  String scrape_all_done({
    required Object applied,
    required Object review,
    required Object skipped,
    required Object failed,
  }) =>
      'Xong: ${applied} đã áp dụng, ${review} cần xem lại, ${skipped} bỏ qua, ${failed} thất bại';
  @override
  String get scrape_all_empty => 'Không có mục nào để quét trong thư viện này.';
  @override
  String get scrape_all_start => 'Bắt đầu';
  @override
  String collection_hero_total_episodes({required Object count}) =>
      '${count} tập';
  @override
  String get video_scrape_collection_rename_title => 'Đổi tên bộ sưu tập này?';
  @override
  String get video_scrape_collection_rename_body =>
      'Kết quả khớp có tên khác. Đổi tên là tùy chọn: ảnh bìa và chi tiết vẫn được lưu dù thế nào, và đổi tên cũng thay thế tên cũ trên các thiết bị đồng bộ khác của bạn.';
  @override
  String video_scrape_collection_rename_from({required Object name}) =>
      'Tên hiện tại: ${name}';
  @override
  String video_scrape_collection_rename_to({required Object name}) =>
      'Tên mới: ${name}';
  @override
  String get video_scrape_collection_rename_keep => 'Giữ tên hiện tại';
  @override
  String get download_task_toggle_failed => 'Tạm dừng/tiếp tục thất bại';
  @override
  String get download_task_eta => 'Thời gian còn lại';
  @override
  String get download_task_ratio => 'Tỷ lệ';
  @override
  String get download_task_status_downloading => 'Đang tải xuống';
  @override
  String get download_task_status_seeding => 'Đang chia sẻ';
  @override
  String get download_task_status_completed => 'Hoàn thành';
  @override
  String get download_task_status_paused => 'Đã tạm dừng';
  @override
  String get download_task_status_queued => 'Đang chờ';
  @override
  String get download_task_status_stalled => 'Bị treo';
  @override
  String get download_task_status_checking => 'Đang kiểm tra';
  @override
  String get download_task_status_metadata => 'Đang lấy metadata';
  @override
  String get download_task_status_moving => 'Đang di chuyển';
  @override
  String get download_task_status_error => 'Lỗi';
  @override
  String get download_task_pause => 'Tạm dừng';
  @override
  String get download_task_resume => 'Tiếp tục';
  @override
  String get download_airing_calendar_title => 'Lịch phát sóng';
  @override
  String get download_airing_calendar_show_all => 'Hiện tất cả mùa này';
  @override
  String get download_airing_calendar_empty_guidance =>
      'Chưa có gì để hiển thị: liên kết bộ sưu tập với AniList hoặc thêm đăng ký tải xuống, và lịch phát sóng sẽ xuất hiện ở đây.';
  @override
  String get download_airing_calendar_error => 'Không tải được lịch phát sóng';
  @override
  String get download_airing_calendar_in_library => 'Trong thư viện';
  @override
  String get download_airing_calendar_subscribed => 'Đã đăng ký';
  @override
  String download_airing_calendar_episode_label({required Object episode}) =>
      'Tập ${episode}';
  @override
  String get download_airing_calendar_week_prev => 'Tuần trước';
  @override
  String get download_airing_calendar_week_next => 'Tuần sau';
  @override
  String get download_airing_calendar_week_empty =>
      'Không có gì phát sóng tuần này';
  @override
  String get video_jimaku_format => 'Định dạng';
  @override
  String get video_jimaku_format_all => 'Tất cả';
  @override
  String get video_setting_tmdb_key => 'Khóa API TMDB tùy chỉnh';
  @override
  String get video_setting_tmdb_key_hint =>
      'Tùy chọn. Để trống để dùng khóa tích hợp. Chỉ nhập khóa riêng nếu quét metadata ngừng hoạt động hoặc bạn muốn dùng hạn mức riêng.';
  @override
  String get about_tmdb_attribution =>
      'Ứng dụng này sử dụng TMDB và các API của TMDB nhưng không được xác nhận, chứng nhận hay phê duyệt bởi TMDB.';
  @override
  String get anki_lapis_visual_layout => 'Bố cục';
  @override
  String get anki_lapis_visual_layout_hint =>
      'Sử dụng các công tắc bố cục riêng của Lapis, nên Anki trên máy tính và di động đều tuân theo.';
  @override
  String get anki_lapis_visual_layout_sentence => 'Vị trí câu ví dụ';
  @override
  String get anki_lapis_visual_layout_sentence_above => 'Phía trên định nghĩa';
  @override
  String get anki_lapis_visual_layout_sentence_below => 'Phía dưới định nghĩa';
  @override
  String get anki_lapis_visual_layout_picture => 'Vị trí hình ảnh';
  @override
  String get anki_lapis_visual_layout_picture_right => 'Bên phải từ vựng';
  @override
  String get anki_lapis_visual_layout_picture_left => 'Bên trái từ vựng';
  @override
  String get anki_lapis_visual_layout_picture_alt => 'Bên trong câu ví dụ';
  @override
  String get anki_lapis_visual_layout_audio => 'Nút phát âm thanh';
  @override
  String get anki_lapis_visual_layout_audio_header => 'Cạnh phần cách đọc';
  @override
  String get anki_lapis_visual_layout_audio_fixed => 'Ghim ở cuối thẻ';
  @override
  String get anki_lapis_visual_layout_audio_alt => 'Bên trong câu ví dụ';
  @override
  String get anki_lapis_visual_mapping_hint =>
      'Trường Anki điền vào vùng đã chọn. Thay đổi được lưu cùng với kiểu dáng.';
  @override
  String get anki_lapis_visual_mapping_none =>
      'Vùng này do mẫu thẻ tự vẽ và không có trường riêng.';
  @override
  String get anki_lapis_visual_color_custom => 'Tùy chỉnh';
  @override
  String get anki_lapis_visual_color_picker_title => 'Chọn màu';
  @override
  String get video_scrape_tmdb_key_hint => 'Nhập khóa API TMDB';
  @override
  String get video_scrape_tmdb_key_required => 'TMDB yêu cầu khóa API';
  @override
  String get video_scrape_tmdb_key_save => 'Lưu';
  @override
  String get video_scrape_tmdb_key_empty =>
      'Lưu khóa API TMDB, sau đó nhấn Tìm kiếm. Kết quả từ các nguồn khác không hiển thị ở đây.';
  @override
  String get download_detail_tab_overview => 'Tổng quan';
  @override
  String get download_detail_tab_files => 'Tệp';
  @override
  String get download_detail_tab_peers => 'Ngang hàng';
  @override
  String get download_detail_tab_trackers => 'Trình theo dõi';
  @override
  String get download_detail_backend_unsupported =>
      'Trình tải xuống hiện tại không hỗ trợ';
  @override
  String get download_detail_task_gone =>
      'Không tìm thấy tác vụ trong trình tải';
  @override
  String get download_detail_task_missing =>
      'Trình tải gốc đang trực tuyến, nhưng torrent này không còn tồn tại. Không thể khôi phục ngang hàng và trình theo dõi trực tiếp; thông tin tác vụ đã lưu được hiển thị.';
  @override
  String get download_detail_section_transfer => 'Truyền tải';
  @override
  String get download_detail_section_network => 'Mạng';
  @override
  String get download_detail_section_task => 'Tác vụ';
  @override
  String get download_detail_seeds_label => 'Nguồn phát';
  @override
  String get download_detail_leechers_label => 'Người tải';
  @override
  String get download_detail_connections_label => 'Kết nối';
  @override
  String get download_detail_content_path_label => 'Đường dẫn nội dung';
  @override
  String get download_detail_time_active => 'Thời gian hoạt động';
  @override
  String get download_detail_time_seeding => 'Thời gian chia sẻ';
  @override
  String get download_detail_total_size_label => 'Tổng dung lượng';
  @override
  String get download_detail_listen_port => 'Cổng lắng nghe';
  @override
  String get download_detail_dht_nodes => 'Nút DHT';
  @override
  String get download_detail_hash_label => 'Mã hash';
  @override
  String get download_detail_port_mapping => 'Ánh xạ cổng';
  @override
  String get download_detail_session_rates => 'Tốc độ phiên';
  @override
  String get download_detail_pieces_label => 'Mảnh';
  @override
  String get download_detail_priority_skip => 'Không tải xuống';
  @override
  String get download_detail_raw_state_label => 'Trạng thái trình tải';
  @override
  String get download_detail_remaining_label => 'Còn lại';
  @override
  String get download_detail_save_path_label => 'Đường dẫn lưu';
  @override
  String get download_detail_priority_normal => 'Bình thường';
  @override
  String get download_detail_priority_high => 'Cao';
  @override
  String get download_detail_tracker_working => 'Đang hoạt động';
  @override
  String get download_detail_tracker_updating => 'Đang cập nhật';
  @override
  String get download_detail_tracker_not_contacted => 'Chưa liên lạc';
  @override
  String get download_detail_tracker_not_working => 'Không hoạt động';
  @override
  String get download_detail_tracker_disabled => 'Đã tắt';
  @override
  String get download_detail_no_peers => 'Không có ngang hàng nào';
  @override
  String get download_detail_no_trackers => 'Không có trình theo dõi';
  @override
  String get video_filter_year => 'Năm';
  @override
  String get video_filter_year_unknown => 'Không rõ năm';
  @override
  String get video_filter_watch_status => 'Trạng thái xem';
  @override
  String get video_filter_watch_status_unwatched => 'Chưa xem';
  @override
  String get video_filter_watch_status_watching => 'Đang xem';
  @override
  String get video_filter_watch_status_completed => 'Đã xem xong';
  @override
  String get video_hero_detail_view => 'Chi tiết';
  @override
  String video_hero_episodes_watched({required Object n}) => 'Đã xem ${n} tập';
  @override
  String get video_recently_added_badge => 'MỚI';
  @override
  String get video_air_season_winter => 'Đông';
  @override
  String get video_air_season_spring => 'Xuân';
  @override
  String get video_air_season_summer => 'Hạ';
  @override
  String get video_air_season_autumn => 'Thu';
  @override
  String get delete_scope_no_channel =>
      'Chưa cấu hình đồng bộ - việc xóa này chỉ ảnh hưởng đến thiết bị này';
  @override
  String get mihon_sources_title => 'Nguồn truyện tranh';
  @override
  String get mihon_extensions_title => 'Tiện ích truyện tranh';
  @override
  String get mihon_store_add => 'Thêm cửa hàng tiện ích';
  @override
  String get mihon_store_url => 'URL cửa hàng tiện ích';
  @override
  String get mihon_store_empty =>
      'Chưa có cửa hàng tiện ích. Thêm cửa hàng Mihon tương thích hoặc nhập tệp APK cục bộ.';
  @override
  String get mihon_extension_import => 'Nhập APK cục bộ';
  @override
  String get mihon_extension_warning =>
      'Tiện ích bên thứ ba chạy mã với quyền của Fushi. Chỉ cài đặt tiện ích và nhà phát hành mà bạn tin tưởng.';
  @override
  String get mihon_extension_install => 'Cài đặt';
  @override
  String get mihon_extension_update => 'Cập nhật';
  @override
  String get mihon_extension_uninstall => 'Gỡ cài đặt';
  @override
  String get mihon_extension_installed => 'Đã cài đặt';
  @override
  String get mihon_extension_disabled => 'Đã tắt';
  @override
  String get mihon_source_empty =>
      'Không có nguồn truyện tranh nào. Hãy cài đặt và bật tiện ích trước.';
  @override
  String get mihon_source_popular => 'Phổ biến';
  @override
  String get mihon_source_latest => 'Mới nhất';
  @override
  String get mihon_source_search => 'Tìm kiếm truyện tranh';
  @override
  String get mihon_source_preferences => 'Cài đặt nguồn';
  @override
  String get mihon_source_clear_data => 'Xóa dữ liệu nguồn';
  @override
  String get mihon_source_clear_data_hint =>
      'Xóa cài đặt và cookie của nguồn này. Tiện ích đã cài đặt vẫn được giữ lại.';
  @override
  String get mihon_signer_trust_title => 'Tin tưởng nhà phát hành tiện ích?';
  @override
  String get mihon_signer_fingerprint => 'SHA-256 nhà phát hành';
  @override
  String get mihon_runtime_unavailable =>
      'Tiện ích Mihon không khả dụng trên nền tảng này.';
  @override
  String get mihon_extension_incompatible => 'Tiện ích không tương thích';
  @override
  String get mihon_store_refresh => 'Làm mới cửa hàng';
  @override
  String get mihon_source_browse_mokuro => 'Danh mục Mokuro tích hợp';
  @override
  String get mihon_source_no_results => 'Không tìm thấy truyện tranh.';
  @override
  String get mihon_chapters_title => 'Chương';
  @override
  String get mihon_extension_language_filter => 'Ngôn ngữ';
  @override
  String get mihon_extension_language_all => 'Tất cả ngôn ngữ';
  @override
  String get mihon_filter_ignore => 'Bỏ qua';
  @override
  String get mihon_filter_include => 'Bao gồm';
  @override
  String get mihon_filter_exclude => 'Loại trừ';
  @override
  String get mihon_filter_ascending => 'Tăng dần';
  @override
  String get mihon_filter_descending => 'Giảm dần';
  @override
  String get mihon_add_to_bookshelf => 'Thêm vào kệ truyện tranh';
  @override
  String get mihon_in_bookshelf => 'Trong kệ truyện tranh';
  @override
  String scrape_all_confirm({required Object n}) =>
      'Khớp tất cả ${n} mục thư viện theo tên. Chỉ các kết quả khớp có độ tin cậy cao mới được áp dụng tự động — video được chấm điểm dựa trên tên cùng với năm, thể loại và các tín hiệu khác, trong khi sách và trò chơi yêu cầu tên chính xác duy nhất. Ảnh bìa bạn tự chọn sẽ không bị ghi đè (hình ảnh cục bộ bạn đặt, mục bạn chọn trong hộp thoại khớp, và tệp poster đặt trong thư mục), và kết quả mơ hồ sẽ chờ bạn xem xét thủ công.';
  @override
  String get collection_related_title => 'Tác phẩm liên quan';
  @override
  String get collection_relation_prequel => 'Phần trước';
  @override
  String get collection_relation_sequel => 'Phần sau';
  @override
  String get collection_relation_side_story => 'Ngoại truyện';
  @override
  String get collection_relation_movie => 'Phim điện ảnh';
  @override
  String get collection_relation_spin_off => 'Spin-off';
  @override
  String get collection_relation_other => 'Liên quan';
  @override
  String get collection_relation_download => 'Tải xuống';
  @override
  String get collection_relation_bind => 'Liên kết với bộ sưu tập hiện có';
  @override
  String get collection_episode_rename => 'Đổi tên tập từ dữ liệu quét';
  @override
  String get collection_episode_rename_title => 'Đổi tên tập';
  @override
  String get collection_episode_rename_empty => 'Không có gì để đổi tên';
  @override
  String get collection_episode_download => 'Tải tập này';
  @override
  String get collection_episode_fill_missing => 'Bổ sung các tập còn thiếu';
  @override
  String get collection_episode_no_missing => 'Không có tập nào bị thiếu';
  @override
  String get collection_split_by_season => 'Tách theo phần';
  @override
  String get collection_split_keep_original => 'Giữ bộ sưu tập gốc';
  @override
  String get collection_split_confirm => 'Tách';
  @override
  String collection_relation_bound({required Object name}) =>
      'Đã liên kết với ${name}';
  @override
  String collection_episode_rename_apply({required Object n}) =>
      'Đổi tên ${n} tập';
  @override
  String collection_split_done({required Object n}) =>
      'Đã tách thành ${n} bộ sưu tập';
  @override
  String collection_episode_watched_at({required Object position}) =>
      'Đã xem đến ${position}';
  @override
  String collection_episode_rename_partial({
    required Object n,
    required Object m,
  }) => 'Đã đổi tên ${n} tập, ${m} thất bại';
  @override
  String get sync_err_browser_timeout =>
      'Trình duyệt không trả về ủy quyền. Thử lại, và đảm bảo proxy của bạn cho phép 127.0.0.1 đi qua.';
  @override
  String get manga_rescan_running => 'Đang nhận dạng vùng đã chọn...';
  @override
  String get manga_rescan_empty =>
      'Không nhận dạng được văn bản nào trong vùng này.';
  @override
  String get stat_hourly_band_epub => 'Sách văn bản';
  @override
  String get stat_hourly_band_pdf => 'PDF';
  @override
  String get stat_hourly_band_manga => 'Truyện tranh';
  @override
  String get stat_hourly_band_unattributed => 'Lịch sử chưa phân loại';
  @override
  String get stat_hourly_unattributed_note =>
      'Số giờ ghi nhận trước khi có tính năng theo dõi theo định dạng không có thông tin loại, nên không thể tách ra. Chúng được hiển thị dưới dạng tổng hợp và không được gán cho loại nào.';
  @override
  String get book_convert_to_manga_action => 'Chuyển thành truyện tranh';
  @override
  String get book_convert_to_book_action => 'Chuyển lại thành sách';
  @override
  String get book_convert_running => 'Đang chuyển đổi…';
  @override
  String get book_convert_done => 'Chuyển đổi hoàn tất';
  @override
  String get book_convert_failed => 'Chuyển đổi thất bại';
  @override
  String get book_convert_blocked_already => 'Sách này đã ở định dạng đó rồi.';
  @override
  String get book_convert_blocked_text_only =>
      'Đây là sách văn bản không có hình ảnh trang. Chỉ sách ảnh quét mới có thể chuyển thành truyện tranh.';
  @override
  String get book_convert_blocked_no_original =>
      'Truyện tranh này được nhập từ hình ảnh, nên không có sách gốc để chuyển lại.';
  @override
  String get book_convert_blocked_source_missing =>
      'Các tệp nguồn đã bị mất khỏi ổ đĩa.';
  @override
  String manga_online_retry_waiting({
    required Object attempt,
    required Object total,
  }) => 'Đang tự động thử lại (${attempt}/${total})';
  @override
  String get manga_ocr_wizard_already_ocred =>
      'Tập này đã có dữ liệu OCR trên mọi trang. Chạy lại OCR sẽ ghi đè dữ liệu đó.';
  @override
  String get shortcut_scope_universal => 'Quay lại / Thoát';
  @override
  String get game_attach_and_capture => 'Gắn và bắt đầu thu';
  @override
  String get remote_delete_failed => 'Không thể xóa trên thiết bị đã ghép nối';
  @override
  String get remote_delete_unsupported =>
      'Thiết bị đã ghép nối quá cũ để hỗ trợ xóa từ xa. Hãy cập nhật Fushi trên thiết bị đó trước.';
  @override
  String get anki_lapis_visual_blocks => 'Vùng tùy chỉnh';
  @override
  String get anki_lapis_visual_blocks_hint =>
      'Hiển thị các trường hiện có ở vị trí khác trên thẻ. Chỉ hiển thị: không thêm hay xóa trường Anki nào.';
  @override
  String get anki_lapis_visual_block_add => 'Thêm vùng';
  @override
  String get anki_lapis_visual_block_delete => 'Xóa vùng';
  @override
  String anki_lapis_visual_block_name({required Object index}) =>
      'Vùng ${index}';
  @override
  String get anki_lapis_visual_block_anchor => 'Vị trí trên thẻ';
  @override
  String get anki_lapis_visual_block_anchor_top => 'Đầu thẻ';
  @override
  String get anki_lapis_visual_block_anchor_above_sentence => 'Dưới từ vựng';
  @override
  String get anki_lapis_visual_block_anchor_above_definition =>
      'Dưới câu ví dụ';
  @override
  String get anki_lapis_visual_block_anchor_below_definition =>
      'Dưới định nghĩa';
  @override
  String get anki_lapis_visual_block_anchor_bottom => 'Cuối thẻ';
  @override
  String get anki_lapis_visual_block_fields => 'Trường hiển thị ở đây';
  @override
  String get anki_lapis_visual_block_no_fields => 'Chưa chọn trường nào';
  @override
  String get anki_lapis_visual_block_needs_note_type =>
      'Chọn loại ghi chú trước để chọn trường.';
  @override
  String get anki_lapis_restore_factory => 'Khôi phục Lapis mặc định';
  @override
  String get anki_lapis_restore_factory_hint =>
      'Ghi đè loại ghi chú Lapis trong Anki bằng phiên bản đi kèm Fushi và xóa mọi tùy chỉnh ở đây.';
  @override
  String get anki_lapis_restore_factory_confirm =>
      'Thao tác này ghi đè kiểu dáng và mẫu thẻ Lapis trong Anki bằng phiên bản đi kèm Fushi, và đặt lại cỡ chữ, CSS tùy chỉnh và vùng tùy chỉnh. Bản sao lưu trạng thái hiện tại sẽ được lưu trước. Dữ liệu thẻ không bị ảnh hưởng.';
  @override
  String get anki_lapis_restore_factory_done =>
      'Đã khôi phục Lapis về mặc định';
  @override
  String anki_lapis_restore_factory_failed({required Object error}) =>
      'Khôi phục thất bại: ${error}';
  @override
  String get anki_lapis_visual_select_field_hint =>
      'Nhấp vào bất kỳ phần nào của bản xem trước, hoặc chọn bên dưới. Phần bạn chọn là phần mà các điều khiển bên dưới sẽ chỉnh sửa.';
  @override
  String get anki_lapis_visual_editing_now => 'Đang chỉnh sửa';
  @override
  String get mihon_extension_preview => 'Xem trước';
  @override
  String get mihon_extension_preview_warning =>
      'Xem trước sẽ chạy mã của tiện ích này trước khi cài đặt. Không có gì được thêm vào thư viện cho đến khi bạn chọn cài đặt.';
  @override
  String get mihon_extension_preview_discard => 'Bỏ qua';
  @override
  String get mihon_extension_preview_source_select => 'Chọn nguồn để xem trước';
  @override
  String get mihon_extension_sources_included => 'Nguồn bao gồm';
  @override
  String get mihon_extension_preview_read_only =>
      'Xem trước chỉ đọc. Cài đặt tiện ích để mở và đọc.';
  @override
  String get selection_copy_empty => 'Chưa chọn văn bản nào.';
  @override
  String get video_library_empty_source_hint =>
      'Thêm thư mục video từ Nguồn để xây dựng thư viện';
  @override
  String get video_source_scrape_action => 'Quét nguồn này';
  @override
  String get video_source_scrape_settings => 'Cài đặt quét nguồn';
  @override
  String get video_source_scrape_auto_after_scan => 'Quét sau khi duyệt';
  @override
  String get video_source_scrape_auto_after_scan_hint =>
      'Tự động quét metadata sau khi nguồn này được duyệt';
  @override
  String get video_source_scrape_write_nfo => 'Ghi tệp NFO';
  @override
  String get video_source_scrape_write_images => 'Ghi tệp hình ảnh';
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
      'Lần quét trước (${status}): ${succeeded} thành công, ${pending} đang chờ, ${failed} thất bại';
  @override
  String get video_source_scrape_phase_planning => 'Lập kế hoạch';
  @override
  String get video_source_scrape_phase_recognizing => 'Đang khớp';
  @override
  String get video_source_scrape_phase_fetching => 'Đang lấy metadata';
  @override
  String get video_source_scrape_phase_applying => 'Đang lưu metadata';
  @override
  String get video_source_scrape_phase_writing_sidecars => 'Đang ghi tệp phụ';
  @override
  String get video_source_scrape_status_interrupted => 'Bị gián đoạn';
  @override
  String get video_source_scrape_locale => 'Ngôn ngữ metadata';
  @override
  String get video_source_scrape_locale_hint =>
      'Ngôn ngữ ưu tiên cho tiêu đề, tóm tắt và hình ảnh';
  @override
  String get video_source_scrape_confirmation_title =>
      'Xác nhận kết quả khớp metadata';
  @override
  String get video_source_scrape_confirmation_hint =>
      'Tìm thấy nhiều kết quả khớp chính xác. Chọn tác phẩm đúng để lưu liên kết nhà cung cấp.';
  @override
  String get video_source_scrape_confirmation_skip => 'Bỏ qua tác phẩm này';
  @override
  String get video_source_scrape_nfo_policy => 'Chính sách ghi NFO';
  @override
  String get video_source_scrape_image_policy => 'Chính sách ghi hình ảnh';
  @override
  String get video_source_scrape_policy_skip => 'Không ghi';
  @override
  String get video_source_scrape_policy_missing_only => 'Chỉ khi thiếu';
  @override
  String get video_source_scrape_policy_overwrite => 'Cập nhật tệp Fushi';
  @override
  String get video_source_scrape_external_overwrite =>
      'Cho phép ghi đè tệp phụ được bảo vệ';
  @override
  String get video_source_scrape_external_overwrite_hint =>
      'Tệp bên thứ ba hoặc do người dùng chỉnh sửa vẫn được bảo vệ cho đến khi bạn xác nhận lại từng lô quét thủ công.';
  @override
  String get video_source_scrape_external_overwrite_confirm_title =>
      'Ghi đè tệp phụ được bảo vệ?';
  @override
  String get video_source_scrape_external_overwrite_confirm_body =>
      'Lô này có thể thay thế NFO/hình ảnh bên thứ ba hoặc tệp Fushi bạn đã chỉnh sửa. Tệp phương tiện không bị thay đổi. Tiếp tục?';
  @override
  String get video_source_scrape_tasks_open => 'Tác vụ nền';
  @override
  String get video_source_scrape_background_started =>
      'Quét đang chạy trong nền';
  @override
  String get video_source_scrape_tasks_current => 'Tác vụ hiện tại';
  @override
  String get video_source_scrape_tasks_history => 'Tác vụ gần đây';
  @override
  String get video_source_scrape_tasks_empty => 'Chưa có tác vụ quét nào';
  @override
  String get video_source_scrape_waiting_confirmation =>
      'Đang chờ xác nhận của bạn';
  @override
  String get video_source_scrape_phase_scanning => 'Đang duyệt nguồn';
  @override
  String get video_library_all_videos => 'Tất cả video';
  @override
  String get video_work_voice_roles => 'Diễn viên lồng tiếng và nhân vật';
  @override
  String get video_work_cast_crew => 'Diễn viên và đoàn phim';
  @override
  String get video_work_trailers => 'Trailer';
  @override
  String get video_work_extras => 'Phần thêm';
  @override
  String get video_work_details => 'Chi tiết';
  @override
  String get video_work_external_ids => 'ID bên ngoài';
  @override
  String get video_work_metadata_pending =>
      'Metadata chi tiết chưa được quét. Thử lại nguồn này từ Nguồn, sau đó mở lại tác phẩm.';
  @override
  String get video_work_genres => 'Thể loại';
  @override
  String get video_work_keywords => 'Từ khóa';
  @override
  String get video_work_studios => 'Hãng phim';
  @override
  String get video_work_countries => 'Quốc gia';
  @override
  String get video_work_content_rating => 'Phân loại nội dung';
  @override
  String get video_all_videos_list_view => 'Dạng danh sách';
  @override
  String get video_all_videos_grid_view => 'Dạng lưới';
  @override
  String video_home_continue_episode_number({required Object n}) =>
      'Đang phát tập ${n}';
  @override
  String video_home_next_episode_number({required Object n}) =>
      'Tiếp theo · Tập ${n}';
  @override
  String video_home_recent_episode_number({required Object n}) =>
      'Mới thêm · Tập ${n}';
  @override
  String video_home_remaining_minutes({required Object minutes}) =>
      'Còn ${minutes} phút';
  @override
  String get video_subtitle_replay => 'Phát lại dòng này';
  @override
  String get manga_ocr_done => 'OCR hoàn tất';
  @override
  String get settings_destination_manga_summary =>
      'Trình đọc, OCR và danh mục trực tuyến';
  @override
  String get manga_page_animation => 'Hiệu ứng lật trang';
  @override
  String get manga_page_animation_none => 'Không';
  @override
  String get manga_page_animation_slide => 'Trượt';
  @override
  String get manga_page_animation_fade => 'Mờ dần';
  @override
  String get manga_default_zoom => 'Thu phóng mặc định';
  @override
  String get manga_zoom_sensitivity => 'Độ nhạy thu phóng';
  @override
  String get manga_volume_key_paging => 'Phím âm lượng lật trang';
  @override
  String get manga_volume_key_paging_subtitle =>
      'Sử dụng phím tăng giảm âm lượng để lật trang trong trình đọc truyện tranh';
  @override
  String get manga_tap_zone_paging => 'Chạm cạnh để lật trang';
  @override
  String get manga_tap_zone_paging_subtitle =>
      'Chạm vào cạnh trái hoặc phải của trang để lật';
  @override
  String get manga_section_viewing => 'Xem và lật trang';
  @override
  String get game_capture_setup_title => 'Hoàn tất thiết lập thu thập';
  @override
  String get game_capture_setup_hint =>
      'Chọn luồng hội thoại trước. Fushi chỉ có thể ghép âm thanh với các dòng từ luồng đã chọn.';
  @override
  String get game_audio_requires_thread =>
      'Nguồn thu âm thanh có thể đã sẵn sàng, nhưng âm thanh câu không tồn tại cho đến khi một luồng được chọn và một dòng được nhận.';
  @override
  String get game_session_waiting_thread => 'Đang chờ luồng hội thoại';
  @override
  String get anki_connect_use_on_mobile => 'Use AnkiConnect on Android';
  @override
  String get anki_connect_use_on_mobile_hint =>
      'Chỉ sử dụng trên mạng đáng tin cậy. AnkiConnect dùng HTTP không mã hóa; cấu hình khóa API khớp, sau đó làm mới bộ thẻ và loại ghi chú sau khi chuyển đổi.';
  @override
  String get anki_connect_api_key_hint =>
      'Bắt buộc cho AnkiConnect từ xa; phải khớp với khóa được cấu hình trong tiện ích';
  @override
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before enabling the Android backend.';
  @override
  String anki_connect_backend_switch_failed({required Object error}) =>
      'Không thể chuyển đổi backend Anki: ${error}';
  @override
  String get migration_settings_entry => 'Di chuyển sang Fushi';
  @override
  String get migration_settings_entry_subtitle =>
      'Chuyển tất cả dữ liệu sang ứng dụng Fushi mới';
  @override
  String get migration_intro =>
      'Fushi là tên mới của ứng dụng này. Quá trình di chuyển xuất tất cả dữ liệu của bạn theo từng đợt vào thư mục chuyển, sau đó Fushi nhập và xác minh. Dữ liệu ở đây không bị thay đổi cho đến khi bạn gỡ cài đặt ứng dụng này.';
  @override
  String get migration_target_missing =>
      'Fushi chưa được cài đặt. Cài đặt Fushi trước, rồi quay lại đây.';
  @override
  String get migration_download_fushi => 'Tải Fushi';
  @override
  String get migration_start => 'Bắt đầu di chuyển';
  @override
  String get migration_open_fushi => 'Mở Fushi';
  @override
  String get migration_include_local_audio =>
      'Cũng xuất âm thanh phát âm cục bộ (có thể dung lượng lớn)';
  @override
  String migration_batch_running({required Object batch}) =>
      'Đang xuất ${batch}…';
  @override
  String migration_batch_done({required Object batch}) => 'Đã xuất ${batch}';
  @override
  String get migration_export_done =>
      'Xuất hoàn tất. Mở Fushi để nhập và xác minh.';
  @override
  String migration_export_failed({required Object error}) =>
      'Xuất thất bại: ${error}';
  @override
  String get migration_readonly_note =>
      'Dữ liệu của bạn đã được xuất sang Fushi. Ứng dụng này giờ chỉ đọc: hãy dùng Fushi để đọc và tạo thẻ. Bạn có thể xuất lại bất cứ lúc nào nếu Fushi báo thiếu dữ liệu.';
  @override
  String get migration_reexport => 'Xuất lại';
  @override
  String get migration_batch_core_label => 'Cài đặt, tiến trình & thống kê';
  @override
  String get migration_import_entry => 'Nhập từ Hibiki';
  @override
  String get migration_import_entry_subtitle =>
      'Nhập dữ liệu đã xuất từ ứng dụng Hibiki cũ';
  @override
  String get migration_import_detected =>
      'Phát hiện dữ liệu di chuyển từ Hibiki. Nhập ngay bây giờ?';
  @override
  String get migration_import_start => 'Bắt đầu nhập';
  @override
  String migration_import_running({required Object batch}) =>
      'Đang nhập ${batch}…';
  @override
  String migration_import_verify_failed({
    required Object batch,
    required Object detail,
  }) => '${batch} không qua xác minh và đã được giữ lại để xuất lại: ${detail}';
  @override
  String migration_import_counts_failed({required Object detail}) =>
      'Dữ liệu nhập không đầy đủ: ${detail}. Xuất lại các phần còn thiếu từ Hibiki, rồi nhập lại.';
  @override
  String get migration_import_success => 'Nhập hoàn tất và đã xác minh.';
  @override
  String get migration_import_nothing =>
      'Không tìm thấy dữ liệu di chuyển trong thư mục chuyển.';
  @override
  String get migration_uninstall_prompt =>
      'Di chuyển hoàn tất. Gỡ cài đặt ứng dụng Hibiki cũ?';
  @override
  String get migration_uninstall_button => 'Gỡ cài đặt Hibiki';
  @override
  String get migration_uninstall_still_installed =>
      'Hibiki vẫn còn cài đặt. Bạn có thể gỡ bất cứ lúc nào.';
  @override
  String get migration_import_permission_title => 'Cần quyền truy cập bộ nhớ';
  @override
  String get migration_import_permission_body =>
      'Thư mục chuyển được tạo bởi ứng dụng cũ. Nếu không có "Quyền truy cập tất cả tệp", Fushi không thể đọc nó — dữ liệu vẫn còn nguyên, chỉ là không thể mở.';
  @override
  String get migration_import_permission_grant => 'Cấp quyền';
  @override
  String migration_import_verifying({
    required Object batch,
    required Object done,
    required Object total,
  }) => 'Đang xác minh ${batch} (${done}/${total})';
  @override
  String get migration_import_verifying_hint =>
      'Đang kiểm tra tổng kho lưu trữ. Thư viện lớn có thể mất vài phút.';
  @override
  String get game_line_copy_tooltip => 'Sao chép câu';
  @override
  String get game_japanese_locale_auto => 'Tự động';
  @override
  String get game_japanese_locale_on => 'Luôn bật';
  @override
  String get game_japanese_locale_off => 'Tắt';
  @override
  String get game_japanese_locale => 'Ngôn ngữ Nhật Bản';
  @override
  String get game_japanese_locale_hint =>
      'Bản dịch tiếng Trung/Anh phải tắt tùy chọn này, nếu không trò chơi sẽ bị lỗi khi khởi động';
  @override
  String get video_scrape_diagnostic_export => 'Xuất chẩn đoán quét';
  @override
  String get video_scrape_diagnostic_confirm_title => 'Xuất chẩn đoán quét?';
  @override
  String get video_scrape_diagnostic_saved => 'Gói chẩn đoán đã được lưu';
  @override
  String video_scrape_diagnostic_failed({required Object reason}) =>
      'Không thể xuất gói chẩn đoán: ${reason}';
  @override
  String get video_scrape_diagnostic_share_subject =>
      'Chẩn đoán quét video Fushi';
  @override
  String get video_scrape_diagnostic_confirm_body =>
      'Gói bao gồm tên tệp và thư mục tương đối, tóm tắt quét, và nội dung NFO gốc. Không bao gồm video, phụ đề, hình ảnh, đường dẫn tuyệt đối, cấu hình ứng dụng, hoặc thông tin đăng nhập. Tệp NFO gốc được giữ nguyên và có thể chứa thông tin cá nhân hoặc bí mật; hãy kiểm tra gói trước khi chia sẻ công khai.';
  @override
  String get video_discovery_search_hint => 'Tìm kiếm phim, series, anime';
  @override
  String get video_discovery_hot => 'Phổ biến hiện tại';
  @override
  String get video_discovery_seasonal_anime => 'Anime theo mùa';
  @override
  String get video_discovery_all_works => 'Tất cả tựa đề';
  @override
  String get video_discovery_search_results => 'Kết quả tìm kiếm';
  @override
  String get video_discovery_provider_warning =>
      'Một số nguồn không khả dụng. Đang hiển thị kết quả có sẵn.';
  @override
  String get video_discovery_load_failed => 'Không thể tải kết quả khám phá.';
  @override
  String get video_discovery_empty => 'Không có tựa đề phù hợp.';
  @override
  String get video_discovery_resource_search => 'Tìm tài nguyên';
  @override
  String get video_discovery_subtitle_search => 'Tìm phụ đề';
  @override
  String get video_discovery_subscribe => 'Đăng ký theo dõi';
  @override
  String get video_discovery_subscription_manage => 'Quản lý đăng ký';
  @override
  String get video_discovery_pipeline_idle =>
      'Chưa tải → Tải xuống → Sắp xếp → Phụ đề → Quét → Thư viện';
  @override
  String get video_discovery_details_load_failed =>
      'Không thể tải chi tiết tựa đề.';
  @override
  String get video_discovery_sort_popularity => 'Phổ biến';
  @override
  String get video_discovery_sort_rating => 'Đánh giá';
  @override
  String get video_discovery_sort_release => 'Ngày phát hành';
  @override
  String get video_discovery_in_library => 'Trong thư viện';
  @override
  String get video_discovery_play => 'Phát';
  @override
  String get download_resources_tab => 'Tài nguyên';
  @override
  String get video_external_settings_section =>
      'Nhà cung cấp tài nguyên và phụ đề bên ngoài';
  @override
  String get video_torznab_settings_title => 'Trình chỉ mục Torznab';
  @override
  String get video_torznab_add => 'Thêm trình chỉ mục';
  @override
  String get video_torznab_name => 'Tên';
  @override
  String get video_torznab_endpoint => 'Điểm cuối';
  @override
  String get video_torznab_endpoint_hint =>
      'Yêu cầu HTTPS trừ các địa chỉ loopback.';
  @override
  String get video_torznab_api_key => 'Khóa API';
  @override
  String get video_torznab_priority => 'Ưu tiên';
  @override
  String get video_torznab_categories => 'Danh mục';
  @override
  String get video_torznab_categories_hint =>
      'Mã danh mục dạng số, phân cách bằng dấu phẩy';
  @override
  String get video_external_enabled => 'Đã bật';
  @override
  String get video_external_insecure_http => 'Cho phép HTTP không bảo mật';
  @override
  String get video_external_insecure_http_hint =>
      'Chỉ sử dụng cho điểm cuối mạng nội bộ đáng tin cậy.';
  @override
  String get video_external_endpoint_invalid =>
      'Nhập điểm cuối hợp lệ không chứa thông tin đăng nhập, tham số truy vấn, hoặc fragment.';
  @override
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  @override
  String get video_opensubtitles_user_agent => 'User-Agent';
  @override
  String get video_opensubtitles_languages_hint =>
      'Mã ngôn ngữ phân cách bằng dấu phẩy, ví dụ zh-CN,en,ja';
  @override
  String get video_download_path_mappings_title =>
      'Ánh xạ đường dẫn qBittorrent';
  @override
  String get video_download_path_mappings_hint =>
      'Ánh xạ mỗi thư mục gốc từ xa của qBittorrent sang thư mục có thể truy cập cục bộ.';
  @override
  String get video_download_path_mapping_add => 'Thêm ánh xạ đường dẫn';
  @override
  String get video_download_backend_profile_id => 'ID hồ sơ backend';
  @override
  String get video_download_remote_root => 'Thư mục gốc từ xa';
  @override
  String get video_download_local_root => 'Thư mục gốc cục bộ';
  @override
  String get video_download_target_source_title =>
      'Nguồn video được quản lý mặc định';
  @override
  String get video_download_target_source_hint =>
      'Các bản tải xuống mới được sắp xếp vào nguồn video cục bộ này.';
  @override
  String get video_download_target_source_none => 'Chọn nguồn video cục bộ';
  @override
  String get video_external_remove => 'Xóa';
  @override
  String get video_external_username_optional => 'Tên người dùng (tùy chọn)';
  @override
  String get video_external_password_optional => 'Mật khẩu (tùy chọn)';
  @override
  String get video_external_api_key => 'Khóa API';
  @override
  String get video_external_save_error =>
      'Không thể lưu cấu hình. Kiểm tra các trường được đánh dấu.';
  @override
  String get video_external_categories_invalid =>
      'Danh mục phải là mã số phân cách bằng dấu phẩy.';
  @override
  String get video_download_path_mapping_invalid =>
      'Nhập ID hồ sơ, thư mục gốc từ xa, và thư mục gốc cục bộ tuyệt đối.';
  @override
  String get video_opensubtitles_endpoint => 'Điểm cuối API';
  @override
  String get video_download_target_source_empty =>
      'Không có nguồn video cục bộ nào khả dụng. Thêm một nguồn trong tab Nguồn trước.';
  @override
  String get video_setting_drag_seek_sensitivity => 'Độ nhạy kéo để tua';
  @override
  String get video_setting_drag_seek_sensitivity_hint =>
      'Khoảng tua khi vuốt toàn chiều rộng trên màn hình cảm ứng: Thấp khoảng 45 giây, Trung bình khoảng 90 giây, Cao khoảng 180 giây. Không phụ thuộc vào tổng thời lượng video. Chỉ áp dụng kéo cảm ứng; chuột và bàn phím không bị ảnh hưởng.';
  @override
  String get video_setting_drag_seek_sensitivity_low => 'Thấp';
  @override
  String get video_setting_drag_seek_sensitivity_medium => 'Trung bình';
  @override
  String get video_setting_drag_seek_sensitivity_high => 'Cao';
  @override
  String video_subtitle_read_failed({required Object label}) =>
      'Không thể đọc tệp phụ đề này (bị hỏng hoặc trống): ${label}';
  @override
  String dict_downloading_size({
    required Object name,
    required Object done,
    required Object total,
  }) => 'Đang tải ${name} (${done} / ${total})';
  @override
  String get video_subtitle_attach_book_missing =>
      'Video này không có trong thư viện, nên phụ đề không được đính kèm';
  @override
  String get dict_download_hide => 'Chạy nền';
  @override
  String get dict_download_progress_show => 'Xem tiến trình';
  @override
  String get dict_download_cancelled => 'Đã hủy tải xuống.';
  @override
  String get dict_download_import_uncancellable =>
      'Quá trình nhập không thể bị gián đoạn';
  @override
  String get dict_download_busy => 'Một bản tải từ điển đang chạy.';
  @override
  String get gal_hook_ingame_lookup => 'Tra từ điển trong trò chơi';
  @override
  String get gal_hook_ingame_lookup_hint =>
      'Hiển thị thẻ từ điển bên trong cửa sổ trò chơi (engine KiriKiri, chỉ Windows)';
  @override
  String download_subscription_start_episode({required Object episode}) =>
      '从第 ${episode} 集开始';
  @override
  String get drag_drop_failed =>
      'Không thể xử lý các tệp được thả. Vui lòng thử lại.';
  @override
  String get tag_add_failed => 'Không thể thêm thẻ gắn. Vui lòng thử lại.';
  @override
  String get tag_reorder_failed =>
      'Không thể lưu thứ tự thẻ gắn mới. Vui lòng thử lại.';
  @override
  String get download_task_error_summary_source_missing =>
      'Nguồn video được quản lý bị thiếu hoặc không thể truy cập';
  @override
  String get download_task_error_summary_backend_unconfirmed =>
      'Không thể xác nhận torrent bằng hash, tiêu đề và danh mục';
  @override
  String get download_task_error_summary_subtitle =>
      'Phụ đề không khả dụng hoặc không thể cài đặt';
  @override
  String get download_task_error_summary_backend_unavailable =>
      'Backend tải xuống không khả dụng hoặc không còn khớp';
  @override
  String get download_task_error_summary_legacy => 'Nhập cũ cần xử lý thủ công';
  @override
  String get download_task_error_summary_torrent_info =>
      'Danh tính torrent bị thiếu hoặc không thể xác minh';
  @override
  String get download_task_error_summary_generic => 'Tác vụ gặp lỗi';
  @override
  String get download_task_error_view_detail => 'Xem chi tiết';
  @override
  String get download_task_error_detail_title => 'Chi tiết lỗi';
  @override
  String get download_task_error_copied => 'Đã sao chép chi tiết lỗi';
  @override
  String get download_task_lifecycle_active => 'Đang tiến hành';
  @override
  String get download_task_lifecycle_needs_attention => 'Cần chú ý';
  @override
  String get download_task_location_missing =>
      'Vị trí tệp tác vụ không khả dụng.';
  @override
  String get download_task_location_open_failed => 'Không thể mở vị trí tệp.';
  @override
  String get download_task_open_location => 'Hiển thị trong thư mục';
  @override
  String get download_task_lifecycle_completed => 'Hoàn tất';
  @override
  String get download_task_lifecycle_failed => 'Thất bại';
  @override
  String get download_task_lifecycle_cancelled => 'Đã hủy';
  @override
  String get download_task_stage_enqueue => 'Xếp hàng';
  @override
  String get download_task_stage_download => 'Tải xuống';
  @override
  String get download_task_stage_organize => 'Sắp xếp';
  @override
  String get download_task_stage_subtitle => 'Phụ đề';
  @override
  String get download_task_stage_import => 'Nhập';
  @override
  String get download_task_stage_scrape => 'Quét';
  @override
  String get video_discovery_manual_identity_hint =>
      'Nhập tiêu đề, ID bên ngoài và năm ở trên để bật tìm kiếm';
  @override
  String get collection_split_move_to => 'Chuyển đến';
  @override
  String get collection_split_new_group => 'Nhóm mới';
  @override
  String collection_split_selected({required Object n}) => 'Đã chọn ${n}';
  @override
  String get sync_pair_rate_limited =>
      'Quá nhiều lần thử. Đợi vài phút rồi thử lại.';
  @override
  String get sync_pair_tls_failed =>
      'Kiểm tra chứng chỉ thất bại. Chứng chỉ của thiết bị đối tác không khớp với chứng chỉ đã ghim.';
  @override
  String get sync_pair_timeout => 'Thiết bị đối tác không phản hồi kịp thời.';
  @override
  String get sync_pair_expired =>
      'Ghép nối đã hết hạn. Bắt đầu lại ghép nối từ thiết bị này.';
  @override
  String get sync_pair_upgrade_required =>
      'Thiết bị kia chạy phiên bản cũ không thể ghép nối an toàn từ mạng này. Cập nhật nó, rồi ghép nối lại.';
  @override
  String get sync_pair_fingerprint_changed_title => 'Chứng chỉ đã thay đổi';
  @override
  String get sync_pair_fingerprint_stored_label => 'Đã ghim trước đó';
  @override
  String get sync_pair_fingerprint_new_label => 'Thấy bây giờ';
  @override
  String get sync_pair_fingerprint_retrust => 'Xóa và tin cậy lại';
  @override
  String get sync_pair_fingerprint_changed_body =>
      'Địa chỉ này trước đó đã được ghim với một chứng chỉ khác. Chỉ tiếp tục nếu bạn biết thiết bị đối tác đã cài lại hoặc đặt lại — nếu không, ai đó có thể đang chặn kết nối.';
  @override
  String get interconnect_upload_section_footer =>
      'Chọn nội dung thiết bị này tải lên thiết bị đối tác đã kết nối. Độc lập với các công tắc sao lưu đám mây và mặc định tắt. Các công tắc này chỉ áp dụng khi Bật kết nối liên thiết bị đang bật: tắt kết nối liên thiết bị sẽ dừng mọi tải lên ở đây.';
  @override
  String get remote_delete_audiobook_partial =>
      'Đã xóa sách, nhưng sách nói không thể được gỡ trên thiết bị đã ghép nối';
  @override
  String get download_detail_task_queued =>
      'Đang xếp hàng: chờ các bản tải xuống khác giải phóng một chỗ. Tác vụ này chưa được chuyển đến trình tải, nên không có dữ liệu peer hoặc tracker trực tiếp.';
  @override
  String video_subscription_group_release_count({required Object count}) =>
      '${count} phát hành';
  @override
  String get download_task_priority => 'Ưu tiên hàng đợi';
  @override
  String get download_task_priority_high => 'Cao';
  @override
  String get download_task_priority_normal => 'Bình thường';
  @override
  String get download_task_priority_low => 'Thấp';
  @override
  String get library_view_import => 'Nhập';
  @override
  String get quick_import_title => 'Nhập nhanh';
  @override
  String get media_source_section_title => 'Nguồn thư viện';
  @override
  String get media_import_folder => 'Thư mục nhập';
  @override
  String get media_import_folder_as_source => 'Thêm làm nguồn thư viện';
  @override
  String get book_import_folder_as_source_hint =>
      'Tiếp tục quét thư mục này để tìm sách mới';
  @override
  String get media_import_folder_once => 'Chỉ nhập một lần';
  @override
  String get library_empty_go_import => 'Đi đến nhập';
  @override
  String get game_import_drop_hint =>
      'Bạn cũng có thể kéo tệp .exe vào thư viện trò chơi';
  @override
  String get library_view_sources => 'Nguồn';
  @override
  String get video_setting_secondary_av_delay => 'Đồng bộ phụ đề phụ';
  @override
  String get video_setting_secondary_av_delay_hint =>
      'Điều chỉnh độ lệch phụ đề phụ độc lập. Nó theo phụ đề chính cho đến khi được đặt ở đây.';
  @override
  String get video_setting_secondary_delay_follow => 'Theo phụ đề chính';
  @override
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      'Đồng bộ phụ đề phụ: ${ms} ms';
  @override
  String get video_subtitle_secondary_delay_follow_osd =>
      'Đồng bộ phụ đề phụ: theo phụ đề chính';
  @override
  String get video_setting_subtitle_anchor => 'Vị trí neo phụ đề chính';
  @override
  String get video_subtitle_anchor_bottom => 'Dưới';
  @override
  String get video_subtitle_anchor_top => 'Trên';
  @override
  String get video_setting_subtitle_drag_adjust => 'Kéo để điều chỉnh vị trí';
  @override
  String get video_subtitle_drag_adjust_hint =>
      'Kéo phụ đề lên hoặc xuống để thay đổi vị trí';
  @override
  String get anki_connect_mobile_disabled_key_cleared =>
      'AnkiConnect cần khóa API trên di động, nên việc xóa nó đã tắt lại công tắc. Anki giờ đi qua backend tích hợp.';
  @override
  String manga_import_batch_hint({required Object n}) =>
      'Thư mục này chứa ${n} tệp tập; mỗi tệp được nhập thành một cuốn sách riêng, đặt tên theo tệp.';
  @override
  String manga_import_batch_done({
    required Object imported,
    required Object skipped,
    required Object failed,
  }) => 'Đã nhập ${imported}, bỏ qua ${skipped}, thất bại ${failed}.';
  @override
  String get srt_book_reimport => 'Nhập lại';
  @override
  String get srt_book_reimport_subtitle_hint =>
      'Thay thế phụ đề sẽ xây dựng lại nội dung sách từ các cue mới.';
  @override
  String get srt_book_reimport_no_cues =>
      'Không tìm thấy dòng phụ đề trong tệp đó';
  @override
  String get srt_book_reimport_body_rebuilt =>
      'Nội dung sách đã được xây dựng lại — mở lại sách để đọc';
  @override
  String get video_setting_torrent_backend_embedded => 'Engine tích hợp';
  @override
  String get download_backend_unsupported_note =>
      'Engine tích hợp không khả dụng trên nền tảng này. Tải xuống sử dụng qBittorrent bên ngoài.';
  @override
  String get aidoku_runtime_unavailable =>
      'Tiện ích mở rộng Aidoku hiện chỉ khả dụng trên macOS.';
  @override
  String get aidoku_extensions_title => 'Tiện ích mở rộng Aidoku';
  @override
  String get aidoku_extension_empty =>
      'Chưa cài đặt tiện ích mở rộng Aidoku nào.';
  @override
  String get aidoku_extension_remove => 'Gỡ tiện ích mở rộng Aidoku';
  @override
  String get aidoku_extension_warning =>
      'Tiện ích mở rộng Aidoku thực thi mã WebAssembly của bên thứ ba với quyền truy cập mạng. Chỉ tiếp tục với các nguồn bạn tin tưởng.';
  @override
  String get aidoku_webview_unsupported =>
      'Nguồn này yêu cầu API WebView của Aidoku chưa được hỗ trợ.';
  @override
  String get aidoku_extension_imported => 'Đã nhập tiện ích mở rộng Aidoku';
  @override
  String get aidoku_extension_import => 'Nhập tiện ích mở rộng Aidoku (.aix)';
  @override
  String get aidoku_extension_confirm_title =>
      'Cài đặt tiện ích mở rộng Aidoku?';
  @override
  String get aidoku_extension_version => 'Phiên bản';
  @override
  String get aidoku_repository_url => 'URL kho lưu trữ';
  @override
  String get aidoku_repository_sources => 'Nguồn kho lưu trữ';
  @override
  String get aidoku_repository_identity_mismatch =>
      'Gói đã tải không khớp với mục lục kho lưu trữ.';
  @override
  String get aidoku_repository_installed => 'Đã cài đặt';
  @override
  String get aidoku_repository_search => 'Tìm kiếm nguồn kho lưu trữ';
  @override
  String get aidoku_repository_install => 'Cài đặt';
  @override
  String get aidoku_repository_update => 'Cập nhật';
  @override
  String get aidoku_repository_add => 'Thêm kho lưu trữ Aidoku';
  @override
  String get aidoku_repository_added => 'Đã thêm kho lưu trữ Aidoku';
  @override
  String get aidoku_repository_browse => 'Duyệt kho lưu trữ';
  @override
  String get aidoku_repository_hint =>
      'Dán URL trang chủ hoặc index.min.json của kho lưu trữ Aidoku. Kho lưu trữ cộng đồng được điền sẵn mặc định.';
  @override
  String get aidoku_repository_remove => 'Gỡ kho lưu trữ';
  @override
  String get aidoku_repository_empty => 'Chưa thêm kho lưu trữ Aidoku nào.';
  @override
  String get dict_language_tooltip => 'Ngôn ngữ nội dung';
  @override
  String get dict_language_title => 'Ngôn ngữ nội dung từ điển';
  @override
  String get dict_language_description =>
      'Quyết định phông chữ nào hiển thị văn bản của từ điển này. Tự động sử dụng ngôn ngữ mà từ điển khai báo.';
  @override
  String get dict_language_auto => 'Tự động';
  @override
  String get book_language_action => 'Ngôn ngữ nội dung';
  @override
  String get book_language_description =>
      'Quyết định phông chữ nào hiển thị văn bản của cuốn sách này. Tự động sử dụng ngôn ngữ được khai báo trong EPUB.';
  @override
  String get local_audio_reference_unavailable =>
      'Không thể tham chiếu tệp gốc mà không có quyền truy cập tất cả tệp; đã nhập một bản sao thay thế.';
  @override
  String get video_collection_scrape => 'Quét thông tin & bìa';
  @override
  String get update_testflight_open => 'Mở TestFlight';
  @override
  String get update_app_store_open => 'Mở App Store';
  @override
  String get update_release_page_open => 'Trang phát hành';
  @override
  String update_install_gal_hook_holder({
    required Object pid,
    required Object path,
  }) =>
      'Thành phần thu thập Galgame đang được sử dụng: PID ${pid} - ${path} (đây là trò chơi bạn đang chơi, hoặc máy chủ thu thập). Đóng trò chơi, rồi cập nhật lại.';
  @override
  String get game_hook_reason_protocol_mismatch =>
      'Thành phần thu thập không khớp với bản dựng Fushi này. Nó đi kèm bên trong Fushi, nên không cần cài riêng. Trước tiên, đóng hoàn toàn trò chơi và khởi động lại: tiến trình trò chơi có thể vẫn giữ thành phần đã được tiêm từ phiên trước. Nếu vẫn không khớp, các tệp thành phần trên đĩa cũ hơn Fushi, vì lần cập nhật Fushi cuối không thể thay thế chúng khi trò chơi đang chạy. Đóng mọi trò chơi, rồi chạy lại trình cài đặt Fushi.';
  @override
  String get video_mining_still_format => 'Định dạng ảnh chụp thẻ video';
  @override
  String get video_mining_still_format_hint =>
      'Mã hóa được sử dụng khi ảnh thẻ là ảnh chụp tĩnh. JPG nhỏ hơn nhiều; PNG không mất dữ liệu nhưng lớn gấp nhiều lần. Bìa hoạt hình không bị ảnh hưởng — chúng theo cài đặt định dạng hoạt hình.';
  @override
  String get mining_still_format_jpg => 'JPG (nhỏ hơn)';
  @override
  String get mining_still_format_png => 'PNG (không mất dữ liệu)';
  @override
  String get gal_mining_still_format => 'Định dạng ảnh chụp thẻ trò chơi';
  @override
  String get gal_mining_still_format_hint =>
      'Cùng định dạng như thẻ video, lưu riêng. Ảnh chụp cửa sổ trò chơi đến dưới dạng PNG: giữ PNG không mất dữ liệu nhưng lớn gấp nhiều lần, trong khi JPG khớp với cách các ảnh chụp này được nén trước đây.';
  @override
  String get manga_source_cloudflare_blocked =>
      'Nguồn này được bảo vệ bởi Cloudflare và chưa thể truy cập bằng trình đọc tích hợp.';
  @override
  String get manga_global_search_title => 'Tìm kiếm tất cả nguồn';
  @override
  String get manga_global_search_hint => 'Tìm kiếm mọi nguồn đã bật';
  @override
  String get manga_global_search_prompt =>
      'Nhập tựa đề để tìm kiếm tất cả nguồn truyện tranh đã bật cùng lúc.';
  @override
  String get anki_connect_addon_install => 'Cài đặt AnkiConnect';
  @override
  String get anki_connect_addon_install_hint =>
      'Tải AnkiConnect từ AnkiWeb và chuyển cho Anki đang chạy. Anki sẽ yêu cầu bạn xác nhận, sau đó khuyên khởi động lại.';
  @override
  String get anki_connect_addon_handed =>
      'Đã chuyển AnkiConnect cho Anki. Xác nhận lời nhắc trong Anki, rồi khởi động lại Anki theo hướng dẫn.';
  @override
  String get anki_connect_addon_anki_not_running =>
      'Không tìm thấy Anki đang chạy. Khởi động Anki desktop trước, rồi thử lại.';
  @override
  String anki_connect_addon_download_failed({required Object error}) =>
      'Không thể tải AnkiConnect từ AnkiWeb: ${error}';
  @override
  String get anki_connect_addon_invalid =>
      'AnkiWeb trả về thứ không phải là gói tiện ích có thể sử dụng.';
  @override
  String anki_connect_addon_launch_failed({required Object error}) =>
      'Không thể chuyển tiện ích cho Anki: ${error}';
  @override
  String get settings_content_language_title => 'Ngôn ngữ nội dung mặc định';
  @override
  String get settings_content_language_unset => 'Chưa đặt';
  @override
  String get settings_content_language_description =>
      'Ngôn ngữ dự phòng cho nội dung không khai báo ngôn ngữ. Cài đặt theo sách, video, trò chơi và từ điển sẽ ghi đè.';
  @override
  String get manga_ocr_lens_language_label => 'Ngôn ngữ nhận dạng';
  @override
  String get sync_err_peer_unreachable =>
      'Không thể kết nối thiết bị đã ghép nối - có thể ngoại tuyến hoặc không chạy Fushi.';
  @override
  String get remote_book_list_failed =>
      'Không thể lấy thư viện từ xa từ thiết bị đã ghép nối.';
  @override
  String get video_torznab_settings_hint =>
      'Cấu hình một hoặc nhiều điểm cuối Jackett, Prowlarr, hoặc Torznab tương thích. Bí mật không bao giờ được xuất trong bản sao lưu; chúng có thể đồng bộ đến thiết bị đã ghép nối qua Interconnect (có thể tắt trong cài đặt Interconnect).';
  @override
  String get video_opensubtitles_settings_hint =>
      'Thông tin API không bao giờ được xuất trong bản sao lưu; chúng có thể đồng bộ đến thiết bị đã ghép nối qua Interconnect (có thể tắt trong cài đặt Interconnect).';
  @override
  String get sync_interconnect_service_config_toggle =>
      'Đồng bộ cấu hình dịch vụ từ máy chủ';
  @override
  String get sync_interconnect_service_config_toggle_desc =>
      'Nhận cài đặt dịch vụ bên ngoài và khóa API (Jimaku, TMDB, Torznab, OpenSubtitles, theo dõi) từ máy chủ đã ghép nối qua kênh Interconnect được mã hóa. Yêu cầu TLS.';
  @override
  String get video_setting_subtitle_backfill =>
      'Tự động tải phụ đề sau khi quét';
  @override
  String get video_setting_subtitle_backfill_hint =>
      'Khi quét xong, video chưa có phụ đề sẽ nhận một phụ đề từ các nguồn trực tuyến đã cấu hình. Không bao giờ thay thế phụ đề đã có.';
  @override
  String get video_setting_subtitle_sources_section =>
      'Nguồn phụ đề trực tuyến';
  @override
  String get video_subtitle_no_source_configured =>
      'Không tìm thấy phụ đề · thiết lập nguồn phụ đề trực tuyến';
  @override
  String get anime_download_subs_retrying =>
      'Phụ đề: chưa có — sẽ tự động thử lại';
  @override
  String get video_jimaku_language_follow_video => 'Theo ngôn ngữ video';
  @override
  String get video_setting_jimaku_default_language_hint =>
      'Mặc định theo ngôn ngữ của video (bản âm thanh / siêu dữ liệu quét). Chọn một ngôn ngữ để luôn ưu tiên ngôn ngữ đó thay thế.';
  @override
  String get onboarding_title => 'Bắt đầu';
  @override
  String get onboarding_welcome_headline => 'Chào mừng!';
  @override
  String get onboarding_feature_anki => 'Thẻ ghi nhớ Anki';
  @override
  String get onboarding_feature_anki_hint =>
      'Kết nối AnkiConnect hoặc AnkiDroid để tạo thẻ ghi nhớ';
  @override
  String get onboarding_feature_backup => 'Sao lưu & đồng bộ';
  @override
  String get onboarding_feature_backup_hint =>
      'Sao lưu dữ liệu lên Google Drive, WebDAV và các backend khác';
  @override
  String get onboarding_feature_interconnect => 'Kết nối liên thiết bị';
  @override
  String get onboarding_feature_interconnect_hint =>
      'Ghép nối thiết bị trong mạng LAN để chia sẻ thư viện và tiến trình';
  @override
  String get onboarding_step_dictionary_action => 'Mở trình quản lý từ điển';
  @override
  String get onboarding_step_anki_title => 'Thiết lập Anki';
  @override
  String get onboarding_step_anki_action => 'Mở cài đặt tạo thẻ';
  @override
  String get onboarding_step_backup_title => 'Thiết lập sao lưu';
  @override
  String get onboarding_step_backup_body =>
      'Chọn backend sao lưu và đăng nhập, hoặc xuất tệp sao lưu cục bộ.';
  @override
  String get onboarding_step_backup_action => 'Mở cài đặt sao lưu';
  @override
  String get onboarding_step_interconnect_title =>
      'Thiết lập kết nối liên thiết bị';
  @override
  String get onboarding_step_interconnect_body =>
      'Bật kết nối liên thiết bị và ghép nối với các thiết bị khác trong mạng LAN để chia sẻ thư viện, tiến trình và tra cứu.';
  @override
  String get onboarding_step_interconnect_action =>
      'Mở cài đặt kết nối liên thiết bị';
  @override
  String get onboarding_finish_title => 'Hoàn tất';
  @override
  String get onboarding_finish_body =>
      'Bạn có thể xem lại hướng dẫn này bất cứ lúc nào từ Cài đặt → Hệ thống.';
  @override
  String get onboarding_action_next => 'Tiếp theo';
  @override
  String get onboarding_action_finish => 'Hoàn thành';
  @override
  String get onboarding_action_skip => 'Bỏ qua';
  @override
  String get onboarding_reopen => 'Hướng dẫn bắt đầu';
  @override
  String get onboarding_welcome_body =>
      'Đặt ngôn ngữ giao diện và giao diện trước — các bước tiếp theo sẽ hướng dẫn bạn phần còn lại.';
  @override
  String get onboarding_features_title => 'Chọn những gì bạn sử dụng';
  @override
  String get onboarding_features_modules_label =>
      'Tab thư viện (các tab không chọn sẽ bị ẩn khỏi thanh điều hướng; thay đổi bất cứ lúc nào trong Cài đặt)';
  @override
  String get onboarding_features_setup_label => 'Thiết lập tiếp theo';
  @override
  String get onboarding_feature_manga => 'Thư viện truyện tranh';
  @override
  String get onboarding_feature_manga_hint =>
      'Đọc truyện tranh với tra cứu OCR';
  @override
  String get onboarding_feature_video => 'Thư viện video';
  @override
  String get onboarding_feature_video_hint =>
      'Xem video với tra cứu và tạo thẻ từ phụ đề';
  @override
  String get onboarding_feature_games => 'Thư viện Galgame';
  @override
  String get onboarding_feature_games_hint =>
      'Chạy galgame với tra cứu text-hook (chỉ Windows)';
  @override
  String get onboarding_feature_pack => 'Gói khuyến nghị (từ điển + âm thanh)';
  @override
  String get onboarding_feature_pack_hint =>
      'Một lần tải thiết lập từ điển tiếng Nhật cùng âm thanh phát âm JA/EN';
  @override
  String get onboarding_step_pack_title => 'Cài đặt gói khuyến nghị';
  @override
  String get onboarding_step_pack_body =>
      'Gói khuyến nghị bao gồm từ điển từ, trọng âm và tần suất tiếng Nhật cùng cơ sở dữ liệu phát âm Nhật/Anh. Tải xuống và nhập tại đây; việc nhập thay thế dữ liệu cục bộ, nên hãy chạy trên bản cài mới. Đang học ngôn ngữ khác? Dùng trình quản lý từ điển để nhập từ điển riêng.';
  @override
  String get onboarding_step_pack_download_action => 'Tải xuống và nhập';
  @override
  String get onboarding_step_pack_import_existing_action => 'Nhập gói đã tải';
  @override
  String get onboarding_step_pack_pick_action => 'Chọn tệp gói cục bộ';
  @override
  String get onboarding_pack_downloading =>
      'Đang tải xuống… hủy bất cứ lúc nào, tiếp tục lần sau';
  @override
  String onboarding_pack_download_failed({required Object message}) =>
      'Tải xuống thất bại: ${message}';
  @override
  String get onboarding_step_extension_title => 'Tiện ích mở rộng trình duyệt';
  @override
  String get onboarding_step_extension_body =>
      'Cài đặt tiện ích mở rộng đồng hành để tra từ trên bất kỳ trang web nào.';
  @override
  String get onboarding_step_extension_action =>
      'Mở hướng dẫn tiện ích mở rộng';
  @override
  String get onboarding_step_fonts_title => 'Phông chữ đọc sách';
  @override
  String get onboarding_step_fonts_body =>
      'Nhập phông chữ tùy chỉnh và chọn giao diện, văn bản sách và từ điển sử dụng chúng.';
  @override
  String get settings_section_modules => 'Mô-đun tính năng';
  @override
  String get module_toggle_hint =>
      'Hiển thị tab thư viện này trong thanh điều hướng; tắt để ẩn';
  @override
  String get video_setting_youtube_quality => 'Chất lượng YouTube';
  @override
  String get video_setting_youtube_quality_hint =>
      'Bắt đầu stream ở mức cao nhất đến mục tiêu này; Tự động ưu tiên phát mượt (codec thân thiện phần cứng, tối đa 1080p)';
  @override
  String get library_view_discover => 'Khám phá';
  @override
  String get manga_discovery_section_trending => 'Thịnh hành';
  @override
  String get manga_discovery_section_popular => 'Phổ biến';
  @override
  String get manga_discovery_section_top_rated => 'Đánh giá cao nhất';
  @override
  String get manga_discovery_section_latest_finished => 'Hoàn thành gần đây';
  @override
  String get manga_discovery_load_failed => 'Không thể tải nội dung khám phá.';
  @override
  String get manga_discovery_match_section => 'Đọc từ nguồn';
  @override
  String get manga_discovery_match_running =>
      'Đang tìm trong các nguồn đã bật...';
  @override
  String get manga_discovery_match_none =>
      'Không tìm thấy kết quả trong các nguồn đã bật.';
  @override
  String get manga_discovery_status_releasing => 'Đang phát hành';
  @override
  String get manga_discovery_status_finished => 'Hoàn thành';
  @override
  String get manga_discovery_status_hiatus => 'Tạm ngưng';
  @override
  String get manga_discovery_status_cancelled => 'Đã hủy';
  @override
  String get manga_discovery_status_not_yet_released => 'Chưa phát hành';
  @override
  String manga_discovery_source_popular({required Object source}) =>
      'Phổ biến trên ${source}';
  @override
  String get mihon_extension_error => 'Lỗi tiện ích mở rộng';
  @override
  String get discovery_all_sources => 'Tất cả nguồn';
  @override
  String get discovery_search_hint => 'Tìm kiếm tài nguyên trực tuyến';
  @override
  String get discovery_enter_query_hint => 'Nhập từ khóa để tìm kiếm';
  @override
  String get discovery_empty => 'Không có kết quả';
  @override
  String get discovery_partial_failure => 'Một số nguồn không khả dụng';
  @override
  String get discovery_load_more => 'Tải thêm';
  @override
  String get discovery_download_queued => 'Đã thêm vào danh sách tải xuống';
  @override
  String get discovery_torrent_pushed => 'Đã thêm tác vụ torrent';
  @override
  String get discovery_torrent_failed => 'Không thể thêm tác vụ torrent';
  @override
  String get discovery_kind_novel => 'Tiểu thuyết';
  @override
  String get discovery_kind_audiobook => 'Sách nói';
  @override
  String get discovery_source_pick_hint =>
      'Chọn nguồn để duyệt, hoặc nhập từ khóa để tìm kiếm tất cả nguồn';
  @override
  String get discovery_source_query_required =>
      'Nguồn này chỉ hỗ trợ tìm kiếm theo từ khóa';
  @override
  String get manga_discovery_sources_browse => 'Duyệt nguồn';
  @override
  String get discovery_kind_manga => 'Truyện tranh';
  @override
  String get game_capture_workbench_tab => 'Không gian chụp';
  @override
  String get video_builtin_sources_title => 'Nguồn tích hợp';
  @override
  String get video_resource_no_provider_title =>
      'Chưa cấu hình trình lập chỉ mục tài nguyên';
  @override
  String get video_subtitle_no_provider_title =>
      'Chưa cấu hình nhà cung cấp phụ đề';
  @override
  String get video_subtitle_no_provider_hint =>
      'Nhập khóa API Jimaku hoặc bật OpenSubtitles trong Cài đặt, Tải xuống, Nhà cung cấp tài nguyên và phụ đề bên ngoài.';
  @override
  String get anime_download_require_subs => 'Yêu cầu phụ đề';
  @override
  String get video_jimaku_scope_hint =>
      'Phụ đề tiếng Nhật cho anime và phim truyền hình Nhật Bản. Cần khóa API miễn phí.';
  @override
  String get video_builtin_apibay_hint =>
      'Phim và chương trình truyền hình. Chỉ mục công khai, không cần tài khoản.';
  @override
  String get video_builtin_knaben_hint =>
      'Phim và chương trình truyền hình. Tổng hợp nhiều trình lập chỉ mục công khai.';
  @override
  String get video_jimaku_enabled_hint =>
      'Tắt nghĩa là Jimaku sẽ bị bỏ qua ngay cả khi đã lưu khóa API.';
  @override
  String get discovery_sources_settings_title => 'Nguồn khám phá';
  @override
  String get discovery_sources_settings_hint =>
      'Các nguồn tích hợp tham gia tìm kiếm Tất cả nguồn trên trang Khám phá. Chọn một nguồn duy nhất trong menu nguồn luôn hoạt động, ngay cả khi nó bị tắt ở đây.';
  @override
  String get video_builtin_sources_hint =>
      'Đi kèm ứng dụng: không cần tài khoản, không cần khóa API. Tắt một nguồn để loại khỏi tìm kiếm tài nguyên.';
  @override
  String get video_builtin_nyaa_hint =>
      'Chỉ dành cho anime. Phim và chương trình truyền hình được phục vụ bởi hai trình lập chỉ mục công khai bên dưới.';
  @override
  String get video_resource_no_provider_hint =>
      'Tìm kiếm này không có nhà cung cấp để truy vấn. Bật lại nguồn tích hợp hoặc thêm trình lập chỉ mục Torznab trong Cài đặt, Tải xuống, Nhà cung cấp tài nguyên và phụ đề bên ngoài.';
  @override
  String discovery_source_kinds_label({required Object kinds}) =>
      'Bao gồm: ${kinds}';
  @override
  String get video_source_scrape_rescrape_source => 'Quét lại nguồn này';
  @override
  String get video_source_scrape_run_detail_title => 'Kết quả quét';
  @override
  String get video_source_scrape_run_no_issues =>
      'Không có cảnh báo hoặc lỗi nào được ghi nhận.';
  @override
  String get video_source_scrape_manual_search_title =>
      'Chỉ định tác phẩm thủ công';
  @override
  String get video_source_scrape_manual_search_hint =>
      'Tìm kiếm nhà cung cấp siêu dữ liệu theo tiêu đề, sau đó chọn tác phẩm đúng.';
  @override
  String get video_source_scrape_manual_search_action => 'Tìm kiếm';
  @override
  String get video_source_scrape_manual_search_empty => 'Không có kết quả';
  @override
  String get profile_media_manga => 'Truyện tranh';
  @override
  String get profile_media_game => 'Trò chơi';
  @override
  String get profile_media_browser => 'Trình duyệt';
  @override
  String get mihon_store_remove => 'Xóa cửa hàng tiện ích mở rộng';
  @override
  String get video_import_folder_as_source_hint =>
      'Tiếp tục quét thư mục này để tìm video mới';
  @override
  String get manga_import_folder_as_source_hint =>
      'Tiếp tục quét thư mục này để tìm truyện tranh mới';
  @override
  String get download_no_managed_video_source =>
      'Chưa có nguồn video được quản lý. Hãy thêm một thư mục cục bộ để lưu các tệp đã tải xuống, video hoàn tất mới vào được thư viện.';
  @override
  String get download_add_video_source => 'Thêm nguồn video';
  @override
  String get video_subtitle_prev_cue_align =>
      'Căn dòng trước đến thời điểm hiện tại';
  @override
  String get video_subtitle_next_cue_align =>
      'Căn dòng tiếp theo đến thời điểm hiện tại';
  @override
  String video_control_custom_action({required Object index}) =>
      'Phím tắt ${index}';
  @override
  String get video_control_custom_action_none => 'Chưa gán';
  @override
  String get settings_destination_storage => 'Bộ nhớ';
  @override
  String get settings_destination_storage_summary =>
      'Vị trí dữ liệu và dung lượng đĩa';
  @override
  String get storage_overview_section => 'Dung lượng đĩa';
  @override
  String get storage_overview_total => 'Tổng cộng';
  @override
  String get storage_overview_refresh => 'Quét lại';
  @override
  String get storage_overview_scanning => 'Đang quét…';
  @override
  String get storage_category_books => 'Sách & sách nói';
  @override
  String get storage_category_dictionaries => 'Từ điển';
  @override
  String get storage_category_video_downloads => 'Video đã tải xuống';
  @override
  String get storage_category_covers => 'Bìa & hình thu nhỏ';
  @override
  String get storage_category_subtitles => 'Phụ đề';
  @override
  String get storage_category_shaders => 'Shader video';
  @override
  String get storage_category_custom_fonts => 'Phông chữ tùy chỉnh';
  @override
  String get storage_category_web => 'Lưu trữ web & dữ liệu trình duyệt';
  @override
  String get storage_category_exports => 'Xuất';
  @override
  String get storage_category_database => 'Cơ sở dữ liệu & dữ liệu nội bộ';
  @override
  String get storage_category_ocr_models => 'Mô hình OCR truyện tranh';
  @override
  String storage_entry_more_rest({required Object n, required Object size}) =>
      'Còn ${n} mục, tổng ${size}';
  @override
  String storage_entry_delete_confirm_title({required Object name}) =>
      'Xóa ${name}?';
  @override
  String get storage_entry_delete_book_confirm_body =>
      'Thao tác này sẽ xóa sách, tiến trình đọc và bản sao âm thanh ghép đôi khỏi thiết bị này.';
  @override
  String get storage_entry_delete_dictionary_confirm_body =>
      'Thao tác này sẽ xóa từ điển và dữ liệu đã nhập của nó.';
  @override
  String get storage_entry_delete_done => 'Đã xóa';
  @override
  String storage_entry_delete_failed({required Object reason}) =>
      'Xóa thất bại: ${reason}';
  @override
  String get storage_modules_anime4k_title => 'Shader Anime4K';
  @override
  String get storage_modules_anime4k_hint =>
      'Có thể tải lại bất kỳ lúc nào trong cài đặt video';
  @override
  String storage_modules_anime4k_delete_done({required Object n}) =>
      'Đã xóa ${n} tệp shader';
  @override
  String get storage_bundled_section => 'Thành phần đi kèm';
  @override
  String get storage_bundled_hint =>
      'Đi kèm với bộ cài; các tệp đã xóa sẽ quay lại khi cập nhật tiếp theo, chỉ liệt kê để tham khảo.';
  @override
  String get storage_dictionary_delete_incomplete =>
      'Từ điển vẫn còn sau khi xóa, xem nhật ký lỗi';
  @override
  String get module_extension_label => 'Tiện ích mở rộng trình duyệt';
  @override
  String get onboarding_feature_books => 'Thư viện tiểu thuyết';
  @override
  String get onboarding_feature_books_hint =>
      'Đọc tiểu thuyết EPUB với tra từ điển và đồng bộ sách nói';
  @override
  String get onboarding_feature_extension_hint =>
      'Tra từ trên bất kỳ trang web nào (chỉ trên máy tính)';
  @override
  String get video_setting_tap_toggles_playback =>
      'Chạm video để phát/tạm dừng';
  @override
  String get video_setting_tap_toggles_playback_hint =>
      'Tắt để chạm video chỉ hiển thị điều khiển';
  @override
  String get manga_ocr_engine_auto_desc =>
      'Ưu tiên công cụ ngoại tuyến bạn đã thiết lập; không bao giờ tự động tải lên Lens.';
  @override
  String get manga_ocr_engine_local_onnx_desc =>
      'Hoàn toàn ngoại tuyến, chất lượng tốt nhất. Cần tải mô hình một lần và chạy chậm trên phần cứng cũ.';
  @override
  String get manga_ocr_engine_google_lens_desc =>
      'Cần internet và tải ảnh trang lên Google. Nhanh, không cần tải xuống, nhưng chất lượng kém hơn mô hình cục bộ.';
  @override
  String get manga_ocr_engine_external_desc =>
      'Gọi lệnh Mokuro bạn tự cài đặt. Chỉ trên máy tính.';
  @override
  String get manga_ocr_engine_paired_host_desc =>
      'Chuyển công việc cho thiết bị ghép đôi trên mạng. Không cần tải xuống gì ở đây.';
  @override
  String manga_ocr_model_disk_usage({required Object size}) =>
      'Đang sử dụng ${size} trên đĩa';
  @override
  String manga_ocr_model_download_size({required Object size}) => 'Cần ${size}';
  @override
  String manga_ocr_delete_done_freed({required Object size}) =>
      'Đã xóa mô hình, giải phóng ${size}';
  @override
  String get manga_ocr_model_unused_by_engine =>
      'Công cụ hiện tại không sử dụng các tệp mô hình cục bộ này.';
  @override
  String manga_ocr_download_total_progress({
    required Object done,
    required Object total,
  }) => '${done} / ${total}';
  @override
  String get media_source_network_subtitle_video =>
      'Thư viện từ xa WebDAV (phát trực tiếp tại chỗ)';
  @override
  String get jellyfin_settings_title => 'Máy chủ phương tiện (Jellyfin / Emby)';
  @override
  String get jellyfin_server_url => 'URL máy chủ';
  @override
  String get jellyfin_sign_in => 'Đăng nhập';
  @override
  String get jellyfin_sign_out => 'Đăng xuất';
  @override
  String get jellyfin_sign_in_failed => 'Đăng nhập thất bại';
  @override
  String get jellyfin_settings_hint =>
      'Video trên máy chủ sẽ hiển thị trong thư viện video và phát trực tiếp.';
  @override
  String get video_setting_mpv_lua_scripts => 'Tải tập lệnh Lua';
  @override
  String get video_setting_mpv_lua_scripts_hint =>
      'Tải tất cả tệp .lua trong thư mục mpv_scripts vào trình phát. Tắt sẽ có hiệu lực lần tiếp theo mở video.';
  @override
  String get video_setting_mpv_lua_scripts_import => 'Nhập tập lệnh Lua';
  @override
  String get video_setting_mpv_lua_scripts_imported => 'Đã nhập tập lệnh';
  @override
  String get video_setting_mpv_lua_scripts_dir_copy =>
      'Sao chép đường dẫn thư mục tập lệnh';
  @override
  String get video_setting_mpv_lua_scripts_dir_copied =>
      'Đã sao chép đường dẫn thư mục';
  @override
  String get interconnect_share_statistics => 'Chia sẻ thống kê';
  @override
  String get interconnect_share_statistics_hint =>
      'Thời gian đọc và xem, số ký tự, bộ đếm tra cứu và tạo thẻ';
  @override
  String get interconnect_share_favorites => 'Chia sẻ mục yêu thích';
  @override
  String get interconnect_share_favorites_hint =>
      'Từ và câu yêu thích, bao gồm bỏ yêu thích';
  @override
  String get interconnect_share_section => 'Chia sẻ với thiết bị ghép đôi';
  @override
  String get interconnect_share_section_footer =>
      'Các mục này được hợp nhất hai chiều với thiết bị ghép đôi và được bật theo mặc định. Tắt một mục sẽ dừng cả gửi và nhận.';
  @override
  String get game_hook_mining_no_session_lines =>
      'Chưa có dòng nào được chụp, nên không có gì để gắn thẻ này vào. Chọn luồng văn bản khác trong không gian làm việc.';
  @override
  String get shortcut_action_manga_pan_up => 'Kéo lên';
  @override
  String get shortcut_action_manga_pan_down => 'Kéo xuống';
  @override
  String get shortcut_action_manga_pan_left => 'Kéo sang trái';
  @override
  String get shortcut_action_manga_pan_right => 'Kéo sang phải';
  @override
  String get drag_drop_folder_source_added =>
      'Đã thêm thư mục làm nguồn thư viện và đã quét.';
  @override
  String get drag_drop_folder_source_exists =>
      'Thư mục đó đã là nguồn thư viện.';
  @override
  String get sync_pair_invalid_url => 'Định dạng địa chỉ không hợp lệ';
  @override
  String get sync_pair_peer_requires_https =>
      'Thiết bị này chỉ chấp nhận HTTPS. Sử dụng địa chỉ https://.';
  @override
  String get sync_pair_peer_not_https =>
      'Đối tác không sử dụng HTTPS trên cổng này. Sử dụng địa chỉ http://.';
  @override
  String get sync_pair_not_fushi_discovered =>
      'Không tìm thấy thiết bị Fushi tại địa chỉ này.';
  @override
  String get shortcut_action_popup_play_audio => 'Phát âm thanh từ';
  @override
  String get sync_progress_asset_transfer => 'Đang chuẩn bị chuyển';
  @override
  String get sync_asset_dictionary_upload => 'Tải lên từ điển';
  @override
  String get sync_asset_dictionary_download => 'Tải xuống từ điển';
  @override
  String get sync_asset_local_audio_upload =>
      'Tải lên cơ sở dữ liệu âm thanh cục bộ';
  @override
  String get sync_asset_local_audio_download =>
      'Tải xuống cơ sở dữ liệu âm thanh cục bộ';
  @override
  String get sync_asset_upload_hint =>
      'Gửi những gì thiết bị này có mà thiết bị từ xa không có. Các gói có thể lớn.';
  @override
  String get sync_asset_upload_action => 'Tải lên';
  @override
  String get sync_asset_download_action => 'Tải xuống';
  @override
  String get sync_asset_download_hint =>
      'Lấy những gì thiết bị từ xa có mà thiết bị này không có - bao gồm các mục bạn đã xóa cục bộ.';
  @override
  String get sync_asset_legacy_notice_title =>
      'Đồng bộ từ điển và âm thanh giờ là thủ công';
  @override
  String get sync_asset_legacy_notice_body =>
      'Thiết bị này trước đây bật đồng bộ tự động cho từ điển và cơ sở dữ liệu âm thanh cục bộ. Tùy chọn đó đã bị loại bỏ - sử dụng các thao tác Tải lên / Tải xuống bên dưới khi bạn muốn chuyển. Không có gì bị xóa, nhưng từ điển mới không còn được sao lưu tự động.';
  @override
  String get sync_asset_legacy_notice_dismiss => 'Đã hiểu';
  @override
  String get download_task_add => 'Thêm tác vụ';
  @override
  String get download_task_add_pick_torrent => 'Chọn tệp torrent';
  @override
  String get download_task_add_title_label => 'Tiêu đề';
  @override
  String get download_task_add_content_kind => 'Loại nội dung';
  @override
  String get download_task_add_invalid =>
      'Liên kết magnet hoặc tệp torrent không nhận dạng được';
  @override
  String get download_task_add_submitted => 'Đã thêm tác vụ';
  @override
  String get download_task_search_hint => 'Tìm kiếm tác vụ';
  @override
  String get download_task_sort_created => 'Ngày thêm';
  @override
  String get download_task_sort_progress => 'Tiến trình';
  @override
  String get download_task_sort_status => 'Trạng thái';
  @override
  String get download_task_no_match => 'Không có tác vụ phù hợp';
  @override
  String subtitle_version_episode_count({required Object n}) => '${n} tập';
  @override
  String subtitle_version_unnumbered_count({required Object n}) =>
      '${n} không đánh số';
  @override
  String get subtitle_version_ai_translated => 'Dịch bằng AI';
  @override
  String get subtitle_version_content_language => 'Nội dung';
  @override
  String get subtitle_version_show_files => 'Hiển thị tệp';
  @override
  String get subtitle_version_view_files => 'Danh sách tệp';
  @override
  String get resource_version_batch => 'Trọn bộ';
  @override
  String get resource_version_view_flat => 'Tất cả bản phát hành';
  @override
  String get subscription_mode_one_shot => 'Một lần';
  @override
  String get subscription_mode_ongoing => 'Liên tục';
  @override
  String get subscription_legacy_badge => 'Cũ';
  @override
  String get subscription_legacy_hint =>
      'Nhập từ hệ thống cũ; kiểm tra tự động không áp dụng.';
  @override
  String subscription_next_check({required Object time}) =>
      'Lần kiểm tra tiếp: ${time}';
  @override
  String subscription_last_matched({required Object time}) =>
      'Kết quả cuối: ${time}';
  @override
  String get subscription_item_status_discovered => 'Chờ xử lý';
  @override
  String get subscription_item_status_queued => 'Đang chờ';
  @override
  String get subscription_item_status_processed => 'Đã nhập';
  @override
  String get subscription_item_status_skipped => 'Đã bỏ qua';
  @override
  String get subscription_item_status_failed => 'Thất bại';
  @override
  String get subscription_items_empty =>
      'Chưa có bản phát hành nào được theo dõi';
  @override
  String get subscription_edit_title => 'Chỉnh sửa đăng ký';
  @override
  String get subscription_edit_rule_hint =>
      'Không thể thay đổi quy tắc danh tính và phiên bản ở đây. Đăng ký lại để chuyển phiên bản - lịch sử được giữ lại.';
  @override
  String get subscription_search_hint => 'Tìm kiếm đăng ký';
  @override
  String get subscription_sort_last_checked => 'Lần kiểm tra cuối';
  @override
  String get subscription_sort_last_matched => 'Kết quả cuối';
  @override
  String get subscription_show_items => 'Lịch sử tập';
  @override
  String get subscription_sort_created => 'Ngày thêm';
  @override
  String get subscription_no_match => 'Không có đăng ký phù hợp';
  @override
  String get download_subscription_start_episode_invalid =>
      'Nhập số nguyên (từ 0 trở lên), hoặc để trống';
  @override
  String get download_subscription_source_unavailable =>
      'Mục tiêu hiện tại (không khả dụng)';
  @override
  String resource_version_episode_count({required Object n}) => '${n} tập';
  @override
  String get resource_version_show_files => 'Hiển thị tệp';
  @override
  String get manga_online_detail_load_failed =>
      'Không thể tải truyện tranh này.';
  @override
  String get manga_online_error_view_detail => 'Xem chi tiết';
  @override
  String get discovery_sources_unavailable => 'Tất cả nguồn đều không khả dụng';
  @override
  String get font_target_game_lookup => 'Phông chữ cửa sổ tra cứu trò chơi';
  @override
  String get gal_hook_text_font => 'Phông chữ cửa sổ tra cứu trò chơi';
  @override
  String get gal_hook_text_font_hint =>
      'Chọn phông chữ từ thư viện phông chữ được quản lý. Phông chữ được bật đầu tiên sẽ được sử dụng.';
  @override
  String get gal_hook_text_letter_spacing => 'Khoảng cách chữ';
  @override
  String get gal_hook_text_letter_spacing_hint =>
      'Điều chỉnh khoảng cách giữa các ký tự mà không ảnh hưởng đến vùng tra cứu.';
  @override
  String get gal_hook_text_line_height => 'Chiều cao dòng';
  @override
  String get gal_hook_text_line_height_hint =>
      'Điều chỉnh khoảng cách dọc của các dòng xuống hàng.';
  @override
  String get gal_hook_text_bold => 'Chữ đậm';
  @override
  String get gal_hook_text_bold_hint =>
      'Sử dụng chữ hơi đậm để dễ đọc hơn trên nền đồ họa trò chơi.';
  @override
  String get gal_hook_text_alignment => 'Căn chỉnh văn bản';
  @override
  String get gal_hook_text_alignment_center => 'Giữa';
  @override
  String get gal_hook_text_alignment_left => 'Trái';
  @override
  String get gal_hook_text_color => 'Màu chữ';
  @override
  String get gal_hook_overlay_legibility_section => 'Cửa sổ và khả năng đọc';
  @override
  String get gal_hook_text_background_color => 'Màu nền cửa sổ';
  @override
  String get gal_hook_text_background_opacity => 'Độ mờ nền cửa sổ';
  @override
  String get gal_hook_text_background_opacity_hint =>
      'Đặt thành 0% để có cửa sổ trong suốt kiểu lời bài hát.';
  @override
  String get gal_hook_text_outline_color => 'Màu viền';
  @override
  String get gal_hook_text_outline_width => 'Độ rộng viền';
  @override
  String get gal_hook_text_outline_width_hint =>
      'Đặt thành 0 để tắt viền; bóng mờ vẫn giữ nguyên.';
  @override
  String get gal_hook_text_padding => 'Lề ngang văn bản';
  @override
  String get gal_hook_text_padding_hint =>
      'Giữ văn bản cách xa mép cửa sổ và tay nắm thay đổi kích thước.';
  @override
  String get gal_hook_text_corner_radius => 'Bán kính góc cửa sổ';
  @override
  String get gal_hook_text_corner_radius_hint =>
      'Điều chỉnh bán kính góc của nền.';
  @override
  String get storage_shaders_delete_anime4k => 'Xóa shader Anime4K';
  @override
  String get video_jimaku_series_lookup_degraded =>
      'Không thể xác nhận bộ phim trên AniList lần này, nên kết quả này đến từ tìm kiếm theo tiêu đề và có thể lẫn các mùa khác của cùng bộ phim.';
  @override
  String get dict_style_tab_visual => 'Trực quan';
  @override
  String get dict_style_tab_code => 'CSS';
  @override
  String get dict_style_scope_all => 'Tất cả từ điển';
  @override
  String get dict_style_part_entry_card => 'Thẻ mục';
  @override
  String get dict_style_part_expression => 'Từ đầu';
  @override
  String get dict_style_part_ruby => 'Furigana';
  @override
  String get dict_style_part_deinflection_tag => 'Chuỗi biến đổi từ';
  @override
  String get dict_style_part_frequency => 'Tần suất';
  @override
  String get dict_style_part_pitch => 'Trọng âm';
  @override
  String get dict_style_part_dictionary_label => 'Tên từ điển';
  @override
  String get dict_style_part_glossary_content => 'Định nghĩa';
  @override
  String get dict_style_part_glossary_tag => 'Nhãn định nghĩa';
  @override
  String get dict_style_prop_text_color => 'Màu chữ';
  @override
  String get dict_style_prop_background => 'Đánh dấu';
  @override
  String get dict_style_prop_bold => 'Đậm';
  @override
  String get dict_style_prop_italic => 'Nghiêng';
  @override
  String get dict_style_prop_underline => 'Gạch chân';
  @override
  String get dict_style_prop_font_scale => 'Cỡ chữ';
  @override
  String get dict_style_prop_corner_radius => 'Bán kính góc';
  @override
  String get dict_style_part_reset => 'Đặt lại phần';
  @override
  String get dict_style_reset_all => 'Đặt lại tất cả';
  @override
  String get dict_style_global_only => 'Chỉ điều chỉnh được cho tất cả từ điển';
  @override
  String get dict_style_preview_title => 'Xem trước';
  @override
  String get dict_style_pick_hint =>
      'Chạm vào một phần trong bản xem trước để chuyển đến';
  @override
  String get dict_style_prop_default => 'Mặc định';
  @override
  String get dict_style_part_expression_tag => 'Nhãn biểu thức';
  @override
  String get dict_style_prop_on => 'Bật';
  @override
  String get dict_style_prop_off => 'Tắt';
  @override
  String get dict_style_title => 'Kiểu dáng từ điển';
  @override
  String get video_source_scrape_anidb_client => 'Tên client AniDB';
  @override
  String get video_source_scrape_anidb_client_hint =>
      'Tên client HTTP API AniDB đã đăng ký; để trống để chỉ sử dụng danh mục tiêu đề đã lưu';
  @override
  String get video_source_scrape_anidb_client_version =>
      'Phiên bản client AniDB';
  @override
  String get video_source_scrape_anidb_client_version_hint =>
      'Phiên bản dương đã đăng ký với AniDB; HTTP API bị vô hiệu hóa cho đến khi cả hai trường hợp lệ';
  @override
  String get video_scrape_view_source => 'Xem chi tiết nguồn';
  @override
  String get video_setting_auto_scrape_hint =>
      'Tự động nhận dạng và lấy siêu dữ liệu video sau khi quét thư viện';
  @override
  String get video_resource_identity_provider => 'Nguồn nhận dạng tài nguyên';
  @override
  String get video_source_scrape_clear_all => 'Xóa tất cả bản ghi quét';
  @override
  String get video_source_scrape_clear_all_hint =>
      'Xóa tất cả siêu dữ liệu quét video và bìa cùng tệp NFO do Fushi tạo.';
  @override
  String get video_source_scrape_clear_all_confirm_title =>
      'Xóa tất cả bản ghi quét video?';
  @override
  String get video_source_scrape_clear_all_confirm_body =>
      'Thao tác này xóa tất cả siêu dữ liệu đã quét và liên kết nguồn, xóa kết quả Bộ phim, và xóa bìa cùng tệp NFO chưa sửa đổi do Fushi tạo. Tệp video, mục thư viện, nhóm, tiến trình xem, phụ đề, nhãn, bìa đã chọn thủ công và tệp sidecar do người dùng sửa đổi được giữ lại. Không thể hoàn tác.';
  @override
  String get video_source_scrape_clear_all_confirm_action => 'Xóa';
  @override
  String get video_source_scrape_clear_all_completed =>
      'Đã xóa tất cả bản ghi quét video.';
  @override
  String get video_source_scrape_clear_all_completed_protected =>
      'Đã xóa bản ghi quét. Các tệp sidecar đã sửa đổi hoặc không thể xác minh được giữ lại.';
  @override
  String get video_source_scrape_clear_all_busy =>
      'Quá trình quét video hoặc trích xuất vẫn đang chạy. Thử lại sau khi hoàn tất.';
  @override
  String get video_source_scrape_clear_all_failed =>
      'Không thể xóa tất cả bản ghi quét. Không có tệp người dùng chưa xác minh nào bị xóa.';
  @override
  String get video_source_scrape_clear_all_in_progress =>
      'Quá trình dọn dẹp bản ghi quét đang diễn ra.';
  @override
  String get game_session_japanese_locale => 'Ngôn ngữ tiếng Nhật';
  @override
  String get game_session_japanese_locale_hint =>
      'Trò chơi được khởi động dưới ngôn ngữ tiếng Nhật (CP932). Nếu văn bản bị lỗi hoặc xuất hiện lỗi kịch bản, hãy đặt ngôn ngữ tiếng Nhật của trò chơi này thành Không bao giờ.';
  @override
  String get onboarding_anki_intro_body =>
      'Anki là ứng dụng thẻ ghi nhớ lặp lại cách quãng miễn phí: từ mới trở thành thẻ, và việc ôn tập được lên lịch theo đường cong quên. Sau khi tra cứu, Fushi có thể biến từ đó thành thẻ Anki chỉ với một chạm, kèm nghĩa, câu ví dụ, âm thanh và ảnh chụp màn hình.';
  @override
  String get onboarding_anki_setup_desktop_hint =>
      'Cài đặt ứng dụng Anki trên máy tính, sau đó thêm tiện ích AnkiConnect: trong Anki, mở Tools - Add-ons - Get Add-ons và nhập mã 2055492159. Giữ Anki chạy khi tạo thẻ.';
  @override
  String get onboarding_anki_setup_ios_hint =>
      'Với AnkiMobile đã cài đặt, việc thêm thẻ hoạt động ngay. Để có đầy đủ tính năng, kết nối với Anki đang chạy trên máy tính cùng mạng qua AnkiConnect.';
  @override
  String get onboarding_anki_backend_label => 'Kết nối';
  @override
  String get onboarding_anki_test_action => 'Kiểm tra kết nối';
  @override
  String onboarding_anki_test_success({required Object count}) =>
      'Đã kết nối: tìm thấy ${count} bộ thẻ';
  @override
  String get onboarding_anki_get_anki_action => 'Tải Anki (máy tính)';
  @override
  String get onboarding_anki_get_ankidroid_action => 'Tải AnkiDroid';
  @override
  String get onboarding_anki_mobile_ankiconnect_title =>
      'Nâng cao: sử dụng AnkiConnect trên thiết bị này';
  @override
  String get onboarding_anki_mobile_ankiconnect_hint =>
      'Thiết bị này cũng có thể tạo thẻ vào Anki đang chạy trên máy tính cùng mạng: bật AnkiConnect trong cài đặt tạo thẻ và nhập địa chỉ máy tính.';
  @override
  String get onboarding_anki_setup_android_hint =>
      'Cài đặt AnkiDroid và mở một lần để hoàn tất thiết lập ban đầu. Quay lại Fushi, chạm Cho phép trên hộp thoại quyền xuất hiện khi tạo thẻ đầu tiên - không cần thay đổi cài đặt AnkiDroid.';
  @override
  String get onboarding_anki_install_addon_action =>
      'Cài đặt tiện ích AnkiConnect';
  @override
  String get onboarding_anki_addon_installed =>
      'AnkiConnect đã được cài đặt. Khởi động (hoặc khởi động lại) Anki, sau đó chạm Kiểm tra kết nối.';
  @override
  String get onboarding_anki_addon_no_anki =>
      'Không tìm thấy thư mục dữ liệu Anki. Cài đặt Anki và mở một lần, sau đó thử lại.';
  @override
  String onboarding_anki_addon_failed({required Object message}) =>
      'Cài đặt thất bại: ${message}';
  @override
  String get game_hook_reason_capability_probe_failed =>
      'Thành phần chụp không phản hồi kiểm tra khả năng. Nó được tìm thấy trên đĩa nhưng không thể chạy hoặc không phản hồi kịp thời - phần mềm diệt virus có thể đang chặn, Fushi có thể thiếu quyền để khởi chạy, hoặc tiến trình trợ giúp cũ có thể bị treo. Đóng tất cả trò chơi, kiểm tra vùng cách ly của phần mềm diệt virus, sau đó thử lại.';
  @override
  String get download_backend_setup_title => 'Thiết lập backend tải xuống';
  @override
  String get download_backend_setup_intro =>
      'Chọn công cụ sẽ thực hiện việc tải xuống. Bạn có thể đổi bất cứ lúc nào trong cài đặt tải xuống.';
  @override
  String get download_backend_embedded_hint =>
      'Khuyên dùng. Việc tải xuống chạy ngay trong Fushi — không cần cài thêm gì.';
  @override
  String get download_backend_qb_hint =>
      'Kết nối Fushi tới một qBittorrent WebUI mà bạn đang chạy.';
  @override
  String get download_backend_setup_start => 'Thiết lập ngay';
  @override
  String get download_backend_embedded_unavailable =>
      'Bản cài đặt này thiếu thư viện chạy của công cụ tích hợp. Hãy cài lại gói đầy đủ, hoặc dùng qBittorrent bên ngoài.';
  @override
  String get download_backend_qb_url_invalid =>
      'Nhập địa chỉ đầy đủ, ví dụ http://127.0.0.1:8080';
  @override
  String get mihon_store_zero_extensions =>
      'Kho này trả về 0 tiện ích mở rộng. Địa chỉ của nó có thể đang trỏ tới chỉ mục cũ.';
  @override
  String get mihon_store_edit => 'Sửa địa chỉ kho';
  @override
  String get manga_ocr_download_resume => 'Tiếp tục tải';
  @override
  String get manga_ocr_import => 'Nhập mô hình cục bộ';
  @override
  String get manga_ocr_import_title => 'Nhập mô hình đã tải về';
  @override
  String get manga_ocr_import_intro =>
      'Nếu tải trong ứng dụng không được, hãy tự tải các tệp này rồi nhập vào đây. Một tệp zip chứa chúng cũng được.';
  @override
  String get manga_ocr_import_copy_urls => 'Sao chép liên kết tải';
  @override
  String get manga_ocr_import_urls_copied => 'Đã sao chép liên kết tải';
  @override
  String get manga_ocr_import_pick_folder => 'Chọn thư mục';
  @override
  String get manga_ocr_import_pick_files => 'Chọn tệp';
  @override
  String get manga_ocr_import_running => 'Đang nhập…';
  @override
  String manga_ocr_import_done({required Object count}) =>
      'Đã nhập ${count} tệp';
  @override
  String get manga_ocr_import_matched_nothing =>
      'Không nhận ra tệp mô hình nào dùng được';
  @override
  String manga_ocr_import_size_mismatch({
    required Object file,
    required Object expected,
    required Object actual,
  }) => '${file} sai kích thước: cần ${expected}, nhận ${actual}';
  @override
  String manga_ocr_import_still_missing({required Object count}) =>
      'Vẫn thiếu ${count} tệp';
  @override
  String get manga_ocr_import_failed => 'Nhập mô hình thất bại';
  @override
  String get manga_tap_ocr_notice_title => 'Chạm để nhận dạng';
  @override
  String get manga_tap_ocr_notice_body =>
      'Trang này chưa có dữ liệu văn bản. Fushi sẽ nhận dạng bằng công cụ OCR bạn chọn trong cài đặt, sau đó bạn có thể chạm vào từ để tra cứu. Bạn có thể đổi công cụ hoặc tắt tính năng này trong Cài đặt › OCR truyện tranh.';
  @override
  String get manga_tap_ocr_notice_confirm => 'Nhận dạng ngay';
  @override
  String get manga_tap_ocr_running => 'Đang nhận dạng trang này…';
  @override
  String get manga_tap_to_ocr => 'Chạm để nhận dạng';
  @override
  String get manga_tap_to_ocr_desc =>
      'Chạm vào bong bóng thoại chưa nhận dạng để nhận dạng cả trang và tra từ ngay.';
  @override
  String get manga_ocr_engine_system => 'OCR của thiết bị';
  @override
  String get manga_ocr_engine_system_desc =>
      'Dùng khả năng nhận dạng văn bản có sẵn trên thiết bị. Không cần tải về, hoàn toàn ngoại tuyến, không gửi gì đi — nhưng kém hơn hẳn mô hình cục bộ với bong bóng thoại dọc và chữ viết tay.';
  @override
  String get manga_ocr_engine_system_unavailable =>
      'Thiết bị này không có sẵn khả năng nhận dạng văn bản';
  @override
  String get manga_tap_ocr_online_lens_only =>
      'Chương trực tuyến không lưu trên máy, nên chỉ Google Lens đọc được — ảnh trang sẽ được tải lên Google.';
  @override
  String get settings_destination_services => 'Dịch vụ trực tuyến';
  @override
  String get settings_destination_services_summary =>
      'API bên thứ ba, trình lập chỉ mục và máy chủ media';
  @override
  String get section_services_subtitles => 'Nguồn phụ đề';
  @override
  String get section_services_resources => 'Trình lập chỉ mục tài nguyên';
  @override
  String get section_services_metadata => 'Thu thập siêu dữ liệu';
  @override
  String get settings_services_link_subtitle =>
      'Jimaku, OpenSubtitles, Torznab, Jellyfin, AniDB và TMDB được cấu hình chung tại đây';
  @override
  String get game_hook_btn_replay => 'Phát lại giọng của câu này';
  @override
  String get game_hook_btn_recapture => 'Thu lại giọng nói';
  @override
  String get game_hook_btn_follow => 'Bám theo câu thoại mới';
  @override
  String get game_hook_btn_passthrough => 'Cho chuột xuyên xuống game';
  @override
  String get game_hook_btn_transparency => 'Đổi nền';
  @override
  String get game_hook_btn_lock => 'Khoá vị trí';
  @override
  String get game_hook_btn_workbench => 'Mở bàn làm việc thu thập';
  @override
  String get game_hook_btn_topmost => 'Luôn nổi trên cùng';
  @override
  String get game_hook_btn_close => 'Đóng cửa sổ nổi';
  @override
  String get video_jimaku_search_failed => 'Tìm phụ đề thất bại';
  @override
  String video_subtitle_error_with_code({
    required Object msg,
    required Object code,
  }) => '${msg} (HTTP ${code})';
  @override
  String get manga_rescan_run => 'Nhận dạng lại vùng đã chọn';
  @override
  String get manga_rescan_failed => 'Nhận dạng lại vùng đã chọn thất bại';
  @override
  String get manga_rescan_region_updated =>
      'Đã nhận dạng lại vùng đã chọn và lưu vào trang';
  @override
  String get manga_ocr_mobile_note =>
      'Trên di động, các mô hình này chạy engine cục bộ cho việc nhận dạng cả tập, chạm và vùng đã chọn trong trình đọc truyện tranh.';
  @override
  String get manga_rescan_hint =>
      'Kéo một khung quanh phần chữ cần nhận dạng lại. Kết quả sẽ thay thế lớp văn bản đang có bên trong khung đó.';
  @override
  String get manga_rescan_undone =>
      'Đã khôi phục lớp văn bản trước khi quét lại';
  @override
  String get manga_rescan_undo_failed =>
      'Không khôi phục được lớp văn bản trước đó';
  @override
  String get module_tool_toggle_hint =>
      'Hiện tab này trên thanh điều hướng; tắt để ẩn';
  @override
  String get module_downloads_hidden_hint =>
      'Tab Tải xuống đang bị ẩn trong Cài đặt → Giao diện → Mô-đun tính năng; bật lại để quản lý đăng ký.';
  @override
  String get book_file_location_open => 'Mở vị trí tệp';
  @override
  String get book_file_location_failed =>
      'Không mở được vị trí tệp của sách này.';
  @override
  String storage_entry_database_snapshots_label({required Object n}) =>
      'Ảnh chụp sao lưu cơ sở dữ liệu (${n} tệp)';
  @override
  String get storage_entry_delete_database_snapshots_confirm_body =>
      'Thao tác này xoá toàn bộ ảnh chụp sao lưu cơ sở dữ liệu còn sót lại (corrupt-bak / pre-restore / bản sao di trú cũ). Cơ sở dữ liệu đang dùng và các tệp -wal/-shm đi kèm không bị đụng tới.';
  @override
  String get manga_global_search_no_sources =>
      'Chưa có nguồn truyện tranh nào được bật. Thêm một nguồn ở tab Nhập.';
  @override
  String get manga_global_search_open_sources => 'Tới phần nhập';
  @override
  String get settings_downloads_open_page_hint =>
      'Mở trang Tải xuống (tác vụ, tài nguyên, đăng ký)';
  @override
  String get download_video_source_required => 'Cần nguồn video';
  @override
  String get game_hook_reason_stale_session =>
      'Phiên thu trước chưa được giải phóng; Fushi đang tự thử lại, bạn không cần làm gì.';
  @override
  String get video_subtitle_delete => 'Xoá tệp phụ đề';
  @override
  String video_subtitle_delete_confirm({required Object path}) =>
      'Xoá tệp phụ đề này khỏi ổ đĩa? Không thể hoàn tác.\n${path}';
  @override
  String video_subtitle_deleted({required Object label}) =>
      'Đã xoá tệp phụ đề: ${label}';
  @override
  String video_subtitle_delete_failed({required Object label}) =>
      'Xoá tệp phụ đề thất bại: ${label}';
  @override
  String get shortcut_action_manga_toggle_chrome =>
      'Bật/tắt giao diện truyện tranh';
  @override
  String get manga_interface_hide => 'Ẩn giao diện';
  @override
  String get manga_interface_show => 'Hiện giao diện';
  @override
  String get gal_hook_text_vertical_alignment => 'Căn dọc';
  @override
  String get gal_hook_text_vertical_alignment_center => 'Giữa';
  @override
  String get gal_hook_text_vertical_alignment_top => 'Trên';
  @override
  String get storage_entry_external_audio_hint =>
      'Âm thanh tham chiếu tệp gốc, không chiếm dung lượng của ứng dụng';
  @override
  String get jellyfin_auto_list_title => 'Tự động liệt kê mục khi vào Video';
  @override
  String get jellyfin_auto_list_hint =>
      'Tắt: vào trang video sẽ không gửi yêu cầu nào tới máy chủ phương tiện; kéo để làm mới trong thư viện video để liệt kê thủ công. Nên tắt với máy chủ rất lớn, vì việc liệt kê tự động trông giống thu thập dữ liệu và có thể kích hoạt cơ chế phát hiện lạm dụng.';
  @override
  String get jellyfin_libraries_title => 'Thư viện cần liệt kê';
  @override
  String get jellyfin_libraries_hint =>
      'Không chọn gì sẽ liệt kê mọi thư viện video. Thu hẹp về những thư viện bạn thực sự xem giúp máy chủ khổng lồ không bị liệt kê toàn bộ.';
  @override
  String get jellyfin_libraries_load_failed =>
      'Không tải được danh sách thư viện';
  @override
  String get video_filter_series => 'Sê-ri';
  @override
  String get video_filter_series_in => 'Thuộc sê-ri';
  @override
  String get video_filter_series_standalone => 'Không thuộc sê-ri';
  @override
  String get manga_source_cloudflare_verify_title => 'Xác minh trang web';
  @override
  String get manga_source_cloudflare_verify_hint =>
      'Hoàn tất kiểm tra Cloudflare bên dưới. Quá trình tải sẽ tự động tiếp tục sau khi vượt qua.';
  @override
  String get db_cannot_open_title => 'Vị trí dữ liệu không khả dụng';
  @override
  String get db_cannot_open_message =>
      'Fushi không thể mở hoặc tạo cơ sở dữ liệu tại vị trí dữ liệu đã cấu hình. Không có gì bị hỏng — thư mục có thể bị thiếu, chỉ đọc, hoặc nằm trên ổ đĩa đã ngắt kết nối. Hãy kiểm tra vị trí dữ liệu trong Cài đặt, hoặc khởi động lại để dùng vị trí mặc định.';
  @override
  String get anki_error_field_mapping_mismatch =>
      'Không có ánh xạ trường nào của bạn khớp với loại ghi chú đã chọn, nên Anki đã từ chối thẻ này. Hãy mở Cài đặt Anki để ánh xạ lại các trường, hoặc dùng \'Tạo bộ thẻ Lapis\'.';
  @override
  String get anki_error_first_field_empty =>
      'Trường đầu tiên của loại ghi chú đã chọn đang trống, và Anki không nhận ghi chú như vậy. Hãy ánh xạ một trường vào đó trong Cài đặt Anki.';
  @override
  String get storage_category_cache => 'Bộ nhớ đệm và tệp tạm';
  @override
  String get storage_category_other => 'Khác, chưa phân loại';
  @override
  String get collection_export_pick_source => 'Chọn nguồn';
  @override
  String get collection_export_all_sources => 'Tất cả nguồn';
  @override
  String get video_subtitle_list_search => 'Tìm trong phụ đề';
  @override
  String get video_subtitle_list_search_hint => 'Nhập để lọc các dòng';
  @override
  String get video_subtitle_list_search_empty => 'Không có dòng nào khớp';
  @override
  String get video_subtitle_list_export_favorites => 'Xuất các dòng yêu thích';
  @override
  String get shortcut_action_video_search_subtitle_list =>
      'Tìm trong danh sách phụ đề';
  @override
  String get game_hook_code_paste_title => 'Dán mã hook';
  @override
  String get game_hook_code_paste_hint =>
      'Dán mã gốc, ví dụ /HQN4@4CE90:game.exe';
  @override
  String get game_hook_code_paste_body =>
      'Mã được gắn với tệp thực thi của trò chơi đang chạy, nên Fushi có thể dùng lại vào lần sau.';
  @override
  String get game_hook_code_paste_saved => 'Đã lưu mã hook cho trò chơi này';
  @override
  String get game_hook_code_paste_invalid => 'Đây không giống một mã hook';
  @override
  String get game_hook_code_label => 'Nhãn (tùy chọn)';
  @override
  String get discovery_game_type_all => 'Tất cả';
  @override
  String get discovery_game_type_raw => 'Chưa dịch';
  @override
  String get discovery_game_type_translated => 'Đã dịch';
  @override
  String get discovery_game_type_mobile => 'Di động';
  @override
  String get discovery_game_type_unlabelled => 'Chưa gắn nhãn';
  @override
  String get game_library_downloading => 'Đang tải xuống';
  @override
  String get game_library_download_queued => 'Đang chờ';
  @override
  String get game_library_download_retrying => 'Đang thử lại';
  @override
  String get delete_disclosure_audio_source_files =>
      'Các tệp âm thanh gốc bạn đã nhập';
  @override
  String get delete_local_files => 'Xoá cả tệp trên máy';
  @override
  String get delete_local_files_video_desc =>
      'Tệp video sẽ bị xoá khỏi thiết bị này, đồng thời xoá cả tác vụ tải xuống tương ứng. Không thể hoàn tác.';
  @override
  String get delete_local_files_audio_desc =>
      'Các tệp âm thanh gốc sẽ bị xoá khỏi thiết bị này; tệp sách và phụ đề gốc vẫn được giữ. Không thể hoàn tác.';
  @override
  String get delete_disclosure_book_source_kept =>
      'Tệp sách và phụ đề gốc bạn đã nhập';
  @override
  String get download_task_delete_files_failed =>
      'Không thể xoá dữ liệu đã tải; công cụ tải xuống không xác nhận';
  @override
  String delete_local_files_failed({required Object n}) =>
      'Không thể xoá ${n} tệp trên máy; có thể chúng vẫn đang được sử dụng';
  @override
  String batch_hidden_by_filter_note({required Object n}) =>
      'Còn ${n} mục đã chọn bị ẩn bởi bộ lọc hiện tại và sẽ không được xử lý.';
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
  String get manga_online_series_empty => 'Bộ truyện này không có tập nào.';
  @override
  String sync_peer_book_delete_confirm({required Object name}) =>
      'Xóa "${name}" khỏi thiết bị đối tác? Tệp và tiến độ đọc trên thiết bị đó sẽ bị xóa vĩnh viễn, và máy này không có bản sao. Không thể hoàn tác.';
  @override
  String sync_peer_video_delete_confirm({required Object name}) =>
      'Gỡ "${name}" khỏi thư viện của thiết bị đối tác? Tệp video do thiết bị đó tự nhập vẫn được giữ lại. Không thể hoàn tác.';
  @override
  String get storage_entry_delete_files_confirm_body =>
      'Sẽ bị xóa khỏi ổ đĩa ngay lập tức. Không có mục nào trong thư viện tham chiếu tới nó — đây là dữ liệu bộ nhớ đệm, đã xuất hoặc có thể tải lại.';
  @override
  String get manga_series_refresh => 'Làm mới chương';
  @override
  String get manga_series_refresh_failed => 'Không thể làm mới từ nguồn';
  @override
  String get manga_series_source_disabled =>
      'Nguồn này chưa được cài đặt hoặc đã bị tắt';
  @override
  String get manga_series_platform_unsupported =>
      'Nguồn này không khả dụng trên nền tảng này';
  @override
  String get manga_series_offline_hint =>
      'Đang hiển thị các chương đã lưu trên thiết bị này';
  @override
  String get manga_series_no_chapters => 'Chưa có chương nào';
  @override
  String get manga_series_all_read => 'Đã đọc hết tất cả các chương';
  @override
  String get manga_series_sort_newest => 'Mới nhất trước';
  @override
  String get manga_series_sort_oldest => 'Cũ nhất trước';
  @override
  String get manga_series_unread_only => 'Chỉ chưa đọc';
  @override
  String get manga_series_mark_read => 'Đánh dấu đã đọc';
  @override
  String get manga_series_mark_unread => 'Đánh dấu chưa đọc';
  @override
  String get manga_series_mark_previous_read =>
      'Đánh dấu chương này và trước đó là đã đọc';
  @override
  String get manga_series_local_volume => 'Tập cục bộ';
  @override
  String get manga_series_volume_info => 'Tập';
  @override
  String get manga_series_page_count => 'Số trang';
  @override
  String get manga_series_chapters_action => 'Chương';
  @override
  String get manga_series_next_chapter => 'Chương sau';
  @override
  String get manga_series_previous_chapter => 'Chương trước';
  @override
  String get manga_series_last_chapter_reached => 'Đây là chương mới nhất';
  @override
  String get manga_series_first_chapter_reached => 'Đây là chương đầu tiên';
  @override
  String get manga_series_open_series => 'Trang tác phẩm';
  @override
  String manga_series_read_progress({
    required Object page,
    required Object total,
  }) => 'Đã đọc đến trang ${page} trên ${total}';
  @override
  String manga_series_read_progress_partial({required Object page}) =>
      'Đã đọc đến trang ${page}';
  @override
  String mihon_store_extension_count({required Object count}) =>
      '${count} tiện ích';
  @override
  String mihon_extension_sources_more({required Object count}) =>
      'Hiện tất cả ${count} nguồn';
  @override
  String get mihon_extension_sources_less => 'Hiện ít nguồn hơn';
  @override
  String get options_website => 'Truy cập trang web chính thức';
  @override
  String get video_setting_mpv_group_hdr => 'HDR';
  @override
  String get video_setting_hdr_tone_mapping => 'Ánh xạ tông màu HDR';
  @override
  String get video_setting_hdr_tone_mapping_hint =>
      'Đường cong dùng khi phải nén nguồn HDR xuống màn hình SDR. “Tự động” để mpv chọn theo từng nguồn.';
  @override
  String get video_setting_hdr_compute_peak => 'Phát hiện đỉnh động';
  @override
  String get video_setting_hdr_compute_peak_hint =>
      'Đo độ sáng đỉnh thực của từng khung hình thay vì tin vào siêu dữ liệu của nguồn. Vùng sáng đẹp hơn, tốn thêm chút GPU.';
  @override
  String get video_setting_hdr_auto => 'Tự động';
  @override
  String get video_setting_hdr_on => 'Bật';
  @override
  String get video_setting_hdr_off => 'Tắt';
  @override
  String get video_discovery_cancel_downloads_title => 'Huỷ tải xuống?';
  @override
  String video_discovery_cancel_downloads_body({required Object n}) =>
      '${n} tác vụ tải xuống của tác phẩm này sẽ bị dừng. Các phần đã tải vẫn nằm trên ổ đĩa; bạn có thể tải lại sau.';
  @override
  String get video_discovery_cancel_downloads_failed =>
      'Không huỷ được tải xuống. Tác vụ có thể đã xong, hoặc backend tải xuống hiện không khả dụng.';
  @override
  String get gal_hook_click_lookup => 'Chạm vào từ để tra nghĩa';
  @override
  String get gal_hook_click_lookup_hint =>
      'Tắt nghĩa là bấm vào phụ đề sẽ không bao giờ tra từ — hữu ích khi bật xuyên chuột và bạn không muốn lỡ tay trúng một từ.';
  @override
  String get gal_hook_lookup_trigger => 'Nút tra từ';
  @override
  String get gal_hook_lookup_trigger_hint =>
      'Nút chuột nào sẽ tra từ dưới con trỏ. Độc lập với công tắc phía trên: bạn có thể tắt chạm-để-tra mà vẫn tra bằng nút bên hông.';
  @override
  String get gal_hook_lookup_trigger_left => 'Left click';
  @override
  String get gal_hook_lookup_trigger_middle => 'Middle click';
  @override
  String get gal_hook_lookup_trigger_side => 'Side button';
  @override
  String get gal_hook_toolbar_auto_hide => 'Tự ẩn thanh công cụ';
  @override
  String get gal_hook_toolbar_auto_hide_hint =>
      'Ẩn thanh công cụ cho tới khi con trỏ chạm vào khung phụ đề, kiểu LunaHook. Ẩn là ẩn thật — số điểm ảnh đó trả lại cho game.';
  @override
  String get gal_hook_passthrough_blocks_mouse =>
      'Phụ đề vẫn nhận nhấp chuột khi xuyên chuột';
  @override
  String get gal_hook_passthrough_blocks_mouse_hint =>
      'Bật: các dòng chữ vẫn nhận nhấp chuột nên bạn chạm được vào từ. Tắt: toàn bộ lớp phủ trong suốt với chuột — bạn bấm được thứ bên dưới, nhưng chạm vào từ không còn tác dụng.';
  @override
  String get floating_lyric_topmost => 'Luôn hiển thị trên cùng';
  @override
  String get gal_hook_fold_progressive_lines =>
      'Gộp các dòng thoại bị chia nhỏ';
  @override
  String get gal_hook_fold_progressive_lines_hint =>
      'Một số engine vẽ lại cả dòng mỗi lần nhấp, nên cùng một dòng bị bắt nhiều lần. Gộp các ảnh chụp đó thành một dòng.';
  @override
  String get gal_hook_ingame_lookup_engine_unsupported =>
      'Engine trò chơi này chưa hỗ trợ tra từ trong trò chơi';
  @override
  String get gal_hook_ingame_lookup_version_unsupported =>
      'Phiên bản trò chơi này chưa có trong danh sách được hỗ trợ';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copy =>
      'Sao chép SHA-256 của tệp thực thi trò chơi';
  @override
  String get gal_hook_ingame_lookup_exe_hash_unavailable =>
      'Không đọc được tệp thực thi trò chơi';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copied =>
      'Đã sao chép SHA-256 của tệp thực thi';
  @override
  String get download_tracker_section => 'Đăng ký tracker';
  @override
  String get download_tracker_auto_add =>
      'Tự động thêm tracker từ đăng ký vào các tải xuống mới';
  @override
  String get download_tracker_auto_add_hint =>
      'Danh sách được lưu đệm trong 6 giờ. Việc lấy đăng ký thất bại sẽ không chặn tải xuống.';
  @override
  String get download_tracker_url => 'URL đăng ký';
  @override
  String get download_tracker_refresh => 'Lấy tracker';
  @override
  String get download_tracker_preview_empty =>
      'Lấy đăng ký để xem trước các tracker HTTP, HTTPS và UDP được hỗ trợ.';
  @override
  String download_tracker_preview_count({required Object count}) =>
      'Đã lấy ${count} tracker';
  @override
  String download_tracker_fetch_failed({required Object message}) =>
      'Không lấy được tracker: ${message}';
  @override
  String get anki_connect_port_auto_fix => 'Đổi sang cổng còn trống';
  @override
  String get anki_connect_port_auto_fix_hint =>
      'Chọn một cổng còn trống rồi ghi vào cả Hibiki lẫn cấu hình tiện ích AnkiConnect. Khởi động lại Anki để áp dụng.';
  @override
  String anki_connect_port_auto_fix_done({required Object port}) =>
      'AnkiConnect đã chuyển sang cổng ${port}. Hãy khởi động lại Anki rồi thử lại.';
  @override
  String anki_connect_port_auto_fix_manual({required Object port}) =>
      'Hibiki hiện dùng cổng ${port}, nhưng không tìm thấy cấu hình tiện ích AnkiConnect. Hãy đặt webBindPort thành ${port} trong Anki (Công cụ → Tiện ích → AnkiConnect → Cấu hình) rồi khởi động lại Anki.';
  @override
  String get anki_connect_port_auto_fix_none =>
      'Không tìm thấy cổng nào còn trống trên máy này.';
  @override
  String get onboarding_action_badge_required => 'Bắt buộc';
  @override
  String get onboarding_action_badge_recommended => 'Nên làm';
  @override
  String get onboarding_action_badge_optional => 'Tuỳ chọn';
  @override
  String get onboarding_pack_action_download_desc =>
      'Tải toàn bộ gói ở chế độ nền rồi nhập vào. Có thể huỷ bất cứ lúc nào; lần sau sẽ tải tiếp từ chỗ đã dừng.';
  @override
  String get onboarding_pack_action_import_existing_desc =>
      'Gói đã tải xong; thao tác này nhập nó vào. Chọn «Gộp» trong hộp xác nhận thì dữ liệu hiện có của bạn sẽ được giữ nguyên.';
  @override
  String get onboarding_pack_action_pick_desc =>
      'Đã lấy được tệp zip của gói từ nơi khác? Nhập từ ổ đĩa và bỏ qua hoàn toàn phần tải về.';
  @override
  String get onboarding_pack_action_website => 'Mở trang tải về trên website';
  @override
  String get onboarding_pack_action_website_desc =>
      'Mở trang chính thức trong trình duyệt. Mục về gói ở đó liệt kê các liên kết theo từng phần để bạn đưa cho trình quản lý tải; xong rồi quay lại đây và dùng «Chọn tệp gói trên máy» để nhập.';
  @override
  String get onboarding_pack_action_dictionary_desc =>
      'Bạn học ngôn ngữ khác ngoài tiếng Nhật? Bỏ qua gói và nhập từ điển cho ngôn ngữ của bạn ở đây.';
  @override
  String get onboarding_pack_action_audio_desc =>
      'Âm thanh phát âm lấy từ đâu. Gói đã bao gồm tiếng Nhật và tiếng Anh; các ngôn ngữ khác thì thêm nguồn trực tuyến ở đây.';
  @override
  String get onboarding_anki_action_test_desc =>
      'Kiểm tra xem Fushi có kết nối được với Anki không và nạp các bộ thẻ cùng loại ghi chú của bạn. Chưa tạo ra thứ gì cả.';
  @override
  String get onboarding_anki_action_refresh_desc =>
      'Nạp lại bộ thẻ và loại ghi chú từ Anki. Dùng sau khi bạn tạo bộ thẻ mới trong Anki.';
  @override
  String get onboarding_anki_action_get_ankidroid_desc =>
      'Mở trang cửa hàng của AnkiDroid. Fushi ghi thẻ vào đó nên phải cài nó trước.';
  @override
  String get onboarding_anki_action_get_anki_desc =>
      'Mở trang tải Anki. Cài Anki và để nó chạy trong lúc bạn tạo thẻ.';
  @override
  String get onboarding_anki_action_install_addon_desc =>
      'Giải nén tiện ích AnkiConnect đi kèm vào Anki giúp bạn — đó chính là thứ cho phép Fushi nói chuyện với Anki. Xong rồi khởi động lại Anki.';
  @override
  String get onboarding_step_anki_action_desc =>
      'Mẫu thẻ, ánh xạ trường, ảnh chụp màn hình và âm thanh: tức là chi tiết về hình hài của tấm thẻ được tạo ra. Bộ thẻ và loại ghi chú ở trên là đủ để bắt đầu, nên chỉ mở phần này khi bạn muốn đổi cách dựng thẻ.';
  @override
  String get onboarding_step_backup_action_desc =>
      'Chọn nơi sao lưu và đăng nhập, để thư viện của bạn sống sót khi mất máy hoặc đổi máy.';
  @override
  String get onboarding_step_interconnect_action_desc =>
      'Ghép nối thiết bị này với các thiết bị khác của bạn để dùng chung một thư viện và đồng bộ tiến độ.';
  @override
  String get onboarding_step_extension_action_desc =>
      'Hướng dẫn cách cài tiện ích trình duyệt và kết nối nó với Fushi, để bạn tra từ ngay trên trang web.';
  @override
  String get onboarding_step_fonts_action_desc =>
      'Thêm tệp phông chữ của riêng bạn và chọn phông cho từng ngôn ngữ.';
  @override
  String get onboarding_pack_sources_hint =>
      'Được tải song song theo từng phần, đồng thời từ GitHub, trang chính thức và một máy chủ gương dự phòng, mỗi phần đều được kiểm tra checksum. Fushi đo tốc độ các nguồn ngay trong lúc tải và giao nhiều phần hơn cho nguồn đang nhanh nhất, nên ở đây không có gì để chọn.';
  @override
  String get video_setting_hdr_output => 'Đầu ra HDR / 10 bit';
  @override
  String get video_setting_hdr_output_hint =>
      'Chỉ trên Windows. «Tự động» đưa nguồn HDR thẳng tới màn hình HDR qua một cửa sổ video gốc; «Luôn luôn» dùng cửa sổ đó cho mọi video (đầu ra 10 bit); «Tắt» giữ nguyên bộ kết xuất tiêu chuẩn.';
  @override
  String get video_setting_hdr_output_auto => 'Tự động';
  @override
  String get video_setting_hdr_output_always => 'Luôn luôn';
  @override
  String get video_setting_hdr_output_off => 'Tắt';
  @override
  String get network_proxy_auto_hint =>
      'Áp dụng cho mọi yêu cầu Internet của ứng dụng: cập nhật, đồng bộ đám mây, từ điển, tải xuống, phụ đề và siêu dữ liệu. Để trống để tự động: biến môi trường, sau đó là proxy hệ thống đã bật. Truyền P2P (torrent) mặc định kết nối trực tiếp; bạn có thể bật riêng bên dưới.';
  @override
  String get network_proxy_hint =>
      'host:port, ví dụ 127.0.0.1:7890 (chỉ IPv4/host)';
  @override
  String get network_proxy_invalid => 'Proxy không hợp lệ. Dùng host:port';
  @override
  String get network_proxy_label => 'Proxy mạng';
  @override
  String get section_network => 'Mạng';
  @override
  String get network_proxy_p2p_label => 'P2P (torrent) proxy';
  @override
  String get network_proxy_p2p_warning =>
      'Direct by default. Via proxy: all P2P traffic goes through the global proxy — speed may drop, and many proxy providers forbid BitTorrent traffic (throttling, warnings, or account termination). Mixed: tracker requests go through the proxy while DHT and peer connections stay direct — widest peer discovery, but your real IP is visible to trackers, DHT and peers (connectivity only, not privacy). Built-in engine only; external qBittorrent uses its own proxy settings.';
  @override
  String get video_ajatt_settings_hint =>
      'Kho phụ đề tiếng Nhật miễn phí (bản sao kitsunekko). Không cần tài khoản; tệp phụ đề tải từ GitHub.';
  @override
  String get video_ajatt_enabled_hint =>
      'Tắt nghĩa là bỏ qua kho AJATT khi tìm phụ đề.';
  @override
  String get video_subtitle_workbench_title => 'Phụ đề';
  @override
  String get video_subtitle_scope_episode => 'Tập này';
  @override
  String get video_subtitle_scope_collection => 'Toàn bộ bộ sưu tập';
  @override
  String get video_subtitle_search_open => 'Tìm phụ đề trực tuyến';
  @override
  String get video_subtitle_collection_settings =>
      'Cài đặt phụ đề của bộ sưu tập';
  @override
  String get video_subtitle_collection_language => 'Ngôn ngữ phụ đề mặc định';
  @override
  String get video_subtitle_collection_language_hint =>
      'Áp dụng cho mọi tập trong bộ sưu tập này. Để trống = theo ngôn ngữ của video.';
  @override
  String get video_subtitle_collection_release_group => 'Phiên bản ưu tiên';
  @override
  String get video_subtitle_collection_release_group_hint =>
      'Tải hàng loạt sẽ chọn phiên bản này trước để cả mùa dùng chung một mốc thời gian.';
  @override
  String get video_subtitle_collection_release_group_any => 'Phiên bản bất kỳ';
  @override
  String get video_subtitle_source_label => 'Nguồn';
  @override
  String get video_subtitle_collection_members_hint =>
      'Các tập được khớp theo số trong tên tệp; gói cả mùa được tách tự động.';
  @override
  String get video_subtitle_adjust_title => 'Điều chỉnh phụ đề';
  @override
  String get video_subtitle_adjust_collapse => 'Thu gọn';
  @override
  String get video_subtitle_adjust_expand => 'Mở rộng';
  @override
  String get settings_section_reading_stats => 'Thống kê đọc';
  @override
  String get reading_stats_idle_timeout => 'Thời gian không hoạt động';
  @override
  String get reading_stats_idle_timeout_hint =>
      'Ngừng tính thời gian đọc sau số phút này nếu không lật trang, cuộn hoặc tra từ. Chỉ áp dụng cho tiểu thuyết, PDF và manga; video được tính khi đang phát.';
  @override
  String get web_video_track_menu => 'Rãnh phụ đề';
  @override
  String get web_video_track_live => 'Phụ đề trực tiếp (lấy từ trang)';
  @override
  String get web_video_no_tracks => 'Chưa bắt được phụ đề nào';
  @override
  String get web_video_hide_native_subtitles => 'Ẩn phụ đề của trang';
  @override
  String get web_video_import_hint =>
      'Đây là trang web (không phải luồng trực tiếp). Sẽ mở trong trình phát web tích hợp.';
  @override
  String get web_video_platform_unsupported =>
      'Trình phát web tích hợp hiện chỉ có trên Windows.';
  @override
  String get web_video_mine_queue_run => 'Tạo các thẻ đang chờ';
  @override
  String get web_video_mine_queue_stop => 'Dừng tạo thẻ';
  @override
  String get web_video_mine_queue_empty => 'Không có thẻ nào đang chờ';
  @override
  String web_video_mine_queued({required Object count}) =>
      'Đã xếp hàng để tạo thẻ (${count} đang chờ)';
  @override
  String web_video_mine_queue_running({
    required Object done,
    required Object total,
  }) => 'Đang tạo thẻ ${done}/${total}…';
  @override
  String web_video_mine_queue_finished({
    required Object ok,
    required Object failed,
  }) => 'Đã tạo thẻ: ${ok}, thất bại: ${failed}';
  @override
  String get web_video_hosting_menu => 'Chế độ phát';
  @override
  String get web_video_hosting_builtin =>
      'Tích hợp (1080p; có siêu phân giải, ảnh chụp màn hình và thẻ)';
  @override
  String get web_video_hosting_windowed =>
      'Cửa sổ gốc (4K, DRM phần cứng; thẻ được xếp hàng để làm sau)';
  @override
  String web_video_mine_switch_builtin({required Object count}) =>
      'Chuyển sang chế độ tích hợp để tạo ${count} thẻ đang chờ';
  @override
  String get onboarding_step_click_lookup_title => 'Chạm để tra từ';
  @override
  String get onboarding_click_lookup_tap_title => 'Chạm vào văn bản';
  @override
  String get onboarding_click_lookup_nested_title =>
      'Tra tiếp ngay trong cửa sổ';
  @override
  String get onboarding_click_lookup_nested_body =>
      'Chạm vào một từ khác trong phần nghĩa để mở thêm một lớp tra từ. Nhấn quay lại hoặc chạm ra ngoài để đóng bớt một lớp.';
  @override
  String get onboarding_click_lookup_mine_title => 'Biến kết quả thành thẻ';
  @override
  String get onboarding_click_lookup_mine_body =>
      'Khi nghĩa đã đúng, chạm + để gửi từ, câu, âm thanh và hình ảnh sang trình tạo thẻ.';
  @override
  String get onboarding_step_global_lookup_title => 'Tra từ bên ngoài Fushi';
  @override
  String get onboarding_global_lookup_windows_body =>
      'Trên Windows, hãy bôi đen văn bản trong ứng dụng khác rồi gọi từ điển mà không cần quay lại Fushi.';
  @override
  String get onboarding_global_lookup_windows_select_title =>
      'Chọn văn bản trong bất kỳ ứng dụng nào';
  @override
  String get onboarding_global_lookup_windows_shortcut_title =>
      'Nhấn Ctrl+Alt+D';
  @override
  String get onboarding_global_lookup_windows_shortcut_body =>
      'Đây là phím tắt toàn cục mặc định. Fushi lấy phần văn bản đang chọn và mở thẻ tra từ ngay cạnh con trỏ.';
  @override
  String get onboarding_global_lookup_windows_customize_title =>
      'Đổi phím tắt nếu cần';
  @override
  String get onboarding_global_lookup_windows_customize_body =>
      'Mở Cài đặt → Phím tắt → Toàn cục (ngoài ứng dụng) để gán tổ hợp phím khác.';
  @override
  String get onboarding_global_lookup_windows_action => 'Mở cài đặt phím tắt';
  @override
  String get onboarding_global_lookup_windows_action_desc =>
      'Cho phép đổi phím tắt tra từ ngoài ứng dụng. Mặc định Ctrl+Alt+D vốn đã dùng được nên bước này không bắt buộc.';
  @override
  String get onboarding_global_lookup_android_body =>
      'Trên Android, hệ thống chuyển văn bản đang chọn sang Fushi qua menu văn bản hoặc bảng Chia sẻ. Ở đây không có phím tắt toàn cục để tuỳ chỉnh.';
  @override
  String get onboarding_global_lookup_android_select_title =>
      'Chọn văn bản trong ứng dụng khác';
  @override
  String get onboarding_global_lookup_android_open_title => 'Chọn Fushi';
  @override
  String get onboarding_global_lookup_android_open_body =>
      'Chạm Fushi trong menu chọn văn bản. Nếu không thấy, hãy chạm Chia sẻ rồi chọn Fushi trong bảng chia sẻ.';
  @override
  String get onboarding_global_lookup_android_continue_title =>
      'Dùng cửa sổ tra từ riêng';
  @override
  String get onboarding_global_lookup_android_continue_body =>
      'Kết quả tra từ mở tách khỏi ứng dụng gốc. Bạn có thể chạm tiếp các từ khác trong đó, đóng lại là quay về chỗ cũ.';
  @override
  String get onboarding_feature_manual_resources =>
      'Nhập từ điển và âm thanh thủ công';
  @override
  String get onboarding_feature_manual_resources_hint =>
      'Supplement the recommended pack, or import your own dictionaries, audiobooks, and pronunciation sources';
  @override
  String get onboarding_step_manual_resources_title =>
      'Chuẩn bị từ điển và âm thanh thủ công';
  @override
  String get onboarding_step_manual_resources_body =>
      'Use this alongside the recommended pack or on its own. Import at least one dictionary before the lookup tutorial; audiobook and pronunciation audio are optional supplements.';
  @override
  String get onboarding_manual_dictionary_action => 'Nhập một từ điển';
  @override
  String get onboarding_manual_dictionary_action_desc =>
      'Mở trình quản lý từ điển và nhập ít nhất một tệp hoặc kho từ điển được hỗ trợ. Các hướng dẫn tra từ chỉ có ích khi tra ra được nghĩa.';
  @override
  String get onboarding_manual_audiobook_action =>
      'Nhập sách kèm âm thanh sách nói';
  @override
  String get onboarding_manual_audiobook_action_desc =>
      'Mở phần nhập sách và chọn sách hoặc văn bản, phụ đề đã khớp, cùng một hay nhiều tệp âm thanh. Phải có phụ đề thì Fushi mới khớp được âm thanh theo từng câu.';
  @override
  String get onboarding_manual_pronunciation_action =>
      'Thiết lập âm thanh phát âm của từ';
  @override
  String get onboarding_manual_pronunciation_action_desc =>
      'Thêm nguồn phát âm cục bộ hoặc trực tuyến dùng cho các mục từ điển. Việc này tách biệt với âm thanh sách nói gắn kèm một cuốn sách.';
  @override
  String get onboarding_lookup_verify_action =>
      'Kiểm tra một từ trong từ điển của bạn';
  @override
  String get onboarding_lookup_verify_action_desc =>
      'Mở tra từ, nhập bất kỳ từ nào bạn đang học, và chỉ đi tiếp khi từ điển đã cài trả về nghĩa. Hướng dẫn không cố định sẵn từ mẫu nào.';
  @override
  String get onboarding_step_first_anki_card_title => 'Tạo thẻ Anki đầu tiên';
  @override
  String get onboarding_step_first_anki_card_body =>
      'Bước này chỉ hiện ra khi lần thiết lập này đã kết nối Anki và đã chọn được bộ thẻ cùng loại ghi chú dùng được.';
  @override
  String get onboarding_first_anki_lookup_title =>
      'Bắt đầu từ một kết quả từ điển thật';
  @override
  String get onboarding_first_anki_lookup_body =>
      'Hãy tra một từ mà từ điển bạn đã cài thực sự có. Không có từ mẫu cố định nào có thể bị thiếu trong từ điển của bạn.';
  @override
  String get onboarding_first_anki_plus_title =>
      'Chạm nút dấu cộng trên mục từ';
  @override
  String get onboarding_first_anki_plus_body =>
      'Nút dấu cộng mở trình tạo thẻ kèm sẵn từ hiện tại, cách đọc, nghĩa, câu, âm thanh và hình ảnh đang có.';
  @override
  String get onboarding_first_anki_save_title => 'Kiểm tra rồi lưu';
  @override
  String get onboarding_first_anki_save_body =>
      'Xác nhận bộ thẻ đích, loại ghi chú và bản xem trước các trường, rồi lưu. Mở Anki để kiểm tra thẻ đầu tiên đã vào chưa.';
  @override
  String get onboarding_first_anki_action => 'Mở tra từ và tạo thẻ';
  @override
  String get onboarding_first_anki_action_desc =>
      'Chọn một từ đang hiện nghĩa, chạm nút dấu cộng, kiểm tra các trường rồi lưu vào bộ thẻ Anki đã kết nối.';
  @override
  String get onboarding_step_click_lookup_body =>
      'Trước hết hãy kiểm tra một từ mà từ điển đã cài thực sự có nghĩa. Sau đó dùng chính từ đó để tập tra trực tiếp trong sách, trong chữ OCR của manga và trong phụ đề video.';
  @override
  String get onboarding_click_lookup_tap_body =>
      'Trên điện thoại, chạm vào một ký tự của từ vừa kiểm tra; trên máy tính thì nhấp chuột trái. Fushi bắt đầu từ đó và khớp với từ dài nhất.';
  @override
  String get onboarding_global_lookup_windows_select_body =>
      'Bôi đen đúng từ mà bạn đã kiểm tra là có nghĩa trong từ điển, và giữ nguyên vùng chọn.';
  @override
  String get onboarding_global_lookup_android_select_body =>
      'Nhấn giữ đúng từ đã kiểm tra đó, rồi kéo các tay nắm vùng chọn để phủ hết từ.';
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
  String get delete_choices_remember => 'Ghi nhớ các lựa chọn này';
  @override
  String get network_proxy_mode_label => 'Chế độ proxy';
  @override
  String get network_proxy_mode_auto => 'Tự động';
  @override
  String get network_proxy_mode_auto_hint =>
      'Dùng biến môi trường, sau đó là proxy hệ thống đang bật';
  @override
  String get network_proxy_mode_direct => 'Kết nối trực tiếp';
  @override
  String get network_proxy_mode_direct_hint =>
      'Tắt việc dùng proxy cho ứng dụng';
  @override
  String get network_proxy_mode_manual => 'Thủ công';
  @override
  String get network_proxy_mode_manual_hint =>
      'Dùng máy chủ và thông tin đăng nhập tùy chọn bên dưới';
  @override
  String get network_proxy_address_hint =>
      'Máy chủ proxy HTTP dùng cho mọi yêu cầu ra Internet công cộng';
  @override
  String get network_proxy_username => 'Tên người dùng proxy (tùy chọn)';
  @override
  String get network_proxy_password => 'Mật khẩu proxy (tùy chọn)';
  @override
  String get storage_entry_delete_backups_confirm_body =>
      'Xóa các kho lưu trữ sao lưu cục bộ tạm thời này? Hãy chắc chắn bạn đã lưu hoặc chia sẻ bản sao nào còn cần.';
  @override
  String get update_download_source_preference => 'Nguồn tải xuống ưu tiên';
  @override
  String get update_download_source_preference_hint =>
      'Nguồn đã chọn sẽ được thử trước; các nguồn không khả dụng vẫn tự động chuyển sang nguồn khác.';
  @override
  String get update_download_source_auto => 'Tự động (khuyến nghị)';
  @override
  String get update_download_source_cloudflare => 'Máy chủ gương Cloudflare';
  @override
  String get update_download_source_github => 'GitHub trực tiếp';
  @override
  String update_download_source_proxy({required Object host}) =>
      'Proxy: ${host}';
  @override
  String get storage_category_backups => 'Kho lưu trữ sao lưu còn sót';
  @override
  String storage_entry_backups_label({required Object n}) =>
      '${n} kho lưu trữ còn sót từ lần xuất trước';
  @override
  String update_download_source_unavailable({required Object source}) =>
      '${source} không khả dụng cho tệp này; đã quay lại thứ tự tự động';
  @override
  String get network_proxy_credentials_scope_hint =>
      'Thông tin đăng nhập chỉ áp dụng cho yêu cầu HTTP; công cụ torrent tích hợp không dùng được';
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
