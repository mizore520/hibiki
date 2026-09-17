part of 'strings.g.dart';

// Path: <root>
class _StringsTr extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsTr.build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.tr,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super.build(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <tr>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  @override
  late final _StringsTr _root = this; // ignore: unused_field

  // Translations
  @override
  String get about_tmdb_attribution =>
      'Bu uygulama TMDB ve TMDB API\'lerini kullanır ancak TMDB tarafından onaylanmamış, sertifikalandırılmamış veya başka şekilde desteklenmemiştir.';
  @override
  String get action_exit => 'Çıkış';
  @override
  String get action_favorite => 'Favorilere ekle';
  @override
  String activity_days_ago({required Object n}) => '${n} gün önce';
  @override
  String activity_hours_ago({required Object n}) => '${n} sa önce';
  @override
  String get activity_just_now => 'Az önce';
  @override
  String activity_minutes_ago({required Object n}) => '${n} dk önce';
  @override
  String get add_to_collection => 'Koleksiyona ekle';
  @override
  String get aidoku_extension_confirm_title => 'Aidoku eklentisi yüklensin mi?';
  @override
  String get aidoku_extension_empty => 'Yüklü Aidoku eklentisi yok.';
  @override
  String get aidoku_extension_import => 'Aidoku eklentisi içe aktar (.aix)';
  @override
  String get aidoku_extension_imported => 'Aidoku eklentisi içe aktarıldı';
  @override
  String get aidoku_extension_remove => 'Aidoku eklentisini kaldır';
  @override
  String get aidoku_extension_version => 'Sürüm';
  @override
  String get aidoku_extension_warning =>
      'Aidoku eklentileri, ağ erişimi olan üçüncü taraf WebAssembly kodu çalıştırır. Yalnızca güvendiğiniz kaynaklarla devam edin.';
  @override
  String get aidoku_extensions_title => 'Aidoku eklentileri';
  @override
  String get aidoku_repository_add => 'Aidoku deposu ekle';
  @override
  String get aidoku_repository_added => 'Aidoku deposu eklendi';
  @override
  String get aidoku_repository_browse => 'Depoya göz at';
  @override
  String get aidoku_repository_empty => 'Eklenmiş Aidoku deposu yok.';
  @override
  String get aidoku_repository_hint =>
      'Bir Aidoku deposu ana sayfası veya index.min.json URL\'si yapıştırın. Topluluk deposu varsayılan olarak doldurulur.';
  @override
  String get aidoku_repository_identity_mismatch =>
      'İndirilen paket depo diziniyle eşleşmiyor.';
  @override
  String get aidoku_repository_install => 'Yükle';
  @override
  String get aidoku_repository_installed => 'Yüklendi';
  @override
  String get aidoku_repository_remove => 'Depoyu kaldır';
  @override
  String get aidoku_repository_search => 'Depo kaynaklarını ara';
  @override
  String get aidoku_repository_sources => 'Depo kaynakları';
  @override
  String get aidoku_repository_update => 'Güncelle';
  @override
  String get aidoku_repository_url => 'Depo URL\'si';
  @override
  String get aidoku_runtime_unavailable =>
      'Aidoku eklentileri şu anda yalnızca macOS\'ta kullanılabilir.';
  @override
  String get aidoku_webview_unsupported =>
      'Bu kaynak henüz desteklenmeyen Aidoku WebView API\'leri gerektiriyor.';
  @override
  String get anime_download_back => 'Geri';
  @override
  String get anime_download_batch => 'Toplu';
  @override
  String get anime_download_category_all => 'Tümü';
  @override
  String get anime_download_category_english => 'İngilizce altyazılı';
  @override
  String get anime_download_category_non_english => 'İngilizce dışı';
  @override
  String get anime_download_category_raw => 'Ham';
  @override
  String get anime_download_delete => 'Sil';
  @override
  String anime_download_episode_count({required Object count}) => 'BL ${count}';
  @override
  String get anime_download_generic_download => 'İndir';
  @override
  String get anime_download_generic_hint => 'Magnet bağlantısı';
  @override
  String get anime_download_generic_title =>
      'Bağlantı yapıştır (kitap, video, herhangi bir şey)';
  @override
  String get anime_download_include_subs => 'Altyazıları dahil et';
  @override
  String get anime_download_kind_auto => 'Otomatik';
  @override
  String get anime_download_kind_book => 'Kitap';
  @override
  String get anime_download_kind_video => 'Video';
  @override
  String get anime_download_magnet_invalid => 'Geçersiz magnet bağlantısı';
  @override
  String get anime_download_no_results => 'Sonuç yok';
  @override
  String anime_download_no_results_detail({
    required Object query,
    required Object filters,
  }) =>
      'Hizmet başarılı yanıt verdi ancak 0 öğe döndürdü. Sorgu: ${query}; filtreler: ${filters}. Başka bir başlık deneyin veya filtreleri gevşetin.';
  @override
  String get anime_download_no_subs => 'Altyazı yok';
  @override
  String get anime_download_no_tasks => 'Henüz indirme görevi yok';
  @override
  String get anime_download_nyaa_query => 'Nyaa arama terimleri';
  @override
  String get anime_download_play_now => 'İndirirken oynat';
  @override
  String get anime_download_play_now_fail =>
      'Henüz hazır değil (meta veri bekleniyor veya bağlantı başarısız) — daha sonra tekrar deneyin';
  @override
  String get anime_download_play_now_ok =>
      'İçe aktarıldı — indirirken oynatmak için video kütüphanesinden açın';
  @override
  String get anime_download_push => 'İndirmeyi aktar';
  @override
  String get anime_download_push_failed => 'qBittorrent\'a aktarılamadı';
  @override
  String get anime_download_pushed =>
      'Aktarıldı — tamamlandığında otomatik olarak içe aktarılacak';
  @override
  String get anime_download_refresh => 'Yenile';
  @override
  String get anime_download_relocate => 'Yeniden adlandır / taşı';
  @override
  String anime_download_relocate_engine_failed({required Object reason}) =>
      'Başarısız, hiçbir şey değişmedi: ${reason}';
  @override
  String get anime_download_relocate_hint =>
      'Fushi, yeniden adlandırma/taşımayı indirme motoru üzerinden yapar, böylece paylaşım kesintiye uğramaz. Dosya Gezgini\'nde yapılan yeniden adlandırma geri alınamaz.';
  @override
  String anime_download_relocate_library_failed({required Object reason}) =>
      'Dosyalar taşındı, ancak kütüphane hâlâ eski yolu gösteriyor: ${reason}';
  @override
  String get anime_download_relocate_move_title => 'Klasöre taşı';
  @override
  String get anime_download_relocate_no_files =>
      'Bu görevin henüz yeniden adlandırılacak dosyası yok (meta veri hazır değil)';
  @override
  String anime_download_relocate_ok({required Object rows}) =>
      'Yeniden adlandırıldı / taşındı; ${rows} kütüphane kaydı güncellendi';
  @override
  String get anime_download_relocate_pick_folder => 'Hedef klasörü seçin';
  @override
  String get anime_download_relocate_rename_title => 'Dosyayı yeniden adlandır';
  @override
  String get anime_download_require_subs => 'Altyazı gerekli';
  @override
  String get anime_download_retry => 'Tekrar dene';
  @override
  String get anime_download_search => 'Ara';
  @override
  String get anime_download_search_error_proxy_hint =>
      'Siteye doğrudan erişilemiyorsa indirme ayarlarında bir ağ proxy\'si yapılandırın.';
  @override
  String get anime_download_search_failed =>
      'Arama başarısız veya zaman aşımına uğradı. Tekrar denemek için dokunun.';
  @override
  String get anime_download_search_hint => 'Anime başlığı';
  @override
  String get anime_download_search_start_hint =>
      'Yukarıda bir başlık arayın — torrentler ve altyazılar otomatik olarak eşleştirilir. İndirmeler videoyla sınırlı değildir: kitaplar, manga, sesli kitaplar ve oyunlar da içe aktarılır.';
  @override
  String get anime_download_sort_date => 'Yayınlanma';
  @override
  String get anime_download_sort_seeders => 'Gönderenler';
  @override
  String get anime_download_sort_size => 'Boyut';
  @override
  String get anime_download_store_unavailable =>
      'İndirme planı depolama alanı kullanılamıyor';
  @override
  String get anime_download_streaming_ready =>
      'Kütüphanede · indirme devam ediyor';
  @override
  String get anime_download_subs_badge => 'Altyazı';
  @override
  String get anime_download_subs_deferred =>
      'Altyazılar indirme sonrasında, paketin gerçek dosyalarından eşleştirilir';
  @override
  String get anime_download_subs_episodes_unverified =>
      'Bölüm numaraları bu pakete göre doğrulanmadı — altyazılar başka bir sezondan olabilir.';
  @override
  String get anime_download_subs_failed =>
      'Altyazı araması başarısız. Tekrar denemek için dokunun.';
  @override
  String get anime_download_subs_need_key =>
      'Altyazı aramak için yukarıya bir Jimaku API anahtarı girin.';
  @override
  String get anime_download_subs_pending =>
      'Altyazılar: indirme tamamlanana kadar bekliyor';
  @override
  String get anime_download_subs_retrying =>
      'Altyazılar: henüz hazır değil — otomatik olarak tekrar denenecek';
  @override
  String anime_download_subs_season_mismatch({required Object season}) =>
      'Bu paketin ${season} sezonuyla eşleşen altyazı girişi yok — otomatik seçilmedi. Yine de istiyorsanız manuel olarak birini seçin.';
  @override
  String get anime_download_subs_unmatched =>
      'Altyazılar: bu paket için eşleşme yok';
  @override
  String get anime_download_tasks => 'İndirme görevleri';
  @override
  String get anime_download_title => 'Anime indirme';
  @override
  String get anime_download_trusted => 'Güvenilir';
  @override
  String get anime_download_trusted_only => 'Yalnızca güvenilir';
  @override
  String get anime_download_unfiltered => 'Güvenilir filtresi yok';
  @override
  String get anki_action_open_settings => 'Open settings';
  @override
  String get anki_allow_duplicates => 'Tekrarlara İzin Ver';
  @override
  String get anki_allow_duplicates_hint =>
      'Kart eklerken tekrar kontrolünü atla';
  @override
  String get anki_ankimobile_imported => 'AnkiMobile configuration imported.';
  @override
  String get anki_ankimobile_opened =>
      'AnkiMobile opened. Approve the request there, then return to Fushi.';
  @override
  String get anki_card_action_failed =>
      'Kart işlemi başarısız oldu. Lütfen tekrar deneyin.';
  @override
  String get anki_compact_glossaries => 'Kompakt Sözlükçeler';
  @override
  String get anki_compact_glossaries_hint =>
      'Sözlükçe girişleri için kompakt biçim kullan';
  @override
  String get anki_connect_addon_anki_not_running =>
      'Çalışan Anki bulunamadı. Önce Anki masaüstünü başlatın, ardından tekrar deneyin.';
  @override
  String anki_connect_addon_download_failed({required Object error}) =>
      'AnkiConnect AnkiWeb\'den indirilemedi: ${error}';
  @override
  String get anki_connect_addon_handed =>
      'AnkiConnect Anki\'ye iletildi. Anki\'deki istemi onaylayın, ardından Anki\'yi tavsiye ettiği gibi yeniden başlatın.';
  @override
  String get anki_connect_addon_install => 'AnkiConnect\'i yükle';
  @override
  String get anki_connect_addon_install_hint =>
      'AnkiConnect\'i AnkiWeb\'den indirir ve çalışan Anki\'ye iletir. Anki onaylamanızı isteyecek, ardından yeniden başlatmanızı tavsiye edecektir.';
  @override
  String get anki_connect_addon_invalid =>
      'AnkiWeb kullanılabilir bir eklenti paketi olmayan bir şey döndürdü.';
  @override
  String anki_connect_addon_launch_failed({required Object error}) =>
      'Eklenti Anki\'ye iletilemedi: ${error}';
  @override
  String get anki_connect_api_key => 'API Anahtarı';
  @override
  String get anki_connect_api_key_hint =>
      'Uzak AnkiConnect için gereklidir; eklentide yapılandırılan anahtarla eşleşmelidir';
  @override
  String anki_connect_backend_switch_failed({required Object error}) =>
      'Anki arka ucu değiştirilemedi: ${error}';
  @override
  String get anki_connect_host => 'Sunucu';
  @override
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before enabling the Android backend.';
  @override
  String get anki_connect_mobile_disabled_key_cleared =>
      'AnkiConnect mobilde API anahtarı gerektirir, bu yüzden anahtarı temizlemek anahtarı kapattı. Anki artık yerleşik arka uç üzerinden çalışıyor.';
  @override
  String get anki_connect_port => 'Bağlantı noktası';
  @override
  String get anki_connect_port_auto_fix => 'Boş bir bağlantı noktasına geç';
  @override
  String anki_connect_port_auto_fix_done({required Object port}) =>
      'AnkiConnect artık ${port} bağlantı noktasını kullanıyor. Anki\'yi yeniden başlatıp tekrar deneyin.';
  @override
  String get anki_connect_port_auto_fix_hint =>
      'Boş bir bağlantı noktası seçip hem Hibiki\'ye hem de AnkiConnect eklenti yapılandırmasına yazar. Uygulamak için Anki\'yi yeniden başlatın.';
  @override
  String anki_connect_port_auto_fix_manual({required Object port}) =>
      'Hibiki artık ${port} bağlantı noktasını kullanıyor ancak AnkiConnect eklenti yapılandırması bulunamadı. Anki\'de (Araçlar → Eklentiler → AnkiConnect → Yapılandırma) webBindPort değerini de ${port} yapıp Anki\'yi yeniden başlatın.';
  @override
  String get anki_connect_port_auto_fix_none =>
      'Bu makinede boş bağlantı noktası bulunamadı.';
  @override
  String get anki_connect_use_on_mobile => 'Use AnkiConnect on Android';
  @override
  String get anki_connect_use_on_mobile_hint =>
      'Yalnızca güvenilir bir ağda kullanın. AnkiConnect düz metin HTTP kullanır; eşleşen bir API anahtarı ayarlayın, ardından geçiş yaptıktan sonra desteleri ve not türlerini yenileyin.';
  @override
  String get anki_create_lapis => 'Lapis destesi oluştur';
  @override
  String get anki_create_lapis_exists =>
      'Lapis not türü ve destesi zaten mevcut — seçildi.';
  @override
  String anki_create_lapis_failed({required Object error}) =>
      'Lapis destesi oluşturulamadı: ${error}';
  @override
  String get anki_create_lapis_hint =>
      'Anki\'ye Lapis not türünü ve bir Lapis destesini ekler, ardından bunları seçer.';
  @override
  String get anki_create_lapis_success =>
      'Lapis not türü ve destesi oluşturuldu.';
  @override
  String get anki_deck => 'Deste';
  @override
  String get anki_dedup_auto => 'Otomatik işleme';
  @override
  String get anki_dedup_auto_delete => 'Sormadan otomatik sil';
  @override
  String get anki_dedup_auto_delete_hint =>
      'Onay iletişim kutusunu atlar. Yalnızca bayt düzeyinde özdeş fazla kopyalar kaldırılır ve hiçbir şey yeniden kodlanmaz, ancak silme geri alınamaz.';
  @override
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      '${count} yinelenen Anki medya dosyası kaldırıldı, ${size} geri kazanıldı';
  @override
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      '${count} yinelenen Anki medya dosyası bulundu (${size} geri kazanılabilir)';
  @override
  String get anki_dedup_auto_hint =>
      'Varsayılan kapalı. Açıkken Fushi başlangıçta tarar (en fazla haftada bir) ve önce listeyi gösterir — siz onaylayana kadar hiçbir şey silinmez.';
  @override
  String get anki_dedup_auto_review => 'İncele';
  @override
  String get anki_dedup_cancelled =>
      'Yineleme temizleme iptal edildi; tamamlanan değişiklikler korundu.';
  @override
  String get anki_dedup_cancelling => 'İptal ediliyor…';
  @override
  String anki_dedup_failed({required Object error}) =>
      'Yineleme temizleme başarısız: ${error}';
  @override
  String get anki_dedup_plan_busy_note =>
      'Bu çalışırken Anki yanıt vermeyebilir; bitene kadar Anki kullanmaktan kaçının.';
  @override
  String get anki_dedup_plan_delete => 'Bu dosyaları sil';
  @override
  String anki_dedup_plan_entry({
    required Object file,
    required Object size,
    required Object canonical,
  }) => '${file} (${size}) silinecek — ${canonical} korunuyor';
  @override
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '${count} fazla kopya, ${size} geri kazanılabilir. Her dosyanın bir kopyası korunur ve tüm referanslar önce ona yönlendirilir; hiçbir şey yeniden kodlanmaz.';
  @override
  String get anki_dedup_plan_journal =>
      'Her yeniden yazma ve silmenin günlüğü önce yedek klasörüne yazılır.';
  @override
  String get anki_dedup_plan_title => 'Silinecek dosyalar';
  @override
  String anki_dedup_progress_freed({required Object size}) =>
      'Şu ana kadar ${size} serbest bırakıldı';
  @override
  String anki_dedup_progress_hashing({
    required Object done,
    required Object total,
  }) => 'Aynı boyuttaki dosyalar karşılaştırılıyor… (${done} / ${total})';
  @override
  String anki_dedup_progress_resolving({
    required Object done,
    required Object total,
  }) => 'Yinelenenler işleniyor… (${done} / ${total})';
  @override
  String anki_dedup_progress_scanning({required Object count}) =>
      'Medya klasörü taranıyor… (${count} dosya bulundu)';
  @override
  String get anki_dedup_progress_title => 'Medya yineleme temizleniyor';
  @override
  String anki_dedup_report_body({
    required Object groups,
    required Object removed,
    required Object size,
    required Object notes,
    required Object models,
    required Object skipped,
  }) =>
      '${groups} yinelenen grup; ${removed} fazla kopya (${size}); ${notes} not ve ${models} not türü yeniden yazıldı; ${skipped} atlandı.';
  @override
  String get anki_dedup_report_cancelled_note =>
      'Erken iptal edildi — aşağıdaki sayılar yalnızca tamamlananları kapsar.';
  @override
  String get anki_dedup_report_clean =>
      'Bayt düzeyinde özdeş yinelenen bulunamadı.';
  @override
  String get anki_dedup_report_dry_note =>
      'Yalnızca tarama — hiçbir şey değiştirilmedi.';
  @override
  String get anki_dedup_report_title => 'Medya yineleme temizleme raporu';
  @override
  String get anki_dedup_run => 'Şimdi yinelenen dosyaları temizle';
  @override
  String get anki_dedup_run_hint =>
      'Önce tarar ve neyin silineceğini tam olarak listeler; siz onaylayana kadar hiçbir şey kaldırılmaz.';
  @override
  String get anki_dedup_scan => 'Yinelenenleri tara (değişiklik yapılmaz)';
  @override
  String get anki_dedup_section => 'Anki medya depolama optimizasyonu';
  @override
  String get anki_dedup_unavailable =>
      'Bu bilgisayarda çalışan Anki gerektirir (AnkiConnect).';
  @override
  String get anki_duplicate_scope => 'Kopya kontrol kapsamı';
  @override
  String get anki_duplicate_scope_collection => 'Tüm koleksiyon';
  @override
  String get anki_duplicate_scope_deck => 'Seçili deste (ve alt desteleri)';
  @override
  String get anki_duplicate_scope_deck_root => 'Kök deste (tüm alt desteler)';
  @override
  String get anki_duplicate_scope_hint =>
      'Bir kartın zaten var olup olmadığı kontrol edilirken hangi destelerin arandığını belirler. Yalnızca AnkiConnect; AnkiDroid her zaman tüm koleksiyonu arar.';
  @override
  String get anki_error_ankidroid_unavailable =>
      'AnkiDroid is not installed (or its API is disabled), so card access cannot be granted. Install AnkiDroid and enable its API, or switch to AnkiConnect.';
  @override
  String get anki_error_ankimobile_no_decks =>
      'AnkiMobile returned no decks or note types.';
  @override
  String get anki_error_ankimobile_not_active =>
      'Fushi did not come back to the foreground in time, so the clipboard could not be read. Return to Fushi and try again.';
  @override
  String get anki_error_ankimobile_pasteboard_denied =>
      'iOS blocked reading the clipboard. Choose Allow Paste when returning to Fushi, then try again.';
  @override
  String get anki_error_ankimobile_pasteboard_empty =>
      'AnkiMobile did not return any configuration. Approve the request in AnkiMobile, then come back to Fushi.';
  @override
  String get anki_error_ankimobile_unavailable =>
      'Could not open AnkiMobile. Install AnkiMobile and try again.';
  @override
  String get anki_error_collection_unavailable =>
      'AnkiDroid koleksiyonu şu anda kullanılamıyor. AnkiDroid\'i en az bir kez açın, eşitleme yapmadığından ve API\'nin etkin olduğundan emin olun, ardından tekrar deneyin.';
  @override
  String get anki_error_connection_refused =>
      'Anki\'ye bağlanılamadı: bağlantı reddedildi. Anki Masaüstü\'nün çalıştığından ve AnkiConnect eklentisinin yüklü olduğundan emin olun.';
  @override
  String get anki_error_connection_timeout =>
      'Anki\'ye bağlanılamadı: bağlantı zaman aşımına uğradı. Sunucu, bağlantı noktası ve güvenlik duvarı ayarlarını kontrol edin.';
  @override
  String get anki_error_connection_unknown =>
      'Anki\'ye aktarılamadı: beklenmeyen bir bağlantı hatası oluştu. Ayrıntılar için hata günlüğüne bakın.';
  @override
  String get anki_error_field_mapping_mismatch =>
      'Alan eşlemelerinizin hiçbiri seçili not türüyle uyuşmuyor, bu yüzden Anki kartı reddetti. Alanları yeniden eşlemek için Anki ayarları\'nı açın veya \'Lapis destesi oluştur\' seçeneğini kullanın.';
  @override
  String get anki_error_first_field_empty =>
      'Seçili not türünün ilk alanı boş ve Anki böyle bir notu kabul etmiyor. Anki ayarları\'ndan buna bir alan eşleyin.';
  @override
  String get anki_error_http =>
      'Anki\'ye aktarılamadı: AnkiConnect ile iletişim kurulurken bir HTTP hatası oluştu.';
  @override
  String get anki_error_paired_device_unreachable =>
      'Kart oluşturulamadı çünkü hiçbir eşleştirilmiş cihaza ulaşılamadı. Eşleştirilmiş cihazda Fushi\'nin çalıştığından emin olun veya kartları yerel olarak oluşturmak için Anki ayarları\'ndan Eşleştirilmiş cihaza çıkar seçeneğini kapatın.';
  @override
  String get anki_error_permission_denied =>
      'AnkiDroid kart erişim izni vermedi. Görünen sistem izin iletişim kutusunu onaylayın, ardından dışa aktarmak için düğmeye tekrar dokunun.';
  @override
  String get anki_error_permission_permanently_denied =>
      'AnkiDroid card access was permanently denied, so the system no longer shows the permission dialog. Open app settings and grant the AnkiDroid permission, then try again.';
  @override
  String get anki_fetch => 'Desteleri ve not türlerini yenile';
  @override
  String get anki_fetching => 'Getiriliyor…';
  @override
  String get anki_field_mappings => 'Alan Eşlemeleri';
  @override
  String get anki_field_not_mapped => 'Eşlenmemiş';
  @override
  String get anki_lapis_apply => 'Stili Anki\'ye uygula';
  @override
  String get anki_lapis_apply_done =>
      'Lapis stili uygulandı. Önce bir yedek kaydedildi.';
  @override
  String anki_lapis_apply_failed({required Object error}) =>
      'Stil uygulanamadı: ${error}';
  @override
  String get anki_lapis_backup => 'Lapis şablonunu yedekle';
  @override
  String anki_lapis_backup_done({required Object path}) =>
      'Şablon yedeklendi: ${path}';
  @override
  String anki_lapis_backup_done_pruned({
    required Object path,
    required Object count,
  }) =>
      '${path} konumuna yedeklendi (${count} eski yedek 90 gün / 10 adet tutma politikasıyla temizlendi)';
  @override
  String anki_lapis_backup_failed({required Object error}) =>
      'Yedekleme başarısız: ${error}';
  @override
  String get anki_lapis_custom_css => 'Özel CSS';
  @override
  String get anki_lapis_custom_css_hint =>
      'Lapis stil sayfasına korumalı kullanıcı bölümünde eklenir.';
  @override
  String get anki_lapis_font_scale => 'Kart yazı ölçeği';
  @override
  String get anki_lapis_font_scale_hint =>
      'Tüm Lapis yazı boyutlarını ölçekler; "Stili Anki\'ye uygula" ile etkinleşir.';
  @override
  String get anki_lapis_foreign_edit_body =>
      'Anki\'deki Lapis şablonu, Fushi\'nin son uyguladığından farklı — elle düzenlenmiş olabilir. Uygulamak üzerine yazacaktır; önce bir yedek kaydedilir. Devam edilsin mi?';
  @override
  String get anki_lapis_foreign_edit_title => 'Şablon Anki\'de değiştirilmiş';
  @override
  String get anki_lapis_not_found => 'Anki\'de Lapis not türü bulunamadı.';
  @override
  String get anki_lapis_restore => 'Yedekten geri yükle';
  @override
  String get anki_lapis_restore_confirm =>
      'Anki\'deki Lapis şablonu bu yedekle üzerine yazılsın mı? Mevcut durum önce yedeklenir.';
  @override
  String get anki_lapis_restore_done => 'Şablon geri yüklendi.';
  @override
  String get anki_lapis_restore_empty => 'Henüz yedek yok.';
  @override
  String get anki_lapis_restore_factory => 'Fabrika Lapis\'i geri yükle';
  @override
  String get anki_lapis_restore_factory_confirm =>
      'Bu işlem, Anki\'deki Lapis stilini ve kart şablonlarını Fushi\'nin paketlenmiş sürümüyle üzerine yazar ve yazı tipi boyutunu, özel CSS\'yi ve özel alanları sıfırlar. Mevcut durumun yedeği önce kaydedilir. Kart verileri değiştirilmez.';
  @override
  String get anki_lapis_restore_factory_done =>
      'Lapis fabrika ayarlarına geri yüklendi';
  @override
  String anki_lapis_restore_factory_failed({required Object error}) =>
      'Geri yükleme başarısız: ${error}';
  @override
  String get anki_lapis_restore_factory_hint =>
      'Anki\'deki Lapis not türünü Fushi ile birlikte gelen sürümle üzerine yazın ve tüm özelleştirmeleri temizleyin.';
  @override
  String anki_lapis_restore_failed({required Object error}) =>
      'Geri yükleme başarısız: ${error}';
  @override
  String get anki_lapis_section => 'Lapis kart stili';
  @override
  String get anki_lapis_up_to_date => 'Lapis stili zaten güncel.';
  @override
  String get anki_lapis_visual_advanced_css => 'Gelişmiş CSS';
  @override
  String get anki_lapis_visual_alignment => 'Hizalama';
  @override
  String get anki_lapis_visual_back => 'Arka';
  @override
  String get anki_lapis_visual_background_color => 'Arka plan vurgusu';
  @override
  String get anki_lapis_visual_block_add => 'Alan ekle';
  @override
  String get anki_lapis_visual_block_anchor => 'Karttaki konum';
  @override
  String get anki_lapis_visual_block_anchor_above_definition =>
      'Cümlenin altında';
  @override
  String get anki_lapis_visual_block_anchor_above_sentence =>
      'Kelimenin altında';
  @override
  String get anki_lapis_visual_block_anchor_below_definition =>
      'Tanımların altında';
  @override
  String get anki_lapis_visual_block_anchor_bottom => 'Kartın altı';
  @override
  String get anki_lapis_visual_block_anchor_top => 'Kartın üstü';
  @override
  String get anki_lapis_visual_block_delete => 'Alanı sil';
  @override
  String get anki_lapis_visual_block_fields => 'Burada gösterilen alanlar';
  @override
  String anki_lapis_visual_block_name({required Object index}) =>
      'Alan ${index}';
  @override
  String get anki_lapis_visual_block_needs_note_type =>
      'Alan seçmek için önce bir not türü belirleyin.';
  @override
  String get anki_lapis_visual_block_no_fields => 'Henüz alan seçilmedi';
  @override
  String get anki_lapis_visual_blocks => 'Özel alanlar';
  @override
  String get anki_lapis_visual_blocks_hint =>
      'Mevcut alanları kartın başka bir yerinde gösterin. Yalnızca görüntüleme amaçlı: Anki alanı eklenmez veya silinmez.';
  @override
  String get anki_lapis_visual_bold => 'Kalın';
  @override
  String get anki_lapis_visual_border_color => 'Kenarlık rengi';
  @override
  String get anki_lapis_visual_border_width => 'Kenarlık';
  @override
  String get anki_lapis_visual_box_layout => 'Kutu görünümü';
  @override
  String get anki_lapis_visual_color => 'Metin rengi';
  @override
  String get anki_lapis_visual_color_custom => 'Özel';
  @override
  String get anki_lapis_visual_color_picker_title => 'Bir renk seçin';
  @override
  String get anki_lapis_visual_corner_radius => 'Köşe yarıçapı';
  @override
  String get anki_lapis_visual_default => 'Varsayılan';
  @override
  String get anki_lapis_visual_editing_now => 'Düzenleniyor';
  @override
  String get anki_lapis_visual_editor => 'Görsel düzenleyici';
  @override
  String get anki_lapis_visual_editor_hint =>
      'Lapis kartını önizleyin, ardından CSS yazmadan her alanın stilini, konumunu ve alan eşlemesini değiştirin.';
  @override
  String get anki_lapis_visual_field_definition_box => 'Tanım kutusu';
  @override
  String get anki_lapis_visual_field_definition_content => 'Tanımın tamamı';
  @override
  String get anki_lapis_visual_field_definition_example => 'Tanım örneği';
  @override
  String get anki_lapis_visual_field_definition_info => 'Tanım göstergesi';
  @override
  String get anki_lapis_visual_field_definition_info_note =>
      'Yalnızca birden fazla tanım bloğu içeren kartlarda görünür; tek tanımlı kartlarda gizlenir.';
  @override
  String get anki_lapis_visual_field_dictionary_entry => 'Sözlük girdisi';
  @override
  String get anki_lapis_visual_field_dictionary_name => 'Sözlük adı';
  @override
  String get anki_lapis_visual_field_dictionary_name_note =>
      'Fushi kartlarında bu etiket sözcük türü etiketlerini de taşır, bu nedenle ikisi ayrı ayrı biçimlendirilemez.';
  @override
  String get anki_lapis_visual_field_expression => 'Kelime';
  @override
  String get anki_lapis_visual_field_glossaries => 'Diğer tanımlar';
  @override
  String get anki_lapis_visual_field_primary_definition => 'Birincil tanım';
  @override
  String get anki_lapis_visual_field_reading => 'Okunuş';
  @override
  String get anki_lapis_visual_field_selected_definition => 'Seçili tanım';
  @override
  String get anki_lapis_visual_field_sentence => 'Cümle';
  @override
  String anki_lapis_visual_font_size({required Object percent}) =>
      'Yazı boyutu: ${percent}%';
  @override
  String get anki_lapis_visual_front => 'Ön';
  @override
  String get anki_lapis_visual_layout => 'Düzen';
  @override
  String get anki_lapis_visual_layout_audio => 'Ses düğmeleri';
  @override
  String get anki_lapis_visual_layout_audio_alt => 'Cümlenin içinde';
  @override
  String get anki_lapis_visual_layout_audio_fixed => 'Alta sabitlenmiş';
  @override
  String get anki_lapis_visual_layout_audio_header => 'Okunuşun yanında';
  @override
  String get anki_lapis_visual_layout_hint =>
      'Lapis\'in kendi düzen anahtarlarını kullanır, böylece masaüstü ve mobil Anki ikisi de bunu takip eder.';
  @override
  String get anki_lapis_visual_layout_picture => 'Görsel konumu';
  @override
  String get anki_lapis_visual_layout_picture_alt => 'Cümlenin içinde';
  @override
  String get anki_lapis_visual_layout_picture_left => 'Kelimenin solunda';
  @override
  String get anki_lapis_visual_layout_picture_right => 'Kelimenin sağında';
  @override
  String get anki_lapis_visual_layout_sentence => 'Cümle konumu';
  @override
  String get anki_lapis_visual_layout_sentence_above => 'Tanımların üstünde';
  @override
  String get anki_lapis_visual_layout_sentence_below => 'Tanımların altında';
  @override
  String get anki_lapis_visual_line_height => 'Satır yüksekliği';
  @override
  String get anki_lapis_visual_mapping_hint =>
      'Seçili alanı dolduran Anki alanları. Değişiklikler stille birlikte kaydedilir.';
  @override
  String get anki_lapis_visual_mapping_none =>
      'Bu alan şablonun kendisi tarafından çizilir ve kendine ait bir alanı yoktur.';
  @override
  String get anki_lapis_visual_margin => 'Dış boşluk';
  @override
  String get anki_lapis_visual_padding => 'İç boşluk';
  @override
  String get anki_lapis_visual_preview => 'Lapis kart önizlemesi';
  @override
  String get anki_lapis_visual_reset_field => 'Alanı sıfırla';
  @override
  String get anki_lapis_visual_select_field => 'Düzenlenecek alanı seçin';
  @override
  String get anki_lapis_visual_select_field_hint =>
      'Önizlemenin herhangi bir yerine tıklayın veya aşağıdan birini seçin. Seçtiğiniz şey, alttaki kontrollerin düzenlediği şeydir.';
  @override
  String get anki_lapis_visual_target_card_content => 'Kart içeriği';
  @override
  String get anki_lapis_visual_target_definition => 'Tanım';
  @override
  String get anki_lapis_visual_target_inside_definition => 'Tanım içinde';
  @override
  String get anki_mine_to_server => 'Eşleştirilmiş cihaza çıkar';
  @override
  String get anki_mine_to_server_hint =>
      'Çıkarılan kartları bu cihaz yerine eşleştirilmiş ana bilgisayarın Anki\'sine (onun desteleri ve ayarları) gönderir. Bir interconnect eşleştirmesi gerektirir.';
  @override
  String get anki_mined_action_add_duplicate => 'Yeni kart olarak ekle';
  @override
  String get anki_mined_action_overwrite => 'Bu kartın üzerine yaz';
  @override
  String get anki_mined_action_view => 'Anki\'de görüntüle / aç';
  @override
  String get anki_mined_card_subtitle =>
      'Eşleşen kartla ne yapılacağını seçin.';
  @override
  String get anki_mined_card_title => 'Kart zaten Anki\'de mevcut';
  @override
  String anki_mined_multiple_matches({required Object count}) =>
      '${count} eşleşen kart';
  @override
  String get anki_not_configured =>
      'Anki destelerinizi ve not türlerinizi yüklemek için Yenile\'ye dokunun.';
  @override
  String get anki_note_open_failed => 'Kart Anki\'de açılamadı.';
  @override
  String get anki_note_type => 'Not Türü';
  @override
  String get anki_note_viewer_empty => 'Bu kartın okunabilir alanı yok.';
  @override
  String get anki_note_viewer_open_in_anki => 'Anki\'de aç';
  @override
  String get anki_note_viewer_title => 'Mevcut kart';
  @override
  String get anki_open_no_card => 'Bu kelime için Anki\'de kart bulunamadı.';
  @override
  String get anki_overwrite_scope => 'Üzerine Yazma Aralığı';
  @override
  String get anki_overwrite_scope_all => 'Eşleşen tüm kartlar';
  @override
  String get anki_overwrite_scope_hint =>
      'Yeşil ✓ işaretinin daha önce oluşturulmuş hangi kartların üzerine yazabileceği';
  @override
  String get anki_overwrite_scope_latest => 'Yalnızca son kart';
  @override
  String get anki_refresh_hint =>
      'Anki\'de bir deste ya da not türü oluşturduktan veya yeniden adlandırdıktan sonra yenilemek için buraya dokunun.';
  @override
  String get anki_reposition_aggregate => 'Combine multiple dictionaries';
  @override
  String get anki_reposition_aggregate_harmonic => 'Harmonic mean';
  @override
  String get anki_reposition_aggregate_min => 'Lowest rank';
  @override
  String get anki_reposition_apply => 'Apply';
  @override
  String get anki_reposition_cancelled =>
      'Reorder cancelled; nothing was written.';
  @override
  String get anki_reposition_dicts_hint =>
      'Hidden frequency dictionaries are not loaded; unhide them in dictionary management first. Nothing selected means all loaded dictionaries.';
  @override
  String get anki_reposition_dicts_none =>
      'No frequency dictionaries are loaded.';
  @override
  String anki_reposition_done({required Object count}) =>
      'Repositioned ${count} new cards.';
  @override
  String anki_reposition_done_skipped({
    required Object count,
    required Object skipped,
  }) =>
      'Repositioned ${count} new cards; ${skipped} were skipped because they are no longer new.';
  @override
  String get anki_reposition_empty => 'This deck has no new cards.';
  @override
  String anki_reposition_failed({required Object error}) =>
      'Reorder failed: ${error}';
  @override
  String get anki_reposition_gather_order_hint =>
      'If the deck\'s options use random new card order, positions are ignored. Set the new card gather/sort order to sequential.';
  @override
  String get anki_reposition_hint =>
      'Rewrites the learning order of a deck\'s new cards so common words come first. Review cards are never touched.';
  @override
  String get anki_reposition_include_subdecks_hint =>
      'Includes subdecks; cards in filtered decks are skipped.';
  @override
  String get anki_reposition_no_frequency => 'no frequency';
  @override
  String anki_reposition_partial({
    required Object failed,
    required Object error,
  }) => '${failed} cards could not be written: ${error}';
  @override
  String get anki_reposition_preview => 'Preview';
  @override
  String get anki_reposition_progress_fetch => 'Reading cards from Anki…';
  @override
  String anki_reposition_progress_rank({
    required Object done,
    required Object total,
  }) => 'Looking up frequencies (${done}/${total})';
  @override
  String get anki_reposition_progress_title => 'Reordering new cards…';
  @override
  String get anki_reposition_progress_write => 'Writing positions…';
  @override
  String get anki_reposition_rare_first => 'Rare words first';
  @override
  String get anki_reposition_source => 'Frequency source';
  @override
  String get anki_reposition_source_dictionaries => 'Frequency dictionaries';
  @override
  String get anki_reposition_source_field => 'Note field';
  @override
  String get anki_reposition_source_field_hint =>
      'Reads the field mapped to {frequency-harmonic-rank} (FreqSort in Lapis); no dictionary lookup.';
  @override
  String anki_reposition_summary({
    required Object total,
    required Object ranked,
    required Object unranked,
    required Object changed,
  }) =>
      '${total} new cards: ${ranked} with frequency, ${unranked} without (kept at the end). ${changed} positions will change.';
  @override
  String get anki_reposition_title => 'Reorder new cards by frequency';
  @override
  String get anki_reposition_unchanged => 'Cards are already in this order.';
  @override
  String get anki_reposition_undo => 'Undo last reorder';
  @override
  String anki_reposition_undo_done({
    required Object count,
    required Object skipped,
  }) =>
      'Restored ${count} cards to their previous positions (${skipped} skipped).';
  @override
  String anki_reposition_undo_hint({required Object time}) =>
      'Restores the positions saved before the last reorder (${time}). Cards studied since then are left alone.';
  @override
  String get anki_reposition_unsupported => 'Only available with AnkiConnect.';
  @override
  String anki_select_handlebar({required Object field}) =>
      '${field} için değer seçin';
  @override
  String get anki_settings_label => 'Anki ayarları';
  @override
  String get anki_tag_default_section => 'Varsayılan etiketler';
  @override
  String get anki_tag_include_category => 'Kaynak kategorisi etiketi ekle';
  @override
  String get anki_tag_include_category_hint =>
      'Kitaplara "book", videolara "video", oyunlara "game"';
  @override
  String get anki_tag_include_fushi => '"fushi" etiketi ekle';
  @override
  String get anki_tag_include_fushi_hint =>
      'Fushi ile çıkarılan her kartı işaretle';
  @override
  String get anki_tags => 'Etiketler';
  @override
  String get anki_tags_hint => 'Her karta eklenen boşlukla ayrılmış etiketler';
  @override
  String get app_icon_label => 'Uygulama Simgesi';
  @override
  String get app_icon_presets => 'Hazır ayarlar';
  @override
  String get app_ui_scale => 'Arayüz boyutu';
  @override
  String get app_ui_scale_hint =>
      'Scales app text and spacing. Lower it on large screens if controls feel oversized.';
  @override
  String get app_version => 'Uygulama sürümü';
  @override
  String get apply_theme => 'Temayı uygula';
  @override
  String get asr_models_delete => 'Delete';
  @override
  String get asr_models_delete_confirm_message =>
      'Transcription in this language will need the model downloaded again.';
  @override
  String get asr_models_delete_confirm_title => 'Delete this model?';
  @override
  String asr_models_delete_done_freed({required Object size}) =>
      'Deleted, freed ${size}';
  @override
  String get asr_models_download => 'Download';
  @override
  String asr_models_download_failed({required Object error}) =>
      'Download failed: ${error}';
  @override
  String get asr_models_section => 'Speech recognition models';
  @override
  String get asr_models_section_summary =>
      'Cihaz üzerinde çalışan konuşma tanıma modelleri. Yalnızca ihtiyacınız olan dilleri indirin.';
  @override
  String asr_models_status_missing({required Object size}) =>
      'Not downloaded · ${size}';
  @override
  String asr_models_status_partial({
    required Object obtained,
    required Object total,
  }) => 'Partially downloaded · ${obtained} / ${total}';
  @override
  String asr_models_status_ready({required Object size}) =>
      'Downloaded · ${size} on disk';
  @override
  String get audio_clip_failed =>
      'Ses kesiti çıkarılamadı — ses kaynağı eksik veya okunamıyor olabilir';
  @override
  String get audio_import => 'Ses içe aktar';
  @override
  String get audio_panel_add_audio => 'Ses Ekle';
  @override
  String get audio_panel_auto => 'Otomatik';
  @override
  String get audio_panel_pick_new_subtitle => 'Yeni altyazı dosyası seç';
  @override
  String get audio_source_added => 'Ses kaynağı eklendi';
  @override
  String audio_source_dns_error({required Object host}) =>
      'Ses kaynağı bağlantısı başarısız: "${host}" çözümlenemedi — ağınızı kontrol edin veya bu kaynağı ayarlardan kaldırın';
  @override
  String get audio_source_edit_target_gone =>
      'Bu ses kaynağı artık mevcut değil — düzenleme iptal edildi';
  @override
  String get audio_source_edit_url => 'Ses kaynağı bağlantısını düzenle';
  @override
  String audio_source_error({required Object detail}) =>
      'Ses kaynağı hatası: ${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi Interconnect';
  @override
  String get audio_source_loopback_warning =>
      'Bu cihaza işaret ediyor — makine değiştirdikten sonra yeniden yönlendirin';
  @override
  String audio_source_request_error({required Object detail}) =>
      'Ses kaynağı isteği başarısız: ${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      'Ses kaynağı zaman aşımı: "${host}" — sunucu yanıt vermiyor, daha sonra tekrar deneyin veya kaynağı değiştirin';
  @override
  String get audio_source_updated => 'Ses kaynağı güncellendi';
  @override
  String get audio_source_url_invalid =>
      'Bağlantı http(s) olmalı ve bir terim ya da okuma yer tutucusu içermelidir';
  @override
  String get audio_unavailable => 'Ses bulunamadı.';
  @override
  String get audio_volume => 'Ses seviyesi';
  @override
  String get audiobook_attached => 'Sesli kitap eklendi';
  @override
  String get audiobook_audio_missing => 'Ses dosyası eksik';
  @override
  String get audiobook_background_play => 'Çıkıştan sonra çalmaya devam et';
  @override
  String get audiobook_background_play_hint =>
      'Kapalıyken, okuyucudan çıktığınızda sesli kitap çalması durur. Arka planda çalmaya devam etmek için açın.';
  @override
  String get audiobook_delete => 'Sesli kitabı sil';
  @override
  String get audiobook_delete_confirm =>
      'Ekli sesli kitap silinsin mi? Ses dosyaları bu cihazdan kaldırılacak.';
  @override
  String get audiobook_export_clip => 'Klip videosu dışa aktar';
  @override
  String get audiobook_export_clip_failed => 'Klip dışa aktarma başarısız';
  @override
  String get audiobook_export_clip_in_progress => 'Klip dışa aktarılıyor…';
  @override
  String get audiobook_export_clip_no_selection =>
      'Klip dışa aktarmak için önce metin seçin';
  @override
  String get audiobook_export_clip_no_text => 'Bu seçimde işlenecek metin yok';
  @override
  String get audiobook_export_clip_saved => 'Klip kaydedildi';
  @override
  String get audiobook_export_clip_too_long =>
      'Seçilen ses dışa aktarılamayacak kadar uzun (sınır: 5 dakika)';
  @override
  String get audiobook_export_clip_unsupported_range =>
      'Bu seçim dışa aktarılamaz (bölüm veya ses dosyası sınırını aşıyor)';
  @override
  String get audiobook_import => 'Sesli kitap içe aktar';
  @override
  String get audiobook_import_error => 'İçe aktarma başarısız';
  @override
  String audiobook_import_error_copy_failed({required Object name}) =>
      'Dosya kopyalanamadı: ${name}';
  @override
  String audiobook_import_error_disk_full({required Object size}) =>
      'Yeterli disk alanı yok. Gerekli: ${size}';
  @override
  String get audiobook_import_success => 'Sesli kitap içe aktarıldı';
  @override
  String get audiobook_load_error => 'Sesli kitap yüklenemedi.';
  @override
  String get audiobook_material_add_dir => 'Add folder';
  @override
  String get audiobook_material_library => 'Audiobook material library';
  @override
  String get audiobook_material_library_hint =>
      'Folders of subtitle and text files named by work id. Downloads are paired against them automatically.';
  @override
  String get audiobook_material_missing_dir => 'Missing';
  @override
  String get audiobook_material_none => 'No folders added yet';
  @override
  String audiobook_material_status({
    required Object dirs,
    required Object works,
  }) => '${dirs} folder(s), ${works} work(s) recognized';
  @override
  String get audiobook_pick_alignment => 'Hizalama dosyası seç';
  @override
  String get audiobook_reference_original => 'Orijinal dosyalara referans ver';
  @override
  String get audiobook_reference_original_desc =>
      'Sesi olduğu yerde tut ve orijinal yolundan çal; dosya taşınır veya silinirse kitap bozulur.';
  @override
  String get audiobook_relocate => 'Dosyayı yeniden konumlandır';
  @override
  String get audiobook_relocate_done => 'Ses yeniden konumlandırıldı';
  @override
  String get audiobook_rematch_all_zero =>
      'Tüm pencereler %0 skorladı, lütfen manuel ayarlayın';
  @override
  String audiobook_rematch_auto_failed({required Object error}) =>
      'Otomatik eşleştirme başarısız: ${error}';
  @override
  String get audiobook_rematch_auto_match => 'Otomatik eşleştir';
  @override
  String audiobook_rematch_auto_picked({
    required Object window,
    required Object pct,
  }) => '${window} otomatik seçildi (isabet ${pct}%)';
  @override
  String audiobook_rematch_default_value({required Object n}) =>
      'Varsayılan ${n}';
  @override
  String audiobook_rematch_failed({required Object error}) =>
      'Yeniden eşleştirme başarısız: ${error}';
  @override
  String audiobook_rematch_health_label({
    required Object pct,
    required Object detail,
  }) => '${pct} eşleşti — ${detail}';
  @override
  String get audiobook_rematch_matching => 'Eşleştiriliyor...';
  @override
  String get audiobook_rematch_no_chapters => 'EPUB\'de bölüm metni yok';
  @override
  String get audiobook_rematch_no_cues_to_match =>
      'Eşleştirilecek referans yok';
  @override
  String get audiobook_rematch_no_sections =>
      'Bölüm metni bulunamadı, otomatik eşleştirme yapılamaz';
  @override
  String get audiobook_rematch_no_stored_cues =>
      'Kayıtlı referans yok, yeniden çalıştırılamaz';
  @override
  String audiobook_rematch_result({
    required Object pct,
    required Object window,
  }) => 'Yeniden eşleştirildi: ${pct}% (pencere: ${window})';
  @override
  String get audiobook_rematch_search_window => 'Arama penceresi';
  @override
  String get audiobook_rematch_similarity_threshold => 'Benzerlik eşiği';
  @override
  String get audiobook_rematch_threshold_hint =>
      'Bulanık eşleştirme için minimum benzerlik (Dice katsayısı). Daha fazla metin farkını tolere etmek için düşürün, ancak çok düşük yanlış eşleşmelere neden olur.';
  @override
  String get audiobook_rematch_window_hint =>
      'Metinde referans başına ileri aranacak karakter sayısı. İsabet oranı düşükse ayarlayın; çok büyük değer kısa ve gürültülü referanslarda imleci kaydırabilir.';
  @override
  String get audiobook_subtitle_source_title => 'Subtitle source';
  @override
  String get audiobook_subtitle_source_transcribe_hint =>
      'Generate from the selected audio with the on-device speech model';
  @override
  String get audiobook_transcribe_accel_auto => 'Auto (GPU when available)';
  @override
  String get audiobook_transcribe_accel_coreml => 'CoreML (FP32)';
  @override
  String get audiobook_transcribe_accel_cpu => 'CPU only';
  @override
  String get audiobook_transcribe_accel_label => 'Acceleration';
  @override
  String get audiobook_transcribe_action => 'Generate subtitles on device';
  @override
  String get audiobook_transcribe_discard => 'Discard progress';
  @override
  String audiobook_transcribe_done({
    required Object cues,
    required Object segments,
  }) => 'Done: ${cues} cues from ${segments} speech segments';
  @override
  String get audiobook_transcribe_export => 'Export subtitle file';
  @override
  String get audiobook_transcribe_export_saved => 'Subtitle file saved';
  @override
  String audiobook_transcribe_failed({required Object error}) =>
      'Transcription failed: ${error}';
  @override
  String audiobook_transcribe_fallback({required Object reason}) =>
      'GPU unavailable, fell back to CPU: ${reason}';
  @override
  String get audiobook_transcribe_intro =>
      'Transcribes the audio locally with an on-device speech model for the selected language and generates subtitles for alignment. Nothing is uploaded.';
  @override
  String get audiobook_transcribe_language_label => 'Speech language';
  @override
  String get audiobook_transcribe_model_download => 'Download model';
  @override
  String audiobook_transcribe_model_download_needed({required Object size}) =>
      'Model download required: ${size}';
  @override
  String audiobook_transcribe_model_downloading({
    required Object name,
    required Object received,
    required Object total,
  }) => 'Downloading ${name}… ${received} / ${total}';
  @override
  String audiobook_transcribe_model_ready({required Object variant}) =>
      'Model ready (${variant})';
  @override
  String get audiobook_transcribe_needs_audio => 'Pick audio files first';
  @override
  String get audiobook_transcribe_pause => 'Pause';
  @override
  String get audiobook_transcribe_paused_hint =>
      'Progress is saved. Pick the same audio files later to resume.';
  @override
  String get audiobook_transcribe_pausing => 'Pausing at the next checkpoint…';
  @override
  String get audiobook_transcribe_preparing => 'Loading model…';
  @override
  String audiobook_transcribe_probe_failed({required Object reason}) =>
      'GPU detection failed, planning for CPU: ${reason}';
  @override
  String audiobook_transcribe_progress({
    required Object done,
    required Object total,
    required Object file,
    required Object files,
  }) => '${done} / ${total} · file ${file}/${files}';
  @override
  String get audiobook_transcribe_result_name =>
      'Generated by on-device transcription';
  @override
  String get audiobook_transcribe_resume => 'Resume transcription';
  @override
  String audiobook_transcribe_running_on({required Object provider}) =>
      'Running on ${provider}';
  @override
  String audiobook_transcribe_running_on_static({required Object provider}) =>
      'Running on ${provider} · fused static graph';
  @override
  String audiobook_transcribe_speed({
    required Object elapsed,
    required Object eta,
    required Object speed,
  }) => 'Elapsed ${elapsed} · remaining ${eta} · ${speed}× realtime';
  @override
  String get audiobook_transcribe_start => 'Start transcription';
  @override
  String get audiobook_transcribe_title => 'On-device transcription';
  @override
  String get audiobook_transcribe_unavailable =>
      'On-device transcription is not available on this platform';
  @override
  String get audiobook_transcribe_use_result => 'Use subtitles';
  @override
  String get auto_add_book_name_to_tags =>
      'Kitap başlığını otomatik olarak etiketlere ekle';
  @override
  String auto_chapter({required Object n}) => 'Bölüm ${n}';
  @override
  String get auto_read_on_lookup => 'Aramada kelimeyi otomatik oku';
  @override
  String get auto_search => 'Otomatik arama';
  @override
  String get auto_search_debounce_delay => 'Otomatik arama gecikmesi';
  @override
  String get auto_select_search_window => 'Arama penceresini otomatik seç';
  @override
  String get auto_select_search_window_hint =>
      'İçe aktarmada birden fazla pencere boyutunu dene ve en iyi isabet oranına sahip olanı seç';
  @override
  String get av_sync => 'A/V Senkronizasyonu';
  @override
  String get av_sync_reset => 'Sıfırla';
  @override
  String get back => 'Geri';
  @override
  String get backup_category_audiobooks => 'Sesli kitap sesi';
  @override
  String get backup_category_audiobooks_desc =>
      'Sesli kitap sesleri ve hizalama';
  @override
  String get backup_category_books => 'Kitaplar';
  @override
  String get backup_category_books_desc =>
      'Kitap dosyaları (EPUB ve çıkarılmış içerik)';
  @override
  String get backup_category_dictionary => 'Sözlükler';
  @override
  String get backup_category_dictionary_desc =>
      'İçe aktarılmış sözlükler ve dosyaları';
  @override
  String get backup_category_fonts => 'Özel yazı tipleri';
  @override
  String get backup_category_fonts_desc =>
      'İçe aktarılmış özel yazı tipi dosyaları';
  @override
  String get backup_category_local_audio => 'Yerel ses veritabanları';
  @override
  String get backup_category_local_audio_desc =>
      'Yerel telaffuz ses veritabanları';
  @override
  String get backup_category_profiles => 'Profiller';
  @override
  String get backup_category_profiles_desc => 'Yapılandırma profilleri';
  @override
  String get backup_category_progress => 'Okuma ilerlemesi';
  @override
  String get backup_category_progress_desc => 'Okuma konumları ve yer imleri';
  @override
  String get backup_category_settings => 'Ayarlar';
  @override
  String get backup_category_settings_desc => 'Uygulama ve okuyucu ayarları';
  @override
  String get backup_category_statistics => 'İstatistikler';
  @override
  String get backup_category_statistics_desc =>
      'Okuma, video ve kart çıkarma istatistikleri';
  @override
  String get backup_category_videos => 'Videolar';
  @override
  String get backup_category_videos_desc => 'Yerel video dosyaları';
  @override
  String get backup_export => 'Yedeği Dışa Aktar';
  @override
  String get backup_export_books_all => 'Tüm kitaplar';
  @override
  String backup_export_books_selected({required Object count}) =>
      '${count} kitap seçildi';
  @override
  String get backup_export_categories_hint =>
      'Yedeğe dahil edilecekleri işaretleyin. Kitaplar seçeneğinin işaretini kaldırmak o kitapları tamamen siler — içerikleri ve kayıtları da onlarla birlikte gider.';
  @override
  String get backup_export_categories_title =>
      'Neyin dışa aktarılacağını seçin';
  @override
  String get backup_export_choose_books => 'Kitapları seçin';
  @override
  String get backup_export_choose_videos => 'Videoları seçin';
  @override
  String backup_export_dictionaries_skipped({
    required Object n,
    required Object names,
  }) =>
      'Exported, but ${n} dictionary(s) were skipped: their files are missing on this device (${names})';
  @override
  String backup_export_failed({required Object message}) =>
      'Yedek dışa aktarılamadı: ${message}';
  @override
  String get backup_export_hint =>
      'Nelerin dâhil edileceğini seçin; veritabanı (kitaplar, ilerleme, istatistikler) her zaman dâhildir. Yedeği küçültmek için büyük öğelerin (yerel ses, videolar) işaretini kaldırın.';
  @override
  String get backup_export_no_books => 'Seçilecek kitap yok';
  @override
  String get backup_export_no_videos => 'Seçilecek video yok';
  @override
  String get backup_export_select_all => 'Tümünü seç';
  @override
  String get backup_export_select_none => 'Hiçbirini seçme';
  @override
  String get backup_export_success => 'Yedek başarıyla dışa aktarıldı';
  @override
  String get backup_export_videos_all => 'Tüm videolar';
  @override
  String backup_export_videos_selected({required Object count}) =>
      '${count} video seçildi';
  @override
  String get backup_exporting => 'Yedek oluşturuluyor…';
  @override
  String get backup_import => 'Yedeği İçe Aktar';
  @override
  String backup_import_confirm({
    required Object date,
    required Object bookCount,
    required Object statsCount,
  }) =>
      'Bu işlem tüm mevcut verileri ${date} tarihli yedekle değiştirir.\n\n${bookCount} kitap, ${statsCount} istatistik kaydı.\n\nGeri yüklemeden sonra uygulama yeniden başlatılacak.';
  @override
  String get backup_import_confirm_title => 'Yedek Geri Yüklensin mi?';
  @override
  String get backup_import_contents_hint =>
      'Atlamak istediğiniz öğenin işaretini kaldırın.';
  @override
  String get backup_import_contents_title => 'Bu yedek şunları içeriyor';
  @override
  String backup_import_failed({required Object message}) =>
      'Yedek içe aktarılamadı: ${message}';
  @override
  String get backup_import_hint =>
      'Bir yedek dosyasından geri yükle. Uygulama yeniden başlatılacak.';
  @override
  String get backup_import_invalid => 'Geçersiz yedek dosyası';
  @override
  String backup_import_merge_preview({
    required Object bookCount,
    required Object progressCount,
  }) =>
      'Birleştirme ${bookCount} kitap ekleyecek ve ${progressCount} okuma konumunu güncelleyecek.';
  @override
  String get backup_import_mode_label => 'İçe aktarma modu';
  @override
  String get backup_import_mode_merge => 'Mevcut kütüphaneyle birleştir';
  @override
  String get backup_import_mode_overwrite => 'Tüm kütüphanenin üzerine yaz';
  @override
  String get backup_import_overlay_title => 'Yedek içe aktarılıyor';
  @override
  String get backup_import_overlay_warning =>
      'Verileriniz geri yükleniyor. Lütfen uygulamayı kapatmayın.';
  @override
  String get backup_import_preserve_sync_note =>
      'Bu cihazdaki eşitleme ayarlarınız (hesap ve kimlik bilgileri) korunacak.';
  @override
  String get backup_import_restart_button => 'Şimdi yeniden başlat';
  @override
  String get backup_import_settings_off_hint =>
      'Bu cihazın yazı tipleri/görünümü/profilleri korunur; yalnızca kitaplar ve okuma verileri geri yüklenir.';
  @override
  String get backup_import_settings_on_hint =>
      'Tam geri yükleme: yazı tipleri, görünüm ve profiller yedekten gelir.';
  @override
  String get backup_import_settings_toggle =>
      'Ayarları ve profilleri içe aktar';
  @override
  String get backup_import_success =>
      'Yedek geri yüklendi. Yeniden başlatılıyor…';
  @override
  String get backup_import_validating_hint =>
      'Yedek dosyası kontrol edilip önizleniyor. Bu biraz zaman alabilir.';
  @override
  String get backup_import_validating_title => 'Yedek okunuyor…';
  @override
  String backup_schema_newer({required Object version}) =>
      'Bu yedek uygulamanın daha yeni bir sürümünü gerektiriyor (şema ${version}). Lütfen önce güncelleyin.';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      '${n} öğe koleksiyona eklendi.';
  @override
  String batch_delete_confirm({required Object n}) =>
      '${n} kitap silinsin mi? Bu işlem geri alınamaz.';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      '${n} video silinsin mi? Bu işlem geri alınamaz.';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      '${n} medya silinsin ve ${m} koleksiyon dağıtılsın mı? Bu işlem geri alınamaz.';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      '${n} medya silindi, ${m} koleksiyon dağıtıldı.';
  @override
  String batch_delete_success({required Object n}) => '${n} kitap silindi.';
  @override
  String batch_delete_success_video({required Object n}) =>
      '${n} video silindi.';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      '${m} koleksiyon dağıtılsın mı? Gruplama kaldırılır; medya korunur.';
  @override
  String batch_dissolve_success({required Object m}) =>
      '${m} koleksiyon dağıtıldı.';
  @override
  String batch_hidden_by_filter_note({required Object n}) =>
      'Seçili ${n} öğe daha geçerli filtre tarafından gizlendi ve işlenmeyecek.';
  @override
  String get batch_invert_selection => 'Tersine Çevir';
  @override
  String get batch_select => 'Seç';
  @override
  String get batch_select_all => 'Tümü';
  @override
  String batch_selected_count({required Object n}) => '${n} seçildi';
  @override
  String batch_selection_stale_skipped({
    required Object n,
    required Object m,
  }) => 'Seçilen ${n} öğeden artık mevcut olmayan ${m} tanesi atlandı';
  @override
  String get batch_tag_add => 'Ekle';
  @override
  String batch_tag_added({required Object name, required Object n}) =>
      '"${name}" etiketi ${n} kitaba eklendi.';
  @override
  String batch_tag_added_video({required Object n, required Object name}) =>
      '${n} videoya "${name}" etiketi eklendi.';
  @override
  String get batch_tag_apply => 'Uygula';
  @override
  String get batch_tag_keep => 'Koru';
  @override
  String get batch_tag_remove => 'Kaldır';
  @override
  String batch_tag_removed({required Object name, required Object n}) =>
      '"${name}" etiketi ${n} kitaptan kaldırıldı.';
  @override
  String batch_tag_removed_video({required Object n, required Object name}) =>
      '${n} videodan "${name}" etiketi kaldırıldı.';
  @override
  String get batch_tag_title => 'Etiketleri Yönet';
  @override
  String get book_continue_reading => 'Continue Reading';
  @override
  String get book_convert_blocked_already => 'Bu kitap zaten o formatta.';
  @override
  String get book_convert_blocked_no_original =>
      'Bu manga görsellerden içe aktarıldı, bu nedenle geri dönüştürülecek orijinal bir kitap yok.';
  @override
  String get book_convert_blocked_source_missing =>
      'Kaynak dosyalar diskten silindi.';
  @override
  String get book_convert_blocked_text_only =>
      'Bu, sayfa görseli olmayan bir metin kitabı. Yalnızca taranmış görsel kitaplar manga olabilir.';
  @override
  String get book_convert_done => 'Dönüştürme tamamlandı';
  @override
  String get book_convert_failed => 'Dönüştürme başarısız';
  @override
  String get book_convert_running => 'Dönüştürülüyor…';
  @override
  String get book_convert_to_book_action => 'Kitaba geri dönüştür';
  @override
  String get book_convert_to_manga_action => 'Manga\'ya dönüştür';
  @override
  String get book_css_editor_cancel => 'İptal';
  @override
  String get book_css_editor_confirm_reset =>
      'Bu dosyanın CSS\'i varsayılana sıfırlansın mı?';
  @override
  String get book_css_editor_confirm_reset_all =>
      'TÜM dosyaların CSS\'i varsayılana sıfırlansın mı?';
  @override
  String get book_css_editor_discard => 'Vazgeç';
  @override
  String get book_css_editor_edit_css => 'Kitap CSS\'ini Düzenle';
  @override
  String get book_css_editor_no_css_files =>
      'Bu kitapta CSS dosyası bulunamadı.';
  @override
  String get book_css_editor_no_extract_dir =>
      'Kitap klasörü bulunamadı. CSS düzenlemek için kitabı yeniden içe aktarın.';
  @override
  String get book_css_editor_reset_all => 'Tümünü Sıfırla';
  @override
  String get book_css_editor_reset_current => 'Mevcut Olanı Sıfırla';
  @override
  String get book_css_editor_reset_done => 'CSS sıfırlandı.';
  @override
  String get book_css_editor_save => 'Kaydet';
  @override
  String get book_css_editor_saved => 'CSS kaydedildi.';
  @override
  String get book_css_editor_title => 'Kitap CSS Düzenleyici';
  @override
  String get book_css_editor_unsaved_changes => 'Kaydedilmemiş Değişiklikler';
  @override
  String get book_css_editor_unsaved_changes_message =>
      'Kaydedilmemiş değişiklikleriniz var. Vazgeçilsin mi?';
  @override
  String get book_directory_not_found => 'Kitap klasörü bulunamadı.';
  @override
  String get book_edit_author => 'Yazar';
  @override
  String get book_file_not_found => 'Kitap dosyası bulunamadı';
  @override
  String get book_import_duplicate_cancel => 'Hayır, iptal et';
  @override
  String get book_import_duplicate_cancelled => 'İçe aktarma iptal edildi';
  @override
  String get book_import_duplicate_keep => 'Evet, sonek ekle';
  @override
  String book_import_duplicate_message({required Object name}) =>
      '"${name}" adlı bir kitap zaten var. Yine de içe aktarılsın mı? "Evet" numaralı bir sonekle içe aktarır; "Hayır" iptal eder.';
  @override
  String get book_import_duplicate_title => 'Yinelenen kitap';
  @override
  String get book_import_folder_as_source_hint =>
      'Yeni kitaplar için bu klasörü taramaya devam et';
  @override
  String get book_language_action => 'İçerik dili';
  @override
  String get book_language_description =>
      'Bu kitabın metnini hangi yazı tipinin oluşturacağını belirler. Otomatik, EPUB\'da beyan edilen dili kullanır.';
  @override
  String get book_mark_completed_action => 'Tamamlandı olarak işaretle';
  @override
  String get book_mark_uncompleted_action => 'Tamamlanmadı olarak işaretle';
  @override
  String get book_marked_completed => 'Tamamlandı olarak işaretlendi';
  @override
  String get book_marked_uncompleted => 'Tamamlanmadı olarak işaretlendi';
  @override
  String get book_mode => 'Kitap Modu';
  @override
  String book_read_progress({required Object percent}) => '%${percent} okundu';
  @override
  String get book_scrape_cover => 'Kapağı çevrimiçi ara';
  @override
  String get book_scrape_empty => 'Eşleşen kapak yok';
  @override
  String get book_scrape_failed => 'Kapak getirilemedi';
  @override
  String get book_scrape_hint => 'Kitap başlığı / yazar';
  @override
  String get book_scrape_search => 'Ara';
  @override
  String get book_scrape_search_failed =>
      'Arama başarısız. Tekrar denemek için Ara\'ya dokunun.';
  @override
  String get book_scrape_title => 'Kapağı çevrimiçi eşleştir';
  @override
  String get book_scrape_use => 'Kullan';
  @override
  String get book_search => 'Kitapta ara';
  @override
  String get book_search_hint => 'Aranacak metni girin…';
  @override
  String get book_search_no_results => 'Sonuç bulunamadı';
  @override
  String book_search_results({required Object n}) => '${n} sonuç';
  @override
  String get books => 'Kitaplar';
  @override
  String get browser_extension_enable_server_first =>
      'İpucu: önce "Yomitan API sunucusu"nu etkinleştirin ve yukarıda bir API anahtarı ayarlayın, böylece uzantı çalışan bir bağlantıyla otomatik yapılandırılır.';
  @override
  String get browser_extension_mobile_unsupported =>
      'Mobil tarayıcılar bu uzantıyı yükleyemez. Bunun yerine okuyucu veya video oynatıcıdaki uygulama içi aramayı kullanın.';
  @override
  String get browser_extension_prepare_button => 'Uzantı dosyalarını hazırla';
  @override
  String get browser_extension_prepare_hint =>
      'Arama sunucusunu başlatır ve uzantıyı yerel olarak açar; klasör yolu panoya kopyalanır.';
  @override
  String get browser_extension_reinstall_button =>
      'Yeniden hazırla / dosyaları yenile';
  @override
  String get browser_extension_server_off => 'Arama sunucusu kapalı';
  @override
  String get browser_extension_server_on => 'Arama sunucusu açık';
  @override
  String get browser_extension_status_connected => 'Uzantı bağlandı';
  @override
  String get browser_extension_status_never => 'Uzantı henüz algılanmadı';
  @override
  String get browser_extension_step_dev_mode =>
      '"Geliştirici modu"nu açın (sağ üst köşedeki anahtar).';
  @override
  String get browser_extension_step_done_auto =>
      'Tamamlandı. Uzantı, aramalar için Fushi\'ye bağlanmak üzere zaten yapılandırıldı — elle doldurulacak bir şey yok.';
  @override
  String get browser_extension_step_load_unpacked =>
      '"Paketlenmemiş yükle"ye tıklayın.';
  @override
  String get browser_extension_step_open_page =>
      'Tarayıcı uzantıları sayfasını açın:';
  @override
  String get browser_extension_step_pick_folder =>
      'Aşağıdaki uzantı klasörünü seçin (yolu zaten panonuza kopyalandı).';
  @override
  String get browser_extension_step_verify =>
      'Uzantının yüklendiğini ve bağlandığını doğrulayın';
  @override
  String get browser_extension_verify_button => 'Bağlantıyı kontrol et';
  @override
  String get browser_extension_verify_checking => 'Kontrol ediliyor…';
  @override
  String get browser_extension_verify_connected =>
      'Uzantı algılandı ve bağlandı.';
  @override
  String get browser_extension_verify_not_detected =>
      'Henüz uzantı algılanmadı. Tarayıcınızda yüklendiğinden ve etkinleştirildiğinden emin olun, ardından tekrar kontrol edin.';
  @override
  String get browser_extension_version_app => 'Uygulama ile gelen';
  @override
  String get browser_extension_version_browser => 'Tarayıcıda yüklü';
  @override
  String get browser_extension_version_label => 'Uzantı sürümü';
  @override
  String get browser_extension_version_mismatch =>
      'Tarayıcınızda yüklü uzantı güncel değil. Gerekirse uzantıyı yeniden hazırlayın, ardından tarayıcınızın uzantılar sayfasından (chrome://extensions) yeniden yükleyin.';
  @override
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      '${port} bağlantı noktası başka bir işlem tarafından kullanılıyor (genellikle yomitan-api bileşeni — tarayıcınız tarafından başlatılan bir Python işlemi). Bu işlemi sonlandırın veya Yomitan\'ın gelişmiş ayarlarında Yomitan API\'yi devre dışı bırakın, ardından Fushi\'de Yomitan API sunucusunu tekrar etkinleştirin.';
  @override
  String get cancel => 'İptal';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      'Kart kapağı durağan kareye düştü (animasyonlu klip kullanılamıyor): ${reason}';
  @override
  String get card_duplicate => 'Tekrar kart — dışa aktarılmadı.';
  @override
  String get card_export_failed => 'Kart dışa aktarılamadı.';
  @override
  String card_export_failed_detail({required Object reason}) =>
      'Kart dışa aktarılamadı: ${reason}';
  @override
  String get card_export_not_configured =>
      'Anki yapılandırılmadı. Anki ayarlarını açın ve Getir\'e dokunun.';
  @override
  String card_exported({required Object deck}) =>
      'Kart 『${deck}』 destesine aktarıldı.';
  @override
  String card_exported_audio_failed({required Object reason}) =>
      'Kart aktarıldı ancak ses indirilemedi (${reason}).';
  @override
  String get card_mined_no_sentence_captured =>
      'Kart oluşturuldu, ancak cümle yakalanamadı (kelimeyi yeniden seçin veya bu metinde tanınabilir bir cümle yok).';
  @override
  String get card_mined_unmapped_sentence_audio_field =>
      'Kart cümle sesiyle oluşturuldu, ancak Anki not türünüzde buna eşlenmiş bir alan yok. Bir alanı {sentence-audio} ile eşleyin.';
  @override
  String get card_mined_unmapped_sentence_field =>
      'Kart oluşturuldu, ancak Anki not türünüzde cümleye eşlenmiş bir alan yok. Ayarlar -> \'Lapis destesi oluştur\' seçeneğini kullanın veya bir alanı {sentence} ile eşleyin.';
  @override
  String get card_mined_without_sentence_audio =>
      'Kart cümle sesi olmadan oluşturuldu (bu seçim için bulunamadı).';
  @override
  String get card_mining_pending => 'Kart ekleniyor…';
  @override
  String card_overwritten({required Object deck}) =>
      'Kart 『${deck}』 destesinde üzerine yazıldı.';
  @override
  String get change_source => 'Kaynağı değiştir';
  @override
  String get changelog_empty =>
      'Değişiklik günlüğü bulunamadı. Ağ veya proxy ayarlarınızı kontrol edin.';
  @override
  String get changelog_open_releases => 'Sürümler sayfasını aç';
  @override
  String get changelog_prerelease => 'Ön sürüm';
  @override
  String chapter_progress({
    required Object idx,
    required Object total,
    required Object suffix,
    required Object pct,
  }) => 'Bölüm ${idx} / ${total}${suffix} · ${pct}%';
  @override
  String get clear => 'Temizle';
  @override
  String get clear_dictionary_description =>
      'Geçmişteki tüm sözlük sonuçları temizlenecek. Emin misiniz?';
  @override
  String get clear_dictionary_title => 'Sözlük sonuç geçmişini temizle';
  @override
  String get collapse_dictionaries => 'Sözlükleri daralt';
  @override
  String get collection_add_failed =>
      'Öğe koleksiyona eklenemedi. Lütfen tekrar deneyin.';
  @override
  String get collection_already_has_item => 'Bu öğe zaten koleksiyonda.';
  @override
  String get collection_bookmark => 'Yer İmi';
  @override
  String get collection_clear_confirm =>
      'Seçili koleksiyonlar kalıcı olarak silinsin mi? Bu işlem geri alınamaz.';
  @override
  String get collection_clear_scope => 'Kapsam temizle';
  @override
  String get collection_collapse => 'Daralt';
  @override
  String collection_continue_progress({required Object n}) => 'Devam · BL ${n}';
  @override
  String get collection_empty => 'Koleksiyon boş';
  @override
  String get collection_episode_download => 'Bu bölümü indir';
  @override
  String get collection_episode_fill_missing => 'Eksik bölümleri tamamla';
  @override
  String get collection_episode_no_missing => 'Eksik bölüm yok';
  @override
  String get collection_episode_rename =>
      'Taramadan bölümleri yeniden adlandır';
  @override
  String collection_episode_rename_apply({required Object n}) =>
      '${n} bölümü yeniden adlandır';
  @override
  String get collection_episode_rename_empty =>
      'Yeniden adlandırılacak bir şey yok';
  @override
  String collection_episode_rename_partial({
    required Object n,
    required Object m,
  }) => '${n} bölüm yeniden adlandırıldı, ${m} başarısız';
  @override
  String get collection_episode_rename_title => 'Bölümleri yeniden adlandır';
  @override
  String collection_episode_watched_at({required Object position}) =>
      '${position} konumuna kadar izlendi';
  @override
  String get collection_expand => 'Genişlet';
  @override
  String get collection_export_all_books => 'Tüm kitaplar';
  @override
  String get collection_export_all_mined => 'Tüm çıkarılmış cümleler';
  @override
  String get collection_export_all_sources => 'Tüm kaynaklar';
  @override
  String get collection_export_all_words => 'Tüm favori kelimeler';
  @override
  String get collection_export_dedupe => 'Cümleye göre tekilleştir';
  @override
  String get collection_export_failed => 'Dışa aktarma başarısız';
  @override
  String get collection_export_favorites_scope => 'Favori cümleler';
  @override
  String get collection_export_format => 'Biçim';
  @override
  String get collection_export_mined_title => 'Mined Sentences';
  @override
  String get collection_export_no_items => 'Dışa aktarılacak bir şey yok';
  @override
  String get collection_export_pick_book => 'Bir kitap seçin';
  @override
  String get collection_export_pick_source => 'Bir kaynak seçin';
  @override
  String get collection_export_save => 'Save Export';
  @override
  String get collection_export_saved => 'Dışa aktarma kaydedildi';
  @override
  String get collection_export_scope => 'Dışa aktarma kapsamı';
  @override
  String get collection_export_sentences_title => 'Favorite Sentences';
  @override
  String get collection_export_words_title => 'Favorite Words';
  @override
  String get collection_group_extras => 'Ekstralar ve PV';
  @override
  String collection_group_season({required Object n}) => 'Sezon ${n}';
  @override
  String collection_hero_total_episodes({required Object count}) =>
      '${count} bölüm';
  @override
  String get collection_loading_hint =>
      'Koleksiyonlar yükleniyor ve ses dosyaları eşleştiriliyor…';
  @override
  String get collection_member_removed => 'Koleksiyondan kaldırıldı';
  @override
  String get collection_merge_title => 'Koleksiyonları birleştir';
  @override
  String get collection_merged => 'Koleksiyonlar birleştirildi.';
  @override
  String get collection_mined => 'Çıkarılan';
  @override
  String get collection_open => 'Aç';
  @override
  String get collection_play => 'Oynat';
  @override
  String get collection_related_title => 'İlgili eserler';
  @override
  String get collection_relation_bind => 'Mevcut koleksiyona bağla';
  @override
  String collection_relation_bound({required Object name}) =>
      '${name} öğesine bağlandı';
  @override
  String get collection_relation_download => 'İndir';
  @override
  String get collection_relation_movie => 'Film';
  @override
  String get collection_relation_other => 'İlgili';
  @override
  String get collection_relation_prequel => 'Öncül';
  @override
  String get collection_relation_sequel => 'Devam';
  @override
  String get collection_relation_side_story => 'Yan hikaye';
  @override
  String get collection_relation_spin_off => 'Türev yapım';
  @override
  String get collection_remove_member => 'Koleksiyondan kaldır';
  @override
  String get collection_remove_member_confirm =>
      'Bu öğe koleksiyondan kaldırılsın mı? Öğenin kendisi korunur.';
  @override
  String get collection_sentence => 'Cümle';
  @override
  String get collection_sort_by_imported => 'İçe aktarma tarihine göre sırala';
  @override
  String get collection_sort_by_season => 'Sezona göre sırala';
  @override
  String get collection_sort_by_title => 'Ada göre sırala';
  @override
  String get collection_split_by_season => 'Sezona göre böl';
  @override
  String get collection_split_confirm => 'Böl';
  @override
  String collection_split_done({required Object n}) =>
      '${n} koleksiyona bölündü';
  @override
  String get collection_split_keep_original => 'Orijinal koleksiyonu koru';
  @override
  String get collection_split_move_to => 'Taşı';
  @override
  String get collection_split_new_group => 'Yeni grup';
  @override
  String collection_split_selected({required Object n}) => '${n} seçildi';
  @override
  String get collection_view_all => 'Tümünü görüntüle';
  @override
  String collection_watched_progress({
    required Object done,
    required Object total,
  }) => '${done}/${total} izlendi';
  @override
  String get collection_word => 'Kelime';
  @override
  String get collections => 'Koleksiyonlar';
  @override
  String get columns_per_page => 'Sayfa başına sütun';
  @override
  String get combine_into_series => 'Seri olarak birleştir';
  @override
  String get common_more_actions => 'Diğer işlemler';
  @override
  String get copied => 'Kopyalandı';
  @override
  String get copied_to_clipboard => 'Panoya kopyalandı.';
  @override
  String get copy => 'Kopyala';
  @override
  String get copy_error => 'Hatayı Kopyala';
  @override
  String get crash_dump_empty => 'Çökme dökümü yok';
  @override
  String crash_dump_label({required Object n}) => 'Çökme Dökümleri (${n})';
  @override
  String get crash_dump_open_folder => 'Döküm klasörünü aç';
  @override
  String get crash_dump_privacy_notice =>
      'Çökme dökümleri (.dmp) süreç belleğinin bir anlık görüntüsünü içerir ve okumakta olduğunuz metni, aradığınız sözcükleri veya diğer uygulama içi verileri içerebilir. Bunları yalnızca güvendiğiniz geliştiricilerle paylaşın.';
  @override
  String get crash_dump_share => 'Dökümü paylaş';
  @override
  String get crash_dump_share_subject => 'Fushi Çökme Dökümü';
  @override
  String get create_series => 'Seri oluştur';
  @override
  String get creator_action_add_to_stash => 'Saklamaya ekle';
  @override
  String get creator_action_copy_to_clipboard => 'Panoya kopyala';
  @override
  String get creator_action_play_audio => 'Ses çal';
  @override
  String get creator_action_share => 'Paylaş';
  @override
  String get creator_enhancement_audio_recorder => 'Ses kaydı';
  @override
  String get creator_enhancement_camera => 'Kamera';
  @override
  String get creator_enhancement_clear_field => 'Alanı temizle';
  @override
  String get creator_enhancement_crop_image => 'Görseli kırp';
  @override
  String get creator_enhancement_local_audio => 'Yerel ses';
  @override
  String get creator_enhancement_open_stash => 'Saklamayı aç';
  @override
  String get creator_enhancement_pick_audio => 'Ses seç';
  @override
  String get creator_enhancement_pick_image => 'Görsel seç';
  @override
  String get creator_enhancement_pop_from_stash => 'Saklamadan al';
  @override
  String get creator_enhancement_save_tags => 'Etiketleri kaydet';
  @override
  String get creator_enhancement_search_dictionary => 'Sözlükte ara';
  @override
  String get creator_enhancement_sentence_picker => 'Cümle seç';
  @override
  String get creator_enhancement_text_segmentation => 'Metin bölümleme';
  @override
  String get creator_export_card => 'Kart oluştur';
  @override
  String get creator_field_audio => 'Terim sesi';
  @override
  String get creator_field_audio_sentence => 'Cümle sesi';
  @override
  String get creator_field_cloze_after => 'Boşluk sonrası';
  @override
  String get creator_field_cloze_before => 'Boşluk öncesi';
  @override
  String get creator_field_cloze_inside => 'Boşluk içeriği';
  @override
  String get creator_field_collapsed_meaning => 'Daraltılmış anlam';
  @override
  String get creator_field_context => 'Bağlam';
  @override
  String get creator_field_cue_sentence => 'Altyazı cümlesi';
  @override
  String get creator_field_expanded_meaning => 'Genişletilmiş anlam';
  @override
  String get creator_field_frequency => 'Sıklık';
  @override
  String get creator_field_furigana => 'Furigana';
  @override
  String get creator_field_hidden_meaning => 'Gizli anlam';
  @override
  String get creator_field_image => 'Görsel';
  @override
  String get creator_field_meaning => 'Anlam';
  @override
  String get creator_field_notes => 'Notlar';
  @override
  String get creator_field_pitch_accent => 'Ton vurgusu';
  @override
  String get creator_field_reading => 'Okuma';
  @override
  String get creator_field_sentence => 'Cümle';
  @override
  String get creator_field_tags => 'Etiketler';
  @override
  String get creator_field_term => 'Terim';
  @override
  String get custom_dict_css => 'Özel CSS';
  @override
  String get custom_dict_css_global => 'Genel (tüm sözlükler)';
  @override
  String get custom_fonts => 'Özel yazı tipleri';
  @override
  String get custom_fonts_add_system => 'Sistem yazı tipi ekle';
  @override
  String get custom_fonts_archive_error => 'Arşiv çıkarılamadı';
  @override
  String get custom_fonts_catalog_title => 'Yazı tipi kitaplığı';
  @override
  String get custom_fonts_download_failed => 'İndirme başarısız';
  @override
  String get custom_fonts_downloading => 'İndiriliyor…';
  @override
  String get custom_fonts_drag_hint =>
      'Yazı tipi önceliğini değiştirmek için sürükleyin';
  @override
  String get custom_fonts_empty => 'Özel yazı tipi eklenmemiş';
  @override
  String get custom_fonts_font_roles => 'Yazı tipi rolleri';
  @override
  String get custom_fonts_import_file => 'Yazı tipi dosyası içe aktar';
  @override
  String get custom_fonts_import_url => 'URL\'den içe aktar';
  @override
  String custom_fonts_imported_count({required Object count}) =>
      '${count} yazı tipi içe aktarıldı';
  @override
  String get custom_fonts_manage => 'Yazı tiplerini yönet';
  @override
  String get custom_fonts_no_fonts_in_archive =>
      'Arşivde yazı tipi dosyası bulunamadı';
  @override
  String get custom_fonts_recommended => 'Önerilen Yazı Tipleri';
  @override
  String get custom_fonts_removed => 'Yazı tipi kaldırıldı';
  @override
  String get custom_fonts_search_hint => 'Yazı tiplerini ara';
  @override
  String get custom_theme => 'Özel tema';
  @override
  String custom_theme_default_name({required Object n}) => 'Özel ${n}';
  @override
  String get custom_theme_long_press_hint =>
      'Geçiş yapmak için dokunun · düzenlemek için uzun basın';
  @override
  String get custom_theme_name => 'Ad';
  @override
  String get dark_mode => 'Koyu mod';
  @override
  String get dark_mode_dark => 'Koyu';
  @override
  String get dark_mode_light => 'Açık';
  @override
  String get dark_mode_system => 'Sistem';
  @override
  String data_root_unavailable_message({required Object path}) =>
      'Yapılandırılmış veri konumunuz ${path} geçici olarak erişilemiyor (sürücü uyuyor, meşgul veya bağlı değil olabilir). Verileriniz orada güvende ve dokunulmamış — hiçbir şey kaybolmadı. Sürücü hazır olduğunda verilerinizi yüklemek için Tekrar Dene\'ye dokunun veya şimdilik varsayılan konumla başlayın (mevcut verileriniz DEĞİŞTİRİLMEYECEK).';
  @override
  String get data_root_unavailable_title => 'Veri konumu yanıt vermiyor';
  @override
  String get data_root_use_default_button => 'Varsayılan konumla başla';
  @override
  String get data_storage_change_button => 'Konumu değiştir';
  @override
  String get data_storage_change_confirm_body =>
      'Fushi tüm verilerinizi yeni klasöre taşıyacak ve ardından yeniden başlayacak. Taşıma sırasında uygulamayı kapatmayın.';
  @override
  String get data_storage_change_confirm_title =>
      'Veri depolama konumu değiştirilsin mi?';
  @override
  String get data_storage_location_default => 'Varsayılan konum';
  @override
  String get data_storage_location_hint =>
      'Fushi\'nin kütüphanenizi, sesli kitaplarınızı ve veritabanınızı sakladığı yer. Yalnızca masaüstü.';
  @override
  String get data_storage_location_title => 'Veri depolama konumu';
  @override
  String data_storage_migrate_failed({required Object message}) =>
      'Veri taşınamadı: ${message}';
  @override
  String get data_storage_migrate_failed_restart => 'Yeniden başlat';
  @override
  String get data_storage_migrate_failed_suggestions =>
      'Lütfen farklı, boş bir klasörle tekrar deneyin. Uygulamanın kurulum klasörünü seçmeyin ve o konumdaki hiçbir dosyanın kullanımda olmadığından emin olun.';
  @override
  String get data_storage_migrate_failed_title => 'Veri taşıma başarısız';
  @override
  String data_storage_migrate_overlay_progress({
    required Object copied,
    required Object total,
  }) => 'Dosyalar kopyalanıyor: ${copied} / ${total}';
  @override
  String get data_storage_migrate_overlay_title => 'Verileriniz taşınıyor';
  @override
  String get data_storage_migrate_overlay_warning =>
      'Lütfen uygulamayı açık tutun. İşlem bitene kadar kapatmayın veya bilgisayarınızı kapatmayın.';
  @override
  String get data_storage_migrate_success =>
      'Veri taşındı. Yeniden başlatılıyor…';
  @override
  String get data_storage_migrating => 'Veri taşınıyor…';
  @override
  String get data_storage_reject_install_dir =>
      'Bu klasör uygulamanın kurulum konumudur ve verilerinizi depolayamaz. Lütfen farklı, boş bir klasör seçin.';
  @override
  String get data_storage_restart_failed =>
      'Veri taşındı, ancak otomatik yeniden başlatma başarısız oldu. Lütfen Fushi\'yi elle yeniden açın.';
  @override
  String get db_cannot_open_message =>
      'Fushi, yapılandırılmış veri konumunda veritabanını açamadı veya oluşturamadı. Hiçbir şey bozulmadı — klasör eksik, salt okunur ya da bağlantısı kesilmiş bir sürücüde olabilir. Ayarlar bölümünden veri konumunu kontrol edin veya varsayılan konumu kullanmak için yeniden başlatın.';
  @override
  String get db_cannot_open_title => 'Veri konumu kullanılamıyor';
  @override
  String db_downgrade_message({
    required Object dbVersion,
    required Object appVersion,
  }) =>
      'Bu veritabanı Fushi\'nin daha yeni bir sürümü tarafından oluşturuldu (şema v${dbVersion}). Mevcut uygulamanız çok eski (v${appVersion}). Verilerinizi korumak için açma engellendi. Lütfen uygulamayı güncelleyip tekrar deneyin.';
  @override
  String get db_downgrade_title => 'Fushi\'yi güncelle';
  @override
  String get db_unrecoverable_message =>
      'Veritabanı otomatik onarımdan sonra bile açılamadı. Büyük olasılıkla bozuk. Ayarlar\'dan bir yedeği geri yükleyebilir veya sıfırdan başlamak için uygulama verilerini temizleyebilirsiniz.';
  @override
  String get db_unrecoverable_title => 'Veritabanı hasarlı';
  @override
  String get debug_log_share_subject => 'Fushi Hata Ayıklama Günlüğü';
  @override
  String debug_log_title({required Object count}) =>
      'Hata Ayıklama Günlüğü (${count})';
  @override
  String get debug_log_toggle => 'Hata ayıklama günlüğünü etkinleştir';
  @override
  String get decrease => 'Azalt';
  @override
  String get deduplicate_pitch_accents => 'Ton vurgularını tekrarsızlaştır';
  @override
  String get delete_choices_remember => 'Bu seçimleri hatırla';
  @override
  String get delete_collection => 'Koleksiyonu sil';
  @override
  String get delete_collection_also_books => 'İçindeki kitapları da sil';
  @override
  String get delete_collection_also_videos => 'Videoları da sil';
  @override
  String get delete_collection_confirm =>
      'Yalnızca gruplama kaldırılır. İçindeki öğeler korunur.';
  @override
  String get delete_custom_theme => 'Temayı sil';
  @override
  String get delete_custom_theme_confirm =>
      'Bu özel tema silinsin mi? Bu işlem geri alınamaz.';
  @override
  String get delete_disclosure_audio_source_files =>
      'İçe aktardığınız orijinal ses dosyaları';
  @override
  String get delete_disclosure_audiobook_book_kept =>
      'Kitabın kendisi ve okuma ilerlemesi';
  @override
  String get delete_disclosure_audiobook_files =>
      'Fushi\'nin kendi depolama alanına kopyaladığı ses ve hizalanmış altyazılar';
  @override
  String get delete_disclosure_audiobook_source_kept =>
      'İçe aktardığınız orijinal ses dosyaları';
  @override
  String get delete_disclosure_book_audiobook =>
      'Ekli sesli kitabın ses ve hizalanmış altyazıları (varsa)';
  @override
  String get delete_disclosure_book_extracted =>
      'Fushi\'nin kendi depolama alanına çıkardığı kitap dosyaları';
  @override
  String get delete_disclosure_book_records =>
      'Okuma ilerlemesi, yer imleri, etiketler ve altyazı verileri';
  @override
  String get delete_disclosure_book_source_kept =>
      'İçe aktardığın özgün kitap ve altyazı dosyaları';
  @override
  String get delete_disclosure_source_kept =>
      'İçe aktardığınız orijinal dosyalar (kitap, altyazılar, ses)';
  @override
  String get delete_disclosure_stats_kept => 'Okuma istatistikleri';
  @override
  String get delete_disclosure_will_delete_label => 'Silinecekler';
  @override
  String get delete_disclosure_will_keep_label => 'Korunacaklar';
  @override
  String get delete_in_progress => 'Silme devam ediyor';
  @override
  String get delete_local_files => 'Yerel dosyaları da sil';
  @override
  String get delete_local_files_audio_desc =>
      'Özgün ses dosyaları bu cihazdan silinir; kitap ve altyazı asılları korunur. Bu geri alınamaz.';
  @override
  String delete_local_files_failed({required Object n}) =>
      '${n} yerel dosya silinemedi; hâlâ kullanımda olabilir';
  @override
  String get delete_local_files_video_desc =>
      'Video dosyası bu cihazdan silinir ve ilgili indirme görevi de temizlenir. Bu geri alınamaz.';
  @override
  String get delete_prompt_delete_selected => 'Seçilenleri sil';
  @override
  String get delete_prompt_message =>
      'Bu öğeler başka bir cihazda silindi. Burada da silinsin mi?';
  @override
  String get delete_prompt_select_all => 'Tümünü seç';
  @override
  String get delete_prompt_title => 'Başka bir cihazda silindi';
  @override
  String get delete_scope_keep_local_desc =>
      'Diğer cihazlar kendi kopyalarını tutar';
  @override
  String get delete_scope_no_channel =>
      'Senkronizasyon yapılandırılmamış - bu silme yalnızca bu cihazı etkiler';
  @override
  String get delete_scope_sync_everywhere => 'Tüm cihazlardan sil';
  @override
  String get delete_scope_sync_everywhere_desc =>
      'Diğer cihazlar bir sonraki senkronizasyonda silmeyi onaylar';
  @override
  String get design_system_auto => 'Otomatik';
  @override
  String get design_system_hint => 'Uygulamanın görsel stilini kontrol eder';
  @override
  String get design_system_label => 'Tasarım sistemi';
  @override
  String get dialog_add => 'EKLE';
  @override
  String get dialog_append => 'EKLE';
  @override
  String get dialog_cancel => 'İPTAL';
  @override
  String get dialog_clear => 'TEMİZLE';
  @override
  String get dialog_clear_all_dictionaries => 'Tüm sözlükleri sil';
  @override
  String get dialog_close => 'KAPAT';
  @override
  String get dialog_connect => 'BAĞLAN';
  @override
  String get dialog_content_dictionary_clear =>
      'Sözlük veritabanını silmek geçmişteki tüm arama sonuçlarını da temizleyecektir.';
  @override
  String get dialog_content_dictionary_delete =>
      'Tek bir sözlüğü silmek tüm veritabanını temizlemekten daha uzun sürebilir. Bu işlem geçmişteki tüm arama sonuçlarını da temizleyecektir.';
  @override
  String get dialog_create => 'OLUŞTUR';
  @override
  String get dialog_crop => 'KIRP';
  @override
  String get dialog_delete => 'SİL';
  @override
  String get dialog_done => 'TAMAM';
  @override
  String get dialog_edit => 'DÜZENLE';
  @override
  String get dialog_edit_info => 'Bilgiyi düzenle';
  @override
  String get dialog_exit => 'ÇIKIŞ';
  @override
  String get dialog_export => 'DIŞA AKTAR';
  @override
  String get dialog_import => 'İÇE AKTAR';
  @override
  String get dialog_import_dictionary => 'Sözlük içe aktar';
  @override
  String get dialog_import_folder => 'Klasör sözlüğü içe aktar';
  @override
  String get dialog_importing => 'İÇE AKTARILIYOR…';
  @override
  String get dialog_launch_ankidroid => 'ANKIDROID\'U AÇ';
  @override
  String get dialog_ok => 'Tamam';
  @override
  String get dialog_play => 'OYNAT';
  @override
  String get dialog_read => 'OKU';
  @override
  String get dialog_record => 'KAYIT';
  @override
  String get dialog_replace => 'Değiştir';
  @override
  String get dialog_save => 'KAYDET';
  @override
  String get dialog_search => 'ARA';
  @override
  String get dialog_select => 'SEÇ';
  @override
  String get dialog_share => 'PAYLAŞ';
  @override
  String get dialog_stash => 'DEPO';
  @override
  String get dialog_stop => 'DURDUR';
  @override
  String get dialog_title_dictionary_clear => 'Tüm sözlükler silinsin mi?';
  @override
  String dialog_title_dictionary_delete({required Object name}) =>
      '『${name}』 silinsin mi?';
  @override
  String get dict_auto_update => 'Otomatik güncelle';
  @override
  String get dict_auto_update_hint =>
      'Başlangıçta sözlük güncellemelerini denetle';
  @override
  String dict_auto_update_last({required Object time}) =>
      'Son başarılı denetim: ${time}';
  @override
  String get dict_auto_update_never => 'Hiçbir zaman';
  @override
  String get dict_category_bilingual => 'İki dilli';
  @override
  String get dict_category_frequency => 'Sıklık';
  @override
  String get dict_category_grammar => 'Dilbilgisi';
  @override
  String get dict_category_ja_en => 'Japonca–İngilizce';
  @override
  String get dict_category_ja_ja => 'Japonca–Japonca';
  @override
  String get dict_category_ja_other => 'Diğer Japonca';
  @override
  String get dict_category_kanji => 'Kanji';
  @override
  String get dict_category_monolingual => 'Tek dilli';
  @override
  String get dict_category_names => 'İsimler';
  @override
  String get dict_category_supplementary => 'Ek';
  @override
  String get dict_download_browse => 'Sözlükleri İndir';
  @override
  String get dict_download_busy => 'Bir sözlük indirmesi zaten çalışıyor.';
  @override
  String dict_download_button({required Object count}) => 'İndir (${count})';
  @override
  String get dict_download_cancelled => 'İndirme iptal edildi.';
  @override
  String get dict_download_complete => 'İndirme tamamlandı.';
  @override
  String dict_download_failed({required Object error}) =>
      'İndirme başarısız: ${error}';
  @override
  String get dict_download_hide => 'Arka planda çalıştır';
  @override
  String get dict_download_import_uncancellable =>
      'İçe aktarma kesintiye uğratılamaz';
  @override
  String get dict_download_installed => 'Yüklü';
  @override
  String get dict_download_language => 'Diliniz';
  @override
  String get dict_download_learning_language => 'Öğrenilen dil';
  @override
  String dict_download_partial({
    required Object success,
    required Object total,
    required Object error,
  }) => '${success} / ${total} tamam. Başarısız: ${error}';
  @override
  String get dict_download_progress_show => 'İlerlemeyi görüntüle';
  @override
  String get dict_download_select_title => 'Sözlükleri Seçin';
  @override
  String dict_downloading({required Object name}) => '${name} indiriliyor…';
  @override
  String dict_downloading_size({
    required Object name,
    required Object done,
    required Object total,
  }) => '${name} indiriliyor (${done} / ${total})';
  @override
  String dict_error_connect_timeout({required Object host}) =>
      'Could not reach ${host} (connection timed out)';
  @override
  String dict_error_connection({required Object host}) =>
      'Could not connect to ${host}';
  @override
  String dict_error_http_status({
    required Object host,
    required Object status,
  }) => '${host} returned HTTP ${status}';
  @override
  String dict_error_stall_timeout({required Object host}) =>
      '${host} stopped sending data';
  @override
  String dict_import_failed_summary({required Object n}) =>
      '${n} sözlük içe aktarılamadı';
  @override
  String get dict_import_started => 'Sözlükler arka planda içe aktarılıyor...';
  @override
  String dict_import_success_summary({required Object n}) =>
      '${n} sözlük içe aktarıldı';
  @override
  String get dict_language_auto => 'Otomatik';
  @override
  String get dict_language_description =>
      'Bu sözlüğün metnini hangi yazı tipinin oluşturacağını belirler. Otomatik, sözlüğün beyan ettiği dili kullanır.';
  @override
  String get dict_language_title => 'Sözlük içerik dili';
  @override
  String get dict_language_tooltip => 'İçerik dili';
  @override
  String get dict_style_global_only =>
      'Yalnızca tüm sözlükler için ayarlanabilir';
  @override
  String get dict_style_part_deinflection_tag => 'Çekim analizi zinciri';
  @override
  String get dict_style_part_dictionary_label => 'Sözlük adı';
  @override
  String get dict_style_part_entry_card => 'Giriş kartı';
  @override
  String get dict_style_part_expression => 'Baş kelime';
  @override
  String get dict_style_part_expression_tag => 'İfade etiketleri';
  @override
  String get dict_style_part_frequency => 'Sıklık';
  @override
  String get dict_style_part_glossary_content => 'Tanım';
  @override
  String get dict_style_part_glossary_tag => 'Tanım etiketleri';
  @override
  String get dict_style_part_pitch => 'Tonlama vurgusu';
  @override
  String get dict_style_part_reset => 'Bölümü sıfırla';
  @override
  String get dict_style_part_ruby => 'Furigana';
  @override
  String get dict_style_pick_hint =>
      'Atlamak için önizlemede bir bölüme dokunun';
  @override
  String get dict_style_preview_title => 'Önizleme';
  @override
  String get dict_style_prop_background => 'Vurgu';
  @override
  String get dict_style_prop_bold => 'Kalın';
  @override
  String get dict_style_prop_corner_radius => 'Köşe yarıçapı';
  @override
  String get dict_style_prop_default => 'Varsayılan';
  @override
  String get dict_style_prop_font_scale => 'Yazı tipi boyutu';
  @override
  String get dict_style_prop_italic => 'İtalik';
  @override
  String get dict_style_prop_off => 'Kapalı';
  @override
  String get dict_style_prop_on => 'Açık';
  @override
  String get dict_style_prop_text_color => 'Metin rengi';
  @override
  String get dict_style_prop_underline => 'Altı çizili';
  @override
  String get dict_style_reset_all => 'Tümünü sıfırla';
  @override
  String get dict_style_scope_all => 'Tüm sözlükler';
  @override
  String get dict_style_tab_code => 'CSS';
  @override
  String get dict_style_tab_visual => 'Görsel';
  @override
  String get dict_style_title => 'Sözlük stili';
  @override
  String dict_task_failed_download({
    required Object name,
    required Object reason,
  }) => 'Download failed: ${name} (${reason})';
  @override
  String dict_task_failed_import({
    required Object name,
    required Object reason,
  }) => 'Import failed: ${name} (${reason})';
  @override
  String dict_task_failed_summary({required Object n}) =>
      '${n} dictionary(s) failed';
  @override
  String get dict_update_check => 'Güncellemeleri Denetle';
  @override
  String get dict_update_checking => 'Güncellemeler denetleniyor…';
  @override
  String dict_update_done({required Object name}) => '${name} güncellendi.';
  @override
  String dict_update_failed({required Object error}) =>
      'Güncelleme başarısız: ${error}';
  @override
  String get dict_update_interval_daily => 'Günlük';
  @override
  String get dict_update_interval_monthly => 'Aylık';
  @override
  String get dict_update_interval_weekly => 'Haftalık';
  @override
  String get dict_update_latest => 'Zaten güncel.';
  @override
  String dict_update_name_mismatch_body({
    required Object incoming,
    required Object existing,
  }) =>
      'Seçilen dosya "${incoming}", ancak "${existing}" sözlüğünü güncelliyorsunuz. Yine de değiştirilsin mi?';
  @override
  String get dict_update_name_mismatch_title => 'Adlar eşleşmiyor';
  @override
  String get dict_update_none => 'Tüm sözlükler güncel.';
  @override
  String dict_update_summary({
    required Object updated,
    required Object current,
    required Object failed,
  }) => '${updated} güncellendi, ${current} güncel, ${failed} başarısız.';
  @override
  String get dict_update_tooltip => 'Sözlüğü güncelle';
  @override
  String dict_update_updating({required Object name}) =>
      '${name} güncelleniyor…';
  @override
  String get dictionaries => 'Sözlükler';
  @override
  String get dictionaries_delete_failed => 'Sözlükler silinemedi';
  @override
  String get dictionaries_deleting_data => 'Sözlük verileri siliniyor...';
  @override
  String get dictionaries_menu_empty => 'Kullanmak için bir sözlük içe aktarın';
  @override
  String get dictionary_collapse_follow_global => 'Follow global setting';
  @override
  String get dictionary_delete_failed => 'Sözlük silinemedi';
  @override
  String get dictionary_font_size => 'Sözlük yazı tipi boyutu';
  @override
  String get dictionary_font_size_zoom_hint =>
      'Ctrl + fare tekerleği açılır içeriği yakınlaştırır';
  @override
  String get dictionary_section_frequency => 'Sıklık Sözlükleri';
  @override
  String get dictionary_section_kanji => 'Kanji Sözlükleri';
  @override
  String get dictionary_section_pitch => 'Ton Sözlükleri';
  @override
  String get dictionary_section_term => 'Terim Sözlükleri';
  @override
  String get dictionary_settings => 'Sözlük ayarları';
  @override
  String get dictionary_type_frequency => 'Sıklık';
  @override
  String get dictionary_type_pitch => 'Ton';
  @override
  String get dictionary_type_term => 'Terim';
  @override
  String get dictionary_unrecognized_format => 'Sözlük biçimi tanınamadı';
  @override
  String get discovery_all_sources => 'Tüm kaynaklar';
  @override
  String get discovery_download_queued => 'İndirmelere eklendi';
  @override
  String get discovery_empty => 'Sonuç bulunamadı';
  @override
  String get discovery_enter_query_hint =>
      'Aramak için bir anahtar kelime girin';
  @override
  String get discovery_game_type_all => 'Tümü';
  @override
  String get discovery_game_type_mobile => 'Mobil';
  @override
  String get discovery_game_type_raw => 'Çevrilmemiş';
  @override
  String get discovery_game_type_translated => 'Çevrilmiş';
  @override
  String get discovery_game_type_unlabelled => 'Etiketsiz';
  @override
  String get discovery_kind_audiobook => 'Sesli kitaplar';
  @override
  String get discovery_kind_manga => 'Manga';
  @override
  String get discovery_kind_novel => 'Romanlar';
  @override
  String get discovery_load_more => 'Daha fazla yükle';
  @override
  String get discovery_opds_add => 'OPDS sunucusu ekle';
  @override
  String get discovery_opds_allow_http => 'Şifresiz HTTP\'ye izin ver';
  @override
  String get discovery_opds_allow_http_hint =>
      'Yerel ağdaki kendi sunucun için gerekli';
  @override
  String get discovery_opds_enabled => 'Etkin';
  @override
  String get discovery_opds_name => 'Görünen ad';
  @override
  String get discovery_opds_name_hint =>
      'Ana bilgisayar adını kullanmak için boş bırak';
  @override
  String get discovery_opds_password => 'Parola';
  @override
  String get discovery_opds_remove => 'Kaldır';
  @override
  String get discovery_opds_settings_hint =>
      'BookOrbit, Calibre-Web, Komga veya Kavita gibi kendi OPDS sunucundan kitap ve çizgi roman gözat ve indir';
  @override
  String get discovery_opds_settings_title => 'OPDS katalogları';
  @override
  String get discovery_opds_test => 'Bağlantıyı sına';
  @override
  String discovery_opds_test_failed({required Object reason}) =>
      'Bağlantı başarısız: ${reason}';
  @override
  String discovery_opds_test_ok({required Object count}) =>
      'Bağlanıldı. Kök katalogda ${count} girdi var';
  @override
  String get discovery_opds_url => 'Katalog URL\'si';
  @override
  String get discovery_opds_url_hint =>
      'OPDS uç noktası, örneğin https://books.example.com/api/v1/opds';
  @override
  String get discovery_opds_url_invalid =>
      'Geçerli bir HTTP veya HTTPS katalog URL\'si gir';
  @override
  String get discovery_opds_url_needs_http_optin =>
      'Şifresiz HTTP için aşağıdaki anahtar gerekir';
  @override
  String get discovery_opds_username => 'Kullanıcı adı';
  @override
  String get discovery_opds_username_hint =>
      'Herkese açık katalog için boş bırak';
  @override
  String get discovery_partial_failure => 'Bazı kaynaklar kullanılamıyor';
  @override
  String get discovery_search_hint => 'Çevrimiçi kaynakları ara';
  @override
  String discovery_source_kinds_label({required Object kinds}) =>
      'Kapsam: ${kinds}';
  @override
  String get discovery_source_pick_hint =>
      'Göz atmak için bir kaynak seçin veya tüm kaynaklarda aramak için bir anahtar kelime yazın';
  @override
  String get discovery_source_query_required =>
      'Bu kaynak yalnızca anahtar kelime aramasını destekler';
  @override
  String get discovery_sources_settings_hint =>
      'Keşfet sayfasının Tüm kaynaklar aramasına hangi yerleşik kaynakların katılacağı. Kaynak açılır menüsünde tek bir kaynak seçmek, burada kapalı olsa bile her zaman çalışır.';
  @override
  String get discovery_sources_settings_title => 'Keşif kaynakları';
  @override
  String get discovery_sources_unavailable => 'Tüm kaynaklar kullanılamıyor';
  @override
  String get discovery_torrent_failed => 'Torrent görevi eklenemedi';
  @override
  String get discovery_torrent_pushed => 'Torrent görevi eklendi';
  @override
  String get dismiss_swipe_sensitivity => 'Kaydırarak kapatma hassasiyeti';
  @override
  String get display_settings => 'Tipografi ayarları';
  @override
  String get download_add_video_source => 'Video kaynağı ekle';
  @override
  String get download_airing_calendar_empty_guidance =>
      'Henüz gösterilecek bir şey yok: bir koleksiyonu AniList\'e bağlayın veya bir indirme aboneliği ekleyin, yayın zamanları burada görünecektir.';
  @override
  String download_airing_calendar_episode_label({required Object episode}) =>
      'Bl ${episode}';
  @override
  String get download_airing_calendar_error => 'Yayın takvimi yüklenemedi';
  @override
  String get download_airing_calendar_in_library => 'Kütüphanede';
  @override
  String get download_airing_calendar_show_all => 'Bu sezonun tümünü göster';
  @override
  String get download_airing_calendar_subscribed => 'Abone olundu';
  @override
  String get download_airing_calendar_title => 'Yayın takvimi';
  @override
  String get download_airing_calendar_week_empty => 'Bu hafta yayın yok';
  @override
  String get download_airing_calendar_week_next => 'Sonraki hafta';
  @override
  String get download_airing_calendar_week_prev => 'Önceki hafta';
  @override
  String get download_backend_embedded_hint =>
      'Önerilen. İndirmeler Fushi içinde çalışır — ayrıca bir şey kurmanız gerekmez.';
  @override
  String get download_backend_embedded_unavailable =>
      'Bu kurulumda yerleşik motorun çalışma zamanı eksik. Tam paketi yeniden kurun ya da bunun yerine harici qBittorrent kullanın.';
  @override
  String get download_backend_not_configured =>
      'İndirme arka ucu henüz yapılandırılmadı.';
  @override
  String get download_backend_qb_hint =>
      'Fushi\'yi hâlihazırda çalıştırdığınız bir qBittorrent WebUI\'ye bağlayın.';
  @override
  String get download_backend_qb_url_invalid =>
      'Tam bir adres girin, örn. http://127.0.0.1:8080';
  @override
  String get download_backend_setup_intro =>
      'İndirmelerinizi hangi motorun yürüteceğini seçin. Bunu istediğiniz zaman indirme ayarlarından değiştirebilirsiniz.';
  @override
  String get download_backend_setup_start => 'Şimdi ayarla';
  @override
  String get download_backend_setup_title => 'İndirme arka ucunu ayarla';
  @override
  String get download_backend_unsupported_note =>
      'Yerleşik motor bu platformda kullanılamıyor. İndirmeler harici qBittorrent kullanıyor.';
  @override
  String get download_clear_finished => 'Tamamlananları temizle';
  @override
  String get download_detail_backend_offline =>
      'Orijinal indirme arka ucu çevrimdışı. Kaydedilmiş görev bilgileri gösteriliyor; canlı parametreler kullanılamıyor.';
  @override
  String get download_detail_backend_unsupported =>
      'Mevcut indirme altyapısı tarafından desteklenmiyor';
  @override
  String get download_detail_connections_label => 'Bağlantılar';
  @override
  String get download_detail_content_path_label => 'İçerik yolu';
  @override
  String get download_detail_dht_nodes => 'DHT düğümleri';
  @override
  String get download_detail_hash_label => 'Bilgi karması';
  @override
  String get download_detail_leechers_label => 'İndirenler';
  @override
  String get download_detail_listen_port => 'Dinleme portu';
  @override
  String get download_detail_no_peers => 'Bağlı eş yok';
  @override
  String get download_detail_no_trackers => 'Takipçi yok';
  @override
  String get download_detail_pieces_label => 'Parçalar';
  @override
  String get download_detail_port_mapping => 'Port yönlendirme';
  @override
  String get download_detail_priority_high => 'Yüksek';
  @override
  String get download_detail_priority_normal => 'Normal';
  @override
  String get download_detail_priority_skip => 'İndirme';
  @override
  String get download_detail_raw_state_label => 'Altyapı durumu';
  @override
  String get download_detail_remaining_label => 'Kalan';
  @override
  String get download_detail_save_path_label => 'Kayıt yolu';
  @override
  String get download_detail_section_network => 'Ağ';
  @override
  String get download_detail_section_task => 'Görev';
  @override
  String get download_detail_section_transfer => 'Aktarım';
  @override
  String get download_detail_seeds_label => 'Gönderenler';
  @override
  String get download_detail_session_rates => 'Oturum hızları';
  @override
  String get download_detail_tab_files => 'Dosyalar';
  @override
  String get download_detail_tab_overview => 'Genel bakış';
  @override
  String get download_detail_tab_peers => 'Eşler';
  @override
  String get download_detail_tab_trackers => 'Takipçiler';
  @override
  String get download_detail_task_gone => 'Görev altyapıda bulunamadı';
  @override
  String get download_detail_task_missing =>
      'Orijinal indirme altyapısı çevrimiçi, ancak bu torrent artık mevcut değil. Canlı eşler ve takipçiler kurtarılamaz; kaydedilmiş görev bilgileri gösteriliyor.';
  @override
  String get download_detail_task_queued =>
      'Sıraya alındı: diğer indirmelerin yer açması bekleniyor. Bu görev henüz indirme aracına iletilmedi, bu nedenle canlı eş veya izleyici verisi yok.';
  @override
  String get download_detail_time_active => 'Aktif süre';
  @override
  String get download_detail_time_seeding => 'Paylaşım süresi';
  @override
  String get download_detail_total_size_label => 'Toplam boyut';
  @override
  String get download_detail_tracker_disabled => 'Devre dışı';
  @override
  String get download_detail_tracker_not_contacted =>
      'Henüz bağlantı kurulmadı';
  @override
  String get download_detail_tracker_not_working => 'Çalışmıyor';
  @override
  String get download_detail_tracker_updating => 'Güncelleniyor';
  @override
  String get download_detail_tracker_working => 'Çalışıyor';
  @override
  String get download_direct_queue_section => 'Doğrudan indirmeler';
  @override
  String get download_no_managed_video_source =>
      'Henüz yönetilen bir video kaynağı yok. İndirilen dosyaların saklanacağı yerel bir klasör ekleyin ki tamamlanan videolar kitaplığa girsin.';
  @override
  String get download_open_settings => 'Ayarları aç';
  @override
  String get download_rate_limit_lan_exempt =>
      'Yerel ağınızda geçerli değildir; LAN aktarımları her zaman tam hızda çalışır.';
  @override
  String get download_rate_limit_lan_included =>
      'Yerel ağınızda da geçerlidir.';
  @override
  String get download_resources_tab => 'Kaynaklar';
  @override
  String get download_save_root_change => 'Klasörü değiştir';
  @override
  String get download_save_root_create_failed =>
      'Bu klasör oluşturulamıyor. Sürücüyü ve izinleri kontrol edin.';
  @override
  String get download_save_root_fallback_warning =>
      'Yapılandırılmış indirme klasörü kullanılamıyor, bu nedenle varsayılan klasör kullanılıyor.';
  @override
  String get download_save_root_hint =>
      'Yeni indirmeler buraya kaydedilir. Mevcut görevler orijinal klasörlerini korur.';
  @override
  String get download_save_root_not_absolute =>
      'Lütfen mutlak bir klasör yolu seçin.';
  @override
  String get download_save_root_not_writable => 'Bu klasör yazılabilir değil.';
  @override
  String get download_save_root_reset => 'Varsayılana sıfırla';
  @override
  String get download_save_root_title => 'İndirme klasörü';
  @override
  String get download_settings => 'İndirme ayarları';
  @override
  String get download_status_cancelled => 'İptal edildi';
  @override
  String get download_status_queued => 'Sıraya alındı';
  @override
  String download_subscription_after_episode({required Object episode}) =>
      'Bölüm ${episode} sonrası';
  @override
  String get download_subscription_check_all => 'Tümünü kontrol et';
  @override
  String get download_subscription_check_now => 'Şimdi kontrol et';
  @override
  String download_subscription_choice_hint({
    required Object group,
    required Object resolution,
  }) =>
      '${group} · ${resolution} takip et. Yeni tekli bölüm yayınları sıraya alınacak.';
  @override
  String get download_subscription_created =>
      'İndirme sıraya alındı ve abonelik oluşturuldu';
  @override
  String get download_subscription_delete => 'Aboneliği sil';
  @override
  String download_subscription_delete_confirm({required Object title}) =>
      '${title} aboneliği silinsin mi? İndirilen görevler korunur.';
  @override
  String get download_subscription_download_and_create => 'İndir ve abone ol';
  @override
  String get download_subscription_empty_body =>
      'Keşfet\'te tekli bölüm yayını seçin ve İndir ve abone ol\'u kullanın.';
  @override
  String get download_subscription_empty_title => 'Henüz abonelik yok';
  @override
  String download_subscription_last_checked({required Object time}) =>
      'Son kontrol: ${time}';
  @override
  String download_subscription_latest_episode({required Object episode}) =>
      'En son sıraya alınan: bölüm ${episode}';
  @override
  String get download_subscription_never_checked => 'Hiç kontrol edilmedi';
  @override
  String get download_subscription_running_hint =>
      'Fushi, uygulama çalışırken etkin abonelikleri her 15 dakikada bir kontrol eder.';
  @override
  String get download_subscription_source_unavailable =>
      'Mevcut hedef (kullanılamıyor)';
  @override
  String download_subscription_start_episode({required Object episode}) =>
      '从第 ${episode} 集开始';
  @override
  String get download_subscription_start_episode_invalid =>
      'Tam sayı girin (0 veya daha büyük) veya boş bırakın';
  @override
  String get download_subscription_unavailable_hint =>
      'Abone olmak için tanınabilir bir yayın grubuyla tekli bölüm yayını seçin.';
  @override
  String get download_subscriptions_tab => 'Abonelikler';
  @override
  String download_task_action_failed({required Object error}) =>
      'Görev işlemi başarısız: ${error}';
  @override
  String get download_task_add => 'Görev ekle';
  @override
  String get download_task_add_content_kind => 'İçerik türü';
  @override
  String get download_task_add_invalid =>
      'Tanınmayan magnet bağlantısı veya torrent dosyası';
  @override
  String get download_task_add_pick_torrent => 'Torrent dosyası seç';
  @override
  String get download_task_add_submitted => 'Görev eklendi';
  @override
  String get download_task_add_title_label => 'Başlık';
  @override
  String get download_task_audiobook_needs_alignment =>
      'Audio only - an alignment file (subtitle) is still needed before this can open as a book.';
  @override
  String get download_task_audiobook_pair => 'Add alignment file';
  @override
  String get download_task_collection_unassigned => 'No collection';
  @override
  String get download_task_delete => 'Görevi sil';
  @override
  String download_task_delete_confirm({required Object title}) =>
      '${title} indirme görevi silinsin mi?';
  @override
  String get download_task_delete_files => 'İndirilen dosyaları da sil';
  @override
  String get download_task_delete_files_failed =>
      'İndirilen veriler silinemedi; indirme motoru bunu onaylamadı';
  @override
  String get download_task_details => 'Ayrıntıları görüntüle';
  @override
  String get download_task_error_copied => 'Hata ayrıntıları kopyalandı';
  @override
  String get download_task_error_detail_title => 'Hata ayrıntıları';
  @override
  String get download_task_error_summary_backend_unavailable =>
      'İndirme arka ucu kullanılamıyor veya artık eşleşmiyor';
  @override
  String get download_task_error_summary_backend_unconfirmed =>
      'Torrent; hash, başlık ve kategori ile doğrulanamadı';
  @override
  String get download_task_error_summary_generic =>
      'Görev bir hatayla karşılaştı';
  @override
  String get download_task_error_summary_legacy =>
      'Eski içe aktarma manuel müdahale gerektiriyor';
  @override
  String get download_task_error_summary_source_missing =>
      'Yönetilen video kaynağı eksik veya erişilemiyor';
  @override
  String get download_task_error_summary_subtitle =>
      'Altyazılar kullanılamıyor veya yüklenemedi';
  @override
  String get download_task_error_summary_torrent_info =>
      'Torrent kimliği eksik veya doğrulanamıyor';
  @override
  String get download_task_error_view_detail => 'Ayrıntıları görüntüle';
  @override
  String get download_task_eta => 'Tahmini süre';
  @override
  String get download_task_group_by => 'Group by';
  @override
  String get download_task_group_collection => 'Collection / series';
  @override
  String get download_task_group_kind => 'Media type';
  @override
  String get download_task_group_none => 'No grouping';
  @override
  String get download_task_group_status => 'Status';
  @override
  String get download_task_groups_collapse => 'Collapse all groups';
  @override
  String get download_task_groups_expand => 'Expand all groups';
  @override
  String get download_task_kind_all => 'Tüm türler';
  @override
  String get download_task_kind_filter => 'Türe göre filtrele';
  @override
  String get download_task_lifecycle_active => 'Devam ediyor';
  @override
  String get download_task_lifecycle_cancelled => 'İptal edildi';
  @override
  String get download_task_lifecycle_completed => 'Tamamlandı';
  @override
  String get download_task_lifecycle_failed => 'Başarısız';
  @override
  String get download_task_lifecycle_needs_attention => 'Müdahale gerekiyor';
  @override
  String get download_task_location_missing =>
      'Görev dosya konumu kullanılamıyor.';
  @override
  String get download_task_location_open_failed => 'Dosya konumu açılamadı.';
  @override
  String get download_task_no_match => 'Eşleşen görev yok';
  @override
  String get download_task_open_location => 'Klasörde göster';
  @override
  String get download_task_pause => 'Duraklat';
  @override
  String get download_task_priority => 'Sıra önceliği';
  @override
  String get download_task_priority_high => 'Yüksek';
  @override
  String get download_task_priority_low => 'Düşük';
  @override
  String get download_task_priority_normal => 'Normal';
  @override
  String get download_task_ratio => 'Oran';
  @override
  String get download_task_resume => 'Devam et';
  @override
  String get download_task_search_hint => 'Görevlerde ara';
  @override
  String get download_task_sort_created => 'Eklenme tarihi';
  @override
  String get download_task_sort_direction => 'Reverse sort order';
  @override
  String get download_task_sort_progress => 'İlerleme';
  @override
  String get download_task_sort_status => 'Durum';
  @override
  String get download_task_stage_download => 'İndirme';
  @override
  String get download_task_stage_enqueue => 'Sıraya al';
  @override
  String get download_task_stage_import => 'İçe aktarma';
  @override
  String get download_task_stage_organize => 'Düzenleme';
  @override
  String get download_task_stage_scrape => 'Tarama';
  @override
  String get download_task_stage_subtitle => 'Altyazılar';
  @override
  String get download_task_status_active => 'In progress';
  @override
  String get download_task_status_attention => 'Needs attention';
  @override
  String get download_task_status_checking => 'Kontrol ediliyor';
  @override
  String get download_task_status_completed => 'Tamamlandı';
  @override
  String get download_task_status_downloading => 'İndiriliyor';
  @override
  String get download_task_status_error => 'Hata';
  @override
  String get download_task_status_filter => 'Task status';
  @override
  String get download_task_status_metadata => 'Meta veri alınıyor';
  @override
  String get download_task_status_moving => 'Taşınıyor';
  @override
  String get download_task_status_paused => 'Duraklatıldı';
  @override
  String get download_task_status_queued => 'Sırada';
  @override
  String get download_task_status_seeding => 'Paylaşılıyor';
  @override
  String get download_task_status_stalled => 'Durağan';
  @override
  String get download_task_toggle_failed =>
      'Duraklatma/devam ettirme başarısız';
  @override
  String get download_tasks_tab => 'Görevler';
  @override
  String get download_test_connection => 'Bağlantıyı test et';
  @override
  String get download_test_connection_failed =>
      'Bağlantı başarısız. Adresi ve kimlik bilgilerini kontrol edin.';
  @override
  String download_test_connection_failed_reason({required Object message}) =>
      'Bağlantı başarısız: ${message}';
  @override
  String download_test_connection_ok({required Object version}) =>
      'Bağlandı (sürüm: ${version})';
  @override
  String get download_tracker_auto_add =>
      'Abonelikteki trackerları yeni indirmelere otomatik ekle';
  @override
  String get download_tracker_auto_add_hint =>
      'Liste 6 saat önbellekte tutulur. Abonelik alınamazsa indirme engellenmez.';
  @override
  String download_tracker_fetch_failed({required Object message}) =>
      'Trackerlar getirilemedi: ${message}';
  @override
  String download_tracker_preview_count({required Object count}) =>
      '${count} tracker getirildi';
  @override
  String get download_tracker_preview_empty =>
      'Desteklenen HTTP, HTTPS ve UDP trackerlarını önizlemek için aboneliği getir.';
  @override
  String get download_tracker_refresh => 'Trackerları getir';
  @override
  String get download_tracker_section => 'Tracker aboneliği';
  @override
  String get download_tracker_url => 'Abonelik adresi';
  @override
  String get download_video_source_required => 'Video kaynağı gerekli';
  @override
  String get drag_drop_failed =>
      'Bırakılan dosyalar işlenemedi. Lütfen tekrar deneyin.';
  @override
  String get drag_drop_folder_source_added =>
      'Klasör, kütüphane kaynağı olarak eklendi ve tarandı.';
  @override
  String get drag_drop_folder_source_exists =>
      'Bu klasör zaten bir kütüphane kaynağı.';
  @override
  String get drag_drop_manga_archive_unsupported =>
      '.cbr/.rar çizgi roman arşivleri içe aktarılamaz — .cbz veya resim klasörü olarak yeniden paketleyin.';
  @override
  String get drag_drop_need_card_target =>
      'Altyazıları veya sesi bir kitabın ya da videonun üzerine bırakın';
  @override
  String get drag_drop_unsupported_on_books =>
      'Kitap dosyalarını buraya bırakın. Bu dosyalar için Video veya Sözlükler\'e geçin.';
  @override
  String get drag_drop_unsupported_on_dictionary =>
      '.zip, .dsl veya .mdx sözlük dosyalarını buraya bırakın. CSS dosyaları yalnızca bir sözlük paketiyle birlikte çalışır.';
  @override
  String get drag_drop_unsupported_on_video =>
      'Videoları, oynatma listelerini veya altyazıları buraya bırakın. Bu dosyalar için Kitaplar veya Sözlükler\'e geçin.';
  @override
  String get edit_custom_theme => 'Özel temayı düzenle';
  @override
  String get eink_mode => 'E-mürekkep modu';
  @override
  String get eink_mode_hint =>
      'Animasyonsuz ve çizgi stili vurgulara sahip saf siyah-beyaz tema, e-mürekkep ekranlar için';
  @override
  String get enable_swipe_to_close => 'Kaydırarak açılır pencereyi kapat';
  @override
  String get epub_delete_error => 'Kitap silme başarısız';
  @override
  String get epub_delete_title => 'Kitabı sil';
  @override
  String get epub_parse_fallback =>
      'Kitap meta verileri veritabanından onarıldı';
  @override
  String get error_ankidroid_api => 'AnkiDroid hatası';
  @override
  String get error_ankidroid_api_content =>
      'AnkiDroid ile iletişimde bir sorun oluştu.\n\nAnkiDroid arka plan hizmetinin etkin olduğundan ve tüm ilgili uygulama izinlerinin verildiğinden emin olun.';
  @override
  String get error_copied => 'Hata panoya kopyalandı';
  @override
  String get error_load_failed => 'Yükleme sırasında bir hata oluştu';
  @override
  String get error_log_diagnostics_section =>
      'Tanılama / adli analiz (uygulama hataları değil)';
  @override
  String get error_log_empty => 'Hata kaydı yok';
  @override
  String error_log_label({required Object n}) => 'Hata günlüğü (${n})';
  @override
  String get error_log_previous_run =>
      'Önceki kayıtlar (son çalıştırmadan önce)';
  @override
  String get error_log_share_subject => 'Fushi Hata Günlüğü';
  @override
  String get extension_popup_independent_size =>
      'Tarayıcı uzantısı için ayrı boyut';
  @override
  String get extension_popup_independent_size_hint =>
      'Tarayıcı uzantısı arama açılır penceresine, uygulama içi açılır pencereyi takip etmek yerine kendi maksimum boyutunu verin';
  @override
  String get extension_popup_max_height =>
      'Uzantı açılır penceresi maks. yükseklik';
  @override
  String get extension_popup_max_width =>
      'Uzantı açılır penceresi maks. genişlik';
  @override
  String get external_window_capture_failed => 'Pencere yakalama başarısız';
  @override
  String get external_window_current_game => 'Mevcut oyun';
  @override
  String get external_window_mining => 'Harici pencere çıkarma';
  @override
  String get external_window_no_windows => 'Yakalanabilir pencere bulunamadı';
  @override
  String get external_window_none =>
      'Pencere bağlı değil (seçmek için dokunun)';
  @override
  String get external_window_refresh => 'Pencere listesini yenile';
  @override
  String get external_window_select => 'Hedef pencereyi seçin';
  @override
  String get external_window_unbind => 'Pencere bağlantısını kaldır';
  @override
  String get external_window_unsupported =>
      'Harici pencere çıkarma yalnızca Windows\'ta desteklenir';
  @override
  String get failed_online_service => 'Çevrimiçi hizmetle iletişim başarısız';
  @override
  String get favorite_added => 'Cümle favorilere kaydedildi';
  @override
  String get favorite_removed => 'Cümle favorilerden kaldırıldı';
  @override
  String favorites({required Object n}) => 'Favoriler (${n})';
  @override
  String field_fallback_used({
    required Object field,
    required Object secondField,
  }) => '${field} alanı yedek arama terimi olarak ${secondField} kullandı.';
  @override
  String file_count({required Object count}) => '${count} dosya';
  @override
  String get floating_dict_close => 'Kapat';
  @override
  String get floating_dict_title => 'Sözlük';
  @override
  String get floating_lyric_bg_opacity => 'Kayan altyazı arka plan matlığı';
  @override
  String get floating_lyric_button_bg_opacity =>
      'Kayan altyazı düğmesi arka plan saydamlığı';
  @override
  String get floating_lyric_click_lookup =>
      'Aramak için kayan altyazıya dokunun';
  @override
  String get floating_lyric_click_lookup_hint =>
      'Sözcük aramasını korumak isterseniz konum kilidiyle birlikte bunu açık tutun.';
  @override
  String get floating_lyric_close => 'Kapat';
  @override
  String get floating_lyric_context_lines => 'Kayan altyazı bağlam satırları';
  @override
  String get floating_lyric_context_lines_hint =>
      '0 yalnızca geçerli satırı gösterir (tek satır, değişmez); 1-3 ayarlayarak öncesinde ve sonrasında o kadar satır gösterin';
  @override
  String get floating_lyric_corner_radius => 'Kayan altyazı köşe yarıçapı';
  @override
  String get floating_lyric_corner_radius_hint =>
      '0 her platformun varsayılan köşelerini korur; çubuğu ve düğmeleri daha fazla yuvarlamak için artırın';
  @override
  String get floating_lyric_font_size => 'Kayan altyazı yazı tipi boyutu';
  @override
  String get floating_lyric_hint =>
      'Geçerli cümleyi diğer uygulamaların üzerinde göster.';
  @override
  String get floating_lyric_lock => 'Kilitle';
  @override
  String get floating_lyric_next => 'Sonraki';
  @override
  String get floating_lyric_no_audio => 'Bu kitapta dinlenecek ses yok';
  @override
  String get floating_lyric_permission_hint =>
      'Kayan altyazıyı görüntülemek için üst katman izni gereklidir.';
  @override
  String get floating_lyric_permission_hint_coloros =>
      'Sistem üst katman iznini sürekli reddediyorsa: bu uygulamanın APK\'sını bir dosya yöneticisiyle bir kez yeniden yükleyin veya Geliştirici seçeneklerinde izin izlemeyi kapatın, ardından tekrar deneyin.';
  @override
  String get floating_lyric_play_pause => 'Oynat';
  @override
  String get floating_lyric_previous => 'Önceki';
  @override
  String get floating_lyric_text_opacity => 'Kayan altyazı metni saydamlığı';
  @override
  String get floating_lyric_toggle_action => 'Kayan altyazı';
  @override
  String get floating_lyric_topmost => 'Her zaman üstte tut';
  @override
  String get floating_lyric_unavailable_hint =>
      'Kayan altyazı penceresi gösterilemedi.';
  @override
  String get floating_lyric_unlock => 'Kilidi aç';
  @override
  String get floating_lyric_width => 'Kayan altyazı genişliği';
  @override
  String get floating_lyric_width_hint =>
      '0 platform varsayılan genişliğini kullanır; sabit genişlik için bir değer girin';
  @override
  String get focus_navigation_enabled =>
      'Klavye ve oyun kumandası odak gezinmesi';
  @override
  String get focus_navigation_enabled_hint =>
      'Odağı ok tuşları veya bir oyun kumandasıyla taşıyın ve bir odak halkası gösterin.';
  @override
  String get folder_picker_permission_required =>
      'Klasörlere göz atmak için depolama izni gereklidir';
  @override
  String get follow_audio_off_tooltip => 'Ses takibi: KAPALI';
  @override
  String get follow_audio_on_tooltip => 'Ses takibi: AÇIK';
  @override
  String get font_desc_hina_mincho =>
      'Yumuşak dekoratif Mincho · Noto Sans JP ile iyi gider';
  @override
  String get font_desc_klee_one =>
      'El yazısı ders kitabı stili · Net ve okunabilir · Noto Sans JP ile iyi gider';
  @override
  String get font_desc_mplus_rounded_1c =>
      'Sevimli yuvarlak stil · Light novel için ideal · Noto Sans JP ile iyi gider';
  @override
  String get font_desc_noto_sans_jp =>
      'Google/Adobe Gothic · Japonca glifler öncelikli · Değişken ağırlık';
  @override
  String get font_desc_noto_sans_sc =>
      'Google/Adobe Gothic · Basitleştirilmiş Çince öncelikli · Yedek yazı tipi olarak kullanın';
  @override
  String get font_desc_noto_sans_tc =>
      'Google/Adobe Gothic · Geleneksel Çince öncelikli';
  @override
  String get font_desc_noto_serif_jp =>
      'Google/Adobe Serif · Japonca glifler öncelikli · Dikey okuma için ideal';
  @override
  String get font_desc_noto_serif_sc =>
      'Google/Adobe Serif · Basitleştirilmiş Çince öncelikli · Yedek yazı tipi olarak kullanın';
  @override
  String get font_desc_noto_serif_tc =>
      'Google/Adobe Serif · Geleneksel Çince glif öncelikli · Dikey okuma için ideal';
  @override
  String get font_desc_shippori_mincho =>
      'Zarif Mincho · Edebiyat için ideal · Noto Sans JP ile iyi gider';
  @override
  String get font_desc_zen_kaku_gothic_new =>
      'Modern Kaku Gothic · Genel okuma · Noto Sans JP ile iyi gider';
  @override
  String get font_desc_zen_maru_gothic =>
      'Yumuşak yuvarlak Gothic · Noto Sans JP ile iyi gider';
  @override
  String get font_desc_zen_old_mincho =>
      'Vintage Mincho · Klasik edebi stil · Noto Sans JP ile iyi gider';
  @override
  String get font_source_file => 'Dosya';
  @override
  String get font_source_system => 'Sistem';
  @override
  String get font_target_app_ui => 'Sistem Arayüzü Yazı Tipi';
  @override
  String get font_target_body => 'Roman Metni Yazı Tipi';
  @override
  String get font_target_dictionary => 'Sözlük Yazı Tipi';
  @override
  String get font_target_game_lookup => 'Oyun arama penceresi yazı tipi';
  @override
  String get font_target_video_subtitle => 'Video Subtitle Font';
  @override
  String get gal_card_lookup_independent_size =>
      'Oyun içi kart için ayrı boyut';
  @override
  String get gal_card_lookup_independent_size_hint =>
      'Oyun içi arama kartını açılır arama penceresinden ayrı boyutlandırın';
  @override
  String get gal_card_lookup_max_height => 'Oyun içi kart maks. yükseklik';
  @override
  String get gal_card_lookup_max_width => 'Oyun içi kart maks. genişlik';
  @override
  String get gal_hook_click_lookup => 'Aramak için bir kelimeye dokun';
  @override
  String get gal_hook_click_lookup_hint =>
      'Kapalı olduğunda altyazıya tıklamak hiçbir zaman arama başlatmaz — tıklama geçişi açıkken yanlışlıkla bir kelimeye denk gelmek istemediğinde kullanışlı.';
  @override
  String get gal_hook_fold_progressive_lines =>
      'Bölünmüş diyalog satırlarını birleştir';
  @override
  String get gal_hook_fold_progressive_lines_hint =>
      'Bazı motorlar her tıklamada satırın tamamını yeniden çizer, bu yüzden tek bir satır birkaç kez yakalanır. Bu anlık görüntüleri tek satırda topla.';
  @override
  String get gal_hook_ingame_lookup => 'Oyun içi sözlük araması';
  @override
  String get gal_hook_ingame_lookup_engine_unsupported =>
      'Bu oyun motoru henüz oyun içi sözlük aramasını desteklemiyor';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copied =>
      'Çalıştırılabilir dosyanın SHA-256 değeri kopyalandı';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copy =>
      'Oyun çalıştırılabilir dosyasının SHA-256 değerini kopyala';
  @override
  String get gal_hook_ingame_lookup_exe_hash_unavailable =>
      'Oyun çalıştırılabilir dosyası okunamadı';
  @override
  String get gal_hook_ingame_lookup_hint =>
      'Sözlük kartını oyun penceresinin içinde gösterin (KiriKiri motoru, yalnızca Windows)';
  @override
  String get gal_hook_ingame_lookup_version_unsupported =>
      'Bu oyun sürümü henüz desteklenenler listesinde değil';
  @override
  String get gal_hook_lookup_trigger => 'Arama tetikleyicisi';
  @override
  String get gal_hook_lookup_trigger_hint =>
      'İmlecin altındaki kelimeyi hangi fare düğmesinin arayacağı. Yukarıdaki anahtardan bağımsızdır: dokunarak aramayı kapatıp yan düğmeyle arayabilirsin.';
  @override
  String get gal_hook_lookup_trigger_left => 'Sol tık';
  @override
  String get gal_hook_lookup_trigger_middle => 'Orta tık';
  @override
  String get gal_hook_lookup_trigger_side => 'Yan düğme';
  @override
  String get gal_hook_overlay_legibility_section => 'Pencere ve okunabilirlik';
  @override
  String get gal_hook_passthrough_blocks_mouse =>
      'Tıklama geçişi açıkken altyazı yine tıklama alır';
  @override
  String get gal_hook_passthrough_blocks_mouse_hint =>
      'Açık: metin satırları tıklama almaya devam eder, böylece bir kelimeye dokunabilirsin. Kapalı: tüm katman fareye saydamdır — altındakine tıklarsın ama kelimelere dokunmak artık çalışmaz.';
  @override
  String get gal_hook_text_alignment => 'Metin hizalaması';
  @override
  String get gal_hook_text_alignment_center => 'Orta';
  @override
  String get gal_hook_text_alignment_left => 'Sol';
  @override
  String get gal_hook_text_background_color => 'Pencere arka plan rengi';
  @override
  String get gal_hook_text_background_opacity => 'Pencere arka plan saydamlığı';
  @override
  String get gal_hook_text_background_opacity_hint =>
      'Masaüstü şarkı sözü tarzı saydam pencere için %0\'a ayarlayın.';
  @override
  String get gal_hook_text_bold => 'Kalın metin';
  @override
  String get gal_hook_text_bold_hint =>
      'Oyun grafikleri üzerinde daha iyi okunabilirlik için yarı kalın metin kullanın.';
  @override
  String get gal_hook_text_color => 'Metin rengi';
  @override
  String get gal_hook_text_corner_radius => 'Pencere köşe yarıçapı';
  @override
  String get gal_hook_text_corner_radius_hint =>
      'Arka plan köşe yarıçapını ayarlayın.';
  @override
  String get gal_hook_text_font => 'Oyun arama penceresi yazı tipi';
  @override
  String get gal_hook_text_font_hint =>
      'Yönetilen yazı tipi kütüphanesinden yazı tipleri seçin. Etkinleştirilen ilk yazı tipi kullanılır.';
  @override
  String get gal_hook_text_font_size => 'Galgame altyazı yazı boyutu';
  @override
  String get gal_hook_text_font_size_hint =>
      'Pencereyi yeniden boyutlandırmak için kaplamanın köşesini sürükleyin; altyazı boyutu buradan ayarlanır.';
  @override
  String get gal_hook_text_letter_spacing => 'Harf aralığı';
  @override
  String get gal_hook_text_letter_spacing_hint =>
      'Arama tıklama testini değiştirmeden karakterler arası boşluğu ayarlayın.';
  @override
  String get gal_hook_text_line_height => 'Satır yüksekliği';
  @override
  String get gal_hook_text_line_height_hint =>
      'Sarmalanan satırların dikey aralığını ayarlayın.';
  @override
  String get gal_hook_text_outline_color => 'Dış hat rengi';
  @override
  String get gal_hook_text_outline_width => 'Dış hat kalınlığı';
  @override
  String get gal_hook_text_outline_width_hint =>
      'Dış hattı devre dışı bırakmak için 0\'a ayarlayın; ince gölge kalır.';
  @override
  String get gal_hook_text_padding => 'Yatay metin dolgusu';
  @override
  String get gal_hook_text_padding_hint =>
      'Metni pencere kenarlarından ve yeniden boyutlandırma tutamağından uzak tutun.';
  @override
  String get gal_hook_text_vertical_alignment => 'Dikey hizalama';
  @override
  String get gal_hook_text_vertical_alignment_center => 'Orta';
  @override
  String get gal_hook_text_vertical_alignment_top => 'Üst';
  @override
  String get gal_hook_toolbar_auto_hide => 'Araç çubuğunu otomatik gizle';
  @override
  String get gal_hook_toolbar_auto_hide_hint =>
      'İmleç altyazı kutusuna gelene kadar araç çubuğunu gizler, LunaHook tarzı. Gizli gerçekten gizli demek — o pikseller oyuna geri döner.';
  @override
  String get gal_mining_animated_format => 'Oyun kartı animasyon formatı';
  @override
  String get gal_mining_image_mode => 'Galgame kart görseli';
  @override
  String get gal_mining_image_mode_screenshot => 'Ekran görüntüsü';
  @override
  String get gal_mining_image_mode_video_clip => 'Video clip';
  @override
  String get gal_mining_image_mode_video_clip_hint =>
      'Records the game window from the moment the line appears until you mine the card, mixed with the sentence audio. Falls back to an animated image or screenshot when recording has not started or fewer than 2 frames were captured.';
  @override
  String get gal_mining_still_format => 'Oyun kartı ekran görüntüsü formatı';
  @override
  String get game_add => 'Oyun ekle';
  @override
  String get game_already_added => 'Bu oyun zaten kütüphanede';
  @override
  String get game_attach_and_capture => 'Ekle ve yakala';
  @override
  String get game_audio_backend_engine => 'Motor PCM';
  @override
  String get game_audio_backend_loopback => 'Sistem geri döngüsü (karışık)';
  @override
  String get game_audio_backend_none => 'Ses kaynağı yok';
  @override
  String get game_audio_backend_resource => 'Oyun kaynak sesi';
  @override
  String get game_audio_duration => 'Ses süresi';
  @override
  String get game_audio_fallback_clean => 'Yalnızca temiz kaynaklar';
  @override
  String get game_audio_fallback_clean_hint =>
      'Yalnızca oyun kaynak sesi ve motor PCM kullanır. Sesi olmayan satırlar BGM almak yerine sessiz olarak kartlanır.';
  @override
  String get game_audio_fallback_disabled_missing =>
      '未找到与该句匹配的游戏资源音频；已关闭降级，未制卡';
  @override
  String get game_audio_fallback_full => 'Karışık sese izin ver';
  @override
  String get game_audio_fallback_full_hint =>
      'Temiz ses yakalanamazsa sistem karışımına geri döner; klip BGM ve efektler içerebilir.';
  @override
  String get game_audio_fallback_policy => 'Ses geri dönüşü';
  @override
  String get game_audio_fallback_resource => 'Yalnızca orijinal kaynaklar';
  @override
  String get game_audio_fallback_resource_hint =>
      'Oyunla birlikte gelen orijinal ses dosyasını gerektirir; eksik olduğunda kartlama reddedilir.';
  @override
  String get game_audio_requires_thread =>
      'Ses yakalama kaynağı hazır olabilir, ancak bir akış seçilip satır alınana kadar cümle sesi oluşmaz.';
  @override
  String get game_audio_resource_id => '音频资源 ID';
  @override
  String get game_audio_tracks => 'Aktif ses parçaları';
  @override
  String get game_auto_cover => 'Kapak resmini otomatik getir';
  @override
  String get game_back_to_capture => 'Yakalama çalışma alanına dön';
  @override
  String get game_back_to_library => 'Oyun kütüphanesine dön';
  @override
  String get game_capture_active => 'Yakalama etkin';
  @override
  String get game_capture_degraded_loopback =>
      'Oyun çalışıyor, ancak motor enjeksiyonu başarısız oldu; sistem sesine geri dönüldü, bu BGM ve efektleri karıştırabilir.';
  @override
  String get game_capture_description =>
      'Bir oyun başlatın veya bağlayın, ardından metin, ses, ekran görüntüsü ve Anki çıktısını izleyin.';
  @override
  String get game_capture_empty_body =>
      'Bir oyun başlatın veya bağlayın; metin ve cümle sesi durumu burada görünecektir.';
  @override
  String get game_capture_empty_title => 'Henüz satır alınmadı';
  @override
  String get game_capture_launch_failed =>
      'Oyun başlatma veya yakalama başarısız oldu';
  @override
  String get game_capture_launching =>
      'Oyun başlatılıyor ve yakalama başlıyor...';
  @override
  String get game_capture_running => 'Yakalama oturumu çalışıyor';
  @override
  String get game_capture_setup_hint =>
      'Önce diyalog akışını seçin. Fushi yalnızca seçilen akıştaki satırlarla sesi eşleştirebilir.';
  @override
  String get game_capture_setup_title => 'Yakalama kurulumunu tamamlayın';
  @override
  String get game_capture_window_missing =>
      'Oyun işlemi başladı ancak penceresi hiç görünmedi, oyun başlamamış olabilir. Tekrar deneyin.';
  @override
  String get game_capture_workbench => 'Yakalama çalışma alanı';
  @override
  String get game_capture_workbench_tab => 'Yakalama çalışma alanı';
  @override
  String get game_captured_lines => 'Yakalanan satırlar';
  @override
  String get game_card_mapping_missing =>
      'Anki alan eşlemelerinde oyun kartı belirteçleri eksik';
  @override
  String get game_card_sentence_audio_missing =>
      'Kart cümle sesi olmadan oluşturuldu; başka bir satırın sesi kullanılmadı.';
  @override
  String get game_clear_events => 'Olayları temizle';
  @override
  String get game_cover_not_found =>
      'Oyun klasöründe veya çalıştırılabilir dosyada kullanılabilir kapak bulunamadı';
  @override
  String get game_cover_searching => 'Kapak aranıyor...';
  @override
  String get game_cover_updated => 'Kapak güncellendi';
  @override
  String get game_dashboard => 'Ana sayfa';
  @override
  String get game_detail_missing => 'Bu oyun artık kütüphanede değil';
  @override
  String get game_detail_tab_edit => 'Düzenle';
  @override
  String get game_detail_tab_stats => 'İstatistikler';
  @override
  String get game_detail_tab_summary => 'Genel bakış';
  @override
  String get game_diagnostics => 'Uyumluluk tanılamaları';
  @override
  String get game_diagnostics_subtitle =>
      'Oturum aşamaları, uç noktalar, ses parçaları ve yapılandırılmış olaylar';
  @override
  String game_drop_imported({required Object count}) => '${count} oyun eklendi';
  @override
  String get game_drop_no_exe =>
      'Bırakılan dosyalar arasında yeni oyun .exe bulunamadı';
  @override
  String get game_edit_developer => 'Geliştirici';
  @override
  String get game_edit_display_name => 'Görünen ad';
  @override
  String get game_edit_exe_path => 'Çalıştırılabilir dosya yolu';
  @override
  String get game_edit_invalid_date =>
      'Yayın tarihi YYYY-AA-GG biçiminde olmalıdır';
  @override
  String get game_edit_launch_args => 'Başlatma argümanları';
  @override
  String get game_edit_launch_args_hint =>
      'Başlatmada oyuna iletilir, örn. -windowed';
  @override
  String get game_edit_nsfw => 'Yetişkin başlık';
  @override
  String get game_edit_release_date => 'Yayın tarihi (YYYY-AA-GG)';
  @override
  String get game_edit_save => 'Kaydet';
  @override
  String get game_edit_saved => 'Kaydedildi';
  @override
  String get game_edit_summary => 'Açıklama';
  @override
  String get game_edit_tags => 'Etiketler (virgülle ayrılmış)';
  @override
  String get game_edit_user_rating => 'Puanım (0-10)';
  @override
  String get game_edit_user_review => 'Değerlendirmem';
  @override
  String get game_edit_workdir => 'Çalışma dizini';
  @override
  String get game_empty => 'Henüz oyun eklenmedi';
  @override
  String get game_endpoint_phase_connected => 'Bağlı';
  @override
  String get game_endpoint_phase_connecting => 'Bağlanıyor';
  @override
  String get game_endpoint_phase_retrying => 'Yeniden deneniyor';
  @override
  String get game_endpoint_phase_stopped => 'Durduruldu';
  @override
  String get game_endpoints_engine_active =>
      'Metin motor kancası tarafından sağlanıyor; bu uç noktalar isteğe bağlıdır';
  @override
  String get game_endpoints_hint =>
      'Harici metin araçları için portlar (Textractor / LunaTranslator vb.); kullanmıyorsanız yok sayın';
  @override
  String get game_event_all => 'Tüm olaylar';
  @override
  String get game_event_warnings => 'Uyarılar ve hatalar';
  @override
  String get game_exe_missing => 'Oyun çalıştırılabilir dosyası bulunamadı';
  @override
  String get game_filter => 'Filtrele';
  @override
  String get game_filter_all => 'Tümü';
  @override
  String get game_filter_favorited => 'Favoriler';
  @override
  String get game_filter_hide_nsfw => 'Yetişkin başlıkları gizle';
  @override
  String get game_filter_local_only => 'Yerel dosyası var';
  @override
  String get game_filter_metadata_only => 'Yalnızca meta veri';
  @override
  String get game_filter_mined => 'Kart çıkarılmış';
  @override
  String get game_filter_reset => 'Filtreleri temizle';
  @override
  String get game_filter_source => 'Kullanılabilirlik';
  @override
  String get game_filter_status => 'Oynama durumu';
  @override
  String get game_filter_tags => 'Etiketler';
  @override
  String get game_filter_with_audio => 'Sesli';
  @override
  String get game_focus_continue => 'Devam et';
  @override
  String get game_follow_live => 'Canlı takip';
  @override
  String get game_health => 'Sağlık durumu';
  @override
  String get game_health_anki => 'Anki çıktısı';
  @override
  String get game_health_audio => 'Ses kaynağı';
  @override
  String get game_health_helper => 'Kanca yardımcısı';
  @override
  String get game_health_process => 'Oyun işlemi';
  @override
  String get game_health_text => 'Metin kaynağı';
  @override
  String get game_health_upscaling => 'Pencere ölçeklendirme';
  @override
  String get game_health_window => 'Oyun penceresi';
  @override
  String get game_helper_bundle_missing =>
      'Galgame hook yardımcısı bu yapıyla birlikte gelmiyor. Almak için Fushi\'yi güncelleyin.';
  @override
  String get game_helper_download => 'İndir';
  @override
  String game_helper_download_failed({required Object error}) =>
      'Motor bileşeni indirme başarısız: ${error}';
  @override
  String get game_helper_downloading => 'Motor bileşeni indiriliyor…';
  @override
  String get game_helper_install_incomplete =>
      'Motor bileşeni kurulumu tamamlanmadı, lütfen tekrar deneyin';
  @override
  String game_helper_needed_body({required Object size}) =>
      'Galgame başlatmak için motor kancası enjektör bileşeni gereklidir (yaklaşık ${size}). İşlem enjeksiyon kodu içerir ve antivirüs yanlış pozitiflerini önlemek için uygulamadan ayrı gönderilir. Şimdi indirilsin mi?';
  @override
  String get game_helper_needed_title => 'Galgame motor bileşeni gerekli';
  @override
  String get game_helper_size_unknown => 'boyut bilinmiyor';
  @override
  String get game_helper_verification_failed =>
      'Motor bileşeni engellendi: sağlama toplamı doğrulanamadı (GitHub\'daki .sha256 dosyası erişilemez, eksik veya eşleşmiyor). Fushi doğrulanmamış enjektör kodu yüklemeyi reddediyor.';
  @override
  String get game_home_subtitle => 'Oyun kütüphanesi ve yakalama izleme';
  @override
  String get game_hook_btn_close => 'Yer paylaşımını kapat';
  @override
  String get game_hook_btn_follow => 'Yeni satırları takip et';
  @override
  String get game_hook_btn_lock => 'Konumu kilitle';
  @override
  String get game_hook_btn_passthrough => 'Tıklamaları oyuna geçir';
  @override
  String get game_hook_btn_recapture => 'Sesi yeniden yakala';
  @override
  String get game_hook_btn_replay => 'Bu satırın sesini yeniden oynat';
  @override
  String get game_hook_btn_topmost => 'Üstte tut';
  @override
  String get game_hook_btn_transparency => 'Arka planı değiştir';
  @override
  String get game_hook_btn_workbench => 'Yakalama tezgâhını aç';
  @override
  String get game_hook_code_label => 'Etiket (isteğe bağlı)';
  @override
  String get game_hook_code_paste_body =>
      'Kod, çalışmakta olan oyunun yürütülebilir dosyasına bağlanır; böylece Fushi bir dahaki sefere yeniden kullanabilir.';
  @override
  String get game_hook_code_paste_hint =>
      'Ham kodu yapıştırın, ör. /HQN4@4CE90:game.exe';
  @override
  String get game_hook_code_paste_invalid => 'Bu bir hook koduna benzemiyor';
  @override
  String get game_hook_code_paste_saved => 'Bu oyun için hook kodu kaydedildi';
  @override
  String get game_hook_code_paste_title => 'Hook kodu yapıştır';
  @override
  String get game_hook_fallback_all_audio_sources_failed =>
      'Ne motor ses kancası ne de sistem geri döngüsü başlatılabildi; ses yakalanamıyor.';
  @override
  String get game_hook_fallback_engine_attach_failed =>
      'Motor ses kancasını çalışan oyuna bağlama başarısız oldu; bunun yerine sistem karışımı kullanılıyor.';
  @override
  String get game_hook_fallback_engine_pcm_unavailable =>
      'Motor ses kancası kurulu, ancak oyun henüz ses çalmadı. Şimdilik sistem karışımı kullanılıyor ve ilk ses geldiğinde otomatik olarak geri dönecektir.';
  @override
  String get game_hook_fallback_launch_injection_failed =>
      'Oyun çalışıyor, ancak erken motor enjeksiyonu başarısız oldu; bunun yerine sistem karışımı kullanılıyor.';
  @override
  String get game_hook_fallback_window_not_found =>
      'Ses yakalama çalışıyor, ancak oyun penceresi henüz görünmedi, bu yüzden ekran görüntüleri kullanılamıyor. Pencere göründüğünde otomatik olarak bağlanacaktır.';
  @override
  String get game_hook_line_unavailable =>
      'Bu yakalanan satır artık mevcut değil.';
  @override
  String get game_hook_mining_no_session_lines =>
      'Henüz yakalanan satır yok, bu yüzden bu kartı eklenecek bir şey yok. Çalışma alanında farklı bir metin kanalı seçin.';
  @override
  String get game_hook_reason_access_denied =>
      'Oyun daha yüksek ayrıcalıklarla çalışıyor; Fushi\'yi yönetici olarak başlatın ve tekrar deneyin.';
  @override
  String get game_hook_reason_bitness_mismatch =>
      'Yardımcı mimarisi oyunla eşleşmiyor (32-bit ve 64-bit); yardımcıyı yeniden yükleyin.';
  @override
  String get game_hook_reason_capability_probe_failed =>
      'Yakalama bileşeni yetenek kontrolüne yanıt vermedi. Diskte bulundu ancak çalışamadı veya zamanında yanıt vermedi - antivirüs engelliyor olabilir, Fushi\'nin başlatma izni olmayabilir veya artık bir yardımcı işlem takılmış olabilir. Tüm oyunları kapatın, antivirüs karantinasını kontrol edin ve tekrar deneyin.';
  @override
  String get game_hook_reason_create_process_failed =>
      'Oyun Fushi\'den başlatılamadı; çalıştırılabilir dosya yolunu kontrol edin.';
  @override
  String get game_hook_reason_elevation_required =>
      'Bu oyun yönetici hakları gerektiriyor; Fushi\'yi yönetici olarak başlatın ve tekrar başlatın.';
  @override
  String get game_hook_reason_game_exe_missing =>
      'Oyun çalıştırılabilir dosyası kaydedilen yolda artık mevcut değil.';
  @override
  String get game_hook_reason_guarded_hook_failed =>
      'Profil korumalı bir kanca zamanında yüklenemedi; otomatik olarak yeniden deneniyor.';
  @override
  String get game_hook_reason_handshake_timeout =>
      'Oyun kancalandı ancak zamanında metin veya ses üretmedi; bu motor henüz desteklenmiyor olabilir.';
  @override
  String get game_hook_reason_helper_missing =>
      'Bu oyun mimarisi için ses kancası yardımcısı yüklü değil; yükleyin ve tekrar deneyin.';
  @override
  String get game_hook_reason_hook_dll_missing =>
      'Yardımcı paketi eksik (kanca kitaplığı eksik); yeniden yükleyin.';
  @override
  String get game_hook_reason_injection_failed =>
      'Oyuna enjeksiyon engellendi; Fushi ve oyunu antivirüs istisnalarına ekleyin.';
  @override
  String get game_hook_reason_native_loopback_ack_timeout =>
      'The audio capture policy was not confirmed in time. Text capture still works; try again if game audio is missing.';
  @override
  String get game_hook_reason_protocol_mismatch =>
      'Yakalama bileşeni bu Fushi derlemesiyle eşleşmiyor. Fushi\'nin içinde gelir, ayrıca yüklenecek bir şey yoktur. Önce oyunu tamamen kapatıp yeniden başlatın: oyun işlemi, önceki bir oturumun enjekte ettiği bileşeni hâlâ tutuyor olabilir. Hâlâ eşleşmiyorsa, diskteki bileşen dosyaları Fushi\'den eski çünkü son Fushi güncellemesi bir oyun çalışırken onları değiştiremedi. Tüm oyunları kapatın, ardından Fushi yükleyicisini tekrar çalıştırın.';
  @override
  String get game_hook_reason_ready_timeout =>
      'Kanca kitaplığı zamanında yüklenemedi; antivirüs taraması buna neden olabilir.';
  @override
  String get game_hook_reason_resident_hook_mismatch =>
      'Önceki bir yakalama oturumu hâlâ oyunda yüklü; oyunu bir kez yeniden başlatın.';
  @override
  String get game_hook_reason_resume_failed =>
      'Başlatılan oyun devam ettirilemedi ve durduruldu; tekrar başlatın.';
  @override
  String get game_hook_reason_shared_memory_unavailable =>
      'Yakalama kanalı açılamadı; Fushi\'yi yeniden başlatın.';
  @override
  String get game_hook_reason_spawn_failed =>
      'Yardımcı başlatılamadı; antivirüsün kaldırmadığından veya engellemediğinden emin olun.';
  @override
  String get game_hook_reason_stale_session =>
      'Önceki yakalama oturumu henüz serbest bırakılmadı; Fushi kendi kendine yeniden deniyor, bir şey yapmanız gerekmez.';
  @override
  String get game_hook_reason_steam_timeout =>
      'Steam başlatma isteğini kabul etti ancak oyun işlemi hiç görünmedi.';
  @override
  String get game_hook_reason_target_missing =>
      'Yakalama için oyun işlemi veya çalıştırılabilir dosya seçilmedi.';
  @override
  String get game_hook_recapture_empty =>
      'Yeniden yakalama penceresinde ses yakalanamadı';
  @override
  String get game_hook_recapture_saved =>
      'Yeniden yakalanan ses bu satıra kaydedildi';
  @override
  String get game_hook_recapture_started =>
      'Kayıt yapılıyor — bu satırı oyunda tekrarlayın';
  @override
  String get game_hook_recapture_unavailable =>
      'Ses yeniden yakalama, sistem geri döngü sesi gerektirir';
  @override
  String get game_import_drop_hint =>
      '.exe dosyalarını oyun kütüphanesine sürükleyebilirsiniz';
  @override
  String get game_japanese_locale => 'Japonca yerel ayarı';
  @override
  String get game_japanese_locale_auto => 'Otomatik';
  @override
  String get game_japanese_locale_evidence_dir_file_name_chinese_patch =>
      'Dosya adları Çince yama işareti taşıyor';
  @override
  String get game_japanese_locale_evidence_dir_file_name_japanese =>
      'Dosya adları kana içeriyor';
  @override
  String get game_japanese_locale_evidence_dir_text_gbk =>
      'Metin dosyaları GBK';
  @override
  String get game_japanese_locale_evidence_dir_text_shift_jis =>
      'Metin dosyaları Shift-JIS';
  @override
  String get game_japanese_locale_evidence_dir_text_simplified_hanzi =>
      'Metin dosyaları Basitleştirilmiş Çince içeriyor';
  @override
  String get game_japanese_locale_evidence_exe_shift_jis_strings =>
      'Çalıştırılabilir dosya Shift-JIS dizeleri içeriyor';
  @override
  String get game_japanese_locale_evidence_manifest_utf8_code_page =>
      'Manifest UTF-8 kod sayfası bildiriyor';
  @override
  String get game_japanese_locale_evidence_user_language_japanese =>
      'İçerik dili Japonca';
  @override
  String get game_japanese_locale_evidence_user_language_other =>
      'İçerik dili Japonca değil';
  @override
  String get game_japanese_locale_evidence_version_info_chinese =>
      'Sürüm kaynağı Çince';
  @override
  String get game_japanese_locale_evidence_version_info_japanese =>
      'Sürüm kaynağı Japonca';
  @override
  String get game_japanese_locale_hint =>
      'Çince/İngilizce yamalı sürümlerde bu kapatılmalıdır, aksi halde oyun başlatılırken çöker';
  @override
  String get game_japanese_locale_off => 'Kapalı';
  @override
  String get game_japanese_locale_on => 'Her zaman açık';
  @override
  String get game_kpi_total_games => 'Oyunlar';
  @override
  String get game_kpi_week => 'Bu hafta';
  @override
  String get game_latest_line => 'Son satır';
  @override
  String get game_launch => 'Başlat';
  @override
  String get game_launch_and_capture => 'Başlat ve yakala';
  @override
  String get game_launch_unsupported =>
      'Oyun başlatma yalnızca Windows\'ta desteklenir';
  @override
  String get game_library => 'Oyun kütüphanesi';
  @override
  String get game_library_download_queued => 'Sırada';
  @override
  String get game_library_download_retrying => 'Yeniden deneniyor';
  @override
  String get game_library_downloading => 'İndiriliyor';
  @override
  String get game_line_audio_encoded => 'Ses çıkarıldı';
  @override
  String get game_line_audio_fallback => 'Yedek';
  @override
  String get game_line_audio_loopback_hint =>
      'Sistem karışımı geri dönüşü; BGM içerebilir';
  @override
  String get game_line_audio_matched => 'Ses hazır';
  @override
  String get game_line_audio_missing => 'Ses yok';
  @override
  String get game_line_audio_no_voice => 'Ses yok';
  @override
  String get game_line_audio_overlong => 'Aşırı uzun klip';
  @override
  String get game_line_audio_overlong_hint =>
      'Tek bir satırdan çok daha uzun; BGM veya karışık ses içerebilir';
  @override
  String get game_line_audio_pending => 'Eşleştiriliyor';
  @override
  String get game_line_audio_suppressed => 'Karışım atlandı';
  @override
  String get game_line_audio_suppressed_hint =>
      'Hiçbir temiz ses kaynağı bu satır için ses üretmedi ve sistem karışımı ses geri dönüş politikanız tarafından atlandı. Bu, satırın sesi olmadığı anlamına gelmez.';
  @override
  String get game_line_audio_unavailable => 'Yalnızca metin';
  @override
  String get game_line_copy_tooltip => 'Cümleyi kopyala';
  @override
  String get game_line_favorite_tooltip => 'Bu satırı favorilere ekle';
  @override
  String get game_line_mined => 'Kart çıkarıldı';
  @override
  String get game_line_preview_failed => 'Bu satır için çalınabilir ses yok';
  @override
  String get game_line_preview_tooltip => 'Bu satırın sesini çal';
  @override
  String get game_line_recapture => 'Sesi yeniden yakala';
  @override
  String get game_line_recapture_stop => 'Yakalamayı bitir';
  @override
  String get game_line_track_applied => 'Ses parçası bu satıra uygulandı';
  @override
  String get game_line_track_dialog_title => 'Bu satır için ses parçası';
  @override
  String get game_line_track_failed => 'Bu parçada bu satır civarında ses yok';
  @override
  String get game_line_track_tooltip => 'Bu satır için ses parçası seçin';
  @override
  String get game_line_track_use => 'Bu satır için kullan';
  @override
  String get game_line_tracks => 'Bu satır için parçalar';
  @override
  String get game_line_tracks_hint =>
      'Bu satırın anındaki her parçayı önizleyin, ardından BGM olanları hariç tutun';
  @override
  String get game_line_unfavorite_tooltip => 'Favoriyi kaldır';
  @override
  String get game_live_lines => 'Canlı satırlar';
  @override
  String get game_lookup_attached_align_bottom => 'Alta';
  @override
  String get game_lookup_attached_align_center => 'Ortaya';
  @override
  String get game_lookup_attached_align_left => 'Sola';
  @override
  String get game_lookup_attached_align_right => 'Sağa';
  @override
  String get game_lookup_attached_align_top => 'Üste';
  @override
  String get game_lookup_attached_body_rect => 'Gövde dikdörtgeni';
  @override
  String get game_lookup_attached_calibrate => 'Kalibre et';
  @override
  String get game_lookup_attached_calibration_commit => 'Kalibrasyonu kaydet';
  @override
  String get game_lookup_attached_calibration_failed =>
      'Kalibrasyon uygulanmadı. Gövde metnini, hedef pencereyi ve üç sondayı kontrol edin.';
  @override
  String get game_lookup_attached_calibration_short_text =>
      'Kalibrasyon sondaları için en az üç karakter gerekir.';
  @override
  String get game_lookup_attached_calibration_title =>
      'Gövde metnini kalibre et';
  @override
  String get game_lookup_attached_font_family => 'Yazı tipi';
  @override
  String get game_lookup_attached_font_size =>
      'Yazı boyutu / istemci yüksekliği';
  @override
  String get game_lookup_attached_height => 'Yükseklik';
  @override
  String get game_lookup_attached_left => 'Sol';
  @override
  String get game_lookup_attached_letter_spacing =>
      'Harf aralığı / istemci yüksekliği';
  @override
  String get game_lookup_attached_line_height => 'Satır yüksekliği';
  @override
  String get game_lookup_attached_mode => 'Mod';
  @override
  String get game_lookup_attached_mode_attached_only =>
      'Yalnızca kalibre edilmiş katman';
  @override
  String get game_lookup_attached_mode_auto => 'Otomatik';
  @override
  String get game_lookup_attached_mode_native_only => 'Yalnızca yerel geometri';
  @override
  String get game_lookup_attached_mode_off => 'Kapalı';
  @override
  String get game_lookup_attached_native_status => 'Yerel geometri';
  @override
  String get game_lookup_attached_no_ocr =>
      'OCR yok · yalnızca yatay gövde metni';
  @override
  String get game_lookup_attached_preview => 'Geçerli gövde metni önizlemesi';
  @override
  String get game_lookup_attached_probe_end => 'Son glif';
  @override
  String get game_lookup_attached_probe_middle => 'Orta glif';
  @override
  String get game_lookup_attached_probe_start => 'İlk glif';
  @override
  String get game_lookup_attached_probe_waiting =>
      'Oyun içinde eşleşen tıklama bekleniyor';
  @override
  String get game_lookup_attached_probes_hint =>
      'Oyunda vurgulanan ilk, orta ve son glife tıklayın, ardından aşağıda her karakteri onaylayın.';
  @override
  String get game_lookup_attached_profile => 'Profil';
  @override
  String get game_lookup_attached_profile_clear => 'Profili temizle';
  @override
  String get game_lookup_attached_profile_clear_body =>
      'Kaydedilen dikdörtgen, metin düzeni ve bu çalıştırılabilir dosyaya özel tıklama yetkisi kaldırılacak.';
  @override
  String get game_lookup_attached_profile_clear_title =>
      'Arama profili temizlensin mi?';
  @override
  String get game_lookup_attached_profile_missing => 'Kalibre edilmedi';
  @override
  String get game_lookup_attached_profile_ready => 'Kalibre edildi';
  @override
  String get game_lookup_attached_provider => 'Sağlayıcı';
  @override
  String get game_lookup_attached_provider_unknown => 'Bildirilmedi';
  @override
  String get game_lookup_attached_risk => 'Tıklama riski';
  @override
  String get game_lookup_attached_risk_accept => 'Tıklama riskini kabul et';
  @override
  String get game_lookup_attached_risk_active =>
      'Risk kabul edildi · çift tetiklenebilir';
  @override
  String get game_lookup_attached_risk_body =>
      'Bu çalıştırılabilir dosya için giriş kalkanı doğrulanmadı. Bir glife tıklamak diyaloğu da ilerletebilir veya bir seçimi tetikleyebilir. Bu yetki yalnızca geçerli çalıştırılabilir dosya karması için saklanır ve güncellemeden sonra iptal edilir.';
  @override
  String get game_lookup_attached_risk_pending => 'Onay gerekli';
  @override
  String get game_lookup_attached_risk_safe => 'Yetkilendirilmedi';
  @override
  String get game_lookup_attached_risk_title => 'Ham tıklama riskini onaylayın';
  @override
  String get game_lookup_attached_shield => 'Giriş kalkanı';
  @override
  String get game_lookup_attached_shield_faulted => 'Hatalı';
  @override
  String get game_lookup_attached_shield_known_uncovered =>
      'Kapsanmadığı biliniyor';
  @override
  String get game_lookup_attached_shield_partial => 'Kısmi';
  @override
  String get game_lookup_attached_shield_unknown => 'Bilinmiyor';
  @override
  String get game_lookup_attached_shield_verified => 'Doğrulandı';
  @override
  String get game_lookup_attached_status => 'Durum';
  @override
  String get game_lookup_attached_text_align => 'Yatay hizalama';
  @override
  String get game_lookup_attached_thread_required =>
      'Kalibrasyondan önce bir gövde metni iş parçacığı seçin.';
  @override
  String get game_lookup_attached_title => 'Oyun içi arama';
  @override
  String get game_lookup_attached_top => 'Üst';
  @override
  String get game_lookup_attached_vertical_align => 'Dikey hizalama';
  @override
  String get game_lookup_attached_width => 'Genişlik';
  @override
  String get game_manage_tracks => 'Ses parçalarını yönet';
  @override
  String get game_meta_added => 'Eklenme';
  @override
  String get game_meta_ranking => 'Sıralama';
  @override
  String get game_meta_source => 'Veri kaynağı';
  @override
  String get game_never_played => 'Hiç oynanmadı';
  @override
  String get game_no_active_line =>
      'Cümle sesi durumunu incelemek için bir satır seçin.';
  @override
  String get game_no_events => 'Henüz oturum olayı yok';
  @override
  String get game_no_match => 'Mevcut filtrelere uyan oyun yok';
  @override
  String get game_no_tracks => 'Henüz ses parçası verisi yok';
  @override
  String get game_open_capture_workspace => 'Yakalama çalışma alanını aç';
  @override
  String get game_phase_attaching => 'Bağlanıyor';
  @override
  String get game_phase_degraded => 'Düşük performans';
  @override
  String get game_phase_error => 'Hata';
  @override
  String get game_phase_idle => 'Boşta';
  @override
  String get game_phase_injecting => 'Enjekte ediliyor';
  @override
  String get game_phase_launching => 'Başlatılıyor';
  @override
  String get game_phase_resolving => 'Çözümleniyor';
  @override
  String get game_phase_running => 'Çalışıyor';
  @override
  String get game_phase_stopping => 'Durduruluyor';
  @override
  String get game_phase_waiting_signals => 'Sinyal bekleniyor';
  @override
  String get game_pipeline => 'Oturum iş hattı';
  @override
  String get game_play_status => 'Oynama durumu';
  @override
  String get game_random_reroll => 'Karıştır';
  @override
  String get game_random_title => 'Benim için seç';
  @override
  String get game_recently_played => 'Son oynananlar';
  @override
  String get game_refresh_tracks => 'Parçaları yenile';
  @override
  String get game_remove => 'Kaldır';
  @override
  String get game_remove_confirm =>
      'Bu oyun kütüphaneden kaldırılsın mı? Diskteki oyun dosyaları silinmeyecektir.';
  @override
  String get game_rename => 'Yeniden adlandır';
  @override
  String get game_rename_label => 'Oyun adı';
  @override
  String get game_scrape => 'Meta veri getir';
  @override
  String get game_scrape_applied => 'Meta veri güncellendi';
  @override
  String get game_scrape_failed => 'Meta veri getirme başarısız';
  @override
  String get game_scrape_no_result => 'Eşleşen kayıt bulunamadı';
  @override
  String get game_scrape_query => 'Başlık veya kaynak kimliği';
  @override
  String get game_scrape_search => 'Ara';
  @override
  String get game_scrape_search_failed =>
      'Arama başarısız. Ağ bağlantınızı kontrol edip tekrar deneyin.';
  @override
  String get game_scrape_use => 'Kullan';
  @override
  String get game_search => 'Oyun ara';
  @override
  String get game_session_events => 'Oturum olayları';
  @override
  String get game_session_idle => 'Yakalama başlamadı';
  @override
  String get game_session_japanese_locale => 'Japonca yerel ayarı';
  @override
  String game_session_japanese_locale_evidence({required Object evidence}) =>
      'Kanıtlar: ${evidence}';
  @override
  String get game_session_japanese_locale_evidence_insufficient =>
      'yetersiz kanıt';
  @override
  String get game_session_japanese_locale_hint =>
      'Oyun, Japonca (CP932) yerel ayarı altında başlatıldı. Metni bozuk görünüyorsa veya bir betik hatası çıkıyorsa, bu oyunun Japonca yerel ayarını Asla olarak değiştirin.';
  @override
  String get game_session_japanese_locale_skipped => 'Yerel ayar uygulanmadı';
  @override
  String game_session_japanese_locale_skipped_hint({
    required Object evidence,
  }) =>
      'Oyun Japonca yerel ayar olmadan başlatıldı (otomatik karar: ${evidence}). Metin bozuk görünüyorsa bu oyunun Japonca yerel ayarını “Her zaman açık” yapın.';
  @override
  String get game_session_japanese_locale_skipped_hint_not_32bit =>
      'Oyun Japonca yerel ayar olmadan başlatıldı: otomatik karar gerekli diyor ama Locale Emulator yalnızca 32 bit oyunları destekliyor.';
  @override
  String get game_session_japanese_locale_skipped_hint_system_japanese =>
      'Oyun Japonca yerel ayar olmadan başlatıldı: bu sistem zaten Japonca (CP932) kod sayfasını kullanıyor, değiştirilecek bir şey yok.';
  @override
  String get game_session_listening => 'Dinleniyor';
  @override
  String get game_session_waiting_thread => 'Diyalog akışı bekleniyor';
  @override
  String get game_set_cover => 'Kapak belirle';
  @override
  String get game_show_hook_text_window => 'Kanca metin penceresini göster';
  @override
  String get game_site_score => 'Site puanı';
  @override
  String get game_sort => 'Sırala';
  @override
  String get game_sort_added => 'Eklenme tarihi';
  @override
  String get game_sort_last_played => 'Son oynanan';
  @override
  String get game_sort_name => 'Ad';
  @override
  String get game_sort_release => 'Yayın tarihi';
  @override
  String get game_sort_site_score => 'Site puanı';
  @override
  String get game_sort_user_rating => 'Puanım';
  @override
  String get game_stat_by_game => 'Oyuna göre';
  @override
  String get game_stat_daily => 'Günlük oynama süresi';
  @override
  String get game_stat_delete_session => 'Bu oturumu sil';
  @override
  String get game_stat_last_played => 'Son oynanan';
  @override
  String get game_stat_no_sessions => 'Henüz oynama oturumu kaydedilmedi';
  @override
  String get game_stat_session_list => 'Oturum geçmişi';
  @override
  String get game_stat_sessions => 'Oturumlar';
  @override
  String get game_stat_today => 'Bugünkü oynama süresi';
  @override
  String get game_stat_total_time => 'Toplam oynama süresi';
  @override
  String get game_statistics => 'Oyun istatistikleri';
  @override
  String get game_status_dropped => 'Bırakıldı';
  @override
  String get game_status_not_configured => 'Doğrulanmadı';
  @override
  String get game_status_on_hold => 'Beklemede';
  @override
  String get game_status_played => 'Oynandı';
  @override
  String get game_status_playing => 'Oynanıyor';
  @override
  String get game_status_ready => 'Hazır';
  @override
  String get game_status_unset => 'Belirlenmedi';
  @override
  String get game_status_waiting => 'Bekliyor';
  @override
  String get game_status_want_to_play => 'Oynamak istiyorum';
  @override
  String get game_stop_listening => 'Dinleyicileri durdur';
  @override
  String get game_summary_aliases => 'Takma adlar';
  @override
  String get game_summary_all_titles => 'Tüm başlıklar';
  @override
  String get game_summary_average_hours => 'Ortalama oynama süresi';
  @override
  String get game_summary_none =>
      'Henüz açıklama yok. Doldurmak için meta veri getirin.';
  @override
  String get game_summary_release_date => 'Yayın tarihi';
  @override
  String get game_tags_clear => 'Seçimi temizle';
  @override
  String get game_tags_title => 'Oyun etiketleri';
  @override
  String get game_text_endpoints => 'Metin uç noktaları';
  @override
  String get game_text_gaps => 'Sıra boşlukları';
  @override
  String get game_text_gaps_hint =>
      'Sıra boşlukları = kanca metin halkasındaki kaybedilen satır sayısı; 0 normaldir';
  @override
  String get game_text_source_engine => 'Motor kancası';
  @override
  String get game_text_source_unknown => 'Bilinmeyen kaynak';
  @override
  String get game_text_source_websocket => 'WebSocket';
  @override
  String get game_text_thread => 'Metin dizisi';
  @override
  String get game_text_thread_artifact_hint =>
      'Repeated-character artifact thread, no usable lines';
  @override
  String game_text_thread_audio_count({required Object count}) =>
      '${count} sesli';
  @override
  String get game_text_thread_hint =>
      'Luna Translator gibi temiz diyalog dizisini seçin';
  @override
  String get game_text_thread_unset =>
      'İş parçacığı seçilmedi — yakalamayı başlatmak için birini seçin';
  @override
  String get game_track_auto => 'Otomatik seçim';
  @override
  String get game_track_bgm => 'BGM / hariç tutulan';
  @override
  String get game_track_clips => 'Klipler';
  @override
  String get game_track_energy => 'Enerji';
  @override
  String get game_track_exclude_bgm => 'BGM olarak işaretle';
  @override
  String get game_track_exclusion_hint =>
      'Bir BGM/ortam parçasını hariç tutulmuş olarak işaretleyin, böylece otomatik seçim onu ses olarak ele almaz — konuşma içermeyen satırlar artık BGM almaz.';
  @override
  String get game_track_exclusion_title => 'Ses parçalarını hariç tut';
  @override
  String get game_track_preview => 'Bu parçayı önizle';
  @override
  String get game_track_preview_failed =>
      'Bu parçadan yakın zamanlı ses yakalanamadı';
  @override
  String get game_track_preview_stop => 'Önizlemeyi durdur';
  @override
  String get game_track_restore => 'Parçayı geri yükle';
  @override
  String get game_track_select_as_voice => 'Ses parçası olarak kullan';
  @override
  String get game_track_select_requires_engine =>
      'Parça seçimi aktif bir motor kancası oturumu gerektirir';
  @override
  String get game_track_silent_at_cue => 'Bu satırda ses yok';
  @override
  String get game_track_voice => 'Ses';
  @override
  String get game_tracks_loopback_hint =>
      'Sistem geri döngüsü tüm sistemin karışık çıktısını tek bir akış olarak yakalar; parça bazlı numaralandırma mevcut değildir.';
  @override
  String get game_tracks_pcm_only_hint =>
      'Parça bazlı seçim yalnızca motor PCM aktif ses arka ucu iken yakalamayı etkiler. Aşağıdaki liste mevcut arka uç altında salt okunurdur.';
  @override
  String get game_tracks_resource_mode_hint =>
      'Oyun kaynağı ses modunda, her ses satırı doğrudan oyun dosyalarından çıkarılır, bu yüzden burada PCM parça listesi yoktur. Otomatik veya manuel parça seçimi yalnızca motor PCM yakalama için geçerlidir.';
  @override
  String get game_unread_lines => 'Okunmamış';
  @override
  String get game_upscaling => 'Oyun penceresi ölçeklendirme';
  @override
  String get game_upscaling_auto => 'Otomatik';
  @override
  String get game_upscaling_auto_hint =>
      'Magpie zaten çalışıyorsa onu kullan; aksi halde Fushi ile birlikte gelen sürümü kullan. İndirme gerekmez.';
  @override
  String get game_upscaling_error_bundle_invalid =>
      'Paketlenmiş Magpie bileşeni bozuk veya doğrulamadan geçemedi. Fushi\'yi yeniden yükleyin veya güncelleyin.';
  @override
  String get game_upscaling_error_bundle_missing =>
      'Fushi kurulumu eksik: paketlenmiş Magpie bileşeni bulunamıyor. Fushi\'yi yeniden yükleyin veya güncelleyin.';
  @override
  String get game_upscaling_hint_external =>
      'Bir Magpie kopyası zaten çalışıyordu, bu yüzden Fushi ona dokunmadı. Oyun penceresini ölçeklendirmek için Win+Shift+A tuşlarına basın.';
  @override
  String get game_upscaling_hint_first_run =>
      'Magpie bu sefer kendini ayarlamak zorunda kaldı. Şimdi ölçeklendirmek için Win+Shift+A tuşlarına basın — bir sonraki oyun başlatmanızda otomatik olarak yapılacaktır.';
  @override
  String get game_upscaling_hint_manual =>
      'Oyun penceresini ölçeklendirmek için Win+Shift+A tuşlarına basın.';
  @override
  String get game_upscaling_hint_not_installed =>
      'Magpie hazır değil. Fushi ile birlikte gelen kopyayı kullanmak için pencere büyütmeyi Otomatik olarak ayarlayın; hâlâ başlamazsa Fushi\'yi güncelleyin veya yeniden yükleyin.';
  @override
  String get game_upscaling_installed_only => 'Yalnızca yüklü';
  @override
  String get game_upscaling_installed_only_hint =>
      'Magpie yalnızca zaten kuruluysa veya çalışıyorsa kullan. Fushi\'nin gömülü sürümünü çıkarma.';
  @override
  String get game_upscaling_off => 'Kapalı';
  @override
  String get game_upscaling_off_hint => 'Oyun penceresini asla büyütme.';
  @override
  String get game_upscaling_pick_body =>
      'Yakalama oturumu çalışırken bu oyun penceresini Magpie ile büyütür. Oyun başına ayarlanır — yalnızca doğal çözünürlüğü ekranınızdan düşük olan oyunlarda işe yarar. GPU kullanır.';
  @override
  String game_upscaling_pick_title({required Object name}) =>
      '${name} için pencere büyütme';
  @override
  String get game_upscaling_status_active => 'Pencere ölçeklendirme açık';
  @override
  String get game_upscaling_status_failed =>
      'Pencere ölçeklendirme başlatılamadı';
  @override
  String get game_upscaling_status_manual =>
      'Pencere ölçeklendirme hazır, ancak otomatik başlamadı';
  @override
  String get game_upscaling_status_unavailable =>
      'Pencere ölçeklendirme kullanılamıyor';
  @override
  String get game_user_rating => 'Puanım';
  @override
  String get game_user_tags_title => 'Etiketlerim';
  @override
  String get game_view_detail => 'Ayrıntıları görüntüle';
  @override
  String get game_waiting_for_text => 'Metin bekleniyor';
  @override
  String game_waveform_range_label({
    required Object start,
    required Object end,
    required Object duration,
    required Object total,
  }) => '${start} - ${end} (seçili ${duration} / toplam ${total})';
  @override
  String get game_waveform_select_title => 'Ses aralığı seçin';
  @override
  String get game_window_bound => 'Bağlı';
  @override
  String get game_window_missing => 'Bağlı değil';
  @override
  String get games => 'Oyunlar';
  @override
  String get global_context_capture => 'Seçim bağlamını yakala';
  @override
  String get global_context_capture_hint =>
      'Geçerli cümleyi göstermek için ön plandaki uygulamadan çevreleyen metni oku (yalnızca Windows)';
  @override
  String go_to_chapter({required Object n}) => 'Bölüm ${n}';
  @override
  String get handlebar_audio => 'Ses';
  @override
  String get handlebar_book_cover => 'Kitap kapağı';
  @override
  String get handlebar_card_image => 'Card Image (Cover / GIF)';
  @override
  String get handlebar_clip_timestamp => 'Klip zaman damgası';
  @override
  String get handlebar_cue_sentence => 'Altyazı cümlesi';
  @override
  String handlebar_deprecated_label({required Object label}) =>
      '${label} (kullanımdan kaldırıldı)';
  @override
  String get handlebar_document_title => 'Belge başlığı';
  @override
  String get handlebar_expression => 'İfade';
  @override
  String get handlebar_frequencies => 'Frekanslar (HTML)';
  @override
  String get handlebar_frequency_harmonic_rank => 'Frekans (Sıra)';
  @override
  String get handlebar_furigana_plain => 'Furigana';
  @override
  String get handlebar_glossary => 'Sözlük';
  @override
  String get handlebar_glossary_first => 'Sözlük (İlk)';
  @override
  String get handlebar_phonetic_transcriptions => 'Fonetik çevriyazılar';
  @override
  String get handlebar_pitch_accent_categories => 'Perde kategorileri';
  @override
  String get handlebar_pitch_accent_positions => 'Perde konumları';
  @override
  String get handlebar_popup_selection_text => 'Açılır pencere seçim metni';
  @override
  String get handlebar_reading => 'Okuma';
  @override
  String get handlebar_selected_glossary => 'Seçili sözlük';
  @override
  String get handlebar_sentence => 'Cümle';
  @override
  String get handlebar_sentence_audio => 'Sentence Audio';
  @override
  String get handlebar_video_clip => 'Video Clip (GIF)';
  @override
  String get harmonic_frequency => 'Kelime sıklıklarını birleştir';
  @override
  String health_match_summary({required Object pct}) => 'Eşleşme ${pct}%';
  @override
  String get highlight_on_tap => 'Dokunma ile metni vurgula';
  @override
  String get home_activity => 'Etkinlik';
  @override
  String get home_activity_empty => 'Henüz etkinlik yok';
  @override
  String get home_continue => 'Devam et';
  @override
  String get home_filter_added => 'Eklenen';
  @override
  String get home_filter_all => 'Tümü';
  @override
  String get home_filter_game => 'Oyun';
  @override
  String get home_filter_read => 'Oku';
  @override
  String get home_filter_watch => 'İzle';
  @override
  String get home_recently_added => 'Son eklenenler';
  @override
  String get home_remote_source => 'Uzak';
  @override
  String home_session_count({required Object n}) => '${n} oturum';
  @override
  String get home_today => 'Bugün';
  @override
  String get home_yesterday => 'Dün';
  @override
  String get hover_auto_lookup => 'Üzerine gelince ara';
  @override
  String get hover_auto_lookup_hint =>
      'Fare bir karakterin üzerine geldiğinde otomatik olarak ara; tıklamaya veya Shift tuşunu basılı tutmaya gerek yok. En fazla bir açılır katman gösterir. Yalnızca masaüstü.';
  @override
  String get icon_custom => 'Özel';
  @override
  String get icon_custom_confirm_body =>
      'Seçtiğiniz görsel ile bir ana ekran kısayolu oluşturulacak. Devam edilsin mi?';
  @override
  String get icon_custom_confirm_title => 'Özel Simge';
  @override
  String get icon_custom_hint =>
      'Değiştirmek için bir simgeye dokunun veya aşağıdan özel bir görsel seçin.';
  @override
  String get icon_default => 'Varsayılan';
  @override
  String get icon_shortcut_created => 'Ana ekran kısayolu oluşturuldu.';
  @override
  String get icon_shortcut_unsupported =>
      'Bu cihazda kısayollar desteklenmiyor.';
  @override
  String get icon_switch_success => 'Uygulama simgesi başarıyla değiştirildi.';
  @override
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  @override
  String get image_pause => 'Resimde duraklat';
  @override
  String get image_pause_hint =>
      'Oynatma sırasında bir resim göründüğünde otomatik duraklat.';
  @override
  String get image_pause_off => 'Kapalı';
  @override
  String get image_search_label_after => 'bulundu';
  @override
  String get image_search_label_before => 'Resim seçiliyor ';
  @override
  String get image_search_label_middle => 'toplam ';
  @override
  String get image_search_label_none_before => 'Seçiliyor ';
  @override
  String get image_search_label_none_middle => 'resim yok ';
  @override
  String get import_complete => 'Sözlük içe aktarma tamamlandı.';
  @override
  String import_duplicate({required Object name}) =>
      '『${name}』 adında bir sözlük zaten içe aktarılmış.';
  @override
  String get import_extract => 'Dosyalar çıkarılıyor...';
  @override
  String get import_failed => 'Sözlük içe aktarma başarısız.';
  @override
  String get import_in_progress => 'İçe aktarma devam ediyor';
  @override
  String import_name({required Object name}) => '『${name}』 içe aktarılıyor...';
  @override
  String import_sidecar_audio({required Object count}) =>
      '${count} ses dosyası otomatik eklendi';
  @override
  String import_sidecar_subtitle({required Object name}) =>
      'Otomatik eklenen altyazı: ${name}';
  @override
  String get import_start => 'İçe aktarma hazırlanıyor...';
  @override
  String get import_step_building_epub => 'EPUB oluşturuluyor…';
  @override
  String get import_step_converting_epub => 'EPUB\'a dönüştürülüyor…';
  @override
  String import_step_copying_file({required Object name}) =>
      '${name} kopyalanıyor…';
  @override
  String get import_step_done => 'Tamamlandı';
  @override
  String get import_step_importing_epub => 'EPUB içe aktarılıyor…';
  @override
  String get import_step_matching => 'Ses eşleştirmesi…';
  @override
  String get import_step_parsing => 'Altyazılar ayrıştırılıyor…';
  @override
  String get import_step_persisting => 'Dosyalar kaydediliyor…';
  @override
  String get import_step_reading => 'Dosya okunuyor…';
  @override
  String get import_step_reading_idb => 'Kitap bilgisi okunuyor…';
  @override
  String get import_step_saving => 'Kayıtlar kaydediliyor…';
  @override
  String get import_theme => 'Tema içe aktar';
  @override
  String get import_theme_hint => 'Tema kodunu yapıştırın';
  @override
  String get import_theme_invalid => 'Geçersiz tema kodu';
  @override
  String get import_theme_success => 'Tema içe aktarıldı';
  @override
  String import_unsupported_file_format({required Object ext}) =>
      'Desteklenmeyen dosya biçimi: ${ext}';
  @override
  String get increase => 'Artır';
  @override
  String get info_empty_home_tab => 'Geçmiş boş';
  @override
  String init_error_message({required Object error}) =>
      'Başlatma başarısız: ${error}';
  @override
  String get initialization_failed => 'Başlatma başarısız';
  @override
  String get interconnect_backup_backend =>
      'Yedekleme arka ucu olarak bağlantıyı kullan';
  @override
  String get interconnect_backup_backend_active =>
      'Yedeklemeler zaten eşleştirilmiş cihaza gidiyor. Değiştirmek için Senkronizasyon ve yedekleme\'den başka bir arka uç seçin.';
  @override
  String get interconnect_backup_backend_apply =>
      'Yedekleme arka ucu olarak ayarla';
  @override
  String interconnect_backup_backend_current({required Object backend}) =>
      'Mevcut yedekleme arka ucu: ${backend}';
  @override
  String get interconnect_backup_backend_hint =>
      'Bulut depolama yerine eşleştirilmiş cihaza yedekleyin ve senkronize edin. Yukarıdaki eşleştirilmiş cihaz yükleme anahtarlarının izin verdiği her şey oraya yazılır.';
  @override
  String get interconnect_backup_backend_needs_pairing =>
      'Önce yukarıdan bir cihaza bağlanın.';
  @override
  String get interconnect_devices_hint =>
      'Peer addresses, pairing and LAN discovery';
  @override
  String get interconnect_devices_page => 'Pairing & devices';
  @override
  String interconnect_devices_paired_count({required Object n}) =>
      'Paired devices: ${n}';
  @override
  String get interconnect_enable => 'Bağlantıyı etkinleştir';
  @override
  String get interconnect_enable_footer =>
      'Nasıl kullanılır: kütüphanenizin bulunduğu cihazda aşağıdaki senkronizasyon sunucusu anahtarını açın; diğer cihazınızda eşleştirmek için o sunucunun adresini ekleyin. Bir cihaz aynı anda yalnızca bir rol üstlenebilir — sunucu veya istemci.';
  @override
  String get interconnect_enable_hint =>
      'LAN üzerinden diğer cihazlarınıza bağlanın. Bulut yedekleme arka ucu ile birlikte çalışır — çakışmazlar.';
  @override
  String get interconnect_host_hint =>
      'Port, TLS, access token and paired devices';
  @override
  String get interconnect_host_off => 'Off';
  @override
  String get interconnect_host_page => 'Host service';
  @override
  String interconnect_host_running({required Object port}) =>
      'Running on port ${port}';
  @override
  String get interconnect_moved_note =>
      'Bağlantı ve sunucu ayarları Fushi Interconnect kategorisindedir';
  @override
  String get interconnect_peer_list_empty =>
      'Henüz eş eklenmedi. Otomatik eşleştirme için aşağıdaki LAN cihaz listesinden keşfedilen bir cihaz seçin veya manuel olarak bir eş adresi ekleyin.';
  @override
  String get interconnect_peer_list_title => 'Eklenen eşler';
  @override
  String get interconnect_profile_download =>
      'Download configuration from host';
  @override
  String get interconnect_profile_download_desc =>
      'Import the host\'s active configuration as a new configuration here. Your current one is untouched.';
  @override
  String interconnect_profile_downloaded({required Object name}) =>
      'Configuration imported: ${name}';
  @override
  String interconnect_profile_failed({required Object message}) =>
      'Configuration transfer failed: ${message}';
  @override
  String get interconnect_profile_host_toggle =>
      'Allow paired devices to read/write configuration';
  @override
  String get interconnect_profile_host_toggle_desc =>
      'Off by default. Requires HTTPS and a paired-device token. Incoming configurations are always added as new ones.';
  @override
  String get interconnect_profile_section => 'Configuration file';
  @override
  String get interconnect_profile_unsupported =>
      'The paired host does not offer configuration transfer (needs HTTPS and a newer version).';
  @override
  String get interconnect_profile_upload => 'Upload configuration to host';
  @override
  String get interconnect_profile_upload_desc =>
      'Send this device\'s active configuration to the paired host, where it lands as a new configuration.';
  @override
  String interconnect_profile_uploaded({required Object name}) =>
      'Configuration uploaded: ${name}';
  @override
  String get interconnect_related_entry =>
      'Remote lookup, audio sources & remote entries';
  @override
  String get interconnect_related_entry_hint =>
      'Configured in the Lookup and Sync categories';
  @override
  String get interconnect_section_client => 'Diğer cihazlara bağlan';
  @override
  String get interconnect_section_delegate => 'Eşleştirilmiş cihaza devret';
  @override
  String get interconnect_section_related => 'Uzak içerik ve arama';
  @override
  String get interconnect_share_favorites => 'Favorileri paylaş';
  @override
  String get interconnect_share_favorites_hint =>
      'Favori kelimeler ve cümleler, favoriden çıkarma dahil';
  @override
  String get interconnect_share_section => 'Eşleştirilmiş cihazlarla paylaş';
  @override
  String get interconnect_share_section_footer =>
      'Bunlar eşleştirilmiş cihazla iki yönlü birleştirilir ve varsayılan olarak açıktır. Birini kapatmak hem göndermeyi hem de almayı durdurur.';
  @override
  String get interconnect_share_statistics => 'İstatistikleri paylaş';
  @override
  String get interconnect_share_statistics_hint =>
      'Okuma ve izleme süresi, karakter sayıları, arama ve kart oluşturma sayaçları';
  @override
  String get interconnect_summary =>
      'Doğrudan cihazlar arası senkronizasyon ve bu cihazı sunucu olarak barındır';
  @override
  String get interconnect_upload_audiobook_files =>
      'Sesli kitap dosyalarını yükle';
  @override
  String get interconnect_upload_audiobook_files_hint =>
      'Bu cihazın sesli kitap ses ve altyazı paketlerini bağlantı eşine senkronize edin (büyük boyutlu).';
  @override
  String get interconnect_upload_content => 'Kitap dosyalarını yükle';
  @override
  String get interconnect_upload_content_hint =>
      'Bu cihazın kitap ve okuma içeriğini bağlantı eşine senkronize edin.';
  @override
  String get interconnect_upload_dictionary => 'Sözlükleri yükle';
  @override
  String get interconnect_upload_dictionary_hint =>
      'Bu cihazın sözlüklerini bağlantı eşine senkronize edin.';
  @override
  String get interconnect_upload_section => 'Bağlantı eşine yükle';
  @override
  String get interconnect_upload_section_footer =>
      'Bu cihazın bağlı eşe ne yüklediğini seçin. Bulut yedekleme anahtarlarından bağımsızdır ve varsayılan olarak kapalıdır. Bu anahtarlar yalnızca Karşılıklı bağlantıyı etkinleştir açıkken geçerlidir: karşılıklı bağlantıyı kapatmak buradaki her yüklemeyi durdurur.';
  @override
  String get interconnect_upload_video_files => 'Video dosyalarını yükle';
  @override
  String get interconnect_upload_video_files_hint =>
      'Bu cihazın yerel video dosyalarını bağlantı eşine senkronize edin (büyük boyutlu).';
  @override
  String get invert_audiobook_skip_direction =>
      'Alt çubuk atlama düğmelerini ters çevir';
  @override
  String get invert_swipe_direction => 'Kaydırma yönünü tersine çevir';
  @override
  String get invert_volume_buttons => 'Ses düğmelerini ters çevir';
  @override
  String get jellyfin_auto_list_hint =>
      'Kapalı: video sayfasına girmek medya sunucusuna hiçbir istek göndermez; öğeleri elle listelemek için video kitaplığında çekerek yenileyin. Otomatik sayımın kazıma gibi görünüp kötüye kullanım tespitini tetikleyebildiği çok büyük sunucular için önerilir.';
  @override
  String get jellyfin_auto_list_title =>
      'Video\'ya girerken öğeleri otomatik listele';
  @override
  String get jellyfin_libraries_hint =>
      'Hiçbir şey seçmezseniz tüm video kitaplıkları listelenir. Gerçekten izlediğiniz kitaplıklarla sınırlamak, devasa sunucuların baştan sona sayılmasını önler.';
  @override
  String get jellyfin_libraries_load_failed => 'Kitaplık listesi yüklenemedi';
  @override
  String get jellyfin_libraries_title => 'Listelenecek kitaplıklar';
  @override
  String get jellyfin_server_url => 'Sunucu URL\'si';
  @override
  String get jellyfin_settings_hint =>
      'Sunucudaki videolar video kütüphanesinde görünür ve doğrudan akış yapılır.';
  @override
  String get jellyfin_settings_title => 'Medya sunucusu (Jellyfin / Emby)';
  @override
  String get jellyfin_sign_in => 'Giriş yap';
  @override
  String get jellyfin_sign_in_failed => 'Giriş başarısız';
  @override
  String get jellyfin_sign_out => 'Çıkış yap';
  @override
  String get jump_to_char => 'Karaktere Git';
  @override
  String jump_to_char_current({
    required Object current,
    required Object total,
  }) => 'Mevcut: ${current} / ${total}';
  @override
  String get jump_to_char_hint => 'Karakter konumu girin…';
  @override
  String get keep_screen_awake => 'Ekranı açık tut';
  @override
  String get library_empty_go_import => 'İçe aktarmaya git';
  @override
  String get library_search => 'Kütüphanede ara';
  @override
  String get library_view_browse => 'Keşfet';
  @override
  String get library_view_discover => 'Keşfet';
  @override
  String get library_view_import => 'İçe aktar';
  @override
  String get library_view_media => 'Kütüphane';
  @override
  String get library_view_shelf => 'Raf';
  @override
  String get library_view_sources => 'Kaynaklar';
  @override
  String get loading_illustrations => 'Resimler yükleniyor…';
  @override
  String get loading_slow_message =>
      'Veri depolama konumunuz şu anda bağlı olmayan bir ağ veya çıkarılabilir sürücüdeyse, başlatma takılabilir. Bu oturum için varsayılan depolama konumunu kullanarak başlatmak için Tekrar Dene\'ye dokunun; verileriniz yerinde kalır.';
  @override
  String get loading_slow_message_mobile =>
      'Başlatma normalden uzun sürüyor — Fushi büyük bir kütüphane veya sözlükleri yüklüyor olabilir. Lütfen biraz bekleyin veya yeniden yüklemek için Tekrar Dene\'ye dokunun. Verileriniz güvende ve kaybolmayacak.';
  @override
  String get loading_slow_title => 'Başlatma normalden uzun sürüyor';
  @override
  String get local_audio => 'Yerel ses';
  @override
  String get local_audio_add_db => 'Yerel Ses Veritabanı Ekle';
  @override
  String get local_audio_edit_sources => 'Kaynakları düzenle';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      'Ses veritabanı içe aktarılamadı: ${reason}';
  @override
  String get local_audio_imported => 'Ses veritabanı eklendi';
  @override
  String get local_audio_invalid_db =>
      'Bu dosya kullanılabilir bir ses veritabanı değil (Local Audio Server veritabanı değil veya sesi yok).';
  @override
  String get local_audio_no_sources => 'Bu veritabanında kaynak bulunamadı';
  @override
  String get local_audio_reference_original =>
      'Orijinal dosyaya başvur (kopyalama)';
  @override
  String get local_audio_reference_original_desc =>
      'Veritabanını olduğu yerde tutun ve orijinal yolundan okuyun; dosya taşınır veya silinirse kaynak bozulur.';
  @override
  String get local_audio_reference_unavailable =>
      'Seçilen dosya geçici bir kopyadır. Bunun yerine kalıcı bir kopya içe aktarılıyor.';
  @override
  String get local_audio_source_order_title => 'Kaynak önceliği';
  @override
  String get log_copy_all => 'Tümünü Kopyala';
  @override
  String get log_export_failed => 'Dışa aktarma başarısız';
  @override
  String get log_export_file => 'Dosyaya aktar';
  @override
  String get log_export_saved => 'Günlük kaydedildi';
  @override
  String get log_upload_action => 'Sunucuya yükle';
  @override
  String get log_upload_consent_agree => 'Kabul et ve yükle';
  @override
  String get log_upload_consent_body =>
      'Günlük metni (hata mesajları, dosya yolları ve kitap başlıkları içerebilir) ile uygulama sürümünüz, platformunuz ve cihaz modeliniz, sorunların tespitine yardımcı olmak için geliştiricinin sunucusuna yüklenir. Bu yalnızca yükle düğmesine dokunduğunuzda gerçekleşir — hiçbir şey otomatik olarak gönderilmez.';
  @override
  String get log_upload_consent_title => 'Günlük sunucuya yüklensin mi?';
  @override
  String get log_upload_failed => 'Yükleme başarısız';
  @override
  String get log_upload_in_progress => 'Günlük yükleniyor…';
  @override
  String get log_upload_success => 'Günlük yüklendi';
  @override
  String get log_upload_too_large => 'Günlük yüklemek için çok büyük';
  @override
  String get login => 'Giriş yap';
  @override
  String get lookup_audio_volume => 'Arama ses düzeyi';
  @override
  String get lookup_block_capture => 'Ekran yakalamayı engelle';
  @override
  String get lookup_block_capture_hint =>
      'Arama ve pano açılır pencerelerini ekran görüntüsü, ekran kaydı ve canlı yayından hariç tutar (Windows). Arama açılır penceresinin ekran görüntüsü, kayıt ve yayın tarafından yakalanmasına izin vermek için bunu kapatın.';
  @override
  String get low_memory_mode => 'Düşük Bellek Modu';
  @override
  String get low_memory_mode_hint =>
      'Düşük donanımlı cihazlar için önbellek ve bellek kullanımını azaltır. Bazı değişiklikler yeniden başlatma gerektirir.';
  @override
  String get low_memory_mode_suggestion =>
      'Ayarlar → Çeşitli bölümünden Düşük Bellek Modunu etkinleştirmeyi deneyin.';
  @override
  String get lyrics_artist => 'Sanatçı';
  @override
  String get lyrics_blur => 'Sözleri bulanıklaştır';
  @override
  String get lyrics_blur_hint =>
      'Dinleme deneyimi için geçerli satırı bulanıklaştır; görmek için üzerine gelin veya dokunun';
  @override
  String get lyrics_font_size => 'Şarkı Sözü Yazı Boyutu';
  @override
  String get lyrics_font_size_hint =>
      'Şarkı sözü yazı boyutu kitap modundan bağımsızdır';
  @override
  String get lyrics_mode => 'Şarkı Sözü Modu';
  @override
  String get lyrics_mode_hint_body =>
      'Şarkı sözü modunun kendi yazı boyutu ayarı vardır. ⚙ Ayarlar → Tipografi bölümünden ayarlayabilirsiniz.';
  @override
  String get lyrics_mode_hint_title => 'Şarkı Sözü Modu';
  @override
  String get lyrics_text_color => 'Şarkı sözü metni rengi';
  @override
  String get lyrics_text_color_hint =>
      'Şarkı sözü metni için temayı izlemek yerine özel bir renk kullan';
  @override
  String get lyrics_title => 'Başlık';
  @override
  String get lyrics_vertical_writing => 'Dikey sözler';
  @override
  String get lyrics_vertical_writing_hint =>
      'Sözleri yukarıdan aşağıya, sağdan sola oku (kitap modundan bağımsız)';
  @override
  String get manage_audio_sources => 'Ses kaynaklarını yönet';
  @override
  String get manager => 'Yönetici';
  @override
  String get manga_default_zoom => 'Varsayılan yakınlaştırma';
  @override
  String get manga_direction_ltr => 'Soldan sağa';
  @override
  String get manga_direction_rtl => 'Sağdan sola';
  @override
  String get manga_discovery_load_failed => 'Keşif akışı yüklenemedi.';
  @override
  String get manga_discovery_match_none =>
      'Etkin kaynaklarda eşleşme bulunamadı.';
  @override
  String get manga_discovery_match_running =>
      'Etkin kaynaklarınızda eşleştiriliyor...';
  @override
  String get manga_discovery_match_section => 'Bir kaynaktan oku';
  @override
  String get manga_discovery_section_latest_finished => 'Son tamamlananlar';
  @override
  String get manga_discovery_section_popular => 'Popüler';
  @override
  String get manga_discovery_section_top_rated => 'En yüksek puanlı';
  @override
  String manga_discovery_source_popular({required Object source}) =>
      '${source} üzerinde popüler';
  @override
  String get manga_discovery_sources_browse => 'Bir kaynağa göz at';
  @override
  String get manga_discovery_status_cancelled => 'İptal edildi';
  @override
  String get manga_discovery_status_finished => 'Tamamlandı';
  @override
  String get manga_discovery_status_hiatus => 'Ara verildi';
  @override
  String get manga_discovery_status_not_yet_released => 'Henüz yayınlanmadı';
  @override
  String get manga_discovery_status_releasing => 'Devam ediyor';
  @override
  String get manga_global_search_hint => 'Etkin tüm kaynaklarda ara';
  @override
  String get manga_global_search_no_sources =>
      'Henüz etkin manga kaynağı yok. İçe aktar sekmesinden bir tane ekleyin.';
  @override
  String get manga_global_search_open_sources => 'İçe aktarmaya git';
  @override
  String get manga_global_search_prompt =>
      'Etkin tüm manga kaynaklarında aynı anda aramak için bir başlık yazın.';
  @override
  String get manga_global_search_title => 'Tüm kaynaklarda ara';
  @override
  String get manga_google_lens_disclosure_accept =>
      'Kabul et ve OCR\'yi başlat';
  @override
  String get manga_google_lens_disclosure_body =>
      'Bu mangayı tanıma işlemi, her sayfanın küçültülmüş bir JPEG kopyasını OCR metni olmadan Google\'a gönderir. Sonuçlar bu cihazda önbelleğe alınır. Bu uç nokta resmi değildir ve çalışmayı durdurabilir. Kabul etmedikçe hiçbir şey yüklenmez.';
  @override
  String get manga_google_lens_disclosure_decline => 'İptal';
  @override
  String get manga_google_lens_disclosure_title =>
      'Manga sayfaları Google Lens\'e gönderilsin mi?';
  @override
  String get manga_import_action => 'Manga İçe Aktar';
  @override
  String manga_import_batch_done({
    required Object imported,
    required Object skipped,
    required Object failed,
  }) => '${imported} içe aktarıldı, ${skipped} atlandı, ${failed} başarısız.';
  @override
  String manga_import_batch_hint({required Object n}) =>
      'Bu klasörde ${n} cilt dosyası var; her biri dosya adıyla kendi kitabı olarak içe aktarılır.';
  @override
  String get manga_import_detected_confirm => 'Manga olarak içe aktar';
  @override
  String manga_import_detected_message({required Object name}) =>
      '"${name}" bir manga dosyasıdır, bu yüzden kitap içe aktarıcı yerine manga içe aktarıcıdan geçecektir.';
  @override
  String get manga_import_detected_title => 'Bu bir manga gibi görünüyor';
  @override
  String get manga_import_direct => 'OCR\'siz içe aktar';
  @override
  String get manga_import_folder_as_source_hint =>
      'Yeni manga için bu klasörü taramaya devam et';
  @override
  String get manga_import_hint =>
      'Bir manga klasörü, .cbz/.zip sayfa arşivi, .pdf veya .mokuro dosyası seçin.';
  @override
  String get manga_import_missing_input =>
      'Önce bir manga dosyası veya klasörü seçin.';
  @override
  String get manga_import_pick_file => 'Manga dosyası seç';
  @override
  String get manga_import_pick_folder => 'Manga klasörü seç';
  @override
  String get manga_interface_hide => 'Arayüzü gizle';
  @override
  String get manga_interface_show => 'Arayüzü göster';
  @override
  String get manga_jump_to_page => 'Sayfaya git';
  @override
  String get manga_library => 'Manga';
  @override
  String get manga_mode_toggle => 'Reading Mode';
  @override
  String get manga_next_page => 'Sonraki sayfa';
  @override
  String manga_ocr_acceleration_degraded({
    required Object engine,
    required Object reason,
  }) =>
      'GPU hızlandırma kullanılamıyor, OCR ${engine} üzerinde çalışıyor: ${reason}';
  @override
  String manga_ocr_acceleration_status({required Object engine}) =>
      'OCR hızlandırma: ${engine}';
  @override
  String get manga_ocr_default_engine => 'Varsayılan OCR motoru';
  @override
  String get manga_ocr_delete => 'Modelleri sil';
  @override
  String get manga_ocr_delete_confirm_message =>
      'Bu disk alanı boşaltır. Daha sonra tekrar indirebilirsiniz.';
  @override
  String get manga_ocr_delete_confirm_title => 'OCR modelleri silinsin mi?';
  @override
  String get manga_ocr_delete_done => 'Modeller silindi';
  @override
  String manga_ocr_delete_done_freed({required Object size}) =>
      'Modeller silindi, ${size} boşaltıldı';
  @override
  String get manga_ocr_done => 'OCR tamamlandı';
  @override
  String get manga_ocr_download => 'Modelleri indir';
  @override
  String get manga_ocr_download_done => 'Modeller indirildi';
  @override
  String get manga_ocr_download_failed => 'Model indirme başarısız';
  @override
  String get manga_ocr_download_resume => 'İndirmeyi sürdür';
  @override
  String manga_ocr_download_total_progress({
    required Object done,
    required Object total,
  }) => '${done} / ${total}';
  @override
  String manga_ocr_downloading_file({required Object file}) =>
      '${file} indiriliyor…';
  @override
  String get manga_ocr_engine_auto => 'Otomatik (asla Lens\'e yüklenmez)';
  @override
  String get manga_ocr_engine_auto_desc =>
      'Zaten kurduğunuz çevrimdışı bir motoru tercih eder; kendi başına Lens\'e asla yüklemez.';
  @override
  String get manga_ocr_engine_builtin => 'Yerleşik';
  @override
  String get manga_ocr_engine_external => 'Harici mokuro';
  @override
  String get manga_ocr_engine_external_desc =>
      'Kendiniz kurduğunuz bir mokuro komut satırını çağırır. Yalnızca masaüstü.';
  @override
  String get manga_ocr_engine_google_lens => 'Google Lens';
  @override
  String get manga_ocr_engine_google_lens_desc =>
      'İnternet gerektirir ve sayfa görsellerini Google\'a yükler. İndirme gerektirmez, hızlıdır ancak kalite yerel modelin altındadır.';
  @override
  String get manga_ocr_engine_local_onnx => 'Yerel ONNX';
  @override
  String get manga_ocr_engine_local_onnx_desc =>
      'Tamamen çevrimdışı, en iyi kalite. Tek seferlik bir model indirmesi gerektirir ve eski donanımda yavaştır.';
  @override
  String get manga_ocr_engine_none =>
      'OCR motoru mevcut değil. Yerleşik modelleri indirin veya ayarlardan mokuro CLI yolunu belirleyin.';
  @override
  String get manga_ocr_engine_paired_host_desc =>
      'Hands the work to the paired Fushi interconnect server. Nothing is downloaded here.';
  @override
  String get manga_ocr_engine_system => 'Cihaz OCR\'ı';
  @override
  String get manga_ocr_engine_system_desc =>
      'Cihazınızdaki yerleşik metin tanımayı kullanır. İndirme yok, tamamen çevrimdışı, hiçbir şey yüklenmez — ancak dikey konuşma balonlarında ve el yazısında yerel modele göre belirgin biçimde zayıftır.';
  @override
  String get manga_ocr_engine_system_unavailable =>
      'Bu cihazda kullanılabilir yerleşik metin tanıma yok';
  @override
  String get manga_ocr_external_cli_hint =>
      'Otomatik algılama için boş bırakın (FUSHI_MOKURO / PATH)';
  @override
  String get manga_ocr_external_cli_label => 'Harici mokuro CLI yolu';
  @override
  String get manga_ocr_external_detect => 'Algıla';
  @override
  String manga_ocr_external_detected({required Object version}) =>
      'Algılandı: ${version}';
  @override
  String get manga_ocr_external_not_found => 'mokuro bulunamadı';
  @override
  String get manga_ocr_import => 'Yerel model içe aktar';
  @override
  String get manga_ocr_import_copy_urls => 'İndirme bağlantılarını kopyala';
  @override
  String manga_ocr_import_done({required Object count}) =>
      '${count} dosya içe aktarıldı';
  @override
  String get manga_ocr_import_failed => 'Model içe aktarılamadı';
  @override
  String get manga_ocr_import_intro =>
      'Uygulama içi indirme çalışmıyorsa bu dosyaları kendiniz indirip buradan içe aktarın. Bunları içeren bir zip de olur.';
  @override
  String get manga_ocr_import_matched_nothing =>
      'Kullanılabilir model dosyası tanınmadı';
  @override
  String get manga_ocr_import_pick_files => 'Dosya seç';
  @override
  String get manga_ocr_import_pick_folder => 'Klasör seç';
  @override
  String get manga_ocr_import_running => 'İçe aktarılıyor…';
  @override
  String manga_ocr_import_size_mismatch({
    required Object file,
    required Object expected,
    required Object actual,
  }) => '${file} boyutu yanlış: beklenen ${expected}, gelen ${actual}';
  @override
  String manga_ocr_import_still_missing({required Object count}) =>
      'Hâlâ ${count} dosya eksik';
  @override
  String get manga_ocr_import_title => 'İndirilmiş bir modeli içe aktar';
  @override
  String get manga_ocr_import_urls_copied => 'İndirme bağlantıları kopyalandı';
  @override
  String get manga_ocr_lens_language_label => 'Tanıma dili';
  @override
  String get manga_ocr_mobile_note =>
      'Mobilde bu modeller, manga okuyucudaki tüm cilt, dokunma ve seçili alan OCR\'ı için yerel motoru besler.';
  @override
  String manga_ocr_model_disk_usage({required Object size}) =>
      'Diskte ${size} kullanılıyor';
  @override
  String manga_ocr_model_download_size({required Object size}) =>
      '${size} gerekli';
  @override
  String get manga_ocr_model_status_missing => 'OCR modelleri indirilmedi';
  @override
  String get manga_ocr_model_status_ready => 'OCR modelleri hazır';
  @override
  String get manga_ocr_model_unused_by_engine =>
      'Mevcut motor bu yerel model dosyalarını kullanmıyor.';
  @override
  String get manga_ocr_section => 'Manga OCR';
  @override
  String get manga_ocr_section_summary =>
      'Yerleşik OCR modelleri ve harici mokuro CLI';
  @override
  String get manga_ocr_unsupported =>
      'Yerleşik manga OCR bu platformda henüz kullanılamıyor.';
  @override
  String get manga_ocr_wizard_already_ocred =>
      'Bu cilt zaten her sayfada OCR verisine sahip. OCR\'yi yeniden çalıştırmak bunların üzerine yazacaktır.';
  @override
  String get manga_ocr_wizard_done => 'Manga içe aktarıldı';
  @override
  String get manga_ocr_wizard_failed => 'OCR başarısız';
  @override
  String get manga_ocr_wizard_has_mokuro =>
      'Bu klasörde zaten bir .mokuro dosyası var — bunun yerine normal içe aktarmayı kullanın.';
  @override
  String get manga_ocr_wizard_importing => 'İçe aktarılıyor…';
  @override
  String get manga_ocr_wizard_no_images => 'Bu klasörde görsel bulunamadı.';
  @override
  String manga_ocr_wizard_page_progress({
    required Object done,
    required Object total,
  }) => 'Sayfa ${done} / ${total}';
  @override
  String get manga_ocr_wizard_pick_folder => 'Görsel klasörünü seçin';
  @override
  String get manga_ocr_wizard_run => 'OCR başlat';
  @override
  String get manga_ocr_wizard_running => 'OCR çalışıyor…';
  @override
  String get manga_ocr_wizard_title => 'OCR ile manga içe aktar';
  @override
  String get manga_ocr_wizard_title_label => 'Başlık (isteğe bağlı)';
  @override
  String get manga_online_base_url_label => 'Çevrimiçi katalog URL\'si';
  @override
  String get manga_online_catalog_title => 'Çevrimiçi katalog';
  @override
  String get manga_online_detail_load_failed => 'Bu manga yüklenemedi.';
  @override
  String get manga_online_download_selected => 'Seçilenleri indir';
  @override
  String get manga_online_downloaded => 'İçe aktarıldı';
  @override
  String get manga_online_error_view_detail => 'Ayrıntıları görüntüle';
  @override
  String get manga_online_failed => 'İndirme başarısız';
  @override
  String get manga_online_load_failed => 'Katalog yüklenemedi';
  @override
  String get manga_online_queue_added => 'İndirme kuyruğuna eklendi';
  @override
  String manga_online_queue_progress({
    required Object done,
    required Object total,
  }) => 'Cilt ${done} / ${total}';
  @override
  String get manga_online_queue_section => 'Manga katalog indirmeleri';
  @override
  String manga_online_retry_waiting({
    required Object attempt,
    required Object total,
  }) => 'Otomatik olarak yeniden deneniyor (${attempt}/${total})';
  @override
  String get manga_online_search_hint => 'Seri ara';
  @override
  String get manga_online_series_empty => 'Bu seride hiç cilt yok.';
  @override
  String get manga_online_source_disabled =>
      'Bu internet kaynağı devre dışı. Kataloğa göz atmak için Kaynaklar\'dan etkinleştirin.';
  @override
  String get manga_online_stage_cbz => 'Cilt indiriliyor…';
  @override
  String get manga_online_stage_extract => 'Çıkarılıyor…';
  @override
  String get manga_online_stage_mokuro => 'OCR verileri indiriliyor…';
  @override
  String get manga_page_animation => 'Sayfa çevirme animasyonu';
  @override
  String get manga_page_animation_fade => 'Solma';
  @override
  String get manga_page_animation_none => 'Yok';
  @override
  String get manga_page_animation_slide => 'Kaydırma';
  @override
  String manga_page_number_hint({required Object total}) =>
      'Sayfa numarası (1-${total})';
  @override
  String get manga_previous_page => 'Önceki sayfa';
  @override
  String get manga_reading_direction => 'Okuma yönü';
  @override
  String get manga_reading_mode_spread => 'Çift sayfa';
  @override
  String get manga_reading_mode_webtoon => 'Webtoon';
  @override
  String get manga_remote_ocr_cancelled =>
      'Uzak OCR ana cihaz tarafından iptal edildi.';
  @override
  String get manga_remote_ocr_engine => 'Eşleşmiş cihaz';
  @override
  String get manga_remote_ocr_failed => 'Uzak OCR başarısız oldu';
  @override
  String get manga_remote_ocr_no_host =>
      'Manga OCR destekli eşleşmiş cihaza ulaşılamıyor.';
  @override
  String get manga_remote_ocr_not_ready =>
      'Eşleşmiş cihazın OCR modelleri indirilmemiş. Önce ana cihazda indirin.';
  @override
  String get manga_remote_ocr_running => 'Eşleşmiş cihaz OCR çalıştırıyor…';
  @override
  String get manga_remote_ocr_unsupported =>
      'Eşleşmiş cihaz manga OCR desteklemiyor.';
  @override
  String manga_remote_ocr_uploading({
    required Object done,
    required Object total,
  }) => 'Sayfalar yükleniyor ${done} / ${total}…';
  @override
  String get manga_section_viewing => 'Görüntüleme ve sayfa çevirme';
  @override
  String get manga_series_all_read => 'Tüm bölümler okundu';
  @override
  String get manga_series_chapters_action => 'Bölümler';
  @override
  String get manga_series_first_chapter_reached => 'Bu ilk bölüm';
  @override
  String get manga_series_last_chapter_reached => 'Bu en yeni bölüm';
  @override
  String get manga_series_local_volume => 'Yerel cilt';
  @override
  String get manga_series_mark_previous_read =>
      'Bunu ve öncekileri okundu olarak işaretle';
  @override
  String get manga_series_mark_read => 'Okundu olarak işaretle';
  @override
  String get manga_series_mark_unread => 'Okunmadı olarak işaretle';
  @override
  String get manga_series_next_chapter => 'Sonraki bölüm';
  @override
  String get manga_series_no_chapters => 'Henüz bölüm yok';
  @override
  String get manga_series_offline_hint =>
      'Bu cihazda kayıtlı bölümler gösteriliyor';
  @override
  String get manga_series_open_series => 'Eser sayfası';
  @override
  String get manga_series_page_count => 'Sayfa';
  @override
  String get manga_series_platform_unsupported =>
      'Bu kaynak bu platformda kullanılamıyor';
  @override
  String get manga_series_previous_chapter => 'Önceki bölüm';
  @override
  String manga_series_read_progress({
    required Object total,
    required Object page,
  }) => '${total} sayfadan ${page}. sayfaya kadar okundu';
  @override
  String manga_series_read_progress_partial({required Object page}) =>
      '${page}. sayfaya kadar okundu';
  @override
  String get manga_series_refresh => 'Bölümleri yenile';
  @override
  String get manga_series_refresh_failed => 'Kaynaktan yenilenemedi';
  @override
  String get manga_series_sort_newest => 'Önce en yeni';
  @override
  String get manga_series_sort_oldest => 'Önce en eski';
  @override
  String get manga_series_source_disabled =>
      'Bu kaynak yüklü değil veya devre dışı';
  @override
  String get manga_series_unread_only => 'Yalnızca okunmamışlar';
  @override
  String get manga_series_volume_info => 'Cilt';
  @override
  String get manga_source_cloudflare_blocked =>
      'Bu kaynak Cloudflare tarafından korunuyor ve yerleşik okuyucu henüz erişemiyor.';
  @override
  String get manga_source_cloudflare_verify_hint =>
      'Aşağıdaki Cloudflare doğrulamasını tamamlayın. Doğrulama geçilince yükleme otomatik olarak sürer.';
  @override
  String get manga_source_cloudflare_verify_title => 'Site doğrulaması';
  @override
  String get manga_tap_zone_paging => 'Kenarlara dokunarak sayfa çevirme';
  @override
  String get manga_tap_zone_paging_subtitle =>
      'Sayfa çevirmek için sayfanın sol veya sağ kenarına dokunun';
  @override
  String get manga_volume_key_paging => 'Ses tuşlarıyla sayfa çevirme';
  @override
  String get manga_volume_key_paging_subtitle =>
      'Manga okuyucusunda sayfa çevirmek için ses açma ve kısma tuşlarını kullanın';
  @override
  String get manga_zoom => 'Yakınlaştır';
  @override
  String get manga_zoom_sensitivity => 'Yakınlaştırma hassasiyeti';
  @override
  String get margin_bottom => 'Alt kenar boşluğu';
  @override
  String get margin_left => 'Sol kenar boşluğu';
  @override
  String get margin_right => 'Sağ kenar boşluğu';
  @override
  String get margin_top => 'Üst kenar boşluğu';
  @override
  String get maximum_terms => 'Sonuçlarda maksimum sözlük başlığı';
  @override
  String get media_file_location_failed => 'Dosya konumu açılamadı.';
  @override
  String get media_file_location_open => 'Dosya konumunu aç';
  @override
  String get media_import_folder => 'Klasör içe aktar';
  @override
  String get media_import_folder_as_source => 'Kütüphane kaynağı olarak ekle';
  @override
  String get media_import_folder_once => 'Yalnızca bir kez içe aktar';
  @override
  String get media_source_add => 'Add Source';
  @override
  String get media_source_add_local_folder => 'Local Folder';
  @override
  String get media_source_add_network => 'Ağ';
  @override
  String media_source_count_book({required Object n}) => '${n} kitap';
  @override
  String media_source_count_manga({required Object n}) => '${n} cilt';
  @override
  String media_source_count_video({required Object n}) => '${n} video';
  @override
  String media_source_last_scan({required Object time}) => 'Son tarama ${time}';
  @override
  String get media_source_manage_title => 'Manage Sources';
  @override
  String get media_source_network_label_optional => 'Görünen ad (isteğe bağlı)';
  @override
  String get media_source_network_missing_fields =>
      'Sunucu, kullanıcı adı, uzak yol ve şifre veya anahtar girin';
  @override
  String get media_source_network_remote_path => 'Uzak yol';
  @override
  String get media_source_network_subtitle =>
      'SFTP / FTP / WebDAV uzak kütüphane';
  @override
  String get media_source_network_subtitle_video =>
      'WebDAV uzak kütüphane (yerinde akış)';
  @override
  String get media_source_no_sources => 'Henüz kaynak yok';
  @override
  String get media_source_open_folder => 'Open Folder';
  @override
  String get media_source_remove => 'Remove Source';
  @override
  String get media_source_remove_keeps_media =>
      'Kaynak kaldırıldığında içe aktarılan medya silinmez.';
  @override
  String get media_source_rescan => 'Yeniden tara';
  @override
  String get media_source_scan_error => 'Tarama başarısız';
  @override
  String get media_source_section_title => 'Kütüphane kaynakları';
  @override
  String get media_tracking_access_token => 'Erişim anahtarı';
  @override
  String get media_tracking_access_token_hint =>
      'Yazma izinli kişisel erişim anahtarı oluşturun';
  @override
  String get media_tracking_account => 'Bangumi hesabı';
  @override
  String get media_tracking_add_mapping => 'Eşleme ekle';
  @override
  String get media_tracking_all_synced => 'Her şey gönderildi';
  @override
  String get media_tracking_anime => 'Anime';
  @override
  String get media_tracking_card_title => 'Bangumi senkronizasyonu';
  @override
  String get media_tracking_chapter => 'Bölüm';
  @override
  String get media_tracking_connect => 'Bağlan ve doğrula';
  @override
  String get media_tracking_connected_as => 'Bağlı hesap';
  @override
  String get media_tracking_delete_mapping => 'Eşlemeyi kaldır';
  @override
  String get media_tracking_episode => 'Bölüm';
  @override
  String get media_tracking_game => 'Oyun';
  @override
  String get media_tracking_kind => 'Kategori';
  @override
  String get media_tracking_last_error => 'Son hata';
  @override
  String get media_tracking_last_sync => 'Son senkronizasyon';
  @override
  String media_tracking_linked_count({required Object n}) => '${n} bağlı';
  @override
  String get media_tracking_local_item => 'Yerel öğe';
  @override
  String get media_tracking_manage_links => 'Bağlantıları yönet';
  @override
  String get media_tracking_manga => 'Manga';
  @override
  String get media_tracking_manual_required => 'Manuel bağlantı gerekiyor';
  @override
  String media_tracking_manual_required_count({required Object n}) =>
      '${n} öğe manuel bağlantı gerektiriyor';
  @override
  String get media_tracking_manual_required_hint =>
      'Bu yerel öğelerin zaten ilerlemesi var ancak Bangumi\'ye bağlı değiller.';
  @override
  String get media_tracking_mappings => 'Öğe eşlemeleri';
  @override
  String media_tracking_more_manual_required({required Object n}) =>
      '${n} öğe daha manuel bağlantı gerektiriyor';
  @override
  String get media_tracking_never_synced => 'Hiç senkronize edilmedi';
  @override
  String get media_tracking_no_local_history =>
      'Bağlanması gereken yerel izleme, okuma veya oyun ilerlemesi yok.';
  @override
  String get media_tracking_no_mappings =>
      'Henüz manuel eşleme yok. Fushi ilk tamamlanan bölüm veya okuma ilerlemesinde otomatik eşleştirir; belirsiz öğeleri buraya ekleyin.';
  @override
  String get media_tracking_not_connected =>
      'Bağlı değil. İlerleme yerel kalır ve hiçbir şey Bangumi\'ye ulaşmaz.';
  @override
  String get media_tracking_novel => 'Roman';
  @override
  String get media_tracking_open_subject => 'Bangumi\'de aç';
  @override
  String get media_tracking_pending => 'Bekleyen güncellemeler';
  @override
  String media_tracking_pending_count({required Object n}) =>
      '${n} gönderilmeyi bekliyor';
  @override
  String get media_tracking_progress_mode => 'İlerleme birimi';
  @override
  String get media_tracking_progress_offset => 'Başlangıç numarası';
  @override
  String get media_tracking_retry_mapping => 'Eşleştirmeyi tekrar dene';
  @override
  String get media_tracking_retry_matched =>
      'Eşleştirildi ve mevcut ilerleme sıraya alındı';
  @override
  String get media_tracking_retry_no_match =>
      'Eşleşme bulunamadı. Manuel bağlamayı deneyin.';
  @override
  String get media_tracking_saved => 'Eşleme kaydedildi';
  @override
  String get media_tracking_search => 'Bangumi\'de ara';
  @override
  String get media_tracking_search_results => 'Bangumi sonuçları';
  @override
  String get media_tracking_signup => 'Bangumi hesabı oluştur';
  @override
  String get media_tracking_status => 'Koleksiyon durumu';
  @override
  String get media_tracking_summary =>
      'Anime, roman ve manga ilerlemesini otomatik olarak Bangumi\'ye kaydet';
  @override
  String get media_tracking_sync_failed =>
      'Senkronizasyon başarısız. Güncelleme kuyrukta kaldı.';
  @override
  String get media_tracking_sync_now => 'Şimdi senkronize et';
  @override
  String get media_tracking_sync_success => 'Senkronizasyon tamamlandı';
  @override
  String get media_tracking_token_required =>
      'Önce erişim anahtarı girin ve doğrulayın';
  @override
  String get media_tracking_unauthorized =>
      'Bangumi erişim belirtecini reddetti. Ayarlardan yeniden bağlayın.';
  @override
  String get media_tracking_volume => 'Cilt';
  @override
  String get media_tracking_watched_empty =>
      'Bu Bangumi hesabında izlendi olarak işaretlenmiş anime yok.';
  @override
  String media_tracking_watched_load_failed({required Object error}) =>
      'İzlenen animeler yüklenemedi: ${error}';
  @override
  String media_tracking_watched_progress({required Object n}) =>
      '${n} bölüm izlendi';
  @override
  String get media_tracking_watched_show => 'Tüm izlenen animeleri görüntüle';
  @override
  String get media_tracking_watched_title => 'Bangumi\'de izlenenler';
  @override
  String get microphone_permission_denied =>
      'Kayıt için mikrofon izni gereklidir.';
  @override
  String get migration_batch_core_label => 'Ayarlar, ilerleme ve istatistikler';
  @override
  String migration_batch_done({required Object batch}) =>
      '${batch} dışa aktarıldı';
  @override
  String migration_batch_running({required Object batch}) =>
      '${batch} dışa aktarılıyor…';
  @override
  String get migration_download_fushi => 'Fushi\'yi edinin';
  @override
  String get migration_export_done =>
      'Dışa aktarma tamamlandı. İçe aktarmak ve doğrulamak için Fushi\'yi açın.';
  @override
  String migration_export_failed({required Object error}) =>
      'Dışa aktarma başarısız: ${error}';
  @override
  String migration_import_counts_failed({required Object detail}) =>
      'İçe aktarılan veriler eksik: ${detail}. Eksik kısımları Hibiki\'den yeniden dışa aktarın, ardından tekrar içe aktarın.';
  @override
  String get migration_import_detected =>
      'Hibiki taşıma verileri algılandı. Şimdi içe aktarılsın mı?';
  @override
  String get migration_import_entry => 'Hibiki\'den içe aktar';
  @override
  String get migration_import_entry_subtitle =>
      'Eski Hibiki uygulamasının dışa aktardığı verileri içe aktarın';
  @override
  String get migration_import_nothing =>
      'Aktarım klasöründe taşıma verisi bulunamadı.';
  @override
  String get migration_import_permission_body =>
      'Aktarım klasörü eski uygulama tarafından oluşturuldu. "Tüm dosyalara erişim" olmadan Fushi onu okuyamaz — veriler sağlamdır, sadece açılamaz.';
  @override
  String get migration_import_permission_grant => 'İzin ver';
  @override
  String get migration_import_permission_title => 'Depolama izni gerekli';
  @override
  String migration_import_running({required Object batch}) =>
      '${batch} içe aktarılıyor…';
  @override
  String get migration_import_start => 'İçe aktarmayı başlat';
  @override
  String get migration_import_success =>
      'İçe aktarma tamamlandı ve doğrulandı.';
  @override
  String migration_import_verify_failed({
    required Object batch,
    required Object detail,
  }) =>
      '${batch} doğrulama başarısız oldu ve yeniden dışa aktarma için saklandı: ${detail}';
  @override
  String migration_import_verifying({
    required Object batch,
    required Object done,
    required Object total,
  }) => '${batch} doğrulanıyor (${done}/${total})';
  @override
  String get migration_import_verifying_hint =>
      'Arşivler sağlama toplamıyla doğrulanıyor. Büyük kütüphaneler birkaç dakika sürebilir.';
  @override
  String get migration_include_local_audio =>
      'Yerel telaffuz seslerini de dışa aktar (büyük olabilir)';
  @override
  String get migration_intro =>
      'Fushi bu uygulamanın yeni adıdır. Taşıma, tüm verilerinizi gruplar halinde bir aktarım klasörüne dışa aktarır, ardından Fushi içe aktarıp doğrular. Buradaki verileriniz bu uygulamayı kaldırana kadar dokunulmadan kalır.';
  @override
  String get migration_open_fushi => 'Fushi\'yi aç';
  @override
  String get migration_readonly_note =>
      'Verileriniz Fushi\'ye dışa aktarıldı. Bu uygulama artık salt okunurdur: okuma ve kart oluşturma için Fushi\'yi kullanın. Fushi eksik veri bildirirse istediğiniz zaman yeniden dışa aktarabilirsiniz.';
  @override
  String get migration_reexport => 'Yeniden dışa aktar';
  @override
  String get migration_settings_entry => 'Fushi\'ye taşı';
  @override
  String get migration_settings_entry_subtitle =>
      'Tüm verileri yeni Fushi uygulamasına taşıyın';
  @override
  String get migration_start => 'Taşımayı başlat';
  @override
  String get migration_target_missing =>
      'Fushi henüz yüklenmemiş. Önce Fushi\'yi yükleyin, sonra buraya dönün.';
  @override
  String get migration_uninstall_button => 'Hibiki\'yi kaldır';
  @override
  String get migration_uninstall_prompt =>
      'Taşıma tamamlandı. Eski Hibiki uygulaması kaldırılsın mı?';
  @override
  String get migration_uninstall_still_installed =>
      'Hibiki hâlâ yüklü. İstediğiniz zaman kaldırabilirsiniz.';
  @override
  String get mihon_add_to_bookshelf => 'Manga rafına ekle';
  @override
  String get mihon_chapters_title => 'Bölümler';
  @override
  String get mihon_extension_disabled => 'Devre dışı';
  @override
  String get mihon_extension_error => 'Eklenti hatası';
  @override
  String get mihon_extension_import => 'Yerel APK içe aktar';
  @override
  String get mihon_extension_incompatible => 'Uyumsuz eklenti';
  @override
  String get mihon_extension_install => 'Yükle';
  @override
  String get mihon_extension_installed => 'Yüklendi';
  @override
  String get mihon_extension_language_all => 'Tüm diller';
  @override
  String get mihon_extension_language_filter => 'Dil';
  @override
  String get mihon_extension_preview => 'Önizleme';
  @override
  String get mihon_extension_preview_discard => 'At';
  @override
  String get mihon_extension_preview_read_only =>
      'Önizleme salt okunurdur. Açmak ve okumak için eklentiyi yükleyin.';
  @override
  String get mihon_extension_preview_source_select =>
      'Önizlenecek bir kaynak seçin';
  @override
  String get mihon_extension_preview_warning =>
      'Önizleme, bu eklentinin kodunu yüklenmeden önce çalıştırır. Yüklemeyi seçene kadar kütüphanenize hiçbir şey eklenmez.';
  @override
  String get mihon_extension_sources_included => 'Dahil edilen kaynaklar';
  @override
  String get mihon_extension_sources_less => 'Daha az kaynak göster';
  @override
  String mihon_extension_sources_more({required Object count}) =>
      '${count} kaynağın tümünü göster';
  @override
  String get mihon_extension_uninstall => 'Kaldır';
  @override
  String get mihon_extension_update => 'Güncelle';
  @override
  String get mihon_extension_warning =>
      'Üçüncü taraf eklentiler Fushi izinleriyle kod çalıştırır. Yalnızca güvendiğiniz eklenti ve imzalayıcıları yükleyin.';
  @override
  String get mihon_extensions_title => 'Manga eklentileri';
  @override
  String get mihon_filter_ascending => 'Artan';
  @override
  String get mihon_filter_descending => 'Azalan';
  @override
  String get mihon_filter_exclude => 'Hariç tut';
  @override
  String get mihon_filter_ignore => 'Yoksay';
  @override
  String get mihon_filter_include => 'Dahil et';
  @override
  String get mihon_runtime_unavailable =>
      'Mihon eklentileri bu platformda kullanılamaz.';
  @override
  String get mihon_signer_fingerprint => 'İmzalayıcı SHA-256';
  @override
  String get mihon_signer_trust_title =>
      'Eklenti imzalayıcısına güvenilsin mi?';
  @override
  String get mihon_source_browse_mokuro => 'Yerleşik Mokuro kataloğu';
  @override
  String get mihon_source_clear_data => 'Kaynak verilerini temizle';
  @override
  String get mihon_source_clear_data_hint =>
      'Bu kaynağın tercihlerini ve çerezlerini temizler. Yüklü eklentiler korunur.';
  @override
  String get mihon_source_empty =>
      'Etkin manga kaynağı yok. Önce bir eklenti yükleyin ve etkinleştirin.';
  @override
  String get mihon_source_latest => 'En yeni';
  @override
  String get mihon_source_no_results => 'Manga bulunamadı.';
  @override
  String get mihon_source_popular => 'Popüler';
  @override
  String get mihon_source_preferences => 'Kaynak tercihleri';
  @override
  String get mihon_source_search => 'Manga ara';
  @override
  String get mihon_sources_title => 'Manga kaynakları';
  @override
  String get mihon_store_add => 'Eklenti mağazası ekle';
  @override
  String get mihon_store_edit => 'Depo adresini düzenle';
  @override
  String get mihon_store_empty =>
      'Henüz eklenti mağazası yok. Uyumlu bir Mihon mağazası ekleyin veya yerel bir APK içe aktarın.';
  @override
  String mihon_store_extension_count({required Object count}) =>
      '${count} uzantı';
  @override
  String get mihon_store_refresh => 'Mağazaları yenile';
  @override
  String get mihon_store_remove => 'Eklenti mağazasını kaldır';
  @override
  String get mihon_store_url => 'Eklenti mağazası URL\'si';
  @override
  String get mihon_store_zero_extensions =>
      'Bu depo 0 eklenti döndürdü. Adresi eski bir dizine işaret ediyor olabilir.';
  @override
  String get mining_animated_format_avif => 'AVIF (en küçük)';
  @override
  String get mining_animated_format_gif => 'GIF (en uyumlu)';
  @override
  String get mining_animated_format_webp => 'WebP (daha geniş destek)';
  @override
  String get mining_audio_quality => 'Ses kalitesi';
  @override
  String get mining_audio_quality_high => 'Yüksek';
  @override
  String get mining_audio_quality_hint =>
      'Daha yüksek bit hızı daha net ses sağlar ama kartlar büyür.';
  @override
  String get mining_audio_quality_max => 'Maksimum';
  @override
  String get mining_audio_quality_standard => 'Standart';
  @override
  String get mining_image_quality => 'Görsel / GIF kalitesi';
  @override
  String get mining_image_quality_hd => 'HD';
  @override
  String get mining_image_quality_hint =>
      'Yüksek değer daha keskin görüntü sağlar ama kartlar büyür. Maksimum, ekran görüntülerini kaynak çözünürlükte tutar; animasyonlu GIF\'ler kartların kullanılabilir kalması için sınırlı kalır.';
  @override
  String get mining_image_quality_max => 'Maksimum';
  @override
  String get mining_image_quality_standard => 'Standart';
  @override
  String get mining_image_quality_thrift => 'Veri tasarrufu';
  @override
  String get mining_still_format_jpg => 'JPG (daha küçük)';
  @override
  String get mining_still_format_png => 'PNG (kayıpsız)';
  @override
  String get module_disabled_hint =>
      'This feature module is turned off in Settings > Appearance > Feature modules.';
  @override
  String get module_downloads_hidden_hint =>
      'İndirmeler sekmesi Ayarlar → Görünüm → Özellik modülleri altında gizli; abonelikleri yönetmek için yeniden açın.';
  @override
  String get module_extension_label => 'Tarayıcı eklentisi';
  @override
  String get move_down => 'Aşağı taşı';
  @override
  String get move_up => 'Yukarı taşı';
  @override
  String get name => 'Ad';
  @override
  String get nav_browser_extension => 'Uzantı';
  @override
  String get nav_downloads => 'İndirmeler';
  @override
  String get nav_game => 'Oyun';
  @override
  String get nav_home => 'Ana sayfa';
  @override
  String get nav_lookup => 'Ara';
  @override
  String get nav_video => 'Video';
  @override
  String get network_proxy_address_hint =>
      'Tüm genel internet isteklerinde kullanılan HTTP proxy sunucusu';
  @override
  String get network_proxy_auto_hint =>
      'Uygulamanın tüm internet isteklerine uygulanır: güncellemeler, bulut eşitleme, sözlükler, indirmeler, altyazılar ve meta veriler. Otomatik için boş bırakın: önce ortam değişkenleri, sonra etkin sistem proxy\'si. P2P (torrent) aktarımları varsayılan olarak doğrudan bağlanır; aşağıdan ayrıca etkinleştirebilirsiniz.';
  @override
  String get network_proxy_credentials_scope_hint =>
      'Kimlik bilgileri yalnızca HTTP istekleri için geçerlidir; yerleşik torrent motoru bunları kullanamaz';
  @override
  String get network_proxy_hint =>
      'sunucu:port, ör. 127.0.0.1:7890 (yalnızca IPv4/sunucu adı)';
  @override
  String get network_proxy_invalid => 'Geçersiz proxy. sunucu:port kullanın';
  @override
  String get network_proxy_label => 'Ağ proxy\'si';
  @override
  String get network_proxy_mode_auto => 'Otomatik';
  @override
  String get network_proxy_mode_auto_hint =>
      'Önce ortam değişkenlerini, sonra etkin sistem proxy\'sini kullan';
  @override
  String get network_proxy_mode_direct => 'Doğrudan';
  @override
  String get network_proxy_mode_direct_hint =>
      'Uygulama için proxy kullanımını devre dışı bırak';
  @override
  String get network_proxy_mode_label => 'Proxy modu';
  @override
  String get network_proxy_mode_manual => 'Elle';
  @override
  String get network_proxy_mode_manual_hint =>
      'Aşağıdaki sunucuyu ve isteğe bağlı kimlik bilgilerini kullan';
  @override
  String get network_proxy_p2p_label => 'P2P (torrent) proxy\'si';
  @override
  String get network_proxy_p2p_mode_direct => 'Doğrudan';
  @override
  String get network_proxy_p2p_mode_mixed => 'Karma';
  @override
  String get network_proxy_p2p_mode_proxy => 'Proxy üzerinden';
  @override
  String get network_proxy_p2p_warning =>
      'Varsayılan olarak doğrudan. Proxy üzerinden: tüm P2P trafiği genel proxy üzerinden geçer — hız düşebilir ve birçok proxy sağlayıcısı BitTorrent trafiğini yasaklar (hız kısıtlama, uyarı veya hesap kapatma). Karma: tracker istekleri proxy üzerinden geçerken DHT ve peer bağlantıları doğrudan kalır — en geniş peer keşfi, ancak gerçek IP adresiniz tracker\'lara, DHT\'ye ve peer\'lara görünür (yalnızca bağlanabilirlik, gizlilik değil). Yalnızca yerleşik motor için; harici qBittorrent kendi proxy ayarlarını kullanır.';
  @override
  String get network_proxy_password => 'Proxy parolası (isteğe bağlı)';
  @override
  String get network_proxy_username => 'Proxy kullanıcı adı (isteğe bağlı)';
  @override
  String get next_sentence => 'Sonraki cümle';
  @override
  String get no_audio_file => 'Kaydedilecek ses dosyası yok.';
  @override
  String get no_collections => 'Yer imi veya kaydedilmiş cümle yok';
  @override
  String get no_debug_logs => 'Hata ayıklama günlüğü yok.';
  @override
  String get no_illustrations_found => 'Resim bulunamadı';
  @override
  String get no_results_found => 'Sonuç bulunamadı.';
  @override
  String get no_search_results => 'Arama sonucu bulunamadı.';
  @override
  String get no_sentence_selected => 'Cümle seçilmedi';
  @override
  String get no_sentences_found => 'Cümle bulunamadı';
  @override
  String get no_text => 'Metin yok.';
  @override
  String get no_text_to_search => 'Aranacak metin yok.';
  @override
  String get now_listening_label => 'Şimdi dinleniyor';
  @override
  String get on_screen_keyboard => 'Ekran klavyesi';
  @override
  String get onboarding_action_badge_optional => 'İsteğe bağlı';
  @override
  String get onboarding_action_badge_recommended => 'Önerilir';
  @override
  String get onboarding_action_badge_required => 'Zorunlu';
  @override
  String get onboarding_action_next => 'İleri';
  @override
  String get onboarding_action_skip => 'Şimdilik atla';
  @override
  String get onboarding_action_start => 'Fushi\'yi kullanmaya başla';
  @override
  String get onboarding_actions_more => 'Diğer yollar';
  @override
  String get onboarding_anki_action_get_anki_desc =>
      'Anki\'nin indirme sayfasını açar. Kart oluştururken Anki\'yi açık bırakın.';
  @override
  String get onboarding_anki_action_get_ankidroid_desc =>
      'Mağaza sayfasını açar. Fushi kartları AnkiDroid\'e yazar, bu yüzden önce kurulu olmalıdır.';
  @override
  String get onboarding_anki_action_install_addon_desc =>
      'Birlikte gelen AnkiConnect eklentisini Anki\'nin içine açar. Sonrasında Anki\'yi yeniden başlatın.';
  @override
  String get onboarding_anki_action_refresh_desc =>
      'Desteleri ve not türlerini yeniden yükler. Anki\'de bir deste oluşturduktan sonra kullanın.';
  @override
  String get onboarding_anki_action_test_desc =>
      'Fushi\'nin Anki\'ye ulaşıp ulaşamadığını denetler ve destelerinizle not türlerinizi yükler. Hiçbir şey oluşturmaz.';
  @override
  String onboarding_anki_addon_failed({required Object message}) =>
      'Yükleme başarısız: ${message}';
  @override
  String get onboarding_anki_addon_installed =>
      'AnkiConnect yüklendi. Anki\'yi başlatın veya yeniden başlatın, ardından bağlantıyı test edin.';
  @override
  String get onboarding_anki_addon_no_anki =>
      'Anki veri klasörü bulunamadı. Anki\'yi yükleyin, bir kez açın ve tekrar deneyin.';
  @override
  String get onboarding_anki_backend_label => 'Bağlantı';
  @override
  String get onboarding_anki_fsrs_body =>
      'Anki has FSRS built in — one of the best spaced-repetition algorithms around — but it keeps scheduling with SM-2 from the 1980s until you turn FSRS on. FSRS reads your real review history and predicts when you are about to forget, so you keep the same retention with fewer reviews. You flip this switch once, inside Anki; nothing changes on the Fushi side.';
  @override
  String get onboarding_anki_fsrs_step_optimize_desc =>
      'Press Optimize under the switch to fit the parameters to your own review history, then save. Below roughly 1000 reviews the defaults already beat SM-2, so just optimize again once you have studied for a while.';
  @override
  String get onboarding_anki_fsrs_step_optimize_title => 'Optimize, then save';
  @override
  String get onboarding_anki_fsrs_step_options_desktop_desc =>
      'In Anki, click the gear next to a deck and choose Options.';
  @override
  String get onboarding_anki_fsrs_step_options_mobile_desc =>
      'In AnkiDroid (2.17 or newer) or AnkiMobile, long-press the deck and choose Options.';
  @override
  String get onboarding_anki_fsrs_step_options_title => 'Open deck options';
  @override
  String get onboarding_anki_fsrs_step_toggle_desc =>
      'Scroll to the FSRS section at the bottom of the options page (older builds hide it under Advanced) and turn the switch on. It applies to your whole collection, so once is enough.';
  @override
  String get onboarding_anki_fsrs_step_toggle_title => 'Switch FSRS on';
  @override
  String get onboarding_anki_fsrs_title => 'Turn on FSRS in Anki';
  @override
  String get onboarding_anki_get_anki_action => 'Anki\'yi edinin (masaüstü)';
  @override
  String get onboarding_anki_get_ankidroid_action => 'AnkiDroid\'i edinin';
  @override
  String get onboarding_anki_install_addon_action =>
      'AnkiConnect eklentisini yükle';
  @override
  String get onboarding_anki_intro_body =>
      'Anki, ücretsiz bir aralıklı tekrar bilgi kartı uygulamasıdır. Bir aramanın ardından Fushi, kelimeyi anlam, cümle, ses ve ekran görüntüsüyle birlikte tek dokunuşta karta dönüştürür.';
  @override
  String get onboarding_anki_mobile_ankiconnect_hint =>
      'Aynı ağdaki bir bilgisayarda çalışan Anki\'ye kart oluşturun: kart oluşturma ayarlarında AnkiConnect\'i etkinleştirin ve bilgisayarın adresini girin.';
  @override
  String get onboarding_anki_mobile_ankiconnect_title =>
      'Gelişmiş: AnkiConnect\'i bu cihazdan kullanın';
  @override
  String get onboarding_anki_setup_android_hint =>
      'AnkiDroid\'i yükleyin ve bir kez açın. İlk kartınızda izin penceresinde İzin Ver\'e dokunun — ayarlanacak başka bir şey yok.';
  @override
  String get onboarding_anki_setup_desktop_hint =>
      'Anki\'yi yükleyin, AnkiConnect eklentisini ekleyin (aşağıdan tek dokunuşla ya da 2055492159 eklenti koduyla) ve kart oluştururken Anki\'yi açık tutun.';
  @override
  String get onboarding_anki_setup_ios_hint =>
      'AnkiMobile yüklüyken kartlar doğrudan eklenir. Tam özellik seti için aynı ağdaki bir bilgisayarda çalışan Anki\'ye AnkiConnect üzerinden bağlanın.';
  @override
  String get onboarding_anki_status_pending => 'Henüz test edilmedi';
  @override
  String get onboarding_anki_test_action => 'Bağlantıyı test et';
  @override
  String onboarding_anki_test_success({required Object count}) =>
      'Bağlandı: ${count} deste bulundu';
  @override
  String get onboarding_click_lookup_intro =>
      'Bir kitapta, mangada veya altyazıda herhangi bir kelimeye dokunun, anlamı görünsün. Aşağıdaki alıştırma cümlesinde deneyin.';
  @override
  String get onboarding_click_lookup_mine_body =>
      'Maddedeki + düğmesine dokunun; kelime, cümle, ses ve görüntü kart oluşturucuya gider.';
  @override
  String get onboarding_click_lookup_mine_title => 'Kart oluşturun';
  @override
  String get onboarding_click_lookup_nested_body =>
      'Bir anlamın içindeki kelimeye dokunarak bir seviye derine inin. Geri dönerek veya dışarı dokunarak bir seviye kapatın.';
  @override
  String get onboarding_click_lookup_nested_title => 'Keşfetmeye devam edin';
  @override
  String get onboarding_click_lookup_tap_desc =>
      'Bir karaktere dokunun (bilgisayarda sol tıklayın); Fushi oradan başlayan en uzun kelimeyi alır. Cümle arama sayfasında açılır.';
  @override
  String get onboarding_click_lookup_tap_title => 'Bir kelimeye dokunun';
  @override
  String get onboarding_feature_anki => 'Anki kartları';
  @override
  String get onboarding_feature_anki_hint =>
      'Aramalarınızı tek dokunuşla bilgi kartına dönüştürün';
  @override
  String get onboarding_feature_backup => 'Yedekleme ve senkronizasyon';
  @override
  String get onboarding_feature_backup_hint =>
      'Google Drive, WebDAV veya yerel bir dosya';
  @override
  String get onboarding_feature_books => 'Romanlar';
  @override
  String get onboarding_feature_books_hint =>
      'Kelime araması ve sesli kitap eşitlemesiyle EPUB okuma';
  @override
  String get onboarding_feature_extension_hint =>
      'Herhangi bir web sayfasında kelime arayın (yalnızca masaüstü)';
  @override
  String get onboarding_feature_fonts => 'Özel yazı tipleri';
  @override
  String get onboarding_feature_fonts_hint =>
      'Arayüz, kitap metni ve sözlük için kendi yazı tiplerinizi kullanın';
  @override
  String get onboarding_feature_games => 'Galgame';
  @override
  String get onboarding_feature_games_hint =>
      'Oynarken metin yakalamayla arama (yalnızca Windows)';
  @override
  String get onboarding_feature_interconnect => 'Cihaz karşılıklı bağlantısı';
  @override
  String get onboarding_feature_interconnect_hint =>
      'Kütüphaneleri ve ilerlemeyi LAN\'daki cihazlar arasında paylaşın';
  @override
  String get onboarding_feature_manga => 'Manga';
  @override
  String get onboarding_feature_manga_hint => 'OCR aramasıyla manga okuyun';
  @override
  String get onboarding_feature_manual_resources =>
      'Kendi kaynaklarımı içe aktar';
  @override
  String get onboarding_feature_manual_resources_hint =>
      'Kendi dosyalarınızdan sözlükler, sesli kitaplar ve telaffuz kaynakları';
  @override
  String get onboarding_feature_pack => 'Önerilen paket';
  @override
  String get onboarding_feature_pack_hint =>
      'Japonca sözlükler ve JA/EN telaffuz sesleri tek indirmede';
  @override
  String get onboarding_feature_video => 'Video';
  @override
  String get onboarding_feature_video_hint =>
      'Altyazıda arama ve kart oluşturma';
  @override
  String get onboarding_features_modules_hint =>
      'İşaretlenmeyen sayfalar gezinme çubuğunda gizlenir. İstediğiniz zaman Ayarlar → Görünüm\'den değiştirebilirsiniz.';
  @override
  String get onboarding_features_modules_title => 'Kitaplık sayfaları';
  @override
  String get onboarding_features_setup_hint =>
      'Bu rehberde yalnızca işaretlenen öğeler için bir adım açılır.';
  @override
  String get onboarding_features_setup_title => 'Sırada kurulacaklar';
  @override
  String get onboarding_features_title => 'Neleri kullanacaksınız?';
  @override
  String get onboarding_finish_body =>
      'Bu rehberi istediğiniz zaman Ayarlar → Sistem\'den yeniden açabilirsiniz.';
  @override
  String get onboarding_finish_summary_modules =>
      'Gösterilen kitaplık sayfaları';
  @override
  String get onboarding_finish_summary_none => 'Yok';
  @override
  String get onboarding_finish_summary_setup => 'Rehberli kurulum';
  @override
  String get onboarding_finish_title => 'Her şey hazır';
  @override
  String get onboarding_first_anki_action => 'Aramayı aç ve kart oluştur';
  @override
  String get onboarding_first_anki_action_desc =>
      'Alıştırma cümlesini arama sayfasında açar. Bir kelimeye dokunun, + düğmesine dokunun, alanları kontrol edip kaydedin.';
  @override
  String get onboarding_first_anki_card_intro =>
      'Anki bağlandı. Tüm yolun çalıştığını görmek için şimdi gerçek bir kart oluşturun.';
  @override
  String get onboarding_first_anki_lookup_desc =>
      'Alıştırma cümlesini açın ve bir kelimeye dokunun.';
  @override
  String get onboarding_first_anki_lookup_title => 'Bir kelime arayın';
  @override
  String get onboarding_first_anki_plus_body =>
      'Kart oluşturucu; kelime, okunuş, anlam, cümle, ses ve görüntü doldurulmuş halde açılır.';
  @override
  String get onboarding_first_anki_plus_title => '+ düğmesine dokunun';
  @override
  String get onboarding_first_anki_save_body =>
      'Desteyi ve not türünü onaylayıp kaydedin. Kartı görmek için Anki\'yi açın.';
  @override
  String get onboarding_first_anki_save_title => 'Kontrol edip kaydedin';
  @override
  String get onboarding_global_lookup_android_body =>
      'Android, seçilen metni metin menüsü veya Paylaş paneli üzerinden Fushi\'ye iletir.';
  @override
  String get onboarding_global_lookup_android_continue_body =>
      'Arama, diğer uygulamanın üzerinde açılır. Geri dönmek için kapatın.';
  @override
  String get onboarding_global_lookup_android_continue_title =>
      'Açılır pencereyi okuyun';
  @override
  String get onboarding_global_lookup_android_open_body =>
      'Seçim menüsünde Fushi\'ye dokunun ya da Paylaş\'a dokunup Fushi\'yi seçin.';
  @override
  String get onboarding_global_lookup_android_open_title => 'Fushi\'yi seçin';
  @override
  String get onboarding_global_lookup_android_select_desc =>
      'Başka bir uygulamada bir kelimeye uzun basın ve tutamaçları kelimeyi kaplayacak şekilde ayarlayın.';
  @override
  String get onboarding_global_lookup_android_select_title => 'Metin seçin';
  @override
  String get onboarding_global_lookup_windows_action => 'Kısayol ayarlarını aç';
  @override
  String get onboarding_global_lookup_windows_action_desc =>
      'Yalnızca farklı bir tuş birleşimi istiyorsanız.';
  @override
  String get onboarding_global_lookup_windows_body =>
      'Herhangi bir uygulamada metni seçin ve pencere değiştirmeden sözlüğü çağırın.';
  @override
  String get onboarding_global_lookup_windows_customize_body =>
      'Ayarlar → Kısayollar → Genel (uygulama dışı).';
  @override
  String get onboarding_global_lookup_windows_customize_title =>
      'Kısayolu değiştirin';
  @override
  String get onboarding_global_lookup_windows_select_desc =>
      'Herhangi bir uygulamada bir kelimeyi seçin ve seçili bırakın.';
  @override
  String get onboarding_global_lookup_windows_select_title => 'Metin seçin';
  @override
  String get onboarding_global_lookup_windows_shortcut_body =>
      'Fushi seçimi alır ve imlecin yanında bir arama kartı açar.';
  @override
  String get onboarding_global_lookup_windows_shortcut_press =>
      'Kısayola basın';
  @override
  String get onboarding_lookup_practice_action => 'Bu cümleyle alıştırma yap';
  @override
  String get onboarding_lookup_practice_desc =>
      'Cümle yüklenmiş halde arama sayfasını açar. Orada bir kelimeye dokunarak anlamını görün; hiçbir şey gelmiyorsa sözlükleriniz henüz kurulmamıştır.';
  @override
  String get onboarding_manual_audiobook_action => 'Sesli bir kitap içe aktar';
  @override
  String get onboarding_manual_audiobook_action_desc =>
      'Kitap ya da metin, eşleşen altyazılar ve ses dosyaları. Fushi\'nin sesi cümlelerle eşitleyebilmesini sağlayan şey altyazılardır.';
  @override
  String get onboarding_manual_dictionary_action => 'Sözlük içe aktar';
  @override
  String get onboarding_manual_dictionary_action_desc =>
      'Sözlük yönetimini açar. Aramalar ancak bir sözlük kurulduktan sonra sonuç döndürür.';
  @override
  String get onboarding_manual_pronunciation_action => 'Telaffuz sesini ayarla';
  @override
  String get onboarding_manual_pronunciation_action_desc =>
      'Sözlük maddelerindeki kelime telaffuzu için yerel veya çevrimiçi kaynaklar. Sesli kitap sesinden ayrıdır.';
  @override
  String get onboarding_online_services_account => 'Kişisel hesap gerekli';
  @override
  String get onboarding_online_services_anidb =>
      'Anime ve bölümleri dosya parmak iziyle tanımlayın. Fushi kayıtlı bir uygulama istemcisine sahiptir; yine de kendi AniDB hesabınız gerekir. Ayarlara girin ve istediğinizde dosya karmasıyla tanımlamayı etkinleştirin.';
  @override
  String get onboarding_online_services_body =>
      'Yalnızca ihtiyaç duyduğunuz hizmetleri kurun veya bu adımı atlayın. Bu öğreticiyi seçmek hizmetleri etkinleştirmez ya da kimlik bilgilerini göndermez; seçmemek de mevcut ayarları değiştirmez.';
  @override
  String get onboarding_online_services_build_missing =>
      'Bu derlemede uygulama kimlik bilgileri yok';
  @override
  String get onboarding_online_services_configure =>
      'Çevrimiçi hizmet ayarlarını aç';
  @override
  String get onboarding_online_services_dandanplay =>
      'Bu derleme danmaku hizmetinin uygulama kimlik bilgilerini içerir. Kullanıcıların API başvurusu yapması gerekmez; istediğinizde çevrimiçi danmaku eşleştirmesini etkinleştirin.';
  @override
  String get onboarding_online_services_dandanplay_missing =>
      'Bu derlemede danmaku uygulama kimlik bilgileri olmadığından resmî çevrimiçi eşleştirme kullanılamaz. Bu bilgileri geliştirici sağlar; kişisel API kaydı yapmanız gerekmez.';
  @override
  String get onboarding_online_services_embedded =>
      'Uygulama kimlik bilgileri dahil';
  @override
  String get onboarding_online_services_hint =>
      'Hesapları, API anahtarlarını ve kullanılabilir hizmetleri keşfedin';
  @override
  String get onboarding_online_services_jimaku =>
      'Altyazı bulun. Jimaku’ya kaydolun veya giriş yapın, hesap sayfanızda kişisel bir API anahtarı oluşturun, ardından ayarlara girip bu altyazı kaynağını etkinleştirin.';
  @override
  String get onboarding_online_services_key => 'API anahtarı gerekli';
  @override
  String get onboarding_online_services_link =>
      'Resmî hesap / API sayfasını aç';
  @override
  String get onboarding_online_services_opensubtitles =>
      'Altyazı bulun ve indirin. Bir hesap açın, API tüketicisi oluşturun ve API anahtarı alın. Kullanıcı girişi isteğe bağlıdır ve hesabın indirme kotasını kullanır.';
  @override
  String get onboarding_online_services_opensubtitles_embedded =>
      'Uygulamanın API anahtarı dahildir. İsterseniz kişisel indirme kotanız için OpenSubtitles hesabınıza giriş yapabilir veya kendi API anahtarınızı kullanabilirsiniz.';
  @override
  String get onboarding_online_services_public =>
      'MAL / Jikan meta veri sağlar; AniList keşfi ve ilgili sorguları destekler. Herkese açık salt okunur sorgular için kişisel hesap veya API anahtarı gerekmez.';
  @override
  String get onboarding_online_services_ready => 'Kayıt gerekmiyor';
  @override
  String get onboarding_online_services_server => 'Mevcut bir sunucuya bağlan';
  @override
  String get onboarding_online_services_servers =>
      'Bu hizmetlerin ortak bir kayıt sayfası yoktur. Mevcut sunucunuzun adresini ve yöneticisinin sağladığı hesabı veya anahtarı girin; sunucunuz yoksa atlayın.';
  @override
  String get onboarding_online_services_title =>
      'Çevrimiçi hizmetler (isteğe bağlı)';
  @override
  String get onboarding_online_services_tmdb =>
      'Bu derleme, yedek meta veriler ve eksik alanlar için bir TMDB anahtarı içerir. Yalnızca kendi kotanızı kullanmak istiyorsanız kendi anahtarınızı ekleyin.';
  @override
  String get onboarding_online_services_tmdb_missing =>
      'Bu derlemede TMDB anahtarı yok. TMDB yedek meta verilerine ihtiyacınız varsa bir API anahtarı edinin ve ayarlara girin; MAL / Jikan kullanılabilir olmaya devam eder.';
  @override
  String get onboarding_pack_action_audio_desc =>
      'Paketin kapsamadığı diller için çevrimiçi telaffuz kaynakları ekleyin.';
  @override
  String get onboarding_pack_action_dictionary_desc =>
      'Başka bir dil mi öğreniyorsunuz? O dilin sözlüklerini bunun yerine buradan içe aktarın.';
  @override
  String get onboarding_pack_action_download_desc =>
      'Arka planda birden çok kaynaktan aynı anda indirir, sonra içe aktarır. İstediğiniz an iptal edin; kaldığı yerden devam eder.';
  @override
  String get onboarding_pack_action_import_existing_desc =>
      'Paket zaten diskte. Mevcut verilerinizi korumak için onay penceresinde «Birleştir» seçin.';
  @override
  String get onboarding_pack_action_pick_desc =>
      'Paketin zip dosyası zaten sizde mi? Diskten içe aktarın ve indirmeyi atlayın.';
  @override
  String get onboarding_pack_action_website => 'İndirme sayfasını aç';
  @override
  String get onboarding_pack_action_website_desc =>
      'İndirme yöneticileri için parça bağlantıları. Sonra dönüp «Paket dosyası seç» seçeneğini kullanın.';
  @override
  String get onboarding_pack_discard_confirm =>
      'The partial download on disk will be deleted. Downloading again later starts from zero.';
  @override
  String get onboarding_pack_discard_failed =>
      'Could not remove the downloaded files. Close any app using them, then try again.';
  @override
  String get onboarding_pack_discard_running => 'Removing downloaded files…';
  @override
  String get onboarding_pack_download_background_hint =>
      'The download keeps running in the background — you can move to the next step or close this guide. Progress, cancel and import live in Settings → System.';
  @override
  String get onboarding_pack_download_discard => 'Discard download';
  @override
  String onboarding_pack_download_failed({required Object message}) =>
      'İndirme başarısız: ${message}';
  @override
  String get onboarding_pack_download_finished =>
      'Recommended pack finished downloading. Import it from Settings → System.';
  @override
  String get onboarding_pack_download_ready_hint =>
      'Import the pack to use its dictionaries and pronunciation resources. You can do this later.';
  @override
  String get onboarding_pack_download_ready_notice =>
      'Recommended pack downloaded. Choose Import now in the bottom bar when you are ready.';
  @override
  String get onboarding_pack_download_resume => 'Resume download';
  @override
  String get onboarding_pack_downloading =>
      'İndiriliyor… istediğiniz zaman iptal edin, sonra devam ettirin';
  @override
  String get onboarding_pack_import_now => 'Import now';
  @override
  String get onboarding_pack_intro =>
      'Japonca sözlükler, vurgu, kelime sıklığı ve JA/EN telaffuz sesleri tek indirmede. Başka bir dil mi öğreniyorsunuz? Bunu atlayıp kendi sözlüklerinizi içe aktarın.';
  @override
  String get onboarding_pack_mini_bar_hide => 'Hide';
  @override
  String get onboarding_pack_paused_desc =>
      'Progress is kept on disk — resuming picks up where it stopped.';
  @override
  String onboarding_pack_pick_failed({required Object message}) =>
      'Could not use the chosen file: ${message}';
  @override
  String get onboarding_pack_pick_no_path =>
      'The system did not hand over a path for that file. Move the pack into device storage and pick it again, or grant all-files access.';
  @override
  String get onboarding_pack_status_downloading =>
      'Downloading recommended pack';
  @override
  String get onboarding_pack_status_paused =>
      'Recommended pack download paused';
  @override
  String get onboarding_pack_status_ready => 'Recommended pack downloaded';
  @override
  String get onboarding_pack_tutorial_desc =>
      'Try looking up a word with your new dictionaries and pronunciation resources.';
  @override
  String get onboarding_pack_tutorial_ready => 'Your resources are ready';
  @override
  String get onboarding_pack_tutorial_skip => 'Not now';
  @override
  String get onboarding_pack_tutorial_start => 'Start lookup tutorial';
  @override
  String get onboarding_reopen => 'Başlangıç rehberi';
  @override
  String get onboarding_sample_sentence_hint =>
      'Arama sayfasında açmak için dokunun, sonra herhangi bir kelimeye dokunun.';
  @override
  String get onboarding_sample_sentence_label => 'Alıştırma cümlesi';
  @override
  String get onboarding_step_anki_action => 'Kart oluşturma ayarları';
  @override
  String get onboarding_step_anki_action_desc =>
      'Şablon, alan eşlemesi, ekran görüntüleri ve ses. Yukarıdaki deste ve not türü başlamak için yeterli.';
  @override
  String get onboarding_step_anki_title => 'Anki\'yi kur';
  @override
  String get onboarding_step_backup_action => 'Yedekleme ayarlarını aç';
  @override
  String get onboarding_step_backup_action_desc =>
      'Bir arka uç seçip oturum açın ya da yerel bir yedek dosyası dışa aktarın.';
  @override
  String get onboarding_step_backup_body =>
      'Cihaz değiştirdiğinizde veya kaybettiğinizde kitaplığınız güvende kalsın.';
  @override
  String get onboarding_step_backup_title => 'Yedekleme';
  @override
  String get onboarding_step_click_lookup_title => 'Dokunarak arayın';
  @override
  String get onboarding_step_dictionary_action => 'Sözlük yöneticisini aç';
  @override
  String get onboarding_step_extension_action => 'Kurulum rehberini aç';
  @override
  String get onboarding_step_extension_action_desc =>
      'Uzantıyı nasıl kurup Fushi\'ye bağlayacağınızı gösterir.';
  @override
  String get onboarding_step_extension_body =>
      'Yardımcı uzantıyla herhangi bir web sayfasında kelime arayın.';
  @override
  String get onboarding_step_extension_title => 'Tarayıcı eklentisi';
  @override
  String get onboarding_step_first_anki_card_title => 'İlk kartınız';
  @override
  String get onboarding_step_fonts_action_desc =>
      'Yazı tipi dosyalarını içe aktarın ve her dil için birer tane seçin.';
  @override
  String get onboarding_step_fonts_body =>
      'Arayüz, kitap metni ve sözlük için kendi yazı tiplerinizi kullanın.';
  @override
  String get onboarding_step_fonts_title => 'Yazı tipleri';
  @override
  String get onboarding_step_global_lookup_title => 'Fushi dışında arayın';
  @override
  String get onboarding_step_interconnect_action =>
      'Karşılıklı bağlantı ayarlarını aç';
  @override
  String get onboarding_step_interconnect_action_desc =>
      'Karşılıklı bağlantıyı etkinleştirin ve bu cihazı diğerleriyle eşleştirin.';
  @override
  String get onboarding_step_interconnect_body =>
      'LAN\'daki cihazları eşleştirerek tek bir kitaplığı paylaşın ve ilerlemeyi eşitleyin.';
  @override
  String get onboarding_step_interconnect_title => 'Karşılıklı bağlantı';
  @override
  String get onboarding_step_manual_resources_body =>
      'Arama eğitiminden önce en az bir sözlük içe aktarın. Sesli kitaplar ve telaffuz sesleri isteğe bağlıdır.';
  @override
  String get onboarding_step_manual_resources_title =>
      'Kendi sözlükleriniz ve sesleriniz';
  @override
  String get onboarding_step_pack_download_action => 'İndir ve içe aktar';
  @override
  String get onboarding_step_pack_import_existing_action =>
      'İndirilen paketi içe aktar';
  @override
  String get onboarding_step_pack_pick_action => 'Paket dosyası seç';
  @override
  String get onboarding_step_pack_title => 'Önerilen paket';
  @override
  String get onboarding_title => 'Başlangıç';
  @override
  String get onboarding_welcome_body =>
      'Arayüz dilinizi ve temanızı seçin. Sonraki birkaç adım gerisini ayarlar.';
  @override
  String get onboarding_welcome_headline => 'Fushi\'ye hoş geldiniz';
  @override
  String get options_collapse => 'Daralt';
  @override
  String get options_delete => 'Sil';
  @override
  String get options_edit => 'Düzenle';
  @override
  String get options_expand => 'Genişlet';
  @override
  String get options_github => 'GitHub\'da depoyu görüntüle';
  @override
  String get options_hide => 'Gizle';
  @override
  String get options_language => 'Dil ayarları';
  @override
  String get options_show => 'Göster';
  @override
  String get options_website => 'Resmî web sitesini ziyaret et';
  @override
  String get overlay_lookup_independent_size => 'Açılır arama için ayrı boyut';
  @override
  String get overlay_lookup_independent_size_hint =>
      'Uygulama dışı açılır arama penceresine uygulama içi açılır pencereyi takip etmek yerine kendi maks boyutunu verin';
  @override
  String get overlay_lookup_max_height => 'Açılır arama maks yükseklik';
  @override
  String get overlay_lookup_max_width => 'Açılır arama maks genişlik';
  @override
  String page_progress({required Object current, required Object total}) =>
      'Sayfa ${current} / ${total}';
  @override
  String get paste => 'Yapıştır';
  @override
  String get pause => 'Duraklat';
  @override
  String get pause_on_lookup => 'Aramada Duraklat';
  @override
  String get pdf_bookmark_added => 'Yer imi eklendi';
  @override
  String get pdf_bookmarks => 'Yer imleri';
  @override
  String get pdf_bookmarks_empty => 'Henüz yer imi yok.';
  @override
  String get pdf_no_text_layer =>
      'Bu PDF\'de metin katmanı yok (taranmış görüntü), bu yüzden arama yapılamaz.';
  @override
  String get pdf_outline => 'İçindekiler';
  @override
  String get pdf_outline_empty => 'Bu PDF\'de içindekiler yok.';
  @override
  String get pick_image => 'Resim seç';
  @override
  String get play => 'Oynat';
  @override
  String get play_from_cue => 'Cümleden itibaren oynat';
  @override
  String get playback_auto_pause => 'Altyazıda duraklatma modu';
  @override
  String get playback_speed => 'Hız';
  @override
  String get popup_append_sentence_tooltip => 'Bu cümleyi karta ekle';
  @override
  String get popup_auto_expand_dictionaries => 'Satırları otomatik genişlet';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      '\'Sözlükleri daralt\' açıkken bile ilk N sözlük bloğu satırını genişletilmiş tut. Genişletilen sayı sütun ayarını takip eder: satır x sütun (0 = tümünü daralt)';
  @override
  String get popup_bottom_docked => 'Alta sabitlenmiş açılır pencere';
  @override
  String get popup_bottom_docked_hint =>
      'Arama açılır penceresini, aranan sözcüğü izlemek yerine ekranın altında tam genişlikte bir panel olarak sabitle.';
  @override
  String get popup_clear_sentence_draft_tooltip => 'Eklenen cümleleri temizle';
  @override
  String get popup_compact_glossaries => 'Compact glossaries';
  @override
  String get popup_compact_glossaries_hint =>
      'Show dictionary glossary entries inline, separated by \' | \', instead of one per line in the lookup popup.';
  @override
  String get popup_ctx_adjust_button => 'Bağlamı ayarla';
  @override
  String get popup_ctx_box_current => 'Current';
  @override
  String get popup_ctx_box_empty => '(yok)';
  @override
  String get popup_ctx_box_next => 'After';
  @override
  String get popup_ctx_box_prev => 'Before';
  @override
  String get popup_ctx_cancel => 'İptal';
  @override
  String get popup_ctx_confirm => 'Confirm';
  @override
  String get popup_ctx_modal_count => 'Selected %d';
  @override
  String get popup_ctx_modal_eyebrow => 'Before mining';
  @override
  String get popup_ctx_modal_title => 'Cümle bağlamını seçin';
  @override
  String get popup_ctx_next_minus => 'Remove after';
  @override
  String get popup_ctx_next_plus => 'Add after';
  @override
  String get popup_ctx_prev_minus => 'Remove before';
  @override
  String get popup_ctx_prev_plus => 'Add before';
  @override
  String get popup_ctx_preview_audio => 'Preview audio';
  @override
  String get popup_ctx_preview_stop => 'Stop';
  @override
  String get popup_ctx_preview_unavailable => 'No audio for this sentence';
  @override
  String get popup_dictionary_max_columns =>
      'Maks sözlük sütunu (otomatik doldurma)';
  @override
  String get popup_dictionary_max_columns_hint =>
      'Satır başına en fazla bu kadar sözlük sütunu otomatik doldurulur; dar ekranlarda daha az kullanılır';
  @override
  String get popup_font_size_decrease => 'Sözlük metnini küçült';
  @override
  String get popup_font_size_increase => 'Sözlük metnini büyüt';
  @override
  String get popup_instant_scroll => 'Anında açılır pencere kaydırma';
  @override
  String get popup_instant_scroll_hint =>
      'E-mürekkep ekranlar için arama açılır penceresini animasyonlu kaydırma olmadan sabit mesafelerle atlat.';
  @override
  String get popup_max_height => 'Açılır pencere maksimum yüksekliği';
  @override
  String get popup_max_width => 'Açılır pencere maks. genişlik';
  @override
  String get popup_no_audio_available => 'Ses mevcut değil';
  @override
  String get popup_sentence_context_next_label => 'Sonra';
  @override
  String get popup_sentence_context_prev_label => 'Önce';
  @override
  String get popup_wheel_speed => 'Açılır pencere kaydırma hızı';
  @override
  String get popup_wheel_speed_hint =>
      'Sözlük açılır penceresi için fare tekerleği kaydırma hızı (tarayıcı uzantısı için de geçerlidir).';
  @override
  String get prev_sentence => 'Önceki cümle';
  @override
  String get preview => 'Önizleme';
  @override
  String get preview_badge => 'Rozet';
  @override
  String get preview_switch => 'Anahtar';
  @override
  String get processing_in_progress => 'Resimler işleniyor';
  @override
  String get profile_book_profile => 'Profil Ata';
  @override
  String profile_confirm_delete({required Object name}) =>
      '"${name}" profili silinsin mi?';
  @override
  String get profile_copy => 'Kopyala';
  @override
  String get profile_copy_suffix => '(Kopya)';
  @override
  String get profile_create => 'Profil Oluştur';
  @override
  String get profile_delete => 'Sil';
  @override
  String get profile_export => 'Dışa aktar';
  @override
  String get profile_export_failed => 'Dışa aktarma başarısız';
  @override
  String profile_follow_default_current({required Object name}) =>
      'Varsayılanı takip ediyor (${name})';
  @override
  String get profile_import => 'İçe aktar';
  @override
  String get profile_import_failed => 'İçe aktarma başarısız';
  @override
  String get profile_import_invalid => 'Geçersiz profil dosyası';
  @override
  String get profile_import_success => 'Profil içe aktarıldı';
  @override
  String get profile_label => 'Profil';
  @override
  String get profile_management => 'Profil Yönetimi';
  @override
  String get profile_media_audiobook => 'Sesli Kitap';
  @override
  String get profile_media_browser => 'Tarayıcı';
  @override
  String get profile_media_epub => 'Kitap';
  @override
  String get profile_media_game => 'Oyun';
  @override
  String get profile_media_lyrics => 'Şarkı sözü modu';
  @override
  String get profile_media_manga => 'Manga';
  @override
  String get profile_media_none => 'Yok';
  @override
  String get profile_media_srtbook => 'Altyazı kitabı';
  @override
  String get profile_media_type_bindings => 'Medya Türü Bağlamaları';
  @override
  String get profile_media_video => 'Video';
  @override
  String get profile_name_hint => 'Profil adı';
  @override
  String get profile_rename => 'Yeniden Adlandır';
  @override
  String get quick_import_title => 'Hızlı içe aktarma';
  @override
  String get reader_audiobook_current_chapter => 'Current chapter';
  @override
  String get reader_audiobook_tab_chapters => 'Chapters';
  @override
  String get reader_audiobook_tab_files => 'Audio files';
  @override
  String get reader_auto_hide_chrome_duration =>
      'Yüzen kontrolleri gizleme süresi';
  @override
  String get reader_blur_images =>
      'Görselleri bulanıklaştır (spoiler koruması)';
  @override
  String get reader_content_timeout =>
      'İçerik yüklemesi zaman aşımına uğradı. Görüntü anormalse yeniden açın';
  @override
  String get reader_copy_image => 'Görseli kopyala';
  @override
  String get reader_font_size => 'Yazı tipi boyutu';
  @override
  String get reader_font_vpal => 'VPAL (dikey alt.)';
  @override
  String get reader_font_weight => 'Yazı tipi kalınlığı';
  @override
  String get reader_furigana_mode => 'Furigana';
  @override
  String get reader_furigana_mode_hint => '';
  @override
  String get reader_gallery_empty => 'Bu kitapta illüstrasyon yok';
  @override
  String get reader_gallery_jump => 'Bu illüstrasyona git';
  @override
  String get reader_gallery_tooltip => 'İllüstrasyonlara göz at';
  @override
  String get reader_horizontal => 'Yatay';
  @override
  String reader_image_copy_failed({required Object error}) =>
      'Görsel kopyalanamadı: ${error}';
  @override
  String get reader_image_file_unavailable => 'Görsel dosyası kullanılamıyor.';
  @override
  String reader_image_share_failed({required Object error}) =>
      'Görsel paylaşılamadı: ${error}';
  @override
  String get reader_line_height => 'Satır yüksekliği';
  @override
  String get reader_merge_image_pages =>
      'İllüstrasyon sayfalarını metne birleştir';
  @override
  String get reader_merge_image_pages_subtitle =>
      'Tek görsellik bağımsız bölümler, kendi sayfası yerine bitişik metin bölümünün içinde satır içi olarak gösterilir';
  @override
  String get reader_no_books_added => 'Kütüphanede kitap yok';
  @override
  String get reader_not_bound_cannot_rematch =>
      'Sesli kitap bir kitaba bağlı değil, yeniden eşleştirme yapılamaz';
  @override
  String get reader_open_failed => 'Kitap açılamadı';
  @override
  String get reader_orient_mixed => 'Karışık';
  @override
  String get reader_orient_upright => 'Dik';
  @override
  String get reader_page_columns_auto => 'Otomatik';
  @override
  String get reader_paginated => 'Sayfalı';
  @override
  String get reader_paragraph_spacing => 'Paragraf aralığı';
  @override
  String get reader_reader_styles => 'Kitap stillerine öncelik ver';
  @override
  String get reader_scroll => 'Kaydırma';
  @override
  String get reader_settings_section => 'Okuyucu ayarları';
  @override
  String get reader_stats_finish_book => 'Book';
  @override
  String get reader_stats_finish_chapter => 'Chapter';
  @override
  String get reader_stats_session => 'This session';
  @override
  String get reader_stats_this_book => 'This book';
  @override
  String get reader_stats_time_to_finish => 'Time to finish';
  @override
  String get reader_text_indentation => 'Paragraf girintisi';
  @override
  String get reader_text_justify => 'Metin hizalama';
  @override
  String get reader_theme => 'Tema';
  @override
  String get reader_theme_black => 'Siyah';
  @override
  String get reader_theme_dark => 'Koyu';
  @override
  String get reader_theme_ecru => 'Ekru';
  @override
  String get reader_theme_eyecare => 'Eye Care';
  @override
  String get reader_theme_gray => 'Gri';
  @override
  String get reader_theme_light => 'Beyaz';
  @override
  String get reader_theme_water => 'Su mavisi';
  @override
  String get reader_top_progress_floating => 'Yüzen okuma ilerlemesi';
  @override
  String get reader_unsupported_platform =>
      'Okuyucu henüz bu platformda kullanılamıyor.';
  @override
  String get reader_vert_kerning => 'Karakter aralığı (dikey)';
  @override
  String get reader_vert_text_orient => 'Metin yönü';
  @override
  String get reader_vertical => 'Dikey';
  @override
  String get reader_view_mode_label => 'Sayfa / Kaydırma';
  @override
  String get reader_vn => 'Visual Novel';
  @override
  String get reader_writing_direction => 'Yazı yönü';
  @override
  String get reading_activity => 'Çalışma etkinliği';
  @override
  String get reading_progress => 'Okuma ilerlemesi';
  @override
  String get reading_section_mode => 'Mod ve yön';
  @override
  String get reading_statistics => 'Okuma istatistikleri';
  @override
  String get reading_stats_day_reset_hour => 'Day starts at';
  @override
  String get reading_stats_day_reset_hour_hint =>
      'Reading before this hour counts toward the previous day. Affects today and the last N days in statistics; only records written after the change use the new boundary.';
  @override
  String get reading_stats_idle_timeout => 'Boşta kalma süresi';
  @override
  String get reading_stats_idle_timeout_hint =>
      'Sayfa çevirme, kaydırma veya sözcük arama olmadan bu kadar dakika geçince okuma süresini saymayı durdur. Yalnızca roman, PDF ve manga için; video oynatılırken sayılır.';
  @override
  String get record => 'Kaydet';
  @override
  String get refresh => 'Yenile';
  @override
  String get rematch_adjust_window =>
      'Arama penceresini ayarla ve yeniden eşleştir';
  @override
  String get rematch_run => 'Yeniden eşleştir';
  @override
  String get remote_audio_source => 'Uzak ses';
  @override
  String get remote_book_audiobook_download_failed =>
      'Bu kitabın sesli kitabı indirilemedi';
  @override
  String get remote_book_download => 'Bu cihaza indir';
  @override
  String get remote_book_download_failed => 'Uzak kitap indirilemedi';
  @override
  String get remote_book_downloaded => 'Uzak kitap indirildi';
  @override
  String get remote_book_downloading => 'İndiriliyor…';
  @override
  String get remote_book_info => 'Bilgi';
  @override
  String get remote_book_info_has_audiobook => 'Sesli kitap içerir';
  @override
  String get remote_book_list_failed =>
      'Eşleştirilmiş cihazdan uzak kütüphane alınamadı.';
  @override
  String get remote_book_unavailable => 'Eşleştirilmiş cihaz kullanılamıyor';
  @override
  String get remote_delete_audiobook_partial =>
      'Kitap silindi, ancak sesli kitabı eşleştirilmiş cihazdan kaldırılamadı';
  @override
  String get remote_delete_failed => 'Eşleştirilmiş cihazda silinemedi';
  @override
  String get remote_delete_unsupported =>
      'Eşleştirilmiş cihaz uzaktan silmeyi destekleyemeyecek kadar eski. Önce oradaki Fushi\'yi güncelleyin.';
  @override
  String get remote_dict_lookup => 'Uzak sözlük araması';
  @override
  String get remote_dict_lookup_hint =>
      'Yerel sözlükler bulamadığında, yapılandırılmış Fushi sunucusunu sorgula';
  @override
  String get remote_video_download => 'Bu cihaza indir';
  @override
  String get remote_video_download_failed => 'Uzak video indirilemedi';
  @override
  String get remote_video_downloaded => 'Uzak video indirildi';
  @override
  String get remote_video_downloading => 'İndiriliyor…';
  @override
  String get remote_video_info => 'Bilgi';
  @override
  String get remote_video_info_has_subtitle => 'Altyazı içerir';
  @override
  String get remote_video_info_no_subtitle => 'Altyazı yok';
  @override
  String remote_video_info_size({required Object size}) => 'Boyut: ${size}';
  @override
  String get remote_video_list_failed =>
      'Uzak videolar yüklenemedi. Diğer cihazın çevrimiçi ve aynı ağda olduğundan emin olun, ardından tekrar deneyin.';
  @override
  String get remote_video_unavailable => 'Eşleştirilmiş cihaz kullanılamıyor';
  @override
  String get rename_collection => 'Koleksiyonu yeniden adlandır';
  @override
  String get render_restart_required =>
      'Uygulamayı yeniden başlattıktan sonra geçerli olur';
  @override
  String get repeat_cue => 'Cümleyi tekrarla';
  @override
  String get reset => 'Sıfırla';
  @override
  String get resource_version_batch => 'Toplu';
  @override
  String resource_version_episode_count({required Object n}) => '${n} bölüm';
  @override
  String get resource_version_show_files => 'Dosyaları göster';
  @override
  String get resource_version_view_flat => 'Tüm sürümler';
  @override
  String get retry => 'Yeniden dene';
  @override
  String get reverse_arrow_page_turn =>
      'Klavye sol/sağ sayfa çevirme yönünü tersine çevir';
  @override
  String get reverse_navigation_bar => 'Gezinme çubuğunu ters çevir';
  @override
  String get reverse_reader_bottom_bar => 'Okuyucu alt çubuğunu ters çevir';
  @override
  String get saved_tags => 'Etiketler kaydedildi.';
  @override
  String get scan_non_japanese_text => 'Japonca olmayan metni tara';
  @override
  String get scan_non_japanese_text_hint =>
      'Kapalıyken seçim Japonca olmayan karakterlerde durur';
  @override
  String get scrape_all => 'Tümünü tara';
  @override
  String scrape_all_confirm({required Object n}) =>
      'Tüm ${n} kütüphane öğesini başlığa göre eşleştir. Yalnızca yüksek güvenilirlikli eşleşmeler otomatik uygulanır — videolar başlık ile birlikte yıl, tür ve diğer sinyallere göre puanlanır, kitaplar ve oyunlar ise benzersiz tam başlık eşleşmesi gerektirir. Kendiniz seçtiğiniz kapaklar asla üzerine yazılmaz (belirlediğiniz yerel görseller, eşleştirme iletişim kutusunda seçtiğiniz girdiler ve klasöre yerleştirdiğiniz poster dosyaları) ve belirsiz sonuçlar manuel inceleme için beklemede kalır.';
  @override
  String scrape_all_done({
    required Object applied,
    required Object review,
    required Object skipped,
    required Object failed,
  }) =>
      'Tamamlandı: ${applied} uygulandı, ${review} inceleme gerekiyor, ${skipped} atlandı, ${failed} başarısız';
  @override
  String get scrape_all_empty => 'Bu kütüphanede taranacak öğe yok.';
  @override
  String scrape_all_item({required Object title}) => 'İşleniyor: ${title}';
  @override
  String scrape_all_running({required Object current, required Object total}) =>
      '${current} / ${total} taranıyor';
  @override
  String get scrape_all_start => 'Başlat';
  @override
  String scrape_all_title({required Object kind}) =>
      'Tüm ${kind} öğelerini tara';
  @override
  String get scrape_failure_detail_hide => 'Ayrıntıları gizle';
  @override
  String get scrape_failure_detail_show => 'Ayrıntıları göster';
  @override
  String get scrape_reason_network =>
      'Kapak kaynağından geçerli bir yanıt alınamadı. Ağ bağlantınızı kontrol edip tekrar deneyin.';
  @override
  String get scrape_reason_server =>
      'Kapak kaynağı bir hata döndürdü. Daha sonra tekrar deneyin veya başka bir aday seçin.';
  @override
  String get search => 'Ara';
  @override
  String get search_ellipsis => 'Ara...';
  @override
  String get searching_in_progress => 'Aranıyor ';
  @override
  String get section_advanced_typography => 'Gelişmiş';
  @override
  String get section_audiobook => 'Sesli Kitap';
  @override
  String get section_epub => 'EPUB Kütüphanesi';
  @override
  String get section_floating_lyric => 'Yüzen şarkı sözü';
  @override
  String get section_interface => 'Arayüz';
  @override
  String get section_layout => 'Düzen ve Görünüm';
  @override
  String get section_navigation => 'Gezinme';
  @override
  String get section_network => 'Ağ';
  @override
  String get section_page_turn_direction => 'Sayfa çevirme yönü';
  @override
  String get section_services_metadata => 'Üst veri toplama';
  @override
  String get section_services_resources => 'Kaynak dizinleyicileri';
  @override
  String get section_services_subtitles => 'Altyazı kaynakları';
  @override
  String get section_typography => 'Tipografi';
  @override
  String get section_update => 'Güncelleme Ayarları';
  @override
  String get section_video_danmaku => 'Danmaku';
  @override
  String get section_video_library => 'Kütüphane';
  @override
  String get section_video_playback => 'Oynatma';
  @override
  String get section_video_subtitles => 'Altyazılar';
  @override
  String get selection_copy_empty => 'Metin seçilmedi.';
  @override
  String get selection_share_failed => 'Paylaşım sayfası açılamadı.';
  @override
  String get selection_web_search => 'Web\'de ara';
  @override
  String get selection_web_search_unavailable =>
      'Web\'de arama yapabilen uygulama yok.';
  @override
  String get send => 'Gönder';
  @override
  String get series => 'Seri';
  @override
  String get series_created => 'Seri oluşturuldu';
  @override
  String get series_default_name => 'Yeni seri';
  @override
  String series_item_count({required Object n}) => '${n} öğe';
  @override
  String get series_name_hint => 'Seri adı';
  @override
  String get server_address => 'Sunucu adresi';
  @override
  String get settings => 'Ayarlar';
  @override
  String get settings_check_update_now => 'Güncellemeleri kontrol et';
  @override
  String get settings_content_language_description =>
      'Dil beyan etmeyen içerikler için yedek dil. Kitap, video, oyun ve sözlük başına ayarlar bunu geçersiz kılar.';
  @override
  String get settings_content_language_title => 'Varsayılan içerik dili';
  @override
  String get settings_content_language_unset => 'Ayarlanmadı';
  @override
  String get settings_destination_appearance => 'Görünüm';
  @override
  String get settings_destination_card_creation => 'Kart Oluşturma';
  @override
  String get settings_destination_diagnostics => 'Tanılama';
  @override
  String get settings_destination_interconnect => 'Fushi Interconnect';
  @override
  String get settings_destination_listening => 'Dinleme';
  @override
  String get settings_destination_lookup => 'Arama';
  @override
  String get settings_destination_manga_summary =>
      'Okuyucu, OCR ve çevrimiçi katalog';
  @override
  String get settings_destination_profiles => 'Yapılandırma Şemaları';
  @override
  String get settings_destination_reading => 'Okuma';
  @override
  String get settings_destination_reading_controls => 'Okuma Kontrolleri';
  @override
  String get settings_destination_services => 'Çevrimiçi hizmetler';
  @override
  String get settings_destination_services_summary =>
      'Üçüncü taraf API\'leri, dizinleyiciler ve medya sunucuları';
  @override
  String get settings_destination_storage => 'Depolama';
  @override
  String get settings_destination_storage_summary =>
      'Veri konumu ve disk kullanımı';
  @override
  String get settings_destination_sync_backup => 'Senkronizasyon ve Yedekleme';
  @override
  String get settings_destination_system => 'Sistem';
  @override
  String get settings_destination_system_summary =>
      'Genel, güncellemeler ve tanılama';
  @override
  String get settings_destination_tracking => 'Medya takibi';
  @override
  String get settings_destination_video => 'Video';
  @override
  String get settings_downloads_open_page_hint =>
      'İndirmeler sayfasını aç (görevler, kaynaklar, abonelikler)';
  @override
  String get settings_search_hint => 'Ayarlarda ara';
  @override
  String get settings_search_no_results => 'Eşleşen ayar bulunamadı';
  @override
  String get settings_secret_hide => 'Değeri gizle';
  @override
  String get settings_secret_show => 'Değeri göster';
  @override
  String get settings_section_app_shell => 'Uygulama';
  @override
  String get settings_section_data_storage => 'Veri depolama konumu';
  @override
  String get settings_section_gal_hook_overlay => 'Galgame altyazı katmanı';
  @override
  String get settings_section_general => 'Genel';
  @override
  String get settings_section_lookup_audio => 'Telaffuz ve geri bildirim';
  @override
  String get settings_section_lookup_content => 'Giriş içeriği';
  @override
  String get settings_section_lookup_integrations => 'Harici entegrasyonlar';
  @override
  String get settings_section_lookup_popup_window => 'Açılır pencere';
  @override
  String get settings_section_lookup_trigger => 'Arama tetikleyicisi';
  @override
  String get settings_section_modules => 'Özellik modülleri';
  @override
  String get settings_section_page_turn_input => 'Sayfa çevirme ve etkileşim';
  @override
  String get settings_section_reader_chrome => 'Okuyucu arayüzü';
  @override
  String get settings_section_reading_stats => 'Okuma istatistikleri';
  @override
  String get settings_section_update_channel => 'Güncelleme Kanalı';
  @override
  String get settings_services_link_subtitle =>
      'Jimaku, OpenSubtitles, Torznab, Jellyfin, AniDB ve TMDB burada birlikte yapılandırılır';
  @override
  String get settings_view_changelog => 'Değişiklik günlüğünü gör';
  @override
  String get share => 'Paylaş';
  @override
  String get share_theme => 'Temayı paylaş';
  @override
  String get shortcut_action_audiobook_next_sentence => 'Sonraki Cümle';
  @override
  String get shortcut_action_audiobook_play_pause => 'Oynat / Duraklat';
  @override
  String get shortcut_action_audiobook_prev_sentence => 'Önceki Cümle';
  @override
  String get shortcut_action_audiobook_seek_clicked =>
      'Sesi tıklanan cümleye atla';
  @override
  String get shortcut_action_dpad_down => 'Yön Tuşu Aşağı';
  @override
  String get shortcut_action_dpad_left => 'Yön Tuşu Sol';
  @override
  String get shortcut_action_dpad_right => 'Yön Tuşu Sağ';
  @override
  String get shortcut_action_dpad_up => 'Yön Tuşu Yukarı';
  @override
  String get shortcut_action_global_back => 'Geri Git';
  @override
  String get shortcut_action_global_context_menu => 'Open context menu';
  @override
  String get shortcut_action_global_external_lookup =>
      'App-external lookup hotkey';
  @override
  String get shortcut_action_global_scroll_page_down =>
      'Bir ekran aşağı kaydır';
  @override
  String get shortcut_action_global_scroll_page_up => 'Bir ekran yukarı kaydır';
  @override
  String get shortcut_action_global_toggle_fullscreen => 'Tam ekranı aç/kapat';
  @override
  String get shortcut_action_home_focus_search => 'Aramaya Odaklan';
  @override
  String get shortcut_action_home_tab_books => 'Kitaplar Sekmesi';
  @override
  String get shortcut_action_home_tab_dict => 'Sözlük Sekmesi';
  @override
  String get shortcut_action_home_tab_next => 'Sonraki sekme';
  @override
  String get shortcut_action_home_tab_prev => 'Önceki sekme';
  @override
  String get shortcut_action_home_tab_settings => 'Ayarlar Sekmesi';
  @override
  String get shortcut_action_manga_dismiss_dict => 'Sözlüğü kapat';
  @override
  String get shortcut_action_manga_page_backward => 'Önceki sayfa';
  @override
  String get shortcut_action_manga_page_forward => 'Sonraki sayfa';
  @override
  String get shortcut_action_manga_pan_down => 'Aşağı kaydır';
  @override
  String get shortcut_action_manga_pan_left => 'Sola kaydır';
  @override
  String get shortcut_action_manga_pan_right => 'Sağa kaydır';
  @override
  String get shortcut_action_manga_pan_up => 'Yukarı kaydır';
  @override
  String get shortcut_action_manga_toggle_chrome => 'Manga arayüzünü aç/kapat';
  @override
  String get shortcut_action_popup_mine_entry => 'Kart oluştur (kartla)';
  @override
  String get shortcut_action_popup_next_entry => 'Sonraki kelime girişi';
  @override
  String get shortcut_action_popup_play_audio => 'Kelime sesini oynat';
  @override
  String get shortcut_action_popup_prev_entry => 'Önceki kelime girişi';
  @override
  String get shortcut_action_reader_create_card_from_popup =>
      'Açılır pencereden kart oluştur';
  @override
  String get shortcut_action_reader_dismiss_dict => 'Sözlüğü Kapat';
  @override
  String get shortcut_action_reader_enter_caret => 'Arama imlecine gir';
  @override
  String get shortcut_action_reader_lookup_at_cursor =>
      'İmleci ara / etkinleştir';
  @override
  String get shortcut_action_reader_open_audiobook => 'Open audiobook panel';
  @override
  String get shortcut_action_reader_open_gallery =>
      'Open illustrations gallery';
  @override
  String get shortcut_action_reader_open_menu => 'Open Settings Menu';
  @override
  String get shortcut_action_reader_open_navigation => 'Open Navigation';
  @override
  String get shortcut_action_reader_open_statistics =>
      'Open reading statistics';
  @override
  String get shortcut_action_reader_page_backward => 'Önceki Sayfa';
  @override
  String get shortcut_action_reader_page_forward => 'Sonraki Sayfa';
  @override
  String get shortcut_action_reader_shift_lookup => 'Shift ile arama';
  @override
  String get shortcut_action_reader_toggle_chrome => 'Denetimleri Aç/Kapat';
  @override
  String get shortcut_action_reader_toggle_furigana => 'Furigana\'yı aç/kapat';
  @override
  String get shortcut_action_video_align_subtitle_to_next =>
      'Sonraki altyazıyı şimdiye hizala';
  @override
  String get shortcut_action_video_align_subtitle_to_prev =>
      'Önceki altyazıyı şimdiye hizala';
  @override
  String get shortcut_action_video_cycle_secondary_subtitle_obscure =>
      'Cycle Secondary Subtitle Obscure';
  @override
  String get shortcut_action_video_cycle_subtitle_obscure =>
      'Cycle Subtitle Obscure Mode';
  @override
  String get shortcut_action_video_dismiss_dict => 'Sözlüğü kapat';
  @override
  String get shortcut_action_video_enter_caret => 'Altyazı arama imlecine gir';
  @override
  String get shortcut_action_video_hold_speed => 'Geçici hız için basılı tut';
  @override
  String get shortcut_action_video_next_chapter => 'Sonraki bölüm';
  @override
  String get shortcut_action_video_next_frame => 'Sonraki Kare';
  @override
  String get shortcut_action_video_next_subtitle => 'Sonraki Altyazı';
  @override
  String get shortcut_action_video_open_subtitle_align =>
      'Altyazı dalga formu hizalamayı aç';
  @override
  String get shortcut_action_video_pause => 'Duraklat';
  @override
  String get shortcut_action_video_play => 'Oynat';
  @override
  String get shortcut_action_video_previous_chapter => 'Önceki bölüm';
  @override
  String get shortcut_action_video_previous_frame => 'Önceki Kare';
  @override
  String get shortcut_action_video_previous_subtitle => 'Önceki Altyazı';
  @override
  String get shortcut_action_video_replay_current_subtitle =>
      'Geçerli altyazıyı tekrar oynat';
  @override
  String get shortcut_action_video_replay_previous_subtitle =>
      'Önceki altyazıyı tekrar oynat';
  @override
  String get shortcut_action_video_reset_speed => 'Hızı Sıfırla';
  @override
  String get shortcut_action_video_screenshot => 'Ekran Görüntüsü';
  @override
  String get shortcut_action_video_search_subtitle_list =>
      'Altyazı listesinde ara';
  @override
  String get shortcut_action_video_seek_backward => 'Geri Sar';
  @override
  String get shortcut_action_video_seek_forward => 'İleri Sar';
  @override
  String get shortcut_action_video_speed_down => 'Yavaşlat';
  @override
  String get shortcut_action_video_speed_up => 'Hızlandır';
  @override
  String get shortcut_action_video_subtitle_delay_decrease =>
      'Altyazı gecikmesi −';
  @override
  String get shortcut_action_video_subtitle_delay_increase =>
      'Altyazı gecikmesi +';
  @override
  String get shortcut_action_video_toggle_favorite_sentence =>
      'Geçerli cümleyi sık kullanılanlara ekle';
  @override
  String get shortcut_action_video_toggle_fullscreen => 'Tam Ekranı Aç/Kapat';
  @override
  String get shortcut_action_video_toggle_immersive_lock =>
      'Sürükleyici Kilidi Aç/Kapat';
  @override
  String get shortcut_action_video_toggle_mute => 'Sessize Al/Aç';
  @override
  String get shortcut_action_video_toggle_play_pause => 'Oynat / Duraklat';
  @override
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle Hide Secondary Subtitle';
  @override
  String get shortcut_action_video_toggle_shader_compare =>
      'Shader Karşılaştırmasını Aç/Kapat';
  @override
  String get shortcut_action_video_toggle_subtitle_blur =>
      'Altyazı Bulanıklığını Aç/Kapat';
  @override
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle Hide Subtitles';
  @override
  String get shortcut_action_video_toggle_subtitle_list =>
      'Altyazı Listesini Aç/Kapat';
  @override
  String get shortcut_action_video_volume_down => 'Ses Azalt';
  @override
  String get shortcut_action_video_volume_up => 'Ses Artır';
  @override
  String get shortcut_assign_pick_action => 'Eyleme ata…';
  @override
  String get shortcut_clear => 'Temizle';
  @override
  String shortcut_conflict({required Object s}) =>
      'Şu tarafından kullanılıyor: ${s}';
  @override
  String get shortcut_conflict_keep_both => 'Keep both';
  @override
  String get shortcut_conflict_keep_both_hint =>
      'Both actions keep this binding. Whichever scope resolves first wins at press time.';
  @override
  String shortcut_conflict_replace_confirm({required Object s}) =>
      'Bu kısayol zaten ${s} tarafından kullanılıyor. Bu işleme taşınsın mı?';
  @override
  String get shortcut_gamepad => 'Oyun kumandası';
  @override
  String get shortcut_gamepad_brand_label => 'Oyun kolu düğme stili';
  @override
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  @override
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  @override
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  @override
  String get shortcut_gamepad_pick_list => 'Listeden seç';
  @override
  String get shortcut_gamepad_unavailable_hint =>
      'GameInput bileşeni algılanmadı — oyun kolu desteği kullanılamıyor. Kumanda desteğini etkinleştirmek için Windows Oyun Hizmetleri\'ni yükleyin.';
  @override
  String get shortcut_keyboard => 'Klavye';
  @override
  String get shortcut_mouse_back => 'Geri düğmesi';
  @override
  String get shortcut_mouse_button => 'Fare düğmesi';
  @override
  String get shortcut_mouse_button_not_supported =>
      'This action only accepts mouse side buttons (back/forward).';
  @override
  String get shortcut_mouse_forward => 'İleri düğmesi';
  @override
  String get shortcut_mouse_left => 'Sol tıklama';
  @override
  String get shortcut_mouse_middle => 'Orta tıklama';
  @override
  String get shortcut_mouse_right => 'Sağ tıklama';
  @override
  String get shortcut_press_gamepad => 'Bir oyun kolu düğmesine basın...';
  @override
  String get shortcut_press_key => 'Bir tuş bileşimine basın...';
  @override
  String get shortcut_press_mouse_button => 'Bir fare düğmesine basın...';
  @override
  String get shortcut_press_wheel =>
      'Bir değiştirici tuş basılı tutun ve burada kaydırın';
  @override
  String get shortcut_reset_confirm =>
      'Bu bölümdeki tüm kısayollar varsayılanlara sıfırlansın mı?';
  @override
  String get shortcut_reset_defaults => 'Varsayılanlara Sıfırla';
  @override
  String get shortcut_scope_audiobook => 'Sesli Kitap';
  @override
  String get shortcut_scope_dictionary_popup => 'Sözlük açılır penceresi';
  @override
  String get shortcut_scope_dictionary_popup_note =>
      'İmleç sözlük açılır penceresi üzerindeyken çalışır';
  @override
  String get shortcut_scope_gamepad => 'Oyun kumandası';
  @override
  String get shortcut_scope_global => 'Genel';
  @override
  String get shortcut_scope_global_external => 'Genel (uygulama dışı)';
  @override
  String get shortcut_scope_global_external_desktop_note =>
      'Mouse triggers accept side buttons only (back/forward). Other buttons keep their normal meaning in other apps, so they are rejected here.';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this hotkey.';
  @override
  String get shortcut_scope_home => 'Ana Sayfa';
  @override
  String get shortcut_scope_manga => 'Manga';
  @override
  String get shortcut_scope_reader => 'Okuyucu';
  @override
  String get shortcut_scope_universal => 'Geri / Çıkış';
  @override
  String get shortcut_scope_video => 'Video';
  @override
  String get shortcut_settings_title => 'Klavye Kısayolları';
  @override
  String get shortcut_stop_capture => 'Durdur';
  @override
  String get shortcut_tap_to_assign => 'Atanmamış · atamak için dokunun';
  @override
  String get shortcut_view_list => 'Liste görünümü';
  @override
  String get shortcut_view_visual => 'Kumanda düzeni';
  @override
  String get shortcut_wheel => 'Fare tekerleği';
  @override
  String get shortcut_wheel_down => 'Tekerlek aşağı';
  @override
  String get shortcut_wheel_needs_modifier =>
      'Tek başına tekerlek açılır pencereyi kaydırır — kaydırırken Alt / Ctrl / Shift basılı tutun';
  @override
  String get shortcut_wheel_up => 'Tekerlek yukarı';
  @override
  String get show_bottom_bar_cue => 'Geçerli cümleyi göster';
  @override
  String get show_expression_tags => 'İfade etiketlerini göster';
  @override
  String get show_floating_lyric => 'Kayan altyazı katmanı';
  @override
  String get show_media_notification => 'Medya bildirimini göster';
  @override
  String get show_options => 'Seçenekleri göster';
  @override
  String get show_top_progress_bar => 'Okuma ilerleme göstergesi';
  @override
  String get skip_action => 'Atlama Eylemi';
  @override
  String skip_action_seconds({required Object n}) => '${n} saniye';
  @override
  String get skip_action_sentence => '1 cümle';
  @override
  String get sort_by => 'Sırala';
  @override
  String get sort_imported => 'İçe aktarma tarihi';
  @override
  String get sort_recent_read => 'Son okunan';
  @override
  String get sort_recent_watched => 'Son izlenen';
  @override
  String get sort_title => 'Ad';
  @override
  String get source_description_epub => 'EPUB okuma ve sözlük arama';
  @override
  String get source_name_bookshelf => 'Kitaplık';
  @override
  String get spread_auto => 'Otomatik';
  @override
  String get spread_direction => 'Yayılma Yönü';
  @override
  String get spread_direction_ltr => 'Soldan Sağa';
  @override
  String get spread_direction_rtl => 'Sağdan Sola';
  @override
  String get spread_mode => 'Yayılma Modu';
  @override
  String get spread_off => 'Kapalı';
  @override
  String get spread_on => 'Açık';
  @override
  String get srt_audio_unresolved =>
      'Ses dosyası bulunamadı — lütfen yeniden bağlayın';
  @override
  String get srt_book_reimport => 'Yeniden içe aktar';
  @override
  String get srt_book_reimport_body_rebuilt =>
      'Kitap metni yeniden oluşturuldu — okumak için kitabı yeniden açın';
  @override
  String get srt_book_reimport_no_cues =>
      'Bu dosyada altyazı satırı bulunamadı';
  @override
  String get srt_book_reimport_subtitle_hint =>
      'Altyazıyı değiştirmek, kitap metnini yeni ipuçlarından yeniden oluşturur.';
  @override
  String get srt_books_section => 'Altyazılı sesli kitaplar';
  @override
  String srt_delete_confirm({required Object title}) =>
      '『${title}』 silinsin mi? Bu işlem geri alınamaz.';
  @override
  String get srt_delete_title => 'Altyazılı kitabı sil';
  @override
  String get srt_epub_not_ready =>
      'Kitap hazır değil — lütfen yeniden içe aktarın';
  @override
  String get srt_import => 'Kitap içe aktar';
  @override
  String get srt_import_audio_needs_subtitle =>
      'Ses, altyazılarla eşleştirilmelidir. Mevcut bir EPUB\'a ses eklemek için rafta kitaba uzun basın.';
  @override
  String get srt_import_author_hint => 'Yazar (isteğe bağlı)';
  @override
  String get srt_import_error => 'İçe aktarma başarısız';
  @override
  String srt_import_files_selected({required Object n}) => '${n} dosya seçildi';
  @override
  String get srt_import_hint_epub_or_srt =>
      'İçe aktarmak için bir EPUB veya altyazı dosyası seçin.';
  @override
  String get srt_import_missing_input =>
      'Lütfen en az bir EPUB veya altyazı dosyası seçin';
  @override
  String get srt_import_missing_title => 'Lütfen bir kitap başlığı girin';
  @override
  String get srt_import_pick_audio_dir => 'Ses klasörü seç';
  @override
  String get srt_import_pick_audio_files => 'Ses dosyalarını seç';
  @override
  String get srt_import_pick_cover => 'Kapak Görseli Seç';
  @override
  String get srt_import_pick_epub => 'EPUB seç';
  @override
  String get srt_import_pick_subtitle_files => 'Altyazı dosyaları seç';
  @override
  String get srt_import_success => 'Kitap içe aktarıldı';
  @override
  String get srt_import_title_hint => 'Kitap başlığı';
  @override
  String get startup_default_dictionary_tab => 'Başlangıçta aramayı aç';
  @override
  String get startup_default_dictionary_tab_hint =>
      'Ana ekranı mevcut varsayılan yerine arama sekmesinde başlat.';
  @override
  String get stash => 'Depo';
  @override
  String get stash_added_multiple => 'Birden fazla öğe depoya eklendi.';
  @override
  String stash_added_single({required Object term}) =>
      '『${term}』 depoya eklendi.';
  @override
  String get stash_clear_description =>
      'Tüm içerik temizlenecek. Emin misiniz?';
  @override
  String stash_clear_single({required Object term}) =>
      '『${term}』 depodan kaldırıldı.';
  @override
  String get stash_clear_title => 'Depoyu temizle';
  @override
  String get stash_nothing_to_pop => 'Depodan çıkarılacak öğe yok.';
  @override
  String get stash_placeholder => 'Depoda öğe yok';
  @override
  String get stat_all_time => 'Tüm zamanlar';
  @override
  String get stat_analysis => 'Analiz';
  @override
  String get stat_bookshelf_compare => 'Kitaplık';
  @override
  String get stat_center_tab_overview => 'Genel bakış';
  @override
  String get stat_center_title => 'İstatistik merkezi';
  @override
  String get stat_clear_all => 'İstatistikleri temizle';
  @override
  String get stat_clear_all_confirm => 'Temizle';
  @override
  String get stat_clear_all_game_message =>
      'Tüm oyun oynama süresi ve oturum sayıları silinsin mi? Oyun kütüphaneniz ve etkinlik zaman çizelgeniz korunur. Bu işlem geri alınamaz.';
  @override
  String get stat_clear_all_reading_message =>
      'Tüm okuma süresi, karakter sayıları ve arama/kart çıkarma sayıları temizlensin mi? Kayıtlı kelimeleriniz, cümleleriniz ve çıkarılan kartlarınız korunur. Bu işlem geri alınamaz.';
  @override
  String get stat_clear_all_title => 'Tüm istatistikleri temizle';
  @override
  String get stat_clear_all_video_message =>
      'Tüm izleme süresi, altyazı karakter sayıları ve arama/kart çıkarma sayıları temizlensin mi? Kayıtlı kelimeleriniz, cümleleriniz ve çıkarılan kartlarınız korunur. Bu işlem geri alınamaz.';
  @override
  String get stat_daily_average => 'Günlük ort.';
  @override
  String get stat_delete_message =>
      'Bu öğenin süre, karakter sayısı ve arama/kart çıkarma istatistikleri silinsin mi? Kayıtlı kelimeleriniz ve cümleleriniz etkilenmez.';
  @override
  String get stat_delete_title => 'İstatistikleri sil';
  @override
  String get stat_detail_empty => 'Bu dönemde etkinlik yok';
  @override
  String get stat_detail_ungrouped => 'Gruplanmamış';
  @override
  String get stat_fastest_day => 'Fastest Day';
  @override
  String get stat_favorited => 'Sık kullanılan';
  @override
  String get stat_favorited_sentence => 'Sık kullanılan cümleler';
  @override
  String stat_format_chars({required Object n}) => '${n} karakter';
  @override
  String stat_format_days({required Object n}) => '${n} gün';
  @override
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h} sa ${m} dk';
  @override
  String stat_format_minutes({required Object n}) => '${n} dk';
  @override
  String stat_format_pages({required Object n}) => '${n} sayfa';
  @override
  String get stat_goal => 'Daily Goal';
  @override
  String get stat_goal_daily => 'Daily Goal';
  @override
  String get stat_goal_presets => 'Hazır ayarlar';
  @override
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} karakter';
  @override
  String get stat_goal_reached => 'Hedefe ulaşıldı';
  @override
  String stat_goal_recent_average({required Object n}) =>
      'Son 7 gün: günde ortalama ${n} karakter';
  @override
  String get stat_goal_set => 'Set Goal';
  @override
  String get stat_goal_unit_chars => 'karakter';
  @override
  String get stat_goal_weekly => 'Weekly Goal';
  @override
  String get stat_hourly_band_epub => 'Metin kitaplar';
  @override
  String get stat_hourly_band_manga => 'Manga';
  @override
  String get stat_hourly_band_pdf => 'PDF';
  @override
  String get stat_hourly_band_unattributed => 'Ayrılmamış geçmiş';
  @override
  String get stat_hourly_unattributed_note =>
      'Format bazlı takip öncesinde kaydedilen saatlerin türü depolanmamıştır, bu yüzden ayrıştırılamazlar. Birleşik toplam olarak gösterilirler ve hiçbir türe atanmazlar.';
  @override
  String get stat_last_30_days => 'Son 30 gün';
  @override
  String get stat_lookup => 'Aramalar';
  @override
  String get stat_metric_chars => 'Karakterler';
  @override
  String get stat_metric_speed => 'Hız';
  @override
  String get stat_metric_time => 'Süre';
  @override
  String get stat_mined => 'Çıkarılan kart';
  @override
  String get stat_no_data => 'Henüz okuma verisi yok';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => 'Aktif günler (7g)';
  @override
  String get stat_refresh => 'Yenile';
  @override
  String get stat_session_delete => 'Oturumu sil';
  @override
  String get stat_session_delete_message =>
      'Bu oturumun süresi, karakter ve sayfa sayısı silinsin mi? Kaydettiğiniz kelimeler ve cümleler etkilenmez.';
  @override
  String stat_sessions_count({required Object n}) => '${n} oturum';
  @override
  String get stat_sessions_empty => 'Henüz oturum yok';
  @override
  String get stat_sessions_recent => 'Son oturumlar';
  @override
  String get stat_sessions_show_all => 'Tüm oturumlar';
  @override
  String get stat_slowest_day => 'Slowest Day';
  @override
  String get stat_sort_by_chars => 'Karaktere Göre';
  @override
  String get stat_sort_by_speed => 'Hıza Göre';
  @override
  String get stat_sort_by_time => 'Süreye Göre';
  @override
  String get stat_source_breakdown => 'Kaynağa göre';
  @override
  String get stat_speed_anomaly => 'Anormallik';
  @override
  String get stat_speed_avg => 'Hareketli Ortalama';
  @override
  String stat_speed_cph({required Object n}) => '${n} karakter/sa';
  @override
  String get stat_speed_summary => 'Speed Summary';
  @override
  String get stat_streak => 'Seri';
  @override
  String get stat_this_month => 'Bu ay';
  @override
  String get stat_this_week => 'Bu hafta';
  @override
  String get stat_today => 'Bugün';
  @override
  String get stat_today_hourly => 'Bugün Saatlik';
  @override
  String get stat_trend_daily => 'Günlük';
  @override
  String get stat_trend_monthly => 'Aylık';
  @override
  String get stat_trend_weekly => 'Haftalık';
  @override
  String get stat_typical_day => 'Typical Day';
  @override
  String get stat_vs_prev => 'önceki 14g ile karş.';
  @override
  String get stat_weighted_avg_speed => 'Weighted Avg';
  @override
  String get stop => 'Durdur';
  @override
  String get storage_bundled_hint =>
      'Yükleyici ile birlikte gelir; silinen dosyalar sonraki güncellemede geri gelir, yalnızca referans amaçlı listelenmiştir.';
  @override
  String get storage_bundled_section => 'Paketlenmiş bileşenler';
  @override
  String get storage_category_backups => 'Artakalan yedek arşivleri';
  @override
  String get storage_category_books => 'Kitaplar ve sesli kitaplar';
  @override
  String get storage_category_cache => 'Önbellekler ve geçici dosyalar';
  @override
  String get storage_category_covers => 'Kapaklar ve küçük resimler';
  @override
  String get storage_category_custom_fonts => 'Özel yazı tipleri';
  @override
  String get storage_category_database => 'Veritabanı ve dahili veriler';
  @override
  String get storage_category_dictionaries => 'Sözlükler';
  @override
  String get storage_category_exports => 'Dışa aktarmalar';
  @override
  String get storage_category_ocr_models => 'Manga OCR modelleri';
  @override
  String get storage_category_other => 'Diğer, sınıflandırılmamış';
  @override
  String get storage_category_shaders => 'Video gölgelendiricileri';
  @override
  String get storage_category_subtitles => 'Altyazılar';
  @override
  String get storage_category_video_downloads => 'Video indirmeleri';
  @override
  String get storage_category_web => 'Web arşivi ve tarayıcı verileri';
  @override
  String get storage_dictionary_delete_incomplete =>
      'Silme sonrası sözlük hâlâ mevcut, hata günlüğüne bakın';
  @override
  String storage_entry_backups_label({required Object n}) =>
      'Son dışa aktarmadan kalan ${n} arşiv';
  @override
  String storage_entry_database_snapshots_label({required Object n}) =>
      'Veritabanı yedek anlık görüntüleri (${n} dosya)';
  @override
  String get storage_entry_delete_backups_confirm_body =>
      'Bu geçici yerel yedek arşivleri silinsin mi? Hâlâ ihtiyacınız olan kopyaları kaydettiğinizden veya paylaştığınızdan emin olun.';
  @override
  String get storage_entry_delete_book_confirm_body =>
      'Bu, kitabı, okuma ilerlemesini ve eşleştirilmiş ses kopyalarını bu cihazdan kaldırır.';
  @override
  String storage_entry_delete_confirm_title({required Object name}) =>
      '${name} silinsin mi?';
  @override
  String get storage_entry_delete_database_snapshots_confirm_body =>
      'Bu işlem, kalan tüm veritabanı yedek anlık görüntülerini (corrupt-bak / pre-restore / eski geçiş kopyaları) siler. Çalışan veritabanına ve -wal/-shm yan dosyalarına dokunulmaz.';
  @override
  String get storage_entry_delete_dictionary_confirm_body =>
      'Bu, sözlüğü ve içe aktarılmış verilerini kaldırır.';
  @override
  String get storage_entry_delete_done => 'Silindi';
  @override
  String storage_entry_delete_failed({required Object reason}) =>
      'Silme başarısız: ${reason}';
  @override
  String get storage_entry_delete_files_confirm_body =>
      'Diskten hemen silinir. Kitaplığınızdaki hiçbir şey buna başvurmuyor — bunlar önbellek, dışa aktarılmış veya yeniden indirilebilir verilerdir.';
  @override
  String get storage_entry_external_audio_hint =>
      'Ses özgün dosyaları kullanır, uygulama depolamasında yer kaplamaz';
  @override
  String storage_entry_more_rest({required Object n, required Object size}) =>
      '${n} öğe daha, toplamda ${size}';
  @override
  String storage_modules_anime4k_delete_done({required Object n}) =>
      '${n} gölgelendirici dosyası silindi';
  @override
  String get storage_modules_anime4k_hint =>
      'Video ayarlarından istediğiniz zaman tekrar indirilebilir';
  @override
  String get storage_modules_anime4k_title => 'Anime4K gölgelendiricileri';
  @override
  String get storage_overview_refresh => 'Yeniden tara';
  @override
  String get storage_overview_scanning => 'Taranıyor…';
  @override
  String get storage_overview_section => 'Disk kullanımı';
  @override
  String get storage_overview_total => 'Toplam';
  @override
  String get storage_permissions =>
      'AnkiDroid\'a dışa aktarma için lütfen aşağıdaki izinleri verin.';
  @override
  String get storage_shaders_delete_anime4k =>
      'Anime4K gölgelendiricilerini sil';
  @override
  String get stream => 'Yayın';
  @override
  String get subscription_edit_rule_hint =>
      'Kimlik ve sürüm kuralları burada değiştirilemez. Sürüm değiştirmek için yeniden abone olun - geçmiş korunur.';
  @override
  String get subscription_edit_title => 'Aboneliği düzenle';
  @override
  String get subscription_item_status_discovered => 'Beklemede';
  @override
  String get subscription_item_status_failed => 'Başarısız';
  @override
  String get subscription_item_status_processed => 'İçe aktarıldı';
  @override
  String get subscription_item_status_queued => 'Sıraya alındı';
  @override
  String get subscription_item_status_skipped => 'Atlandı';
  @override
  String get subscription_items_empty => 'Henüz takip edilen sürüm yok';
  @override
  String subscription_last_matched({required Object time}) =>
      'Son eşleşme: ${time}';
  @override
  String get subscription_legacy_badge => 'Eski';
  @override
  String get subscription_legacy_hint =>
      'Eski sistemden içe aktarıldı; otomatik kontroller uygulanmaz.';
  @override
  String get subscription_mode_one_shot => 'Tek seferlik';
  @override
  String get subscription_mode_ongoing => 'Devam eden';
  @override
  String subscription_next_check({required Object time}) =>
      'Sonraki kontrol: ${time}';
  @override
  String get subscription_no_match => 'Eşleşen abonelik yok';
  @override
  String get subscription_search_hint => 'Aboneliklerde ara';
  @override
  String get subscription_show_items => 'Bölüm geçmişi';
  @override
  String get subscription_sort_created => 'Eklenme tarihi';
  @override
  String get subscription_sort_last_checked => 'Son kontrol';
  @override
  String get subscription_sort_last_matched => 'Son eşleşme';
  @override
  String get subtitle_version_ai_translated => 'Yapay zekâ çevirisi';
  @override
  String get subtitle_version_content_language => 'İçerik';
  @override
  String subtitle_version_episode_count({required Object n}) => '${n} bölüm';
  @override
  String get subtitle_version_show_files => 'Dosyaları göster';
  @override
  String subtitle_version_unnumbered_count({required Object n}) =>
      '${n} numarasız';
  @override
  String get subtitle_version_view_files => 'Dosya listesi';
  @override
  String get swipe_page_turn_sensitivity =>
      'Kaydırarak sayfa çevirme duyarlılığı';
  @override
  String get sync_account => 'Hesap';
  @override
  String get sync_asset_dictionary => 'Dictionaries';
  @override
  String get sync_asset_dictionary_download => 'Sözlükleri indir';
  @override
  String get sync_asset_dictionary_upload => 'Sözlükleri yükle';
  @override
  String get sync_asset_download_action => 'İndir';
  @override
  String get sync_asset_download_hint =>
      'Uzak cihazda olup bu cihazda olmayan verileri getirir - yerel olarak sildikleriniz dahil.';
  @override
  String get sync_asset_legacy_notice_body =>
      'Bu cihazda sözlükler ve yerel ses veritabanları için otomatik senkronizasyon açıktı. O anahtar kaldırıldı - aktarmak istediğinizde aşağıdaki Yükle / İndir eylemlerini kullanın. Hiçbir şey silinmedi, ancak yeni sözlükler artık otomatik olarak yedeklenmiyor.';
  @override
  String get sync_asset_legacy_notice_dismiss => 'Anladım';
  @override
  String get sync_asset_legacy_notice_title =>
      'Sözlük ve ses senkronizasyonu artık manuel';
  @override
  String get sync_asset_local_audio => 'Local audio databases';
  @override
  String get sync_asset_local_audio_download =>
      'Yerel ses veritabanlarını indir';
  @override
  String get sync_asset_local_audio_upload => 'Yerel ses veritabanlarını yükle';
  @override
  String get sync_asset_transfer_hint =>
      'Upload what only this device has, or download what only the remote has';
  @override
  String get sync_asset_transfer_menu => 'Transfer';
  @override
  String get sync_asset_upload_action => 'Yükle';
  @override
  String get sync_asset_upload_hint =>
      'Bu cihazda olup uzak cihazda olmayan verileri gönderir. Paketler büyük olabilir.';
  @override
  String get sync_audiobook => 'Sesli Kitap Konumunu Senkronize Et';
  @override
  String get sync_audiobook_files => 'Sesli kitap dosyalarını eşitle';
  @override
  String get sync_audiobook_files_warning =>
      'Ses ve altyazılar büyük olabilir.';
  @override
  String sync_auth_error({required Object message}) =>
      'Kimlik doğrulama başarısız: ${message}';
  @override
  String get sync_auto_sync => 'Otomatik Eşitleme';
  @override
  String get sync_backend => 'Depolama arka ucu';
  @override
  String get sync_backend_dropbox => 'Dropbox';
  @override
  String get sync_backend_ftp => 'FTP';
  @override
  String get sync_backend_fushi_server => 'Fushi Interconnect';
  @override
  String get sync_backend_google_drive => 'Google Drive';
  @override
  String get sync_backend_onedrive => 'OneDrive';
  @override
  String get sync_backend_sftp => 'SFTP';
  @override
  String get sync_backend_webdav => 'WebDAV';
  @override
  String get sync_checking_account => 'Hesap kontrol ediliyor…';
  @override
  String get sync_client_connected => 'Bağlandı';
  @override
  String get sync_client_token => 'Eş erişim anahtarı';
  @override
  String get sync_client_token_manual => 'Anahtarı elle girin';
  @override
  String get sync_compare => 'Verileri Karşılaştır';
  @override
  String get sync_compare_all_books => 'Tüm Kitaplar';
  @override
  String get sync_compare_all_local => 'Tümü → Yerel';
  @override
  String get sync_compare_all_remote => 'Tümü → Uzak';
  @override
  String get sync_compare_all_skip => 'Tümü → Atla';
  @override
  String sync_compare_applied({required Object count}) =>
      '${count} değişiklik uygulandı';
  @override
  String sync_compare_apply({required Object count}) =>
      'Şimdi eşitle (${count})';
  @override
  String get sync_compare_close => 'Kapat';
  @override
  String get sync_compare_conflicts => 'Çakışmalar';
  @override
  String get sync_compare_days => 'gün';
  @override
  String get sync_compare_delete_audiobook => 'Sesli kitabı uzakta sil';
  @override
  String get sync_compare_delete_book => 'Kitabı uzakta sil';
  @override
  String sync_compare_delete_confirm({required Object name}) =>
      '"${name}" uzaktan silinsin mi? Yerel veriler korunur. Bu geri alınamaz.';
  @override
  String get sync_compare_delete_dict => 'Sözlüğü uzakta sil';
  @override
  String get sync_compare_deleted => 'Uzaktan silindi';
  @override
  String get sync_compare_dictionaries => 'Sözlükler';
  @override
  String get sync_compare_download => 'İndir';
  @override
  String get sync_compare_empty => 'Kitap bulunamadı';
  @override
  String get sync_compare_local => 'Yerel';
  @override
  String get sync_compare_no_content =>
      'Yalnızca bulut verisi — indirilecek kitap yok';
  @override
  String get sync_compare_no_data => 'Veri yok';
  @override
  String get sync_compare_only_conflicts => 'Only conflicts';
  @override
  String get sync_compare_remote => 'Uzak';
  @override
  String get sync_compare_select_all => 'Tümünü Seç';
  @override
  String get sync_compare_skip => 'Atla';
  @override
  String get sync_compare_title => 'Yerel ile Uzak';
  @override
  String get sync_compare_unavailable => 'Set up sync first';
  @override
  String get sync_compare_use_local => 'Yerel';
  @override
  String get sync_compare_use_remote => 'Uzak';
  @override
  String get sync_connection_failed => 'Bağlantı başarısız';
  @override
  String get sync_connection_success => 'Bağlantı başarılı';
  @override
  String get sync_content => 'Kitap dosyalarını eşitle';
  @override
  String get sync_content_warning =>
      'Büyük dosyalar depolama alanı ve veri kullanır';
  @override
  String get sync_desktop_oauth_browser_open_failed =>
      'Tarayıcı açılamadı. Bağlantıyı kopyalayıp bir tarayıcıda kendiniz açın.';
  @override
  String get sync_desktop_oauth_browser_reopen => 'Tarayıcıyı yeniden aç';
  @override
  String get sync_desktop_oauth_link_copy => 'Oturum açma bağlantısını kopyala';
  @override
  String get sync_desktop_oauth_link_copy_failed =>
      'Bağlantı kopyalanamadı. Bağlantı metnini seçip elle kopyalayın.';
  @override
  String get sync_desktop_oauth_waiting_body =>
      'Oturum açma sayfası varsayılan tarayıcınızda açıldı. Hiçbir şey açılmadıysa veya sayfa hata gösteriyorsa bağlantıyı kopyalayıp başka bir tarayıcıda ya da gizli pencerede açın.';
  @override
  String get sync_desktop_oauth_waiting_title =>
      'Tarayıcıda oturum açılması bekleniyor';
  @override
  String get sync_err_auth_expired =>
      'Oturum süresi doldu — lütfen tekrar oturum açın.';
  @override
  String get sync_err_browser_timeout =>
      'Tarayıcı yetkilendirmeyi döndürmedi. Tekrar deneyin ve proxy\'nizin 127.0.0.1 adresine izin verdiğinden emin olun.';
  @override
  String get sync_err_forbidden =>
      'Sunucu bu isteği reddetti. Oturumunuz geçerli - sunucu ayarlarını kontrol edin.';
  @override
  String sync_err_forbidden_detail({required Object reason}) =>
      'Sunucu bu isteği reddetti: ${reason} (oturumunuz geçerli)';
  @override
  String get sync_err_invalid_client =>
      'Bu yapı için istemci kimlik bilgileri geçersiz — lütfen uygulamayı güncelleyin.';
  @override
  String get sync_err_network =>
      'Sunucuya ulaşılamıyor — ağ veya proxy ayarlarınızı kontrol edin.';
  @override
  String get sync_err_not_configured =>
      'Bu yapıda Google eşitleme kimlik bilgileri yapılandırılmamış.';
  @override
  String get sync_err_peer_unreachable =>
      'Eşleştirilmiş cihaza ulaşılamıyor — çevrimdışı olabilir veya Fushi çalışmıyor olabilir.';
  @override
  String get sync_err_quota => 'Bulut depolama dolu (kota doldu).';
  @override
  String get sync_err_scope_upgrade =>
      'Senkronizasyon izinleri değişti — senkronizasyona devam etmek için Google\'a tekrar giriş yapın.';
  @override
  String get sync_err_sign_in_cancelled => 'Oturum açma iptal edildi.';
  @override
  String get sync_err_timeout =>
      'Bağlantı zaman aşımına uğradı — sunucu zamanında yanıt vermedi.';
  @override
  String sync_error({required Object message}) =>
      'Senkronizasyon hatası: ${message}';
  @override
  String get sync_exit_warning =>
      'Eşitleme hâlâ sürüyor. Şimdi çıkmak veri kaybına yol açabilir.';
  @override
  String get sync_exit_warning_title => 'Eşitleme Sürüyor';
  @override
  String get sync_host => 'Sunucu';
  @override
  String get sync_interconnect_service_config_toggle =>
      'Hizmet yapılandırmasını sunucudan senkronize et';
  @override
  String get sync_interconnect_service_config_toggle_desc =>
      'Şifreli Karşılıklı Bağlantı kanalı üzerinden eşleştirilmiş sunucudan harici hizmet ayarlarını ve API anahtarlarını (Jimaku, TMDB, Torznab, OpenSubtitles, izleme) alın. TLS gerektirir.';
  @override
  String get sync_lan_discovery => 'LAN cihazları';
  @override
  String get sync_lan_no_devices => 'Cihaz bulunamadı';
  @override
  String get sync_lan_scan_failed =>
      'Tarama başarısız — ağ izinlerini veya güvenlik duvarını kontrol edin.';
  @override
  String get sync_last_auto_disabled =>
      'Son senkronizasyon: atlandı — otomatik senkronizasyon kapalı';
  @override
  String sync_last_completed({required Object count}) =>
      'Son senkronizasyon: tamamlandı (${count} kanal)';
  @override
  String get sync_last_cooled_down =>
      'Son senkronizasyon: atlandı — yakın zamanda senkronize edildi';
  @override
  String get sync_last_failed => 'Son senkronizasyon: başarısız';
  @override
  String get sync_last_no_channels =>
      'Son senkronizasyon: senkronize edilmedi — bağlı kanal yok';
  @override
  String get sync_last_nothing =>
      'Son senkronizasyon: senkronize edilecek bir şey yok';
  @override
  String get sync_not_signed_in => 'Oturum açılmadı';
  @override
  String get sync_now => 'Şimdi eşitle';
  @override
  String sync_now_audio_in({required Object count}) => '↓${count} sesli kitap';
  @override
  String sync_now_audio_out({required Object count}) => '↑${count} sesli kitap';
  @override
  String sync_now_books_in({required Object count}) => '↓${count} kitap';
  @override
  String get sync_now_busy => 'Bir eşitleme zaten çalışıyor';
  @override
  String sync_now_dicts_in({required Object count}) => '↓${count} sözlük';
  @override
  String sync_now_dicts_out({required Object count}) => '↑${count} sözlük';
  @override
  String sync_now_done({required Object detail}) => 'Eşitlendi · ${detail}';
  @override
  String sync_now_failed_suffix({required Object count}) =>
      ' · ${count} başarısız';
  @override
  String get sync_now_hint => 'Bulutla tam iki yönlü eşitlemeyi şimdi çalıştır';
  @override
  String sync_now_local_audio_in({required Object count}) =>
      '↓${count} ses kaynağı';
  @override
  String sync_now_local_audio_out({required Object count}) =>
      '↑${count} ses kaynağı';
  @override
  String get sync_now_no_changes => 'değişiklik yok';
  @override
  String get sync_pair_allow => 'İzin ver';
  @override
  String sync_pair_confirm_identity_body({required Object device}) =>
      '${device} ile eşleşiyorsunuz. Devam etmeden önce bunun beklediğiniz cihaz olduğunu onaylayın.';
  @override
  String get sync_pair_confirm_identity_title => 'Cihazı onayla';
  @override
  String get sync_pair_continue => 'Devam';
  @override
  String get sync_pair_denied => 'Diğer cihaz eşleştirmeyi reddetti';
  @override
  String get sync_pair_deny => 'Reddet';
  @override
  String get sync_pair_enter_pin_body =>
      'Diğer cihazda gösterilen 6 haneli PIN\'i girin.';
  @override
  String get sync_pair_enter_pin_title => 'PIN girin';
  @override
  String get sync_pair_expired =>
      'Eşleştirme zaman aşımına uğradı. Bu cihazdan eşleştirmeyi yeniden başlatın.';
  @override
  String get sync_pair_failed => 'Eşleştirme başarısız';
  @override
  String get sync_pair_fingerprint_changed =>
      'Sertifika değişti — güvenlik nedeniyle eşleştirme iptal edildi (olası araya girme).';
  @override
  String get sync_pair_fingerprint_changed_body =>
      'Bu adres daha önce farklı bir sertifikaya sabitlenmişti. Yalnızca eşin yeniden yüklediğini veya sıfırladığını biliyorsanız devam edin — aksi halde bağlantıyı biri dinliyor olabilir.';
  @override
  String get sync_pair_fingerprint_changed_title => 'Sertifika değişti';
  @override
  String get sync_pair_fingerprint_label => 'Sertifika parmak izi';
  @override
  String get sync_pair_fingerprint_new_label => 'Şu an görülen';
  @override
  String get sync_pair_fingerprint_retrust => 'Temizle ve yeniden güven';
  @override
  String get sync_pair_fingerprint_stored_label => 'Daha önce sabitlendi';
  @override
  String get sync_pair_invalid_url => 'Geçersiz adres biçimi';
  @override
  String get sync_pair_not_fushi =>
      'Bu adreste Fushi cihazı bulunamadı. Adres kaydedildi.';
  @override
  String get sync_pair_not_fushi_discovered =>
      'Bu adreste Fushi cihazı bulunamadı.';
  @override
  String get sync_pair_pairing => 'Eşleştiriliyor…';
  @override
  String get sync_pair_peer_not_https =>
      'Eş, bu portta HTTPS kullanmıyor. Bir http:// adresi kullanın.';
  @override
  String get sync_pair_peer_requires_https =>
      'Bu cihaz yalnızca HTTPS kabul eder. Bir https:// adresi kullanın.';
  @override
  String get sync_pair_pin_label => 'Bu PIN\'i diğer cihazda girin';
  @override
  String get sync_pair_pin_waiting =>
      'Diğer cihazın bu PIN\'i girmesi bekleniyor…';
  @override
  String get sync_pair_pin_wrong => 'Yanlış PIN — tekrar deneyin';
  @override
  String get sync_pair_rate_limited =>
      'Çok fazla deneme. Birkaç dakika bekleyip tekrar deneyin.';
  @override
  String get sync_pair_repair => 'Yeniden eşleştir';
  @override
  String get sync_pair_request_body =>
      'Bir cihaz eşleştirme talep ediyor. Bu cihazla eşitlemesine izin verilsin mi?';
  @override
  String get sync_pair_request_title => 'Eşleştirme isteği';
  @override
  String get sync_pair_success => 'Eşleştirildi — belirteç dolduruldu';
  @override
  String get sync_pair_timeout => 'Eş zamanında yanıt vermedi.';
  @override
  String get sync_pair_tls_failed =>
      'Sertifika kontrolü başarısız. Eşin sertifikası sabitlenen sertifikayla eşleşmiyor.';
  @override
  String get sync_pair_unavailable =>
      'Diğer cihaz hazır değil veya eski bir sürümde. Güncelleyin ve eşitlemeyi etkinleştirin, ardından tekrar deneyin.';
  @override
  String get sync_pair_unknown_device => 'Bilinmeyen cihaz';
  @override
  String get sync_pair_upgrade_required =>
      'Diğer cihaz, bu ağdan güvenli eşleştirme yapamayan eski bir sürüm çalıştırıyor. Güncelleyin, ardından tekrar eşleştirin.';
  @override
  String get sync_paired_peer_remove => 'Kaldır';
  @override
  String get sync_paired_peer_removed => 'Eşleştirilmiş cihaz kaldırıldı';
  @override
  String get sync_paired_peer_unknown => 'Bilinmeyen cihaz';
  @override
  String get sync_paired_peers_empty => 'Henüz eşleştirilmiş cihaz yok';
  @override
  String get sync_paired_peers_title => 'Eşleştirilmiş cihazlar';
  @override
  String get sync_password => 'Parola';
  @override
  String sync_peer_book_delete_confirm({required Object name}) =>
      '"${name}" eş cihazdan silinsin mi? Oradaki dosyaları ve okuma ilerlemesi kalıcı olarak kaldırılır ve bu cihazda kopyası yok. Bu işlem geri alınamaz.';
  @override
  String sync_peer_video_delete_confirm({required Object name}) =>
      '"${name}" eş cihazın kitaplığından kaldırılsın mı? Eş cihazın kendi içe aktardığı video dosyası korunur. Bu işlem geri alınamaz.';
  @override
  String get sync_port => 'Bağlantı noktası';
  @override
  String get sync_private_key => 'Özel anahtar';
  @override
  String get sync_progress_asset_transfer => 'Aktarım hazırlanıyor';
  @override
  String get sync_progress_audiobooks => 'Sesli kitaplar eşitleniyor';
  @override
  String get sync_progress_book => 'Kitap senkronize ediliyor';
  @override
  String sync_progress_book_titled({required Object title}) =>
      '${title} senkronize ediliyor';
  @override
  String get sync_progress_books => 'Kitaplar içe aktarılıyor';
  @override
  String get sync_progress_collections => 'Koleksiyonlar senkronize ediliyor';
  @override
  String get sync_progress_dictionaries => 'Sözlükler eşitleniyor';
  @override
  String get sync_progress_local_audio => 'Yerel ses eşitleniyor';
  @override
  String get sync_progress_preparing => 'Senkronizasyon hazırlanıyor';
  @override
  String get sync_progress_reading => 'Okuma verileri eşitleniyor';
  @override
  String get sync_progress_videos => 'Videolar senkronize ediliyor';
  @override
  String get sync_role_locked_by_client =>
      'Zaten başka bir cihaza bağlı. Sunucu olarak barındırmadan önce bağlantıyı kaldırın.';
  @override
  String get sync_role_locked_by_server =>
      'Bu cihaz sunucu olarak barındırıyor. Diğer cihazlara bağlanmadan önce sunucuyu kapatın.';
  @override
  String get sync_section_actions => 'Eşitleme eylemleri';
  @override
  String get sync_section_assets => 'Dictionaries & local audio transfer';
  @override
  String get sync_section_backup => 'Yerel yedek';
  @override
  String get sync_section_content => 'Neler eşitlenecek';
  @override
  String get sync_section_host_server => 'Bu cihaz eşitleme sunucusu olarak';
  @override
  String get sync_section_host_server_footer =>
      'Diğer cihazların bu cihazdan eşitlemesine izin verin. Yukarıdaki eşitleme arka ucundan bağımsızdır.';
  @override
  String get sync_section_method => 'Eşitleme yöntemi';
  @override
  String get sync_section_when => 'When to sync';
  @override
  String get sync_server_copy_token => 'Belirteci kopyala';
  @override
  String get sync_server_enable => 'Eşitleme sunucusunu etkinleştir';
  @override
  String get sync_server_mode_active => 'Bu cihaz bir eşitleme sunucusu';
  @override
  String get sync_server_mode_clients_drive =>
      'Eşitlemeyi bağlı istemciler başlatır — burada elle eşitleme gerekmez.';
  @override
  String get sync_server_port => 'Sunucu bağlantı noktası';
  @override
  String sync_server_port_in_use({required Object port}) =>
      '${port} bağlantı noktası zaten kullanımda — farklı bir bağlantı noktası seçin.';
  @override
  String get sync_server_regenerate_token => 'Belirteci yeniden oluştur';
  @override
  String get sync_server_running => 'Sunucu çalışıyor';
  @override
  String get sync_server_settings => 'Server settings';
  @override
  String get sync_server_settings_hint =>
      'Credentials and connection test for the selected sync method';
  @override
  String get sync_server_stopped => 'Sunucu durduruldu';
  @override
  String get sync_server_tls_enable => 'Interconnect şifrelemesi (HTTPS/TLS)';
  @override
  String get sync_server_tls_repair_hint =>
      'Bunu değiştirmek eşleştirilmiş cihazların yeniden eşleştirilmesini gerektirir';
  @override
  String get sync_server_token => 'Erişim belirteci';
  @override
  String get sync_show_remote_entries => 'Uzak girişleri göster';
  @override
  String get sync_show_remote_entries_warning =>
      'Eşleştirilmiş cihazlarda veya bulutta bulunan kitap ve videoları indirebileceğiniz veya yayınlayabileceğiniz yer tutucu kartlar olarak gösterin.';
  @override
  String get sync_sign_in => 'Oturum Aç';
  @override
  String get sync_sign_out => 'Oturumu Kapat';
  @override
  String get sync_signed_in => 'Oturum açıldı';
  @override
  String get sync_statistics => 'İstatistikleri Senkronize Et';
  @override
  String get sync_summary => 'Bulut, LAN P2P ve yerel yedek';
  @override
  String get sync_test_connection => 'Bağlantıyı test et';
  @override
  String get sync_use_tls => 'TLS kullan';
  @override
  String get sync_username => 'Kullanıcı adı';
  @override
  String get sync_video_files => 'Video dosyalarını yükle';
  @override
  String get sync_video_files_warning => 'Video dosyaları çok büyük olabilir.';
  @override
  String get sync_webdav_missing_fields => 'Eksik alanlar';
  @override
  String sync_webdav_test_failed({required Object message}) =>
      'Bağlantı başarısız: ${message}';
  @override
  String get sync_webdav_url => 'Sunucu URL\'si';
  @override
  String get tag_add_failed => 'Etiket eklenemedi. Lütfen tekrar deneyin.';
  @override
  String tag_added_to_book({required Object name}) =>
      '"${name}" etiketi kitaba eklendi.';
  @override
  String tag_added_to_collection({required Object name}) =>
      '${name} etiketi koleksiyona eklendi.';
  @override
  String tag_added_to_video({required Object name}) =>
      '${name} etiketi videoya eklendi.';
  @override
  String tag_already_on_book({required Object name}) =>
      '"${name}" etiketi zaten bu kitapta mevcut.';
  @override
  String tag_already_on_collection({required Object name}) =>
      '${name} etiketi bu koleksiyonda zaten var.';
  @override
  String tag_book_count({required Object count}) => '${count} kitap';
  @override
  String get tag_clear_filter => 'Filtreyi Temizle';
  @override
  String get tag_color => 'Renk';
  @override
  String tag_delete_confirm({required Object name}) =>
      '"${name}" etiketi silinsin mi?';
  @override
  String get tag_filter_title => 'Etikete Göre Filtrele';
  @override
  String get tag_label => 'Etiketler';
  @override
  String get tag_manage => 'Etiketleri Yönet';
  @override
  String get tag_manage_title => 'Etiketleri Yönet';
  @override
  String get tag_name_duplicate => 'Bu isimde bir etiket zaten mevcut.';
  @override
  String get tag_name_empty => 'Etiket adı boş olamaz.';
  @override
  String get tag_name_hint => 'Etiket adı';
  @override
  String get tag_new => 'Yeni Etiket';
  @override
  String get tag_no_books_for_filter => 'Seçili etiketlere uyan kitap yok.';
  @override
  String get tag_no_tags_hint =>
      'Henüz etiket yok. Başlamak için bir tane oluşturun.';
  @override
  String get tag_reorder_failed =>
      'Yeni etiket sırası kaydedilemedi. Lütfen tekrar deneyin.';
  @override
  String get tag_seed_stars => 'Yıldız derecelendirme etiketleri ekle';
  @override
  String get tag_seed_stars_added => 'Yıldız derecelendirme etiketleri eklendi';
  @override
  String get tag_seed_stars_exists =>
      'Yıldız derecelendirme etiketleri zaten mevcut';
  @override
  String get tap_empty_hide_chrome => 'Yüzen kontrol çubuğu';
  @override
  String get text_segmentation => 'Metin bölümleme';
  @override
  String get texthooker => 'Metin yakalayıcı';
  @override
  String get texthooker_enabled => 'Texthooker (metin al)';
  @override
  String get texthooker_enabled_hint =>
      'Textractor/mpv/agent\'a bağlanın ve gelen metni arayın';
  @override
  String get theme_accent_auto_tone => 'Adjust tone for light and dark mode';
  @override
  String get theme_accent_auto_tone_desc =>
      'Off: the exact color is used. On: a lighter or darker tone is generated for each mode, so what you see differs from what you picked.';
  @override
  String get theme_accent_follow_system => 'Follow the system accent color';
  @override
  String get theme_accent_follow_system_desc =>
      'Use the wallpaper color on Android (Material You) or the OS accent color on desktop instead of a picked color.';
  @override
  String get theme_accent_follow_system_unavailable =>
      'The system does not expose an accent color on this device.';
  @override
  String get theme_accent_low_contrast_dark =>
      'Hard to see on the dark-mode background. Pick a lighter color.';
  @override
  String get theme_accent_low_contrast_light =>
      'Hard to see on the light-mode background. Pick a darker color.';
  @override
  String get theme_black => 'Saf siyah';
  @override
  String get theme_code_copied => 'Tema kodu panoya kopyalandı';
  @override
  String get theme_dark => 'Derin koyu';
  @override
  String get theme_ecru => 'Ekru';
  @override
  String get theme_eyecare => 'Eye Care';
  @override
  String get theme_gray => 'Koyu gri';
  @override
  String get theme_light => 'Beyaz';
  @override
  String get theme_neutral_derived => 'Neutral derived colors';
  @override
  String get theme_neutral_derived_desc =>
      'Tags, selected items, menus and surfaces stay gray instead of taking on the accent\'s hue; only the accent color itself stands out (like the Windows light theme). White, gray or black accents do this automatically.';
  @override
  String get theme_preview_button => 'Button';
  @override
  String get theme_preview_card => 'Card';
  @override
  String get theme_preview_dark => 'Dark';
  @override
  String get theme_preview_hint =>
      'Pick a color to see where it is used outlined in the preview.';
  @override
  String get theme_preview_light => 'Light';
  @override
  String get theme_preview_tag => 'Tag';
  @override
  String get theme_role_accent => 'Accent color';
  @override
  String get theme_role_accent_desc =>
      'Used exactly as picked for buttons, switches, icons and progress bars. Every other color is derived from it.';
  @override
  String get theme_role_actual_color => 'Shown as';
  @override
  String get theme_role_audio_highlight => 'Current sentence';
  @override
  String get theme_role_audio_highlight_desc =>
      'Follows audiobook playback. Applies to every theme, not just this one.';
  @override
  String get theme_role_container => 'Control fill';
  @override
  String get theme_role_container_desc =>
      'Switch tracks, floating buttons and the play bar';
  @override
  String get theme_role_follows_theme => 'Follows theme';
  @override
  String get theme_role_link => 'Links';
  @override
  String get theme_role_link_desc =>
      'Hyperlinks inside books and the selection handles';
  @override
  String get theme_role_reader_background => 'Page background';
  @override
  String get theme_role_reader_background_desc =>
      'Reader page, toolbar and dictionary popup background';
  @override
  String get theme_role_reader_text => 'Body text';
  @override
  String get theme_role_reader_text_desc =>
      'Reader text, toolbar icons and dictionary popup text';
  @override
  String get theme_role_reset => 'Follow theme again';
  @override
  String get theme_role_secondary => 'Secondary accent';
  @override
  String get theme_role_secondary_desc =>
      'Tags, badges and selected list items';
  @override
  String get theme_role_selection => 'Lookup highlight';
  @override
  String get theme_role_selection_desc =>
      'Background of the word or sentence being looked up';
  @override
  String get theme_role_surface => 'Interface background';
  @override
  String get theme_role_surface_desc =>
      'Base color of pages, cards and menus; the other layers get a faint tint of gray from it.';
  @override
  String get theme_role_tertiary => 'Decoration color';
  @override
  String get theme_role_tertiary_desc => 'Collections and reading statistics';
  @override
  String get theme_section_accent => 'Interface colors';
  @override
  String get theme_section_audiobook => 'Audiobook';
  @override
  String get theme_section_fine_tune => 'Fine-tune derived colors';
  @override
  String get theme_section_reader => 'Reader';
  @override
  String get theme_water => 'Su mavisi';
  @override
  String toc_section({required Object n}) => 'İçindekiler (${n})';
  @override
  String get top_progress_pos_center => 'Orta';
  @override
  String get top_progress_pos_left => 'Sol üst';
  @override
  String get top_progress_pos_right => 'Sağ üst';
  @override
  String get top_progress_position => 'İlerleme konumu';
  @override
  String get torrent_upload_intro_body =>
      'Yükleme (paylaşma) varsayılan olarak kapalıdır. İndirilen içeriği ağa geri paylaşmak için açın — bu yükleme bant genişliğinizi kullanır. Bunu istediğiniz zaman Ayarlar\'dan değiştirebilirsiniz.';
  @override
  String get torrent_upload_intro_confirm => 'Kaydet';
  @override
  String get torrent_upload_intro_enable => 'Yükleme / paylaşmayı etkinleştir';
  @override
  String get torrent_upload_intro_keep_off => 'Kapalı tut';
  @override
  String get torrent_upload_intro_title => 'Yükleme / paylaşma';
  @override
  String get undo => 'Geri al';
  @override
  String get unit_milliseconds => 'ms';
  @override
  String get unit_pixels => 'px';
  @override
  String untitled_book({required Object id}) => 'Kitap ${id}';
  @override
  String get untitled_chapter => '(Başlıksız)';
  @override
  String get update_already_latest => 'En son sürümü kullanıyorsunuz';
  @override
  String get update_app_store_open => 'App Store\'u aç';
  @override
  String get update_auto_install => 'Güncellemeleri otomatik yükle';
  @override
  String get update_available => 'Güncelleme mevcut';
  @override
  String update_cached_newer({required Object version}) =>
      '${version} güncellemesi mevcut (doğrulanıyor…)';
  @override
  String update_cached_up_to_date({required Object version}) =>
      'Bilinen en son sürüm ${version} (kontrol ediliyor…)';
  @override
  String get update_cancel => 'İptal';
  @override
  String get update_cancelled => 'İndirme iptal edildi';
  @override
  String get update_cancelling => 'İptal ediliyor…';
  @override
  String get update_channel_beta => 'Beta';
  @override
  String get update_channel_debug => 'Hata Ayıklama';
  @override
  String get update_channel_stable => 'Kararlı';
  @override
  String get update_check_failed => 'Güncelleme kontrolü başarısız';
  @override
  String get update_checking_now => 'Güncellemeler kontrol ediliyor…';
  @override
  String get update_connecting => 'Bağlanılıyor…';
  @override
  String get update_debug_channel => 'Hata Ayıklama Güncelleme Kanalı';
  @override
  String get update_debug_channel_warning =>
      'Hata ayıklama kanalı sürümleri kararsız olabilir. Riski size aittir.';
  @override
  String get update_download => 'İndir';
  @override
  String get update_download_failed => 'İndirme başarısız';
  @override
  String get update_download_restarted_from_zero =>
      'sıfırdan yeniden başlatıldı';
  @override
  String update_download_resume_status({required Object status}) =>
      'Sürdürme: ${status}';
  @override
  String get update_download_resumed => 'sürdürüldü';
  @override
  String update_download_size({
    required Object received,
    required Object total,
  }) => 'İndirilen: ${received} / ${total}';
  @override
  String update_download_source({required Object source}) =>
      'Kaynak: ${source}';
  @override
  String get update_download_source_auto => 'Otomatik (önerilir)';
  @override
  String get update_download_source_cloudflare => 'Cloudflare aynası';
  @override
  String get update_download_source_github => 'GitHub doğrudan';
  @override
  String get update_download_source_preference =>
      'Tercih edilen indirme kaynağı';
  @override
  String get update_download_source_preference_hint =>
      'Seçilen kaynak önce denenir; kullanılamayan kaynaklar yine de otomatik olarak yedeğe döner.';
  @override
  String update_download_source_proxy({required Object host}) =>
      'Proxy: ${host}';
  @override
  String update_download_source_unavailable({required Object source}) =>
      '${source} bu dosya için kullanılamıyor; otomatik sıraya geri dönüldü';
  @override
  String update_download_speed({required Object speed}) => 'Hız: ${speed}';
  @override
  String get update_downloading => 'Güncelleme indiriliyor…';
  @override
  String get update_hide => 'Gizle';
  @override
  String update_install_current_executable({required Object path}) =>
      'Çalışan yürütülebilir dosya: ${path}';
  @override
  String update_install_deletefile_failure({
    required Object path,
    required Object code,
  }) => 'Yükleyici ${path} dosyasını değiştiremedi (kod ${code})';
  @override
  String update_install_detected_location({
    required Object source,
    required Object path,
  }) => 'Algılanan yükleme konumu (${source}): ${path}';
  @override
  String update_install_failure_summary({required Object summary}) =>
      'Neden: ${summary}';
  @override
  String update_install_gal_hook_holder({
    required Object pid,
    required Object path,
  }) =>
      'Galgame yakalama bileşeni kullanımda: PID ${pid} - ${path} (bu oynadığınız oyun veya yakalama sunucusu). Oyunu kapatın, ardından tekrar güncelleyin.';
  @override
  String get update_install_incomplete_message =>
      'Yükleyici başladı, ancak Fushi hâlâ önceki sürümde. Aşağıdaki yükleyici günlüğünü kontrol edin.';
  @override
  String get update_install_incomplete_title => 'Güncelleme tamamlanmadı';
  @override
  String update_install_installer_pid({required Object pid}) =>
      'Yükleyici PID: ${pid}';
  @override
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi, ${version} sürümünün yükleyicisini başlatamadı. Aşağıdaki günlük yolunu kontrol edin.';
  @override
  String get update_install_launch_failed_title =>
      'Güncelleme yükleyicisi başlamadı';
  @override
  String update_install_launcher_pid({required Object pid}) =>
      'Güncelleme başlatıcısı PID: ${pid}';
  @override
  String update_install_libmpv_holder({
    required Object pid,
    required Object path,
  }) => 'libmpv tutan süreç: PID ${pid} - ${path}';
  @override
  String get update_install_log_not_observed =>
      'Başlatma sonrası kontrol sırasında yükleyici günlüğü oluşturulmadı.';
  @override
  String get update_install_log_observed =>
      'Başlatma sonrası kontrol sırasında yükleyici günlüğü oluşturuldu.';
  @override
  String update_install_log_path({required Object path}) =>
      'Yükleyici günlüğü: ${path}';
  @override
  String get update_install_manual_close_retry =>
      'Listelenen PID/yoldan Fushi\'yi kapatın, ardından güncellemeyi tekrar deneyin ya da yükleyiciyi yeniden çalıştırın.';
  @override
  String get update_install_parent_exit_not_observed =>
      'Güncelleme başlatıcısı, yükleyici başlatılmadan önce Fushi\'nin kapandığını gözlemleyemedi.';
  @override
  String get update_install_parent_exit_observed =>
      'Yükleyici başlatılmadan önce Fushi\'nin kapandığı doğrulandı.';
  @override
  String update_install_path_mismatch({required Object warning}) =>
      'Yükleme dizini uyuşmazlığı: ${warning}';
  @override
  String get update_install_permission_cancel => 'İptal';
  @override
  String get update_install_permission_message =>
      'Lütfen sistem ayarlarında Fushi\'nin uygulama yüklemesine izin verin, ardından tekrar deneyin.';
  @override
  String get update_install_permission_retry => 'Yüklemeyi tekrar dene';
  @override
  String get update_install_permission_title => 'Güncelleme yüklemeye izin ver';
  @override
  String get update_install_restart_windows_hint =>
      'Listelenen süreçler kapatıldığı hâlde libmpv-2.dll hâlâ kilitliyse Windows\'u yeniden başlatıp tekrar yükleyin.';
  @override
  String update_install_running_process({
    required Object pid,
    required Object path,
  }) => 'Çalışan Fushi süreci: PID ${pid} - ${path}';
  @override
  String update_install_success_message({required Object version}) =>
      'Fushi ${version} sürümüne güncellendi.';
  @override
  String get update_install_success_title => 'Güncelleme yüklendi';
  @override
  String update_install_target_dir({required Object path}) =>
      'Yükleme hedefi: ${path}';
  @override
  String get update_installing => 'Yükleniyor…';
  @override
  String get update_mac_install_incomplete_message =>
      'Güncelleme uygulanamadı, Fushi hâlâ önceki sürümde. Güncellemeyi tekrar deneyebilir veya en son sürümü elle indirebilirsiniz.';
  @override
  String update_message({required Object version}) =>
      'Sürüm ${version} mevcut.';
  @override
  String update_network_failure({
    required Object host,
    required Object reason,
  }) => '${host} adresine ulaşılamadı: ${reason}';
  @override
  String get update_never_remind => 'Güncellemeleri hatırlatma';
  @override
  String get update_release_page_open => 'Sürüm sayfası';
  @override
  String get update_skip => 'Atla';
  @override
  String get update_testflight_open => 'TestFlight\'ı aç';
  @override
  String get url => 'URL';
  @override
  String get video_air_season_autumn => 'Sonbahar';
  @override
  String get video_air_season_spring => 'İlkbahar';
  @override
  String get video_air_season_summer => 'Yaz';
  @override
  String get video_air_season_winter => 'Kış';
  @override
  String get video_ajatt_enabled_hint =>
      'Kapalıysa altyazı aranırken AJATT arşivi atlanır.';
  @override
  String get video_ajatt_settings_hint =>
      'Ücretsiz Japonca altyazı arşivi (kitsunekko yansıması). Hesap gerekmez; altyazı dosyaları GitHub\'dan indirilir.';
  @override
  String get video_all_videos_grid_view => 'Izgara görünümü';
  @override
  String get video_all_videos_list_view => 'Liste görünümü';
  @override
  String get video_anidb_hash_enabled => 'Dosyaları AniDB ED2K ile tanımla';
  @override
  String get video_anidb_hash_hint =>
      'AniDB hesabı ve kayıtlı bir istemci gerektirir. Yalnızca dosya boyutunu ve karma değerini gönderir. AniDB UDP oturumu şifrelenmeden açılır; yalnızca güvenilir bir ağda etkinleştirin.';
  @override
  String get video_anidb_password => 'AniDB parolası';
  @override
  String get video_anidb_username => 'AniDB kullanıcı adı';
  @override
  String get video_anilist_error_api_disabled =>
      'AniList has temporarily disabled its public API because of server-side stability problems. This is not a problem with your network or proxy - the request reached AniList and was refused. Please try again later.';
  @override
  String get video_anilist_error_rate_limited =>
      'AniList is rate-limiting this app right now. Wait a moment and retry.';
  @override
  String get video_anilist_error_unreachable =>
      'Cannot reach AniList (graphql.anilist.co). Check your network connection, or configure a proxy in download settings.';
  @override
  String get video_audio_track => 'Ses izi';
  @override
  String get video_audio_track_empty => 'Değiştirilebilir ses parçası yok';
  @override
  String video_audio_track_switched({required Object label}) =>
      'Ses izi: ${label}';
  @override
  String get video_auto_play_next_cancel => 'İptal';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      'Sonraki bölüm ${seconds} sn içinde';
  @override
  String get video_black_flash_notice_action => 'Önerileri gör';
  @override
  String get video_black_flash_notice_dont_show_again => 'Bir daha gösterme';
  @override
  String get video_bottom_next_cue => 'Sonraki altyazı (yoksa biraz ileri)';
  @override
  String get video_bottom_play_pause => 'Oynat / Duraklat';
  @override
  String get video_bottom_prev_cue => 'Önceki altyazı (yoksa biraz geri)';
  @override
  String get video_bottom_seek_back => '10 sn geri';
  @override
  String get video_bottom_seek_back_label => '−10sn';
  @override
  String get video_bottom_seek_forward => '10 sn ileri';
  @override
  String get video_bottom_seek_forward_label => '+10sn';
  @override
  String get video_builtin_apibay_hint =>
      'Filmler ve TV dizileri. Herkese açık dizin, hesap gerekmez.';
  @override
  String get video_builtin_knaben_hint =>
      'Filmler ve TV dizileri. Birden fazla herkese açık dizinleyiciyi toplar.';
  @override
  String get video_builtin_nyaa_hint =>
      'Yalnızca anime. Filmler ve TV dizileri aşağıdaki iki herkese açık dizinleyici tarafından kapsanır.';
  @override
  String get video_builtin_sources_hint =>
      'Uygulamayla birlikte gelir: hesap veya API anahtarı gerekmez. Kaynak aramalarından çıkarmak için birini kapatın.';
  @override
  String get video_builtin_sources_title => 'Yerleşik kaynaklar';
  @override
  String video_chapter_n({required Object n}) => 'Bölüm ${n}';
  @override
  String get video_chapters => 'Bölümler';
  @override
  String get video_chapters_empty => 'Bölüm yok';
  @override
  String get video_clip_export => 'Kesit dışa aktarma';
  @override
  String get video_clip_export_cancelled => 'Klip dışa aktarma iptal edildi';
  @override
  String video_clip_export_failed({required Object reason}) =>
      'Kesit dışa aktarma başarısız: ${reason}';
  @override
  String get video_clip_export_ffmpeg_failed => 'ffmpeg başarısız oldu';
  @override
  String get video_clip_export_ffmpeg_unavailable => 'ffmpeg kullanılamıyor';
  @override
  String get video_clip_export_input_missing => 'Kaynak video kullanılamıyor';
  @override
  String get video_clip_export_invalid_range => 'Geçerli kesit aralığı yok';
  @override
  String get video_clip_export_output_missing => 'Çıktı dosyası oluşturulmadı';
  @override
  String get video_clip_export_remote_download_required =>
      'Bir kesit dışa aktarmadan önce uzak videoyu bu cihaza indirin';
  @override
  String get video_clip_export_source_changed =>
      'Video kaynağı değişti; kesit dışa aktarma iptal edildi';
  @override
  String get video_clip_export_start => 'Kesit dışa aktarmayı başlat';
  @override
  String get video_clip_export_stop => 'Durdur ve kesiti dışa aktar';
  @override
  String video_clip_exported({required Object path}) =>
      'Kesit dışa aktarıldı: ${path}';
  @override
  String video_clip_exported_with_subtitles({required Object path}) =>
      'Klip altyazılarla dışa aktarıldı: ${path}';
  @override
  String get video_clip_exporting => 'Kesit dışa aktarılıyor…';
  @override
  String get video_collection_no_local_member =>
      'Bu koleksiyonda yerel video yok';
  @override
  String get video_continue_watching => 'Continue Watching';
  @override
  String get video_control_audio_track => 'Ses izi';
  @override
  String video_control_custom_action({required Object index}) =>
      'Kısayol ${index}';
  @override
  String get video_control_custom_action_none => 'Atanmadı';
  @override
  String get video_control_customize_hint =>
      'Her düğmenin oynatıcıda nerede duracağını seçin ya da dışarı taşıyın.';
  @override
  String get video_control_episode_list => 'Bölüm listesi';
  @override
  String get video_control_favorite_sentence =>
      'Geçerli cümleyi sık kullanılanlara ekle';
  @override
  String get video_control_fullscreen => 'Tam ekran';
  @override
  String get video_control_next_cue => 'Sonraki altyazı';
  @override
  String get video_control_palette_hint =>
      'Eklemek için bir düğmeyi bir yuvaya sürükleyin; bir düğme birden çok yuvada bulunabilir.';
  @override
  String get video_control_palette_title => 'Tüm düğmeler';
  @override
  String get video_control_play_pause => 'Oynat/Duraklat';
  @override
  String get video_control_previous_cue => 'Önceki altyazı';
  @override
  String get video_control_reject_required =>
      'Zorunlu denetimler oynatıcıda kalmalıdır.';
  @override
  String get video_control_reject_unavailable =>
      'Bu denetim oraya yerleştirilemez.';
  @override
  String get video_control_reject_volume_bottom =>
      'Ses yalnızca alt çubukta bulunabilir.';
  @override
  String get video_control_remove_from_slot => 'Dışarı taşı';
  @override
  String get video_control_reset_layout => 'Oynatıcı düğme düzenini sıfırla';
  @override
  String get video_control_screenshot => 'Ekran görüntüsü';
  @override
  String get video_control_seek_backward => '10 sn geri';
  @override
  String get video_control_seek_forward => '10 sn ileri';
  @override
  String get video_control_settings => 'Oynatıcı ayarları';
  @override
  String get video_control_slot_bottom_center => 'Alt çubuk (orta)';
  @override
  String get video_control_slot_bottom_left => 'Alt çubuk (sol)';
  @override
  String get video_control_slot_bottom_right => 'Alt çubuk (sağ)';
  @override
  String get video_control_slot_drop_hint => 'Bir düğmeyi buraya sürükleyin';
  @override
  String get video_control_slot_hidden => 'Oynatıcıdan kaldırıldı';
  @override
  String get video_control_slot_screen_left => 'Ekran solu';
  @override
  String get video_control_slot_screen_right => 'Ekran sağı';
  @override
  String get video_control_slot_top_center => 'Üst çubuk (orta)';
  @override
  String get video_control_slot_top_left => 'Üst çubuk (sol)';
  @override
  String get video_control_slot_top_right => 'Üst çubuk (sağ)';
  @override
  String get video_control_speed => 'Hız';
  @override
  String get video_control_subtitle_list => 'Altyazı listesi';
  @override
  String get video_control_subtitle_track => 'Altyazı izi';
  @override
  String get video_control_title => 'Video adı';
  @override
  String get video_control_volume => 'Ses';
  @override
  String get video_danmaku_manual_bind_empty =>
      'Bu bölüm için henüz danmaku yok.';
  @override
  String get video_danmaku_manual_bind_failed =>
      'Bu bölüm için danmaku yüklenemedi. Daha sonra tekrar deneyin.';
  @override
  String get video_danmaku_manual_bind_server_error =>
      'Danmaku sunucusu isteği reddetti. Daha sonra tekrar deneyin.';
  @override
  String get video_danmaku_manual_match_title => 'Danmaku eşleştir';
  @override
  String get video_danmaku_manual_network_error =>
      'Ağ hatası. Bağlantınızı kontrol edip tekrar deneyin.';
  @override
  String get video_danmaku_manual_no_result => 'Eşleşen anime bulunamadı.';
  @override
  String get video_danmaku_manual_search_action => 'Ara';
  @override
  String get video_danmaku_manual_search_hint => 'Anime başlığı';
  @override
  String get video_danmaku_manual_search_prompt =>
      'Dandanplay\'de anime başlığına göre arayın, ardından bir bölüm seçin.';
  @override
  String get video_danmaku_manual_server_error =>
      'Arama başarısız. Daha sonra tekrar deneyin.';
  @override
  String video_delete_confirm({required Object title}) =>
      '『${title}』 silinsin mi? Bu işlem geri alınamaz.';
  @override
  String get video_delete_title => 'Videoyu Sil';
  @override
  String get video_discovery_all_works => 'Tüm eserler';
  @override
  String get video_discovery_anidb_identity_confirm_hint =>
      'AniDB\'de birden fazla olası eşleşme var. Doğru eseri seçerseniz içe aktarılan indirme doğrudan bu kimlikle taranır; atlarsanız daha sonra bekleyenler listesinden atayabilirsiniz.';
  @override
  String get video_discovery_anidb_identity_confirm_title =>
      'Eser kimliğini onaylayın';
  @override
  String get video_discovery_anidb_identity_not_found =>
      'Bu eser AniDB\'de tanımlanamadı. Normal şekilde indirilecek ve manuel tanımlama için bekleyenler listesinde bekleyecek.';
  @override
  String video_discovery_cancel_downloads_body({required Object n}) =>
      'Bu yapım için ${n} indirme görevi durdurulacak. İndirilmiş parçalar diskte kalır; indirmeyi sonra yeniden başlatabilirsin.';
  @override
  String get video_discovery_cancel_downloads_failed =>
      'İndirme iptal edilemedi. Görev çoktan bitmiş olabilir ya da indirme arka ucu kullanılamıyor.';
  @override
  String get video_discovery_cancel_downloads_title =>
      'İndirmeler iptal edilsin mi?';
  @override
  String get video_discovery_details_load_failed =>
      'Eser ayrıntıları yüklenemedi.';
  @override
  String get video_discovery_empty => 'Eşleşen eser bulunamadı.';
  @override
  String get video_discovery_hot => 'Şu an popüler';
  @override
  String get video_discovery_in_library => 'Kütüphanede';
  @override
  String get video_discovery_load_failed => 'Keşif sonuçları yüklenemedi.';
  @override
  String get video_discovery_manual_identity_hint =>
      'Aramayı etkinleştirmek için yukarıya başlık, harici kimlik ve yılı girin';
  @override
  String get video_discovery_pipeline_idle =>
      'İndirilmedi → İndirme → Düzenleme → Altyazılar → Tarama → Kütüphane';
  @override
  String get video_discovery_play => 'Oynat';
  @override
  String get video_discovery_provider_warning =>
      'Bazı sağlayıcılar kullanılamıyor. Mevcut sonuçlar gösteriliyor.';
  @override
  String get video_discovery_resource_search => 'Kaynak ara';
  @override
  String get video_discovery_search_hint => 'Film, dizi, anime ara';
  @override
  String get video_discovery_search_results => 'Arama sonuçları';
  @override
  String get video_discovery_seasonal_anime => 'Sezon animeleri';
  @override
  String get video_discovery_sort_popularity => 'Popülerlik';
  @override
  String get video_discovery_sort_rating => 'Puan';
  @override
  String get video_discovery_sort_release => 'Yayın tarihi';
  @override
  String get video_discovery_subscribe => 'Abone ol';
  @override
  String get video_discovery_subscription_manage => 'Aboneliği yönet';
  @override
  String get video_discovery_subtitle_search => 'Altyazı ara';
  @override
  String get video_double_tap_next_cue => 'Sonraki satır';
  @override
  String get video_double_tap_prev_cue => 'Önceki satır';
  @override
  String get video_download_backend_profile_id => 'Arka uç profil kimliği';
  @override
  String get video_download_local_root => 'Yerel kök';
  @override
  String get video_download_path_mapping_add => 'Yol eşlemesi ekle';
  @override
  String get video_download_path_mapping_invalid =>
      'Bir profil kimliği, uzak kök ve mutlak yerel kök girin.';
  @override
  String get video_download_path_mappings_hint =>
      'Her qBittorrent uzak kökünü yerel olarak erişilebilir bir klasöre eşleyin.';
  @override
  String get video_download_path_mappings_title => 'qBittorrent yol eşlemeleri';
  @override
  String get video_download_remote_root => 'Uzak kök';
  @override
  String get video_download_target_source_empty =>
      'Yerel olarak erişilebilir video kaynağı yok. Önce Kaynaklar sekmesinden bir tane ekleyin.';
  @override
  String get video_download_target_source_hint =>
      'Yeni indirmeler bu yerel video kaynağına düzenlenir.';
  @override
  String get video_download_target_source_none => 'Yerel video kaynağı seçin';
  @override
  String get video_download_target_source_title => 'Varsayılan klasör';
  @override
  String get video_drop_audio_unsupported =>
      'Altyazı dosyalarını geçerli videonun üzerine bırakın. Ses dosyaları buraya eklenemez.';
  @override
  String get video_drop_subtitle_only =>
      'Altyazı dosyalarını geçerli videonun üzerine bırakın.';
  @override
  String get video_episode_list => 'Bölümler';
  @override
  String get video_episode_list_empty => 'Bölüm yok';
  @override
  String get video_external_api_key => 'API anahtarı';
  @override
  String get video_external_categories_invalid =>
      'Kategoriler virgülle ayrılmış sayısal kimlikler olmalıdır.';
  @override
  String get video_external_enabled => 'Etkin';
  @override
  String get video_external_endpoint_invalid =>
      'Kimlik bilgileri, sorgu parametreleri veya parçalar içermeyen geçerli bir uç nokta girin.';
  @override
  String get video_external_insecure_http => 'Güvensiz HTTP\'ye izin ver';
  @override
  String get video_external_insecure_http_hint =>
      'Yalnızca güvenilir yerel ağ uç noktaları için kullanın.';
  @override
  String get video_external_password_optional => 'Şifre (isteğe bağlı)';
  @override
  String get video_external_remove => 'Kaldır';
  @override
  String get video_external_save_error =>
      'Yapılandırma kaydedilemedi. Vurgulanan alanları kontrol edin.';
  @override
  String get video_external_settings_section =>
      'Harici kaynak ve altyazı sağlayıcıları';
  @override
  String get video_external_username_optional => 'Kullanıcı adı (isteğe bağlı)';
  @override
  String video_favorite_count({required Object count}) =>
      '${count} sık kullanılan';
  @override
  String get video_file_error_content =>
      'Video dosyası yüklenemiyor. Bu dosyanın var olduğundan ve uygulama tarafından erişilebilir bir konumda olduğundan emin olun.';
  @override
  String get video_file_not_found => 'Video dosyası bulunamadı';
  @override
  String get video_filter_series => 'Diziler';
  @override
  String get video_filter_series_in => 'Bir dizide';
  @override
  String get video_filter_series_standalone => 'Dizide değil';
  @override
  String get video_filter_watch_status => 'İzleme durumu';
  @override
  String get video_filter_watch_status_completed => 'Tamamlandı';
  @override
  String get video_filter_watch_status_unwatched => 'İzlenmemiş';
  @override
  String get video_filter_watch_status_watching => 'İzleniyor';
  @override
  String get video_filter_year => 'Yıl';
  @override
  String get video_filter_year_unknown => 'Bilinmeyen yıl';
  @override
  String get video_hero_detail_view => 'Ayrıntılar';
  @override
  String video_hero_episodes_watched({required Object n}) =>
      '${n} bölüm izlendi';
  @override
  String video_home_continue_episode_number({required Object n}) =>
      'Bölüm ${n} oynatılıyor';
  @override
  String video_home_next_episode_number({required Object n}) =>
      'Sonraki · Bölüm ${n}';
  @override
  String video_home_recent_episode_number({required Object n}) =>
      'Yeni eklenen · Bölüm ${n}';
  @override
  String video_home_remaining_minutes({required Object minutes}) =>
      '${minutes} dk kaldı';
  @override
  String video_home_subscription_unwatched_episode({
    required Object n,
    required Object count,
  }) => 'Episode ${n} · ${count} unwatched';
  @override
  String get video_home_subscription_updates => 'Updated, not watched';
  @override
  String get video_immersive_locked => 'Sürükleyici mod açık';
  @override
  String get video_immersive_mode_full => 'Tüm denetimler';
  @override
  String get video_immersive_mode_lookup_only => 'Yalnızca arama';
  @override
  String get video_immersive_mode_seek_lookup => 'Kısayol + arama';
  @override
  String get video_immersive_mode_unlock_only => 'Yalnızca kilit açma';
  @override
  String get video_immersive_unlock => 'Kilidi aç';
  @override
  String get video_immersive_unlocked => 'Sürükleyici mod kapalı';
  @override
  String get video_import_action => 'Video içe aktar';
  @override
  String get video_import_confirm => 'İçe aktar';
  @override
  String get video_import_folder_as_source_hint =>
      'Yeni videolar için bu klasörü taramaya devam et';
  @override
  String get video_import_pick_subtitle => 'Altyazı seç';
  @override
  String get video_import_pick_video => 'Video dosyası seç';
  @override
  String get video_import_stream_advanced => 'Gelişmiş (koruma başlıkları)';
  @override
  String get video_import_stream_referer => 'Referer (isteğe bağlı)';
  @override
  String get video_import_stream_subtitle_url_field =>
      'Harici altyazı URL\'si (isteğe bağlı)';
  @override
  String get video_import_stream_url_field => 'Video akışı URL\'si';
  @override
  String get video_import_stream_url_hint =>
      'HLS/m3u8/mp4 akış URL\'si oynat (isteğe bağlı harici altyazı URL\'si ve koruma Referer/User-Agent ile)';
  @override
  String get video_import_stream_user_agent => 'User-Agent (isteğe bağlı)';
  @override
  String get video_import_subtitle_optional =>
      'İsteğe bağlı dış altyazı (oynatma sırasında gömülü/dış altyazılar arasında istediğiniz zaman geçiş yapabilirsiniz)';
  @override
  String get video_import_title => 'Video İçe Aktar';
  @override
  String get video_jimaku_anime_match => 'Anime eşleşmesi';
  @override
  String get video_jimaku_api_key => 'Jimaku API anahtarı';
  @override
  String get video_jimaku_api_key_hint =>
      'jimaku.cc/account adresinden ücretsiz API key alın';
  @override
  String get video_jimaku_api_key_set => 'API key ayarlandı';
  @override
  String get video_jimaku_api_key_settings_hint =>
      'Ayarlar → Video → Altyazılar bölümünden de düzenlenebilir';
  @override
  String video_jimaku_batch_done({
    required Object done,
    required Object total,
  }) => 'Altyazılar indirildi: ${done}/${total}';
  @override
  String get video_jimaku_batch_download => 'Tümünü indir';
  @override
  String get video_jimaku_batch_title => 'Koleksiyon için altyazı getir';
  @override
  String get video_jimaku_download_failed => 'İndirme başarısız';
  @override
  String get video_jimaku_downloaded => 'Altyazı indirildi ve uygulandı';
  @override
  String get video_jimaku_enabled_hint =>
      'Kapalı, bir API anahtarı kaydedilmiş olsa bile Jimaku\'nun atlanacağı anlamına gelir.';
  @override
  String get video_jimaku_episode => 'Bölüm (isteğe bağlı)';
  @override
  String video_jimaku_episode_available({
    required Object count,
    required Object languages,
  }) => '${count} altyazı mevcut · ${languages}';
  @override
  String get video_jimaku_episode_hint => 'Tümünü listelemek için boş bırakın';
  @override
  String video_jimaku_episode_unavailable({required Object episode}) =>
      '${episode} bölümü için altyazı bulunamadı';
  @override
  String video_jimaku_episode_unlabeled({
    required Object episode,
    required Object count,
  }) =>
      '${episode} bölümü olarak etiketlenmiş altyazı yok; ${count} etiketsiz dosya yine de eşleşebilir';
  @override
  String get video_jimaku_fetch => 'Altyazıları getir (Jimaku)';
  @override
  String get video_jimaku_filter => 'Sonuçları filtrele (ör. WEBRip, BD)';
  @override
  String get video_jimaku_find_sources => 'Altyazı bul';
  @override
  String get video_jimaku_format => 'Format';
  @override
  String get video_jimaku_format_all => 'Tümü';
  @override
  String get video_jimaku_language => 'Dil';
  @override
  String get video_jimaku_language_all => 'Tümü';
  @override
  String get video_jimaku_language_follow_video => 'Video dilini takip et';
  @override
  String get video_jimaku_language_unknown => 'Dil etiketlenmemiş';
  @override
  String get video_jimaku_no_key => 'Önce Jimaku API key\'inizi girin';
  @override
  String get video_jimaku_no_results => 'Altyazı bulunamadı';
  @override
  String get video_jimaku_query => 'Dizi adı';
  @override
  String get video_jimaku_scope_hint =>
      'Anime ve Japonca canlı aksiyon yapımları için Japonca altyazılar. Ücretsiz bir API anahtarı gereklidir.';
  @override
  String get video_jimaku_search => 'Ara';
  @override
  String get video_jimaku_search_failed => 'Altyazı araması başarısız';
  @override
  String get video_jimaku_series => 'Seri';
  @override
  String get video_jimaku_series_lookup_degraded =>
      'Seri bu sefer AniList\'te doğrulanamadı, bu yüzden sonuçlar düz başlık aramasından geliyor ve aynı serinin diğer sezonlarını içerebilir.';
  @override
  String get video_jimaku_show_all_episodes => 'Tüm bölümleri göster';
  @override
  String get video_jimaku_source => 'Altyazı kaynağı';
  @override
  String get video_jimaku_source_failed =>
      'Altyazı durumu kontrol edilemedi. Tekrar aramayı deneyin.';
  @override
  String get video_jimaku_source_hint =>
      'Bir Jimaku girişi seçin. Sezon paketleri bölüme göre otomatik eşleştirilir.';
  @override
  String get video_jimaku_source_loading =>
      'Altyazı durumu kontrol ediliyor...';
  @override
  String video_jimaku_source_summary({
    required Object files,
    required Object episodes,
    required Object languages,
  }) => '${files} altyazı dosyası · ${episodes} bölüm · ${languages}';
  @override
  String video_last_watched({required Object date}) => 'Son izleme ${date}';
  @override
  String get video_library_all_videos => 'Tüm videolar';
  @override
  String get video_library_empty => 'Henüz video içe aktarılmadı';
  @override
  String get video_library_empty_source_hint =>
      'Kütüphanenizi oluşturmak için Kaynaklar\'dan bir video klasörü ekleyin';
  @override
  String get video_library_scrape_auto_backfill =>
      'Eksik dizi bilgisini otomatik doldur';
  @override
  String get video_library_scrape_auto_backfill_hint =>
      'Video kütüphanesine girildiğinde henüz onaylanmış kimliği olmayan öğeler taranır. Tüm arka plan meta veri indirmelerini durdurmak için kapatın.';
  @override
  String video_library_scrape_pending_banner({required Object count}) =>
      '${count} works still need identity confirmation';
  @override
  String get video_library_scrape_pending_banner_action => 'Confirm';
  @override
  String get video_load_failed_back => 'Geri';
  @override
  String get video_load_failed_generic => 'Bu video yüklenemedi.';
  @override
  String get video_load_failed_network =>
      'Ağ hatası - bağlantınızı kontrol edip tekrar deneyin.';
  @override
  String get video_load_failed_not_found => 'Bu öğe kütüphanenizde bulunamadı.';
  @override
  String get video_load_failed_retry => 'Tekrar dene';
  @override
  String get video_load_failed_timeout =>
      'Bağlantı zaman aşımına uğradı - ağ yavaş veya kaynak hız sınırlaması yapıyor. Lütfen tekrar deneyin.';
  @override
  String get video_load_failed_title => 'Video yüklenemedi';
  @override
  String get video_load_failed_unavailable =>
      'Video akışı alınamadı - kullanılamıyor, bölge veya yaş kısıtlaması olabilir ya da kaynak değişmiş olabilir.';
  @override
  String get video_loading_buffering => 'Arabelleğe alınıyor…';
  @override
  String get video_loading_connecting => 'Akışa bağlanılıyor…';
  @override
  String get video_loading_preparing => 'Hazırlanıyor…';
  @override
  String get video_loading_subtitle => 'Altyazılar indiriliyor…';
  @override
  String get video_menu_fullscreen => 'Tam ekranı aç/kapat';
  @override
  String get video_menu_lock => 'Sürükleyici / kilit modu';
  @override
  String get video_menu_play_pause => 'Oynat / Duraklat';
  @override
  String get video_menu_subtitle_track => 'Altyazı izi';
  @override
  String get video_mining_animated_format => 'Video kartı animasyon formatı';
  @override
  String get video_mining_image_mode => 'Video kart görseli';
  @override
  String get video_mining_image_mode_current_frame =>
      'Kart çıkarma anında ekran görüntüsü';
  @override
  String get video_mining_image_mode_gif => 'Animasyonlu GIF (altyazı klibi)';
  @override
  String get video_mining_image_mode_subtitle_start =>
      'Altyazı başlangıcında ekran görüntüsü';
  @override
  String get video_mining_still_format => 'Video kartı ekran görüntüsü formatı';
  @override
  String get video_mining_still_format_hint =>
      'Kart görüntüsü durağan ekran görüntüsü olduğunda kullanılan kodlama. JPG çok daha küçüktür; PNG kayıpsızdır ancak birkaç kat daha büyüktür. Animasyonlu kapaklar etkilenmez — animasyon formatı ayarını takip ederler.';
  @override
  String get video_next_episode => 'Sonraki bölüm';
  @override
  String get video_online_services_setup_description =>
      'İsteğe bağlı hesaplar ve API anahtarları video tanımlamayı ve altyazı aramayı iyileştirebilir. Temel oynatma bunlar olmadan da çalışır.';
  @override
  String get video_online_services_setup_dismiss => 'Bir daha gösterme';
  @override
  String get video_online_services_setup_register =>
      'Hizmetleri öğren ve kaydol';
  @override
  String get video_online_services_setup_settings => 'Ayarları aç';
  @override
  String get video_online_services_setup_title =>
      'İsteğe bağlı çevrimiçi hizmetleri yapılandır';
  @override
  String get video_opensubtitles_app_key_hint =>
      'Uygulamayla gelen API anahtarını kullanmak için boş bırakın.';
  @override
  String get video_opensubtitles_endpoint => 'API uç noktası';
  @override
  String get video_opensubtitles_languages_hint =>
      'Virgülle ayrılmış dil kodları, örneğin zh-CN,en,ja';
  @override
  String get video_opensubtitles_settings_hint =>
      'API kimlik bilgileri yedeklemelerde dışa aktarılmaz; Karşılıklı Bağlantı üzerinden eşleştirilmiş cihazlara senkronize edilebilir (Karşılıklı Bağlantı ayarlarından kapatılabilir).';
  @override
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  @override
  String get video_opensubtitles_user_agent => 'User-Agent';
  @override
  String video_playlist_episodes({required Object count}) => '${count} böl.';
  @override
  String get video_prev_episode => 'Önceki bölüm';
  @override
  String get video_quality => 'Kalite';
  @override
  String get video_quality_auto => 'Otomatik';
  @override
  String get video_quality_empty => 'Bu video için değiştirilebilir kalite yok';
  @override
  String get video_quality_enhancement_hint =>
      'Görüntüyü mpv\'nin yerleşik yüksek kaliteli ölçeklemesiyle keskinleştirmek için bunu açın. Hem anime hem de gerçek çekim dizi ve filmlerde çalışır. Anime4K gibi shader\'larla daha ileri gitmek için bir video oynarken Görüntü iyileştirme\'yi açın ve oradan bir seviye seçin.';
  @override
  String get video_quality_load_failed =>
      'Bu video için kalite seçenekleri yüklenemedi.';
  @override
  String get video_quality_loading => 'Mevcut kaliteler yükleniyor…';
  @override
  String video_quality_switched({required Object label}) => 'Kalite: ${label}';
  @override
  String get video_recently_added_badge => 'YENİ';
  @override
  String get video_rename => 'Yeniden adlandır';
  @override
  String get video_rename_hint => 'Başlık';
  @override
  String get video_render_skia_fix_confirm_action => 'Yeniden başlat';
  @override
  String get video_render_skia_fix_confirm_body =>
      'Bu işlem Impeller oluşturucuyu devre dışı bırakır ve uygulamak için uygulamayı yeniden başlatır.';
  @override
  String get video_render_skia_fix_confirm_title =>
      'Skia\'ya geçip yeniden başlatılsın mı?';
  @override
  String get video_render_skia_fix_hint =>
      'Ses çalıyor ama video siyah kalıyorsa kullanın. Impeller\'ı devre dışı bırakır; uygulamak için yeniden başlatır.';
  @override
  String get video_render_skia_fix_title =>
      'Ekran siyah mı? Oluşturucuyu değiştir (Skia)';
  @override
  String get video_resource_identity_provider => 'Kaynak kimlik kaynağı';
  @override
  String video_resource_missing_message({required Object title}) =>
      '『${title}』 dosyası bulunamadı. Konumu değişmiş olabilir veya sürücü bağlı olmayabilir. Yeniden içe aktarabilir veya bu girişi kaldırabilirsiniz.';
  @override
  String get video_resource_missing_reimport => 'Yeniden içe aktar';
  @override
  String get video_resource_missing_title => 'Video kullanılamıyor';
  @override
  String get video_resource_no_provider_hint =>
      'Bu aramanın sorgu yapacak bir sağlayıcısı yoktu. Ayarlar, İndirmeler, Harici kaynak ve altyazı sağlayıcıları bölümünden yerleşik bir kaynağı yeniden etkinleştirin veya bir Torznab dizinleyicisi ekleyin.';
  @override
  String get video_resource_no_provider_title =>
      'Kaynak dizinleyici yapılandırılmadı';
  @override
  String get video_resource_relink_success => 'Video yeniden bağlandı';
  @override
  String get video_scrape_collection_rename_body =>
      'Eşleşen girdinin farklı bir adı var. Yeniden adlandırma isteğe bağlıdır: kapak ve ayrıntılar her iki durumda da kaydedilir ve yeniden adlandırma diğer senkronize cihazlarınızdaki eski adı da değiştirir.';
  @override
  String video_scrape_collection_rename_from({required Object name}) =>
      'Mevcut ad: ${name}';
  @override
  String get video_scrape_collection_rename_keep => 'Mevcut adı koru';
  @override
  String get video_scrape_collection_rename_title =>
      'Bu koleksiyon yeniden adlandırılsın mı?';
  @override
  String video_scrape_collection_rename_to({required Object name}) =>
      'Yeni ad: ${name}';
  @override
  String get video_scrape_diagnostic_confirm_body =>
      'Paket göreceli dosya ve klasör adlarını, tarama özetlerini ve orijinal NFO içeriklerini içerir. Video, altyazı, görüntü, mutlak yol, uygulama yapılandırması veya uygulama kimlik bilgileri eklenmez. Orijinal NFO dosyaları değiştirilmeden korunur ve kişisel bilgiler veya gizli veriler içerebilir; herkese açık paylaşmadan önce paketi inceleyin.';
  @override
  String get video_scrape_diagnostic_confirm_title =>
      'Tarama tanılama verileri dışa aktarılsın mı?';
  @override
  String get video_scrape_diagnostic_export =>
      'Tarama tanılama verilerini dışa aktar';
  @override
  String video_scrape_diagnostic_failed({required Object reason}) =>
      'Tanılama paketi dışa aktarılamadı: ${reason}';
  @override
  String get video_scrape_diagnostic_saved => 'Tanılama paketi kaydedildi';
  @override
  String get video_scrape_diagnostic_share_subject =>
      'Fushi video tarama tanılama verileri';
  @override
  String get video_scrape_episodes => 'Bölümler';
  @override
  String get video_scrape_info => 'Dizi bilgisi';
  @override
  String video_scrape_rating_votes({required Object count}) =>
      '${count} değerlendirme';
  @override
  String get video_scrape_tmdb_key_empty =>
      'Bir TMDB API anahtarı kaydedin, ardından Ara\'ya basın. Diğer kaynaklardan gelen sonuçlar burada gösterilmez.';
  @override
  String get video_scrape_tmdb_key_hint => 'TMDB API anahtarını girin';
  @override
  String get video_scrape_tmdb_key_required =>
      'TMDB bir API anahtarı gerektirir';
  @override
  String get video_scrape_tmdb_key_save => 'Kaydet';
  @override
  String get video_scrape_view_source => 'Kaynak ayrıntılarını görüntüle';
  @override
  String get video_screenshot => 'Ekran görüntüsü';
  @override
  String video_screenshot_failed_reason({required Object reason}) =>
      'Ekran görüntüsü başarısız: ${reason}';
  @override
  String video_screenshot_ready({required Object file}) =>
      'Ekran görüntüsü hazır: ${file}';
  @override
  String video_screenshot_saved_to({required Object path}) =>
      'Ekran görüntüsü kaydedildi: ${path}';
  @override
  String get video_secondary_subtitle_sources => 'İkincil altyazı';
  @override
  String get video_setting_auto_play_next => 'Sonraki bölümü otomatik oynat';
  @override
  String get video_setting_auto_scrape => 'Dizi bilgisini otomatik getir';
  @override
  String get video_setting_auto_scrape_hint =>
      'Kütüphane taramalarından sonra video meta verilerini otomatik olarak tanımla ve getir';
  @override
  String get video_setting_av_delay => 'Altyazı senkronu';
  @override
  String get video_setting_av_delay_hint =>
      'Pozitif = altyazı daha geç (satırlar geriye kaydırılır); negatif = altyazı daha erken. Kaydırıcıyı, +/- düğmelerini kullanın ya da bir değer girin.';
  @override
  String get video_setting_danmaku_area => 'Görüntüleme alanı';
  @override
  String get video_setting_danmaku_area_hint =>
      'Danmaku\'nun ekran yüksekliğinin yukarıdan ne kadarını kaplayabileceği.';
  @override
  String get video_setting_danmaku_block_rules =>
      'Engellenen kelimeler / regex';
  @override
  String get video_setting_danmaku_block_rules_hint =>
      'Her satıra bir kural. Düzenli ifade için satırı /kalıp/ şeklinde eğik çizgilerle sarın; aksi halde büyük/küçük harf duyarsız metin olarak eşleşir.';
  @override
  String get video_setting_danmaku_block_rules_placeholder =>
      'ör. spoiler veya /kalıp/';
  @override
  String get video_setting_danmaku_enabled => 'Danmaku göster';
  @override
  String get video_setting_danmaku_enabled_hint =>
      'Yerel veya eşleşen danmaku\'yu denetimleri engellemeden videonun üzerinde işle.';
  @override
  String get video_setting_danmaku_font_scale => 'Yazı boyutu';
  @override
  String get video_setting_danmaku_font_scale_hint =>
      'Danmaku metin boyutunu ölçekle.';
  @override
  String get video_setting_danmaku_manual_match => 'Manuel eşleştirme';
  @override
  String get video_setting_danmaku_manual_match_hint =>
      'Otomatik eşleştirme başarısız olduğunda veya yanlış olduğunda Dandanplay\'de başlığa göre arayın ve bölümü seçin.';
  @override
  String get video_setting_danmaku_max_active => 'Aktif danmaku sınırı';
  @override
  String get video_setting_danmaku_max_active_hint =>
      'Büyük dosyaların akıcı kalması için kare başına işlenen yorum sayısını sınırlar.';
  @override
  String get video_setting_danmaku_online => 'Çevrimiçi Dandanplay eşleşmesi';
  @override
  String get video_setting_danmaku_online_hint =>
      'Kullanılabilir bir yerel sidecar yoksa açılan videoyu Dandanplay ile eşleştir ve ilgili yorumları getir.';
  @override
  String get video_setting_danmaku_opacity => 'Saydamlık';
  @override
  String get video_setting_danmaku_opacity_hint => 'Genel danmaku şeffaflığı.';
  @override
  String get video_setting_danmaku_server_url => 'Danmaku sunucu URL\'si';
  @override
  String get video_setting_danmaku_speed => 'Hız';
  @override
  String get video_setting_danmaku_speed_hint =>
      'Yüksek değer daha hızlı; kayan danmaku ekranı daha çabuk geçer.';
  @override
  String get video_setting_double_tap => 'Çift dokunarak sarma';
  @override
  String get video_setting_double_tap_hint =>
      'Sarmak için videonun soluna veya sağına çift dokunun';
  @override
  String get video_setting_double_tap_off => 'Kapalı';
  @override
  String get video_setting_double_tap_subtitle => 'Altyazı';
  @override
  String get video_setting_drag_seek_sensitivity =>
      'Sürükleyerek ileri sarma hassasiyeti';
  @override
  String get video_setting_drag_seek_sensitivity_high => 'Yüksek';
  @override
  String get video_setting_drag_seek_sensitivity_hint =>
      'Dokunmatik ekranda tam genişlikli bir kaydırmanın ne kadar ileri sardığı: Düşük yaklaşık 45 sn, Orta yaklaşık 90 sn, Yüksek yaklaşık 180 sn. Videonun toplam süresinden bağımsızdır. Yalnızca dokunmatik sürükleme; fare ve klavye ile ileri sarma etkilenmez.';
  @override
  String get video_setting_drag_seek_sensitivity_low => 'Düşük';
  @override
  String get video_setting_drag_seek_sensitivity_medium => 'Orta';
  @override
  String get video_setting_hdr_auto => 'Otomatik';
  @override
  String get video_setting_hdr_compute_peak => 'Dinamik tepe algılama';
  @override
  String get video_setting_hdr_compute_peak_hint =>
      'Kaynağın üstverisine güvenmek yerine her karenin gerçek tepe parlaklığını ölçer. Parlak alanlar daha iyi olur, biraz GPU harcar.';
  @override
  String get video_setting_hdr_off => 'Kapalı';
  @override
  String get video_setting_hdr_on => 'Açık';
  @override
  String get video_setting_hdr_output => 'HDR / 10 bit çıkış';
  @override
  String get video_setting_hdr_output_always => 'Her zaman';
  @override
  String get video_setting_hdr_output_auto => 'Otomatik';
  @override
  String get video_setting_hdr_output_hint =>
      'Yalnızca Windows. «Otomatik», HDR kaynakları yerel bir video penceresi üzerinden doğrudan HDR ekrana verir; «Her zaman» bu pencereyi tüm videolar için kullanır (10 bit çıkış); «Kapalı» standart işleyiciyi korur.';
  @override
  String get video_setting_hdr_output_off => 'Kapalı';
  @override
  String get video_setting_hdr_tone_mapping => 'HDR ton eşleme';
  @override
  String get video_setting_hdr_tone_mapping_hint =>
      'Bir HDR kaynağı SDR ekrana sıkıştırılırken kullanılan eğri. “Otomatik” seçimi kaynak başına mpv’ye bırakır.';
  @override
  String get video_setting_immersive_mode => 'Sürükleyici mod';
  @override
  String get video_setting_immersive_mode_hint =>
      'Yan kilit düğmesine basıldıktan sonra hangi işlevlerin kullanılabilir kalacağını denetler';
  @override
  String get video_setting_jimaku_default_language => 'Varsayılan altyazı dili';
  @override
  String get video_setting_jimaku_default_language_hint =>
      'Varsayılan olarak videonun kendi dilini (ses parçası / taranan meta veriler) kullanır. Her zaman o dili tercih etmek için birini seçin.';
  @override
  String get video_setting_lock_window_aspect =>
      'Pencereyi video oranına kilitle';
  @override
  String get video_setting_long_press_speed => 'Uzun basma hızı';
  @override
  String get video_setting_long_press_speed_hint =>
      'Videoya basılı tutarken geçici olarak bu hızı kullan.';
  @override
  String get video_setting_mpv_aspect => 'En boy oranı';
  @override
  String get video_setting_mpv_aspect_auto => 'Orijinal';
  @override
  String get video_setting_mpv_brightness => 'Parlaklık';
  @override
  String get video_setting_mpv_channels => 'Kanallar';
  @override
  String get video_setting_mpv_channels_auto => 'Otomatik';
  @override
  String get video_setting_mpv_channels_mono => 'Mono';
  @override
  String get video_setting_mpv_channels_stereo => 'Stereo (alt karıştırma)';
  @override
  String get video_setting_mpv_contrast => 'Kontrast';
  @override
  String get video_setting_mpv_correct_downscale => 'Doğrusal küçültme';
  @override
  String get video_setting_mpv_deband => 'Bant giderme';
  @override
  String get video_setting_mpv_deinterlace => 'Tarama giderme';
  @override
  String get video_setting_mpv_dither => 'Tramlama';
  @override
  String get video_setting_mpv_gamma => 'Gama';
  @override
  String get video_setting_mpv_group_advanced => 'Gelişmiş';
  @override
  String get video_setting_mpv_group_audio => 'Ses';
  @override
  String get video_setting_mpv_group_color => 'Renk';
  @override
  String get video_setting_mpv_group_decode => 'Kod çözme';
  @override
  String get video_setting_mpv_group_geometry => 'Geometri';
  @override
  String get video_setting_mpv_group_hdr => 'HDR';
  @override
  String get video_setting_mpv_group_playback => 'Oynatma';
  @override
  String get video_setting_mpv_group_quality => 'Görüntü kalitesi';
  @override
  String get video_setting_mpv_hue => 'Renk tonu';
  @override
  String get video_setting_mpv_hwdec => 'Donanımsal kod çözme';
  @override
  String get video_setting_mpv_hwdec_auto => 'Otomatik (güvenli)';
  @override
  String get video_setting_mpv_hwdec_copy => 'Otomatik (kopya)';
  @override
  String get video_setting_mpv_hwdec_off => 'Kapalı';
  @override
  String get video_setting_mpv_interpolation => 'Hareket ara değerlemesi';
  @override
  String get video_setting_mpv_loop => 'Dosyayı döngüye al';
  @override
  String get video_setting_mpv_lua_scripts => 'Lua betiklerini yükle';
  @override
  String get video_setting_mpv_lua_scripts_dir_copied =>
      'Klasör yolu kopyalandı';
  @override
  String get video_setting_mpv_lua_scripts_dir_copy =>
      'Betik klasör yolunu kopyala';
  @override
  String get video_setting_mpv_lua_scripts_empty =>
      'mpv_scripts klasöründe henüz betik yok';
  @override
  String get video_setting_mpv_lua_scripts_hint =>
      'mpv_scripts klasöründeki tüm .lua dosyalarını oynatıcıya yükle. Kapatma, bir sonraki video açıldığında geçerli olur.';
  @override
  String get video_setting_mpv_lua_scripts_import =>
      'Lua betiklerini içe aktar';
  @override
  String get video_setting_mpv_lua_scripts_imported => 'Betikler içe aktarıldı';
  @override
  String get video_setting_mpv_lua_scripts_input_note =>
      'Klavye ve fare girdisi uygulamada kalır, mpv\'ye hiç ulaşmaz: tuş atamalarına veya OSC\'ye dayanan betikler tetiklenemez. Özellik/olay tabanlı betikler ve OSD mesajları çalışır.';
  @override
  String get video_setting_mpv_lua_scripts_status_error => 'Hata';
  @override
  String get video_setting_mpv_lua_scripts_status_loaded =>
      'Yüklendi, hata bildirilmedi';
  @override
  String get video_setting_mpv_lua_scripts_status_not_loaded =>
      'Bu oynatıcıda henüz yüklenmedi (anahtarı açın veya videoyu yeniden açın)';
  @override
  String get video_setting_mpv_lua_scripts_unavailable =>
      'Bu platformdaki paketlenmiş libmpv, Lua olmadan derlenmiştir (-Dlua=disabled); betikler burada çalışamaz.';
  @override
  String get video_setting_mpv_normalize => 'Downmix ses düzeyini normalleştir';
  @override
  String get video_setting_mpv_panscan => 'Pan & scan (kenarları kırp)';
  @override
  String get video_setting_mpv_pitch => 'Hızlanırken perdeyi koru';
  @override
  String get video_setting_mpv_raw =>
      'Ek mpv seçenekleri (her satıra bir tane, key=value)';
  @override
  String get video_setting_mpv_raw_hint =>
      'Yalnızca masaüstü; çalışma zamanında uygulanamayan seçenekler (ör. vo, profile) yok sayılır. SVP/RIFE harici araçlar gerektirir ve desteklenmez.';
  @override
  String get video_setting_mpv_reset => 'Tümünü sıfırla';
  @override
  String get video_setting_mpv_rotate => 'Döndürme';
  @override
  String get video_setting_mpv_saturation => 'Doygunluk';
  @override
  String get video_setting_mpv_sigmoid => 'Sigmoid büyütme';
  @override
  String get video_setting_mpv_sigmoid_hint =>
      'Sigmoid eğrili büyütme halkalanmayı azaltır ama GPU kullanır. Performans için varsayılan kapalı; daha keskin büyütme istiyorsanız açın.';
  @override
  String get video_setting_mpv_zoom => 'Yakınlaştırma';
  @override
  String get video_setting_picture_fit => 'Görüntü ölçekleme';
  @override
  String get video_setting_picture_fit_contain =>
      'Sığdır (oran korunur, siyah bantlar eklenir)';
  @override
  String get video_setting_picture_fit_cover =>
      'Doldur (oran korunur, kenarlar kırpılır)';
  @override
  String get video_setting_picture_fit_fill => 'Doldurmak için uzat';
  @override
  String get video_setting_picture_fit_hint =>
      'Görüntünün oynatıcı alanını nasıl dolduracağı';
  @override
  String get video_setting_qb_category => 'qBittorrent kategorisi';
  @override
  String get video_setting_qb_category_hint =>
      'Fushi tarafından gönderilen indirmeler bu kategoriyi alır; tamamlanma takibi yalnızca bunu izler.';
  @override
  String get video_setting_qb_password => 'WebUI şifresi';
  @override
  String get video_setting_qb_url => 'qBittorrent WebUI URL\'si';
  @override
  String get video_setting_qb_url_hint =>
      'ör. http://127.0.0.1:8080. Anime indirmeyi devre dışı bırakmak için boş bırakın.';
  @override
  String get video_setting_qb_username => 'WebUI kullanıcı adı';
  @override
  String get video_setting_secondary_av_delay =>
      'İkincil altyazı senkronizasyonu';
  @override
  String get video_setting_secondary_av_delay_hint =>
      'İkincil altyazı ofsetini bağımsız olarak ayarlayın. Burada ayarlanana kadar birincil ofseti takip eder.';
  @override
  String get video_setting_secondary_delay_follow => 'Birincili takip et';
  @override
  String get video_setting_secondary_subtitle_obscure =>
      'İkincil altyazıyı gizle';
  @override
  String get video_setting_secondary_subtitle_obscure_hint =>
      'İkincil (çeviri) altyazıyı bulanıklaştır veya gizle';
  @override
  String get video_setting_seek_seconds => 'Sarma saniyesi';
  @override
  String get video_setting_speed => 'Oynatma hızı';
  @override
  String get video_setting_speed_step => 'Hız adımı';
  @override
  String get video_setting_subtitle_anchor => 'Ana altyazı konumu';
  @override
  String get video_setting_subtitle_appearance => 'Altyazı görünümü';
  @override
  String get video_setting_subtitle_backfill =>
      'Taramadan sonra altyazıları otomatik getir';
  @override
  String get video_setting_subtitle_backfill_hint =>
      'Tarama bittiğinde, hâlâ altyazısı olmayan videolar yapılandırılmış çevrimiçi kaynaklarınızdan altyazı alır. Mevcut altyazıları asla değiştirmez.';
  @override
  String get video_setting_subtitle_bg_color => 'Arka plan rengi';
  @override
  String get video_setting_subtitle_bg_opacity => 'Arka plan matlığı';
  @override
  String get video_setting_subtitle_drag_adjust => 'Sürükleyerek konumu ayarla';
  @override
  String get video_setting_subtitle_font_size => 'Yazı boyutu';
  @override
  String get video_setting_subtitle_font_weight => 'Yazı kalınlığı';
  @override
  String get video_setting_subtitle_no_background => 'Arka plan yok';
  @override
  String get video_setting_subtitle_no_background_hint =>
      'Altyazı arka planını saydam yapar.';
  @override
  String get video_setting_subtitle_obscure => 'Altyazıları gizle';
  @override
  String get video_setting_subtitle_obscure_blur => 'Bulanık';
  @override
  String get video_setting_subtitle_obscure_hide => 'Gizle';
  @override
  String get video_setting_subtitle_obscure_hint =>
      'Dinleme pratiği için altyazıların nasıl gizleneceğini seçin: kapalı, bulanık (görmek için üzerine gelin veya dokunun) veya gizli.';
  @override
  String get video_setting_subtitle_obscure_none => 'Kapalı';
  @override
  String get video_setting_subtitle_obscure_reveal => 'Reveal on hover or tap';
  @override
  String get video_setting_subtitle_obscure_reveal_hint =>
      'While subtitles are blurred or hidden, hovering (desktop) or tapping them reveals them temporarily. Turn this off to keep them obscured no matter what.';
  @override
  String get video_setting_subtitle_position => 'Dikey konum';
  @override
  String get video_setting_subtitle_position_secondary =>
      'İkincil altyazı konumu';
  @override
  String get video_setting_subtitle_reset => 'Varsayılana sıfırla';
  @override
  String get video_setting_subtitle_respect_ass =>
      'Altyazının kendi stilini kullan';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      'Varsa .ass altyazılardaki yerleşik yazı tipi, renk ve kenarlığı kullan; kendi görünüm ayarlarınızı zorlamak için kapatın.';
  @override
  String get video_setting_subtitle_shadow => 'Gölge';
  @override
  String get video_setting_subtitle_sources_section =>
      'Çevrimiçi altyazı kaynakları';
  @override
  String get video_setting_subtitle_sync_input => 'Kayma (ms)';
  @override
  String get video_setting_subtitle_text_color => 'Metin rengi';
  @override
  String get video_setting_tap_toggles_playback =>
      'Videoya dokunarak oynat/duraklat';
  @override
  String get video_setting_tap_toggles_playback_hint =>
      'Videoya dokunmanın yalnızca kontrolleri göstermesi için kapatın';
  @override
  String get video_setting_theme => 'Tema';
  @override
  String get video_setting_tmdb_key => 'Özel TMDB API anahtarı';
  @override
  String get video_setting_tmdb_key_hint =>
      'İsteğe bağlı. Yerleşik anahtarı kullanmak için boş bırakın. Yalnızca meta veri taraması çalışmayı durdurursa veya kendi kotanızı kullanmak istiyorsanız doldurun.';
  @override
  String get video_setting_torrent_active_downloads => 'Maks aktif indirme';
  @override
  String get video_setting_torrent_active_seeds => 'Maks aktif gönderim';
  @override
  String get video_setting_torrent_anonymous => 'Anonim mod';
  @override
  String get video_setting_torrent_antileech => 'Sülük önlemeyi etkinleştir';
  @override
  String get video_setting_torrent_backend_embedded => 'Yerleşik motor';
  @override
  String get video_setting_torrent_backend_qb => 'Harici qBittorrent';
  @override
  String get video_setting_torrent_ban_progress_cheat =>
      'İlerleme hilesini engelle';
  @override
  String get video_setting_torrent_ban_relative_cheat =>
      'Göreceli ilerleme hilesini engelle';
  @override
  String get video_setting_torrent_ban_time => 'Engel süresi (dk)';
  @override
  String get video_setting_torrent_ban_time_hint => '0 = kalıcı';
  @override
  String get video_setting_torrent_connections_hint => '0 = motor varsayılanı';
  @override
  String get video_setting_torrent_dht => 'DHT';
  @override
  String get video_setting_torrent_download_limit => 'İndirme limiti (KB/s)';
  @override
  String get video_setting_torrent_encryption_disabled => 'Devre dışı';
  @override
  String get video_setting_torrent_encryption_forced => 'Zorunlu';
  @override
  String get video_setting_torrent_encryption_prefer => 'Tercih et';
  @override
  String get video_setting_torrent_limit_hint => '0 = sınırsız';
  @override
  String get video_setting_torrent_limit_lan => 'Limitleri LAN eşlerine uygula';
  @override
  String get video_setting_torrent_limit_lan_hint =>
      'Varsayılan kapalı: yerel ağınızdaki eşlerle aktarımlar yukarıdaki limitleri yok sayar.';
  @override
  String get video_setting_torrent_listen_port => 'Dinleme portu';
  @override
  String get video_setting_torrent_listen_port_hint => '0 = varsayılan (6881)';
  @override
  String get video_setting_torrent_lsd => 'Yerel eş keşfi (LSD)';
  @override
  String get video_setting_torrent_max_connections => 'Maks bağlantı';
  @override
  String get video_setting_torrent_max_ip_ports => 'IP başına maks port';
  @override
  String get video_setting_torrent_memory_hint =>
      'Motor belleğini sınırla. 0 = otomatik (cihaz RAM\'ine göre).';
  @override
  String get video_setting_torrent_memory_limit => 'Bellek limiti (MB)';
  @override
  String get video_setting_torrent_natpmp => 'NAT-PMP port eşleme';
  @override
  String get video_setting_torrent_section_antileech => 'Sülük önleme';
  @override
  String get video_setting_torrent_section_session => 'Oturum';
  @override
  String get video_setting_torrent_seed_ratio_hint =>
      'Yüklenen/indirilen bu orana ulaşınca yüklemeyi durdur. 0 = sınırsız.';
  @override
  String get video_setting_torrent_seed_ratio_limit => 'Gönderim oranı limiti';
  @override
  String get video_setting_torrent_seed_time_hint =>
      'Bu süre kadar gönderdikten sonra yüklemeyi durdur. 0 = sınırsız.';
  @override
  String get video_setting_torrent_seed_time_limit =>
      'Gönderim süresi limiti (dakika)';
  @override
  String get video_setting_torrent_upload_enabled =>
      'Yükleme / gönderimi etkinleştir';
  @override
  String get video_setting_torrent_upload_enabled_hint =>
      'Varsayılan kapalı. İndirdikten sonra sürüye geri gönder.';
  @override
  String get video_setting_torrent_upload_limit => 'Yükleme limiti (KB/s)';
  @override
  String get video_setting_torrent_upload_slots => 'Maks yükleme yuvası';
  @override
  String get video_setting_torrent_upnp => 'UPnP port eşleme';
  @override
  String get video_setting_torrent_zero_default => '0 = varsayılan';
  @override
  String get video_setting_torrent_zero_off => '0 = kapalı';
  @override
  String get video_setting_youtube_quality => 'YouTube kalitesi';
  @override
  String get video_setting_youtube_quality_hint =>
      'Yayınları bu hedefe kadar en yüksek katmanda başlat; Otomatik akıcı oynatmayı tercih eder (donanım dostu kodek, 1080p\'ye kadar)';
  @override
  String get video_settings_cat_audio => 'Ses';
  @override
  String get video_settings_cat_controls => 'Denetimler';
  @override
  String get video_settings_cat_danmaku => 'Danmaku';
  @override
  String get video_settings_cat_mpv => 'mpv';
  @override
  String get video_settings_cat_playback => 'Oynatma';
  @override
  String get video_settings_cat_shaders => 'Görüntü iyileştirme';
  @override
  String get video_settings_cat_subtitle => 'Altyazılar';
  @override
  String get video_settings_title => 'Video ayarları';
  @override
  String get video_shader_anime4k_hint =>
      'İndirmek için bir hazır ayar seçin. İndirdikten sonra etkinleştirmek için listede işaretleyin. Yalnızca masaüstü.';
  @override
  String get video_shader_anime4k_title => 'Anime4K önerilen shader\'lar';
  @override
  String get video_shader_download_anime4k => 'Anime4K hazır ayarlarını indir';
  @override
  String video_shader_download_done({required Object count}) =>
      '${count} shader indirildi';
  @override
  String get video_shader_download_failed => 'Shader indirme başarısız';
  @override
  String video_shader_download_partial({
    required Object ok,
    required Object failed,
  }) => '${ok} shader indirildi, ${failed} başarısız';
  @override
  String get video_shader_download_url => 'Bağlantıdan indir';
  @override
  String get video_shader_downloaded_label => 'İndirildi';
  @override
  String get video_shader_downloading => 'Shader\'lar indiriliyor…';
  @override
  String get video_shader_first_use_body =>
      '想让动画画面更清晰，可以进入“画质增强”并点击“下载 Anime4K 推荐着色器”。下载后在已安装列表里勾选即可启用。';
  @override
  String get video_shader_first_use_download => 'İndir ve etkinleştir';
  @override
  String get video_shader_first_use_title => '试试 Anime4K 画质增强';
  @override
  String get video_shader_import => 'Shader içe aktar (.glsl)';
  @override
  String video_shader_import_done({required Object count}) =>
      '${count} shader içe aktarıldı';
  @override
  String get video_shader_import_from_mpv => 'Yerel mpv\'den içe aktar';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自动搜索本机 mpv；未找到时可手动选择 mpv 目录。';
  @override
  String get video_shader_mobile_perf_hint =>
      'Telefonlarda Orta/Yüksek/Ultra yalnızca bulanıklık giderme yapan Anime4K zincirlerini kullanır: ölçekleme aşamaları çıkarılmıştır, çünkü ekran kaynaktan büyük değildir — bunlar çok GPU harcar ve tüm uygulamayı yavaşlatır. Etki yine cihazın GPU\'suna göre değişir; kare atlama veya ısınma görürseniz bir kademe düşün.';
  @override
  String video_shader_mpv_dir_current({required Object path}) =>
      'mpv klasörü: ${path}';
  @override
  String get video_shader_mpv_dir_empty => 'Bu klasörde shader bulunamadı';
  @override
  String get video_shader_mpv_not_found => 'Yerel mpv shader\'ı bulunamadı';
  @override
  String get video_shader_mpv_pick_title => 'mpv\'den shader içe aktar';
  @override
  String get video_shader_pick_mpv_dir => 'Specify mpv folder';
  @override
  String get video_shader_preset_mode_a_fast =>
      'Çoğu 1080p anime için. Daha düşük GPU yükü.';
  @override
  String get video_shader_preset_mode_a_hq =>
      '1080p anime için en yüksek kalite. Güçlü bir GPU gerektirir.';
  @override
  String get video_shader_preset_mode_b_fast =>
      'Yeniden örnekleme artefaktlı eski 720p anime için.';
  @override
  String get video_shader_preset_mode_b_hq =>
      'Yeniden örnekleme artefaktlı eski 720p anime için yüksek kalite. Güçlü bir GPU gerektirir.';
  @override
  String get video_shader_preset_mode_c_fast =>
      'Sıkıştırma bulanıklığı olan eski SD (480p) anime için.';
  @override
  String get video_shader_preset_mode_c_hq =>
      'Sıkıştırma bulanıklığı olan eski SD (480p) anime için yüksek kalite. Güçlü bir GPU gerektirir.';
  @override
  String get video_shader_quality_tier => 'Kalite iyileştirme';
  @override
  String get video_shader_section_advanced => 'Gelişmiş (elle shader)';
  @override
  String get video_shader_section_installed => 'Yüklü shader\'lar';
  @override
  String get video_shader_showing_original => 'Shader\'lar kapalı (orijinal)';
  @override
  String get video_shader_showing_shaded => 'Shader\'lar açık';
  @override
  String get video_shader_tier_custom_hint =>
      'Özel shader seçimi. Bir hazır ayara geçmek için yukarıdan bir seviye seçin.';
  @override
  String get video_shader_tier_high => 'Yüksek';
  @override
  String get video_shader_tier_high_hint =>
      'Anime4K HQ. Daha keskin; anime için en iyi, gerçek çekimde de kullanılabilir (daha az kazanç). Üst-orta seviye bir GPU gerektirir (NVIDIA RTX 4060 / RTX 3070, AMD RX 6700 XT / RX 7700 XT).';
  @override
  String get video_shader_tier_low => 'Düşük';
  @override
  String get video_shader_tier_low_hint =>
      'mpv yerleşik keskinleştirme (ewa_lanczossharp). Her videoda çalışır (anime ve gerçek çekim). İndirme yok, en düşük GPU yükü. Tümleşik veya eski kartlarda (NVIDIA GTX 1050, AMD RX 560, Intel iGPU) bunu seçin.';
  @override
  String get video_shader_tier_medium => 'Orta';
  @override
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast. Anime için en iyi, ancak gerçek çekim film/dizilerde de çalışır (daha az kazanç). Orta seviye GPU\'larda çalışır (NVIDIA GTX 1660 / RTX 3050, AMD RX 6600).';
  @override
  String get video_shader_tier_off => 'Yok';
  @override
  String get video_shader_tier_off_hint =>
      'İyileştirme yok. Videoyu olduğu gibi oynatır.';
  @override
  String get video_shader_tier_ultra => 'Ultra';
  @override
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A (UL, ultra büyük ağ). En güçlü Anime4K yeniden yapılandırması; gerçek çekimde de kullanılabilir (daha az kazanç). Amiral gemisi bir GPU gerektirir (NVIDIA RTX 4080 / RTX 5090, AMD RX 7900 XTX). GPU\'nuz daha zayıfsa daha düşük bir seviye seçin.';
  @override
  String get video_shader_url_hint =>
      'Bir shader .glsl bağlantısı yapıştırın (ör. GitHub)';
  @override
  String get video_shaders_empty => 'Henüz shader içe aktarılmadı';
  @override
  String get video_source_grouping_change_hint =>
      'Sonraki tarama bu ayarı kullanır. Mevcut koleksiyonlar ve meta veriler korunur.';
  @override
  String get video_source_grouping_folder => 'Klasöre göre';
  @override
  String get video_source_grouping_folder_hint =>
      'Birinci düzeydeki her alt klasör için bir koleksiyon oluşturur. Doğrudan seçilen klasörde bulunan dosyalar aynı koleksiyonda toplanır. Bu modda meta veriler alınamaz; almak için Esere göre moduna geçin.';
  @override
  String get video_source_grouping_mode => 'Video düzeni';
  @override
  String get video_source_grouping_series => 'Esere göre';
  @override
  String get video_source_grouping_series_hint =>
      'Dosya adlarından eserleri ve bölümleri tanır, ardından meta verileri eşleştirir.';
  @override
  String get video_source_scrape_action => 'Bu kaynağı tara';
  @override
  String get video_source_scrape_anidb_client => 'AniDB istemci adı';
  @override
  String get video_source_scrape_anidb_client_hint =>
      'Fushi kayıtlı bir uygulama istemcisi içerir. Normalde boş bırakın; yalnızca gerekirse özel bir kayıtlı istemci belirtin.';
  @override
  String get video_source_scrape_anidb_client_version => 'AniDB istemci sürümü';
  @override
  String get video_source_scrape_anidb_client_version_hint =>
      'Burada yalnızca özel istemcilerin kendi kayıtlı sürümü gerekir. Fushi varsayılan uygulama kimliğini yönetir; kişisel AniDB giriş bilgileriniz yine de gereklidir.';
  @override
  String get video_source_scrape_auto_after_scan =>
      'Taramadan sonra meta veri tara';
  @override
  String get video_source_scrape_auto_after_scan_hint =>
      'Bu kaynak tarandıktan sonra otomatik olarak meta veri taraması çalıştır';
  @override
  String get video_source_scrape_background_hint =>
      'Bu pencere kapatıldıktan sonra görevler devam eder.';
  @override
  String get video_source_scrape_background_started =>
      'Tarama arka planda çalışıyor';
  @override
  String get video_source_scrape_clear_all => 'Tüm tarama kayıtlarını temizle';
  @override
  String get video_source_scrape_clear_all_busy =>
      'Bir video taraması veya kazıma hâlâ çalışıyor. Bittikten sonra tekrar deneyin.';
  @override
  String get video_source_scrape_clear_all_completed =>
      'Tüm video tarama kayıtları temizlendi.';
  @override
  String get video_source_scrape_clear_all_completed_protected =>
      'Tarama kayıtları temizlendi. Değiştirilmiş veya doğrulanamayan yardımcı dosyalar korundu.';
  @override
  String get video_source_scrape_clear_all_confirm_action => 'Temizle';
  @override
  String get video_source_scrape_clear_all_confirm_body =>
      'Bu, tüm taranan meta verileri ve kaynak bağlamalarını kaldırır, Seri sonuçlarını temizler ve Fushi tarafından oluşturulan değiştirilmemiş kapakları ve NFO dosyalarını siler. Video dosyaları, kütüphane girişleri, gruplar, izleme ilerlemesi, altyazılar, etiketler, manuel olarak seçilen kapaklar ve kullanıcı tarafından değiştirilmiş yardımcı dosyalar korunur. Bu işlem geri alınamaz.';
  @override
  String get video_source_scrape_clear_all_confirm_title =>
      'Tüm video tarama kayıtları temizlensin mi?';
  @override
  String get video_source_scrape_clear_all_failed =>
      'Tüm tarama kayıtları temizlenemedi. Doğrulanmamış kullanıcı dosyaları silinmedi.';
  @override
  String get video_source_scrape_clear_all_hint =>
      'Tüm video tarama meta verilerini ve Fushi tarafından oluşturulan kapakları ve NFO dosyalarını kaldırın.';
  @override
  String get video_source_scrape_clear_all_in_progress =>
      'Bir tarama kaydı temizliği zaten devam ediyor.';
  @override
  String get video_source_scrape_confirmation_hint =>
      'Birden fazla tam eşleşme bulundu. Sağlayıcı bağlantısını kaydetmek için doğru eseri seçin.';
  @override
  String get video_source_scrape_confirmation_skip => 'Bu eseri atla';
  @override
  String get video_source_scrape_confirmation_title =>
      'Meta veri eşleşmesini onayla';
  @override
  String get video_source_scrape_enabled_toggle =>
      'Bu kaynak için taramayı etkinleştir';
  @override
  String get video_source_scrape_enabled_toggle_hint =>
      'Kapalıyken manuel, tarama sonrası, indirme sonrası ve arka plan taramalarının tümü bu kaynağı atlar.';
  @override
  String get video_source_scrape_external_overwrite =>
      'Korumalı yardımcı dosya üzerine yazmaya izin ver';
  @override
  String get video_source_scrape_external_overwrite_confirm_body =>
      'Bu toplu işlem üçüncü taraf NFO/görselleri veya düzenlediğiniz Fushi dosyalarını değiştirebilir. Medya dosyaları değiştirilmez. Devam edilsin mi?';
  @override
  String get video_source_scrape_external_overwrite_confirm_title =>
      'Korumalı yardımcı dosyaların üzerine yazılsın mı?';
  @override
  String get video_source_scrape_external_overwrite_hint =>
      'Üçüncü taraf veya kullanıcı tarafından değiştirilmiş dosyalar, her manuel tarama toplu işlemini tekrar onaylayana kadar korumalı kalır.';
  @override
  String get video_source_scrape_image_policy => 'Görsel yazma politikası';
  @override
  String video_source_scrape_last_summary({
    required Object status,
    required Object succeeded,
    required Object pending,
    required Object failed,
  }) =>
      'Son tarama (${status}): ${succeeded} başarılı, ${pending} beklemede, ${failed} başarısız';
  @override
  String get video_source_scrape_list_load_failed =>
      'Bu liste yüklenemedi. Tekrar deneyin.';
  @override
  String get video_source_scrape_list_reload => 'Yeniden yükle';
  @override
  String get video_source_scrape_locale => 'Meta veri dili';
  @override
  String get video_source_scrape_locale_hint =>
      'TMDB yedek verileri ve ek ayrıntıları için tercih edilen dil. MAL, MAL tarafından sağlanan başlıkları ve özgün metinleri kullanır.';
  @override
  String get video_source_scrape_manual_ambiguous =>
      'Bu ada sahip birden fazla eser var. Onay bekleyen eserler sekmesini açın ve eşleştirilecek öğeyi seçin.';
  @override
  String get video_source_scrape_manual_by_id => 'Eser kimliği';
  @override
  String get video_source_scrape_manual_by_title => 'Ada göre';
  @override
  String get video_source_scrape_manual_current_work => 'Geçerli eser';
  @override
  String get video_source_scrape_manual_id_invalid =>
      'Pozitif tam sayı olan bir eser kimliği veya seçilen kaynak ve türle eşleşen resmî bir URL girin.';
  @override
  String get video_source_scrape_manual_query_hint =>
      'Başlığa göre arayın veya MAL, TMDB filmi ya da TMDB dizisini seçip bir kimlik veya resmî URL girin. Geçerli esere uygulamak için bir sonuç seçin.';
  @override
  String get video_source_scrape_manual_search_action => 'Ara';
  @override
  String get video_source_scrape_manual_search_empty => 'Sonuç bulunamadı';
  @override
  String get video_source_scrape_manual_search_hint =>
      'Meta veri sağlayıcısında başlığa göre arayın, ardından doğru eseri seçin.';
  @override
  String get video_source_scrape_manual_search_title =>
      'Eseri manuel olarak belirtin';
  @override
  String get video_source_scrape_manual_tmdb_movie => 'TMDB filmi';
  @override
  String get video_source_scrape_manual_tmdb_tv => 'TMDB dizisi';
  @override
  String get video_source_scrape_nfo_policy => 'NFO yazma politikası';
  @override
  String get video_source_scrape_pending_empty =>
      'Elle eşleştirilmesi gereken eser yok.';
  @override
  String get video_source_scrape_pending_tab => 'Eşleşmemiş';
  @override
  String get video_source_scrape_pending_works => 'Tanımlama bekleyen eserler';
  @override
  String get video_source_scrape_pending_works_hint =>
      'Bu öğelerin henüz onaylanmış bir kimliği yok. Taramak için arayıp doğru eseri seçin.';
  @override
  String get video_source_scrape_phase_applying => 'Meta veri kaydediliyor';
  @override
  String get video_source_scrape_phase_fetching => 'Meta veri alınıyor';
  @override
  String get video_source_scrape_phase_planning => 'Planlanıyor';
  @override
  String get video_source_scrape_phase_recognizing => 'Eşleştiriliyor';
  @override
  String get video_source_scrape_phase_scanning => 'Kaynak taranıyor';
  @override
  String get video_source_scrape_phase_writing_sidecars =>
      'Yardımcı dosyalar yazılıyor';
  @override
  String get video_source_scrape_policy_missing_only => 'Yalnızca eksikse';
  @override
  String get video_source_scrape_policy_overwrite =>
      'Fushi dosyalarını güncelle';
  @override
  String get video_source_scrape_policy_skip => 'Yazma';
  @override
  String video_source_scrape_progress({
    required Object phase,
    required Object current,
    required Object total,
  }) => '${phase} · ${current}/${total}';
  @override
  String get video_source_scrape_provider_policy =>
      'MAL (Jikan üzerinden) birincil meta veri kaynağıdır; TMDB yedek kaynaktır.';
  @override
  String get video_source_scrape_queue_cancel_all => 'Tüm görevleri iptal et';
  @override
  String get video_source_scrape_queue_remove => 'Kuyruktan kaldır';
  @override
  String get video_source_scrape_queue_submitted => 'Gönderildi';
  @override
  String get video_source_scrape_queue_waiting => 'Sırada';
  @override
  String get video_source_scrape_rescrape_source => 'Bu kaynağı yeniden tara';
  @override
  String get video_source_scrape_run_detail_title => 'Tarama sonucu';
  @override
  String get video_source_scrape_run_no_issues =>
      'Hiçbir uyarı veya hata kaydedilmedi.';
  @override
  String get video_source_scrape_settings => 'Kaynak tarama ayarları';
  @override
  String get video_source_scrape_status_interrupted => 'Kesildi';
  @override
  String get video_source_scrape_tasks_current => 'Mevcut görev';
  @override
  String get video_source_scrape_tasks_empty => 'Henüz tarama görevi yok';
  @override
  String get video_source_scrape_tasks_history => 'Son görevler';
  @override
  String get video_source_scrape_tasks_open => 'Arka plan görevleri';
  @override
  String get video_source_scrape_waiting_confirmation => 'Onayınız bekleniyor';
  @override
  String get video_source_scrape_work_missing =>
      'Bu eser artık geçerli kaynak planında değil (dosyaları yeniden adlandırılmış, taşınmış veya silinmiş olabilir). Bekleyenler listesini yenilemek için kaynağı yeniden tarayın.';
  @override
  String get video_source_scrape_write_images => 'Görsel dosyaları yaz';
  @override
  String get video_source_scrape_write_nfo => 'NFO dosyaları yaz';
  @override
  String get video_specs_audio_tracks => 'Audio tracks';
  @override
  String get video_specs_bit_depth => 'Bit depth';
  @override
  String get video_specs_bitrate => 'Bitrate';
  @override
  String get video_specs_dynamic_range => 'Dynamic range';
  @override
  String get video_specs_frame_rate => 'Frame rate';
  @override
  String get video_specs_resolution => 'Resolution';
  @override
  String get video_specs_subtitle_tracks => 'Subtitle tracks';
  @override
  String get video_specs_title => 'Media info';
  @override
  String get video_specs_track_commentary => 'Commentary';
  @override
  String get video_specs_track_default => 'Default';
  @override
  String get video_specs_track_forced => 'Forced';
  @override
  String get video_specs_video_codec => 'Video codec';
  @override
  String get video_stat_by_video => 'Videoya Göre';
  @override
  String get video_stat_completed => 'Tamamlandı';
  @override
  String get video_stat_no_data => 'Henüz video istatistiği yok';
  @override
  String get video_statistics => 'Video İstatistikleri';
  @override
  String video_subscription_group_release_count({required Object count}) =>
      '${count} yayın';
  @override
  String get video_subtitle_adjust_collapse => 'Daralt';
  @override
  String get video_subtitle_adjust_expand => 'Genişlet';
  @override
  String get video_subtitle_adjust_title => 'Altyazı ayarları';
  @override
  String get video_subtitle_anchor_bottom => 'Alt';
  @override
  String get video_subtitle_anchor_top => 'Üst';
  @override
  String get video_subtitle_attach_book_missing =>
      'Bu video kütüphanenizde olmadığı için altyazı eklenmedi';
  @override
  String get video_subtitle_attach_playlist_hint =>
      'Bölüm başına altyazı eklemek için oynatma listesini açın';
  @override
  String video_subtitle_attached_to_video({
    required Object title,
    required Object count,
  }) => '${title} videosuna altyazı eklendi (${count} satır)';
  @override
  String get video_subtitle_auto_align => 'Altyazıyı otomatik hizala';
  @override
  String video_subtitle_auto_align_done({required Object ms}) =>
      'Altyazı ${ms} ms otomatik hizalandı';
  @override
  String get video_subtitle_auto_align_low_confidence =>
      'Güvenle otomatik hizalanamadı (net bir ses eşleşmesi bulunamadı)';
  @override
  String get video_subtitle_auto_align_running =>
      'Altyazı otomatik hizalanıyor…';
  @override
  String get video_subtitle_collection_language => 'Varsayılan altyazı dili';
  @override
  String get video_subtitle_collection_language_hint =>
      'Bu koleksiyondaki her bölüme uygulanır. Boş = videonun kendi dilini izle.';
  @override
  String get video_subtitle_collection_members_hint =>
      'Bölümler dosya adındaki numaraya göre eşleştirilir; sezon paketleri otomatik olarak bölünür.';
  @override
  String get video_subtitle_collection_release_group => 'Tercih edilen sürüm';
  @override
  String get video_subtitle_collection_release_group_any =>
      'Herhangi bir sürüm';
  @override
  String get video_subtitle_collection_release_group_hint =>
      'Toplu indirmeler önce bu sürümü seçer, böylece tüm sezon aynı zamanlamayı paylaşır.';
  @override
  String get video_subtitle_collection_settings =>
      'Koleksiyon altyazı ayarları';
  @override
  String get video_subtitle_color_note =>
      'Altyazı renkleri video oynatıcı içinde ayarlanır.';
  @override
  String video_subtitle_delay_osd({required Object ms}) =>
      'Altyazı senkronu: ${ms} ms';
  @override
  String get video_subtitle_delete => 'Altyazı dosyasını sil';
  @override
  String video_subtitle_delete_confirm({required Object path}) =>
      'Bu altyazı dosyası diskten silinsin mi? Bu işlem geri alınamaz.\n${path}';
  @override
  String video_subtitle_delete_failed({required Object label}) =>
      'Altyazı dosyası silinemedi: ${label}';
  @override
  String video_subtitle_deleted({required Object label}) =>
      'Altyazı dosyası silindi: ${label}';
  @override
  String get video_subtitle_drag_adjust_hint =>
      'Konumunu değiştirmek için altyazıyı yukarı veya aşağı sürükleyin';
  @override
  String video_subtitle_error_with_code({
    required Object msg,
    required Object code,
  }) => '${msg} (HTTP ${code})';
  @override
  String get video_subtitle_filter_all => 'Tümü';
  @override
  String get video_subtitle_filter_favorites => 'Sık kullanılanlar';
  @override
  String get video_subtitle_filter_favorites_empty =>
      'Henüz favorilere eklenmiş satır yok';
  @override
  String get video_subtitle_graphic_hint =>
      'Grafik altyazı · videoda gösterilir · sözcük araması yok';
  @override
  String video_subtitle_graphic_shown({required Object label}) =>
      'Grafik altyazı videoda gösteriliyor (sözcük araması yok): ${label}';
  @override
  String get video_subtitle_import_failed => 'Altyazı içe aktarılamadı';
  @override
  String get video_subtitle_import_file => 'Altyazı dosyası içe aktar…';
  @override
  String get video_subtitle_import_unsupported =>
      'Desteklenmeyen altyazı biçimi';
  @override
  String get video_subtitle_list => 'Altyazı listesi';
  @override
  String get video_subtitle_list_auto_scroll => 'Otomatik kaydır';
  @override
  String get video_subtitle_list_empty => 'Yüklü altyazı yok';
  @override
  String get video_subtitle_list_export_favorites =>
      'Favori satırları dışa aktar';
  @override
  String get video_subtitle_list_font_larger => 'Daha büyük yazı';
  @override
  String get video_subtitle_list_font_smaller => 'Daha küçük yazı';
  @override
  String get video_subtitle_list_jump => 'Bu satıra atla';
  @override
  String get video_subtitle_list_loading => 'Altyazılar yükleniyor...';
  @override
  String get video_subtitle_list_search => 'Altyazılarda ara';
  @override
  String get video_subtitle_list_search_empty => 'Eşleşen satır yok';
  @override
  String get video_subtitle_list_search_hint => 'Satırları süzmek için yazın';
  @override
  String video_subtitle_load_failed({required Object label}) =>
      'Bu altyazı yüklenemedi (grafik veya desteklenmeyen iz): ${label}';
  @override
  String get video_subtitle_next_cue_align => 'Sonraki satırı şimdiye hizala';
  @override
  String get video_subtitle_no_provider_hint =>
      'Ayarlar, İndirmeler, Harici kaynak ve altyazı sağlayıcıları bölümünden bir Jimaku API anahtarı girin veya OpenSubtitles\'ı etkinleştirin.';
  @override
  String get video_subtitle_no_provider_title =>
      'Altyazı sağlayıcısı yapılandırılmadı';
  @override
  String get video_subtitle_no_source_configured =>
      'Altyazı bulunamadı · çevrimiçi altyazı kaynağı ayarlayın';
  @override
  String get video_subtitle_off => 'Altyazıları kapat';
  @override
  String get video_subtitle_prev_cue_align => 'Önceki satırı şimdiye hizala';
  @override
  String video_subtitle_read_failed({required Object label}) =>
      'Bu altyazı dosyası okunamadı (hasarlı veya boş): ${label}';
  @override
  String get video_subtitle_remote_host => 'Eşleştirilmiş cihaz altyazısı';
  @override
  String get video_subtitle_replay => 'Bu satırı tekrar oynat';
  @override
  String get video_subtitle_scope_collection => 'Tüm koleksiyon';
  @override
  String get video_subtitle_scope_episode => 'Bu bölüm';
  @override
  String get video_subtitle_search_open => 'Çevrimiçi altyazı ara';
  @override
  String get video_subtitle_secondary_delay_follow_osd =>
      'İkincil altyazı senkronizasyonu: birincili takip ediyor';
  @override
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      'İkincil altyazı senkronizasyonu: ${ms} ms';
  @override
  String get video_subtitle_source_label => 'Kaynak';
  @override
  String get video_subtitle_source_search_hint =>
      'Yukarıdaki “Altyazı bul” düğmesine dokunun, ardından buradan bir kaynak seçin.';
  @override
  String video_subtitle_switched({required Object label}) =>
      'Altyazı: ${label}';
  @override
  String get video_subtitle_waveform_cue_list => 'Altyazı listesi';
  @override
  String get video_subtitle_waveform_jump_playhead => 'Oynatma konumuna git';
  @override
  String get video_subtitle_waveform_legend_cue => 'Altyazı işareti';
  @override
  String get video_subtitle_waveform_legend_energy => 'Ses yüksekliği';
  @override
  String get video_subtitle_waveform_legend_playhead => 'Oynatma konumu';
  @override
  String get video_subtitle_waveform_open => 'Dalga formu hizalama';
  @override
  String get video_subtitle_waveform_open_hint =>
      'Yakınlaştırmak ve hizalamak için dokunun';
  @override
  String get video_subtitle_waveform_scroll_hint =>
      'Zaman çizelgesini taramak için sürükleyin; hizalamak için aşağıdaki kontrolleri kullanın';
  @override
  String get video_subtitle_waveform_unavailable =>
      'Dalga formu bu cihazda kullanılamıyor';
  @override
  String get video_subtitle_waveform_zoom_in => 'Yakınlaştır';
  @override
  String get video_subtitle_waveform_zoom_out => 'Uzaklaştır';
  @override
  String get video_subtitle_workbench_title => 'Altyazılar';
  @override
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang} (otomatik oluşturulmuş)';
  @override
  String get video_subtitle_youtube_empty => 'Bu altyazı parçasında metin yok';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang} (çevrilmiş)';
  @override
  String get video_torznab_add => 'Dizinleyici ekle';
  @override
  String get video_torznab_api_key => 'API anahtarı';
  @override
  String get video_torznab_categories => 'Kategoriler';
  @override
  String get video_torznab_categories_hint =>
      'Virgülle ayrılmış sayısal kategori kimlikleri';
  @override
  String get video_torznab_endpoint => 'Uç nokta';
  @override
  String get video_torznab_endpoint_hint =>
      'Geri döngü adresleri dışında HTTPS gereklidir.';
  @override
  String get video_torznab_name => 'Ad';
  @override
  String get video_torznab_priority => 'Öncelik';
  @override
  String get video_torznab_settings_hint =>
      'Bir veya daha fazla Jackett, Prowlarr veya uyumlu Torznab uç noktası yapılandırın. Gizli anahtarlar yedeklemelerde dışa aktarılmaz; Karşılıklı Bağlantı üzerinden eşleştirilmiş cihazlara senkronize edilebilir (Karşılıklı Bağlantı ayarlarından kapatılabilir).';
  @override
  String get video_torznab_settings_title => 'Torznab dizinleyicileri';
  @override
  String video_watched_up_to({required Object time}) => '${time} kadar izlendi';
  @override
  String get video_windows_black_flash_notice_body =>
      'Windows\'ta yoğun GPU yükü altında video siyah yanıp sönebilir. Yükü azaltmak için yukarıdaki Kalite iyileştirme, Sigmoid büyütme ve Bant gidermeyi kapatmayı deneyin veya Donanım kod çözmeyi Kopya olarak değiştirin.';
  @override
  String get video_windows_black_flash_notice_title =>
      'Windows\'ta siyah titreme mi?';
  @override
  String get video_work_cast_crew => 'Oyuncular ve ekip';
  @override
  String get video_work_content_rating => 'İçerik derecelendirmesi';
  @override
  String get video_work_countries => 'Ülkeler';
  @override
  String get video_work_details => 'Ayrıntılar';
  @override
  String get video_work_external_ids => 'Harici kimlikler';
  @override
  String get video_work_extras => 'Ekstralar';
  @override
  String get video_work_genres => 'Türler';
  @override
  String get video_work_keywords => 'Anahtar kelimeler';
  @override
  String get video_work_metadata_pending =>
      'Ayrıntılı meta veri henüz taranmadı. Bu kaynağı Kaynaklar\'dan yeniden tarayın, ardından eseri tekrar açın.';
  @override
  String get video_work_studios => 'Stüdyolar';
  @override
  String get video_work_trailers => 'Fragmanlar';
  @override
  String get video_work_voice_roles => 'Seslendirme kadrosu ve karakterler';
  @override
  String get view_illustrations => 'Resimler';
  @override
  String get volume_button_page_turning => 'Ses düğmeleriyle sayfa çevirme';
  @override
  String get volume_key_sentence_nav => 'Ses Tuşuyla Cümle Gezinme';
  @override
  String get web_video_hide_native_subtitles => 'Site altyazılarını gizle';
  @override
  String get web_video_hosting_builtin =>
      'Yerleşik (1080p; süper çözünürlük, ekran görüntüsü ve kartlar kullanılabilir)';
  @override
  String get web_video_hosting_menu => 'Oynatma modu';
  @override
  String get web_video_hosting_windowed =>
      'Yerel pencere (4K, donanımsal DRM; kartlar sonra sıraya alınır)';
  @override
  String get web_video_import_hint =>
      'Bu bir web sayfası (doğrudan akış değil). Yerleşik web oynatıcıda açılacak.';
  @override
  String get web_video_mine_queue_empty => 'Sırada kart yok';
  @override
  String web_video_mine_queue_finished({
    required Object ok,
    required Object failed,
  }) => 'Oluşturulan kart: ${ok}, başarısız: ${failed}';
  @override
  String get web_video_mine_queue_run => 'Sıradaki kartları oluştur';
  @override
  String web_video_mine_queue_running({
    required Object done,
    required Object total,
  }) => 'Kartlar oluşturuluyor ${done}/${total}…';
  @override
  String get web_video_mine_queue_stop => 'Kart oluşturmayı durdur';
  @override
  String web_video_mine_queued({required Object count}) =>
      'Kart oluşturma sırasına alındı (${count} bekliyor)';
  @override
  String web_video_mine_switch_builtin({required Object count}) =>
      '${count} bekleyen kartı oluşturmak için yerleşik moda geç';
  @override
  String get web_video_no_tracks => 'Henüz altyazı yakalanmadı';
  @override
  String get web_video_track_live => 'Canlı altyazılar (sayfadan alınan)';
  @override
  String get web_video_track_menu => 'Altyazı parçası';
  @override
  String get wheel_page_turn_interval =>
      'Fare tekerleğiyle sayfa çevirme aralığı';
  @override
  String get word_favorite_added => 'Kelime favorilere kaydedildi';
  @override
  String get word_favorite_removed => 'Kelime favorilerden kaldırıldı';
  @override
  String get yomitan_api_key => 'Yomitan API anahtarı (isteğe bağlı)';
  @override
  String get yomitan_api_server => 'Yomitan API sunucusu';
  @override
  String get yomitan_api_server_hint =>
      'yomitan-api istemcilerinin Fushi sözlüklerini sorgulamasına izin ver (port 19633)';
  @override
  String get yomitan_api_server_started => 'Yomitan API sunucusu başlatıldı';
  @override
  String get yomitan_port_kill_action => 'İşlemi sonlandır ve tekrar dene';
  @override
  String get yomitan_port_kill_confirm => 'İşlemi sonlandır';
  @override
  String yomitan_port_kill_confirm_message({required Object process}) =>
      'Port şu anda şu tarafından kullanılıyor: ${process}';
  @override
  String yomitan_port_kill_confirm_title({required Object port}) =>
      '${port} portunu kullanan işlem sonlandırılsın mı?';
  @override
  String yomitan_port_kill_failed({required Object process}) =>
      '${process} sonlandırılamadı. Lütfen manuel olarak sonlandırıp tekrar deneyin.';
  @override
  String yomitan_port_kill_protected({required Object process}) =>
      '${process} kritik bir sistem işlemidir — Fushi onu sonlandırmaz. Bunun yerine portu değiştirin.';
  @override
  String get yomitan_port_kill_self_instance =>
      'Bu işlem, uygulamanın çalışan başka bir örneğidir.';
  @override
  String get video_metadata_primary_provider => 'Primary metadata source';
  @override
  String get video_metadata_primary_provider_hint =>
      'The other source is used as a fallback when the primary source has no exact match or is unavailable.';
  @override
  String get video_metadata_provider_mal => 'MAL (via Jikan)';
  @override
  String get video_metadata_provider_tmdb => 'TMDB';
  @override
  String get video_source_scrape_provider_follow_global =>
      'Follow global default';
  @override
  String get discovery_filter_hide_zero_seeders => 'Hide unseeded';
  @override
  String get discovery_filter_hide_suspected_manga => 'Hide suspected manga';
  @override
  String discovery_hidden_zero_seeders_count({required Object n}) =>
      '${n} unseeded hidden';
  @override
  String discovery_hidden_suspected_manga_count({required Object n}) =>
      '${n} suspected manga hidden';
  @override
  String get discovery_hidden_show => 'Show';
  @override
  String get discovery_nyaa_filter_all => 'All';
  @override
  String get discovery_nyaa_filter_no_remakes => 'No remakes';
  @override
  String get discovery_nyaa_filter_trusted_only => 'Trusted only';
  @override
  String get discovery_badge_trusted => 'Trusted';
  @override
  String get discovery_badge_remake => 'Remake';
  @override
  String get discovery_content_hint_manga => 'Suspected manga';
  @override
  String get video_subtitle_retime_action => 'Retime with speech model';
  @override
  String get video_subtitle_retime_no_track => 'Load a subtitle track first';
  @override
  String get video_subtitle_retime_running =>
      'Retiming subtitles with the speech model…';
  @override
  String video_subtitle_retime_done({
    required Object matched,
    required Object total,
    required Object percent,
    required Object ms,
  }) =>
      'Retimed ${matched}/${total} lines (${percent}%), median shift ${ms} ms';
  @override
  String video_subtitle_retime_low_match({required Object percent}) =>
      'Only ${percent}% of lines matched. Check the spoken language and whether this subtitle belongs to this episode.';
  @override
  String video_subtitle_retime_dropped({required Object count}) =>
      '${count} malformed lines were left out';
  @override
  String get video_subtitle_retime_failed => 'Subtitle retiming failed';
  @override
  String get video_metadata_identifier_words => 'Identifier words';
  @override
  String get video_metadata_identifier_words_hint =>
      'Rewrite, block or offset titles before they are matched';
  @override
  String get video_metadata_identifier_words_empty => 'Not configured';
  @override
  String get video_metadata_identifier_words_invalid => 'Invalid rules';
  @override
  String get video_metadata_identifier_words_syntax =>
      'One rule per line, # starts a comment. Block: a regular expression. Replace: A => B. Episode offset: front <> back >> EP+1. Combined: A => B && front <> back >> EP+1.';
  @override
  String get video_source_scrape_metadata_locale => 'Metadata language';
  @override
  String get video_source_scrape_metadata_locale_hint =>
      'BCP-47 language tag such as ja or zh-CN. Leave empty to follow the global metadata language.';
  @override
  String get video_work_locked_fields => 'Locked fields';
  @override
  String get video_work_locked_fields_hint =>
      'Locked fields keep their current values the next time this work is scraped.';
  @override
  String get video_work_locked_fields_saved => 'Field locks saved';
  @override
  String get video_work_field_title => 'Title';
  @override
  String get video_work_field_original_title => 'Original title';
  @override
  String get video_work_field_overview => 'Overview';
  @override
  String get video_work_field_tagline => 'Tagline';
  @override
  String get video_work_field_rating => 'Rating';
  @override
  String get video_work_field_cover => 'Cover';
  @override
  String get video_work_field_backdrop => 'Backdrop';
  @override
  String get manga_discovery_section_publishing => 'Popular publishing manga';
  @override
  String get local_audio_file_unavailable =>
      'Ses veritabanı kullanılamıyor. Orijinal DB dosyasını yeniden seçin.';
  @override
  String get local_audio_file_reselect => 'Ses veritabanını yeniden seç';
  @override
  String get download_request_failed =>
      'Could not create the download. Check the download settings and task list, then try again.';
  @override
  String get download_resource_resolve_failed =>
      'Could not fetch the download resource. Check the network and proxy settings, then try again.';
  @override
  String get download_torrent_invalid =>
      'The source returned invalid torrent data. Retry later or choose another source.';
  @override
  String get download_torrent_selection_failed =>
      'Could not uniquely match this volume in the torrent. Refresh the catalog or choose another source.';
  @override
  String get profile_language_bindings => 'Language bindings';
  @override
  String get profile_language_bindings_hint =>
      'Applies when an item has its content language set. EPUB books read it from the file; for other formats set it on the item itself.';
  @override
  String get video_shader_tier_low_hint_mobile =>
      'mpv\'s built-in sharpening (spline36 on phones). No download, no extra GPU passes. The safe choice if anything above this drops frames.';
  @override
  String get video_shader_tier_medium_hint_mobile =>
      'Anime4K deblur (S) at the source resolution. No upscaling passes, so the cost does not scale with your screen. Start here on phones.';
  @override
  String get video_shader_tier_high_hint_mobile =>
      'Anime4K deblur (M) at the source resolution. Larger kernel than Medium; still no upscaling passes. For faster phone GPUs.';
  @override
  String get video_shader_tier_ultra_hint_mobile =>
      'Anime4K deblur (M) plus an extra soft restore pass, both at the source resolution. Strongest phone tier; still no upscaling. Drop a tier if it drops frames.';
  @override
  String get dialog_background_close => 'Close (task keeps running)';
  @override
  String get reader_timer_show => 'Okuma zamanlayıcısını göster';
  @override
  String media_source_root_already_added({required Object path}) =>
      'Already a source — rescanning: ${path}';
  @override
  String get audiobook_transcribe_model_discarded =>
      'The model file could not be read and was removed. Download it again.';
  @override
  String get collection_cover_set => 'Set cover';
  @override
  String get collection_cover_reset => 'Reset to default cover';
  @override
  String get collection_cover_updated => 'Cover updated';
  @override
  String get collection_cover_failed => 'Couldn\'t set the cover';
  @override
  String get collection_rescrape => 'Rescrape metadata and cover';
  @override
  String get collection_rescrape_not_planned =>
      'This collection isn\'t in any local video source\'s scrape plan';
  @override
  String get collection_rescrape_started => 'Rescrape queued';
  @override
  String get collection_rescrape_failed => 'Rescrape failed';
  @override
  String download_batch_done({required Object n}) => '${n} task(s) processed';
  @override
  String download_batch_unsupported({required Object n}) =>
      '${n} skipped (not supported)';
  @override
  String download_batch_failed({required Object n}) => '${n} failed';
  @override
  String download_batch_delete_confirm({required Object n}) =>
      'Delete ${n} download task(s)?';
  @override
  String get sync_err_pairing_rejected =>
      'Eşleştirilmiş cihaz bu cihazın kimlik bilgilerini reddetti — eşitlemeye devam etmek için yeniden eşleştirin.';
  @override
  String get sync_err_not_paired =>
      'Henüz eşleştirilmiş cihaz yok — önce "Fushi Interconnect" bölümünden eşleştirmeyi yapın.';
  @override
  String get anki_create_lapis_not_found =>
      'Anki said the Lapis deck and note type were created, but they are still missing when Hibiki reads the collection back. Open Anki, make sure it is not busy, and try again.';
  @override
  String get anki_lapis_suggest_title => 'Anki can\'t make cards yet';
  @override
  String get anki_lapis_suggest_body =>
      'The selected deck and note type can\'t produce a card Anki will accept. Hibiki can add its Lapis note type and deck and select them for you.';
  @override
  String get anki_lapis_suggest_dismiss => 'Keep current setup';
  @override
  String get reader_vn_settings => 'Visual novel settings';
  @override
  String get reader_vn_reveal_speed => 'Text reveal speed';
  @override
  String get reader_vn_reveal_instant => 'Instant';
  @override
  String get reader_vn_screen_mode => 'Screen content';
  @override
  String get reader_vn_screen_block => 'One block';
  @override
  String get reader_vn_screen_sentences => 'Sentences';
  @override
  String get reader_vn_sentences_per_screen => 'Sentences per screen';
  @override
  String get reader_vn_preserve_dialogue => 'Keep dialogue together';
  @override
  String get reader_vn_click_advance => 'Blank tap advances';
  @override
  String get reader_vn_merge_spoken_sentence =>
      'Keep spoken sentence on one screen';
  @override
  String get auto_add_char_position_to_tags =>
      'Auto-add mining position to tags';
  @override
  String get auto_add_char_position_to_tags_hint =>
      'Tags each card with chars_12345 — how many characters into the book it was mined.';
  @override
  String get settings_group_interface => 'Arayüz';
  @override
  String get settings_group_content => 'Content';
  @override
  String get settings_group_learning => 'Öğrenme';
  @override
  String get settings_group_connections => 'Bağlantılar';
  @override
  String get settings_group_data => 'Data & device';
  @override
  String get settings_group_app => 'Uygulama';
  @override
  String get settings_destination_appearance_interaction =>
      'Görünüm ve etkileşim';
  @override
  String get settings_destination_profile_presets => 'Yapılandırma ön ayarları';
  @override
  String get settings_destination_system_about => 'Sistem ve hakkında';
  @override
  String get settings_service_configured => 'Yapılandırıldı';
  @override
  String get settings_service_not_configured => 'Yapılandırılmadı';
  @override
  String get settings_service_builtin => 'Yerleşik yapılandırma';
  @override
  String get settings_anki_media => 'Kart medyası';
  @override
  String get settings_downloads_advanced_title => 'Motor ve paylaşım';
  @override
  String get settings_downloads_advanced_hint =>
      'Bağlantılar, bellek, eş keşfi ve koruma';
  @override
  String get settings_downloads_routing_title => 'Tamamlanan indirmeler';
  @override
  String get settings_downloads_routing_hint =>
      'Yol eşleme ve hedef video kaynağı';
  @override
  String get settings_downloads_encryption_title => 'Eş şifrelemesi';
  @override
  String get settings_service_disabled => 'Devre dışı';
  @override
  String get anki_reposition_auto_title => 'Auto-reposition after mining';
  @override
  String get anki_reposition_auto_hint =>
      'Reposition new cards by frequency about 30 seconds after the last card is mined. AnkiConnect only.';
  @override
  String anki_reposition_auto_failed({required Object deck}) =>
      'Auto reposition failed for ${deck}';
  @override
  String get mihon_extension_download_count_unknown => 'No download data';
  @override
  String get mihon_extension_bulk_install => 'Bulk install';
  @override
  String get mihon_extension_min_downloads => 'Min downloads';
  @override
  String mihon_extension_download_count({required Object count}) =>
      '${count} downloads';
  @override
  String mihon_extension_bulk_install_confirm({required Object count}) =>
      'Install ${count} extensions from this repository? Extensions run code from their sources.';
  @override
  String mihon_extension_bulk_install_progress({
    required Object current,
    required Object total,
    required Object name,
  }) => 'Installing ${current}/${total}: ${name}';
  @override
  String mihon_extension_bulk_install_done({
    required Object installed,
    required Object skipped,
    required Object failed,
  }) => 'Installed ${installed}, skipped ${skipped}, failed ${failed}';
  @override
  String get mihon_extension_bulk_install_nothing =>
      'Every extension matching the current filters is already installed.';
  @override
  String get popup_dismiss_animation => 'Popup close animation';
  @override
  String get popup_dismiss_animation_hint =>
      'Play a slide-out animation when a lookup popup is closed by swiping. Turn it off to close instantly (always off in e-ink mode).';
  @override
  String get audiobook_transcribe_model_label => 'Model';
  @override
  String get audiobook_transcribe_model_fit_light =>
      'Light — fine on phones and desktop';
  @override
  String get audiobook_transcribe_model_fit_desktop =>
      'Large — best on a desktop GPU';
  @override
  String get audiobook_transcribe_model_fit_heavy_mobile =>
      'Large — runs on phones, but slowly';
  @override
  String get audiobook_transcribe_model_custom_badge => 'Added by you';
  @override
  String get audiobook_transcribe_model_custom_add => 'Add a local model…';
  @override
  String get audiobook_transcribe_model_custom_title => 'Add a local model';
  @override
  String get audiobook_transcribe_model_custom_intro =>
      'Point Hibiki at a folder holding a sherpa-onnx export (encoder / decoder / joiner, or a single CTC model, plus tokens.txt). The files stay where they are — only the small VAD model (640 KB) is fetched if the folder has none.';
  @override
  String get audiobook_transcribe_model_custom_pick => 'Choose folder';
  @override
  String get audiobook_transcribe_model_custom_name => 'Model name';
  @override
  String get audiobook_transcribe_model_custom_blank => 'Blank token';
  @override
  String get audiobook_transcribe_model_custom_blank_hint =>
      'The blank symbol in tokens.txt. sherpa-onnx exports use <blk>; Omnilingual uses <s>. Getting it wrong garbles the whole transcript.';
  @override
  String get audiobook_transcribe_model_custom_context =>
      'Decoder context size';
  @override
  String get audiobook_transcribe_model_custom_index => 'Index tensor type';
  @override
  String get audiobook_transcribe_model_custom_advanced => 'Advanced';
  @override
  String get audiobook_transcribe_model_custom_error_tokens =>
      'No tokens.txt in that folder.';
  @override
  String get audiobook_transcribe_model_custom_error_model =>
      'No .onnx model file in that folder.';
  @override
  String get audiobook_transcribe_model_custom_error_transducer =>
      'Found an encoder but no decoder / joiner next to it.';
  @override
  String get audiobook_transcribe_model_custom_detach => 'Remove from list';
  @override
  String get audiobook_transcribe_model_custom_detach_hint =>
      'Only removes it from the model list. Your files are not deleted.';
  @override
  String audiobook_transcribe_model_custom_added({required Object name}) =>
      'Added ${name}';
  @override
  String get manga_source_interconnect_subtitle =>
      'Browse the manga library on your paired device';
  @override
  String get manga_source_interconnect_disabled =>
      'Turn on Fushi Interconnect in settings to use this source';
  @override
  String get import_step_importing_book => 'Importing book…';
  @override
  String get audiobook_transcribe_engine_system => 'System speech (Apple)';
  @override
  String get audiobook_transcribe_engine_system_hint =>
      'Uses the built-in speech model — no 1 GB download from us. The system still fetches its own language assets the first time, and keeps them shared across apps.';
  @override
  String get audiobook_transcribe_engine_system_install => 'Install language';
  @override
  String get audiobook_transcribe_engine_system_installing =>
      'Asking the system to install the language…';
  @override
  String get audiobook_transcribe_engine_system_no_pause =>
      'This engine can\'t pause mid-file — stopping discards the current file\'s progress.';
  @override
  String get storage_models_components => 'Modeller ve bileşenler';
  @override
  String get settings_group_tools => 'Tools';
  @override
  String get mihon_source_login => 'Log in';
  @override
  String get mihon_source_login_hint =>
      'Sign in on the site, then tap Done to save the session';
  @override
  String get mihon_source_login_done => 'Done';
  @override
  String get mihon_source_login_empty =>
      'No session cookies were captured; nothing was saved';
  @override
  String get mihon_source_login_saved => 'Signed in to this source';
  @override
  String get media_source_rename => 'Rename';
  @override
  String get media_source_rename_label => 'Source name';
  @override
  String get book_rename => 'Rename';
  @override
  String get book_rename_label => 'Title';
  @override
  String get dict_rename => 'Rename';
  @override
  String get dict_rename_label => 'Dictionary name';
  @override
  String get shortcut_action_global_external_open_lookup_page =>
      'Bring to front and open lookup page';
  @override
  String get stat_session_edit => 'Edit session';
  @override
  String get stat_session_edit_date => 'Date';
  @override
  String get stat_session_edit_date_invalid => 'Enter the date as YYYY-MM-DD.';
  @override
  String get stat_session_edit_chars => 'Characters';
  @override
  String get stat_session_edit_chars_invalid =>
      'Characters must be a whole number of 0 or more.';
  @override
  String get stat_session_edit_message =>
      'Changing the date moves the whole session and keeps its time of day. The character count is split back across the session\'s segments.';
  @override
  String get stat_sessions_clear_all => 'Clear all sessions';
  @override
  String get stat_sessions_clear_all_title => 'Clear all session records';
  @override
  String stat_sessions_clear_all_message({required Object n}) =>
      'Clear all ${n} session records? Their time, character and page counts go away. Your saved words and sentences, mined cards and game library are kept. This cannot be undone.';
  @override
  String stat_sessions_clear_all_ack({required Object n}) =>
      'I understand this deletes all ${n} session records.';
  @override
  String get stat_clear_all_overview_message =>
      'Clear reading, watching and game statistics all at once? Time, character counts and lookup/mining counts across all three go away. Your saved words and sentences, mined cards, game library and activity timeline are kept. This cannot be undone.';
  @override
  String get video_discovery_provider_rate_limited =>
      'Some sources are rate limited; showing the rest';
  @override
  String get video_discovery_provider_failed =>
      'Some sources failed temporarily; showing the rest';
  @override
  String get collection_rescrape_pick_work => 'Pick a work to rescrape';
  @override
  String get updates_center_title => 'Updates';
  @override
  String get updates_center_empty => 'No updates yet';
  @override
  String get updates_center_empty_hint =>
      'Subscribed anime, manga chapters, extension and app releases show up here.';
  @override
  String get updates_mark_all_seen => 'Mark all as read';
  @override
  String get updates_filter_all => 'All';
  @override
  String get updates_kind_video_episode => 'Anime episodes';
  @override
  String get updates_kind_manga_chapter => 'Manga chapters';
  @override
  String get updates_kind_manga_extension => 'Manga extensions';
  @override
  String get updates_kind_app_release => 'App releases';
  @override
  String get updates_notify_section => 'Update notifications';
  @override
  String get updates_notify_video_episode => 'Notify about new anime episodes';
  @override
  String get updates_notify_video_episode_hint =>
      'Alert when a subscribed series finishes downloading a new episode.';
  @override
  String get updates_notify_manga_chapter => 'Notify about new manga chapters';
  @override
  String get updates_notify_manga_chapter_hint =>
      'Check followed online manga for new chapters in the background.';
  @override
  String get updates_notify_manga_extension =>
      'Notify about manga extension updates';
  @override
  String get updates_notify_manga_extension_hint =>
      'Alert when an installed extension has a newer version in its repository.';
  @override
  String get updates_notify_app_release => 'Notify about app releases';
  @override
  String get updates_notify_app_release_hint =>
      'Alert when a newer Fushi release is available.';
  @override
  String get updates_system_notifications => 'System notifications';
  @override
  String get updates_system_notifications_hint =>
      'Also send a system notification. Turning this off keeps the in-app badge.';
  @override
  String get updates_check_now => 'Check for updates now';
  @override
  String get updates_checking => 'Checking...';
  @override
  String updates_notification_summary({
    required Object first,
    required Object count,
  }) => '${first} and ${count} more';
  @override
  String get audiobook_transcribe_run_location => 'Run on';
  @override
  String get audiobook_transcribe_run_local => 'This device';
  @override
  String audiobook_transcribe_run_remote({required Object device}) =>
      '${device} (interconnect host)';
  @override
  String audiobook_transcribe_remote_uploading({
    required Object device,
    required Object done,
    required Object total,
  }) => 'Uploading audio to ${device}… (${done}/${total})';
  @override
  String audiobook_transcribe_remote_running({
    required Object device,
    required Object percent,
  }) => 'Transcribing on ${device}… ${percent}%';
  @override
  String audiobook_transcribe_remote_model_missing({required Object device}) =>
      '${device} has no model for this language';
  @override
  String get download_target_label => 'Download on';
  @override
  String get download_target_local => 'This device';
  @override
  String download_target_remote({required Object device}) =>
      '${device} (interconnect host)';
  @override
  String download_remote_jobs_title({required Object device}) =>
      'Tasks on ${device}';
  @override
  String get download_remote_jobs_empty => 'No tasks on the host yet';
  @override
  String get subscription_run_location => 'Run on';
  @override
  String get subscription_run_local => 'This device';
  @override
  String get subscription_remote_empty => 'No subscriptions on the host';
  @override
  String get subscription_remote_unsupported =>
      'The host has no download backend configured';
  @override
  String subscription_run_remote({required Object device}) => 'Host ${device}';
  @override
  String subscription_remote_section_title({required Object device}) =>
      'Subscriptions on ${device}';
  @override
  String subscription_remote_provider_unavailable({required Object provider}) =>
      'The host has no indexer for this resource (${provider})';
  @override
  String get video_load_failed_not_opened =>
      'The player couldn\'t open this video. The file may be in use, or the video engine needs the app restarted.';
  @override
  String get browser_extension_test_page_title => 'Try the browser extension';
  @override
  String get browser_extension_test_page_intro =>
      'This page is served by Fushi itself, so the extension can inject it. Try the two things below.';
  @override
  String get browser_extension_test_page_probe_checking =>
      'Checking whether the extension is injected…';
  @override
  String get browser_extension_test_page_probe_ok =>
      'The extension is injected on this page.';
  @override
  String get browser_extension_test_page_probe_missing =>
      'The extension was not injected. Load it in your browser and reload this page.';
  @override
  String get browser_extension_test_page_step_popup_title =>
      'Open the extension from the toolbar';
  @override
  String get browser_extension_test_page_step_popup_body =>
      'Click the Fushi icon in the top-right toolbar; the extension popup should open.';
  @override
  String get browser_extension_test_page_step_lookup_title =>
      'Look a word up with Shift';
  @override
  String get browser_extension_test_page_step_lookup_body =>
      'Hold Shift and hover a word in the sentence below; the dictionary popup should appear.';
  @override
  String get browser_extension_test_page_sample_label => 'Practice sentence';
  @override
  String get browser_extension_test_page_action => 'Open the test page';
  @override
  String get browser_extension_test_page_action_desc =>
      'Opens a page served by Fushi in your browser to check the toolbar popup and Shift lookup.';
  @override
  String get browser_extension_test_page_server_off =>
      'Enable the lookup server first, then try again.';
  @override
  String get video_source_scrape_locale_follow_ui =>
      'Leave empty to follow the interface language';
  @override
  String get popup_history_back => 'Back';
  @override
  String get popup_history_forward => 'Forward';
  @override
  String get manga_cover_cache_max_age => 'Cover cache retention';
  @override
  String get manga_cover_cache_max_age_subtitle =>
      'Online source covers are re-downloaded after this many days';
  @override
  String get updates_notification_open_video_episode => 'Play';
  @override
  String get updates_notification_open_manga_chapter => 'Read';
  @override
  String get updates_notification_open_manga_extension => 'Update';
  @override
  String get updates_notification_open_app_release => 'Download';
  @override
  String get updates_notification_view_all => 'View updates';
  @override
  String get updates_notification_header => 'Subscription updates';
  @override
  String get remote_collection_download_members => 'Download remote episodes';
  @override
  String get remote_collection_download_nothing =>
      'No remote episodes to download';
  @override
  String remote_collection_download_started({required Object count}) =>
      'Downloading ${count} remote episode(s) in the background';
  @override
  String remote_collection_download_done({
    required Object ok,
    required Object failed,
  }) => 'Downloaded ${ok} remote episode(s), ${failed} failed';
  @override
  String get remote_collection_scrape_on_host => 'Scrape on host';
  @override
  String get remote_collection_scrape_push_to_host =>
      'Scrape here and send to host';
  @override
  String get remote_collection_scrape_unavailable =>
      'Remote scraping is not available for this host';
  @override
  String get remote_collection_scrape_done => 'Metadata updated from host';
  @override
  String get remote_collection_scrape_failed =>
      'Remote scrape failed: the work is not in the host library plan';
  @override
  String remote_collection_scrape_identity_conflict({
    required Object provider,
    required Object id,
  }) => 'The host already binds this work to ${provider} ID ${id}. Replace it?';
  @override
  String get remote_collection_scrape_pick_work =>
      'Choose which work to scrape';
  @override
  String get manga_chapter_not_downloaded =>
      'This chapter has not been downloaded yet';
  @override
  String get manga_chapter_download_queued => 'Added to the download queue';
  @override
  String get manga_chapter_download_action => 'Download';
  @override
  String get manga_chapter_download_delete_action => 'Delete download';
  @override
  String get manga_chapter_download_retry_action => 'Retry download';
  @override
  String get manga_chapter_download_status_queued => 'Queued';
  @override
  String manga_chapter_download_status_downloading({
    required Object done,
    required Object total,
  }) => 'Downloading ${done}/${total}';
  @override
  String get manga_chapter_download_status_downloaded => 'Downloaded';
  @override
  String get manga_chapter_download_status_failed => 'Download failed';
  @override
  String get stat_reading_speed => 'Reading speed';
  @override
  String get settings_study_diag_export => 'Export study diagnostics log';
  @override
  String get settings_study_diag_export_hint =>
      'Page credits, segment open/close, audiobook resume and jump trace, for troubleshooting reading-speed anomalies. Saved as a text file.';
  @override
  String get study_diag_share_subject => 'Fushi study diagnostics';
  @override
  String get reader_furigana_off => 'Off';
  @override
  String get reader_furigana_toggle => 'Toggle';
  @override
  String get reader_furigana_hidden => 'Hidden';
  @override
  String get manga_series_download_all => 'Download all';
  @override
  String get manga_series_download_all_none =>
      'Every chapter is already downloaded or queued';
  @override
  String get manga_series_auto_ocr => 'Recognize after download';
  @override
  String get manga_series_ocr_all_downloaded => 'Recognize all downloaded';
  @override
  String get manga_series_ocr_all_none =>
      'No downloaded chapter needs recognition';
  @override
  String get manga_series_ocr_queued => 'Recognition queued';
  @override
  String get manga_series_ocr_no_engine => 'No OCR engine is available';
  @override
  String get manga_chapter_ocr_action => 'Recognize this chapter';
  @override
  String get manga_series_subscribe => 'Subscribe';
  @override
  String get manga_series_unsubscribe => 'Unsubscribe';
  @override
  String get manga_series_auto_download => 'Auto-download new chapters';
  @override
  String get manga_online_download_all => 'Download all';
  @override
  String get manga_online_select_all => 'Select all';
  @override
  String manga_series_download_all_queued({required Object count}) =>
      '${count} chapters queued';
  @override
  String get manga_chapter_locked_title => 'Chapter locked';
  @override
  String get manga_chapter_locked_hint =>
      'The source requires signing in and purchasing or renting this chapter before it can be downloaded.';
  @override
  String get manga_chapter_locked_download_anyway => 'Download anyway';
  @override
  String manga_series_download_all_locked_skipped({required Object count}) =>
      'Skipped ${count} locked chapters';
  @override
  String get mihon_sources_search_hint => 'Search sources';
  @override
  String get mihon_source_login_forward => 'Forward';
  @override
  String get reader_furigana_dimmed => 'Dimmed';
  @override
  String get mihon_source_login_import_browser => 'Import from browser';
  @override
  String get mihon_source_login_import_hint =>
      'The site was opened in your browser. The Fushi extension will send its session here; sign in there if needed, then tap Done.';
  @override
  String mihon_source_login_import_received({required Object count}) =>
      'Imported ${count} cookies from the browser';
  @override
  String get mihon_source_login_import_none =>
      'No session received from the browser yet';
  @override
  String get mihon_extension_update_all => 'Update all';
  @override
  String get mihon_extension_update_all_nothing =>
      'Every installed extension is already up to date.';
  @override
  String mihon_extension_update_all_confirm({required Object count}) =>
      'Update ${count} installed extensions to the newest version in their repositories?';
  @override
  String mihon_extension_update_all_progress({
    required Object current,
    required Object total,
    required Object name,
  }) => 'Updating ${current}/${total}: ${name}';
  @override
  String mihon_extension_update_all_done({
    required Object installed,
    required Object skipped,
    required Object failed,
  }) => 'Updated ${installed}, skipped ${skipped}, failed ${failed}';
  @override
  String get mihon_sources_sort_by_downloads => 'Sort by downloads';
  @override
  String get mihon_sources_sort_by_downloads_done =>
      'Sources reordered by extension downloads';
  @override
  String get mihon_sources_sort_by_downloads_no_data =>
      'No download counts available yet; refresh the extension repositories first';
  @override
  String manga_series_ocr_running({
    required Object chapter,
    required Object done,
    required Object total,
  }) => 'Recognizing ${chapter}: page ${done}/${total}';
  @override
  String manga_series_ocr_queued_count({required Object count}) =>
      '${count} chapters waiting';
  @override
  String manga_chapter_ocr_status_running({
    required Object done,
    required Object total,
  }) => 'Recognizing ${done}/${total}';
  @override
  String get manga_chapter_ocr_status_queued => 'Waiting for recognition';
  @override
  String get manga_ocr_boxes_toggle => 'Show recognized text regions';
  @override
  String get remote_manga_added_to_shelf =>
      'Added to the manga shelf; chapters download from the peer';
  @override
  String get backup_category_games => 'Games';
  @override
  String get backup_category_games_desc =>
      'Game library, metadata sources and covers';
  @override
  String get options_github_sponsors => 'Support Fushi on GitHub Sponsors';
  @override
  String get shortcut_action_global_scroll_line_down => 'Scroll down one step';
  @override
  String get shortcut_action_global_scroll_line_up => 'Scroll up one step';
  @override
  String get shortcut_action_global_scroll_to_top => 'Scroll to top';
  @override
  String get shortcut_action_global_scroll_to_bottom => 'Scroll to bottom';
  @override
  String get mining_audio_head_pad => 'Audio padding before sentence';
  @override
  String get mining_audio_head_pad_hint =>
      'Extra audio kept before the subtitle starts, so the first syllable is not clipped. Never runs into the previous line.';
  @override
  String get mining_audio_tail_pad => 'Audio padding after sentence';
  @override
  String get mining_audio_tail_pad_hint =>
      'Extra audio kept after the subtitle ends, so trailing sounds are not cut short. Never runs into the next line.';
  @override
  String mining_audio_pad_readout({required Object ms}) => '${ms} ms';
  @override
  String get audiobook_transcribe_model_scope_dedicated =>
      'Dedicated — most accurate for this language';
  @override
  String get audiobook_transcribe_model_scope_multilingual =>
      'Multilingual — wide coverage, less accurate per language';
  @override
  String audiobook_transcribe_elapsed_total({required Object elapsed}) =>
      'Total time ${elapsed}';
  @override
  String get manga_ocr_settings_open => 'OCR settings';
  @override
  String get manga_chrome_floating => 'Floating toolbar';
  @override
  String get manga_chrome_floating_subtitle =>
      'Hide the toolbar over the page; tap the middle of the page or hover at the top edge to reveal it. Off keeps the toolbar pinned above the page.';
  @override
  String get popup_ctx_edit_start => 'Edit sentence';
  @override
  String get popup_ctx_edit_confirm => 'Confirm edit';
  @override
  String get popup_ctx_edit_cancel => 'Discard edit';
  @override
  String get card_source_review_title =>
      'Reviewing card source · Reading progress is preserved';
  @override
  String get card_source_review_continue => 'Continue reading here';
  @override
  String get card_source_review_return => 'Return';
  @override
  String get card_source_review_changes => 'Choose fields to update';
  @override
  String get card_source_review_save => 'Save selected changes';
  @override
  String get card_source_review_missing =>
      'The original note could not be found. Sync Anki or connect its paired device.';
  @override
  String get card_source_review_failed =>
      'Changes were not saved. The note may have changed or the device is unavailable.';
  @override
  String get card_source_review_saved => 'Original note updated';
  @override
  String get card_source_review_no_changes => 'No fields selected for updating';
  @override
  String get card_source_review_media_missing =>
      'Source media is unavailable on this device. Import or download it first.';
  @override
  String get card_source_review_invalid =>
      'This source link is invalid or uses an unsupported version.';
  @override
  String get card_source_review_local_required =>
      'Download this video before reviewing it without changing server progress.';
  @override
  String get card_source_review_before => 'Original';
  @override
  String get card_source_review_after => 'Updated';
  @override
  String get card_source_review_conflict_warning =>
      'Avoid editing this note in Anki and Fushi at the same time. If a conflict occurs, your changes stay in a local draft.';
  @override
  String get card_source_review_draft_saved =>
      'Changes remain in a local draft. Resume it to review and submit again.';
  @override
  String get card_source_review_draft_resume => 'Resume draft';
  @override
  String get card_source_review_draft_discard => 'Discard draft';
  @override
  String get card_source_review_draft_existing =>
      'A draft already exists. Resume or discard it before making another edit.';
  @override
  String get card_source_review_fingerprint_mismatch =>
      'This file does not match the card source. Open the matching file to continue.';
  @override
  String get card_source_review_source => 'Card source';
  @override
  String get card_source_review_video_title =>
      'Reviewing card clip · Watch progress is preserved';
  @override
  String get card_source_review_video_watching =>
      'Watching normally · Watch progress is being saved';
  @override
  String get card_source_review_video_return =>
      'Return to original watch position';
  @override
  String get card_source_review_video_continue => 'Continue watching here';
  @override
  String get handlebar_source_link => 'Source link';
  @override
  String get remote_book_audiobook_download => 'Download audiobook from peer';
  @override
  String manga_series_no_chapters_in_language({required Object language}) =>
      'This source only lists ${language} chapters';
  @override
  String manga_series_try_sibling_language({required Object language}) =>
      'Try ${language}';
  @override
  String get manga_series_remove_from_bookshelf => 'Remove from manga shelf';
  @override
  String get manga_series_remove_confirm =>
      'Remove this series from the shelf? Downloaded chapters and reading progress will be deleted.';
  @override
  String get manga_chapter_locked_login_unsupported_hint =>
      'This chapter must be purchased or rented on the site; signing in inside the app cannot unlock this kind of series yet.';
  @override
  String get reader_volume_open => 'Open this volume';
  @override
  String get reader_volume_peek_failed => 'Could not read this volume';
  @override
  String get web_video_player_unavailable =>
      'The built-in web page player is temporarily disabled; this address cannot be played inside the app for now.';
  @override
  String get video_mining_image_mode_video_clip => 'Video clip with sound';
  @override
  String get video_mining_image_mode_video_clip_hint =>
      'Export picture and sentence sound together in one MP4. Anki plays it through its media player; autoplay follows the card settings. Playback may open in a separate player depending on the client.';
  @override
  String get reader_gallery_title => 'Illustrations';
  @override
  String reader_gallery_unlocked_count({
    required Object unlocked,
    required Object total,
  }) => 'Unlocked ${unlocked} / ${total}';
  @override
  String get reader_gallery_filter_unlocked => 'Unlocked';
  @override
  String get reader_gallery_filter_all => 'All';
  @override
  String get reader_gallery_position_jump => 'Jump to current reading position';
  @override
  String get reader_gallery_position_current => 'Current reading position';
  @override
  String get reader_gallery_locked_title => 'Not reached yet';
  @override
  String reader_gallery_locked_unlock_hint({required Object chapter}) =>
      'Unlocks automatically once you reach ${chapter}';
  @override
  String get reader_gallery_locked_blur_hint =>
      'Image blur is on; reveal to view';
  @override
  String get reader_gallery_locked_back => 'Back to last seen';
  @override
  String get reader_gallery_locked_reveal => 'View anyway';
  @override
  String get reader_gallery_unlocked_empty => 'No unlocked illustrations yet';
  @override
  String get reader_stats_title => 'Book statistics';
  @override
  String get reader_stats_clock_running => 'Timing';
  @override
  String get reader_stats_clock_paused => 'Paused';
  @override
  String get reader_stats_clock_pause => 'Pause timer';
  @override
  String get reader_stats_clock_resume => 'Resume timer';
  @override
  String reader_stats_chars_per_hour({required Object n}) => '${n} chars/h';
  @override
  String get reader_stats_position => 'Reading position';
  @override
  String get reader_stats_position_chapter => 'Chapter';
  @override
  String get reader_stats_position_book => 'Book';
  @override
  String reader_stats_position_progress({
    required Object current,
    required Object total,
  }) => '${current} / ${total} chars';
  @override
  String get reader_stats_book_total => 'Book total';
  @override
  String reader_stats_lookups({required Object n}) => 'Lookups ${n}';
  @override
  String reader_stats_cards({required Object n}) => 'Cards ${n}';
  @override
  String get reader_stats_remaining_chapter => 'Chapter remaining';
  @override
  String get reader_stats_remaining_book => 'Book remaining';
  @override
  String get reader_stats_full_records_open => 'Open full records';
  @override
  String get reader_control_title => 'Book title';
  @override
  String get reader_control_slot_hidden => 'Remove from reader';
  @override
  String get reader_control_reject_required =>
      'Required buttons must stay on the reader.';
  @override
  String get reader_control_reject_title =>
      'The book title only fits the top center; nothing else goes there.';
  @override
  String get reader_control_editor_title => 'Reader button layout';
  @override
  String get reader_control_editor_hint =>
      'Drag buttons between the top and bottom bars, or remove them.';
  @override
  String get reader_control_reset_layout =>
      'Restore default reader button layout';
  @override
  String get manga_rescan_empty => 'No text was recognized in this box.';
  @override
  String get manga_rescan_failed => 'Re-OCR of the selected area failed';
  @override
  String get manga_rescan_hint =>
      'Drag a box over the text you want to re-run OCR on. The result replaces the existing text layer inside that box.';
  @override
  String get manga_rescan_region_updated =>
      'Selected area re-recognized and saved to the page';
  @override
  String get manga_rescan_run => 'Re-OCR selected area';
  @override
  String get manga_rescan_running => 'Recognizing the selected box...';
  @override
  String get manga_rescan_undo_failed =>
      'Could not restore the previous text layer';
  @override
  String get manga_rescan_undone =>
      'Restored the text layer from before the re-scan';
  @override
  String get manga_tap_ocr_notice_body =>
      'This page has no text data yet. Fushi will recognise it with the OCR engine you picked in settings, then you can tap words to look them up. You can change the engine or turn this off in Settings › Manga OCR.';
  @override
  String get manga_tap_ocr_notice_confirm => 'Recognise now';
  @override
  String get manga_tap_ocr_notice_title => 'Tap to recognise';
  @override
  String get manga_tap_ocr_online_lens_only =>
      'Online chapters are not stored locally, so only Google Lens can read them — the page image is uploaded to Google.';
  @override
  String get manga_tap_ocr_running => 'Recognising this page…';
  @override
  String get manga_tap_to_ocr => 'Tap to recognise';
  @override
  String get manga_tap_to_ocr_desc =>
      'Tap an unrecognised speech bubble to recognise the page and look words up right away.';
  @override
  String get mihon_in_bookshelf => 'In manga shelf';
  @override
  String get reader_furigana_hide => 'Hide';
  @override
  String get reader_furigana_partial => 'Partial';
  @override
  String get reader_furigana_show => 'Show';
  @override
  String get reader_gallery => 'Gallery';
  @override
  String get reader_gallery_current => 'Reading here';
  @override
  String get web_video_platform_unsupported =>
      'The built-in web player is only available on Windows for now.';
  @override
  String get audiobook_transcribe_alignment_hint =>
      'Generated text is aligned to the audio in a second model pass before saving. The alignment model is downloaded if needed.';
  @override
  String get popup_full_width => 'Full-width popup';
  @override
  String get popup_full_width_hint =>
      'Ignore the maximum width and let the popup span the available width. Its position still follows the selected word.';
  @override
  String get video_mining_image_mode_hint =>
      'Whether the video card cover is an animation of the subtitle clip or a single still frame — and which frame';
  @override
  String get gal_mining_image_mode_hint =>
      'Galgame scenes barely move within one line, so a still screenshot is usually smaller and just as useful.';
  @override
  String get video_mining_animated_format_hint =>
      'AVIF is far smaller than GIF at the same quality, and its top quality tier allows a higher resolution and frame rate than GIF or WebP. Falls back to GIF automatically when the bundled encoder cannot produce it.';
  @override
  String get gal_mining_animated_format_hint =>
      'Same formats as video cards, stored separately: a galgame frame barely moves within one line, so the trade-off differs.';
  @override
  String get gal_mining_still_format_hint =>
      'Same formats as video cards, stored separately. Game window grabs come in as PNG: keeping PNG is lossless but several times larger, while JPG matches how these screenshots were compressed before.';
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
  String get game_lookup_samples_title => 'Calibrate with samples';
  @override
  String get game_lookup_samples_capture => 'Capture current line';
  @override
  String get game_lookup_samples_hint =>
      'Wait until the line is fully visible, then capture it. Capture several different lines before adjusting the layout.';
  @override
  String get game_lookup_samples_empty => 'No samples yet';
  @override
  String get game_lookup_samples_remove => 'Remove sample';
  @override
  String get game_lookup_samples_reference => 'Calibration sample';
  @override
  String get game_lookup_samples_validation => 'Validation sample';
  @override
  String get game_lookup_samples_boxes => 'Show click areas';
  @override
  String get game_lookup_samples_opacity => 'Click area opacity';
  @override
  String get game_lookup_samples_native_hint =>
      'The boxes show the areas used to select characters. Adjust the layout until they cover the original text.';
  @override
  String get game_lookup_samples_unavailable =>
      'This layout cannot cover the complete line. Adjust the area or font size.';
  @override
  String get game_lookup_samples_save => 'Save draft';
  @override
  String get game_lookup_samples_apply => 'Use draft for live calibration';
  @override
  String get game_lookup_samples_saved => 'Draft saved on this device';
  @override
  String get game_lookup_samples_saved_hint =>
      'Samples and screenshots stay on this device. Saving a draft does not enable lookup.';
  @override
  String get game_lookup_samples_busy => 'Working…';
  @override
  String get game_lookup_samples_capture_failed =>
      'Could not capture a stable sample. Keep the current line visible and try again.';
  @override
  String get game_lookup_samples_load_failed =>
      'The saved sample draft could not be read.';
  @override
  String get game_lookup_samples_limit =>
      'Keep up to eight samples. Remove a sample before capturing another.';
  @override
  String get game_lookup_samples_hover =>
      'Move the pointer over a box to inspect its character.';
  @override
  String get game_lookup_samples_anchor_hint =>
      'Select a character, then click its center in the screenshot. Add points near the beginning and end of a line.';
  @override
  String get game_lookup_samples_fit => 'Align from marked points';
  @override
  String get game_lookup_samples_clear_anchors => 'Clear marked points';
  @override
  String get game_lookup_samples_fit_insufficient =>
      'Mark at least two characters on the same line in a calibration sample.';
  @override
  String get game_lookup_samples_fit_failed =>
      'The marked points do not fit one layout. Check the points or adjust the font and wrapping.';
  @override
  String get game_lookup_samples_residual => 'Point error';
  @override
  String get game_lookup_samples_measured => 'Measured samples';
  @override
  String get game_lookup_samples_validation_hint =>
      'Validation points are checked but do not change the fitted layout.';
  @override
  String get game_lookup_samples_region_mode => 'Move/resize area';
  @override
  String get game_lookup_samples_point_mode => 'Mark characters';
  @override
  String get game_lookup_samples_pan_mode => 'Pan image';
  @override
  String get game_lookup_samples_region_title =>
      'Dialogue area (orange outline)';
  @override
  String get game_lookup_samples_layout_title =>
      'Character layout (blue boxes)';
  @override
  String get game_lookup_samples_region_hint =>
      'Drag inside the orange outline to move it; drag its handles to resize. Width and height control wrapping space, not character size.';
  @override
  String get game_lookup_samples_points_hint =>
      'Mark 3–5 spread-out characters in each of several training samples. Avoid punctuation. Points need not be perfect: select, drag, or nudge them later. Two points provide only a rough estimate.';
  @override
  String get game_lookup_samples_point_selected => 'Selected character';
  @override
  String get game_lookup_samples_point_remove => 'Remove selected point';
  @override
  String get game_lookup_samples_nudge_left =>
      'Move left by one screenshot pixel';
  @override
  String get game_lookup_samples_nudge_right =>
      'Move right by one screenshot pixel';
  @override
  String get game_lookup_samples_nudge_up => 'Move up by one screenshot pixel';
  @override
  String get game_lookup_samples_nudge_down =>
      'Move down by one screenshot pixel';
  @override
  String get game_lookup_samples_zoom_in => 'Zoom in';
  @override
  String get game_lookup_samples_zoom_out => 'Zoom out';
  @override
  String get game_lookup_samples_zoom_reset => 'Fit screenshot';
  @override
  String get game_lookup_samples_pixel_hint =>
      'Values are screenshot pixels. Enter a number and press Enter, or use the minus/plus buttons.';
  @override
  String get game_lookup_samples_font_hint =>
      'An empty font uses Yu Gothic. A font or size mismatch may prevent all sentences from aligning.';
  @override
  String get game_lookup_samples_residual_hint =>
      'Distance from your reference points, not measured accuracy of the game glyphs.';
  @override
  String get game_lookup_samples_few_points =>
      'Few training points: alignment is sensitive to small marking errors. Add spread-out points in multiple samples before judging accuracy.';
  @override
  String get game_lookup_attached_calibration_preparing =>
      'Preparing click protection. Do not click the game dialogue yet.';
  @override
  String get game_lookup_attached_calibration_paused =>
      'Calibration is paused while the game is hidden or in the background. Return with Alt+Tab and wait for the character highlights before clicking. You can still adjust and confirm here.';
  @override
  String get game_lookup_attached_calibration_unavailable =>
      'Calibration is unavailable. Stop clicking the game dialogue; adjust the parameters or cancel calibration.';
  @override
  String get game_lookup_attached_calibration_ended =>
      'Calibration has ended. Close this dialog before starting again.';
  @override
  String get game_lookup_attached_calibration_region_help =>
      'Adjust the region here, or drag it over a screenshot in the sample editor. The game overlay only accepts highlighted character probes.';
  @override
  String get game_lookup_attached_calibration_text_changed =>
      'The dialogue changed. Cancel and reopen calibration for the current line.';
  @override
  String get game_lookup_attached_calibration_ready =>
      'Probe clicks are ready. Click inside the highlighted character boxes in order; clicks outside those boxes still control the game.';
}
