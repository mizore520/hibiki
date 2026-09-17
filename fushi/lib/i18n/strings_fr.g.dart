part of 'strings.g.dart';

// Path: <root>
class _StringsFr extends _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsFr.build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.fr,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super.build(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <fr>.
  @override
  final TranslationMetadata<AppLocale, _StringsEn> $meta;

  @override
  late final _StringsFr _root = this; // ignore: unused_field

  // Translations
  @override
  String get about_tmdb_attribution =>
      'Cette application utilise TMDB et les API TMDB mais n\'est pas approuvée, certifiée ou autrement autorisée par TMDB.';
  @override
  String get action_exit => 'Quitter';
  @override
  String get action_favorite => 'Favori';
  @override
  String activity_days_ago({required Object n}) => 'il y a ${n} j';
  @override
  String activity_hours_ago({required Object n}) => 'il y a ${n} h';
  @override
  String get activity_just_now => 'À l\'instant';
  @override
  String activity_minutes_ago({required Object n}) => 'il y a ${n} min';
  @override
  String get add_to_collection => 'Ajouter à la collection';
  @override
  String get aidoku_extension_confirm_title =>
      'Installer l\'extension Aidoku ?';
  @override
  String get aidoku_extension_empty => 'Aucune extension Aidoku installée.';
  @override
  String get aidoku_extension_import => 'Importer une extension Aidoku (.aix)';
  @override
  String get aidoku_extension_imported => 'Extension Aidoku importée';
  @override
  String get aidoku_extension_remove => 'Supprimer l\'extension Aidoku';
  @override
  String get aidoku_extension_version => 'Version';
  @override
  String get aidoku_extension_warning =>
      'Les extensions Aidoku exécutent du code WebAssembly tiers avec accès réseau. Ne continuez qu\'avec des sources de confiance.';
  @override
  String get aidoku_extensions_title => 'Extensions Aidoku';
  @override
  String get aidoku_repository_add => 'Ajouter un dépôt Aidoku';
  @override
  String get aidoku_repository_added => 'Dépôt Aidoku ajouté';
  @override
  String get aidoku_repository_browse => 'Parcourir le dépôt';
  @override
  String get aidoku_repository_empty => 'Aucun dépôt Aidoku ajouté.';
  @override
  String get aidoku_repository_hint =>
      'Collez une URL de page d\'accueil ou d\'index.min.json d\'un dépôt Aidoku. Le dépôt communautaire est rempli par défaut.';
  @override
  String get aidoku_repository_identity_mismatch =>
      'Le paquet téléchargé ne correspond pas à l\'index du dépôt.';
  @override
  String get aidoku_repository_install => 'Installer';
  @override
  String get aidoku_repository_installed => 'Installée';
  @override
  String get aidoku_repository_remove => 'Supprimer le dépôt';
  @override
  String get aidoku_repository_search => 'Rechercher les sources du dépôt';
  @override
  String get aidoku_repository_sources => 'Sources du dépôt';
  @override
  String get aidoku_repository_update => 'Mettre à jour';
  @override
  String get aidoku_repository_url => 'URL du dépôt';
  @override
  String get aidoku_runtime_unavailable =>
      'Les extensions Aidoku sont actuellement disponibles uniquement sur macOS.';
  @override
  String get aidoku_webview_unsupported =>
      'Cette source nécessite des API WebView Aidoku pas encore prises en charge.';
  @override
  String get anime_download_back => 'Retour';
  @override
  String get anime_download_batch => 'Lot';
  @override
  String get anime_download_category_all => 'Tout';
  @override
  String get anime_download_category_english => 'Traduit en anglais';
  @override
  String get anime_download_category_non_english => 'Non anglais';
  @override
  String get anime_download_category_raw => 'Brut';
  @override
  String get anime_download_delete => 'Supprimer';
  @override
  String anime_download_episode_count({required Object count}) => 'ÉP ${count}';
  @override
  String get anime_download_generic_download => 'Télécharger';
  @override
  String get anime_download_generic_hint => 'Lien magnet';
  @override
  String get anime_download_generic_title =>
      'Coller un lien (livres, vidéos, tout)';
  @override
  String get anime_download_include_subs => 'Inclure les sous-titres';
  @override
  String get anime_download_kind_auto => 'Auto';
  @override
  String get anime_download_kind_book => 'Livre';
  @override
  String get anime_download_kind_video => 'Vidéo';
  @override
  String get anime_download_magnet_invalid => 'Lien magnet invalide';
  @override
  String get anime_download_no_results => 'Aucun résultat';
  @override
  String anime_download_no_results_detail({
    required Object query,
    required Object filters,
  }) =>
      'Le service a répondu avec succès mais a renvoyé 0 résultat. Requête : ${query} ; filtres : ${filters}. Essayez un autre titre ou élargissez les filtres.';
  @override
  String get anime_download_no_subs => 'Pas de sous-titres';
  @override
  String get anime_download_no_tasks => 'Aucune tâche de téléchargement';
  @override
  String get anime_download_nyaa_query => 'Termes de recherche Nyaa';
  @override
  String get anime_download_play_now => 'Lire pendant le téléchargement';
  @override
  String get anime_download_play_now_fail =>
      'Pas encore prêt (métadonnées en attente ou connexion échouée) — réessayez plus tard';
  @override
  String get anime_download_play_now_ok =>
      'Importé — ouvrez-le depuis la vidéothèque pour lire pendant le téléchargement';
  @override
  String get anime_download_push => 'Envoyer le téléchargement';
  @override
  String get anime_download_push_failed => 'Échec de l\'envoi vers qBittorrent';
  @override
  String get anime_download_pushed =>
      'Envoyé — il sera importé automatiquement une fois terminé';
  @override
  String get anime_download_refresh => 'Actualiser';
  @override
  String get anime_download_relocate => 'Renommer / déplacer';
  @override
  String anime_download_relocate_engine_failed({required Object reason}) =>
      'Échec, rien n\'a changé : ${reason}';
  @override
  String get anime_download_relocate_hint =>
      'Fushi renomme/déplace via le moteur de téléchargement, le partage n\'est pas interrompu. Un renommage dans l\'Explorateur ne peut jamais être récupéré.';
  @override
  String anime_download_relocate_library_failed({required Object reason}) =>
      'Fichiers déplacés, mais la bibliothèque pointe encore vers l\'ancien chemin : ${reason}';
  @override
  String get anime_download_relocate_move_title => 'Déplacer vers un dossier';
  @override
  String get anime_download_relocate_no_files =>
      'Cette tâche n\'a pas encore de fichiers à renommer (métadonnées pas prêtes)';
  @override
  String anime_download_relocate_ok({required Object rows}) =>
      'Renommé / déplacé ; ${rows} entrées de bibliothèque mises à jour';
  @override
  String get anime_download_relocate_pick_folder =>
      'Choisir le dossier de destination';
  @override
  String get anime_download_relocate_rename_title => 'Renommer le fichier';
  @override
  String get anime_download_require_subs => 'Sous-titres requis';
  @override
  String get anime_download_retry => 'Réessayer';
  @override
  String get anime_download_search => 'Rechercher';
  @override
  String get anime_download_search_error_proxy_hint =>
      'Si le site n\'est pas accessible directement, configurez un proxy réseau dans les paramètres de téléchargement.';
  @override
  String get anime_download_search_failed =>
      'Recherche échouée ou expirée. Appuyez sur Réessayer.';
  @override
  String get anime_download_search_hint => 'Titre d\'anime';
  @override
  String get anime_download_search_start_hint =>
      'Recherchez un titre ci-dessus — les torrents et sous-titres sont associés automatiquement. Les téléchargements ne sont pas limités aux vidéos : livres, manga, livres audio et jeux sont aussi importés.';
  @override
  String get anime_download_sort_date => 'Date de publication';
  @override
  String get anime_download_sort_seeders => 'Sources';
  @override
  String get anime_download_sort_size => 'Taille';
  @override
  String get anime_download_store_unavailable =>
      'Le stockage du plan de téléchargement est indisponible';
  @override
  String get anime_download_streaming_ready =>
      'Dans la bibliothèque · téléchargement en cours';
  @override
  String get anime_download_subs_badge => 'Sous-titres';
  @override
  String get anime_download_subs_deferred =>
      'Les sous-titres sont associés après le téléchargement, à partir des fichiers du pack';
  @override
  String get anime_download_subs_episodes_unverified =>
      'Les numéros d\'épisodes ne sont pas vérifiés pour ce pack — les sous-titres peuvent provenir d\'une autre saison.';
  @override
  String get anime_download_subs_failed =>
      'Recherche de sous-titres échouée. Appuyez sur Réessayer.';
  @override
  String get anime_download_subs_need_key =>
      'Entrez une clé API Jimaku ci-dessus pour rechercher des sous-titres.';
  @override
  String get anime_download_subs_pending =>
      'Sous-titres : en attente de la fin du téléchargement';
  @override
  String get anime_download_subs_retrying =>
      'Sous-titres : pas encore disponibles — nouvelle tentative automatique';
  @override
  String anime_download_subs_season_mismatch({required Object season}) =>
      'Aucune entrée de sous-titres ne correspond à la saison ${season} de ce pack — non sélectionné automatiquement. Choisissez-en un manuellement si vous le souhaitez.';
  @override
  String get anime_download_subs_unmatched =>
      'Sous-titres : aucune correspondance pour ce pack';
  @override
  String get anime_download_tasks => 'Tâches de téléchargement';
  @override
  String get anime_download_title => 'Téléchargement d\'anime';
  @override
  String get anime_download_trusted => 'Fiable';
  @override
  String get anime_download_trusted_only => 'Fiables uniquement';
  @override
  String get anime_download_unfiltered => 'Pas de filtre Fiable';
  @override
  String get anki_action_open_settings => 'Open settings';
  @override
  String get anki_allow_duplicates => 'Autoriser les doublons';
  @override
  String get anki_allow_duplicates_hint =>
      'Ignorer la vérification des doublons lors de l\'ajout de cartes';
  @override
  String get anki_ankimobile_imported => 'AnkiMobile configuration imported.';
  @override
  String get anki_ankimobile_opened =>
      'AnkiMobile opened. Approve the request there, then return to Fushi.';
  @override
  String get anki_card_action_failed =>
      'Action de carte échouée. Veuillez réessayer.';
  @override
  String get anki_compact_glossaries => 'Glossaires compacts';
  @override
  String get anki_compact_glossaries_hint =>
      'Utiliser un format compact pour les entrées de glossaire';
  @override
  String get anki_connect_addon_anki_not_running =>
      'Aucun Anki en cours d\'exécution trouvé. Démarrez Anki bureau d\'abord, puis réessayez.';
  @override
  String anki_connect_addon_download_failed({required Object error}) =>
      'Impossible de télécharger AnkiConnect depuis AnkiWeb : ${error}';
  @override
  String get anki_connect_addon_handed =>
      'AnkiConnect transmis à Anki. Confirmez l\'invite dans Anki, puis redémarrez Anki comme indiqué.';
  @override
  String get anki_connect_addon_install => 'Installer AnkiConnect';
  @override
  String get anki_connect_addon_install_hint =>
      'Télécharge AnkiConnect depuis AnkiWeb et le transmet à l\'Anki en cours d\'exécution. Anki vous demandera de confirmer, puis recommandera un redémarrage.';
  @override
  String get anki_connect_addon_invalid =>
      'AnkiWeb a renvoyé quelque chose qui n\'est pas un paquet d\'extension utilisable.';
  @override
  String anki_connect_addon_launch_failed({required Object error}) =>
      'Impossible de transmettre l\'extension à Anki : ${error}';
  @override
  String get anki_connect_api_key => 'Clé API';
  @override
  String get anki_connect_api_key_hint =>
      'Requis pour AnkiConnect distant ; doit correspondre à la clé configurée dans l\'extension';
  @override
  String anki_connect_backend_switch_failed({required Object error}) =>
      'Impossible de changer le moteur Anki : ${error}';
  @override
  String get anki_connect_host => 'Hôte';
  @override
  String get anki_connect_mobile_api_key_required =>
      'Configure a matching AnkiConnect API key before enabling the Android backend.';
  @override
  String get anki_connect_mobile_disabled_key_cleared =>
      'AnkiConnect nécessite une clé API sur mobile, l\'effacer a donc désactivé l\'interrupteur. Anki passe à nouveau par le moteur intégré.';
  @override
  String get anki_connect_port => 'Port';
  @override
  String get anki_connect_port_auto_fix => 'Passer à un port libre';
  @override
  String anki_connect_port_auto_fix_done({required Object port}) =>
      'AnkiConnect utilise désormais le port ${port}. Redémarrez Anki puis réessayez.';
  @override
  String get anki_connect_port_auto_fix_hint =>
      'Choisit un port libre et l\'écrit à la fois dans Hibiki et dans la configuration du module AnkiConnect. Redémarrez Anki pour l\'appliquer.';
  @override
  String anki_connect_port_auto_fix_manual({required Object port}) =>
      'Hibiki utilise désormais le port ${port}, mais la configuration du module AnkiConnect est introuvable. Définissez webBindPort sur ${port} dans Anki (Outils → Modules complémentaires → AnkiConnect → Configuration), puis redémarrez Anki.';
  @override
  String get anki_connect_port_auto_fix_none =>
      'Aucun port libre trouvé sur cette machine.';
  @override
  String get anki_connect_use_on_mobile => 'Use AnkiConnect on Android';
  @override
  String get anki_connect_use_on_mobile_hint =>
      'À utiliser uniquement sur un réseau de confiance. AnkiConnect utilise HTTP en clair ; configurez une clé API correspondante, puis rafraîchissez les paquets et types de notes après avoir changé.';
  @override
  String get anki_create_lapis => 'Créer un paquet Lapis';
  @override
  String get anki_create_lapis_exists =>
      'Le type de note et le paquet Lapis existent déjà — sélectionnés.';
  @override
  String anki_create_lapis_failed({required Object error}) =>
      'Impossible de créer le paquet Lapis : ${error}';
  @override
  String get anki_create_lapis_hint =>
      'Ajoute le type de note Lapis et un paquet Lapis à Anki, puis les sélectionne.';
  @override
  String get anki_create_lapis_success => 'Type de note et paquet Lapis créés.';
  @override
  String get anki_deck => 'Paquet';
  @override
  String get anki_dedup_auto => 'Traitement automatique';
  @override
  String get anki_dedup_auto_delete =>
      'Supprimer automatiquement sans demander';
  @override
  String get anki_dedup_auto_delete_hint =>
      'Passe la boîte de confirmation. Seules les copies supplémentaires identiques sont retirées et rien n\'est ré-encodé, mais la suppression est irréversible.';
  @override
  String anki_dedup_auto_done({required Object count, required Object size}) =>
      '${count} fichiers média Anki en double supprimés, ${size} récupérés';
  @override
  String anki_dedup_auto_found({required Object count, required Object size}) =>
      '${count} fichiers média Anki en double trouvés (${size} récupérables)';
  @override
  String get anki_dedup_auto_hint =>
      'Désactivé par défaut. Activé, Fushi analyse au démarrage (au plus une fois par semaine) et vous montre la liste d\'abord — rien n\'est supprimé tant que vous ne confirmez pas.';
  @override
  String get anki_dedup_auto_review => 'Examiner';
  @override
  String get anki_dedup_cancelled =>
      'Déduplication annulée ; les modifications terminées sont conservées.';
  @override
  String get anki_dedup_cancelling => 'Annulation…';
  @override
  String anki_dedup_failed({required Object error}) =>
      'Déduplication échouée : ${error}';
  @override
  String get anki_dedup_plan_busy_note =>
      'Anki peut ne pas répondre pendant l\'exécution ; évitez d\'utiliser Anki jusqu\'à la fin.';
  @override
  String get anki_dedup_plan_delete => 'Supprimer ces fichiers';
  @override
  String anki_dedup_plan_entry({
    required Object file,
    required Object size,
    required Object canonical,
  }) => 'Supprimer ${file} (${size}) — conservation de ${canonical}';
  @override
  String anki_dedup_plan_intro({required Object count, required Object size}) =>
      '${count} copies supplémentaires, ${size} récupérables. Une copie de chaque fichier est conservée et chaque référence est redirigée d\'abord ; rien n\'est jamais ré-encodé.';
  @override
  String get anki_dedup_plan_journal =>
      'Un journal de chaque réécriture et suppression est écrit dans le dossier de sauvegarde d\'abord.';
  @override
  String get anki_dedup_plan_title => 'Fichiers à supprimer';
  @override
  String anki_dedup_progress_freed({required Object size}) =>
      '${size} libérés jusqu\'ici';
  @override
  String anki_dedup_progress_hashing({
    required Object done,
    required Object total,
  }) => 'Comparaison des fichiers de même taille… (${done} / ${total})';
  @override
  String anki_dedup_progress_resolving({
    required Object done,
    required Object total,
  }) => 'Traitement des doublons… (${done} / ${total})';
  @override
  String anki_dedup_progress_scanning({required Object count}) =>
      'Analyse du dossier média… (${count} fichiers trouvés)';
  @override
  String get anki_dedup_progress_title => 'Déduplication des médias';
  @override
  String anki_dedup_report_body({
    required Object groups,
    required Object removed,
    required Object size,
    required Object notes,
    required Object models,
    required Object skipped,
  }) =>
      '${groups} groupes de doublons ; ${removed} copies supplémentaires (${size}) ; ${notes} notes et ${models} types de notes réécrits ; ${skipped} ignorés.';
  @override
  String get anki_dedup_report_cancelled_note =>
      'Annulé prématurément — les chiffres ci-dessous ne couvrent que ce qui a été terminé.';
  @override
  String get anki_dedup_report_clean => 'Aucun doublon identique trouvé.';
  @override
  String get anki_dedup_report_dry_note =>
      'Analyse uniquement — rien n\'a été modifié.';
  @override
  String get anki_dedup_report_title => 'Rapport de déduplication média';
  @override
  String get anki_dedup_run => 'Dédupliquer maintenant';
  @override
  String get anki_dedup_run_hint =>
      'Analyse d\'abord et liste exactement ce qui serait supprimé ; rien n\'est retiré tant que vous ne confirmez pas.';
  @override
  String get anki_dedup_scan => 'Rechercher les doublons (aucune modification)';
  @override
  String get anki_dedup_section => 'Optimisation du stockage média Anki';
  @override
  String get anki_dedup_unavailable =>
      'Nécessite Anki en cours d\'exécution sur cette machine (AnkiConnect).';
  @override
  String get anki_duplicate_scope => 'Portée de vérification des doublons';
  @override
  String get anki_duplicate_scope_collection => 'Toute la collection';
  @override
  String get anki_duplicate_scope_deck =>
      'Paquet sélectionné (et ses sous-paquets)';
  @override
  String get anki_duplicate_scope_deck_root =>
      'Paquet racine (tous les sous-paquets)';
  @override
  String get anki_duplicate_scope_hint =>
      'Quels paquets sont recherchés pour vérifier si une carte existe déjà. AnkiConnect uniquement ; AnkiDroid recherche toujours dans toute la collection.';
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
      'La collection d\'AnkiDroid est actuellement indisponible. Ouvrez AnkiDroid au moins une fois, assurez-vous qu\'il n\'est pas en cours de synchronisation et que l\'API est activée, puis réessayez.';
  @override
  String get anki_error_connection_refused =>
      'Connexion à Anki impossible : connexion refusée. Vérifiez qu\'Anki Desktop est lancé et que le module AnkiConnect est installé.';
  @override
  String get anki_error_connection_timeout =>
      'Connexion à Anki impossible : délai dépassé. Vérifiez l\'hôte, le port et le pare-feu.';
  @override
  String get anki_error_connection_unknown =>
      'Export vers Anki impossible : une erreur de connexion inattendue est survenue. Consultez le journal d\'erreurs.';
  @override
  String get anki_error_field_mapping_mismatch =>
      'Aucune de vos correspondances des champs ne correspond au type de note sélectionné ; Anki a donc refusé la carte. Ouvrez Paramètres Anki pour remapper les champs, ou utilisez « Créer un paquet Lapis ».';
  @override
  String get anki_error_first_field_empty =>
      'Le premier champ du type de note sélectionné est vide, et Anki refuse une telle note. Associez-lui un champ dans Paramètres Anki.';
  @override
  String get anki_error_http =>
      'Export vers Anki impossible : une erreur HTTP est survenue lors de la communication avec AnkiConnect.';
  @override
  String get anki_error_paired_device_unreachable =>
      'Impossible de créer la carte, car aucun appareil apparié n\'a pu être joint. Assurez-vous que Fushi est lancé sur l\'appareil apparié, ou désactivez « Envoyer au périphérique apparié » dans les Paramètres Anki pour créer les cartes localement.';
  @override
  String get anki_error_permission_denied =>
      'AnkiDroid n\'a pas accordé l\'autorisation d\'accès aux cartes. Approuvez la boîte de dialogue d\'autorisation système qui vient d\'apparaître, puis appuyez à nouveau sur le bouton pour exporter.';
  @override
  String get anki_error_permission_permanently_denied =>
      'AnkiDroid card access was permanently denied, so the system no longer shows the permission dialog. Open app settings and grant the AnkiDroid permission, then try again.';
  @override
  String get anki_fetch => 'Actualiser les paquets et types de notes';
  @override
  String get anki_fetching => 'Récupération...';
  @override
  String get anki_field_mappings => 'Correspondances des champs';
  @override
  String get anki_field_not_mapped => 'Non mappé';
  @override
  String get anki_lapis_apply => 'Appliquer le style à Anki';
  @override
  String get anki_lapis_apply_done =>
      'Style Lapis appliqué. Une sauvegarde a été créée d\'abord.';
  @override
  String anki_lapis_apply_failed({required Object error}) =>
      'Impossible d\'appliquer le style : ${error}';
  @override
  String get anki_lapis_backup => 'Sauvegarder le modèle Lapis';
  @override
  String anki_lapis_backup_done({required Object path}) =>
      'Modèle sauvegardé : ${path}';
  @override
  String anki_lapis_backup_done_pruned({
    required Object path,
    required Object count,
  }) =>
      'Sauvegardé dans ${path} (${count} anciennes sauvegardes élaguées par la politique 90 jours / 10 max)';
  @override
  String anki_lapis_backup_failed({required Object error}) =>
      'Sauvegarde échouée : ${error}';
  @override
  String get anki_lapis_custom_css => 'CSS personnalisé';
  @override
  String get anki_lapis_custom_css_hint =>
      'Ajouté à la feuille de style Lapis dans une section utilisateur protégée.';
  @override
  String get anki_lapis_font_scale => 'Échelle de police de la carte';
  @override
  String get anki_lapis_font_scale_hint =>
      'Met à l\'échelle toutes les tailles de police Lapis ; prend effet via « Appliquer le style à Anki ».';
  @override
  String get anki_lapis_foreign_edit_body =>
      'Le modèle Lapis dans Anki diffère de ce que Fushi a appliqué en dernier — il a peut-être été modifié manuellement. L\'application écrasera ; une sauvegarde est créée d\'abord. Continuer ?';
  @override
  String get anki_lapis_foreign_edit_title => 'Modèle modifié dans Anki';
  @override
  String get anki_lapis_not_found =>
      'Type de note Lapis introuvable dans Anki.';
  @override
  String get anki_lapis_restore => 'Restaurer depuis une sauvegarde';
  @override
  String get anki_lapis_restore_confirm =>
      'Écraser le modèle Lapis dans Anki avec cette sauvegarde ? L\'état actuel est sauvegardé d\'abord.';
  @override
  String get anki_lapis_restore_done => 'Modèle restauré.';
  @override
  String get anki_lapis_restore_empty => 'Aucune sauvegarde.';
  @override
  String get anki_lapis_restore_factory => 'Restaurer le Lapis d\'usine';
  @override
  String get anki_lapis_restore_factory_confirm =>
      'Cela écrase le style et les modèles de carte Lapis dans Anki avec la version fournie par Fushi, et réinitialise la taille de police, le CSS personnalisé et les zones personnalisées. Une sauvegarde de l\'état actuel est créée d\'abord. Les données des cartes ne sont pas touchées.';
  @override
  String get anki_lapis_restore_factory_done =>
      'Lapis restauré aux paramètres d\'usine';
  @override
  String anki_lapis_restore_factory_failed({required Object error}) =>
      'Restauration échouée : ${error}';
  @override
  String get anki_lapis_restore_factory_hint =>
      'Écraser le type de note Lapis dans Anki avec la version fournie dans Fushi et effacer toutes les personnalisations.';
  @override
  String anki_lapis_restore_failed({required Object error}) =>
      'Restauration échouée : ${error}';
  @override
  String get anki_lapis_section => 'Style de carte Lapis';
  @override
  String get anki_lapis_up_to_date => 'Le style Lapis est déjà à jour.';
  @override
  String get anki_lapis_visual_advanced_css => 'CSS avancé';
  @override
  String get anki_lapis_visual_alignment => 'Alignement';
  @override
  String get anki_lapis_visual_back => 'Verso';
  @override
  String get anki_lapis_visual_background_color => 'Surlignage d\'arrière-plan';
  @override
  String get anki_lapis_visual_block_add => 'Ajouter une zone';
  @override
  String get anki_lapis_visual_block_anchor => 'Position sur la carte';
  @override
  String get anki_lapis_visual_block_anchor_above_definition =>
      'Sous la phrase';
  @override
  String get anki_lapis_visual_block_anchor_above_sentence => 'Sous le mot';
  @override
  String get anki_lapis_visual_block_anchor_below_definition =>
      'Sous les définitions';
  @override
  String get anki_lapis_visual_block_anchor_bottom => 'Bas de la carte';
  @override
  String get anki_lapis_visual_block_anchor_top => 'Haut de la carte';
  @override
  String get anki_lapis_visual_block_delete => 'Supprimer la zone';
  @override
  String get anki_lapis_visual_block_fields => 'Champs affichés ici';
  @override
  String anki_lapis_visual_block_name({required Object index}) =>
      'Zone ${index}';
  @override
  String get anki_lapis_visual_block_needs_note_type =>
      'Choisissez d\'abord un type de note pour sélectionner les champs.';
  @override
  String get anki_lapis_visual_block_no_fields => 'Aucun champ sélectionné';
  @override
  String get anki_lapis_visual_blocks => 'Zones personnalisées';
  @override
  String get anki_lapis_visual_blocks_hint =>
      'Afficher des champs existants ailleurs sur la carte. Affichage uniquement : aucun champ Anki n\'est ajouté ou supprimé.';
  @override
  String get anki_lapis_visual_bold => 'Gras';
  @override
  String get anki_lapis_visual_border_color => 'Couleur de bordure';
  @override
  String get anki_lapis_visual_border_width => 'Bordure';
  @override
  String get anki_lapis_visual_box_layout => 'Apparence de la boîte';
  @override
  String get anki_lapis_visual_color => 'Couleur du texte';
  @override
  String get anki_lapis_visual_color_custom => 'Personnalisé';
  @override
  String get anki_lapis_visual_color_picker_title => 'Choisir une couleur';
  @override
  String get anki_lapis_visual_corner_radius => 'Rayon des coins';
  @override
  String get anki_lapis_visual_default => 'Par défaut';
  @override
  String get anki_lapis_visual_editing_now => 'En cours de modification';
  @override
  String get anki_lapis_visual_editor => 'Éditeur visuel';
  @override
  String get anki_lapis_visual_editor_hint =>
      'Prévisualisez la carte Lapis, puis modifiez le style, la position et le mappage de champs de chaque zone sans écrire de CSS.';
  @override
  String get anki_lapis_visual_field_definition_box => 'Boîte de définition';
  @override
  String get anki_lapis_visual_field_definition_content =>
      'Définition complète';
  @override
  String get anki_lapis_visual_field_definition_example =>
      'Exemple de définition';
  @override
  String get anki_lapis_visual_field_definition_info =>
      'Indicateur de définition';
  @override
  String get anki_lapis_visual_field_definition_info_note =>
      'Visible uniquement sur les cartes qui conservent plus d\'un bloc de définition ; les cartes à définition unique le masquent.';
  @override
  String get anki_lapis_visual_field_dictionary_entry =>
      'Entrée de dictionnaire';
  @override
  String get anki_lapis_visual_field_dictionary_name => 'Nom du dictionnaire';
  @override
  String get anki_lapis_visual_field_dictionary_name_note =>
      'Sur les cartes Fushi, cette étiquette porte aussi les tags de catégorie grammaticale, les deux ne peuvent donc pas être stylisés séparément.';
  @override
  String get anki_lapis_visual_field_expression => 'Mot';
  @override
  String get anki_lapis_visual_field_glossaries => 'Autres définitions';
  @override
  String get anki_lapis_visual_field_primary_definition =>
      'Définition principale';
  @override
  String get anki_lapis_visual_field_reading => 'Lecture';
  @override
  String get anki_lapis_visual_field_selected_definition =>
      'Définition sélectionnée';
  @override
  String get anki_lapis_visual_field_sentence => 'Phrase';
  @override
  String anki_lapis_visual_font_size({required Object percent}) =>
      'Taille de police : ${percent} %';
  @override
  String get anki_lapis_visual_front => 'Recto';
  @override
  String get anki_lapis_visual_layout => 'Disposition';
  @override
  String get anki_lapis_visual_layout_audio => 'Boutons audio';
  @override
  String get anki_lapis_visual_layout_audio_alt => 'Dans la phrase';
  @override
  String get anki_lapis_visual_layout_audio_fixed => 'Épinglés en bas';
  @override
  String get anki_lapis_visual_layout_audio_header => 'À côté de la lecture';
  @override
  String get anki_lapis_visual_layout_hint =>
      'Utilise les propres interrupteurs de disposition de Lapis, de sorte qu\'Anki bureau et mobile les suivent.';
  @override
  String get anki_lapis_visual_layout_picture => 'Position de l\'image';
  @override
  String get anki_lapis_visual_layout_picture_alt => 'Dans la phrase';
  @override
  String get anki_lapis_visual_layout_picture_left => 'À gauche du mot';
  @override
  String get anki_lapis_visual_layout_picture_right => 'À droite du mot';
  @override
  String get anki_lapis_visual_layout_sentence => 'Position de la phrase';
  @override
  String get anki_lapis_visual_layout_sentence_above =>
      'Au-dessus des définitions';
  @override
  String get anki_lapis_visual_layout_sentence_below =>
      'En dessous des définitions';
  @override
  String get anki_lapis_visual_line_height => 'Hauteur de ligne';
  @override
  String get anki_lapis_visual_mapping_hint =>
      'Champs Anki qui remplissent la zone sélectionnée. Les modifications sont enregistrées avec le style.';
  @override
  String get anki_lapis_visual_mapping_none =>
      'Cette zone est dessinée par le modèle lui-même et n\'a pas de champ propre.';
  @override
  String get anki_lapis_visual_margin => 'Espacement extérieur';
  @override
  String get anki_lapis_visual_padding => 'Espacement intérieur';
  @override
  String get anki_lapis_visual_preview => 'Aperçu de carte Lapis';
  @override
  String get anki_lapis_visual_reset_field => 'Réinitialiser le champ';
  @override
  String get anki_lapis_visual_select_field => 'Choisissez quoi modifier';
  @override
  String get anki_lapis_visual_select_field_hint =>
      'Cliquez sur n\'importe quelle partie de l\'aperçu, ou choisissez ci-dessous. Ce que vous choisissez est ce que les contrôles en dessous modifient.';
  @override
  String get anki_lapis_visual_target_card_content => 'Contenu de la carte';
  @override
  String get anki_lapis_visual_target_definition => 'Définition';
  @override
  String get anki_lapis_visual_target_inside_definition =>
      'À l\'intérieur de la définition';
  @override
  String get anki_mine_to_server => 'Envoyer au périphérique apparié';
  @override
  String get anki_mine_to_server_hint =>
      'Envoyer les cartes créées vers l\'Anki de l\'hôte apparié (ses paquets et paramètres) au lieu de cet appareil. Nécessite un appairage d\'interconnexion.';
  @override
  String get anki_mined_action_add_duplicate => 'Ajouter comme nouvelle carte';
  @override
  String get anki_mined_action_overwrite => 'Écraser cette carte';
  @override
  String get anki_mined_action_view => 'Voir / ouvrir dans Anki';
  @override
  String get anki_mined_card_subtitle =>
      'Choisissez quoi faire avec la carte correspondante.';
  @override
  String get anki_mined_card_title => 'Carte déjà dans Anki';
  @override
  String anki_mined_multiple_matches({required Object count}) =>
      '${count} cartes correspondantes';
  @override
  String get anki_not_configured =>
      'Touchez « Actualiser » pour charger vos paquets et types de notes Anki.';
  @override
  String get anki_note_open_failed =>
      'Impossible d\'ouvrir la carte dans Anki.';
  @override
  String get anki_note_type => 'Type de note';
  @override
  String get anki_note_viewer_empty =>
      'Cette carte n\'a pas de champs lisibles.';
  @override
  String get anki_note_viewer_open_in_anki => 'Ouvrir dans Anki';
  @override
  String get anki_note_viewer_title => 'Carte existante';
  @override
  String get anki_open_no_card => 'Aucune carte trouvée pour ce mot dans Anki.';
  @override
  String get anki_overwrite_scope => 'Plage de remplacement';
  @override
  String get anki_overwrite_scope_all => 'Toutes les cartes correspondantes';
  @override
  String get anki_overwrite_scope_hint =>
      'Quelles cartes déjà créées le ✓ vert peut remplacer';
  @override
  String get anki_overwrite_scope_latest => 'Dernière carte uniquement';
  @override
  String get anki_refresh_hint =>
      'Après avoir créé ou renommé un paquet ou un type de note dans Anki, touchez ici pour actualiser.';
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
      'Sélectionner la valeur pour ${field}';
  @override
  String get anki_settings_label => 'Paramètres Anki';
  @override
  String get anki_tag_default_section => 'Étiquettes par défaut';
  @override
  String get anki_tag_include_category =>
      'Ajouter une étiquette de catégorie source';
  @override
  String get anki_tag_include_category_hint =>
      'Les livres reçoivent « book », les vidéos « video », les jeux « game »';
  @override
  String get anki_tag_include_fushi => 'Ajouter l\'étiquette « fushi »';
  @override
  String get anki_tag_include_fushi_hint =>
      'Marquer chaque carte créée par Fushi';
  @override
  String get anki_tags => 'Étiquettes';
  @override
  String get anki_tags_hint =>
      'Étiquettes séparées par des espaces ajoutées à chaque carte';
  @override
  String get app_icon_label => 'Icône de l\'application';
  @override
  String get app_icon_presets => 'Préréglages';
  @override
  String get app_ui_scale => 'Taille de l\'interface';
  @override
  String get app_ui_scale_hint =>
      'Scales app text and spacing. Lower it on large screens if controls feel oversized.';
  @override
  String get app_version => 'Version de l\'application';
  @override
  String get apply_theme => 'Appliquer le thème';
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
      'Modèles de reconnaissance vocale sur l’appareil. Téléchargez uniquement les langues dont vous avez besoin.';
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
      'Impossible d\'extraire l\'extrait audio — la source audio est peut-être manquante ou illisible';
  @override
  String get audio_import => 'Importer audio';
  @override
  String get audio_panel_add_audio => 'Ajouter de l\'audio';
  @override
  String get audio_panel_auto => 'Automatique';
  @override
  String get audio_panel_pick_new_subtitle =>
      'Choisir un nouveau fichier de sous-titres';
  @override
  String get audio_source_added => 'Source audio ajoutée';
  @override
  String audio_source_dns_error({required Object host}) =>
      'Échec de connexion de la source audio : impossible de résoudre "${host}" — vérifiez votre réseau ou supprimez cette source dans les paramètres';
  @override
  String get audio_source_edit_target_gone =>
      'Cette source audio n\'existe plus — modification annulée';
  @override
  String get audio_source_edit_url => 'Modifier le lien de la source audio';
  @override
  String audio_source_error({required Object detail}) =>
      'Erreur de source audio : ${detail}';
  @override
  String get audio_source_fushi_interconnect => 'Fushi Interconnect';
  @override
  String get audio_source_loopback_warning =>
      'Pointe vers cet appareil — redirigez après avoir changé de machine';
  @override
  String audio_source_request_error({required Object detail}) =>
      'Échec de la requête source audio : ${detail}';
  @override
  String audio_source_timeout({required Object host}) =>
      'Délai d\'attente source audio : "${host}" — serveur ne répond pas, réessayez plus tard ou changez de source';
  @override
  String get audio_source_updated => 'Source audio mise à jour';
  @override
  String get audio_source_url_invalid =>
      'Le lien doit être en http(s) et contenir un emplacement pour le terme ou la lecture';
  @override
  String get audio_unavailable => 'Aucun audio trouvé.';
  @override
  String get audio_volume => 'Volume';
  @override
  String get audiobook_attached => 'Livre audio attaché';
  @override
  String get audiobook_audio_missing => 'Fichier audio manquant';
  @override
  String get audiobook_background_play => 'Continuer après la sortie';
  @override
  String get audiobook_background_play_hint =>
      'Désactivé, le livre audio s\'arrête quand vous quittez le lecteur. Activez-le pour continuer en arrière-plan.';
  @override
  String get audiobook_delete => 'Supprimer le livre audio';
  @override
  String get audiobook_delete_confirm =>
      'Supprimer le livre audio associé ? Ses fichiers audio seront retirés de cet appareil.';
  @override
  String get audiobook_export_clip => 'Exporter un clip vidéo';
  @override
  String get audiobook_export_clip_failed => 'Exportation du clip échouée';
  @override
  String get audiobook_export_clip_in_progress => 'Exportation du clip…';
  @override
  String get audiobook_export_clip_no_selection =>
      'Sélectionnez d\'abord du texte pour exporter un clip';
  @override
  String get audiobook_export_clip_no_text =>
      'Cette sélection n\'a pas de texte à afficher';
  @override
  String get audiobook_export_clip_saved => 'Clip enregistré';
  @override
  String get audiobook_export_clip_too_long =>
      'L\'audio de la sélection est trop long pour être exporté (limite : 5 minutes)';
  @override
  String get audiobook_export_clip_unsupported_range =>
      'Cette sélection ne peut pas être exportée (traverse un chapitre ou un fichier audio)';
  @override
  String get audiobook_import => 'Importer un livre audio';
  @override
  String get audiobook_import_error => 'échec de l\'importation';
  @override
  String audiobook_import_error_copy_failed({required Object name}) =>
      'Échec de la copie du fichier : ${name}';
  @override
  String audiobook_import_error_disk_full({required Object size}) =>
      'Espace disque insuffisant. Requis : ${size}';
  @override
  String get audiobook_import_success => 'Livre audio importé';
  @override
  String get audiobook_load_error => 'Échec du chargement du livre audio.';
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
  String get audiobook_pick_alignment => 'Choisir le fichier d\'alignement';
  @override
  String get audiobook_reference_original =>
      'Référencer les fichiers originaux';
  @override
  String get audiobook_reference_original_desc =>
      'Garder l\'audio à son emplacement actuel et lire depuis son chemin d\'origine ; le livre sera inutilisable si le fichier est déplacé ou supprimé.';
  @override
  String get audiobook_relocate => 'Déplacer le fichier';
  @override
  String get audiobook_relocate_done => 'Audio déplacé';
  @override
  String get audiobook_rematch_all_zero =>
      'Toutes les fenêtres ont obtenu 0 %, veuillez ajuster manuellement';
  @override
  String audiobook_rematch_auto_failed({required Object error}) =>
      'échec de la correspondance automatique : ${error}';
  @override
  String get audiobook_rematch_auto_match => 'Correspondance automatique';
  @override
  String audiobook_rematch_auto_picked({
    required Object window,
    required Object pct,
  }) => 'Sélection automatique de ${window} (taux ${pct}%)';
  @override
  String audiobook_rematch_default_value({required Object n}) =>
      'Par défaut ${n}';
  @override
  String audiobook_rematch_failed({required Object error}) =>
      'échec de la correspondance : ${error}';
  @override
  String audiobook_rematch_health_label({
    required Object pct,
    required Object detail,
  }) => '${pct} correspondance — ${detail}';
  @override
  String get audiobook_rematch_matching => 'Correspondance en cours...';
  @override
  String get audiobook_rematch_no_chapters =>
      'EPUB ne contient aucun texte de chapitre';
  @override
  String get audiobook_rematch_no_cues_to_match =>
      'Aucun repère à faire correspondre';
  @override
  String get audiobook_rematch_no_sections =>
      'Aucun texte de chapitre trouvé, correspondance automatique impossible';
  @override
  String get audiobook_rematch_no_stored_cues =>
      'Aucun repère enregistré, impossible de relancer';
  @override
  String audiobook_rematch_result({
    required Object pct,
    required Object window,
  }) => 'Recorrespondance : ${pct}% (fenêtre : ${window})';
  @override
  String get audiobook_rematch_search_window => 'Fenêtre de recherche';
  @override
  String get audiobook_rematch_similarity_threshold => 'Seuil de similarité';
  @override
  String get audiobook_rematch_threshold_hint =>
      'Similarité minimale pour la correspondance floue (coefficient de Dice). Abaissez pour tolérer plus de différences, mais une valeur trop basse provoque de fausses correspondances.';
  @override
  String get audiobook_rematch_window_hint =>
      'Nombre de caractères à rechercher en avant par repère dans le texte. Ajustez si le taux de correspondance est faible ; une valeur trop élevée peut fausser le curseur avec des repères courts et bruités.';
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
      'Ajouter automatiquement le titre du livre aux étiquettes';
  @override
  String auto_chapter({required Object n}) => 'Chapitre ${n}';
  @override
  String get auto_read_on_lookup =>
      'Lire automatiquement le mot lors de la recherche';
  @override
  String get auto_search => 'Recherche automatique';
  @override
  String get auto_search_debounce_delay => 'Délai de la recherche automatique';
  @override
  String get auto_select_search_window =>
      'Sélection automatique de la fenêtre de recherche';
  @override
  String get auto_select_search_window_hint =>
      'Tester plusieurs tailles de fenêtre à l\'importation et choisir celle avec le meilleur taux de correspondance';
  @override
  String get av_sync => 'Synchro A/V';
  @override
  String get av_sync_reset => 'Réinitialiser';
  @override
  String get back => 'Retour';
  @override
  String get backup_category_audiobooks => 'Audio des livres audio';
  @override
  String get backup_category_audiobooks_desc =>
      'Audio et alignement des livres audio';
  @override
  String get backup_category_books => 'Livres';
  @override
  String get backup_category_books_desc =>
      'Fichiers de livres (EPUB et contenu extrait)';
  @override
  String get backup_category_dictionary => 'Dictionnaires';
  @override
  String get backup_category_dictionary_desc =>
      'Dictionnaires importés et leurs fichiers';
  @override
  String get backup_category_fonts => 'Polices personnalisées';
  @override
  String get backup_category_fonts_desc =>
      'Fichiers de polices personnalisées importés';
  @override
  String get backup_category_local_audio => 'Bases audio locales';
  @override
  String get backup_category_local_audio_desc =>
      'Bases de données audio de prononciation locale';
  @override
  String get backup_category_profiles => 'Profils';
  @override
  String get backup_category_profiles_desc => 'Profils de configuration';
  @override
  String get backup_category_progress => 'Progression de lecture';
  @override
  String get backup_category_progress_desc => 'Positions de lecture et signets';
  @override
  String get backup_category_settings => 'Paramètres';
  @override
  String get backup_category_settings_desc =>
      'Paramètres de l\'application et du lecteur';
  @override
  String get backup_category_statistics => 'Statistiques';
  @override
  String get backup_category_statistics_desc =>
      'Statistiques de lecture, vidéo et création de cartes';
  @override
  String get backup_category_videos => 'Vidéos';
  @override
  String get backup_category_videos_desc => 'Fichiers vidéo locaux';
  @override
  String get backup_export => 'Exporter la sauvegarde';
  @override
  String get backup_export_books_all => 'Tous les livres';
  @override
  String backup_export_books_selected({required Object count}) =>
      '${count} livres sélectionnés';
  @override
  String get backup_export_categories_hint =>
      'Cochez ce qui doit être inclus dans la sauvegarde. Décocher Livres supprime entièrement ces livres — leur contenu et leurs données partent avec.';
  @override
  String get backup_export_categories_title => 'Choisir le contenu à exporter';
  @override
  String get backup_export_choose_books => 'Choisir les livres';
  @override
  String get backup_export_choose_videos => 'Choisir les vidéos';
  @override
  String backup_export_dictionaries_skipped({
    required Object n,
    required Object names,
  }) =>
      'Exported, but ${n} dictionary(s) were skipped: their files are missing on this device (${names})';
  @override
  String backup_export_failed({required Object message}) =>
      'Échec de l\'export de la sauvegarde : ${message}';
  @override
  String get backup_export_hint =>
      'Choisissez ce qu’il faut inclure ; la base de données (livres, progression, statistiques) est toujours incluse. Décochez les éléments volumineux (audio local, vidéos) pour réduire la sauvegarde.';
  @override
  String get backup_export_no_books => 'Aucun livre à choisir';
  @override
  String get backup_export_no_videos => 'Aucune vidéo à choisir';
  @override
  String get backup_export_select_all => 'Tout sélectionner';
  @override
  String get backup_export_select_none => 'Tout désélectionner';
  @override
  String get backup_export_success => 'Sauvegarde exportée avec succès';
  @override
  String get backup_export_videos_all => 'Toutes les vidéos';
  @override
  String backup_export_videos_selected({required Object count}) =>
      '${count} vidéos sélectionnées';
  @override
  String get backup_exporting => 'Création de la sauvegarde…';
  @override
  String get backup_import => 'Importer une sauvegarde';
  @override
  String backup_import_confirm({
    required Object date,
    required Object bookCount,
    required Object statsCount,
  }) =>
      'Cela remplacera toutes les données actuelles par la sauvegarde du ${date}.\n\n${bookCount} livres, ${statsCount} enregistrements de statistiques.\n\nL\'application redémarrera après la restauration.';
  @override
  String get backup_import_confirm_title => 'Restaurer la sauvegarde ?';
  @override
  String get backup_import_contents_hint =>
      'Décochez un élément pour l\'ignorer.';
  @override
  String get backup_import_contents_title => 'Cette sauvegarde contient';
  @override
  String backup_import_failed({required Object message}) =>
      'Échec de l\'import de la sauvegarde : ${message}';
  @override
  String get backup_import_hint =>
      'Restaurer depuis un fichier de sauvegarde. L\'application redémarrera.';
  @override
  String get backup_import_invalid => 'Fichier de sauvegarde invalide';
  @override
  String backup_import_merge_preview({
    required Object bookCount,
    required Object progressCount,
  }) =>
      'La fusion ajoutera ${bookCount} livres et mettra à jour ${progressCount} positions de lecture.';
  @override
  String get backup_import_mode_label => 'Mode d\'importation';
  @override
  String get backup_import_mode_merge =>
      'Fusionner avec la bibliothèque actuelle';
  @override
  String get backup_import_mode_overwrite => 'Écraser toute la bibliothèque';
  @override
  String get backup_import_overlay_title => 'Importation de la sauvegarde';
  @override
  String get backup_import_overlay_warning =>
      'Restauration de vos données. Veuillez ne pas fermer l\'application.';
  @override
  String get backup_import_preserve_sync_note =>
      'Vos réglages de sync sur cet appareil (compte et identifiants) seront conservés.';
  @override
  String get backup_import_restart_button => 'Redémarrer maintenant';
  @override
  String get backup_import_settings_off_hint =>
      'Conserver les polices/apparence/profils de cet appareil ; ne restaurer que les livres et données de lecture.';
  @override
  String get backup_import_settings_on_hint =>
      'Restauration complète : polices, apparence et profils proviennent de la sauvegarde.';
  @override
  String get backup_import_settings_toggle =>
      'Importer les réglages et profils';
  @override
  String get backup_import_success => 'Sauvegarde restaurée. Redémarrage…';
  @override
  String get backup_import_validating_hint =>
      'Vérification et prévisualisation du fichier de sauvegarde. Cela peut prendre un moment.';
  @override
  String get backup_import_validating_title => 'Lecture de la sauvegarde…';
  @override
  String backup_schema_newer({required Object version}) =>
      'Cette sauvegarde nécessite une version plus récente de l\'application (schéma ${version}). Veuillez d\'abord mettre à jour.';
  @override
  String batch_add_to_collection_success({required Object n}) =>
      '${n} élément(s) ajouté(s) à la collection.';
  @override
  String batch_delete_confirm({required Object n}) =>
      'Supprimer ${n} livre(s) ? Cette action est irréversible.';
  @override
  String batch_delete_confirm_video({required Object n}) =>
      'Supprimer ${n} vidéo(s) ? Cette action est irréversible.';
  @override
  String batch_delete_mixed_confirm({required Object n, required Object m}) =>
      'Supprimer ${n} média(s) et dissoudre ${m} collection(s) ? Cette action est irréversible.';
  @override
  String batch_delete_mixed_success({required Object n, required Object m}) =>
      '${n} média(s) supprimé(s), ${m} collection(s) dissoute(s).';
  @override
  String batch_delete_success({required Object n}) =>
      '${n} livre(s) supprimé(s).';
  @override
  String batch_delete_success_video({required Object n}) =>
      '${n} vidéo(s) supprimée(s).';
  @override
  String batch_dissolve_confirm({required Object m}) =>
      'Dissoudre ${m} collection(s) ? Le regroupement est supprimé ; les médias sont conservés.';
  @override
  String batch_dissolve_success({required Object m}) =>
      '${m} collection(s) dissoute(s).';
  @override
  String batch_hidden_by_filter_note({required Object n}) =>
      '${n} autres éléments sélectionnés sont masqués par le filtre actuel et ne seront pas traités.';
  @override
  String get batch_invert_selection => 'Inverser';
  @override
  String get batch_select => 'Sélectionner';
  @override
  String get batch_select_all => 'Tout';
  @override
  String batch_selected_count({required Object n}) => '${n} sélectionné(s)';
  @override
  String batch_selection_stale_skipped({
    required Object m,
    required Object n,
  }) => '${m} sur ${n} éléments sélectionnés ignorés car ils n\'existent plus';
  @override
  String get batch_tag_add => 'Ajouter';
  @override
  String batch_tag_added({required Object name, required Object n}) =>
      'Balise « ${name} » ajoutée à ${n} livre(s).';
  @override
  String batch_tag_added_video({required Object name, required Object n}) =>
      'Tag « ${name} » ajouté à ${n} vidéo(s).';
  @override
  String get batch_tag_apply => 'Appliquer';
  @override
  String get batch_tag_keep => 'Conserver';
  @override
  String get batch_tag_remove => 'Retirer';
  @override
  String batch_tag_removed({required Object name, required Object n}) =>
      'Balise « ${name} » retirée de ${n} livre(s).';
  @override
  String batch_tag_removed_video({required Object name, required Object n}) =>
      'Tag « ${name} » retiré de ${n} vidéo(s).';
  @override
  String get batch_tag_title => 'Gérer les balises';
  @override
  String get book_continue_reading => 'Continue Reading';
  @override
  String get book_convert_blocked_already =>
      'Ce livre est déjà dans ce format.';
  @override
  String get book_convert_blocked_no_original =>
      'Ce manga a été importé depuis des images, il n\'y a donc pas de livre original vers lequel reconvertir.';
  @override
  String get book_convert_blocked_source_missing =>
      'Les fichiers sources ont disparu du disque.';
  @override
  String get book_convert_blocked_text_only =>
      'C\'est un livre textuel sans images de pages. Seuls les livres d\'images scannées peuvent devenir des manga.';
  @override
  String get book_convert_done => 'Conversion terminée';
  @override
  String get book_convert_failed => 'Conversion échouée';
  @override
  String get book_convert_running => 'Conversion…';
  @override
  String get book_convert_to_book_action => 'Reconvertir en livre';
  @override
  String get book_convert_to_manga_action => 'Convertir en manga';
  @override
  String get book_css_editor_cancel => 'Annuler';
  @override
  String get book_css_editor_confirm_reset =>
      'Réinitialiser le CSS de ce fichier par défaut ?';
  @override
  String get book_css_editor_confirm_reset_all =>
      'Réinitialiser le CSS de TOUS les fichiers par défaut ?';
  @override
  String get book_css_editor_discard => 'Abandonner';
  @override
  String get book_css_editor_edit_css => 'Modifier le CSS du livre';
  @override
  String get book_css_editor_no_css_files =>
      'Aucun fichier CSS trouvé dans ce livre.';
  @override
  String get book_css_editor_no_extract_dir =>
      'Répertoire du livre introuvable. Réimportez le livre pour modifier le CSS.';
  @override
  String get book_css_editor_reset_all => 'Tout réinitialiser';
  @override
  String get book_css_editor_reset_current => 'Réinitialiser l\'actuel';
  @override
  String get book_css_editor_reset_done => 'Le CSS a été réinitialisé.';
  @override
  String get book_css_editor_save => 'Enregistrer';
  @override
  String get book_css_editor_saved => 'CSS enregistré.';
  @override
  String get book_css_editor_title => 'Éditeur CSS du livre';
  @override
  String get book_css_editor_unsaved_changes =>
      'Modifications non enregistrées';
  @override
  String get book_css_editor_unsaved_changes_message =>
      'Vous avez des modifications non enregistrées. Les abandonner ?';
  @override
  String get book_directory_not_found => 'Répertoire du livre introuvable.';
  @override
  String get book_edit_author => 'Auteur';
  @override
  String get book_file_not_found => 'Fichier du livre introuvable';
  @override
  String get book_import_duplicate_cancel => 'Non, annuler';
  @override
  String get book_import_duplicate_cancelled => 'Import annulé';
  @override
  String get book_import_duplicate_keep => 'Oui, ajouter un suffixe';
  @override
  String book_import_duplicate_message({required Object name}) =>
      'Un livre nommé « ${name} » existe déjà. L\'importer quand même ? « Oui » importe avec un suffixe numéroté ; « Non » annule.';
  @override
  String get book_import_duplicate_title => 'Livre en double';
  @override
  String get book_import_folder_as_source_hint =>
      'Scanner continuellement ce dossier pour de nouveaux livres';
  @override
  String get book_language_action => 'Langue du contenu';
  @override
  String get book_language_description =>
      'Détermine quelle police affiche le texte de ce livre. Automatique utilise la langue déclarée dans l\'EPUB.';
  @override
  String get book_mark_completed_action => 'Marquer comme terminé';
  @override
  String get book_mark_uncompleted_action => 'Marquer comme non terminé';
  @override
  String get book_marked_completed => 'Marqué comme terminé';
  @override
  String get book_marked_uncompleted => 'Marqué comme non terminé';
  @override
  String get book_mode => 'Mode livre';
  @override
  String book_read_progress({required Object percent}) => 'Lu ${percent} %';
  @override
  String get book_scrape_cover => 'Rechercher la couverture en ligne';
  @override
  String get book_scrape_empty => 'Aucune couverture correspondante';
  @override
  String get book_scrape_failed => 'Échec de la récupération de la couverture';
  @override
  String get book_scrape_hint => 'Titre / auteur du livre';
  @override
  String get book_scrape_search => 'Rechercher';
  @override
  String get book_scrape_search_failed =>
      'Recherche échouée. Appuyez sur Rechercher pour réessayer.';
  @override
  String get book_scrape_title => 'Rechercher la couverture en ligne';
  @override
  String get book_scrape_use => 'Utiliser';
  @override
  String get book_search => 'Rechercher dans le livre';
  @override
  String get book_search_hint => 'Saisir le texte…';
  @override
  String get book_search_no_results => 'Aucun résultat';
  @override
  String book_search_results({required Object n}) => '${n} résultat(s)';
  @override
  String get books => 'Livres';
  @override
  String get browser_extension_enable_server_first =>
      'Conseil : activez d\'abord « Serveur API Yomitan » et définissez une clé API ci-dessus, pour que l\'extension soit configurée automatiquement avec une connexion fonctionnelle.';
  @override
  String get browser_extension_mobile_unsupported =>
      'Les navigateurs mobiles ne peuvent pas charger cette extension. Utilisez plutôt la recherche intégrée dans le lecteur ou le lecteur vidéo.';
  @override
  String get browser_extension_prepare_button =>
      'Préparer les fichiers de l\'extension';
  @override
  String get browser_extension_prepare_hint =>
      'Démarre le serveur de recherche et décompresse l\'extension localement ; le chemin du dossier est copié dans le presse-papiers.';
  @override
  String get browser_extension_reinstall_button =>
      'Repréparer / actualiser les fichiers';
  @override
  String get browser_extension_server_off => 'Serveur de recherche désactivé';
  @override
  String get browser_extension_server_on => 'Serveur de recherche activé';
  @override
  String get browser_extension_status_connected => 'Extension connectée';
  @override
  String get browser_extension_status_never => 'Extension pas encore détectée';
  @override
  String get browser_extension_step_dev_mode =>
      'Activez le « Mode développeur » (interrupteur en haut à droite).';
  @override
  String get browser_extension_step_done_auto =>
      'Terminé. L\'extension est déjà configurée pour se connecter à Fushi pour les recherches — rien à remplir manuellement.';
  @override
  String get browser_extension_step_load_unpacked =>
      'Cliquez sur « Charger l\'extension non empaquetée ».';
  @override
  String get browser_extension_step_open_page =>
      'Ouvrez la page des extensions du navigateur :';
  @override
  String get browser_extension_step_pick_folder =>
      'Sélectionnez le dossier de l\'extension ci-dessous (son chemin est déjà copié dans votre presse-papiers).';
  @override
  String get browser_extension_step_verify =>
      'Vérifier que l\'extension est chargée et connectée';
  @override
  String get browser_extension_verify_button => 'Vérifier la connexion';
  @override
  String get browser_extension_verify_checking => 'Vérification…';
  @override
  String get browser_extension_verify_connected =>
      'Extension détectée et connectée.';
  @override
  String get browser_extension_verify_not_detected =>
      'Aucune extension détectée. Assurez-vous qu\'elle est chargée et activée dans votre navigateur, puis vérifiez à nouveau.';
  @override
  String get browser_extension_version_app => 'Fournie avec l\'app';
  @override
  String get browser_extension_version_browser => 'Chargée dans le navigateur';
  @override
  String get browser_extension_version_label => 'Version de l\'extension';
  @override
  String get browser_extension_version_mismatch =>
      'L\'extension chargée dans votre navigateur est obsolète. Repréparez l\'extension si nécessaire, puis rechargez-la depuis la page des extensions de votre navigateur (chrome://extensions).';
  @override
  String browser_extension_yomitan_port_conflict({required Object port}) =>
      'Le port ${port} est utilisé par un autre processus (généralement le composant yomitan-api — un processus Python lancé par votre navigateur). Fermez ce processus, ou désactivez l\'API Yomitan dans les paramètres avancés de Yomitan, puis réactivez le serveur API Yomitan dans Fushi.';
  @override
  String get cancel => 'Annuler';
  @override
  String card_cover_degraded_to_static({required Object reason}) =>
      'La couverture de carte est retombée sur une image fixe (clip animé indisponible) : ${reason}';
  @override
  String get card_duplicate => 'Carte en double — non exportée.';
  @override
  String get card_export_failed => 'Échec de l\'exportation de la carte.';
  @override
  String card_export_failed_detail({required Object reason}) =>
      'Échec de l\'export de la carte : ${reason}';
  @override
  String get card_export_not_configured =>
      'Anki non configuré. Ouvrez les paramètres Anki et appuyez sur Récupérer.';
  @override
  String card_exported({required Object deck}) =>
      'Carte exportée vers 『${deck}』.';
  @override
  String card_exported_audio_failed({required Object reason}) =>
      'Carte exportée, mais le téléchargement de l\'audio a échoué (${reason}).';
  @override
  String get card_mined_no_sentence_captured =>
      'Carte créée, mais aucune phrase n\'a été capturée (resélectionnez le mot, ou ce texte n\'a pas de phrase reconnaissable).';
  @override
  String get card_mined_unmapped_sentence_audio_field =>
      'Carte créée avec l\'audio de la phrase, mais votre type de note Anki n\'a pas de champ mappé. Mappez un champ vers {sentence-audio}.';
  @override
  String get card_mined_unmapped_sentence_field =>
      'Carte créée, mais votre type de note Anki n\'a pas de champ mappé vers la phrase. Utilisez Paramètres → « Créer le paquet Lapis » ou mappez un champ vers {sentence}.';
  @override
  String get card_mined_without_sentence_audio =>
      'Carte créée sans audio de phrase (aucun trouvé pour cette sélection).';
  @override
  String get card_mining_pending => 'Ajout de la carte…';
  @override
  String card_overwritten({required Object deck}) =>
      'Carte remplacée dans « ${deck} ».';
  @override
  String get change_source => 'Changer de source';
  @override
  String get changelog_empty =>
      'Aucun journal des modifications trouvé. Vérifiez votre réseau ou les paramètres de proxy.';
  @override
  String get changelog_open_releases => 'Ouvrir la page des versions';
  @override
  String get changelog_prerelease => 'Préversion';
  @override
  String chapter_progress({
    required Object idx,
    required Object total,
    required Object suffix,
    required Object pct,
  }) => 'Chapitre ${idx} / ${total}${suffix} · ${pct}%';
  @override
  String get clear => 'Effacer';
  @override
  String get clear_dictionary_description =>
      'Cela effacera tous les résultats du dictionnaire de l\'historique. êtes-vous s?r ?';
  @override
  String get clear_dictionary_title =>
      'Effacer l\'historique des résultats du dictionnaire';
  @override
  String get collapse_dictionaries => 'Réduire les dictionnaires';
  @override
  String get collection_add_failed =>
      'Impossible d\'ajouter l\'élément à la collection. Veuillez réessayer.';
  @override
  String get collection_already_has_item =>
      'Cet élément est déjà dans la collection.';
  @override
  String get collection_bookmark => 'Signet';
  @override
  String get collection_clear_confirm =>
      'Supprimer définitivement les collections sélectionnées ? Cette action est irréversible.';
  @override
  String get collection_clear_scope => 'Portée de l\'effacement';
  @override
  String get collection_collapse => 'Réduire';
  @override
  String collection_continue_progress({required Object n}) =>
      'Continuer · ÉP ${n}';
  @override
  String get collection_empty => 'La collection est vide';
  @override
  String get collection_episode_download => 'Télécharger cet épisode';
  @override
  String get collection_episode_fill_missing =>
      'Combler les épisodes manquants';
  @override
  String get collection_episode_no_missing => 'Aucun épisode manquant';
  @override
  String get collection_episode_rename =>
      'Renommer les épisodes depuis la récupération';
  @override
  String collection_episode_rename_apply({required Object n}) =>
      'Renommer ${n} épisodes';
  @override
  String get collection_episode_rename_empty => 'Rien à renommer';
  @override
  String collection_episode_rename_partial({
    required Object n,
    required Object m,
  }) => '${n} épisodes renommés, ${m} échoués';
  @override
  String get collection_episode_rename_title => 'Renommer les épisodes';
  @override
  String collection_episode_watched_at({required Object position}) =>
      'Regardé jusqu\'à ${position}';
  @override
  String get collection_expand => 'Développer';
  @override
  String get collection_export_all_books => 'Tous les livres';
  @override
  String get collection_export_all_mined => 'Toutes les phrases créées';
  @override
  String get collection_export_all_sources => 'Toutes les sources';
  @override
  String get collection_export_all_words => 'Tous les mots favoris';
  @override
  String get collection_export_dedupe => 'Dédupliquer par phrase';
  @override
  String get collection_export_failed => 'Exportation échouée';
  @override
  String get collection_export_favorites_scope => 'Phrases favorites';
  @override
  String get collection_export_format => 'Format';
  @override
  String get collection_export_mined_title => 'Mined Sentences';
  @override
  String get collection_export_no_items => 'Rien à exporter';
  @override
  String get collection_export_pick_book => 'Choisir un livre';
  @override
  String get collection_export_pick_source => 'Choisir une source';
  @override
  String get collection_export_save => 'Save Export';
  @override
  String get collection_export_saved => 'Exportation enregistrée';
  @override
  String get collection_export_scope => 'Portée de l\'exportation';
  @override
  String get collection_export_sentences_title => 'Favorite Sentences';
  @override
  String get collection_export_words_title => 'Favorite Words';
  @override
  String get collection_group_extras => 'Extras et PV';
  @override
  String collection_group_season({required Object n}) => 'Saison ${n}';
  @override
  String collection_hero_total_episodes({required Object count}) =>
      '${count} épisodes';
  @override
  String get collection_loading_hint =>
      'Chargement des collections et recherche des fichiers audio…';
  @override
  String get collection_member_removed => 'Retiré de la collection';
  @override
  String get collection_merge_title => 'Fusionner les collections';
  @override
  String get collection_merged => 'Collections fusionnées.';
  @override
  String get collection_mined => 'Cartes créées';
  @override
  String get collection_open => 'Ouvrir';
  @override
  String get collection_play => 'Lire';
  @override
  String get collection_related_title => 'Œuvres liées';
  @override
  String get collection_relation_bind => 'Lier à une collection existante';
  @override
  String collection_relation_bound({required Object name}) => 'Lié à ${name}';
  @override
  String get collection_relation_download => 'Télécharger';
  @override
  String get collection_relation_movie => 'Film';
  @override
  String get collection_relation_other => 'Lié';
  @override
  String get collection_relation_prequel => 'Préquelle';
  @override
  String get collection_relation_sequel => 'Suite';
  @override
  String get collection_relation_side_story => 'Histoire parallèle';
  @override
  String get collection_relation_spin_off => 'Spin-off';
  @override
  String get collection_remove_member => 'Retirer de la collection';
  @override
  String get collection_remove_member_confirm =>
      'Retirer cet élément de la collection ? L\'élément lui-même est conservé.';
  @override
  String get collection_sentence => 'Phrase';
  @override
  String get collection_sort_by_imported => 'Trier par date d\'importation';
  @override
  String get collection_sort_by_season => 'Trier par saison';
  @override
  String get collection_sort_by_title => 'Trier par nom';
  @override
  String get collection_split_by_season => 'Diviser par saison';
  @override
  String get collection_split_confirm => 'Diviser';
  @override
  String collection_split_done({required Object n}) =>
      'Divisé en ${n} collections';
  @override
  String get collection_split_keep_original => 'Garder la collection originale';
  @override
  String get collection_split_move_to => 'Déplacer vers';
  @override
  String get collection_split_new_group => 'Nouveau groupe';
  @override
  String collection_split_selected({required Object n}) => '${n} sélectionnés';
  @override
  String get collection_view_all => 'Tout voir';
  @override
  String collection_watched_progress({
    required Object done,
    required Object total,
  }) => 'Vu ${done}/${total}';
  @override
  String get collection_word => 'Mot';
  @override
  String get collections => 'Collections';
  @override
  String get columns_per_page => 'Colonnes par page';
  @override
  String get combine_into_series => 'Combiner en série';
  @override
  String get common_more_actions => 'Plus d\'actions';
  @override
  String get copied => 'Copié';
  @override
  String get copied_to_clipboard => 'Copié dans le presse-papiers.';
  @override
  String get copy => 'Copier';
  @override
  String get copy_error => 'Copier l\'erreur';
  @override
  String get crash_dump_empty => 'Aucun vidage de plantage';
  @override
  String crash_dump_label({required Object n}) => 'Vidages de plantage (${n})';
  @override
  String get crash_dump_open_folder => 'Ouvrir le dossier des vidages';
  @override
  String get crash_dump_privacy_notice =>
      'Les vidages de plantage (.dmp) contiennent un instantané de la mémoire du processus et peuvent inclure le texte que vous lisiez, les mots recherchés ou d\'autres données de l\'application. Ne les partagez qu\'avec des développeurs de confiance.';
  @override
  String get crash_dump_share => 'Partager le vidage';
  @override
  String get crash_dump_share_subject => 'Vidage de plantage Fushi';
  @override
  String get create_series => 'Créer une série';
  @override
  String get creator_action_add_to_stash => 'Ajouter à la réserve';
  @override
  String get creator_action_copy_to_clipboard =>
      'Copier dans le presse-papiers';
  @override
  String get creator_action_play_audio => 'Lire l\'audio';
  @override
  String get creator_action_share => 'Partager';
  @override
  String get creator_enhancement_audio_recorder => 'Enregistreur';
  @override
  String get creator_enhancement_camera => 'Appareil photo';
  @override
  String get creator_enhancement_clear_field => 'Effacer le champ';
  @override
  String get creator_enhancement_crop_image => 'Recadrer l\'image';
  @override
  String get creator_enhancement_local_audio => 'Audio local';
  @override
  String get creator_enhancement_open_stash => 'Ouvrir la réserve';
  @override
  String get creator_enhancement_pick_audio => 'Choisir l\'audio';
  @override
  String get creator_enhancement_pick_image => 'Choisir une image';
  @override
  String get creator_enhancement_pop_from_stash => 'Retirer de la réserve';
  @override
  String get creator_enhancement_save_tags => 'Enregistrer les étiquettes';
  @override
  String get creator_enhancement_search_dictionary =>
      'Chercher dans le dictionnaire';
  @override
  String get creator_enhancement_sentence_picker => 'Choisir une phrase';
  @override
  String get creator_enhancement_text_segmentation => 'Segmentation du texte';
  @override
  String get creator_export_card => 'Créer une carte';
  @override
  String get creator_field_audio => 'Audio du terme';
  @override
  String get creator_field_audio_sentence => 'Audio de la phrase';
  @override
  String get creator_field_cloze_after => 'Après le trou';
  @override
  String get creator_field_cloze_before => 'Avant le trou';
  @override
  String get creator_field_cloze_inside => 'Contenu du trou';
  @override
  String get creator_field_collapsed_meaning => 'Sens réduit';
  @override
  String get creator_field_context => 'Contexte';
  @override
  String get creator_field_cue_sentence => 'Phrase de sous-titre';
  @override
  String get creator_field_expanded_meaning => 'Sens développé';
  @override
  String get creator_field_frequency => 'Fréquence';
  @override
  String get creator_field_furigana => 'Furigana';
  @override
  String get creator_field_hidden_meaning => 'Sens caché';
  @override
  String get creator_field_image => 'Image';
  @override
  String get creator_field_meaning => 'Sens';
  @override
  String get creator_field_notes => 'Notes';
  @override
  String get creator_field_pitch_accent => 'Accent tonal';
  @override
  String get creator_field_reading => 'Lecture';
  @override
  String get creator_field_sentence => 'Phrase';
  @override
  String get creator_field_tags => 'Étiquettes';
  @override
  String get creator_field_term => 'Terme';
  @override
  String get custom_dict_css => 'CSS personnalisé';
  @override
  String get custom_dict_css_global => 'Global (tous les dictionnaires)';
  @override
  String get custom_fonts => 'Polices personnalisées';
  @override
  String get custom_fonts_add_system => 'Ajouter une police système';
  @override
  String get custom_fonts_archive_error =>
      'Échec de l\'extraction de l\'archive';
  @override
  String get custom_fonts_catalog_title => 'Bibliothèque de polices';
  @override
  String get custom_fonts_download_failed => 'Échec du téléchargement';
  @override
  String get custom_fonts_downloading => 'Téléchargement...';
  @override
  String get custom_fonts_drag_hint =>
      'Glisser pour réorganiser la priorité des polices';
  @override
  String get custom_fonts_empty => 'Aucune police personnalisée ajoutée';
  @override
  String get custom_fonts_font_roles => 'Rôles des polices';
  @override
  String get custom_fonts_import_file => 'Importer un fichier de police';
  @override
  String get custom_fonts_import_url => 'Importer depuis une URL';
  @override
  String custom_fonts_imported_count({required Object count}) =>
      '${count} police(s) importée(s)';
  @override
  String get custom_fonts_manage => 'Gérer les polices';
  @override
  String get custom_fonts_no_fonts_in_archive =>
      'Aucun fichier de police trouvé dans l\'archive';
  @override
  String get custom_fonts_recommended => 'Polices recommandées';
  @override
  String get custom_fonts_removed => 'Police supprimée';
  @override
  String get custom_fonts_search_hint => 'Rechercher des polices';
  @override
  String get custom_theme => 'Thème personnalisé';
  @override
  String custom_theme_default_name({required Object n}) => 'Personnalisé ${n}';
  @override
  String get custom_theme_long_press_hint =>
      'Appuyez pour changer · appui long pour modifier';
  @override
  String get custom_theme_name => 'Nom';
  @override
  String get dark_mode => 'Mode sombre';
  @override
  String get dark_mode_dark => 'Sombre';
  @override
  String get dark_mode_light => 'Clair';
  @override
  String get dark_mode_system => 'Système';
  @override
  String data_root_unavailable_message({required Object path}) =>
      'L\'emplacement de données configuré ${path} est temporairement inaccessible (le disque peut être en veille, occupé ou déconnecté). Vos données sont en sécurité et intactes — rien n\'est perdu. Appuyez sur Réessayer une fois le disque prêt pour charger vos données, ou démarrez avec l\'emplacement par défaut pour le moment (vos données existantes NE seront PAS modifiées).';
  @override
  String get data_root_unavailable_title =>
      'Emplacement des données ne répond pas';
  @override
  String get data_root_use_default_button =>
      'Démarrer avec l\'emplacement par défaut';
  @override
  String get data_storage_change_button => 'Changer l\'emplacement';
  @override
  String get data_storage_change_confirm_body =>
      'Fushi déplacera toutes vos données vers le nouveau dossier puis redémarrera. Ne fermez pas l\'application pendant le déplacement.';
  @override
  String get data_storage_change_confirm_title =>
      'Changer l\'emplacement de stockage ?';
  @override
  String get data_storage_location_default => 'Emplacement par défaut';
  @override
  String get data_storage_location_hint =>
      'Où Fushi conserve votre bibliothèque, vos livres audio et votre base de données. Ordinateur uniquement.';
  @override
  String get data_storage_location_title =>
      'Emplacement de stockage des données';
  @override
  String data_storage_migrate_failed({required Object message}) =>
      'Impossible de déplacer les données : ${message}';
  @override
  String get data_storage_migrate_failed_restart => 'Redémarrer';
  @override
  String get data_storage_migrate_failed_suggestions =>
      'Veuillez réessayer avec un autre dossier vide. Ne choisissez pas le dossier d\'installation de l\'application et assurez-vous qu\'aucun fichier à cet emplacement n\'est en cours d\'utilisation.';
  @override
  String get data_storage_migrate_failed_title =>
      'Échec de la migration des données';
  @override
  String data_storage_migrate_overlay_progress({
    required Object copied,
    required Object total,
  }) => 'Copie des fichiers : ${copied} / ${total}';
  @override
  String get data_storage_migrate_overlay_title => 'Déplacement de vos données';
  @override
  String get data_storage_migrate_overlay_warning =>
      'Veuillez garder l\'application ouverte. Ne fermez pas et n\'éteignez pas votre ordinateur jusqu\'à la fin.';
  @override
  String get data_storage_migrate_success => 'Données déplacées. Redémarrage…';
  @override
  String get data_storage_migrating => 'Déplacement des données…';
  @override
  String get data_storage_reject_install_dir =>
      'Ce dossier est l\'emplacement d\'installation de l\'application et ne peut pas stocker vos données. Veuillez choisir un autre dossier vide.';
  @override
  String get data_storage_restart_failed =>
      'Données déplacées, mais le redémarrage automatique a échoué. Veuillez rouvrir Fushi manuellement.';
  @override
  String get db_cannot_open_message =>
      'Fushi n\'a pas pu ouvrir ni créer sa base de données à l\'emplacement des données configuré. Rien n\'est corrompu : le dossier est peut-être absent, en lecture seule, ou sur un disque déconnecté. Vérifiez l\'emplacement des données dans Paramètres, ou redémarrez pour utiliser l\'emplacement par défaut.';
  @override
  String get db_cannot_open_title => 'Emplacement des données indisponible';
  @override
  String db_downgrade_message({
    required Object dbVersion,
    required Object appVersion,
  }) =>
      'Cette base de données a été créée par une version plus récente de Fushi (schéma v${dbVersion}). Votre application actuelle est trop ancienne (v${appVersion}). L\'ouverture a été bloquée pour protéger vos données. Veuillez mettre l\'application à jour et réessayer.';
  @override
  String get db_downgrade_title => 'Mettez Fushi à jour';
  @override
  String get db_unrecoverable_message =>
      'La base de données n\'a pas pu être ouverte même après réparation automatique. Elle est probablement corrompue. Vous pouvez restaurer une sauvegarde dans les Paramètres, ou effacer les données de l\'application pour recommencer.';
  @override
  String get db_unrecoverable_title => 'Base de données endommagée';
  @override
  String get debug_log_share_subject => 'Journal de débogage Fushi';
  @override
  String debug_log_title({required Object count}) =>
      'Journal de débogage (${count})';
  @override
  String get debug_log_toggle => 'Activer le journal de débogage';
  @override
  String get decrease => 'Diminuer';
  @override
  String get deduplicate_pitch_accents => 'Dédupliquer les accents tonaux';
  @override
  String get delete_choices_remember => 'Mémoriser ces choix';
  @override
  String get delete_collection => 'Supprimer la collection';
  @override
  String get delete_collection_also_books =>
      'Supprimer aussi les livres qu\'elle contient';
  @override
  String get delete_collection_also_videos => 'Supprimer aussi les vidéos';
  @override
  String get delete_collection_confirm =>
      'Seul le regroupement est supprimé. Les éléments qu\'elle contient sont conservés.';
  @override
  String get delete_custom_theme => 'Supprimer le thème';
  @override
  String get delete_custom_theme_confirm =>
      'Supprimer ce thème personnalisé ? Cette action est irréversible.';
  @override
  String get delete_disclosure_audio_source_files =>
      'Les fichiers audio originaux que vous avez importés';
  @override
  String get delete_disclosure_audiobook_book_kept =>
      'Le livre lui-même et sa progression de lecture';
  @override
  String get delete_disclosure_audiobook_files =>
      'L\'audio et les sous-titres alignés que Fushi a copiés dans son propre stockage';
  @override
  String get delete_disclosure_audiobook_source_kept =>
      'Les fichiers audio originaux que vous avez importés';
  @override
  String get delete_disclosure_book_audiobook =>
      'L\'audio et les sous-titres alignés du livre audio associé, le cas échéant';
  @override
  String get delete_disclosure_book_extracted =>
      'Les fichiers de livres que Fushi a extraits dans son propre stockage';
  @override
  String get delete_disclosure_book_records =>
      'Progression de lecture, signets, tags et données de sous-titres';
  @override
  String get delete_disclosure_book_source_kept =>
      'Les fichiers d\'origine du livre et des sous-titres que vous avez importés';
  @override
  String get delete_disclosure_source_kept =>
      'Les fichiers originaux que vous avez importés (livre, sous-titres, audio)';
  @override
  String get delete_disclosure_stats_kept => 'Statistiques de lecture';
  @override
  String get delete_disclosure_will_delete_label => 'Sera supprimé';
  @override
  String get delete_disclosure_will_keep_label => 'Sera conservé';
  @override
  String get delete_in_progress => 'Suppression en cours';
  @override
  String get delete_local_files => 'Supprimer aussi les fichiers locaux';
  @override
  String get delete_local_files_audio_desc =>
      'Les fichiers audio d\'origine sont supprimés de cet appareil ; les fichiers du livre et des sous-titres d\'origine sont conservés. Cette action est irréversible.';
  @override
  String delete_local_files_failed({required Object n}) =>
      'Impossible de supprimer ${n} fichier(s) local(aux) ; ils sont peut-être encore utilisés';
  @override
  String get delete_local_files_video_desc =>
      'Le fichier vidéo est supprimé de cet appareil, ainsi que sa tâche de téléchargement. Cette action est irréversible.';
  @override
  String get delete_prompt_delete_selected => 'Supprimer la sélection';
  @override
  String get delete_prompt_message =>
      'Ces éléments ont été supprimés sur un autre appareil. Les supprimer ici aussi ?';
  @override
  String get delete_prompt_select_all => 'Tout sélectionner';
  @override
  String get delete_prompt_title => 'Supprimé sur un autre appareil';
  @override
  String get delete_scope_keep_local_desc =>
      'Les autres appareils conservent leur copie';
  @override
  String get delete_scope_no_channel =>
      'Pas de synchronisation configurée — cette suppression n\'affecte que cet appareil';
  @override
  String get delete_scope_sync_everywhere => 'Supprimer de tous les appareils';
  @override
  String get delete_scope_sync_everywhere_desc =>
      'Les autres appareils confirment la suppression lors de la prochaine synchronisation';
  @override
  String get design_system_auto => 'Auto';
  @override
  String get design_system_hint => 'Contrôle le style visuel de l\'application';
  @override
  String get design_system_label => 'Système de design';
  @override
  String get dialog_add => 'AJOUTER';
  @override
  String get dialog_append => 'AJOUTER';
  @override
  String get dialog_cancel => 'ANNULER';
  @override
  String get dialog_clear => 'EFFACER';
  @override
  String get dialog_clear_all_dictionaries =>
      'Supprimer tous les dictionnaires';
  @override
  String get dialog_close => 'FERMER';
  @override
  String get dialog_connect => 'CONNECTER';
  @override
  String get dialog_content_dictionary_clear =>
      'La suppression de la base de données des dictionnaires effacera également tous les résultats de recherche de l\'historique.';
  @override
  String get dialog_content_dictionary_delete =>
      'La suppression d\'un seul dictionnaire peut prendre plus de temps que l\'effacement de toute la base de données. Cela effacera également tous les résultats de recherche de l\'historique.';
  @override
  String get dialog_create => 'CRéER';
  @override
  String get dialog_crop => 'ROGNER';
  @override
  String get dialog_delete => 'SUPPRIMER';
  @override
  String get dialog_done => 'TERMINé';
  @override
  String get dialog_edit => 'MODIFIER';
  @override
  String get dialog_edit_info => 'Modifier les infos';
  @override
  String get dialog_exit => 'QUITTER';
  @override
  String get dialog_export => 'EXPORTER';
  @override
  String get dialog_import => 'IMPORTER';
  @override
  String get dialog_import_dictionary => 'Importer un dictionnaire';
  @override
  String get dialog_import_folder => 'Importer un dictionnaire de dossier';
  @override
  String get dialog_importing => 'IMPORTATION…';
  @override
  String get dialog_launch_ankidroid => 'OUVRIR ANKIDROID';
  @override
  String get dialog_ok => 'OK';
  @override
  String get dialog_play => 'LIRE';
  @override
  String get dialog_read => 'LIRE';
  @override
  String get dialog_record => 'ENREGISTRER';
  @override
  String get dialog_replace => 'Remplacer';
  @override
  String get dialog_save => 'ENREGISTRER';
  @override
  String get dialog_search => 'RECHERCHER';
  @override
  String get dialog_select => 'SéLECTIONNER';
  @override
  String get dialog_share => 'PARTAGER';
  @override
  String get dialog_stash => 'PANIER';
  @override
  String get dialog_stop => 'ARRêTER';
  @override
  String get dialog_title_dictionary_clear =>
      'Effacer tous les dictionnaires ?';
  @override
  String dialog_title_dictionary_delete({required Object name}) =>
      'Supprimer 『${name}』 ?';
  @override
  String get dict_auto_update => 'Mettre à jour automatiquement';
  @override
  String get dict_auto_update_hint =>
      'Vérifier les mises à jour des dictionnaires au démarrage';
  @override
  String dict_auto_update_last({required Object time}) =>
      'Dernière vérification réussie : ${time}';
  @override
  String get dict_auto_update_never => 'Jamais';
  @override
  String get dict_category_bilingual => 'Bilingue';
  @override
  String get dict_category_frequency => 'Fréquence';
  @override
  String get dict_category_grammar => 'Grammaire';
  @override
  String get dict_category_ja_en => 'Japonais–Anglais';
  @override
  String get dict_category_ja_ja => 'Japonais–Japonais';
  @override
  String get dict_category_ja_other => 'Autre japonais';
  @override
  String get dict_category_kanji => 'Kanji';
  @override
  String get dict_category_monolingual => 'Monolingue';
  @override
  String get dict_category_names => 'Noms';
  @override
  String get dict_category_supplementary => 'Supplémentaire';
  @override
  String get dict_download_browse => 'Télécharger des dictionnaires';
  @override
  String get dict_download_busy =>
      'Un téléchargement de dictionnaire est déjà en cours.';
  @override
  String dict_download_button({required Object count}) =>
      'Télécharger (${count})';
  @override
  String get dict_download_cancelled => 'Téléchargement annulé.';
  @override
  String get dict_download_complete => 'Téléchargement terminé.';
  @override
  String dict_download_failed({required Object error}) =>
      'Échec du téléchargement : ${error}';
  @override
  String get dict_download_hide => 'Exécuter en arrière-plan';
  @override
  String get dict_download_import_uncancellable =>
      'L\'importation ne peut pas être interrompue';
  @override
  String get dict_download_installed => 'Installé';
  @override
  String get dict_download_language => 'Votre langue';
  @override
  String get dict_download_learning_language => 'Langue d\'apprentissage';
  @override
  String dict_download_partial({
    required Object success,
    required Object total,
    required Object error,
  }) => '${success} / ${total} OK. Échecs : ${error}';
  @override
  String get dict_download_progress_show => 'Voir la progression';
  @override
  String get dict_download_select_title => 'Sélectionner des dictionnaires';
  @override
  String dict_downloading({required Object name}) =>
      'Téléchargement de ${name}…';
  @override
  String dict_downloading_size({
    required Object name,
    required Object done,
    required Object total,
  }) => 'Téléchargement de ${name} (${done} / ${total})';
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
      'Échec de l\'import de ${n} dictionnaire(s)';
  @override
  String get dict_import_started =>
      'Importation des dictionnaires en arrière-plan...';
  @override
  String dict_import_success_summary({required Object n}) =>
      '${n} dictionnaire(s) importé(s)';
  @override
  String get dict_language_auto => 'Automatique';
  @override
  String get dict_language_description =>
      'Détermine quelle police affiche le texte de ce dictionnaire. Automatique utilise la langue déclarée par le dictionnaire.';
  @override
  String get dict_language_title => 'Langue du contenu du dictionnaire';
  @override
  String get dict_language_tooltip => 'Langue du contenu';
  @override
  String get dict_style_global_only =>
      'Réglable uniquement pour tous les dictionnaires';
  @override
  String get dict_style_part_deinflection_tag => 'Chaîne de désinflection';
  @override
  String get dict_style_part_dictionary_label => 'Nom du dictionnaire';
  @override
  String get dict_style_part_entry_card => 'Carte d\'entrée';
  @override
  String get dict_style_part_expression => 'Mot vedette';
  @override
  String get dict_style_part_expression_tag => 'Tags d\'expression';
  @override
  String get dict_style_part_frequency => 'Fréquence';
  @override
  String get dict_style_part_glossary_content => 'Définition';
  @override
  String get dict_style_part_glossary_tag => 'Tags de définition';
  @override
  String get dict_style_part_pitch => 'Accent tonal';
  @override
  String get dict_style_part_reset => 'Réinitialiser la partie';
  @override
  String get dict_style_part_ruby => 'Furigana';
  @override
  String get dict_style_pick_hint =>
      'Appuyez sur une partie dans l\'aperçu pour y accéder';
  @override
  String get dict_style_preview_title => 'Aperçu';
  @override
  String get dict_style_prop_background => 'Surlignage';
  @override
  String get dict_style_prop_bold => 'Gras';
  @override
  String get dict_style_prop_corner_radius => 'Rayon des coins';
  @override
  String get dict_style_prop_default => 'Par défaut';
  @override
  String get dict_style_prop_font_scale => 'Taille de police';
  @override
  String get dict_style_prop_italic => 'Italique';
  @override
  String get dict_style_prop_off => 'Désactivé';
  @override
  String get dict_style_prop_on => 'Activé';
  @override
  String get dict_style_prop_text_color => 'Couleur du texte';
  @override
  String get dict_style_prop_underline => 'Souligné';
  @override
  String get dict_style_reset_all => 'Tout réinitialiser';
  @override
  String get dict_style_scope_all => 'Tous les dictionnaires';
  @override
  String get dict_style_tab_code => 'CSS';
  @override
  String get dict_style_tab_visual => 'Visuel';
  @override
  String get dict_style_title => 'Style du dictionnaire';
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
  String get dict_update_check => 'Vérifier les mises à jour';
  @override
  String get dict_update_checking => 'Recherche de mises à jour…';
  @override
  String dict_update_done({required Object name}) =>
      '${name} a été mis à jour.';
  @override
  String dict_update_failed({required Object error}) =>
      'Échec de la mise à jour : ${error}';
  @override
  String get dict_update_interval_daily => 'Quotidienne';
  @override
  String get dict_update_interval_monthly => 'Mensuelle';
  @override
  String get dict_update_interval_weekly => 'Hebdomadaire';
  @override
  String get dict_update_latest => 'Déjà à jour.';
  @override
  String dict_update_name_mismatch_body({
    required Object incoming,
    required Object existing,
  }) =>
      'Le fichier sélectionné est « ${incoming} », mais vous mettez à jour « ${existing} ». Remplacer quand même ?';
  @override
  String get dict_update_name_mismatch_title => 'Les noms ne correspondent pas';
  @override
  String get dict_update_none => 'Tous les dictionnaires sont à jour.';
  @override
  String dict_update_summary({
    required Object updated,
    required Object current,
    required Object failed,
  }) => '${updated} mis à jour, ${current} à jour, ${failed} en échec.';
  @override
  String get dict_update_tooltip => 'Mettre à jour le dictionnaire';
  @override
  String dict_update_updating({required Object name}) =>
      'Mise à jour de ${name}…';
  @override
  String get dictionaries => 'Dictionnaires';
  @override
  String get dictionaries_delete_failed =>
      'Échec de la suppression des dictionnaires';
  @override
  String get dictionaries_deleting_data =>
      'Suppression des données du dictionnaire...';
  @override
  String get dictionaries_menu_empty =>
      'Importez un dictionnaire pour l\'utiliser';
  @override
  String get dictionary_collapse_follow_global => 'Follow global setting';
  @override
  String get dictionary_delete_failed =>
      'Échec de la suppression du dictionnaire';
  @override
  String get dictionary_font_size => 'Taille de police du dictionnaire';
  @override
  String get dictionary_font_size_zoom_hint =>
      'Ctrl + molette pour zoomer le contenu du pop-up';
  @override
  String get dictionary_section_frequency => 'Dictionnaires de fréquence';
  @override
  String get dictionary_section_kanji => 'Dictionnaires de kanji';
  @override
  String get dictionary_section_pitch => 'Dictionnaires d\'accent tonal';
  @override
  String get dictionary_section_term => 'Dictionnaires de termes';
  @override
  String get dictionary_settings => 'Paramètres du dictionnaire';
  @override
  String get dictionary_type_frequency => 'Fréquence';
  @override
  String get dictionary_type_pitch => 'Accent tonal';
  @override
  String get dictionary_type_term => 'Terme';
  @override
  String get dictionary_unrecognized_format =>
      'Format de dictionnaire non reconnu';
  @override
  String get discovery_all_sources => 'Toutes les sources';
  @override
  String get discovery_download_queued => 'Ajouté aux téléchargements';
  @override
  String get discovery_empty => 'Aucun résultat';
  @override
  String get discovery_enter_query_hint => 'Entrez un mot-clé pour rechercher';
  @override
  String get discovery_game_type_all => 'Tous';
  @override
  String get discovery_game_type_mobile => 'Mobile';
  @override
  String get discovery_game_type_raw => 'Non traduits';
  @override
  String get discovery_game_type_translated => 'Traduits';
  @override
  String get discovery_game_type_unlabelled => 'Non étiquetés';
  @override
  String get discovery_kind_audiobook => 'Livres audio';
  @override
  String get discovery_kind_manga => 'Manga';
  @override
  String get discovery_kind_novel => 'Romans';
  @override
  String get discovery_load_more => 'Charger plus';
  @override
  String get discovery_opds_add => 'Ajouter un serveur OPDS';
  @override
  String get discovery_opds_allow_http => 'Autoriser le HTTP en clair';
  @override
  String get discovery_opds_allow_http_hint =>
      'Nécessaire pour un serveur auto-hébergé sur votre réseau local';
  @override
  String get discovery_opds_enabled => 'Activé';
  @override
  String get discovery_opds_name => 'Nom affiché';
  @override
  String get discovery_opds_name_hint =>
      'Laissez vide pour utiliser le nom d\'hôte';
  @override
  String get discovery_opds_password => 'Mot de passe';
  @override
  String get discovery_opds_remove => 'Retirer';
  @override
  String get discovery_opds_settings_hint =>
      'Parcourez et téléchargez des livres et des BD depuis votre propre serveur OPDS, par exemple BookOrbit, Calibre-Web, Komga ou Kavita';
  @override
  String get discovery_opds_settings_title => 'Catalogues OPDS';
  @override
  String get discovery_opds_test => 'Tester la connexion';
  @override
  String discovery_opds_test_failed({required Object reason}) =>
      'Échec de la connexion : ${reason}';
  @override
  String discovery_opds_test_ok({required Object count}) =>
      'Connecté. Le catalogue racine contient ${count} entrées';
  @override
  String get discovery_opds_url => 'URL du catalogue';
  @override
  String get discovery_opds_url_hint =>
      'Le point d\'accès OPDS, par exemple https://books.example.com/api/v1/opds';
  @override
  String get discovery_opds_url_invalid =>
      'Saisissez une URL de catalogue HTTP ou HTTPS valide';
  @override
  String get discovery_opds_url_needs_http_optin =>
      'Le HTTP en clair nécessite l\'interrupteur ci-dessous';
  @override
  String get discovery_opds_username => 'Nom d\'utilisateur';
  @override
  String get discovery_opds_username_hint =>
      'Laissez vide pour un catalogue public';
  @override
  String get discovery_partial_failure =>
      'Certaines sources sont indisponibles';
  @override
  String get discovery_search_hint => 'Rechercher des ressources en ligne';
  @override
  String discovery_source_kinds_label({required Object kinds}) =>
      'Couvre : ${kinds}';
  @override
  String get discovery_source_pick_hint =>
      'Choisissez une source à parcourir, ou tapez un mot-clé pour chercher dans toutes les sources';
  @override
  String get discovery_source_query_required =>
      'Cette source ne prend en charge que la recherche par mot-clé';
  @override
  String get discovery_sources_settings_hint =>
      'Quelles sources intégrées participent à la recherche Toutes les sources de la page Découvrir. Choisir une seule source dans le menu déroulant fonctionne toujours, même si elle est désactivée ici.';
  @override
  String get discovery_sources_settings_title => 'Sources de découverte';
  @override
  String get discovery_sources_unavailable =>
      'Toutes les sources sont indisponibles';
  @override
  String get discovery_torrent_failed =>
      'Échec de l\'ajout de la tâche torrent';
  @override
  String get discovery_torrent_pushed => 'Tâche torrent ajoutée';
  @override
  String get dismiss_swipe_sensitivity => 'Sensibilité du balayage pour fermer';
  @override
  String get display_settings => 'Paramètres d\'affichage';
  @override
  String get download_add_video_source => 'Ajouter une source vidéo';
  @override
  String get download_airing_calendar_empty_guidance =>
      'Rien à afficher : liez une collection à AniList ou ajoutez un abonnement de téléchargement, et les horaires de diffusion apparaîtront ici.';
  @override
  String download_airing_calendar_episode_label({required Object episode}) =>
      'Ép ${episode}';
  @override
  String get download_airing_calendar_error =>
      'Échec du chargement du calendrier de diffusion';
  @override
  String get download_airing_calendar_in_library => 'Dans la bibliothèque';
  @override
  String get download_airing_calendar_show_all => 'Afficher toute cette saison';
  @override
  String get download_airing_calendar_subscribed => 'Abonné';
  @override
  String get download_airing_calendar_title => 'Calendrier de diffusion';
  @override
  String get download_airing_calendar_week_empty =>
      'Rien ne passe cette semaine';
  @override
  String get download_airing_calendar_week_next => 'Semaine suivante';
  @override
  String get download_airing_calendar_week_prev => 'Semaine précédente';
  @override
  String get download_backend_embedded_hint =>
      'Recommandé. Les téléchargements s\'exécutent dans Fushi - rien d\'autre à installer.';
  @override
  String get download_backend_embedded_unavailable =>
      'Le runtime du moteur intégré est absent de cette installation. Réinstallez le paquet complet, ou utilisez plutôt un qBittorrent externe.';
  @override
  String get download_backend_not_configured =>
      'Le moteur de téléchargement n\'est pas encore configuré.';
  @override
  String get download_backend_qb_hint =>
      'Connecter Fushi à une WebUI qBittorrent que vous utilisez déjà.';
  @override
  String get download_backend_qb_url_invalid =>
      'Saisissez une adresse complète, par ex. http://127.0.0.1:8080';
  @override
  String get download_backend_setup_intro =>
      'Choisissez le moteur qui exécute vos téléchargements. Vous pourrez le changer à tout moment dans les paramètres de téléchargement.';
  @override
  String get download_backend_setup_start => 'Configurer';
  @override
  String get download_backend_setup_title =>
      'Configurer le backend de téléchargement';
  @override
  String get download_backend_unsupported_note =>
      'Le moteur intégré n\'est pas disponible sur cette plateforme. Les téléchargements utilisent qBittorrent externe.';
  @override
  String get download_clear_finished => 'Effacer les terminés';
  @override
  String get download_detail_backend_offline =>
      'Le moteur de téléchargement d\'origine est hors ligne. Les informations sauvegardées sont affichées ; les paramètres en direct sont indisponibles.';
  @override
  String get download_detail_backend_unsupported =>
      'Non pris en charge par le moteur de téléchargement actuel';
  @override
  String get download_detail_connections_label => 'Connexions';
  @override
  String get download_detail_content_path_label => 'Chemin du contenu';
  @override
  String get download_detail_dht_nodes => 'Nœuds DHT';
  @override
  String get download_detail_hash_label => 'Hash d\'info';
  @override
  String get download_detail_leechers_label => 'Leechers';
  @override
  String get download_detail_listen_port => 'Port d\'écoute';
  @override
  String get download_detail_no_peers => 'Aucun pair connecté';
  @override
  String get download_detail_no_trackers => 'Aucun tracker';
  @override
  String get download_detail_pieces_label => 'Pièces';
  @override
  String get download_detail_port_mapping => 'Mappage de ports';
  @override
  String get download_detail_priority_high => 'Élevé';
  @override
  String get download_detail_priority_normal => 'Normal';
  @override
  String get download_detail_priority_skip => 'Ne pas télécharger';
  @override
  String get download_detail_raw_state_label => 'État du moteur';
  @override
  String get download_detail_remaining_label => 'Restant';
  @override
  String get download_detail_save_path_label => 'Chemin de sauvegarde';
  @override
  String get download_detail_section_network => 'Réseau';
  @override
  String get download_detail_section_task => 'Tâche';
  @override
  String get download_detail_section_transfer => 'Transfert';
  @override
  String get download_detail_seeds_label => 'Seeds';
  @override
  String get download_detail_session_rates => 'Débits de session';
  @override
  String get download_detail_tab_files => 'Fichiers';
  @override
  String get download_detail_tab_overview => 'Aperçu';
  @override
  String get download_detail_tab_peers => 'Pairs';
  @override
  String get download_detail_tab_trackers => 'Trackers';
  @override
  String get download_detail_task_gone => 'Tâche introuvable dans le moteur';
  @override
  String get download_detail_task_missing =>
      'Le moteur de téléchargement d\'origine est en ligne, mais ce torrent n\'est plus présent. Les pairs et trackers en direct ne peuvent pas être récupérés ; les informations sauvegardées sont affichées.';
  @override
  String get download_detail_task_queued =>
      'En file d\'attente : en attente que d\'autres téléchargements libèrent un emplacement. Cette tâche n\'a pas encore été transmise au téléchargeur, il n\'y a donc pas de données de pairs ou trackers en direct.';
  @override
  String get download_detail_time_active => 'Temps actif';
  @override
  String get download_detail_time_seeding => 'Temps de seeding';
  @override
  String get download_detail_total_size_label => 'Taille totale';
  @override
  String get download_detail_tracker_disabled => 'Désactivé';
  @override
  String get download_detail_tracker_not_contacted => 'Pas encore contacté';
  @override
  String get download_detail_tracker_not_working => 'Non fonctionnel';
  @override
  String get download_detail_tracker_updating => 'Mise à jour';
  @override
  String get download_detail_tracker_working => 'Fonctionnel';
  @override
  String get download_direct_queue_section => 'Téléchargements directs';
  @override
  String get download_no_managed_video_source =>
      'Aucune source vidéo gérée. Ajoutez un dossier local où stocker les fichiers téléchargés pour que les vidéos terminées entrent dans la bibliothèque.';
  @override
  String get download_open_settings => 'Ouvrir les paramètres';
  @override
  String get download_rate_limit_lan_exempt =>
      'Ne s\'applique pas sur votre réseau local ; les transferts LAN fonctionnent toujours à pleine vitesse.';
  @override
  String get download_rate_limit_lan_included =>
      'S\'applique aussi sur votre réseau local.';
  @override
  String get download_resources_tab => 'Ressources';
  @override
  String get download_save_root_change => 'Changer le dossier';
  @override
  String get download_save_root_create_failed =>
      'Impossible de créer ce dossier. Vérifiez le disque et les permissions.';
  @override
  String get download_save_root_fallback_warning =>
      'Le dossier de téléchargement configuré est indisponible, le dossier par défaut est utilisé.';
  @override
  String get download_save_root_hint =>
      'Les nouveaux téléchargements sont enregistrés ici. Les tâches existantes conservent leur dossier d\'origine.';
  @override
  String get download_save_root_not_absolute =>
      'Veuillez choisir un chemin de dossier absolu.';
  @override
  String get download_save_root_not_writable =>
      'Ce dossier n\'est pas accessible en écriture.';
  @override
  String get download_save_root_reset => 'Restaurer par défaut';
  @override
  String get download_save_root_title => 'Dossier de téléchargement';
  @override
  String get download_settings => 'Paramètres de téléchargement';
  @override
  String get download_status_cancelled => 'Annulé';
  @override
  String get download_status_queued => 'En file d\'attente';
  @override
  String download_subscription_after_episode({required Object episode}) =>
      'Après l\'épisode ${episode}';
  @override
  String get download_subscription_check_all => 'Vérifier tout';
  @override
  String get download_subscription_check_now => 'Vérifier maintenant';
  @override
  String download_subscription_choice_hint({
    required Object group,
    required Object resolution,
  }) =>
      'Suivre ${group} · ${resolution}. Les nouvelles sorties d\'épisodes uniques seront mises en file d\'attente.';
  @override
  String get download_subscription_created =>
      'Téléchargement en file d\'attente et abonnement créé';
  @override
  String get download_subscription_delete => 'Supprimer l\'abonnement';
  @override
  String download_subscription_delete_confirm({required Object title}) =>
      'Supprimer l\'abonnement pour ${title} ? Les tâches téléchargées sont conservées.';
  @override
  String get download_subscription_download_and_create =>
      'Télécharger et s\'abonner';
  @override
  String get download_subscription_empty_body =>
      'Dans Découvrir, choisissez une sortie d\'épisode unique et utilisez Télécharger et s\'abonner.';
  @override
  String get download_subscription_empty_title => 'Aucun abonnement';
  @override
  String download_subscription_last_checked({required Object time}) =>
      'Dernière vérification : ${time}';
  @override
  String download_subscription_latest_episode({required Object episode}) =>
      'Dernier mis en file : épisode ${episode}';
  @override
  String get download_subscription_never_checked => 'Jamais vérifié';
  @override
  String get download_subscription_running_hint =>
      'Fushi vérifie les abonnements actifs toutes les 15 minutes pendant que l\'application est ouverte.';
  @override
  String get download_subscription_source_unavailable =>
      'Cible actuelle (indisponible)';
  @override
  String download_subscription_start_episode({required Object episode}) =>
      '从第 ${episode} 集开始';
  @override
  String get download_subscription_start_episode_invalid =>
      'Entrez un nombre entier (0 ou plus), ou laissez vide';
  @override
  String get download_subscription_unavailable_hint =>
      'Choisissez une sortie d\'épisode unique avec un groupe de release reconnaissable pour vous abonner.';
  @override
  String get download_subscriptions_tab => 'Abonnements';
  @override
  String download_task_action_failed({required Object error}) =>
      'L\'action de la tâche a échoué : ${error}';
  @override
  String get download_task_add => 'Ajouter une tâche';
  @override
  String get download_task_add_content_kind => 'Type de contenu';
  @override
  String get download_task_add_invalid =>
      'Lien magnet ou fichier torrent non reconnu';
  @override
  String get download_task_add_pick_torrent => 'Choisir un fichier torrent';
  @override
  String get download_task_add_submitted => 'Tâche ajoutée';
  @override
  String get download_task_add_title_label => 'Titre';
  @override
  String get download_task_audiobook_needs_alignment =>
      'Audio only - an alignment file (subtitle) is still needed before this can open as a book.';
  @override
  String get download_task_audiobook_pair => 'Add alignment file';
  @override
  String get download_task_collection_unassigned => 'No collection';
  @override
  String get download_task_delete => 'Supprimer la tâche';
  @override
  String download_task_delete_confirm({required Object title}) =>
      'Supprimer la tâche de téléchargement pour ${title} ?';
  @override
  String get download_task_delete_files =>
      'Supprimer aussi les fichiers téléchargés';
  @override
  String get download_task_delete_files_failed =>
      'Impossible de supprimer les données téléchargées ; le moteur de téléchargement ne l\'a pas confirmé';
  @override
  String get download_task_details => 'Voir les détails';
  @override
  String get download_task_error_copied => 'Détails de l\'erreur copiés';
  @override
  String get download_task_error_detail_title => 'Détails de l\'erreur';
  @override
  String get download_task_error_summary_backend_unavailable =>
      'Le moteur de téléchargement est indisponible ou ne correspond plus';
  @override
  String get download_task_error_summary_backend_unconfirmed =>
      'Le torrent n\'a pas pu être confirmé par hash, titre et catégorie';
  @override
  String get download_task_error_summary_generic =>
      'La tâche a rencontré une erreur';
  @override
  String get download_task_error_summary_legacy =>
      'L\'importation héritée nécessite une intervention manuelle';
  @override
  String get download_task_error_summary_source_missing =>
      'La source vidéo gérée est manquante ou inaccessible';
  @override
  String get download_task_error_summary_subtitle =>
      'Les sous-titres sont indisponibles ou n\'ont pas pu être installés';
  @override
  String get download_task_error_summary_torrent_info =>
      'L\'identité du torrent est manquante ou invérifiable';
  @override
  String get download_task_error_view_detail => 'Voir les détails';
  @override
  String get download_task_eta => 'Estimation';
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
  String get download_task_kind_all => 'Tous les types';
  @override
  String get download_task_kind_filter => 'Filtrer par type';
  @override
  String get download_task_lifecycle_active => 'En cours';
  @override
  String get download_task_lifecycle_cancelled => 'Annulé';
  @override
  String get download_task_lifecycle_completed => 'Terminé';
  @override
  String get download_task_lifecycle_failed => 'Échoué';
  @override
  String get download_task_lifecycle_needs_attention =>
      'Nécessite une attention';
  @override
  String get download_task_location_missing =>
      'L\'emplacement du fichier de la tâche est indisponible.';
  @override
  String get download_task_location_open_failed =>
      'Impossible d\'ouvrir l\'emplacement du fichier.';
  @override
  String get download_task_no_match => 'Aucune tâche correspondante';
  @override
  String get download_task_open_location => 'Afficher dans le dossier';
  @override
  String get download_task_pause => 'Pause';
  @override
  String get download_task_priority => 'Priorité de la file';
  @override
  String get download_task_priority_high => 'Haute';
  @override
  String get download_task_priority_low => 'Basse';
  @override
  String get download_task_priority_normal => 'Normale';
  @override
  String get download_task_ratio => 'Ratio';
  @override
  String get download_task_resume => 'Reprendre';
  @override
  String get download_task_search_hint => 'Rechercher des tâches';
  @override
  String get download_task_sort_created => 'Date d\'ajout';
  @override
  String get download_task_sort_direction => 'Reverse sort order';
  @override
  String get download_task_sort_progress => 'Progression';
  @override
  String get download_task_sort_status => 'Statut';
  @override
  String get download_task_stage_download => 'Téléchargement';
  @override
  String get download_task_stage_enqueue => 'Mise en file';
  @override
  String get download_task_stage_import => 'Importation';
  @override
  String get download_task_stage_organize => 'Organisation';
  @override
  String get download_task_stage_scrape => 'Récupération';
  @override
  String get download_task_stage_subtitle => 'Sous-titres';
  @override
  String get download_task_status_active => 'In progress';
  @override
  String get download_task_status_attention => 'Needs attention';
  @override
  String get download_task_status_checking => 'Vérification';
  @override
  String get download_task_status_completed => 'Terminé';
  @override
  String get download_task_status_downloading => 'Téléchargement';
  @override
  String get download_task_status_error => 'Erreur';
  @override
  String get download_task_status_filter => 'Task status';
  @override
  String get download_task_status_metadata => 'Récupération des métadonnées';
  @override
  String get download_task_status_moving => 'Déplacement';
  @override
  String get download_task_status_paused => 'En pause';
  @override
  String get download_task_status_queued => 'En file d\'attente';
  @override
  String get download_task_status_seeding => 'Seeding';
  @override
  String get download_task_status_stalled => 'Bloqué';
  @override
  String get download_task_toggle_failed => 'Échec de la pause/reprise';
  @override
  String get download_tasks_tab => 'Tâches';
  @override
  String get download_test_connection => 'Tester la connexion';
  @override
  String get download_test_connection_failed =>
      'Connexion échouée. Vérifiez l\'adresse et les identifiants.';
  @override
  String download_test_connection_failed_reason({required Object message}) =>
      'Connexion échouée : ${message}';
  @override
  String download_test_connection_ok({required Object version}) =>
      'Connecté (version : ${version})';
  @override
  String get download_tracker_auto_add =>
      'Ajouter automatiquement les trackers de l’abonnement aux nouveaux téléchargements';
  @override
  String get download_tracker_auto_add_hint =>
      'La liste est mise en cache pendant 6 heures. L’échec de l’abonnement ne bloque pas le téléchargement.';
  @override
  String download_tracker_fetch_failed({required Object message}) =>
      'Impossible de récupérer les trackers : ${message}';
  @override
  String download_tracker_preview_count({required Object count}) =>
      '${count} trackers récupérés';
  @override
  String get download_tracker_preview_empty =>
      'Récupère l’abonnement pour prévisualiser les trackers HTTP, HTTPS et UDP pris en charge.';
  @override
  String get download_tracker_refresh => 'Récupérer les trackers';
  @override
  String get download_tracker_section => 'Abonnement aux trackers';
  @override
  String get download_tracker_url => 'URL de l’abonnement';
  @override
  String get download_video_source_required => 'Source vidéo requise';
  @override
  String get drag_drop_failed =>
      'Impossible de traiter les fichiers déposés. Veuillez réessayer.';
  @override
  String get drag_drop_folder_source_added =>
      'Dossier ajouté comme source de bibliothèque et scanné.';
  @override
  String get drag_drop_folder_source_exists =>
      'Ce dossier est déjà une source de bibliothèque.';
  @override
  String get drag_drop_manga_archive_unsupported =>
      'Impossible d\'importer des archives .cbr/.rar — reconditionnez en .cbz ou un dossier d\'images.';
  @override
  String get drag_drop_need_card_target =>
      'Déposez les sous-titres ou l\'audio sur un livre ou une vidéo';
  @override
  String get drag_drop_unsupported_on_books =>
      'Déposez les fichiers de livres ici. Passez à Vidéo ou Dictionnaires pour ces fichiers.';
  @override
  String get drag_drop_unsupported_on_dictionary =>
      'Déposez les fichiers de dictionnaire .zip, .dsl ou .mdx ici. Les fichiers CSS ne fonctionnent qu\'avec un paquet de dictionnaire.';
  @override
  String get drag_drop_unsupported_on_video =>
      'Déposez les vidéos, playlists ou sous-titres ici. Passez à Livres ou Dictionnaires pour ces fichiers.';
  @override
  String get edit_custom_theme => 'Modifier le thème personnalisé';
  @override
  String get eink_mode => 'Mode e-ink';
  @override
  String get eink_mode_hint =>
      'Thème noir et blanc pur sans animations et avec des surlignages en trait, pour écrans e-ink';
  @override
  String get enable_swipe_to_close => 'Glisser pour fermer la fenêtre';
  @override
  String get epub_delete_error => 'échec de la suppression du livre';
  @override
  String get epub_delete_title => 'Supprimer le livre';
  @override
  String get epub_parse_fallback =>
      'Métadonnées du livre réparées depuis la base de données';
  @override
  String get error_ankidroid_api => 'Erreur AnkiDroid';
  @override
  String get error_ankidroid_api_content =>
      'Un problème de communication avec AnkiDroid est survenu.\n\nAssurez-vous que le service en arrière-plan d\'AnkiDroid est actif et que toutes les permissions nécessaires sont accordées pour continuer.';
  @override
  String get error_copied => 'Erreur copiée dans le presse-papiers';
  @override
  String get error_load_failed => 'Une erreur est survenue lors du chargement';
  @override
  String get error_log_diagnostics_section =>
      'Diagnostics (pas des erreurs d\'application)';
  @override
  String get error_log_empty => 'Aucun journal d\'erreurs';
  @override
  String error_log_label({required Object n}) => 'Journal d\'erreurs (${n})';
  @override
  String get error_log_previous_run =>
      'Journaux précédents (avant la dernière exécution)';
  @override
  String get error_log_share_subject => 'Journal d\'erreurs Fushi';
  @override
  String get extension_popup_independent_size =>
      'Taille séparée pour l\'extension navigateur';
  @override
  String get extension_popup_independent_size_hint =>
      'Donner au pop-up de recherche de l\'extension navigateur sa propre taille maximale au lieu de suivre le pop-up de l\'application';
  @override
  String get extension_popup_max_height => 'Hauteur max du pop-up d\'extension';
  @override
  String get extension_popup_max_width => 'Largeur max du pop-up d\'extension';
  @override
  String get external_window_capture_failed => 'Capture de fenêtre échouée';
  @override
  String get external_window_current_game => 'Jeu actuel';
  @override
  String get external_window_mining => 'Capture de fenêtre externe';
  @override
  String get external_window_no_windows => 'Aucune fenêtre capturable trouvée';
  @override
  String get external_window_none =>
      'Aucune fenêtre liée (appuyez pour sélectionner)';
  @override
  String get external_window_refresh => 'Actualiser la liste des fenêtres';
  @override
  String get external_window_select => 'Sélectionner la fenêtre cible';
  @override
  String get external_window_unbind => 'Délier la fenêtre';
  @override
  String get external_window_unsupported =>
      'La capture de fenêtre externe est uniquement disponible sous Windows';
  @override
  String get failed_online_service =>
      'échec de la communication avec le service en ligne';
  @override
  String get favorite_added => 'Phrase enregistrée dans les favoris';
  @override
  String get favorite_removed => 'Phrase retirée des favoris';
  @override
  String favorites({required Object n}) => 'Favoris (${n})';
  @override
  String field_fallback_used({
    required Object field,
    required Object secondField,
  }) =>
      'Le champ ${field} a utilisé ${secondField} comme terme de recherche de secours.';
  @override
  String file_count({required Object count}) => '${count} fichiers';
  @override
  String get floating_dict_close => 'Fermer';
  @override
  String get floating_dict_title => 'Dictionnaire';
  @override
  String get floating_lyric_bg_opacity =>
      'Opacité du fond du sous-titre flottant';
  @override
  String get floating_lyric_button_bg_opacity =>
      'Opacité du fond des boutons du sous-titre flottant';
  @override
  String get floating_lyric_click_lookup =>
      'Toucher le sous-titre flottant pour rechercher';
  @override
  String get floating_lyric_click_lookup_hint =>
      'Gardez cette option activée avec le verrouillage de position si vous voulez conserver la recherche de mots.';
  @override
  String get floating_lyric_close => 'Fermer';
  @override
  String get floating_lyric_context_lines =>
      'Lignes de contexte du sous-titre flottant';
  @override
  String get floating_lyric_context_lines_hint =>
      '0 n\'affiche que la ligne actuelle (une seule ligne, inchangée) ; réglez 1-3 pour afficher ce nombre de lignes avant et après';
  @override
  String get floating_lyric_corner_radius =>
      'Rayon des coins du sous-titre flottant';
  @override
  String get floating_lyric_corner_radius_hint =>
      '0 garde les coins par défaut de chaque plateforme ; augmentez pour arrondir la barre et les boutons';
  @override
  String get floating_lyric_font_size =>
      'Taille de police du sous-titre flottant';
  @override
  String get floating_lyric_hint =>
      'Afficher la phrase actuelle par-dessus les autres applications.';
  @override
  String get floating_lyric_lock => 'Verrouiller';
  @override
  String get floating_lyric_next => 'Suivant';
  @override
  String get floating_lyric_no_audio => 'Ce livre n\'a aucun audio à écouter';
  @override
  String get floating_lyric_permission_hint =>
      'L\'autorisation de superposition est requise pour afficher les sous-titres flottants.';
  @override
  String get floating_lyric_permission_hint_coloros =>
      'Si le système refuse constamment l\'autorisation de superposition : réinstallez l\'APK de cette application avec un gestionnaire de fichiers, ou désactivez la surveillance des permissions dans les options développeur, puis réessayez.';
  @override
  String get floating_lyric_play_pause => 'Lecture';
  @override
  String get floating_lyric_previous => 'Précédent';
  @override
  String get floating_lyric_text_opacity =>
      'Opacité du texte du sous-titre flottant';
  @override
  String get floating_lyric_toggle_action => 'Sous-titre flottant';
  @override
  String get floating_lyric_topmost => 'Garder au premier plan';
  @override
  String get floating_lyric_unavailable_hint =>
      'Impossible d\'afficher la fenêtre de sous-titre flottant.';
  @override
  String get floating_lyric_unlock => 'Déverrouiller';
  @override
  String get floating_lyric_width => 'Largeur du sous-titre flottant';
  @override
  String get floating_lyric_width_hint =>
      '0 utilise la largeur par défaut de la plateforme ; définissez une valeur pour fixer la largeur de la barre';
  @override
  String get focus_navigation_enabled => 'Navigation au focus clavier/manette';
  @override
  String get focus_navigation_enabled_hint =>
      'Déplacez le focus avec les flèches ou une manette et affichez un cadre de focus.';
  @override
  String get folder_picker_permission_required =>
      'L\'autorisation de stockage est nécessaire pour parcourir les dossiers';
  @override
  String get follow_audio_off_tooltip => 'Suivi audio : DéSACTIVé';
  @override
  String get follow_audio_on_tooltip => 'Suivi audio : ACTIVé';
  @override
  String get font_desc_hina_mincho =>
      'Mincho décoratif doux · Se combine bien avec Noto Sans JP';
  @override
  String get font_desc_klee_one =>
      'Style manuscrit · Clair et lisible · Se combine bien avec Noto Sans JP';
  @override
  String get font_desc_mplus_rounded_1c =>
      'Style arrondi mignon · Idéal pour les light novels · Se combine bien avec Noto Sans JP';
  @override
  String get font_desc_noto_sans_jp =>
      'Google/Adobe Gothic · Priorité glyphes japonais · Poids variable';
  @override
  String get font_desc_noto_sans_sc =>
      'Google/Adobe Gothic · Priorité chinois simplifié · À utiliser comme police de secours';
  @override
  String get font_desc_noto_sans_tc =>
      'Google/Adobe Gothic · Priorité chinois traditionnel';
  @override
  String get font_desc_noto_serif_jp =>
      'Google/Adobe Serif · Priorité glyphes japonais · Idéal pour la lecture verticale';
  @override
  String get font_desc_noto_serif_sc =>
      'Google/Adobe Serif · Priorité chinois simplifié · À utiliser comme police de secours';
  @override
  String get font_desc_noto_serif_tc =>
      'Google/Adobe Serif · Glyphes chinois traditionnels en priorité · Idéal pour la lecture verticale';
  @override
  String get font_desc_shippori_mincho =>
      'Mincho élégant · Idéal pour la littérature · Se combine bien avec Noto Sans JP';
  @override
  String get font_desc_zen_kaku_gothic_new =>
      'Kaku Gothic moderne · Lecture générale · Se combine bien avec Noto Sans JP';
  @override
  String get font_desc_zen_maru_gothic =>
      'Gothic arrondi doux · Se combine bien avec Noto Sans JP';
  @override
  String get font_desc_zen_old_mincho =>
      'Mincho vintage · Style littéraire classique · Se combine bien avec Noto Sans JP';
  @override
  String get font_source_file => 'Fichier';
  @override
  String get font_source_system => 'Système';
  @override
  String get font_target_app_ui => 'Police de l\'interface';
  @override
  String get font_target_body => 'Police du texte des romans';
  @override
  String get font_target_dictionary => 'Police du dictionnaire';
  @override
  String get font_target_game_lookup =>
      'Police de la fenêtre de recherche de jeu';
  @override
  String get font_target_video_subtitle => 'Video Subtitle Font';
  @override
  String get gal_card_lookup_independent_size =>
      'Taille séparée pour la carte en jeu';
  @override
  String get gal_card_lookup_independent_size_hint =>
      'Dimensionner la carte de recherche en jeu indépendamment de la fenêtre de recherche pop-out';
  @override
  String get gal_card_lookup_max_height => 'Hauteur max de la carte en jeu';
  @override
  String get gal_card_lookup_max_width => 'Largeur max de la carte en jeu';
  @override
  String get gal_hook_click_lookup => 'Toucher un mot pour le chercher';
  @override
  String get gal_hook_click_lookup_hint =>
      'Désactivé : les clics sur le texte ne déclenchent jamais de recherche — pratique avec le clic traversant, quand vous préférez ne pas toucher un mot par erreur.';
  @override
  String get gal_hook_fold_progressive_lines =>
      'Fusionner les répliques découpées';
  @override
  String get gal_hook_fold_progressive_lines_hint =>
      'Certains moteurs redessinent toute la ligne à chaque clic, si bien qu\'une même ligne est capturée plusieurs fois. Replie ces instantanés en une seule ligne.';
  @override
  String get gal_hook_ingame_lookup => 'Recherche dans le dictionnaire en jeu';
  @override
  String get gal_hook_ingame_lookup_engine_unsupported =>
      'Ce moteur de jeu ne prend pas encore en charge la recherche en jeu';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copied =>
      'SHA-256 de l\'exécutable copié';
  @override
  String get gal_hook_ingame_lookup_exe_hash_copy =>
      'Copier le SHA-256 de l\'exécutable du jeu';
  @override
  String get gal_hook_ingame_lookup_exe_hash_unavailable =>
      'Impossible de lire l\'exécutable du jeu';
  @override
  String get gal_hook_ingame_lookup_hint =>
      'Afficher la carte du dictionnaire dans la fenêtre du jeu elle-même (moteur KiriKiri, Windows uniquement)';
  @override
  String get gal_hook_ingame_lookup_version_unsupported =>
      'Cette version du jeu ne figure pas encore dans la liste prise en charge';
  @override
  String get gal_hook_lookup_trigger => 'Déclencheur de recherche';
  @override
  String get gal_hook_lookup_trigger_hint =>
      'Quel bouton de la souris cherche le mot sous le pointeur. Indépendant du réglage ci-dessus : vous pouvez désactiver la recherche au toucher et chercher quand même avec un bouton latéral.';
  @override
  String get gal_hook_lookup_trigger_left => 'Clic gauche';
  @override
  String get gal_hook_lookup_trigger_middle => 'Clic molette';
  @override
  String get gal_hook_lookup_trigger_side => 'Bouton latéral';
  @override
  String get gal_hook_overlay_legibility_section => 'Fenêtre et lisibilité';
  @override
  String get gal_hook_passthrough_blocks_mouse =>
      'Le texte reçoit encore les clics en mode traversant';
  @override
  String get gal_hook_passthrough_blocks_mouse_hint =>
      'Activé : les lignes de texte reçoivent encore les clics, vous pouvez donc toucher un mot. Désactivé : toute la surcouche est transparente à la souris — vous cliquez ce qui est dessous, mais toucher un mot ne marche plus.';
  @override
  String get gal_hook_text_alignment => 'Alignement du texte';
  @override
  String get gal_hook_text_alignment_center => 'Centré';
  @override
  String get gal_hook_text_alignment_left => 'Gauche';
  @override
  String get gal_hook_text_background_color =>
      'Couleur d\'arrière-plan de la fenêtre';
  @override
  String get gal_hook_text_background_opacity =>
      'Opacité de l\'arrière-plan de la fenêtre';
  @override
  String get gal_hook_text_background_opacity_hint =>
      'Réglez à 0 % pour une fenêtre transparente style paroles de bureau.';
  @override
  String get gal_hook_text_bold => 'Texte en gras';
  @override
  String get gal_hook_text_bold_hint =>
      'Utiliser du texte semi-gras pour une meilleure lisibilité sur les graphiques du jeu.';
  @override
  String get gal_hook_text_color => 'Couleur du texte';
  @override
  String get gal_hook_text_corner_radius => 'Rayon des coins de la fenêtre';
  @override
  String get gal_hook_text_corner_radius_hint =>
      'Ajustez le rayon des coins de l\'arrière-plan.';
  @override
  String get gal_hook_text_font => 'Police de la fenêtre de recherche de jeu';
  @override
  String get gal_hook_text_font_hint =>
      'Choisissez des polices depuis la bibliothèque de polices gérée. La première police activée est utilisée.';
  @override
  String get gal_hook_text_font_size =>
      'Taille de police des sous-titres de galgame';
  @override
  String get gal_hook_text_font_size_hint =>
      'Faites glisser le coin de la superposition pour redimensionner la fenêtre ; la taille des sous-titres se règle ici.';
  @override
  String get gal_hook_text_letter_spacing => 'Espacement des lettres';
  @override
  String get gal_hook_text_letter_spacing_hint =>
      'Ajustez l\'espacement entre les caractères sans changer le test de détection de recherche.';
  @override
  String get gal_hook_text_line_height => 'Hauteur de ligne';
  @override
  String get gal_hook_text_line_height_hint =>
      'Ajustez l\'espacement vertical des lignes avec retour à la ligne.';
  @override
  String get gal_hook_text_outline_color => 'Couleur du contour';
  @override
  String get gal_hook_text_outline_width => 'Épaisseur du contour';
  @override
  String get gal_hook_text_outline_width_hint =>
      'Réglez à 0 pour désactiver le contour ; l\'ombre subtile reste.';
  @override
  String get gal_hook_text_padding => 'Marge intérieure horizontale du texte';
  @override
  String get gal_hook_text_padding_hint =>
      'Éloigner le texte des bords de la fenêtre et de la poignée de redimensionnement.';
  @override
  String get gal_hook_text_vertical_alignment => 'Alignement vertical';
  @override
  String get gal_hook_text_vertical_alignment_center => 'Centre';
  @override
  String get gal_hook_text_vertical_alignment_top => 'Haut';
  @override
  String get gal_hook_toolbar_auto_hide => 'Masquer la barre automatiquement';
  @override
  String get gal_hook_toolbar_auto_hide_hint =>
      'Masque la barre jusqu\'à ce que le pointeur atteigne la zone de texte, à la manière de LunaHook. Masqué veut dire vraiment masqué : ces pixels reviennent au jeu.';
  @override
  String get gal_mining_animated_format =>
      'Format d\'animation de carte de jeu';
  @override
  String get gal_mining_image_mode => 'Image de carte galgame';
  @override
  String get gal_mining_image_mode_screenshot => 'Capture d\'écran';
  @override
  String get gal_mining_image_mode_video_clip => 'Video clip';
  @override
  String get gal_mining_image_mode_video_clip_hint =>
      'Records the game window from the moment the line appears until you mine the card, mixed with the sentence audio. Falls back to an animated image or screenshot when recording has not started or fewer than 2 frames were captured.';
  @override
  String get gal_mining_still_format =>
      'Format de capture d\'écran de carte de jeu';
  @override
  String get game_add => 'Ajouter un jeu';
  @override
  String get game_already_added => 'Ce jeu est déjà dans la bibliothèque';
  @override
  String get game_attach_and_capture => 'Attacher et capturer';
  @override
  String get game_audio_backend_engine => 'PCM du moteur';
  @override
  String get game_audio_backend_loopback => 'Bouclage système (mixé)';
  @override
  String get game_audio_backend_none => 'Pas de source audio';
  @override
  String get game_audio_backend_resource => 'Audio des ressources du jeu';
  @override
  String get game_audio_duration => 'Durée audio';
  @override
  String get game_audio_fallback_clean => 'Sources propres uniquement';
  @override
  String get game_audio_fallback_clean_hint =>
      'Utilise l\'audio des ressources du jeu et le PCM moteur uniquement. Les lignes sans voix sont créées sans audio au lieu de récupérer la musique.';
  @override
  String get game_audio_fallback_disabled_missing =>
      '未找到与该句匹配的游戏资源音频；已关闭降级，未制卡';
  @override
  String get game_audio_fallback_full => 'Autoriser l\'audio mixé';
  @override
  String get game_audio_fallback_full_hint =>
      'Repli sur le mix système quand aucune voix propre n\'est capturée ; le clip peut contenir de la musique et des effets.';
  @override
  String get game_audio_fallback_policy => 'Repli audio';
  @override
  String get game_audio_fallback_resource => 'Ressources originales uniquement';
  @override
  String get game_audio_fallback_resource_hint =>
      'Nécessite le fichier voix original livré avec le jeu ; la création de carte est refusée s\'il est absent.';
  @override
  String get game_audio_requires_thread =>
      'La source de capture audio est peut-être prête, mais l\'audio de phrase n\'existe pas tant qu\'un fil n\'est pas sélectionné et qu\'une ligne n\'est pas reçue.';
  @override
  String get game_audio_resource_id => '音频资源 ID';
  @override
  String get game_audio_tracks => 'Pistes audio actives';
  @override
  String get game_auto_cover => 'Récupérer la couverture automatiquement';
  @override
  String get game_back_to_capture => 'Retour à l\'espace de capture';
  @override
  String get game_back_to_library => 'Retour à la ludothèque';
  @override
  String get game_capture_active => 'Capture active';
  @override
  String get game_capture_degraded_loopback =>
      'Le jeu tourne, mais l\'injection du moteur a échoué ; repli sur l\'audio système, qui peut mélanger musique et effets.';
  @override
  String get game_capture_description =>
      'Lancez ou attachez un jeu, puis surveillez le texte, la voix, les captures d\'écran et la sortie Anki.';
  @override
  String get game_capture_empty_body =>
      'Lancez ou liez un jeu ; l\'état du texte et de l\'audio de phrase apparaîtra ici.';
  @override
  String get game_capture_empty_title => 'Aucune ligne reçue';
  @override
  String get game_capture_launch_failed => 'Lancement ou capture du jeu échoué';
  @override
  String get game_capture_launching =>
      'Lancement du jeu et démarrage de la capture…';
  @override
  String get game_capture_running => 'Session de capture en cours';
  @override
  String get game_capture_setup_hint =>
      'Choisissez d\'abord le fil de dialogue. Fushi ne peut associer l\'audio qu\'aux lignes du fil sélectionné.';
  @override
  String get game_capture_setup_title => 'Configurer la capture';
  @override
  String get game_capture_window_missing =>
      'Le processus du jeu a démarré mais sa fenêtre n\'est jamais apparue, le jeu n\'a peut-être pas été lancé. Essayez de le relancer.';
  @override
  String get game_capture_workbench => 'Espace de capture';
  @override
  String get game_capture_workbench_tab => 'Espace de capture';
  @override
  String get game_captured_lines => 'Lignes capturées';
  @override
  String get game_card_mapping_missing =>
      'Les mappages de champs Anki manquent des jetons de carte de jeu';
  @override
  String get game_card_sentence_audio_missing =>
      'La carte a été créée sans audio de phrase ; aucun audio d\'une autre ligne n\'a été substitué.';
  @override
  String get game_clear_events => 'Effacer les événements';
  @override
  String get game_cover_not_found =>
      'Aucune couverture utilisable trouvée dans le dossier ou l\'exécutable du jeu';
  @override
  String get game_cover_searching => 'Recherche d\'une couverture…';
  @override
  String get game_cover_updated => 'Couverture mise à jour';
  @override
  String get game_dashboard => 'Accueil';
  @override
  String get game_detail_missing => 'Ce jeu n\'est plus dans la bibliothèque';
  @override
  String get game_detail_tab_edit => 'Modifier';
  @override
  String get game_detail_tab_stats => 'Stats';
  @override
  String get game_detail_tab_summary => 'Aperçu';
  @override
  String get game_diagnostics => 'Diagnostics de compatibilité';
  @override
  String get game_diagnostics_subtitle =>
      'Étapes de session, points de terminaison, pistes audio et événements structurés';
  @override
  String game_drop_imported({required Object count}) =>
      '${count} jeu(x) ajouté(s)';
  @override
  String get game_drop_no_exe =>
      'Aucun nouveau .exe de jeu parmi les fichiers déposés';
  @override
  String get game_edit_developer => 'Développeur';
  @override
  String get game_edit_display_name => 'Nom d\'affichage';
  @override
  String get game_edit_exe_path => 'Chemin de l\'exécutable';
  @override
  String get game_edit_invalid_date =>
      'La date de sortie doit être au format AAAA-MM-JJ';
  @override
  String get game_edit_launch_args => 'Arguments de lancement';
  @override
  String get game_edit_launch_args_hint =>
      'Passés au jeu au lancement, par ex. -windowed';
  @override
  String get game_edit_nsfw => 'Titre pour adultes';
  @override
  String get game_edit_release_date => 'Date de sortie (AAAA-MM-JJ)';
  @override
  String get game_edit_save => 'Enregistrer';
  @override
  String get game_edit_saved => 'Enregistré';
  @override
  String get game_edit_summary => 'Description';
  @override
  String get game_edit_tags => 'Tags (séparés par des virgules)';
  @override
  String get game_edit_user_rating => 'Ma note (0-10)';
  @override
  String get game_edit_user_review => 'Mon avis';
  @override
  String get game_edit_workdir => 'Répertoire de travail';
  @override
  String get game_empty => 'Aucun jeu ajouté';
  @override
  String get game_endpoint_phase_connected => 'Connecté';
  @override
  String get game_endpoint_phase_connecting => 'Connexion';
  @override
  String get game_endpoint_phase_retrying => 'Nouvelle tentative';
  @override
  String get game_endpoint_phase_stopped => 'Arrêté';
  @override
  String get game_endpoints_engine_active =>
      'Le texte est fourni par le hook moteur ; ces points de terminaison sont optionnels';
  @override
  String get game_endpoints_hint =>
      'Ports pour outils de texte externes (Textractor / LunaTranslator etc.) ; ignorez si vous ne les utilisez pas';
  @override
  String get game_event_all => 'Tous les événements';
  @override
  String get game_event_warnings => 'Avertissements et erreurs';
  @override
  String get game_exe_missing => 'Exécutable du jeu introuvable';
  @override
  String get game_filter => 'Filtrer';
  @override
  String get game_filter_all => 'Tout';
  @override
  String get game_filter_favorited => 'Favoris';
  @override
  String get game_filter_hide_nsfw => 'Masquer les titres pour adultes';
  @override
  String get game_filter_local_only => 'Avec fichier local';
  @override
  String get game_filter_metadata_only => 'Métadonnées uniquement';
  @override
  String get game_filter_mined => 'Avec cartes créées';
  @override
  String get game_filter_reset => 'Effacer les filtres';
  @override
  String get game_filter_source => 'Disponibilité';
  @override
  String get game_filter_status => 'Statut de jeu';
  @override
  String get game_filter_tags => 'Tags';
  @override
  String get game_filter_with_audio => 'Avec audio';
  @override
  String get game_focus_continue => 'Continuer';
  @override
  String get game_follow_live => 'Suivre en direct';
  @override
  String get game_health => 'État de santé';
  @override
  String get game_health_anki => 'Sortie Anki';
  @override
  String get game_health_audio => 'Source audio';
  @override
  String get game_health_helper => 'Assistant de hook';
  @override
  String get game_health_process => 'Processus du jeu';
  @override
  String get game_health_text => 'Source de texte';
  @override
  String get game_health_upscaling => 'Mise à l\'échelle de la fenêtre';
  @override
  String get game_health_window => 'Fenêtre du jeu';
  @override
  String get game_helper_bundle_missing =>
      'L\'assistant de hook galgame n\'est pas inclus dans cette version. Mettez à jour Fushi pour l\'obtenir.';
  @override
  String get game_helper_download => 'Télécharger';
  @override
  String game_helper_download_failed({required Object error}) =>
      'Échec du téléchargement du composant moteur : ${error}';
  @override
  String get game_helper_downloading => 'Téléchargement du composant moteur…';
  @override
  String get game_helper_install_incomplete =>
      'Installation du composant moteur incomplète, veuillez réessayer';
  @override
  String game_helper_needed_body({required Object size}) =>
      'Lancer un galgame nécessite le composant d\'injection moteur (environ ${size}). Il contient du code d\'injection de processus et est distribué séparément de l\'application pour éviter les faux positifs des antivirus. Le télécharger maintenant ?';
  @override
  String get game_helper_needed_title => 'Composant moteur de galgame requis';
  @override
  String get game_helper_size_unknown => 'taille inconnue';
  @override
  String get game_helper_verification_failed =>
      'Composant moteur bloqué : sa somme de contrôle n\'a pas pu être vérifiée (le fichier .sha256 de GitHub est inaccessible, manquant ou ne correspond pas). Fushi refuse d\'installer du code d\'injection non vérifié.';
  @override
  String get game_home_subtitle => 'Ludothèque et surveillance de capture';
  @override
  String get game_hook_btn_close => 'Fermer la superposition';
  @override
  String get game_hook_btn_follow => 'Suivre les nouvelles lignes';
  @override
  String get game_hook_btn_lock => 'Verrouiller la position';
  @override
  String get game_hook_btn_passthrough =>
      'Laisser passer les clics vers le jeu';
  @override
  String get game_hook_btn_recapture => 'Réenregistrer la voix';
  @override
  String get game_hook_btn_replay => 'Rejouer la voix de cette ligne';
  @override
  String get game_hook_btn_topmost => 'Garder au premier plan';
  @override
  String get game_hook_btn_transparency => 'Basculer l\'arrière-plan';
  @override
  String get game_hook_btn_workbench => 'Ouvrir l\'atelier de capture';
  @override
  String get game_hook_code_label => 'Libellé (facultatif)';
  @override
  String get game_hook_code_paste_body =>
      'Le code est lié à l\'exécutable du jeu en cours d\'exécution, afin que Fushi puisse le réutiliser la prochaine fois.';
  @override
  String get game_hook_code_paste_hint =>
      'Collez le code brut, p. ex. /HQN4@4CE90:game.exe';
  @override
  String get game_hook_code_paste_invalid =>
      'Cela ne ressemble pas à un code de hook';
  @override
  String get game_hook_code_paste_saved =>
      'Code de hook enregistré pour ce jeu';
  @override
  String get game_hook_code_paste_title => 'Coller un code de hook';
  @override
  String get game_hook_fallback_all_audio_sources_failed =>
      'Ni le hook voix du moteur ni le bouclage système n\'ont pu démarrer ; aucun audio ne peut être capturé.';
  @override
  String get game_hook_fallback_engine_attach_failed =>
      'L\'attachement du hook voix du moteur au jeu en cours a échoué ; le mix système est utilisé à la place.';
  @override
  String get game_hook_fallback_engine_pcm_unavailable =>
      'Le hook voix du moteur est installé, mais le jeu n\'a pas encore joué de voix. Le mix système est utilisé pour l\'instant et basculera automatiquement à l\'arrivée de la première voix.';
  @override
  String get game_hook_fallback_launch_injection_failed =>
      'Le jeu tourne, mais l\'injection précoce du moteur a échoué ; le mix système est utilisé à la place.';
  @override
  String get game_hook_fallback_window_not_found =>
      'La capture audio est en cours, mais la fenêtre du jeu n\'est pas encore apparue, les captures d\'écran sont donc indisponibles. La liaison se fera automatiquement une fois la fenêtre visible.';
  @override
  String get game_hook_line_unavailable =>
      'Cette ligne capturée n\'est plus disponible.';
  @override
  String get game_hook_mining_no_session_lines =>
      'Aucune ligne capturée, il n\'y a donc rien à quoi rattacher cette carte. Choisissez un autre fil de texte dans l\'espace de travail.';
  @override
  String get game_hook_reason_access_denied =>
      'Le jeu s\'exécute avec des privilèges plus élevés ; démarrez Fushi en tant qu\'administrateur et réessayez.';
  @override
  String get game_hook_reason_bitness_mismatch =>
      'L\'architecture de l\'assistant ne correspond pas au jeu (32 bits vs 64 bits) ; réinstallez l\'assistant.';
  @override
  String get game_hook_reason_capability_probe_failed =>
      'Le composant de capture n\'a pas répondu à la vérification de capacité. Il a été trouvé sur le disque mais n\'a pas pu s\'exécuter ou n\'a pas répondu à temps — l\'antivirus peut le bloquer, Fushi peut manquer de permission pour le lancer, ou un processus assistant résiduel peut être bloqué. Fermez tous les jeux, vérifiez la quarantaine de votre antivirus, puis réessayez.';
  @override
  String get game_hook_reason_create_process_failed =>
      'Le jeu n\'a pas pu être lancé depuis Fushi ; vérifiez le chemin de l\'exécutable.';
  @override
  String get game_hook_reason_elevation_required =>
      'Ce jeu nécessite les droits administrateur ; démarrez Fushi en tant qu\'administrateur et relancez-le.';
  @override
  String get game_hook_reason_game_exe_missing =>
      'L\'exécutable du jeu n\'existe plus au chemin enregistré.';
  @override
  String get game_hook_reason_guarded_hook_failed =>
      'Un hook protégé par profil n\'a pas pu être installé à temps ; nouvelle tentative automatique.';
  @override
  String get game_hook_reason_handshake_timeout =>
      'Le jeu a été hooké mais n\'a produit ni texte ni audio à temps ; ce moteur n\'est peut-être pas encore pris en charge.';
  @override
  String get game_hook_reason_helper_missing =>
      'L\'assistant de hook voix n\'est pas installé pour cette architecture de jeu ; installez-le et réessayez.';
  @override
  String get game_hook_reason_hook_dll_missing =>
      'Le paquet de l\'assistant est incomplet (bibliothèque de hook manquante) ; réinstallez-le.';
  @override
  String get game_hook_reason_injection_failed =>
      'L\'injection dans le jeu a été bloquée ; ajoutez Fushi et le jeu aux exclusions de l\'antivirus.';
  @override
  String get game_hook_reason_native_loopback_ack_timeout =>
      'The audio capture policy was not confirmed in time. Text capture still works; try again if game audio is missing.';
  @override
  String get game_hook_reason_protocol_mismatch =>
      'Le composant de capture ne correspond pas à cette version de Fushi. Il est fourni avec Fushi, rien à installer séparément. D\'abord, fermez complètement le jeu et relancez-le : le processus du jeu peut encore contenir le composant injecté par une session précédente. Si le problème persiste, les fichiers du composant sur le disque sont plus anciens que Fushi, car la dernière mise à jour n\'a pas pu les remplacer pendant qu\'un jeu était en cours. Fermez tous les jeux, puis relancez l\'installateur de Fushi.';
  @override
  String get game_hook_reason_ready_timeout =>
      'La bibliothèque de hook n\'a pas fini de charger à temps ; l\'analyse antivirus peut en être la cause.';
  @override
  String get game_hook_reason_resident_hook_mismatch =>
      'Une session de capture précédente est encore chargée dans le jeu ; redémarrez le jeu une fois.';
  @override
  String get game_hook_reason_resume_failed =>
      'Le jeu lancé n\'a pas pu être repris et a été arrêté ; relancez-le.';
  @override
  String get game_hook_reason_shared_memory_unavailable =>
      'Le canal de capture n\'a pas pu être ouvert ; redémarrez Fushi.';
  @override
  String get game_hook_reason_spawn_failed =>
      'L\'assistant n\'a pas pu être démarré ; vérifiez que l\'antivirus ne l\'a pas supprimé ou bloqué.';
  @override
  String get game_hook_reason_stale_session =>
      'Une session de capture précédente n\'a pas encore été libérée ; Fushi réessaie tout seul, aucune action n\'est nécessaire.';
  @override
  String get game_hook_reason_steam_timeout =>
      'Steam a accepté la demande de lancement mais le processus du jeu n\'est jamais apparu.';
  @override
  String get game_hook_reason_target_missing =>
      'Aucun processus ou exécutable de jeu n\'a été sélectionné pour la capture.';
  @override
  String get game_hook_recapture_empty =>
      'Aucun audio capturé dans la fenêtre de recapture';
  @override
  String get game_hook_recapture_saved =>
      'Voix recapturée enregistrée pour cette ligne';
  @override
  String get game_hook_recapture_started =>
      'Enregistrement — rejouez cette ligne dans le jeu';
  @override
  String get game_hook_recapture_unavailable =>
      'La recapture vocale nécessite l\'audio en bouclage système';
  @override
  String get game_import_drop_hint =>
      'Vous pouvez aussi glisser des fichiers .exe dans la ludothèque';
  @override
  String get game_japanese_locale => 'Locale japonaise';
  @override
  String get game_japanese_locale_auto => 'Auto';
  @override
  String get game_japanese_locale_evidence_dir_file_name_chinese_patch =>
      'Les noms de fichiers signalent un patch chinois';
  @override
  String get game_japanese_locale_evidence_dir_file_name_japanese =>
      'Les noms de fichiers contiennent des kana';
  @override
  String get game_japanese_locale_evidence_dir_text_gbk =>
      'Les fichiers texte sont en GBK';
  @override
  String get game_japanese_locale_evidence_dir_text_shift_jis =>
      'Les fichiers texte sont en Shift-JIS';
  @override
  String get game_japanese_locale_evidence_dir_text_simplified_hanzi =>
      'Les fichiers texte contiennent du chinois simplifié';
  @override
  String get game_japanese_locale_evidence_exe_shift_jis_strings =>
      'L\'exécutable contient des chaînes Shift-JIS';
  @override
  String get game_japanese_locale_evidence_manifest_utf8_code_page =>
      'Le manifeste déclare la page de codes UTF-8';
  @override
  String get game_japanese_locale_evidence_user_language_japanese =>
      'La langue du contenu est le japonais';
  @override
  String get game_japanese_locale_evidence_user_language_other =>
      'La langue du contenu n\'est pas le japonais';
  @override
  String get game_japanese_locale_evidence_version_info_chinese =>
      'La ressource de version est en chinois';
  @override
  String get game_japanese_locale_evidence_version_info_japanese =>
      'La ressource de version est en japonais';
  @override
  String get game_japanese_locale_hint =>
      'Les versions patchées en chinois/anglais doivent désactiver ceci, sinon le jeu plante au lancement';
  @override
  String get game_japanese_locale_off => 'Désactivé';
  @override
  String get game_japanese_locale_on => 'Toujours activé';
  @override
  String get game_kpi_total_games => 'Jeux';
  @override
  String get game_kpi_week => 'Cette semaine';
  @override
  String get game_latest_line => 'Dernière ligne';
  @override
  String get game_launch => 'Lancer';
  @override
  String get game_launch_and_capture => 'Lancer et capturer';
  @override
  String get game_launch_unsupported =>
      'Le lancement de jeux n\'est pris en charge que sous Windows';
  @override
  String get game_library => 'Ludothèque';
  @override
  String get game_library_download_queued => 'En file d\'attente';
  @override
  String get game_library_download_retrying => 'Nouvelle tentative';
  @override
  String get game_library_downloading => 'Téléchargement';
  @override
  String get game_line_audio_encoded => 'Audio extrait';
  @override
  String get game_line_audio_fallback => 'Repli';
  @override
  String get game_line_audio_loopback_hint =>
      'Repli sur le mix système ; peut contenir de la musique';
  @override
  String get game_line_audio_matched => 'Audio prêt';
  @override
  String get game_line_audio_missing => 'Pas d\'audio';
  @override
  String get game_line_audio_no_voice => 'Pas de voix';
  @override
  String get game_line_audio_overlong => 'Clip trop long';
  @override
  String get game_line_audio_overlong_hint =>
      'Bien plus long qu\'une seule ligne ; peut contenir de la musique ou autre audio mixé';
  @override
  String get game_line_audio_pending => 'Correspondance en cours';
  @override
  String get game_line_audio_suppressed => 'Mix ignoré';
  @override
  String get game_line_audio_suppressed_hint =>
      'Aucune source audio propre n\'a produit d\'audio pour cette ligne, et le mix système a été ignoré selon votre politique de repli audio. Cela ne signifie pas que la ligne n\'a pas de voix.';
  @override
  String get game_line_audio_unavailable => 'Texte uniquement';
  @override
  String get game_line_copy_tooltip => 'Copier la phrase';
  @override
  String get game_line_favorite_tooltip => 'Ajouter cette ligne aux favoris';
  @override
  String get game_line_mined => 'Carte créée';
  @override
  String get game_line_preview_failed => 'Aucun audio lisible pour cette ligne';
  @override
  String get game_line_preview_tooltip => 'Lire l\'audio de cette ligne';
  @override
  String get game_line_recapture => 'Recapturer la voix';
  @override
  String get game_line_recapture_stop => 'Terminer la recapture';
  @override
  String get game_line_track_applied => 'Piste vocale appliquée à cette ligne';
  @override
  String get game_line_track_dialog_title => 'Piste vocale pour cette ligne';
  @override
  String get game_line_track_failed =>
      'Cette piste n\'a pas d\'audio autour de cette ligne';
  @override
  String get game_line_track_tooltip =>
      'Choisir la piste vocale pour cette ligne';
  @override
  String get game_line_track_use => 'Utiliser pour cette ligne';
  @override
  String get game_line_tracks => 'Pistes pour cette ligne';
  @override
  String get game_line_tracks_hint =>
      'Prévisualisez chaque piste au moment de cette ligne, puis excluez celles de BGM';
  @override
  String get game_line_unfavorite_tooltip => 'Retirer des favoris';
  @override
  String get game_live_lines => 'Lignes en direct';
  @override
  String get game_lookup_attached_align_bottom => 'Bas';
  @override
  String get game_lookup_attached_align_center => 'Centré';
  @override
  String get game_lookup_attached_align_left => 'Gauche';
  @override
  String get game_lookup_attached_align_right => 'Droite';
  @override
  String get game_lookup_attached_align_top => 'Haut';
  @override
  String get game_lookup_attached_body_rect => 'Rectangle du texte';
  @override
  String get game_lookup_attached_calibrate => 'Calibrer';
  @override
  String get game_lookup_attached_calibration_commit =>
      'Enregistrer le calibrage';
  @override
  String get game_lookup_attached_calibration_failed =>
      'Le calibrage n\'a pas été appliqué. Vérifiez le corps de texte, la fenêtre cible et les trois sondes.';
  @override
  String get game_lookup_attached_calibration_short_text =>
      'Au moins trois caractères sont nécessaires pour les sondes de calibrage.';
  @override
  String get game_lookup_attached_calibration_title =>
      'Calibrer le corps de texte';
  @override
  String get game_lookup_attached_font_family => 'Police';
  @override
  String get game_lookup_attached_font_size =>
      'Taille de police / hauteur client';
  @override
  String get game_lookup_attached_height => 'Hauteur';
  @override
  String get game_lookup_attached_left => 'Gauche';
  @override
  String get game_lookup_attached_letter_spacing =>
      'Espacement des lettres / hauteur client';
  @override
  String get game_lookup_attached_line_height => 'Hauteur de ligne';
  @override
  String get game_lookup_attached_mode => 'Mode';
  @override
  String get game_lookup_attached_mode_attached_only =>
      'Couche calibrée uniquement';
  @override
  String get game_lookup_attached_mode_auto => 'Auto';
  @override
  String get game_lookup_attached_mode_native_only => 'Natif uniquement';
  @override
  String get game_lookup_attached_mode_off => 'Désactivé';
  @override
  String get game_lookup_attached_native_status => 'Natif';
  @override
  String get game_lookup_attached_no_ocr =>
      'Sans OCR · corps de texte horizontal uniquement';
  @override
  String get game_lookup_attached_preview => 'Aperçu du corps de texte actuel';
  @override
  String get game_lookup_attached_probe_end => 'Dernier glyphe';
  @override
  String get game_lookup_attached_probe_middle => 'Glyphe du milieu';
  @override
  String get game_lookup_attached_probe_start => 'Premier glyphe';
  @override
  String get game_lookup_attached_probe_waiting =>
      'En attente du clic correspondant dans le jeu';
  @override
  String get game_lookup_attached_probes_hint =>
      'Cliquez dans le jeu sur le premier glyphe surligné, celui du milieu et le dernier, puis confirmez chaque caractère ci-dessous.';
  @override
  String get game_lookup_attached_profile => 'Profil';
  @override
  String get game_lookup_attached_profile_clear => 'Effacer le profil';
  @override
  String get game_lookup_attached_profile_clear_body =>
      'Le rectangle enregistré, la mise en page du texte et l\'autorisation de clic propre à cet exécutable seront supprimés.';
  @override
  String get game_lookup_attached_profile_clear_title =>
      'Effacer le profil de recherche ?';
  @override
  String get game_lookup_attached_profile_missing => 'Non calibré';
  @override
  String get game_lookup_attached_profile_ready => 'Calibré';
  @override
  String get game_lookup_attached_provider => 'Fournisseur';
  @override
  String get game_lookup_attached_provider_unknown => 'Non signalé';
  @override
  String get game_lookup_attached_risk => 'Risque de clic';
  @override
  String get game_lookup_attached_risk_accept => 'Accepter le risque de clic';
  @override
  String get game_lookup_attached_risk_active =>
      'Risque accepté · double déclenchement possible';
  @override
  String get game_lookup_attached_risk_body =>
      'Le bouclier de saisie n\'est pas vérifié pour cet exécutable. Cliquer sur un glyphe peut aussi faire avancer le dialogue ou déclencher un choix. Cette autorisation n\'est enregistrée que pour le hachage de l\'exécutable actuel et est révoquée après une mise à jour.';
  @override
  String get game_lookup_attached_risk_pending => 'Confirmation requise';
  @override
  String get game_lookup_attached_risk_safe => 'Non autorisé';
  @override
  String get game_lookup_attached_risk_title =>
      'Confirmer le risque de clic brut';
  @override
  String get game_lookup_attached_shield => 'Bouclier de saisie';
  @override
  String get game_lookup_attached_shield_faulted => 'En défaut';
  @override
  String get game_lookup_attached_shield_known_uncovered =>
      'Non couvert (connu)';
  @override
  String get game_lookup_attached_shield_partial => 'Partiel';
  @override
  String get game_lookup_attached_shield_unknown => 'Inconnu';
  @override
  String get game_lookup_attached_shield_verified => 'Vérifié';
  @override
  String get game_lookup_attached_status => 'État';
  @override
  String get game_lookup_attached_text_align => 'Alignement horizontal';
  @override
  String get game_lookup_attached_thread_required =>
      'Sélectionnez un fil de corps de texte avant le calibrage.';
  @override
  String get game_lookup_attached_title => 'Recherche en jeu';
  @override
  String get game_lookup_attached_top => 'Haut';
  @override
  String get game_lookup_attached_vertical_align => 'Alignement vertical';
  @override
  String get game_lookup_attached_width => 'Largeur';
  @override
  String get game_manage_tracks => 'Gérer les pistes audio';
  @override
  String get game_meta_added => 'Ajouté';
  @override
  String get game_meta_ranking => 'Classement';
  @override
  String get game_meta_source => 'Source de données';
  @override
  String get game_never_played => 'Jamais joué';
  @override
  String get game_no_active_line =>
      'Sélectionnez une ligne pour inspecter l\'état de son audio de phrase.';
  @override
  String get game_no_events => 'Aucun événement de session';
  @override
  String get game_no_match => 'Aucun jeu ne correspond aux filtres actuels';
  @override
  String get game_no_tracks => 'Pas encore de données de piste audio';
  @override
  String get game_open_capture_workspace => 'Ouvrir l\'espace de capture';
  @override
  String get game_phase_attaching => 'Attachement';
  @override
  String get game_phase_degraded => 'Dégradé';
  @override
  String get game_phase_error => 'Erreur';
  @override
  String get game_phase_idle => 'Inactif';
  @override
  String get game_phase_injecting => 'Injection';
  @override
  String get game_phase_launching => 'Lancement';
  @override
  String get game_phase_resolving => 'Résolution';
  @override
  String get game_phase_running => 'En cours';
  @override
  String get game_phase_stopping => 'Arrêt';
  @override
  String get game_phase_waiting_signals => 'En attente de signaux';
  @override
  String get game_pipeline => 'Pipeline de session';
  @override
  String get game_play_status => 'Statut de jeu';
  @override
  String get game_random_reroll => 'Mélanger';
  @override
  String get game_random_title => 'Choisir pour moi';
  @override
  String get game_recently_played => 'Joué récemment';
  @override
  String get game_refresh_tracks => 'Actualiser les pistes';
  @override
  String get game_remove => 'Retirer';
  @override
  String get game_remove_confirm =>
      'Retirer ce jeu de la bibliothèque ? Les fichiers sur le disque ne seront pas supprimés.';
  @override
  String get game_rename => 'Renommer';
  @override
  String get game_rename_label => 'Nom du jeu';
  @override
  String get game_scrape => 'Récupérer les métadonnées';
  @override
  String get game_scrape_applied => 'Métadonnées mises à jour';
  @override
  String get game_scrape_failed => 'Échec de la récupération des métadonnées';
  @override
  String get game_scrape_no_result => 'Aucune entrée correspondante trouvée';
  @override
  String get game_scrape_query => 'Titre ou identifiant source';
  @override
  String get game_scrape_search => 'Rechercher';
  @override
  String get game_scrape_search_failed =>
      'Recherche échouée. Vérifiez votre réseau et réessayez.';
  @override
  String get game_scrape_use => 'Utiliser';
  @override
  String get game_search => 'Rechercher des jeux';
  @override
  String get game_session_events => 'Événements de session';
  @override
  String get game_session_idle => 'La capture n\'a pas commencé';
  @override
  String get game_session_japanese_locale => 'Locale japonaise';
  @override
  String game_session_japanese_locale_evidence({required Object evidence}) =>
      'Indices : ${evidence}';
  @override
  String get game_session_japanese_locale_evidence_insufficient =>
      'indices insuffisants';
  @override
  String get game_session_japanese_locale_hint =>
      'Le jeu a été lancé sous une locale japonaise (CP932). Si son texte est illisible ou si une erreur de script apparaît, réglez la locale japonaise de ce jeu sur Jamais.';
  @override
  String get game_session_japanese_locale_skipped =>
      'Paramètres régionaux non appliqués';
  @override
  String game_session_japanese_locale_skipped_hint({
    required Object evidence,
  }) =>
      'Le jeu a été lancé sans paramètres régionaux japonais (verdict automatique : ${evidence}). Si le texte est illisible, réglez les paramètres régionaux japonais de ce jeu sur « Toujours activé ».';
  @override
  String get game_session_japanese_locale_skipped_hint_not_32bit =>
      'Le jeu a été lancé sans paramètres régionaux japonais : le verdict automatique les juge nécessaires, mais Locale Emulator ne prend en charge que les jeux 32 bits.';
  @override
  String get game_session_japanese_locale_skipped_hint_system_japanese =>
      'Le jeu a été lancé sans paramètres régionaux japonais : ce système utilise déjà la page de codes japonaise (CP932), rien à changer.';
  @override
  String get game_session_listening => 'En écoute';
  @override
  String get game_session_waiting_thread => 'En attente d\'un fil de dialogue';
  @override
  String get game_set_cover => 'Définir la couverture';
  @override
  String get game_show_hook_text_window =>
      'Afficher la fenêtre de texte du hook';
  @override
  String get game_site_score => 'Note du site';
  @override
  String get game_sort => 'Trier';
  @override
  String get game_sort_added => 'Date d\'ajout';
  @override
  String get game_sort_last_played => 'Dernière partie';
  @override
  String get game_sort_name => 'Nom';
  @override
  String get game_sort_release => 'Date de sortie';
  @override
  String get game_sort_site_score => 'Note du site';
  @override
  String get game_sort_user_rating => 'Ma note';
  @override
  String get game_stat_by_game => 'Par jeu';
  @override
  String get game_stat_daily => 'Temps de jeu quotidien';
  @override
  String get game_stat_delete_session => 'Supprimer cette session';
  @override
  String get game_stat_last_played => 'Dernière partie';
  @override
  String get game_stat_no_sessions => 'Aucune session de jeu enregistrée';
  @override
  String get game_stat_session_list => 'Historique des sessions';
  @override
  String get game_stat_sessions => 'Sessions';
  @override
  String get game_stat_today => 'Temps de jeu aujourd\'hui';
  @override
  String get game_stat_total_time => 'Temps de jeu total';
  @override
  String get game_statistics => 'Statistiques de jeu';
  @override
  String get game_status_dropped => 'Abandonné';
  @override
  String get game_status_not_configured => 'Non vérifié';
  @override
  String get game_status_on_hold => 'En pause';
  @override
  String get game_status_played => 'Joué';
  @override
  String get game_status_playing => 'En cours';
  @override
  String get game_status_ready => 'Prêt';
  @override
  String get game_status_unset => 'Non défini';
  @override
  String get game_status_waiting => 'En attente';
  @override
  String get game_status_want_to_play => 'À jouer';
  @override
  String get game_stop_listening => 'Arrêter l\'écoute';
  @override
  String get game_summary_aliases => 'Alias';
  @override
  String get game_summary_all_titles => 'Tous les titres';
  @override
  String get game_summary_average_hours => 'Temps de jeu moyen';
  @override
  String get game_summary_none =>
      'Pas encore de description. Récupérez les métadonnées pour la compléter.';
  @override
  String get game_summary_release_date => 'Date de sortie';
  @override
  String get game_tags_clear => 'Effacer la sélection';
  @override
  String get game_tags_title => 'Tags de jeu';
  @override
  String get game_text_endpoints => 'Points de terminaison de texte';
  @override
  String get game_text_gaps => 'Trous de séquence';
  @override
  String get game_text_gaps_hint =>
      'Trous de séquence = nombre de lignes manquées dans l\'anneau de texte du hook ; 0 est normal';
  @override
  String get game_text_source_engine => 'Hook moteur';
  @override
  String get game_text_source_unknown => 'Source inconnue';
  @override
  String get game_text_source_websocket => 'WebSocket';
  @override
  String get game_text_thread => 'Fil de texte';
  @override
  String get game_text_thread_artifact_hint =>
      'Repeated-character artifact thread, no usable lines';
  @override
  String game_text_thread_audio_count({required Object count}) =>
      '${count} avec audio';
  @override
  String get game_text_thread_hint =>
      'Choisissez le fil de dialogue propre, comme Luna Translator';
  @override
  String get game_text_thread_unset =>
      'Aucun fil sélectionné — choisissez-en un pour commencer la capture';
  @override
  String get game_track_auto => 'Sélection automatique';
  @override
  String get game_track_bgm => 'BGM / exclu';
  @override
  String get game_track_clips => 'Clips';
  @override
  String get game_track_energy => 'Énergie';
  @override
  String get game_track_exclude_bgm => 'Marquer comme BGM';
  @override
  String get game_track_exclusion_hint =>
      'Marquez une piste BGM/ambiance comme exclue pour que la sélection automatique ne la traite jamais comme voix — les lignes sans parole ne récupèrent plus de BGM.';
  @override
  String get game_track_exclusion_title => 'Exclure des pistes audio';
  @override
  String get game_track_preview => 'Prévisualiser cette piste';
  @override
  String get game_track_preview_failed =>
      'Aucun audio récent n\'a pu être capturé de cette piste';
  @override
  String get game_track_preview_stop => 'Arrêter la prévisualisation';
  @override
  String get game_track_restore => 'Restaurer la piste';
  @override
  String get game_track_select_as_voice => 'Utiliser comme piste vocale';
  @override
  String get game_track_select_requires_engine =>
      'La sélection de piste nécessite une session de hook moteur active';
  @override
  String get game_track_silent_at_cue => 'Pas de son à cette ligne';
  @override
  String get game_track_voice => 'Voix';
  @override
  String get game_tracks_loopback_hint =>
      'Le bouclage système capture la sortie mixée de tout le système en un seul flux ; l\'énumération par piste n\'est pas disponible.';
  @override
  String get game_tracks_pcm_only_hint =>
      'La sélection par piste n\'affecte la capture que lorsque le PCM moteur est la source audio active. La liste ci-dessous est en lecture seule avec la source actuelle.';
  @override
  String get game_tracks_resource_mode_hint =>
      'En mode audio des ressources du jeu, chaque ligne vocale est extraite directement des fichiers du jeu, il n\'y a donc pas de liste de pistes PCM ici. La sélection automatique ou manuelle ne s\'applique qu\'à la capture PCM moteur.';
  @override
  String get game_unread_lines => 'Non lues';
  @override
  String get game_upscaling => 'Mise à l\'échelle de la fenêtre de jeu';
  @override
  String get game_upscaling_auto => 'Auto';
  @override
  String get game_upscaling_auto_hint =>
      'Utiliser Magpie s\'il est déjà en cours d\'exécution ; sinon utiliser la version fournie avec Fushi. Aucun téléchargement nécessaire.';
  @override
  String get game_upscaling_error_bundle_invalid =>
      'Le composant Magpie fourni est corrompu ou n\'a pas passé la vérification. Réinstallez ou mettez à jour Fushi.';
  @override
  String get game_upscaling_error_bundle_missing =>
      'L\'installation de Fushi est incomplète : le composant Magpie fourni est manquant. Réinstallez ou mettez à jour Fushi.';
  @override
  String get game_upscaling_hint_external =>
      'Une copie de Magpie était déjà en cours d\'exécution, Fushi ne l\'a pas touchée. Appuyez sur Win+Maj+A pour mettre à l\'échelle la fenêtre du jeu.';
  @override
  String get game_upscaling_hint_first_run =>
      'Magpie devait encore se configurer cette fois. Appuyez sur Win+Maj+A pour mettre à l\'échelle maintenant — la prochaine fois ce sera automatique.';
  @override
  String get game_upscaling_hint_manual =>
      'Appuyez sur Win+Maj+A pour mettre à l\'échelle la fenêtre du jeu.';
  @override
  String get game_upscaling_hint_not_installed =>
      'Magpie n\'est pas prêt. Réglez la mise à l\'échelle sur Auto pour utiliser la copie fournie avec Fushi ; si ça ne démarre toujours pas, mettez à jour ou réinstallez Fushi.';
  @override
  String get game_upscaling_installed_only => 'Installé uniquement';
  @override
  String get game_upscaling_installed_only_hint =>
      'N\'utiliser Magpie que s\'il est déjà installé ou en cours d\'exécution. Ne pas décompresser la version fournie par Fushi.';
  @override
  String get game_upscaling_off => 'Désactivé';
  @override
  String get game_upscaling_off_hint =>
      'Ne jamais mettre à l\'échelle la fenêtre du jeu.';
  @override
  String get game_upscaling_pick_body =>
      'Met à l\'échelle la fenêtre de ce jeu avec Magpie pendant une session de capture. Réglé par jeu — utile uniquement pour les jeux dont la résolution native est inférieure à celle de votre écran. Utilise votre GPU.';
  @override
  String game_upscaling_pick_title({required Object name}) =>
      'Mise à l\'échelle de fenêtre pour ${name}';
  @override
  String get game_upscaling_status_active => 'Mise à l\'échelle active';
  @override
  String get game_upscaling_status_failed =>
      'La mise à l\'échelle n\'a pas pu démarrer';
  @override
  String get game_upscaling_status_manual =>
      'La mise à l\'échelle est prête mais ne s\'est pas lancée automatiquement';
  @override
  String get game_upscaling_status_unavailable =>
      'La mise à l\'échelle n\'est pas disponible';
  @override
  String get game_user_rating => 'Ma note';
  @override
  String get game_user_tags_title => 'Mes tags';
  @override
  String get game_view_detail => 'Voir les détails';
  @override
  String get game_waiting_for_text => 'En attente de texte';
  @override
  String game_waveform_range_label({
    required Object start,
    required Object end,
    required Object duration,
    required Object total,
  }) => '${start} - ${end} (sélection ${duration} / total ${total})';
  @override
  String get game_waveform_select_title => 'Sélectionner une plage audio';
  @override
  String get game_window_bound => 'Lié';
  @override
  String get game_window_missing => 'Non lié';
  @override
  String get games => 'Jeux';
  @override
  String get global_context_capture => 'Capturer le contexte de sélection';
  @override
  String get global_context_capture_hint =>
      'Lire le texte environnant depuis l\'application au premier plan pour afficher la phrase actuelle (Windows uniquement)';
  @override
  String go_to_chapter({required Object n}) => 'Chapitre ${n}';
  @override
  String get handlebar_audio => 'Audio';
  @override
  String get handlebar_book_cover => 'Couverture du livre';
  @override
  String get handlebar_card_image => 'Card Image (Cover / GIF)';
  @override
  String get handlebar_clip_timestamp => 'Horodatage de l\'extrait';
  @override
  String get handlebar_cue_sentence => 'Phrase de sous-titre';
  @override
  String handlebar_deprecated_label({required Object label}) =>
      '${label} (obsolète)';
  @override
  String get handlebar_document_title => 'Titre du document';
  @override
  String get handlebar_expression => 'Entrée';
  @override
  String get handlebar_frequencies => 'Fréquences (HTML)';
  @override
  String get handlebar_frequency_harmonic_rank => 'Fréquence (Rang)';
  @override
  String get handlebar_furigana_plain => 'Furigana';
  @override
  String get handlebar_glossary => 'Glossaire';
  @override
  String get handlebar_glossary_first => 'Glossaire (Premier)';
  @override
  String get handlebar_phonetic_transcriptions => 'Transcriptions phonétiques';
  @override
  String get handlebar_pitch_accent_categories => 'Catégories d\'accent';
  @override
  String get handlebar_pitch_accent_positions => 'Positions d\'accent';
  @override
  String get handlebar_popup_selection_text => 'Texte de sélection du popup';
  @override
  String get handlebar_reading => 'Lecture';
  @override
  String get handlebar_selected_glossary => 'Glossaire sélectionné';
  @override
  String get handlebar_sentence => 'Phrase';
  @override
  String get handlebar_sentence_audio => 'Sentence Audio';
  @override
  String get handlebar_video_clip => 'Video Clip (GIF)';
  @override
  String get harmonic_frequency => 'Agréger les fréquences de mots';
  @override
  String health_match_summary({required Object pct}) =>
      'Correspondance ${pct}%';
  @override
  String get highlight_on_tap => 'Surligner le texte au toucher';
  @override
  String get home_activity => 'Activité';
  @override
  String get home_activity_empty => 'Aucune activité';
  @override
  String get home_continue => 'Continuer';
  @override
  String get home_filter_added => 'Ajouté';
  @override
  String get home_filter_all => 'Tout';
  @override
  String get home_filter_game => 'Jeu';
  @override
  String get home_filter_read => 'Lire';
  @override
  String get home_filter_watch => 'Regarder';
  @override
  String get home_recently_added => 'Ajoutés récemment';
  @override
  String get home_remote_source => 'Distant';
  @override
  String home_session_count({required Object n}) => '${n} sessions';
  @override
  String get home_today => 'Aujourd\'hui';
  @override
  String get home_yesterday => 'Hier';
  @override
  String get hover_auto_lookup => 'Rechercher au survol';
  @override
  String get hover_auto_lookup_hint =>
      'Recherche automatique lorsque la souris survole un caractère ; pas besoin de cliquer ni de maintenir Maj. Affiche au plus une fenêtre contextuelle. Bureau uniquement.';
  @override
  String get icon_custom => 'Personnalisé';
  @override
  String get icon_custom_confirm_body =>
      'Cela créera un raccourci sur l\'écran d\'accueil avec l\'image choisie. Continuer ?';
  @override
  String get icon_custom_confirm_title => 'Icône personnalisée';
  @override
  String get icon_custom_hint =>
      'Appuyez sur une icône pour changer, ou choisissez une image personnalisée ci-dessous.';
  @override
  String get icon_default => 'Par défaut';
  @override
  String get icon_shortcut_created => 'Raccourci de l\'écran d\'accueil créé.';
  @override
  String get icon_shortcut_unsupported =>
      'Les raccourcis ne sont pas pris en charge sur cet appareil.';
  @override
  String get icon_switch_success =>
      'Icône de l\'application modifiée avec succès.';
  @override
  String image_page_counter({required Object current, required Object total}) =>
      '${current} / ${total}';
  @override
  String get image_pause => 'Pause sur image';
  @override
  String get image_pause_hint =>
      'Pause automatique lorsqu\'une image apparaît pendant la lecture.';
  @override
  String get image_pause_off => 'Désactivé';
  @override
  String get image_search_label_after => 'trouvées pour';
  @override
  String get image_search_label_before => 'Sélection de l\'image ';
  @override
  String get image_search_label_middle => 'sur ';
  @override
  String get image_search_label_none_before => 'Sélection de ';
  @override
  String get image_search_label_none_middle => 'aucune image ';
  @override
  String get import_complete => 'Importation du dictionnaire terminée.';
  @override
  String import_duplicate({required Object name}) =>
      'Un dictionnaire portant le nom 『${name}』 est déjà importé.';
  @override
  String get import_extract => 'Extraction des fichiers...';
  @override
  String get import_failed => 'échec de l\'importation du dictionnaire.';
  @override
  String get import_in_progress => 'Importation en cours';
  @override
  String import_name({required Object name}) => 'Importation de 『${name}』...';
  @override
  String import_sidecar_audio({required Object count}) =>
      '${count} fichier(s) audio joint(s) automatiquement';
  @override
  String import_sidecar_subtitle({required Object name}) =>
      'Sous-titre joint automatiquement : ${name}';
  @override
  String get import_start => 'Préparation de l\'importation...';
  @override
  String get import_step_building_epub => 'Construction de l\'EPUB…';
  @override
  String get import_step_converting_epub => 'Conversion en EPUB…';
  @override
  String import_step_copying_file({required Object name}) =>
      'Copie de ${name}…';
  @override
  String get import_step_done => 'Terminé';
  @override
  String get import_step_importing_epub => 'Importation de l\'EPUB…';
  @override
  String get import_step_matching => 'Alignement audio…';
  @override
  String get import_step_parsing => 'Analyse des sous-titres…';
  @override
  String get import_step_persisting => 'Enregistrement des fichiers…';
  @override
  String get import_step_reading => 'Lecture du fichier…';
  @override
  String get import_step_reading_idb => 'Lecture des informations du livre…';
  @override
  String get import_step_saving => 'Enregistrement des données…';
  @override
  String get import_theme => 'Importer un thème';
  @override
  String get import_theme_hint => 'Coller le code du thème';
  @override
  String get import_theme_invalid => 'Code de thème invalide';
  @override
  String get import_theme_success => 'Thème importé';
  @override
  String import_unsupported_file_format({required Object ext}) =>
      'Format de fichier non pris en charge : ${ext}';
  @override
  String get increase => 'Augmenter';
  @override
  String get info_empty_home_tab => 'L\'historique est vide';
  @override
  String init_error_message({required Object error}) =>
      'Échec de l\'initialisation : ${error}';
  @override
  String get initialization_failed => 'Échec de l\'initialisation';
  @override
  String get interconnect_backup_backend =>
      'Utiliser l\'interconnexion comme support de sauvegarde';
  @override
  String get interconnect_backup_backend_active =>
      'Les sauvegardes vont déjà vers l\'appareil apparié. Choisissez un autre support dans Synchro et sauvegarde pour changer.';
  @override
  String get interconnect_backup_backend_apply =>
      'Définir comme support de sauvegarde';
  @override
  String interconnect_backup_backend_current({required Object backend}) =>
      'Support de sauvegarde actuel : ${backend}';
  @override
  String get interconnect_backup_backend_hint =>
      'Sauvegarder et synchroniser vers l\'appareil apparié au lieu d\'un stockage cloud. Tout ce que les interrupteurs d\'envoi ci-dessus autorisent est ce qui sera écrit là-bas.';
  @override
  String get interconnect_backup_backend_needs_pairing =>
      'Connectez d\'abord un appareil ci-dessus.';
  @override
  String get interconnect_devices_hint =>
      'Peer addresses, pairing and LAN discovery';
  @override
  String get interconnect_devices_page => 'Pairing & devices';
  @override
  String interconnect_devices_paired_count({required Object n}) =>
      'Paired devices: ${n}';
  @override
  String get interconnect_enable => 'Activer l\'interconnexion';
  @override
  String get interconnect_enable_footer =>
      'Comment l\'utiliser : sur l\'appareil qui contient votre bibliothèque, activez le serveur de synchronisation ci-dessous ; sur votre autre appareil, ajoutez l\'adresse de ce serveur pour vous y connecter. Un appareil ne peut jouer qu\'un seul rôle à la fois — serveur ou client.';
  @override
  String get interconnect_enable_hint =>
      'Se connecter à vos autres appareils via le réseau local. Fonctionne en parallèle d\'un support de sauvegarde cloud — ils ne sont pas en conflit.';
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
      'Les paramètres de connexion et de serveur sont dans la catégorie Fushi Interconnect';
  @override
  String get interconnect_peer_list_empty =>
      'Aucun pair ajouté. Choisissez un appareil découvert dans la liste LAN ci-dessous pour vous appairer automatiquement, ou ajoutez une adresse de pair manuellement.';
  @override
  String get interconnect_peer_list_title => 'Pairs ajoutés';
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
  String get interconnect_section_client =>
      'Se connecter à d\'autres appareils';
  @override
  String get interconnect_section_delegate => 'Déléguer à l\'appareil apparié';
  @override
  String get interconnect_section_related => 'Contenu et recherche à distance';
  @override
  String get interconnect_share_favorites => 'Partager les favoris';
  @override
  String get interconnect_share_favorites_hint =>
      'Mots et phrases favoris, y compris la suppression des favoris';
  @override
  String get interconnect_share_section =>
      'Partager avec les appareils appariés';
  @override
  String get interconnect_share_section_footer =>
      'Ces éléments sont fusionnés dans les deux sens avec l\'appareil apparié et sont activés par défaut. En désactiver un arrête l\'envoi et la réception.';
  @override
  String get interconnect_share_statistics => 'Partager les statistiques';
  @override
  String get interconnect_share_statistics_hint =>
      'Temps de lecture et de visionnage, compteurs de caractères, de recherches et de créations de cartes';
  @override
  String get interconnect_summary =>
      'Synchronisation directe entre appareils et hébergement de cet appareil en tant que serveur';
  @override
  String get interconnect_upload_audiobook_files =>
      'Envoyer les fichiers de livres audio';
  @override
  String get interconnect_upload_audiobook_files_hint =>
      'Synchroniser les paquets audio et sous-titres des livres audio de cet appareil vers le pair d\'interconnexion (volumineux).';
  @override
  String get interconnect_upload_content => 'Envoyer les fichiers de livres';
  @override
  String get interconnect_upload_content_hint =>
      'Synchroniser les livres et le contenu de lecture de cet appareil vers le pair d\'interconnexion.';
  @override
  String get interconnect_upload_dictionary => 'Envoyer les dictionnaires';
  @override
  String get interconnect_upload_dictionary_hint =>
      'Synchroniser les dictionnaires de cet appareil vers le pair d\'interconnexion.';
  @override
  String get interconnect_upload_section =>
      'Envoyer vers le pair d\'interconnexion';
  @override
  String get interconnect_upload_section_footer =>
      'Choisissez ce que cet appareil envoie au pair connecté. Indépendant des interrupteurs de sauvegarde cloud et désactivé par défaut. Ces interrupteurs ne s\'appliquent que tant que l\'interconnexion est activée : désactiver l\'interconnexion arrête tous les envois ici.';
  @override
  String get interconnect_upload_video_files => 'Envoyer les fichiers vidéo';
  @override
  String get interconnect_upload_video_files_hint =>
      'Synchroniser les fichiers vidéo locaux de cet appareil vers le pair d\'interconnexion (volumineux).';
  @override
  String get invert_audiobook_skip_direction =>
      'Inverser les boutons d\'avance de la barre inférieure';
  @override
  String get invert_swipe_direction =>
      'Inverser la direction du balayage pour tourner les pages';
  @override
  String get invert_volume_buttons => 'Inverser les boutons de volume';
  @override
  String get jellyfin_auto_list_hint =>
      'Désactivé : ouvrir la page vidéo n\'envoie aucune requête au serveur média ; tirez pour actualiser dans la vidéothèque afin de lister manuellement. Recommandé pour les très gros serveurs, où l\'énumération automatique ressemble à du scraping et peut déclencher la détection d\'abus.';
  @override
  String get jellyfin_auto_list_title =>
      'Lister les éléments à l\'ouverture de Vidéo';
  @override
  String get jellyfin_libraries_hint =>
      'Ne rien sélectionner liste toutes les bibliothèques vidéo. Se limiter aux bibliothèques que vous regardez vraiment évite que d\'énormes serveurs soient énumérés en entier.';
  @override
  String get jellyfin_libraries_load_failed =>
      'Impossible de charger la liste des bibliothèques';
  @override
  String get jellyfin_libraries_title => 'Bibliothèques à lister';
  @override
  String get jellyfin_server_url => 'URL du serveur';
  @override
  String get jellyfin_settings_hint =>
      'Les vidéos du serveur apparaissent dans la vidéothèque et sont diffusées directement.';
  @override
  String get jellyfin_settings_title => 'Serveur média (Jellyfin / Emby)';
  @override
  String get jellyfin_sign_in => 'Se connecter';
  @override
  String get jellyfin_sign_in_failed => 'Connexion échouée';
  @override
  String get jellyfin_sign_out => 'Se déconnecter';
  @override
  String get jump_to_char => 'Aller au caractère';
  @override
  String jump_to_char_current({
    required Object current,
    required Object total,
  }) => 'Actuel : ${current} / ${total}';
  @override
  String get jump_to_char_hint => 'Entrez la position du caractère…';
  @override
  String get keep_screen_awake => 'Garder l\'écran allumé';
  @override
  String get library_empty_go_import => 'Aller à l\'importation';
  @override
  String get library_search => 'Rechercher dans la bibliothèque';
  @override
  String get library_view_browse => 'Découvrir';
  @override
  String get library_view_discover => 'Découvrir';
  @override
  String get library_view_import => 'Importer';
  @override
  String get library_view_media => 'Bibliothèque';
  @override
  String get library_view_shelf => 'Étagère';
  @override
  String get library_view_sources => 'Sources';
  @override
  String get loading_illustrations => 'Chargement des illustrations…';
  @override
  String get loading_slow_message =>
      'Si votre emplacement de stockage est sur un disque réseau ou amovible actuellement déconnecté, le démarrage peut se bloquer. Appuyez sur Réessayer pour lancer avec l\'emplacement par défaut pour cette session ; vos données restent où elles sont.';
  @override
  String get loading_slow_message_mobile =>
      'Le démarrage prend plus de temps que d\'habitude — Fushi charge peut-être une grande bibliothèque ou des dictionnaires. Veuillez patienter, ou appuyez sur Réessayer pour recharger. Vos données sont en sécurité.';
  @override
  String get loading_slow_title =>
      'Le démarrage prend plus de temps que d\'habitude';
  @override
  String get local_audio => 'Audio local';
  @override
  String get local_audio_add_db => 'Ajouter une base de données audio locale';
  @override
  String get local_audio_edit_sources => 'Modifier les sources';
  @override
  String local_audio_import_failed_detail({required Object reason}) =>
      'Échec de l\'importation de la base audio : ${reason}';
  @override
  String get local_audio_imported => 'Base de données audio ajoutée';
  @override
  String get local_audio_invalid_db =>
      'Ce fichier n\'est pas une base audio utilisable (pas une base Local Audio Server, ou elle n\'a pas d\'audio).';
  @override
  String get local_audio_no_sources =>
      'Aucune source trouvée dans cette base de données';
  @override
  String get local_audio_reference_original =>
      'Référencer le fichier original (ne pas copier)';
  @override
  String get local_audio_reference_original_desc =>
      'Garder la base de données à son emplacement actuel et lire depuis son chemin d\'origine ; la source ne fonctionnera plus si le fichier est déplacé ou supprimé.';
  @override
  String get local_audio_reference_unavailable =>
      'Le fichier sélectionné est une copie temporaire. Une copie permanente sera importée à la place.';
  @override
  String get local_audio_source_order_title => 'Priorité des sources';
  @override
  String get log_copy_all => 'Tout copier';
  @override
  String get log_export_failed => 'Échec de l\'export';
  @override
  String get log_export_file => 'Exporter vers un fichier';
  @override
  String get log_export_saved => 'Journal enregistré';
  @override
  String get log_upload_action => 'Envoyer au serveur';
  @override
  String get log_upload_consent_agree => 'Accepter et envoyer';
  @override
  String get log_upload_consent_body =>
      'Le texte du journal (qui peut inclure des messages d\'erreur, des chemins de fichiers et des titres de livres), ainsi que la version de l\'application, la plateforme et le modèle de l\'appareil, seront envoyés au serveur du développeur pour aider au diagnostic. Cela ne se produit que lorsque vous touchez « Envoyer » — rien n\'est envoyé automatiquement.';
  @override
  String get log_upload_consent_title => 'Envoyer le journal au serveur ?';
  @override
  String get log_upload_failed => 'Échec de l\'envoi';
  @override
  String get log_upload_in_progress => 'Envoi du journal…';
  @override
  String get log_upload_success => 'Journal envoyé';
  @override
  String get log_upload_too_large => 'Journal trop volumineux pour être envoyé';
  @override
  String get login => 'Connexion';
  @override
  String get lookup_audio_volume => 'Volume audio de la recherche';
  @override
  String get lookup_block_capture => 'Bloquer la capture d\'écran';
  @override
  String get lookup_block_capture_hint =>
      'Exclut les fenêtres de recherche et de presse-papiers des captures d\'écran, enregistrements et diffusions en direct (Windows). Désactivez pour permettre la capture de la fenêtre de recherche.';
  @override
  String get low_memory_mode => 'Mode mémoire réduite';
  @override
  String get low_memory_mode_hint =>
      'Réduit l\'utilisation du cache et de la mémoire pour les appareils bas de gamme. Certains changements nécessitent un redémarrage.';
  @override
  String get low_memory_mode_suggestion =>
      'Essayez d\'activer le mode mémoire réduite dans Paramètres → Divers.';
  @override
  String get lyrics_artist => 'Artiste';
  @override
  String get lyrics_blur => 'Flouter les paroles';
  @override
  String get lyrics_blur_hint =>
      'Flouter la ligne actuelle pour l\'immersion à l\'écoute ; survolez ou appuyez pour révéler';
  @override
  String get lyrics_font_size => 'Taille de police des paroles';
  @override
  String get lyrics_font_size_hint =>
      'La taille de police des paroles est indépendante du mode livre';
  @override
  String get lyrics_mode => 'Mode paroles';
  @override
  String get lyrics_mode_hint_body =>
      'Le mode paroles a son propre réglage de taille de police. Vous pouvez l\'ajuster dans ⚙ Paramètres → Typographie.';
  @override
  String get lyrics_mode_hint_title => 'Mode paroles';
  @override
  String get lyrics_text_color => 'Couleur du texte des paroles';
  @override
  String get lyrics_text_color_hint =>
      'Utiliser une couleur personnalisée pour les paroles au lieu de suivre le thème';
  @override
  String get lyrics_title => 'Titre';
  @override
  String get lyrics_vertical_writing => 'Paroles verticales';
  @override
  String get lyrics_vertical_writing_hint =>
      'Lire les paroles de haut en bas, de droite à gauche (indépendant du mode du livre)';
  @override
  String get manage_audio_sources => 'Gérer les sources audio';
  @override
  String get manager => 'Gestionnaire';
  @override
  String get manga_default_zoom => 'Zoom par défaut';
  @override
  String get manga_direction_ltr => 'Gauche à droite';
  @override
  String get manga_direction_rtl => 'Droite à gauche';
  @override
  String get manga_discovery_load_failed =>
      'Impossible de charger le flux de découverte.';
  @override
  String get manga_discovery_match_none =>
      'Aucune correspondance trouvée dans les sources activées.';
  @override
  String get manga_discovery_match_running =>
      'Recherche dans vos sources activées…';
  @override
  String get manga_discovery_match_section => 'Lire depuis une source';
  @override
  String get manga_discovery_section_latest_finished => 'Terminés récemment';
  @override
  String get manga_discovery_section_popular => 'Populaires';
  @override
  String get manga_discovery_section_top_rated => 'Mieux notés';
  @override
  String manga_discovery_source_popular({required Object source}) =>
      'Populaire sur ${source}';
  @override
  String get manga_discovery_sources_browse => 'Parcourir une source';
  @override
  String get manga_discovery_status_cancelled => 'Annulé';
  @override
  String get manga_discovery_status_finished => 'Terminé';
  @override
  String get manga_discovery_status_hiatus => 'En pause';
  @override
  String get manga_discovery_status_not_yet_released => 'Pas encore sorti';
  @override
  String get manga_discovery_status_releasing => 'En cours';
  @override
  String get manga_global_search_hint =>
      'Rechercher dans chaque source activée';
  @override
  String get manga_global_search_no_sources =>
      'Aucune source de manga activée pour l\'instant. Ajoutez-en une dans l\'onglet Importer.';
  @override
  String get manga_global_search_open_sources => 'Aller à Importer';
  @override
  String get manga_global_search_prompt =>
      'Tapez un titre pour rechercher dans toutes les sources de manga activées à la fois.';
  @override
  String get manga_global_search_title => 'Rechercher dans toutes les sources';
  @override
  String get manga_google_lens_disclosure_accept => 'Accepter et lancer l\'OCR';
  @override
  String get manga_google_lens_disclosure_body =>
      'La reconnaissance de ce manga envoie une copie JPEG réduite de chaque page sans texte OCR à Google. Les résultats sont mis en cache sur cet appareil. Ce point d\'accès est non officiel et peut cesser de fonctionner. Rien n\'est envoyé sans votre accord.';
  @override
  String get manga_google_lens_disclosure_decline => 'Annuler';
  @override
  String get manga_google_lens_disclosure_title =>
      'Envoyer les pages de manga à Google Lens ?';
  @override
  String get manga_import_action => 'Importer un manga';
  @override
  String manga_import_batch_done({
    required Object imported,
    required Object skipped,
    required Object failed,
  }) => 'Importés ${imported}, ignorés ${skipped}, échoués ${failed}.';
  @override
  String manga_import_batch_hint({required Object n}) =>
      'Ce dossier contient ${n} fichiers de tomes ; chacun est importé comme son propre livre, nommé d\'après son fichier.';
  @override
  String get manga_import_detected_confirm => 'Importer comme manga';
  @override
  String manga_import_detected_message({required Object name}) =>
      '« ${name} » est un fichier manga, il passera donc par l\'importateur de manga au lieu de l\'importateur de livres.';
  @override
  String get manga_import_detected_title => 'Cela ressemble à un manga';
  @override
  String get manga_import_direct => 'Importer sans OCR';
  @override
  String get manga_import_folder_as_source_hint =>
      'Scanner continuellement ce dossier pour de nouveaux manga';
  @override
  String get manga_import_hint =>
      'Choisissez un dossier manga, une archive .cbz/.zip de pages, un .pdf ou un fichier .mokuro.';
  @override
  String get manga_import_missing_input =>
      'Choisissez d\'abord un fichier ou dossier manga.';
  @override
  String get manga_import_pick_file => 'Choisir un fichier manga';
  @override
  String get manga_import_pick_folder => 'Choisir un dossier manga';
  @override
  String get manga_interface_hide => 'Masquer l\'interface';
  @override
  String get manga_interface_show => 'Afficher l\'interface';
  @override
  String get manga_jump_to_page => 'Aller à la page';
  @override
  String get manga_library => 'Manga';
  @override
  String get manga_mode_toggle => 'Reading Mode';
  @override
  String get manga_next_page => 'Page suivante';
  @override
  String manga_ocr_acceleration_degraded({
    required Object engine,
    required Object reason,
  }) => 'Accélération GPU indisponible, OCR exécuté sur ${engine} : ${reason}';
  @override
  String manga_ocr_acceleration_status({required Object engine}) =>
      'Accélération OCR : ${engine}';
  @override
  String get manga_ocr_default_engine => 'Moteur OCR par défaut';
  @override
  String get manga_ocr_delete => 'Supprimer les modèles';
  @override
  String get manga_ocr_delete_confirm_message =>
      'Cela libère de l\'espace disque. Vous pourrez les retélécharger plus tard.';
  @override
  String get manga_ocr_delete_confirm_title => 'Supprimer les modèles OCR ?';
  @override
  String get manga_ocr_delete_done => 'Modèles supprimés';
  @override
  String manga_ocr_delete_done_freed({required Object size}) =>
      'Modèles supprimés, ${size} libérés';
  @override
  String get manga_ocr_done => 'OCR terminé';
  @override
  String get manga_ocr_download => 'Télécharger les modèles';
  @override
  String get manga_ocr_download_done => 'Modèles téléchargés';
  @override
  String get manga_ocr_download_failed => 'Échec du téléchargement des modèles';
  @override
  String get manga_ocr_download_resume => 'Reprendre le téléchargement';
  @override
  String manga_ocr_download_total_progress({
    required Object done,
    required Object total,
  }) => '${done} sur ${total}';
  @override
  String manga_ocr_downloading_file({required Object file}) =>
      'Téléchargement de ${file}…';
  @override
  String get manga_ocr_engine_auto => 'Automatique (n\'envoie jamais à Lens)';
  @override
  String get manga_ocr_engine_auto_desc =>
      'Préfère un moteur hors ligne que vous avez déjà configuré ; n\'envoie jamais à Lens de lui-même.';
  @override
  String get manga_ocr_engine_builtin => 'Intégré';
  @override
  String get manga_ocr_engine_external => 'mokuro externe';
  @override
  String get manga_ocr_engine_external_desc =>
      'Appelle un programme mokuro que vous avez installé vous-même. Ordinateur uniquement.';
  @override
  String get manga_ocr_engine_google_lens => 'Google Lens';
  @override
  String get manga_ocr_engine_google_lens_desc =>
      'Nécessite internet et envoie les images de pages à Google. Rapide sans téléchargement, mais la qualité est inférieure au modèle local.';
  @override
  String get manga_ocr_engine_local_onnx => 'ONNX local';
  @override
  String get manga_ocr_engine_local_onnx_desc =>
      'Entièrement hors ligne, meilleure qualité. Nécessite un téléchargement de modèle unique et est lent sur le matériel ancien.';
  @override
  String get manga_ocr_engine_none =>
      'Aucun moteur OCR disponible. Téléchargez les modèles intégrés ou définissez le chemin CLI mokuro dans les paramètres.';
  @override
  String get manga_ocr_engine_paired_host_desc =>
      'Hands the work to the paired Fushi interconnect server. Nothing is downloaded here.';
  @override
  String get manga_ocr_engine_system => 'OCR de l\'appareil';
  @override
  String get manga_ocr_engine_system_desc =>
      'Utilise la reconnaissance de texte intégrée à votre appareil. Aucun téléchargement, entièrement hors ligne, rien n\'est envoyé — mais nettement moins efficace que le modèle local sur les bulles de dialogue verticales et l\'écriture manuscrite.';
  @override
  String get manga_ocr_engine_system_unavailable =>
      'Aucune reconnaissance de texte intégrée n\'est disponible sur cet appareil';
  @override
  String get manga_ocr_external_cli_hint =>
      'Laissez vide pour la détection automatique (FUSHI_MOKURO / PATH)';
  @override
  String get manga_ocr_external_cli_label => 'Chemin CLI mokuro externe';
  @override
  String get manga_ocr_external_detect => 'Détecter';
  @override
  String manga_ocr_external_detected({required Object version}) =>
      'Détecté : ${version}';
  @override
  String get manga_ocr_external_not_found => 'mokuro introuvable';
  @override
  String get manga_ocr_import => 'Importer un modèle local';
  @override
  String get manga_ocr_import_copy_urls => 'Copier les liens de téléchargement';
  @override
  String manga_ocr_import_done({required Object count}) =>
      '${count} fichier(s) importé(s)';
  @override
  String get manga_ocr_import_failed => 'Échec de l\'import du modèle';
  @override
  String get manga_ocr_import_intro =>
      'Si le téléchargement dans l\'application n\'aboutit pas, téléchargez ces fichiers vous-même et importez-les ici. Un zip qui les contient fonctionne aussi.';
  @override
  String get manga_ocr_import_matched_nothing =>
      'Aucun fichier de modèle utilisable reconnu';
  @override
  String get manga_ocr_import_pick_files => 'Choisir des fichiers';
  @override
  String get manga_ocr_import_pick_folder => 'Choisir un dossier';
  @override
  String get manga_ocr_import_running => 'Importation…';
  @override
  String manga_ocr_import_size_mismatch({
    required Object file,
    required Object expected,
    required Object actual,
  }) =>
      '${file} n\'a pas la bonne taille : attendu ${expected}, obtenu ${actual}';
  @override
  String manga_ocr_import_still_missing({required Object count}) =>
      'Il manque encore ${count} fichier(s)';
  @override
  String get manga_ocr_import_title => 'Importer un modèle téléchargé';
  @override
  String get manga_ocr_import_urls_copied => 'Liens de téléchargement copiés';
  @override
  String get manga_ocr_lens_language_label => 'Langue de reconnaissance';
  @override
  String get manga_ocr_mobile_note =>
      'Sur mobile, ces modèles alimentent le moteur local pour l\'OCR du volume entier, au toucher et de la zone sélectionnée dans le lecteur de manga.';
  @override
  String manga_ocr_model_disk_usage({required Object size}) =>
      'Utilise ${size} sur le disque';
  @override
  String manga_ocr_model_download_size({required Object size}) =>
      'Nécessite ${size}';
  @override
  String get manga_ocr_model_status_missing => 'Modèles OCR non téléchargés';
  @override
  String get manga_ocr_model_status_ready => 'Modèles OCR prêts';
  @override
  String get manga_ocr_model_unused_by_engine =>
      'Le moteur actuel n\'utilise pas ces fichiers de modèle locaux.';
  @override
  String get manga_ocr_section => 'OCR de manga';
  @override
  String get manga_ocr_section_summary =>
      'Modèles OCR intégrés et CLI mokuro externe';
  @override
  String get manga_ocr_unsupported =>
      'L\'OCR de manga intégré n\'est pas encore disponible sur cette plateforme.';
  @override
  String get manga_ocr_wizard_already_ocred =>
      'Ce tome a déjà des données OCR sur chaque page. Relancer l\'OCR les écraserait.';
  @override
  String get manga_ocr_wizard_done => 'Manga importé';
  @override
  String get manga_ocr_wizard_failed => 'Échec de l\'OCR';
  @override
  String get manga_ocr_wizard_has_mokuro =>
      'Ce dossier a déjà un fichier .mokuro — utilisez l\'importation normale à la place.';
  @override
  String get manga_ocr_wizard_importing => 'Importation…';
  @override
  String get manga_ocr_wizard_no_images =>
      'Aucune image trouvée dans ce dossier.';
  @override
  String manga_ocr_wizard_page_progress({
    required Object done,
    required Object total,
  }) => 'Page ${done} / ${total}';
  @override
  String get manga_ocr_wizard_pick_folder => 'Choisir le dossier d\'images';
  @override
  String get manga_ocr_wizard_run => 'Lancer l\'OCR';
  @override
  String get manga_ocr_wizard_running => 'OCR en cours…';
  @override
  String get manga_ocr_wizard_title => 'Importer un manga avec OCR';
  @override
  String get manga_ocr_wizard_title_label => 'Titre (optionnel)';
  @override
  String get manga_online_base_url_label => 'URL du catalogue en ligne';
  @override
  String get manga_online_catalog_title => 'Catalogue en ligne';
  @override
  String get manga_online_detail_load_failed =>
      'Impossible de charger ce manga.';
  @override
  String get manga_online_download_selected => 'Télécharger la sélection';
  @override
  String get manga_online_downloaded => 'Importé';
  @override
  String get manga_online_error_view_detail => 'Voir les détails';
  @override
  String get manga_online_failed => 'Échec du téléchargement';
  @override
  String get manga_online_load_failed => 'Échec du chargement du catalogue';
  @override
  String get manga_online_queue_added => 'Ajouté à la file de téléchargement';
  @override
  String manga_online_queue_progress({
    required Object done,
    required Object total,
  }) => 'Tome ${done} / ${total}';
  @override
  String get manga_online_queue_section => 'Téléchargements du catalogue manga';
  @override
  String manga_online_retry_waiting({
    required Object attempt,
    required Object total,
  }) => 'Nouvelle tentative automatique (${attempt}/${total})';
  @override
  String get manga_online_search_hint => 'Rechercher une série';
  @override
  String get manga_online_series_empty => 'Aucun volume dans cette série.';
  @override
  String get manga_online_source_disabled =>
      'Cette source internet est désactivée. Activez-la dans les Sources pour parcourir le catalogue.';
  @override
  String get manga_online_stage_cbz => 'Téléchargement du tome…';
  @override
  String get manga_online_stage_extract => 'Extraction…';
  @override
  String get manga_online_stage_mokuro => 'Téléchargement des données OCR…';
  @override
  String get manga_page_animation => 'Animation de changement de page';
  @override
  String get manga_page_animation_fade => 'Fondu';
  @override
  String get manga_page_animation_none => 'Aucune';
  @override
  String get manga_page_animation_slide => 'Glissement';
  @override
  String manga_page_number_hint({required Object total}) =>
      'Numéro de page (1-${total})';
  @override
  String get manga_previous_page => 'Page précédente';
  @override
  String get manga_reading_direction => 'Sens de lecture';
  @override
  String get manga_reading_mode_spread => 'Double page';
  @override
  String get manga_reading_mode_webtoon => 'Webtoon';
  @override
  String get manga_remote_ocr_cancelled =>
      'L\'OCR distant a été annulé sur l\'hôte.';
  @override
  String get manga_remote_ocr_engine => 'Hôte apparié';
  @override
  String get manga_remote_ocr_failed => 'Échec de l\'OCR distant';
  @override
  String get manga_remote_ocr_no_host =>
      'Aucun hôte apparié avec OCR manga n\'est joignable.';
  @override
  String get manga_remote_ocr_not_ready =>
      'Les modèles OCR de l\'hôte apparié ne sont pas téléchargés. Téléchargez-les d\'abord sur l\'hôte.';
  @override
  String get manga_remote_ocr_running => 'L\'hôte apparié exécute l\'OCR…';
  @override
  String get manga_remote_ocr_unsupported =>
      'L\'hôte apparié ne prend pas en charge l\'OCR manga.';
  @override
  String manga_remote_ocr_uploading({
    required Object done,
    required Object total,
  }) => 'Envoi des pages ${done} / ${total}…';
  @override
  String get manga_section_viewing => 'Affichage et changement de page';
  @override
  String get manga_series_all_read => 'Tous les chapitres ont été lus';
  @override
  String get manga_series_chapters_action => 'Chapitres';
  @override
  String get manga_series_first_chapter_reached => 'C\'est le premier chapitre';
  @override
  String get manga_series_last_chapter_reached =>
      'C\'est le chapitre le plus récent';
  @override
  String get manga_series_local_volume => 'Volume local';
  @override
  String get manga_series_mark_previous_read =>
      'Marquer celui-ci et les précédents comme lus';
  @override
  String get manga_series_mark_read => 'Marquer comme lu';
  @override
  String get manga_series_mark_unread => 'Marquer comme non lu';
  @override
  String get manga_series_next_chapter => 'Chapitre suivant';
  @override
  String get manga_series_no_chapters => 'Aucun chapitre pour le moment';
  @override
  String get manga_series_offline_hint =>
      'Affichage des chapitres enregistrés sur cet appareil';
  @override
  String get manga_series_open_series => 'Page de l\'œuvre';
  @override
  String get manga_series_page_count => 'Pages';
  @override
  String get manga_series_platform_unsupported =>
      'Cette source n\'est pas disponible sur cette plateforme';
  @override
  String get manga_series_previous_chapter => 'Chapitre précédent';
  @override
  String manga_series_read_progress({
    required Object page,
    required Object total,
  }) => 'Lu jusqu\'à la page ${page} sur ${total}';
  @override
  String manga_series_read_progress_partial({required Object page}) =>
      'Lu jusqu\'à la page ${page}';
  @override
  String get manga_series_refresh => 'Actualiser les chapitres';
  @override
  String get manga_series_refresh_failed =>
      'Impossible d\'actualiser depuis la source';
  @override
  String get manga_series_sort_newest => 'Plus récents d\'abord';
  @override
  String get manga_series_sort_oldest => 'Plus anciens d\'abord';
  @override
  String get manga_series_source_disabled =>
      'Cette source n\'est pas installée ou est désactivée';
  @override
  String get manga_series_unread_only => 'Non lus uniquement';
  @override
  String get manga_series_volume_info => 'Volume';
  @override
  String get manga_source_cloudflare_blocked =>
      'Cette source est protégée par Cloudflare et ne peut pas encore être atteinte par le lecteur intégré.';
  @override
  String get manga_source_cloudflare_verify_hint =>
      'Effectuez la vérification Cloudflare ci-dessous. Le chargement reprend automatiquement une fois validée.';
  @override
  String get manga_source_cloudflare_verify_title => 'Vérification du site';
  @override
  String get manga_tap_zone_paging =>
      'Appuyer sur les bords pour tourner les pages';
  @override
  String get manga_tap_zone_paging_subtitle =>
      'Appuyer sur le bord gauche ou droit de la page pour tourner';
  @override
  String get manga_volume_key_paging =>
      'Touches de volume pour tourner les pages';
  @override
  String get manga_volume_key_paging_subtitle =>
      'Utiliser les touches volume haut et bas pour tourner les pages dans le lecteur de manga';
  @override
  String get manga_zoom => 'Zoom';
  @override
  String get manga_zoom_sensitivity => 'Sensibilité du zoom';
  @override
  String get margin_bottom => 'Marge inférieure';
  @override
  String get margin_left => 'Marge gauche';
  @override
  String get margin_right => 'Marge droite';
  @override
  String get margin_top => 'Marge supérieure';
  @override
  String get maximum_terms => 'Nombre maximal d\'entrées dans les résultats';
  @override
  String get media_file_location_failed =>
      'Impossible d\'ouvrir l\'emplacement du fichier.';
  @override
  String get media_file_location_open => 'Ouvrir l\'emplacement du fichier';
  @override
  String get media_import_folder => 'Importer un dossier';
  @override
  String get media_import_folder_as_source =>
      'Ajouter comme source de bibliothèque';
  @override
  String get media_import_folder_once => 'Importer une seule fois';
  @override
  String get media_source_add => 'Add Source';
  @override
  String get media_source_add_local_folder => 'Local Folder';
  @override
  String get media_source_add_network => 'Réseau';
  @override
  String media_source_count_book({required Object n}) => '${n} livres';
  @override
  String media_source_count_manga({required Object n}) => '${n} tomes';
  @override
  String media_source_count_video({required Object n}) => '${n} vidéos';
  @override
  String media_source_last_scan({required Object time}) =>
      'Dernier scan ${time}';
  @override
  String get media_source_manage_title => 'Manage Sources';
  @override
  String get media_source_network_label_optional =>
      'Nom d\'affichage (optionnel)';
  @override
  String get media_source_network_missing_fields =>
      'Entrez l\'hôte, le nom d\'utilisateur, le chemin distant et un mot de passe ou une clé';
  @override
  String get media_source_network_remote_path => 'Chemin distant';
  @override
  String get media_source_network_subtitle =>
      'Bibliothèque distante SFTP / FTP / WebDAV';
  @override
  String get media_source_network_subtitle_video =>
      'Bibliothèque distante WebDAV (lecture en place)';
  @override
  String get media_source_no_sources => 'Aucune source';
  @override
  String get media_source_open_folder => 'Open Folder';
  @override
  String get media_source_remove => 'Remove Source';
  @override
  String get media_source_remove_keeps_media =>
      'Retirer une source ne supprime pas les médias importés.';
  @override
  String get media_source_rescan => 'Rescanner';
  @override
  String get media_source_scan_error => 'Échec du scan';
  @override
  String get media_source_section_title => 'Sources de la bibliothèque';
  @override
  String get media_tracking_access_token => 'Jeton d\'accès';
  @override
  String get media_tracking_access_token_hint =>
      'Créez un jeton d\'accès personnel avec permission d\'écriture';
  @override
  String get media_tracking_account => 'Compte Bangumi';
  @override
  String get media_tracking_add_mapping => 'Ajouter un mappage';
  @override
  String get media_tracking_all_synced => 'Tout envoyé';
  @override
  String get media_tracking_anime => 'Anime';
  @override
  String get media_tracking_card_title => 'Synchronisation Bangumi';
  @override
  String get media_tracking_chapter => 'Chapitre';
  @override
  String get media_tracking_connect => 'Connecter et vérifier';
  @override
  String get media_tracking_connected_as => 'Compte connecté';
  @override
  String get media_tracking_delete_mapping => 'Supprimer le mappage';
  @override
  String get media_tracking_episode => 'Épisode';
  @override
  String get media_tracking_game => 'Jeu';
  @override
  String get media_tracking_kind => 'Catégorie';
  @override
  String get media_tracking_last_error => 'Dernière erreur';
  @override
  String get media_tracking_last_sync => 'Dernière synchronisation';
  @override
  String media_tracking_linked_count({required Object n}) => '${n} liés';
  @override
  String get media_tracking_local_item => 'Élément local';
  @override
  String get media_tracking_manage_links => 'Gérer les liens';
  @override
  String get media_tracking_manga => 'Manga';
  @override
  String get media_tracking_manual_required => 'Nécessite un lien manuel';
  @override
  String media_tracking_manual_required_count({required Object n}) =>
      '${n} éléments nécessitent un lien manuel';
  @override
  String get media_tracking_manual_required_hint =>
      'Ces éléments locaux ont déjà une progression mais ne sont pas liés à Bangumi.';
  @override
  String get media_tracking_mappings => 'Mappages d\'éléments';
  @override
  String media_tracking_more_manual_required({required Object n}) =>
      '${n} éléments de plus nécessitent un lien manuel';
  @override
  String get media_tracking_never_synced => 'Jamais synchronisé';
  @override
  String get media_tracking_no_local_history =>
      'Aucune progression locale de visionnage, lecture ou jeu n\'a besoin de liaison.';
  @override
  String get media_tracking_no_mappings =>
      'Aucun mappage manuel. Fushi fait la correspondance automatiquement au premier épisode terminé ou à la première progression de lecture ; ajoutez les éléments ambigus ici.';
  @override
  String get media_tracking_not_connected =>
      'Non connecté. La progression reste locale et rien n\'atteint Bangumi.';
  @override
  String get media_tracking_novel => 'Roman';
  @override
  String get media_tracking_open_subject => 'Ouvrir sur Bangumi';
  @override
  String get media_tracking_pending => 'Mises à jour en attente';
  @override
  String media_tracking_pending_count({required Object n}) =>
      '${n} en attente d\'envoi';
  @override
  String get media_tracking_progress_mode => 'Unité de progression';
  @override
  String get media_tracking_progress_offset => 'Numéro de départ';
  @override
  String get media_tracking_retry_mapping => 'Réessayer la correspondance';
  @override
  String get media_tracking_retry_matched =>
      'Correspondance trouvée et progression actuelle mise en file';
  @override
  String get media_tracking_retry_no_match =>
      'Aucune correspondance trouvée. Essayez le lien manuel.';
  @override
  String get media_tracking_saved => 'Mappage enregistré';
  @override
  String get media_tracking_search => 'Rechercher sur Bangumi';
  @override
  String get media_tracking_search_results => 'Résultats Bangumi';
  @override
  String get media_tracking_signup => 'Créer un compte Bangumi';
  @override
  String get media_tracking_status => 'Statut de la collection';
  @override
  String get media_tracking_summary =>
      'Enregistrer automatiquement la progression anime, roman et manga sur Bangumi';
  @override
  String get media_tracking_sync_failed =>
      'Synchronisation échouée. La mise à jour reste en file d\'attente.';
  @override
  String get media_tracking_sync_now => 'Synchroniser maintenant';
  @override
  String get media_tracking_sync_success => 'Synchronisation terminée';
  @override
  String get media_tracking_token_required =>
      'Entrez et vérifiez d\'abord un jeton d\'accès';
  @override
  String get media_tracking_unauthorized =>
      'Bangumi a rejeté le jeton d\'accès. Reconnectez-le dans les paramètres.';
  @override
  String get media_tracking_volume => 'Tome';
  @override
  String get media_tracking_watched_empty =>
      'Aucun anime n\'est marqué comme regardé sur ce compte Bangumi.';
  @override
  String media_tracking_watched_load_failed({required Object error}) =>
      'Impossible de charger les anime regardés : ${error}';
  @override
  String media_tracking_watched_progress({required Object n}) =>
      '${n} épisodes regardés';
  @override
  String get media_tracking_watched_show => 'Voir tous les anime regardés';
  @override
  String get media_tracking_watched_title => 'Regardés sur Bangumi';
  @override
  String get microphone_permission_denied =>
      'L\'autorisation du microphone est requise pour enregistrer.';
  @override
  String get migration_batch_core_label =>
      'Paramètres, progression et statistiques';
  @override
  String migration_batch_done({required Object batch}) => '${batch} exporté';
  @override
  String migration_batch_running({required Object batch}) =>
      'Exportation de ${batch}…';
  @override
  String get migration_download_fushi => 'Obtenir Fushi';
  @override
  String get migration_export_done =>
      'Exportation terminée. Ouvrez Fushi pour importer et vérifier.';
  @override
  String migration_export_failed({required Object error}) =>
      'Exportation échouée : ${error}';
  @override
  String migration_import_counts_failed({required Object detail}) =>
      'Les données importées sont incomplètes : ${detail}. Réexportez les parties manquantes depuis Hibiki, puis importez à nouveau.';
  @override
  String get migration_import_detected =>
      'Données de migration Hibiki détectées. Les importer maintenant ?';
  @override
  String get migration_import_entry => 'Importer depuis Hibiki';
  @override
  String get migration_import_entry_subtitle =>
      'Importer les données exportées par l\'ancienne application Hibiki';
  @override
  String get migration_import_nothing =>
      'Aucune donnée de migration trouvée dans le dossier de transfert.';
  @override
  String get migration_import_permission_body =>
      'Le dossier de transfert a été créé par l\'ancienne application. Sans « Accès à tous les fichiers », Fushi ne peut pas le lire — les données sont intactes, elles ne peuvent simplement pas être ouvertes.';
  @override
  String get migration_import_permission_grant => 'Accorder l\'autorisation';
  @override
  String get migration_import_permission_title =>
      'Autorisation de stockage requise';
  @override
  String migration_import_running({required Object batch}) =>
      'Importation de ${batch}…';
  @override
  String get migration_import_start => 'Démarrer l\'importation';
  @override
  String get migration_import_success => 'Importation terminée et vérifiée.';
  @override
  String migration_import_verify_failed({
    required Object batch,
    required Object detail,
  }) =>
      'La vérification de ${batch} a échoué et a été conservée pour réexportation : ${detail}';
  @override
  String migration_import_verifying({
    required Object batch,
    required Object done,
    required Object total,
  }) => 'Vérification de ${batch} (${done}/${total})';
  @override
  String get migration_import_verifying_hint =>
      'Vérification des sommes de contrôle des archives. Les grandes bibliothèques peuvent prendre plusieurs minutes.';
  @override
  String get migration_include_local_audio =>
      'Exporter aussi l\'audio de prononciation local (peut être volumineux)';
  @override
  String get migration_intro =>
      'Fushi est le nouveau nom de cette application. La migration exporte toutes vos données par lots dans un dossier de transfert, puis Fushi les importe et les vérifie. Vos données ici restent intactes jusqu\'à ce que vous désinstalliez cette application.';
  @override
  String get migration_open_fushi => 'Ouvrir Fushi';
  @override
  String get migration_readonly_note =>
      'Vos données ont été exportées vers Fushi. Cette application est maintenant en lecture seule : utilisez Fushi pour lire et créer des cartes. Vous pouvez réexporter à tout moment si Fushi signale des données manquantes.';
  @override
  String get migration_reexport => 'Réexporter';
  @override
  String get migration_settings_entry => 'Migrer vers Fushi';
  @override
  String get migration_settings_entry_subtitle =>
      'Déplacer toutes les données vers la nouvelle application Fushi';
  @override
  String get migration_start => 'Démarrer la migration';
  @override
  String get migration_target_missing =>
      'Fushi n\'est pas encore installé. Installez d\'abord Fushi, puis revenez ici.';
  @override
  String get migration_uninstall_button => 'Désinstaller Hibiki';
  @override
  String get migration_uninstall_prompt =>
      'Migration terminée. Désinstaller l\'ancienne application Hibiki ?';
  @override
  String get migration_uninstall_still_installed =>
      'Hibiki est toujours installé. Vous pouvez le désinstaller à tout moment.';
  @override
  String get mihon_add_to_bookshelf => 'Ajouter à la mangathèque';
  @override
  String get mihon_chapters_title => 'Chapitres';
  @override
  String get mihon_extension_disabled => 'Désactivée';
  @override
  String get mihon_extension_error => 'Erreur d\'extension';
  @override
  String get mihon_extension_import => 'Importer un APK local';
  @override
  String get mihon_extension_incompatible => 'Extension incompatible';
  @override
  String get mihon_extension_install => 'Installer';
  @override
  String get mihon_extension_installed => 'Installée';
  @override
  String get mihon_extension_language_all => 'Toutes les langues';
  @override
  String get mihon_extension_language_filter => 'Langue';
  @override
  String get mihon_extension_preview => 'Prévisualiser';
  @override
  String get mihon_extension_preview_discard => 'Abandonner';
  @override
  String get mihon_extension_preview_read_only =>
      'La prévisualisation est en lecture seule. Installez l\'extension pour ouvrir et lire.';
  @override
  String get mihon_extension_preview_source_select =>
      'Choisir une source à prévisualiser';
  @override
  String get mihon_extension_preview_warning =>
      'La prévisualisation exécute le code de cette extension avant son installation. Rien n\'est ajouté à votre bibliothèque tant que vous ne choisissez pas de l\'installer.';
  @override
  String get mihon_extension_sources_included => 'Sources incluses';
  @override
  String get mihon_extension_sources_less => 'Afficher moins de sources';
  @override
  String mihon_extension_sources_more({required Object count}) =>
      'Afficher les ${count} sources';
  @override
  String get mihon_extension_uninstall => 'Désinstaller';
  @override
  String get mihon_extension_update => 'Mettre à jour';
  @override
  String get mihon_extension_warning =>
      'Les extensions tierces exécutent du code avec les permissions de Fushi. N\'installez que des extensions et des signataires de confiance.';
  @override
  String get mihon_extensions_title => 'Extensions de manga';
  @override
  String get mihon_filter_ascending => 'Croissant';
  @override
  String get mihon_filter_descending => 'Décroissant';
  @override
  String get mihon_filter_exclude => 'Exclure';
  @override
  String get mihon_filter_ignore => 'Ignorer';
  @override
  String get mihon_filter_include => 'Inclure';
  @override
  String get mihon_runtime_unavailable =>
      'Les extensions Mihon ne sont pas disponibles sur cette plateforme.';
  @override
  String get mihon_signer_fingerprint => 'SHA-256 du signataire';
  @override
  String get mihon_signer_trust_title =>
      'Faire confiance au signataire de l\'extension ?';
  @override
  String get mihon_source_browse_mokuro => 'Catalogue Mokuro intégré';
  @override
  String get mihon_source_clear_data => 'Effacer les données de la source';
  @override
  String get mihon_source_clear_data_hint =>
      'Efface les préférences et cookies de cette source. Les extensions installées sont conservées.';
  @override
  String get mihon_source_empty =>
      'Aucune source de manga activée. Installez et activez d\'abord une extension.';
  @override
  String get mihon_source_latest => 'Récents';
  @override
  String get mihon_source_no_results => 'Aucun manga trouvé.';
  @override
  String get mihon_source_popular => 'Populaires';
  @override
  String get mihon_source_preferences => 'Préférences de la source';
  @override
  String get mihon_source_search => 'Rechercher un manga';
  @override
  String get mihon_sources_title => 'Sources de manga';
  @override
  String get mihon_store_add => 'Ajouter une boutique d\'extensions';
  @override
  String get mihon_store_edit => 'Modifier l\'URL du dépôt';
  @override
  String get mihon_store_empty =>
      'Aucune boutique d\'extensions. Ajoutez une boutique compatible Mihon ou importez un APK local.';
  @override
  String mihon_store_extension_count({required Object count}) =>
      '${count} extensions';
  @override
  String get mihon_store_refresh => 'Actualiser les boutiques';
  @override
  String get mihon_store_remove => 'Supprimer la boutique d\'extensions';
  @override
  String get mihon_store_url => 'URL de la boutique d\'extensions';
  @override
  String get mihon_store_zero_extensions =>
      'Ce dépôt a renvoyé 0 extension. Son adresse pointe peut-être vers un index obsolète.';
  @override
  String get mining_animated_format_avif => 'AVIF (plus petit)';
  @override
  String get mining_animated_format_gif => 'GIF (plus compatible)';
  @override
  String get mining_animated_format_webp => 'WebP (plus large compatibilité)';
  @override
  String get mining_audio_quality => 'Qualité audio';
  @override
  String get mining_audio_quality_high => 'Élevée';
  @override
  String get mining_audio_quality_hint =>
      'Un débit plus élevé est plus clair mais produit des cartes plus volumineuses.';
  @override
  String get mining_audio_quality_max => 'Maximum';
  @override
  String get mining_audio_quality_standard => 'Standard';
  @override
  String get mining_image_quality => 'Qualité image / GIF';
  @override
  String get mining_image_quality_hd => 'HD';
  @override
  String get mining_image_quality_hint =>
      'Plus élevé est plus net mais produit des cartes plus volumineuses. Maximum conserve les captures d\'écran à la résolution source ; les GIF animés restent limités pour que les cartes restent utilisables.';
  @override
  String get mining_image_quality_max => 'Maximum';
  @override
  String get mining_image_quality_standard => 'Standard';
  @override
  String get mining_image_quality_thrift => 'Économie de données';
  @override
  String get mining_still_format_jpg => 'JPG (plus petit)';
  @override
  String get mining_still_format_png => 'PNG (sans perte)';
  @override
  String get module_disabled_hint =>
      'This feature module is turned off in Settings > Appearance > Feature modules.';
  @override
  String get module_downloads_hidden_hint =>
      'L\'onglet Téléchargements est masqué dans Paramètres → Apparence → Modules de fonctionnalités ; réactivez-le pour gérer les abonnements.';
  @override
  String get module_extension_label => 'Extension navigateur';
  @override
  String get move_down => 'Descendre';
  @override
  String get move_up => 'Monter';
  @override
  String get name => 'Nom';
  @override
  String get nav_browser_extension => 'Extension';
  @override
  String get nav_downloads => 'Téléchargements';
  @override
  String get nav_game => 'Jeu';
  @override
  String get nav_home => 'Accueil';
  @override
  String get nav_lookup => 'Recherche';
  @override
  String get nav_video => 'Vidéo';
  @override
  String get network_proxy_address_hint =>
      'Serveur proxy HTTP utilisé par toutes les requêtes vers Internet public';
  @override
  String get network_proxy_auto_hint =>
      'S\'applique à toutes les requêtes Internet de l\'application : mises à jour, synchronisation cloud, dictionnaires, téléchargements, sous-titres et métadonnées. Laissez vide pour le mode automatique : variables d\'environnement, puis le proxy système activé. Les transferts P2P (torrent) se connectent directement par défaut ; vous pouvez les activer séparément ci-dessous.';
  @override
  String get network_proxy_credentials_scope_hint =>
      'Les identifiants ne s\'appliquent qu\'aux requêtes HTTP ; le moteur torrent intégré ne peut pas les utiliser';
  @override
  String get network_proxy_hint =>
      'hôte:port, par ex. 127.0.0.1:7890 (IPv4/nom d\'hôte uniquement)';
  @override
  String get network_proxy_invalid => 'Proxy invalide. Utilisez hôte:port';
  @override
  String get network_proxy_label => 'Proxy réseau';
  @override
  String get network_proxy_mode_auto => 'Automatique';
  @override
  String get network_proxy_mode_auto_hint =>
      'Utiliser les variables d\'environnement, puis le proxy système activé';
  @override
  String get network_proxy_mode_direct => 'Direct';
  @override
  String get network_proxy_mode_direct_hint =>
      'Désactiver l\'utilisation du proxy pour l\'application';
  @override
  String get network_proxy_mode_label => 'Mode proxy';
  @override
  String get network_proxy_mode_manual => 'Manuel';
  @override
  String get network_proxy_mode_manual_hint =>
      'Utiliser le serveur et les identifiants facultatifs ci-dessous';
  @override
  String get network_proxy_p2p_label => 'Proxy P2P (torrent)';
  @override
  String get network_proxy_p2p_mode_direct => 'Direct';
  @override
  String get network_proxy_p2p_mode_mixed => 'Mixte';
  @override
  String get network_proxy_p2p_mode_proxy => 'Via proxy';
  @override
  String get network_proxy_p2p_warning =>
      'Direct par défaut. Via proxy : tout le trafic P2P passe par le proxy global — la vitesse peut baisser, et de nombreux fournisseurs de proxy interdisent le trafic BitTorrent (bridage, avertissements ou résiliation du compte). Mixte : les requêtes tracker passent par le proxy tandis que les connexions DHT et pairs restent directes — découverte de pairs la plus large, mais votre vraie IP est visible des trackers, du DHT et des pairs (connectivité uniquement, pas de confidentialité). Moteur intégré uniquement ; un qBittorrent externe utilise ses propres paramètres de proxy.';
  @override
  String get network_proxy_password => 'Mot de passe du proxy (facultatif)';
  @override
  String get network_proxy_username =>
      'Nom d\'utilisateur du proxy (facultatif)';
  @override
  String get next_sentence => 'Phrase suivante';
  @override
  String get no_audio_file => 'Aucun fichier audio à enregistrer.';
  @override
  String get no_collections => 'Aucun signet ou phrase enregistrée';
  @override
  String get no_debug_logs => 'Aucun journal de débogage.';
  @override
  String get no_illustrations_found => 'Aucune illustration trouvée';
  @override
  String get no_results_found => 'Aucun résultat trouvé.';
  @override
  String get no_search_results => 'Aucun résultat de recherche trouvé.';
  @override
  String get no_sentence_selected => 'Aucune phrase sélectionnée';
  @override
  String get no_sentences_found => 'Aucune phrase trouvée';
  @override
  String get no_text => 'Aucun texte.';
  @override
  String get no_text_to_search => 'Aucun texte à rechercher.';
  @override
  String get now_listening_label => 'Écoute en cours';
  @override
  String get on_screen_keyboard => 'Clavier à l\'écran';
  @override
  String get onboarding_action_badge_optional => 'Facultatif';
  @override
  String get onboarding_action_badge_recommended => 'Recommandé';
  @override
  String get onboarding_action_badge_required => 'Requis';
  @override
  String get onboarding_action_next => 'Suivant';
  @override
  String get onboarding_action_skip => 'Passer pour le moment';
  @override
  String get onboarding_action_start => 'Commencer à utiliser Fushi';
  @override
  String get onboarding_actions_more => 'Autres méthodes';
  @override
  String get onboarding_anki_action_get_anki_desc =>
      'Ouvre la page de téléchargement d\'Anki. Laissez Anki ouvert pendant la création de cartes.';
  @override
  String get onboarding_anki_action_get_ankidroid_desc =>
      'Ouvre la page du store. Fushi écrit les cartes dans AnkiDroid, il doit donc être installé d\'abord.';
  @override
  String get onboarding_anki_action_install_addon_desc =>
      'Décompresse le module AnkiConnect fourni dans Anki. Redémarrez Anki ensuite.';
  @override
  String get onboarding_anki_action_refresh_desc =>
      'Recharge les paquets et les types de notes. À utiliser après avoir créé un paquet dans Anki.';
  @override
  String get onboarding_anki_action_test_desc =>
      'Vérifie que Fushi joint bien Anki et charge vos paquets et types de notes. Ne crée rien.';
  @override
  String onboarding_anki_addon_failed({required Object message}) =>
      'Installation échouée : ${message}';
  @override
  String get onboarding_anki_addon_installed =>
      'AnkiConnect installé. Démarrez ou redémarrez Anki, puis testez la connexion.';
  @override
  String get onboarding_anki_addon_no_anki =>
      'Dossier de données Anki introuvable. Installez Anki, ouvrez-le une fois, puis réessayez.';
  @override
  String get onboarding_anki_backend_label => 'Connexion';
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
  String get onboarding_anki_get_anki_action => 'Obtenir Anki (bureau)';
  @override
  String get onboarding_anki_get_ankidroid_action => 'Obtenir AnkiDroid';
  @override
  String get onboarding_anki_install_addon_action =>
      'Installer l\'extension AnkiConnect';
  @override
  String get onboarding_anki_intro_body =>
      'Anki est une application gratuite de flashcards à répétition espacée. Après une recherche, Fushi transforme le mot en carte avec définition, phrase, audio et capture d\'écran, en un seul geste.';
  @override
  String get onboarding_anki_mobile_ankiconnect_hint =>
      'Créez des cartes dans Anki sur un ordinateur du même réseau : activez AnkiConnect dans les paramètres de création de cartes et entrez l\'adresse de l\'ordinateur.';
  @override
  String get onboarding_anki_mobile_ankiconnect_title =>
      'Avancé : utiliser AnkiConnect depuis cet appareil';
  @override
  String get onboarding_anki_setup_android_hint =>
      'Installez AnkiDroid et ouvrez-le une fois. À votre première carte, touchez Autoriser dans la boîte de dialogue de permission — rien d\'autre à configurer.';
  @override
  String get onboarding_anki_setup_desktop_hint =>
      'Installez Anki, ajoutez l\'extension AnkiConnect (en un geste ci-dessous, ou avec le code 2055492159), et gardez Anki ouvert pendant la création de cartes.';
  @override
  String get onboarding_anki_setup_ios_hint =>
      'Avec AnkiMobile installé, les cartes sont ajoutées directement. Pour toutes les fonctionnalités, connectez-vous via AnkiConnect à Anki sur un ordinateur du même réseau.';
  @override
  String get onboarding_anki_status_pending => 'Pas encore testée';
  @override
  String get onboarding_anki_test_action => 'Tester la connexion';
  @override
  String onboarding_anki_test_success({required Object count}) =>
      'Connecté : ${count} paquets trouvés';
  @override
  String get onboarding_click_lookup_intro =>
      'Touchez n\'importe quel mot dans un livre, un manga ou un sous-titre pour voir sa définition. Essayez avec la phrase d\'entraînement ci-dessous.';
  @override
  String get onboarding_click_lookup_mine_body =>
      'Touchez + sur l\'entrée pour envoyer le mot, la phrase, l\'audio et l\'image au créateur de cartes.';
  @override
  String get onboarding_click_lookup_mine_title => 'Créez une carte';
  @override
  String get onboarding_click_lookup_nested_body =>
      'Touchez un mot dans une définition pour descendre d\'un niveau. Revenez en arrière ou touchez à l\'extérieur pour refermer un niveau.';
  @override
  String get onboarding_click_lookup_nested_title => 'Continuez à explorer';
  @override
  String get onboarding_click_lookup_tap_desc =>
      'Touchez un caractère (ou faites un clic gauche) ; Fushi retient le mot le plus long qui commence là. La phrase s\'ouvre dans la page de recherche.';
  @override
  String get onboarding_click_lookup_tap_title => 'Touchez un mot';
  @override
  String get onboarding_feature_anki => 'Cartes Anki';
  @override
  String get onboarding_feature_anki_hint =>
      'Transformez vos recherches en flashcards en un geste';
  @override
  String get onboarding_feature_backup => 'Sauvegarde et synchronisation';
  @override
  String get onboarding_feature_backup_hint =>
      'Google Drive, WebDAV ou un fichier local';
  @override
  String get onboarding_feature_books => 'Romans';
  @override
  String get onboarding_feature_books_hint =>
      'Lecture EPUB avec recherche et synchronisation des livres audio';
  @override
  String get onboarding_feature_extension_hint =>
      'Rechercher des mots sur n\'importe quelle page web (ordinateur uniquement)';
  @override
  String get onboarding_feature_fonts => 'Polices personnalisées';
  @override
  String get onboarding_feature_fonts_hint =>
      'Utilisez vos propres polices pour l\'interface, le texte des livres et le dictionnaire';
  @override
  String get onboarding_feature_games => 'Galgames';
  @override
  String get onboarding_feature_games_hint =>
      'Recherche par text-hook pendant la partie (Windows uniquement)';
  @override
  String get onboarding_feature_interconnect => 'Interconnexion d\'appareils';
  @override
  String get onboarding_feature_interconnect_hint =>
      'Partagez bibliothèques et progression entre vos appareils du réseau local';
  @override
  String get onboarding_feature_manga => 'Manga';
  @override
  String get onboarding_feature_manga_hint =>
      'Lire des manga avec recherche par OCR';
  @override
  String get onboarding_feature_manual_resources =>
      'Importer mes propres ressources';
  @override
  String get onboarding_feature_manual_resources_hint =>
      'Dictionnaires, livres audio et sources de prononciation depuis vos propres fichiers';
  @override
  String get onboarding_feature_pack => 'Pack recommandé';
  @override
  String get onboarding_feature_pack_hint =>
      'Dictionnaires japonais et audio de prononciation JA/EN en un seul téléchargement';
  @override
  String get onboarding_feature_video => 'Vidéo';
  @override
  String get onboarding_feature_video_hint =>
      'Recherche dans les sous-titres et création de cartes';
  @override
  String get onboarding_features_modules_hint =>
      'Les pages non cochées sont masquées de la barre de navigation. Modifiable à tout moment dans Paramètres → Apparence.';
  @override
  String get onboarding_features_modules_title => 'Pages de bibliothèque';
  @override
  String get onboarding_features_setup_hint =>
      'Seuls les éléments cochés auront une étape dans ce guide.';
  @override
  String get onboarding_features_setup_title => 'À configurer ensuite';
  @override
  String get onboarding_features_title => 'Qu\'allez-vous utiliser ?';
  @override
  String get onboarding_finish_body =>
      'Vous pouvez rouvrir ce guide à tout moment depuis Paramètres → Système.';
  @override
  String get onboarding_finish_summary_modules =>
      'Pages de bibliothèque affichées';
  @override
  String get onboarding_finish_summary_none => 'Aucune';
  @override
  String get onboarding_finish_summary_setup => 'Configuration guidée';
  @override
  String get onboarding_finish_title => 'Tout est prêt';
  @override
  String get onboarding_first_anki_action =>
      'Ouvrir la recherche et créer une carte';
  @override
  String get onboarding_first_anki_action_desc =>
      'Ouvre la phrase d\'entraînement dans la page de recherche. Touchez un mot, touchez +, vérifiez les champs et enregistrez.';
  @override
  String get onboarding_first_anki_card_intro =>
      'Anki est connecté. Créez maintenant une vraie carte pour vérifier que tout le parcours fonctionne.';
  @override
  String get onboarding_first_anki_lookup_desc =>
      'Ouvrez la phrase d\'entraînement et touchez un mot.';
  @override
  String get onboarding_first_anki_lookup_title => 'Cherchez un mot';
  @override
  String get onboarding_first_anki_plus_body =>
      'Le créateur de cartes s\'ouvre avec le mot, la lecture, la définition, la phrase, l\'audio et l\'image déjà remplis.';
  @override
  String get onboarding_first_anki_plus_title => 'Touchez +';
  @override
  String get onboarding_first_anki_save_body =>
      'Confirmez le paquet et le type de note, puis enregistrez. Ouvrez Anki pour voir la carte.';
  @override
  String get onboarding_first_anki_save_title => 'Vérifiez et enregistrez';
  @override
  String get onboarding_global_lookup_android_body =>
      'Android transmet le texte sélectionné à Fushi via le menu de texte ou le menu Partager.';
  @override
  String get onboarding_global_lookup_android_continue_body =>
      'La recherche s\'ouvre par-dessus l\'autre application. Fermez-la pour revenir.';
  @override
  String get onboarding_global_lookup_android_continue_title =>
      'Lisez la fenêtre';
  @override
  String get onboarding_global_lookup_android_open_body =>
      'Touchez Fushi dans le menu de sélection, ou touchez Partager et choisissez Fushi.';
  @override
  String get onboarding_global_lookup_android_open_title => 'Choisissez Fushi';
  @override
  String get onboarding_global_lookup_android_select_desc =>
      'Appuyez longuement sur un mot dans une autre application et ajustez les poignées pour le couvrir.';
  @override
  String get onboarding_global_lookup_android_select_title =>
      'Sélectionnez du texte';
  @override
  String get onboarding_global_lookup_windows_action =>
      'Ouvrir les paramètres de raccourcis';
  @override
  String get onboarding_global_lookup_windows_action_desc =>
      'Uniquement si vous voulez une autre combinaison de touches.';
  @override
  String get onboarding_global_lookup_windows_body =>
      'Sélectionnez du texte dans n\'importe quelle application et appelez le dictionnaire sans changer de fenêtre.';
  @override
  String get onboarding_global_lookup_windows_customize_body =>
      'Paramètres → Raccourcis → Global (hors application).';
  @override
  String get onboarding_global_lookup_windows_customize_title =>
      'Changez le raccourci';
  @override
  String get onboarding_global_lookup_windows_select_desc =>
      'Sélectionnez un mot dans n\'importe quelle application et laissez la sélection active.';
  @override
  String get onboarding_global_lookup_windows_select_title =>
      'Sélectionnez du texte';
  @override
  String get onboarding_global_lookup_windows_shortcut_body =>
      'Fushi récupère la sélection et ouvre une carte de recherche près du pointeur.';
  @override
  String get onboarding_global_lookup_windows_shortcut_press =>
      'Appuyez sur le raccourci';
  @override
  String get onboarding_lookup_practice_action =>
      'S\'entraîner avec cette phrase';
  @override
  String get onboarding_lookup_practice_desc =>
      'Ouvre la page de recherche avec la phrase chargée. Touchez-y un mot pour voir sa définition ; si rien ne s\'affiche, vos dictionnaires ne sont pas encore installés.';
  @override
  String get onboarding_manual_audiobook_action =>
      'Importer un livre avec audio';
  @override
  String get onboarding_manual_audiobook_action_desc =>
      'Livre ou texte, sous-titres alignés et fichiers audio. Ce sont les sous-titres qui permettent à Fushi de synchroniser l\'audio sur les phrases.';
  @override
  String get onboarding_manual_dictionary_action => 'Importer un dictionnaire';
  @override
  String get onboarding_manual_dictionary_action_desc =>
      'Ouvre le gestionnaire de dictionnaires. Les recherches ne renvoient de résultats qu\'une fois un dictionnaire installé.';
  @override
  String get onboarding_manual_pronunciation_action =>
      'Configurer l\'audio de prononciation';
  @override
  String get onboarding_manual_pronunciation_action_desc =>
      'Sources locales ou en ligne pour la prononciation des mots dans les entrées de dictionnaire. Distinct de l\'audio des livres audio.';
  @override
  String get onboarding_online_services_account => 'Compte personnel requis';
  @override
  String get onboarding_online_services_anidb =>
      'Identifier les anime et les épisodes grâce à l’empreinte du fichier. Fushi dispose d’un client d’application enregistré ; votre propre compte AniDB reste nécessaire. Renseignez-le dans les réglages et activez l’identification par hachage si vous le souhaitez.';
  @override
  String get onboarding_online_services_body =>
      'Configurez uniquement les services nécessaires, ou ignorez cette étape. Sélectionner ce tutoriel n’active aucun service et n’envoie aucun identifiant ; ne pas le sélectionner ne modifie pas les réglages existants.';
  @override
  String get onboarding_online_services_build_missing =>
      'Identifiants de l’application absents de cette version';
  @override
  String get onboarding_online_services_configure =>
      'Ouvrir les réglages des services en ligne';
  @override
  String get onboarding_online_services_dandanplay =>
      'Cette version inclut les identifiants d’application du service de danmaku. Les utilisateurs n’ont pas besoin de demander un accès API ; activez la correspondance des danmaku en ligne si vous le souhaitez.';
  @override
  String get onboarding_online_services_dandanplay_missing =>
      'Cette version n’inclut pas les identifiants d’application pour les danmaku ; la correspondance officielle en ligne est donc indisponible. Ces identifiants sont fournis par le développeur ; vous n’avez pas besoin d’enregistrer une API personnelle.';
  @override
  String get onboarding_online_services_embedded =>
      'Identifiants de l’application inclus';
  @override
  String get onboarding_online_services_hint =>
      'Découvrir les comptes, les clés API et les services disponibles';
  @override
  String get onboarding_online_services_jimaku =>
      'Rechercher des sous-titres. Inscrivez-vous ou connectez-vous à Jimaku, générez une clé API personnelle sur la page de votre compte, saisissez-la dans les réglages et activez cette source de sous-titres.';
  @override
  String get onboarding_online_services_key => 'Clé API requise';
  @override
  String get onboarding_online_services_link =>
      'Ouvrir la page officielle du compte / de l’API';
  @override
  String get onboarding_online_services_opensubtitles =>
      'Rechercher et télécharger des sous-titres. Créez un compte, puis un consommateur d’API pour obtenir une clé API. La connexion utilisateur est facultative et permet d’utiliser le quota de téléchargement du compte.';
  @override
  String get onboarding_online_services_opensubtitles_embedded =>
      'La clé API de l’application est incluse. Vous pouvez vous connecter à votre compte OpenSubtitles pour utiliser votre quota de téléchargement, ou utiliser votre propre clé API.';
  @override
  String get onboarding_online_services_public =>
      'MAL / Jikan fournit les métadonnées ; AniList permet la découverte et les recherches associées. Les requêtes publiques en lecture seule ne nécessitent ni compte personnel ni clé API.';
  @override
  String get onboarding_online_services_ready =>
      'Aucune inscription nécessaire';
  @override
  String get onboarding_online_services_server =>
      'Connecter un serveur existant';
  @override
  String get onboarding_online_services_servers =>
      'Ces services n’ont pas de page d’inscription commune. Saisissez l’adresse de votre serveur existant et le compte ou la clé fournis par son administrateur, ou ignorez cette étape si vous n’avez pas de serveur.';
  @override
  String get onboarding_online_services_title =>
      'Services en ligne (facultatifs)';
  @override
  String get onboarding_online_services_tmdb =>
      'Cette version inclut une clé TMDB pour les métadonnées de repli et les champs manquants. Ajoutez votre propre clé uniquement si vous souhaitez utiliser votre propre quota.';
  @override
  String get onboarding_online_services_tmdb_missing =>
      'Cette version n’inclut pas de clé TMDB. Demandez une clé API et saisissez-la dans les réglages si vous souhaitez utiliser TMDB comme source de repli ; MAL / Jikan reste disponible.';
  @override
  String get onboarding_pack_action_audio_desc =>
      'Ajoutez des sources de prononciation en ligne pour les langues que le pack ne couvre pas.';
  @override
  String get onboarding_pack_action_dictionary_desc =>
      'Vous apprenez une autre langue ? Importez plutôt ici les dictionnaires correspondants.';
  @override
  String get onboarding_pack_action_download_desc =>
      'Télécharge depuis plusieurs sources à la fois en arrière-plan, puis importe. Annulable à tout moment ; la reprise repart du point d\'arrêt.';
  @override
  String get onboarding_pack_action_import_existing_desc =>
      'Le pack est déjà sur le disque. Choisissez « Fusionner » dans la boîte de confirmation pour conserver vos données existantes.';
  @override
  String get onboarding_pack_action_pick_desc =>
      'Vous avez déjà le zip du pack ? Importez-le depuis le disque et sautez le téléchargement.';
  @override
  String get onboarding_pack_action_website =>
      'Ouvrir la page de téléchargement';
  @override
  String get onboarding_pack_action_website_desc =>
      'Liens par morceaux pour gestionnaires de téléchargement. Revenez ensuite et utilisez « Choisir un fichier de pack ».';
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
      'Échec du téléchargement : ${message}';
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
      'Téléchargement… annulez à tout moment et reprenez plus tard';
  @override
  String get onboarding_pack_import_now => 'Import now';
  @override
  String get onboarding_pack_intro =>
      'Dictionnaires japonais, accent de hauteur, fréquence des mots et audio de prononciation JA/EN en un seul téléchargement. Vous apprenez une autre langue ? Passez cette étape et importez vos propres dictionnaires.';
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
  String get onboarding_reopen => 'Guide de démarrage';
  @override
  String get onboarding_sample_sentence_hint =>
      'Touchez pour l\'ouvrir dans la page de recherche, puis touchez n\'importe quel mot.';
  @override
  String get onboarding_sample_sentence_label => 'Phrase d\'entraînement';
  @override
  String get onboarding_step_anki_action => 'Paramètres de création de cartes';
  @override
  String get onboarding_step_anki_action_desc =>
      'Modèle, correspondance des champs, captures et audio. Le paquet et le type de note ci-dessus suffisent pour commencer.';
  @override
  String get onboarding_step_anki_title => 'Configurer Anki';
  @override
  String get onboarding_step_backup_action =>
      'Ouvrir les paramètres de sauvegarde';
  @override
  String get onboarding_step_backup_action_desc =>
      'Choisissez un support et connectez-vous, ou exportez un fichier de sauvegarde local.';
  @override
  String get onboarding_step_backup_body =>
      'Gardez votre bibliothèque en sécurité quand vous changez ou perdez un appareil.';
  @override
  String get onboarding_step_backup_title => 'Sauvegarde';
  @override
  String get onboarding_step_click_lookup_title => 'Toucher pour chercher';
  @override
  String get onboarding_step_dictionary_action =>
      'Ouvrir le gestionnaire de dictionnaires';
  @override
  String get onboarding_step_extension_action =>
      'Ouvrir le guide d\'installation';
  @override
  String get onboarding_step_extension_action_desc =>
      'Montre comment installer l\'extension et la connecter à Fushi.';
  @override
  String get onboarding_step_extension_body =>
      'Cherchez des mots sur n\'importe quelle page web avec l\'extension compagnon.';
  @override
  String get onboarding_step_extension_title => 'Extension navigateur';
  @override
  String get onboarding_step_first_anki_card_title => 'Votre première carte';
  @override
  String get onboarding_step_fonts_action_desc =>
      'Importez des fichiers de police et choisissez-en une par langue.';
  @override
  String get onboarding_step_fonts_body =>
      'Utilisez vos propres polices pour l\'interface, le texte des livres et le dictionnaire.';
  @override
  String get onboarding_step_fonts_title => 'Polices';
  @override
  String get onboarding_step_global_lookup_title => 'Chercher hors de Fushi';
  @override
  String get onboarding_step_interconnect_action =>
      'Ouvrir les paramètres d\'interconnexion';
  @override
  String get onboarding_step_interconnect_action_desc =>
      'Activez l\'interconnexion et appariez cet appareil avec vos autres appareils.';
  @override
  String get onboarding_step_interconnect_body =>
      'Appariez des appareils de votre réseau local pour partager une même bibliothèque et garder la progression synchronisée.';
  @override
  String get onboarding_step_interconnect_title => 'Interconnexion';
  @override
  String get onboarding_step_manual_resources_body =>
      'Importez au moins un dictionnaire avant le tutoriel de recherche. Les livres audio et l\'audio de prononciation sont facultatifs.';
  @override
  String get onboarding_step_manual_resources_title =>
      'Vos propres dictionnaires et audios';
  @override
  String get onboarding_step_pack_download_action => 'Télécharger et importer';
  @override
  String get onboarding_step_pack_import_existing_action =>
      'Importer le pack téléchargé';
  @override
  String get onboarding_step_pack_pick_action => 'Choisir un fichier de pack';
  @override
  String get onboarding_step_pack_title => 'Pack recommandé';
  @override
  String get onboarding_title => 'Premiers pas';
  @override
  String get onboarding_welcome_body =>
      'Choisissez votre langue d\'interface et votre thème. Les étapes suivantes installent le reste.';
  @override
  String get onboarding_welcome_headline => 'Bienvenue dans Fushi';
  @override
  String get options_collapse => 'Réduire lors de la recherche';
  @override
  String get options_delete => 'Supprimer';
  @override
  String get options_edit => 'Modifier';
  @override
  String get options_expand => 'Développer lors de la recherche';
  @override
  String get options_github => 'Voir le dépôt sur GitHub';
  @override
  String get options_hide => 'Masquer lors de la recherche';
  @override
  String get options_language => 'Paramètres de langue';
  @override
  String get options_show => 'Afficher lors de la recherche';
  @override
  String get options_website => 'Visiter le site officiel';
  @override
  String get overlay_lookup_independent_size =>
      'Taille séparée pour la recherche pop-out';
  @override
  String get overlay_lookup_independent_size_hint =>
      'Donner à la fenêtre de recherche pop-out externe sa propre taille maximale au lieu de suivre le pop-up de l\'application';
  @override
  String get overlay_lookup_max_height => 'Hauteur max de la recherche pop-out';
  @override
  String get overlay_lookup_max_width => 'Largeur max de la recherche pop-out';
  @override
  String page_progress({required Object current, required Object total}) =>
      'Page ${current} / ${total}';
  @override
  String get paste => 'Coller';
  @override
  String get pause => 'Pause';
  @override
  String get pause_on_lookup => 'Pause lors de la recherche';
  @override
  String get pdf_bookmark_added => 'Signet ajouté';
  @override
  String get pdf_bookmarks => 'Signets';
  @override
  String get pdf_bookmarks_empty => 'Aucun signet.';
  @override
  String get pdf_no_text_layer =>
      'Ce PDF n\'a pas de couche de texte (image scannée), la recherche n\'est donc pas disponible.';
  @override
  String get pdf_outline => 'Sommaire';
  @override
  String get pdf_outline_empty => 'Ce PDF n\'a pas de sommaire.';
  @override
  String get pick_image => 'Choisir une image';
  @override
  String get play => 'Lecture';
  @override
  String get play_from_cue => 'Lire depuis cette phrase';
  @override
  String get playback_auto_pause => 'Mode pause sur sous-titre';
  @override
  String get playback_speed => 'Vitesse';
  @override
  String get popup_append_sentence_tooltip => 'Ajouter cette phrase à la carte';
  @override
  String get popup_auto_expand_dictionaries =>
      'Déplier automatiquement les lignes';
  @override
  String get popup_auto_expand_dictionaries_hint =>
      'Garder les N premières lignes des blocs de dictionnaire dépliées même quand « Replier les dictionnaires » est activé. Le nombre dépend du réglage de colonnes : lignes × colonnes (0 = tout replier)';
  @override
  String get popup_bottom_docked => 'Fenêtre de recherche ancrée en bas';
  @override
  String get popup_bottom_docked_hint =>
      'Épingle la fenêtre de recherche en un panneau pleine largeur au bas de l\'écran, au lieu de la faire suivre le mot recherché.';
  @override
  String get popup_clear_sentence_draft_tooltip =>
      'Effacer les phrases ajoutées';
  @override
  String get popup_compact_glossaries => 'Compact glossaries';
  @override
  String get popup_compact_glossaries_hint =>
      'Show dictionary glossary entries inline, separated by \' | \', instead of one per line in the lookup popup.';
  @override
  String get popup_ctx_adjust_button => 'Ajuster le contexte';
  @override
  String get popup_ctx_box_current => 'Current';
  @override
  String get popup_ctx_box_empty => '(aucun)';
  @override
  String get popup_ctx_box_next => 'After';
  @override
  String get popup_ctx_box_prev => 'Before';
  @override
  String get popup_ctx_cancel => 'Annuler';
  @override
  String get popup_ctx_confirm => 'Confirm';
  @override
  String get popup_ctx_modal_count => 'Selected %d';
  @override
  String get popup_ctx_modal_eyebrow => 'Before mining';
  @override
  String get popup_ctx_modal_title => 'Sélectionner le contexte de phrase';
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
      'Colonnes max du dictionnaire (remplissage auto)';
  @override
  String get popup_dictionary_max_columns_hint =>
      'Remplit automatiquement jusqu\'à ce nombre de colonnes par ligne ; les écrans plus étroits en utilisent moins';
  @override
  String get popup_font_size_decrease => 'Réduire le texte du dictionnaire';
  @override
  String get popup_font_size_increase => 'Agrandir le texte du dictionnaire';
  @override
  String get popup_instant_scroll => 'Défilement instantané de la fenêtre';
  @override
  String get popup_instant_scroll_hint =>
      'Pour les écrans e-ink : la fenêtre de recherche saute par paliers fixes, sans animation de défilement.';
  @override
  String get popup_max_height => 'Hauteur max. de la fenêtre de recherche';
  @override
  String get popup_max_width => 'Largeur max du popup';
  @override
  String get popup_no_audio_available => 'Aucun audio disponible';
  @override
  String get popup_sentence_context_next_label => 'Après';
  @override
  String get popup_sentence_context_prev_label => 'Avant';
  @override
  String get popup_wheel_speed => 'Vitesse de défilement du pop-up';
  @override
  String get popup_wheel_speed_hint =>
      'Vitesse de défilement à la molette pour le pop-up du dictionnaire (s\'applique aussi à l\'extension navigateur).';
  @override
  String get prev_sentence => 'Phrase précédente';
  @override
  String get preview => 'Aperçu';
  @override
  String get preview_badge => 'Badge';
  @override
  String get preview_switch => 'Commutateur';
  @override
  String get processing_in_progress => 'Traitement des images';
  @override
  String get profile_book_profile => 'Attribuer un profil';
  @override
  String profile_confirm_delete({required Object name}) =>
      'Supprimer le profil "${name}" ?';
  @override
  String get profile_copy => 'Copier';
  @override
  String get profile_copy_suffix => '(Copie)';
  @override
  String get profile_create => 'Créer un profil';
  @override
  String get profile_delete => 'Supprimer';
  @override
  String get profile_export => 'Exporter';
  @override
  String get profile_export_failed => 'Exportation échouée';
  @override
  String profile_follow_default_current({required Object name}) =>
      'Suit le profil par défaut (${name})';
  @override
  String get profile_import => 'Importer';
  @override
  String get profile_import_failed => 'Importation échouée';
  @override
  String get profile_import_invalid => 'Fichier de profil invalide';
  @override
  String get profile_import_success => 'Profil importé';
  @override
  String get profile_label => 'Profil';
  @override
  String get profile_management => 'Gestion des profils';
  @override
  String get profile_media_audiobook => 'Livre audio';
  @override
  String get profile_media_browser => 'Navigateur';
  @override
  String get profile_media_epub => 'Livre';
  @override
  String get profile_media_game => 'Jeu';
  @override
  String get profile_media_lyrics => 'Mode paroles';
  @override
  String get profile_media_manga => 'Manga';
  @override
  String get profile_media_none => 'Aucun';
  @override
  String get profile_media_srtbook => 'Livre sous-titré';
  @override
  String get profile_media_type_bindings => 'Associations de types de médias';
  @override
  String get profile_media_video => 'Vidéo';
  @override
  String get profile_name_hint => 'Nom du profil';
  @override
  String get profile_rename => 'Renommer';
  @override
  String get quick_import_title => 'Importation rapide';
  @override
  String get reader_audiobook_current_chapter => 'Current chapter';
  @override
  String get reader_audiobook_tab_chapters => 'Chapters';
  @override
  String get reader_audiobook_tab_files => 'Audio files';
  @override
  String get reader_auto_hide_chrome_duration =>
      'Masquer automatiquement les contrôles flottants après';
  @override
  String get reader_blur_images => 'Flouter les images (anti-spoiler)';
  @override
  String get reader_content_timeout =>
      'Délai de chargement du contenu dépassé. Rouvrez si l\'affichage est anormal';
  @override
  String get reader_copy_image => 'Copier l\'image';
  @override
  String get reader_font_size => 'Taille de police';
  @override
  String get reader_font_vpal => 'VPAL (alt. vertical)';
  @override
  String get reader_font_weight => 'Graisse de police';
  @override
  String get reader_furigana_mode => 'Furigana';
  @override
  String get reader_furigana_mode_hint => '';
  @override
  String get reader_gallery_empty => 'Aucune illustration dans ce livre';
  @override
  String get reader_gallery_jump => 'Aller à cette illustration';
  @override
  String get reader_gallery_tooltip => 'Parcourir les illustrations';
  @override
  String get reader_horizontal => 'Horizontal';
  @override
  String reader_image_copy_failed({required Object error}) =>
      'Échec de la copie de l\'image : ${error}';
  @override
  String get reader_image_file_unavailable =>
      'Le fichier image est indisponible.';
  @override
  String reader_image_share_failed({required Object error}) =>
      'Échec du partage de l\'image : ${error}';
  @override
  String get reader_line_height => 'Hauteur de ligne';
  @override
  String get reader_merge_image_pages =>
      'Intégrer les illustrations dans le texte';
  @override
  String get reader_merge_image_pages_subtitle =>
      'Les chapitres d\'une seule image s\'affichent dans le chapitre de texte adjacent au lieu d\'une page séparée';
  @override
  String get reader_no_books_added => 'Aucun livre dans la bibliothèque';
  @override
  String get reader_not_bound_cannot_rematch =>
      'Le livre audio n\'est pas lié à un livre, impossible de relancer la correspondance';
  @override
  String get reader_open_failed => 'Échec de l\'ouverture du livre';
  @override
  String get reader_orient_mixed => 'Mixte';
  @override
  String get reader_orient_upright => 'Droit';
  @override
  String get reader_page_columns_auto => 'Automatique';
  @override
  String get reader_paginated => 'Paginé';
  @override
  String get reader_paragraph_spacing => 'Espacement des paragraphes';
  @override
  String get reader_reader_styles => 'Prioriser les styles du livre';
  @override
  String get reader_scroll => 'Défilement';
  @override
  String get reader_settings_section => 'Paramètres du lecteur';
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
  String get reader_text_indentation => 'Retrait de paragraphe';
  @override
  String get reader_text_justify => 'Justification du texte';
  @override
  String get reader_theme => 'Thème';
  @override
  String get reader_theme_black => 'Noir';
  @override
  String get reader_theme_dark => 'Sombre';
  @override
  String get reader_theme_ecru => 'Écru';
  @override
  String get reader_theme_eyecare => 'Eye Care';
  @override
  String get reader_theme_gray => 'Gris';
  @override
  String get reader_theme_light => 'Blanc';
  @override
  String get reader_theme_water => 'Bleu eau';
  @override
  String get reader_top_progress_floating => 'Progression de lecture flottante';
  @override
  String get reader_unsupported_platform =>
      'Le lecteur n\'est pas encore disponible sur cette plateforme.';
  @override
  String get reader_vert_kerning => 'Crénage (vertical)';
  @override
  String get reader_vert_text_orient => 'Orientation du texte';
  @override
  String get reader_vertical => 'Vertical';
  @override
  String get reader_view_mode_label => 'Pages / Défilement';
  @override
  String get reader_vn => 'Visual Novel';
  @override
  String get reader_writing_direction => 'Direction d\'écriture';
  @override
  String get reading_activity => 'Activité d\'étude';
  @override
  String get reading_progress => 'Progression de lecture';
  @override
  String get reading_section_mode => 'Mode et orientation';
  @override
  String get reading_statistics => 'Statistiques de lecture';
  @override
  String get reading_stats_day_reset_hour => 'Day starts at';
  @override
  String get reading_stats_day_reset_hour_hint =>
      'Reading before this hour counts toward the previous day. Affects today and the last N days in statistics; only records written after the change use the new boundary.';
  @override
  String get reading_stats_idle_timeout => 'Délai d\'inactivité';
  @override
  String get reading_stats_idle_timeout_hint =>
      'Cesser de compter le temps de lecture après ce nombre de minutes sans tourner de page, faire défiler ou chercher un mot. Romans, PDF et mangas uniquement ; la vidéo compte tant qu\'elle est en lecture.';
  @override
  String get record => 'Enregistrer';
  @override
  String get refresh => 'Actualiser';
  @override
  String get rematch_adjust_window =>
      'Ajuster la fenêtre de recherche et relancer la correspondance';
  @override
  String get rematch_run => 'Relancer la correspondance';
  @override
  String get remote_audio_source => 'Audio distant';
  @override
  String get remote_book_audiobook_download_failed =>
      'Impossible de télécharger le livre audio pour ce livre';
  @override
  String get remote_book_download => 'Télécharger sur cet appareil';
  @override
  String get remote_book_download_failed =>
      'Impossible de télécharger le livre distant';
  @override
  String get remote_book_downloaded => 'Livre distant téléchargé';
  @override
  String get remote_book_downloading => 'Téléchargement…';
  @override
  String get remote_book_info => 'Infos';
  @override
  String get remote_book_info_has_audiobook => 'Livre audio inclus';
  @override
  String get remote_book_list_failed =>
      'Impossible de récupérer la bibliothèque distante depuis l\'appareil apparié.';
  @override
  String get remote_book_unavailable => 'Appareil appairé indisponible';
  @override
  String get remote_delete_audiobook_partial =>
      'Livre supprimé, mais son livre audio n\'a pas pu être retiré sur l\'appareil apparié';
  @override
  String get remote_delete_failed =>
      'Impossible de supprimer sur l\'appareil apparié';
  @override
  String get remote_delete_unsupported =>
      'L\'appareil apparié est trop ancien pour prendre en charge la suppression à distance. Mettez d\'abord Fushi à jour dessus.';
  @override
  String get remote_dict_lookup => 'Recherche dans dictionnaire distant';
  @override
  String get remote_dict_lookup_hint =>
      'Quand les dictionnaires locaux échouent, interroger le serveur Fushi configuré';
  @override
  String get remote_video_download => 'Télécharger sur cet appareil';
  @override
  String get remote_video_download_failed =>
      'Impossible de télécharger la vidéo distante';
  @override
  String get remote_video_downloaded => 'Vidéo distante téléchargée';
  @override
  String get remote_video_downloading => 'Téléchargement…';
  @override
  String get remote_video_info => 'Infos';
  @override
  String get remote_video_info_has_subtitle => 'Sous-titres inclus';
  @override
  String get remote_video_info_no_subtitle => 'Pas de sous-titres';
  @override
  String remote_video_info_size({required Object size}) => 'Taille : ${size}';
  @override
  String get remote_video_list_failed =>
      'Impossible de charger les vidéos distantes. Assurez-vous que l\'autre appareil est en ligne et sur le même réseau, puis réessayez.';
  @override
  String get remote_video_unavailable => 'Appareil appairé indisponible';
  @override
  String get rename_collection => 'Renommer la collection';
  @override
  String get render_restart_required =>
      'Prend effet après le redémarrage de l\'application';
  @override
  String get repeat_cue => 'Répéter la phrase';
  @override
  String get reset => 'Réinitialiser';
  @override
  String get resource_version_batch => 'Lot';
  @override
  String resource_version_episode_count({required Object n}) => '${n} épisodes';
  @override
  String get resource_version_show_files => 'Afficher les fichiers';
  @override
  String get resource_version_view_flat => 'Toutes les sorties';
  @override
  String get retry => 'Réessayer';
  @override
  String get reverse_arrow_page_turn =>
      'Inverser le sens des touches gauche/droite pour tourner les pages';
  @override
  String get reverse_navigation_bar => 'Inverser la barre de navigation';
  @override
  String get reverse_reader_bottom_bar =>
      'Inverser la barre inférieure du lecteur';
  @override
  String get saved_tags => 'étiquettes enregistrées.';
  @override
  String get scan_non_japanese_text => 'Scanner le texte non japonais';
  @override
  String get scan_non_japanese_text_hint =>
      'Désactivé, la sélection s\'arrête aux caractères non japonais';
  @override
  String get scrape_all => 'Tout récupérer';
  @override
  String scrape_all_confirm({required Object n}) =>
      'Faire correspondre les ${n} éléments de la bibliothèque par titre. Seules les correspondances à haute confiance sont appliquées automatiquement — les vidéos sont évaluées sur le titre, l\'année, le type et d\'autres signaux, tandis que les livres et jeux nécessitent un titre exact unique. Les couvertures que vous avez choisies ne sont jamais écrasées (images locales, entrées choisies dans le dialogue, et fichiers d\'affiches placés dans le dossier), et les résultats ambigus restent en attente de vérification manuelle.';
  @override
  String scrape_all_done({
    required Object applied,
    required Object review,
    required Object skipped,
    required Object failed,
  }) =>
      'Terminé : ${applied} appliqués, ${review} à vérifier, ${skipped} ignorés, ${failed} échoués';
  @override
  String get scrape_all_empty =>
      'Aucun élément à récupérer dans cette bibliothèque.';
  @override
  String scrape_all_item({required Object title}) => 'Traitement : ${title}';
  @override
  String scrape_all_running({required Object current, required Object total}) =>
      'Récupération ${current} / ${total}';
  @override
  String get scrape_all_start => 'Démarrer';
  @override
  String scrape_all_title({required Object kind}) =>
      'Récupérer tous les ${kind}';
  @override
  String get scrape_failure_detail_hide => 'Masquer les détails';
  @override
  String get scrape_failure_detail_show => 'Afficher les détails';
  @override
  String get scrape_reason_network =>
      'Impossible d\'obtenir une réponse valide de la source de couverture. Vérifiez votre réseau et réessayez.';
  @override
  String get scrape_reason_server =>
      'La source de couverture a renvoyé une erreur. Réessayez plus tard ou choisissez un autre candidat.';
  @override
  String get search => 'Rechercher';
  @override
  String get search_ellipsis => 'Rechercher...';
  @override
  String get searching_in_progress => 'Recherche de ';
  @override
  String get section_advanced_typography => 'Avancé';
  @override
  String get section_audiobook => 'Livre audio';
  @override
  String get section_epub => 'Bibliothèque EPUB';
  @override
  String get section_floating_lyric => 'Sous-titre flottant';
  @override
  String get section_interface => 'Interface';
  @override
  String get section_layout => 'Mise en page et affichage';
  @override
  String get section_navigation => 'Navigation';
  @override
  String get section_network => 'Réseau';
  @override
  String get section_page_turn_direction => 'Sens de tournage des pages';
  @override
  String get section_services_metadata => 'Récupération des métadonnées';
  @override
  String get section_services_resources => 'Indexeurs de ressources';
  @override
  String get section_services_subtitles => 'Sources de sous-titres';
  @override
  String get section_typography => 'Typographie';
  @override
  String get section_update => 'Paramètres de mise à jour';
  @override
  String get section_video_danmaku => 'Danmaku';
  @override
  String get section_video_library => 'Vidéothèque';
  @override
  String get section_video_playback => 'Lecture';
  @override
  String get section_video_subtitles => 'Sous-titres';
  @override
  String get selection_copy_empty => 'Aucun texte sélectionné.';
  @override
  String get selection_share_failed =>
      'Impossible d\'ouvrir la feuille de partage.';
  @override
  String get selection_web_search => 'Rechercher sur le web';
  @override
  String get selection_web_search_unavailable =>
      'Aucune application ne peut rechercher sur le web.';
  @override
  String get send => 'Envoyer';
  @override
  String get series => 'Séries';
  @override
  String get series_created => 'Série créée';
  @override
  String get series_default_name => 'Nouvelle série';
  @override
  String series_item_count({required Object n}) => '${n} éléments';
  @override
  String get series_name_hint => 'Nom de la série';
  @override
  String get server_address => 'Adresse du serveur';
  @override
  String get settings => 'Paramètres';
  @override
  String get settings_check_update_now => 'Vérifier les mises à jour';
  @override
  String get settings_content_language_description =>
      'Langue de repli pour le contenu qui n\'en déclare pas. Les paramètres par livre, par vidéo, par jeu et par dictionnaire l\'emportent.';
  @override
  String get settings_content_language_title => 'Langue du contenu par défaut';
  @override
  String get settings_content_language_unset => 'Non définie';
  @override
  String get settings_destination_appearance => 'Apparence';
  @override
  String get settings_destination_card_creation => 'Création de cartes';
  @override
  String get settings_destination_diagnostics => 'Diagnostic';
  @override
  String get settings_destination_interconnect => 'Fushi Interconnect';
  @override
  String get settings_destination_listening => 'Écoute';
  @override
  String get settings_destination_lookup => 'Recherche';
  @override
  String get settings_destination_manga_summary =>
      'Lecteur, OCR et catalogue en ligne';
  @override
  String get settings_destination_profiles => 'Schémas de configuration';
  @override
  String get settings_destination_reading => 'Lecture';
  @override
  String get settings_destination_reading_controls => 'Commandes de lecture';
  @override
  String get settings_destination_services => 'Services en ligne';
  @override
  String get settings_destination_services_summary =>
      'API tierces, indexeurs et serveurs multimédias';
  @override
  String get settings_destination_storage => 'Stockage';
  @override
  String get settings_destination_storage_summary =>
      'Emplacement des données et utilisation du disque';
  @override
  String get settings_destination_sync_backup => 'Sync et sauvegarde';
  @override
  String get settings_destination_system => 'Système';
  @override
  String get settings_destination_system_summary =>
      'Général, mises à jour et diagnostics';
  @override
  String get settings_destination_tracking => 'Suivi des médias';
  @override
  String get settings_destination_video => 'Vidéo';
  @override
  String get settings_downloads_open_page_hint =>
      'Ouvrir la page Téléchargements (tâches, ressources, abonnements)';
  @override
  String get settings_search_hint => 'Rechercher dans les paramètres';
  @override
  String get settings_search_no_results => 'Aucun paramètre correspondant';
  @override
  String get settings_secret_hide => 'Masquer la valeur';
  @override
  String get settings_secret_show => 'Afficher la valeur';
  @override
  String get settings_section_app_shell => 'Application';
  @override
  String get settings_section_data_storage =>
      'Emplacement de stockage des données';
  @override
  String get settings_section_gal_hook_overlay =>
      'Superposition de sous-titres de galgame';
  @override
  String get settings_section_general => 'Général';
  @override
  String get settings_section_lookup_audio => 'Prononciation et retour';
  @override
  String get settings_section_lookup_content => 'Contenu des entrées';
  @override
  String get settings_section_lookup_integrations => 'Intégrations externes';
  @override
  String get settings_section_lookup_popup_window => 'Fenêtre pop-up';
  @override
  String get settings_section_lookup_trigger => 'Déclencheur de recherche';
  @override
  String get settings_section_modules => 'Modules de fonctionnalités';
  @override
  String get settings_section_page_turn_input =>
      'Changement de page et interaction';
  @override
  String get settings_section_reader_chrome => 'Interface du lecteur';
  @override
  String get settings_section_reading_stats => 'Statistiques de lecture';
  @override
  String get settings_section_update_channel => 'Canal de mise à jour';
  @override
  String get settings_services_link_subtitle =>
      'Jimaku, OpenSubtitles, Torznab, Jellyfin, AniDB et TMDB se configurent tous ici';
  @override
  String get settings_view_changelog => 'Voir le journal des modifications';
  @override
  String get share => 'Partager';
  @override
  String get share_theme => 'Partager le thème';
  @override
  String get shortcut_action_audiobook_next_sentence => 'Phrase suivante';
  @override
  String get shortcut_action_audiobook_play_pause => 'Lecture / Pause';
  @override
  String get shortcut_action_audiobook_prev_sentence => 'Phrase précédente';
  @override
  String get shortcut_action_audiobook_seek_clicked =>
      'Aller à la phrase cliquée dans l\'audio';
  @override
  String get shortcut_action_dpad_down => 'Croix directionnelle Bas';
  @override
  String get shortcut_action_dpad_left => 'Croix directionnelle Gauche';
  @override
  String get shortcut_action_dpad_right => 'Croix directionnelle Droite';
  @override
  String get shortcut_action_dpad_up => 'Croix directionnelle Haut';
  @override
  String get shortcut_action_global_back => 'Retour';
  @override
  String get shortcut_action_global_context_menu => 'Open context menu';
  @override
  String get shortcut_action_global_external_lookup =>
      'App-external lookup hotkey';
  @override
  String get shortcut_action_global_scroll_page_down =>
      'Défiler d\'un écran vers le bas';
  @override
  String get shortcut_action_global_scroll_page_up =>
      'Défiler d\'un écran vers le haut';
  @override
  String get shortcut_action_global_toggle_fullscreen => 'Plein écran';
  @override
  String get shortcut_action_home_focus_search => 'Focus sur la recherche';
  @override
  String get shortcut_action_home_tab_books => 'Onglet Livres';
  @override
  String get shortcut_action_home_tab_dict => 'Onglet Dictionnaire';
  @override
  String get shortcut_action_home_tab_next => 'Onglet suivant';
  @override
  String get shortcut_action_home_tab_prev => 'Onglet précédent';
  @override
  String get shortcut_action_home_tab_settings => 'Onglet Réglages';
  @override
  String get shortcut_action_manga_dismiss_dict => 'Fermer le dictionnaire';
  @override
  String get shortcut_action_manga_page_backward => 'Page précédente';
  @override
  String get shortcut_action_manga_page_forward => 'Page suivante';
  @override
  String get shortcut_action_manga_pan_down => 'Défiler vers le bas';
  @override
  String get shortcut_action_manga_pan_left => 'Défiler vers la gauche';
  @override
  String get shortcut_action_manga_pan_right => 'Défiler vers la droite';
  @override
  String get shortcut_action_manga_pan_up => 'Défiler vers le haut';
  @override
  String get shortcut_action_manga_toggle_chrome =>
      'Basculer l\'interface manga';
  @override
  String get shortcut_action_popup_mine_entry => 'Créer une carte';
  @override
  String get shortcut_action_popup_next_entry => 'Entrée de mot suivante';
  @override
  String get shortcut_action_popup_play_audio => 'Lire l\'audio du mot';
  @override
  String get shortcut_action_popup_prev_entry => 'Entrée de mot précédente';
  @override
  String get shortcut_action_reader_create_card_from_popup =>
      'Créer une carte depuis la fenêtre';
  @override
  String get shortcut_action_reader_dismiss_dict => 'Fermer le dictionnaire';
  @override
  String get shortcut_action_reader_enter_caret =>
      'Activer le curseur de recherche';
  @override
  String get shortcut_action_reader_lookup_at_cursor =>
      'Rechercher / activer le curseur';
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
  String get shortcut_action_reader_page_backward => 'Page précédente';
  @override
  String get shortcut_action_reader_page_forward => 'Page suivante';
  @override
  String get shortcut_action_reader_shift_lookup => 'Recherche avec Maj';
  @override
  String get shortcut_action_reader_toggle_chrome =>
      'Afficher/masquer les commandes';
  @override
  String get shortcut_action_reader_toggle_furigana =>
      'Afficher/masquer les furigana';
  @override
  String get shortcut_action_video_align_subtitle_to_next =>
      'Aligner le sous-titre suivant sur maintenant';
  @override
  String get shortcut_action_video_align_subtitle_to_prev =>
      'Aligner le sous-titre précédent sur maintenant';
  @override
  String get shortcut_action_video_cycle_secondary_subtitle_obscure =>
      'Cycle Secondary Subtitle Obscure';
  @override
  String get shortcut_action_video_cycle_subtitle_obscure =>
      'Cycle Subtitle Obscure Mode';
  @override
  String get shortcut_action_video_dismiss_dict => 'Fermer le dictionnaire';
  @override
  String get shortcut_action_video_enter_caret =>
      'Activer le curseur de recherche dans les sous-titres';
  @override
  String get shortcut_action_video_hold_speed =>
      'Maintenir pour vitesse temporaire';
  @override
  String get shortcut_action_video_next_chapter => 'Chapitre suivant';
  @override
  String get shortcut_action_video_next_frame => 'Image suivante';
  @override
  String get shortcut_action_video_next_subtitle => 'Sous-titre suivant';
  @override
  String get shortcut_action_video_open_subtitle_align =>
      'Ouvrir l\'alignement de forme d\'onde des sous-titres';
  @override
  String get shortcut_action_video_pause => 'Pause';
  @override
  String get shortcut_action_video_play => 'Lire';
  @override
  String get shortcut_action_video_previous_chapter => 'Chapitre précédent';
  @override
  String get shortcut_action_video_previous_frame => 'Image précédente';
  @override
  String get shortcut_action_video_previous_subtitle => 'Sous-titre précédent';
  @override
  String get shortcut_action_video_replay_current_subtitle =>
      'Rejouer le sous-titre actuel';
  @override
  String get shortcut_action_video_replay_previous_subtitle =>
      'Rejouer le sous-titre précédent';
  @override
  String get shortcut_action_video_reset_speed => 'Réinitialiser la vitesse';
  @override
  String get shortcut_action_video_screenshot => 'Capture d\'écran';
  @override
  String get shortcut_action_video_search_subtitle_list =>
      'Rechercher dans la liste des sous-titres';
  @override
  String get shortcut_action_video_seek_backward => 'Reculer';
  @override
  String get shortcut_action_video_seek_forward => 'Avancer';
  @override
  String get shortcut_action_video_speed_down => 'Ralentir';
  @override
  String get shortcut_action_video_speed_up => 'Accélérer';
  @override
  String get shortcut_action_video_subtitle_delay_decrease =>
      'Délai sous-titre −';
  @override
  String get shortcut_action_video_subtitle_delay_increase =>
      'Délai sous-titre +';
  @override
  String get shortcut_action_video_toggle_favorite_sentence =>
      'Mettre la phrase actuelle en favori';
  @override
  String get shortcut_action_video_toggle_fullscreen =>
      'Basculer en plein écran';
  @override
  String get shortcut_action_video_toggle_immersive_lock =>
      'Basculer le verrouillage immersif';
  @override
  String get shortcut_action_video_toggle_mute => 'Activer/couper le son';
  @override
  String get shortcut_action_video_toggle_play_pause => 'Lecture / Pause';
  @override
  String get shortcut_action_video_toggle_secondary_subtitle_hide =>
      'Toggle Hide Secondary Subtitle';
  @override
  String get shortcut_action_video_toggle_shader_compare =>
      'Basculer la comparaison de shaders';
  @override
  String get shortcut_action_video_toggle_subtitle_blur =>
      'Basculer le flou des sous-titres';
  @override
  String get shortcut_action_video_toggle_subtitle_hide =>
      'Toggle Hide Subtitles';
  @override
  String get shortcut_action_video_toggle_subtitle_list =>
      'Afficher/masquer la liste des sous-titres';
  @override
  String get shortcut_action_video_volume_down => 'Volume -';
  @override
  String get shortcut_action_video_volume_up => 'Volume +';
  @override
  String get shortcut_assign_pick_action => 'Assigner à une action…';
  @override
  String get shortcut_clear => 'Effacer';
  @override
  String shortcut_conflict({required Object s}) => 'Déjà utilisé par : ${s}';
  @override
  String get shortcut_conflict_keep_both => 'Keep both';
  @override
  String get shortcut_conflict_keep_both_hint =>
      'Both actions keep this binding. Whichever scope resolves first wins at press time.';
  @override
  String shortcut_conflict_replace_confirm({required Object s}) =>
      'Ce raccourci est déjà utilisé par « ${s} ». Le déplacer vers cette action ?';
  @override
  String get shortcut_gamepad => 'Manette';
  @override
  String get shortcut_gamepad_brand_label => 'Style de bouton manette';
  @override
  String get shortcut_gamepad_brand_playstation => 'PlayStation';
  @override
  String get shortcut_gamepad_brand_switch => 'Nintendo Switch';
  @override
  String get shortcut_gamepad_brand_xbox => 'Xbox';
  @override
  String get shortcut_gamepad_pick_list => 'Choisir dans la liste';
  @override
  String get shortcut_gamepad_unavailable_hint =>
      'Composant GameInput non détecté — le support manette est indisponible. Installez les Services de jeu Windows pour activer le support des manettes.';
  @override
  String get shortcut_keyboard => 'Clavier';
  @override
  String get shortcut_mouse_back => 'Bouton retour';
  @override
  String get shortcut_mouse_button => 'Bouton de souris';
  @override
  String get shortcut_mouse_button_not_supported =>
      'This action only accepts mouse side buttons (back/forward).';
  @override
  String get shortcut_mouse_forward => 'Bouton avance';
  @override
  String get shortcut_mouse_left => 'Clic gauche';
  @override
  String get shortcut_mouse_middle => 'Clic molette';
  @override
  String get shortcut_mouse_right => 'Clic droit';
  @override
  String get shortcut_press_gamepad => 'Appuyez sur un bouton de manette…';
  @override
  String get shortcut_press_key => 'Appuyez sur une combinaison de touches...';
  @override
  String get shortcut_press_mouse_button => 'Appuyez sur un bouton de souris…';
  @override
  String get shortcut_press_wheel =>
      'Maintenez une touche de modification et faites défiler ici';
  @override
  String get shortcut_reset_confirm =>
      'Réinitialiser tous les raccourcis de cette section aux valeurs par défaut ?';
  @override
  String get shortcut_reset_defaults => 'Réinitialiser par défaut';
  @override
  String get shortcut_scope_audiobook => 'Livre audio';
  @override
  String get shortcut_scope_dictionary_popup => 'Pop-up du dictionnaire';
  @override
  String get shortcut_scope_dictionary_popup_note =>
      'Fonctionne quand le curseur est sur un pop-up de dictionnaire';
  @override
  String get shortcut_scope_gamepad => 'Manette';
  @override
  String get shortcut_scope_global => 'Global';
  @override
  String get shortcut_scope_global_external => 'Global (externe à l\'app)';
  @override
  String get shortcut_scope_global_external_desktop_note =>
      'Mouse triggers accept side buttons only (back/forward). Other buttons keep their normal meaning in other apps, so they are rejected here.';
  @override
  String get shortcut_scope_global_external_mobile_note =>
      'Triggered by the system (text selection menu, share, floating ball); the OS does not allow apps to remap this hotkey.';
  @override
  String get shortcut_scope_home => 'Accueil';
  @override
  String get shortcut_scope_manga => 'Manga';
  @override
  String get shortcut_scope_reader => 'Lecteur';
  @override
  String get shortcut_scope_universal => 'Retour / Quitter';
  @override
  String get shortcut_scope_video => 'Vidéo';
  @override
  String get shortcut_settings_title => 'Raccourcis clavier';
  @override
  String get shortcut_stop_capture => 'Arrêter';
  @override
  String get shortcut_tap_to_assign => 'Non assigné · appuyez pour assigner';
  @override
  String get shortcut_view_list => 'Vue en liste';
  @override
  String get shortcut_view_visual => 'Disposition de la manette';
  @override
  String get shortcut_wheel => 'Molette de souris';
  @override
  String get shortcut_wheel_down => 'Molette vers le bas';
  @override
  String get shortcut_wheel_needs_modifier =>
      'La molette seule fait défiler le pop-up — maintenez Alt / Ctrl / Maj en faisant défiler';
  @override
  String get shortcut_wheel_up => 'Molette vers le haut';
  @override
  String get show_bottom_bar_cue => 'Afficher la phrase actuelle';
  @override
  String get show_expression_tags => 'Afficher les balises d\'expression';
  @override
  String get show_floating_lyric => 'Sous-titre flottant';
  @override
  String get show_media_notification => 'Notification multimédia';
  @override
  String get show_options => 'Afficher les options';
  @override
  String get show_top_progress_bar => 'Indicateur de progression';
  @override
  String get skip_action => 'Action de saut';
  @override
  String skip_action_seconds({required Object n}) => '${n} secondes';
  @override
  String get skip_action_sentence => '1 phrase';
  @override
  String get sort_by => 'Trier';
  @override
  String get sort_imported => 'Date d\'importation';
  @override
  String get sort_recent_read => 'Lu récemment';
  @override
  String get sort_recent_watched => 'Regardé récemment';
  @override
  String get sort_title => 'Nom';
  @override
  String get source_description_epub =>
      'Lecture EPUB et recherche dans le dictionnaire';
  @override
  String get source_name_bookshelf => 'Bibliothèque';
  @override
  String get spread_auto => 'Automatique';
  @override
  String get spread_direction => 'Direction d\'étalement';
  @override
  String get spread_direction_ltr => 'De gauche à droite';
  @override
  String get spread_direction_rtl => 'De droite à gauche';
  @override
  String get spread_mode => 'Mode d\'étalement';
  @override
  String get spread_off => 'Désactivé';
  @override
  String get spread_on => 'Activé';
  @override
  String get srt_audio_unresolved =>
      'Fichier audio introuvable — veuillez le rattacher';
  @override
  String get srt_book_reimport => 'Réimporter';
  @override
  String get srt_book_reimport_body_rebuilt =>
      'Texte du livre reconstruit — rouvrez le livre pour le lire';
  @override
  String get srt_book_reimport_no_cues =>
      'Aucune ligne de sous-titre trouvée dans ce fichier';
  @override
  String get srt_book_reimport_subtitle_hint =>
      'Remplacer le sous-titre reconstruit le texte du livre à partir des nouveaux cues.';
  @override
  String get srt_books_section => 'Livres audio à sous-titres';
  @override
  String srt_delete_confirm({required Object title}) =>
      'Supprimer 『${title}』 ? Cette action est irréversible.';
  @override
  String get srt_delete_title => 'Supprimer le livre à sous-titres';
  @override
  String get srt_epub_not_ready => 'Livre non prêt — veuillez le réimporter';
  @override
  String get srt_import => 'Importer un livre';
  @override
  String get srt_import_audio_needs_subtitle =>
      'L\'audio doit être associé à des sous-titres. Pour attacher de l\'audio à un EPUB existant, appuyez longuement sur le livre dans la bibliothèque.';
  @override
  String get srt_import_author_hint => 'Auteur (optionnel)';
  @override
  String get srt_import_error => 'échec de l\'importation';
  @override
  String srt_import_files_selected({required Object n}) =>
      '${n} fichiers sélectionnés';
  @override
  String get srt_import_hint_epub_or_srt =>
      'Choisissez un fichier EPUB ou de sous-titres à importer.';
  @override
  String get srt_import_missing_input =>
      'Veuillez choisir au moins un EPUB ou un fichier de sous-titres';
  @override
  String get srt_import_missing_title => 'Veuillez saisir un titre de livre';
  @override
  String get srt_import_pick_audio_dir => 'Choisir le répertoire audio';
  @override
  String get srt_import_pick_audio_files => 'Choisir les fichiers audio';
  @override
  String get srt_import_pick_cover => 'Choisir une image de couverture';
  @override
  String get srt_import_pick_epub => 'Choisir un EPUB';
  @override
  String get srt_import_pick_subtitle_files =>
      'Choisir les fichiers de sous-titres';
  @override
  String get srt_import_success => 'Livre importé';
  @override
  String get srt_import_title_hint => 'Titre du livre';
  @override
  String get startup_default_dictionary_tab =>
      'Ouvrir la recherche au démarrage';
  @override
  String get startup_default_dictionary_tab_hint =>
      'Démarre l\'écran d\'accueil sur l\'onglet de recherche au lieu de la page par défaut actuelle.';
  @override
  String get stash => 'Panier';
  @override
  String get stash_added_multiple =>
      'Plusieurs éléments ont été ajoutés au panier.';
  @override
  String stash_added_single({required Object term}) =>
      '『${term}』 a été ajouté au panier.';
  @override
  String get stash_clear_description =>
      'Tout le contenu sera effacé. êtes-vous s?r ?';
  @override
  String stash_clear_single({required Object term}) =>
      '『${term}』 a été retiré du panier.';
  @override
  String get stash_clear_title => 'Vider le panier';
  @override
  String get stash_nothing_to_pop => 'Aucun élément à retirer du panier.';
  @override
  String get stash_placeholder => 'Aucun élément dans le panier';
  @override
  String get stat_all_time => 'Depuis toujours';
  @override
  String get stat_analysis => 'Analyse';
  @override
  String get stat_bookshelf_compare => 'Bibliothèque';
  @override
  String get stat_center_tab_overview => 'Vue d\'ensemble';
  @override
  String get stat_center_title => 'Centre de statistiques';
  @override
  String get stat_clear_all => 'Effacer les statistiques';
  @override
  String get stat_clear_all_confirm => 'Effacer';
  @override
  String get stat_clear_all_game_message =>
      'Effacer tous les temps de jeu et compteurs de sessions ? Votre ludothèque et la chronologie d\'activité sont conservées. Cette action est irréversible.';
  @override
  String get stat_clear_all_reading_message =>
      'Effacer tous les temps de lecture, compteurs de caractères et de recherches/créations de cartes ? Vos mots enregistrés, phrases et cartes créées sont conservés. Cette action est irréversible.';
  @override
  String get stat_clear_all_title => 'Effacer toutes les statistiques';
  @override
  String get stat_clear_all_video_message =>
      'Effacer tous les temps de visionnage, compteurs de caractères de sous-titres et de recherches/créations de cartes ? Vos mots enregistrés, phrases et cartes créées sont conservés. Cette action est irréversible.';
  @override
  String get stat_daily_average => 'Moyenne quotidienne';
  @override
  String get stat_delete_message =>
      'Supprimer le temps, le compteur de caractères et les statistiques de recherche/création de cet élément ? Vos mots et phrases enregistrés ne sont pas affectés.';
  @override
  String get stat_delete_title => 'Supprimer les statistiques';
  @override
  String get stat_detail_empty => 'Aucune activité sur cette période';
  @override
  String get stat_detail_ungrouped => 'Non groupé';
  @override
  String get stat_fastest_day => 'Fastest Day';
  @override
  String get stat_favorited => 'Favoris';
  @override
  String get stat_favorited_sentence => 'Phrases favorites';
  @override
  String stat_format_chars({required Object n}) => '${n} caractères';
  @override
  String stat_format_days({required Object n}) => '${n} jours';
  @override
  String stat_format_hours_minutes({required Object h, required Object m}) =>
      '${h} h ${m} min';
  @override
  String stat_format_minutes({required Object n}) => '${n} min';
  @override
  String stat_format_pages({required Object n}) => '${n} pages';
  @override
  String get stat_goal => 'Daily Goal';
  @override
  String get stat_goal_daily => 'Daily Goal';
  @override
  String get stat_goal_presets => 'Préréglages';
  @override
  String stat_goal_progress({required Object read, required Object goal}) =>
      '${read} / ${goal} car.';
  @override
  String get stat_goal_reached => 'Objectif atteint';
  @override
  String stat_goal_recent_average({required Object n}) =>
      '7 derniers jours : ${n} car./jour en moyenne';
  @override
  String get stat_goal_set => 'Set Goal';
  @override
  String get stat_goal_unit_chars => 'car.';
  @override
  String get stat_goal_weekly => 'Weekly Goal';
  @override
  String get stat_hourly_band_epub => 'Romans';
  @override
  String get stat_hourly_band_manga => 'Manga';
  @override
  String get stat_hourly_band_pdf => 'PDF';
  @override
  String get stat_hourly_band_unattributed => 'Historique non séparé';
  @override
  String get stat_hourly_unattributed_note =>
      'Les heures enregistrées avant le suivi par format n\'ont pas de type stocké, elles ne peuvent donc pas être séparées. Elles sont affichées comme total combiné et ne sont assignées à aucun type.';
  @override
  String get stat_last_30_days => '30 derniers jours';
  @override
  String get stat_lookup => 'Recherches';
  @override
  String get stat_metric_chars => 'Caractères';
  @override
  String get stat_metric_speed => 'Vitesse';
  @override
  String get stat_metric_time => 'Temps';
  @override
  String get stat_mined => 'Cartes créées';
  @override
  String get stat_no_data => 'Aucune donnée de lecture';
  @override
  String get stat_range_and_trend => 'Range & Trend';
  @override
  String get stat_recent_active => 'Jours actifs (7j)';
  @override
  String get stat_refresh => 'Actualiser';
  @override
  String get stat_session_delete => 'Supprimer la session';
  @override
  String get stat_session_delete_message =>
      'Supprimer le temps, le nombre de caractères et de pages de cette session ? Vos mots et phrases enregistrés ne sont pas affectés.';
  @override
  String stat_sessions_count({required Object n}) => '${n} sessions';
  @override
  String get stat_sessions_empty => 'Aucune session pour l’instant';
  @override
  String get stat_sessions_recent => 'Sessions récentes';
  @override
  String get stat_sessions_show_all => 'Toutes les sessions';
  @override
  String get stat_slowest_day => 'Slowest Day';
  @override
  String get stat_sort_by_chars => 'Par caractères';
  @override
  String get stat_sort_by_speed => 'Par vitesse';
  @override
  String get stat_sort_by_time => 'Par durée';
  @override
  String get stat_source_breakdown => 'Par source';
  @override
  String get stat_speed_anomaly => 'Anomalie';
  @override
  String get stat_speed_avg => 'Moyenne mobile';
  @override
  String stat_speed_cph({required Object n}) => '${n} car./h';
  @override
  String get stat_speed_summary => 'Speed Summary';
  @override
  String get stat_streak => 'Série';
  @override
  String get stat_this_month => 'Ce mois-ci';
  @override
  String get stat_this_week => 'Cette semaine';
  @override
  String get stat_today => 'Aujourd\'hui';
  @override
  String get stat_today_hourly => 'Aujourd\'hui par heure';
  @override
  String get stat_trend_daily => 'Jour';
  @override
  String get stat_trend_monthly => 'Mois';
  @override
  String get stat_trend_weekly => 'Semaine';
  @override
  String get stat_typical_day => 'Typical Day';
  @override
  String get stat_vs_prev => 'vs 14j préc.';
  @override
  String get stat_weighted_avg_speed => 'Weighted Avg';
  @override
  String get stop => 'Arrêter';
  @override
  String get storage_bundled_hint =>
      'Livrés avec l\'installateur ; les fichiers supprimés reviennent à la prochaine mise à jour, listés pour référence uniquement.';
  @override
  String get storage_bundled_section => 'Composants fournis';
  @override
  String get storage_category_backups => 'Archives de sauvegarde restantes';
  @override
  String get storage_category_books => 'Livres et livres audio';
  @override
  String get storage_category_cache => 'Caches et fichiers temporaires';
  @override
  String get storage_category_covers => 'Couvertures et miniatures';
  @override
  String get storage_category_custom_fonts => 'Polices personnalisées';
  @override
  String get storage_category_database => 'Base de données et données internes';
  @override
  String get storage_category_dictionaries => 'Dictionnaires';
  @override
  String get storage_category_exports => 'Exportations';
  @override
  String get storage_category_ocr_models => 'Modèles OCR manga';
  @override
  String get storage_category_other => 'Autres non classés';
  @override
  String get storage_category_shaders => 'Shaders vidéo';
  @override
  String get storage_category_subtitles => 'Sous-titres';
  @override
  String get storage_category_video_downloads => 'Téléchargements vidéo';
  @override
  String get storage_category_web => 'Archive web et données du navigateur';
  @override
  String get storage_dictionary_delete_incomplete =>
      'Dictionnaire toujours présent après suppression, voir le journal d\'erreurs';
  @override
  String storage_entry_backups_label({required Object n}) =>
      '${n} archive(s) laissée(s) par la dernière exportation';
  @override
  String storage_entry_database_snapshots_label({required Object n}) =>
      'Instantanés de sauvegarde de la base de données (${n} fichiers)';
  @override
  String get storage_entry_delete_backups_confirm_body =>
      'Supprimer ces archives de sauvegarde locales temporaires ? Assurez-vous d\'avoir enregistré ou partagé toute copie encore nécessaire.';
  @override
  String get storage_entry_delete_book_confirm_body =>
      'Cela supprime le livre, sa progression de lecture et les copies audio associées de cet appareil.';
  @override
  String storage_entry_delete_confirm_title({required Object name}) =>
      'Supprimer ${name} ?';
  @override
  String get storage_entry_delete_database_snapshots_confirm_body =>
      'Cela supprime tous les instantanés de sauvegarde de la base de données restants (corrupt-bak / pre-restore / copies de migration héritées). La base de données active et ses fichiers annexes -wal/-shm ne sont pas touchés.';
  @override
  String get storage_entry_delete_dictionary_confirm_body =>
      'Cela supprime le dictionnaire et ses données importées.';
  @override
  String get storage_entry_delete_done => 'Supprimé';
  @override
  String storage_entry_delete_failed({required Object reason}) =>
      'Suppression échouée : ${reason}';
  @override
  String get storage_entry_delete_files_confirm_body =>
      'Suppression immédiate du disque. Rien dans votre bibliothèque n\'y fait référence : ce sont des données en cache, exportées ou re-téléchargeables.';
  @override
  String get storage_entry_external_audio_hint =>
      'L\'audio référence les fichiers d\'origine et n\'occupe aucun espace de l\'application';
  @override
  String storage_entry_more_rest({required Object n, required Object size}) =>
      '${n} éléments de plus, ${size} au total';
  @override
  String storage_modules_anime4k_delete_done({required Object n}) =>
      '${n} fichiers de shaders supprimés';
  @override
  String get storage_modules_anime4k_hint =>
      'Peuvent être retéléchargés à tout moment dans les paramètres vidéo';
  @override
  String get storage_modules_anime4k_title => 'Shaders Anime4K';
  @override
  String get storage_overview_refresh => 'Rescanner';
  @override
  String get storage_overview_scanning => 'Scan…';
  @override
  String get storage_overview_section => 'Utilisation du disque';
  @override
  String get storage_overview_total => 'Total';
  @override
  String get storage_permissions =>
      'Veuillez accorder les permissions suivantes pour l\'exportation vers AnkiDroid.';
  @override
  String get storage_shaders_delete_anime4k => 'Supprimer les shaders Anime4K';
  @override
  String get stream => 'Flux';
  @override
  String get subscription_edit_rule_hint =>
      'Les règles d\'identité et de version ne peuvent pas être modifiées ici. Réabonnez-vous pour changer de version — l\'historique est conservé.';
  @override
  String get subscription_edit_title => 'Modifier l\'abonnement';
  @override
  String get subscription_item_status_discovered => 'En attente';
  @override
  String get subscription_item_status_failed => 'Échoué';
  @override
  String get subscription_item_status_processed => 'Importé';
  @override
  String get subscription_item_status_queued => 'En file d\'attente';
  @override
  String get subscription_item_status_skipped => 'Ignoré';
  @override
  String get subscription_items_empty => 'Aucune sortie suivie';
  @override
  String subscription_last_matched({required Object time}) =>
      'Dernière correspondance : ${time}';
  @override
  String get subscription_legacy_badge => 'Hérité';
  @override
  String get subscription_legacy_hint =>
      'Importé de l\'ancien système ; les vérifications automatiques ne s\'appliquent pas.';
  @override
  String get subscription_mode_one_shot => 'Unique';
  @override
  String get subscription_mode_ongoing => 'En cours';
  @override
  String subscription_next_check({required Object time}) =>
      'Prochaine vérification : ${time}';
  @override
  String get subscription_no_match => 'Aucun abonnement correspondant';
  @override
  String get subscription_search_hint => 'Rechercher des abonnements';
  @override
  String get subscription_show_items => 'Historique des épisodes';
  @override
  String get subscription_sort_created => 'Date d\'ajout';
  @override
  String get subscription_sort_last_checked => 'Dernière vérification';
  @override
  String get subscription_sort_last_matched => 'Dernière correspondance';
  @override
  String get subtitle_version_ai_translated => 'Traduit par IA';
  @override
  String get subtitle_version_content_language => 'Contenu';
  @override
  String subtitle_version_episode_count({required Object n}) => '${n} épisodes';
  @override
  String get subtitle_version_show_files => 'Afficher les fichiers';
  @override
  String subtitle_version_unnumbered_count({required Object n}) =>
      '${n} sans numéro';
  @override
  String get subtitle_version_view_files => 'Liste des fichiers';
  @override
  String get swipe_page_turn_sensitivity =>
      'Sensibilité du changement de page par glissement';
  @override
  String get sync_account => 'Compte';
  @override
  String get sync_asset_dictionary => 'Dictionaries';
  @override
  String get sync_asset_dictionary_download => 'Télécharger les dictionnaires';
  @override
  String get sync_asset_dictionary_upload => 'Envoyer les dictionnaires';
  @override
  String get sync_asset_download_action => 'Télécharger';
  @override
  String get sync_asset_download_hint =>
      'Récupère ce que le distant possède et que cet appareil n\'a pas — y compris les entrées que vous avez supprimées localement.';
  @override
  String get sync_asset_legacy_notice_body =>
      'Cet appareil avait la synchronisation automatique activée pour les dictionnaires et les bases audio locales. Cet interrupteur a été supprimé — utilisez les actions Envoyer / Télécharger ci-dessous quand vous voulez les transférer. Rien n\'a été supprimé, mais les nouveaux dictionnaires ne sont plus sauvegardés automatiquement.';
  @override
  String get sync_asset_legacy_notice_dismiss => 'Compris';
  @override
  String get sync_asset_legacy_notice_title =>
      'La synchronisation des dictionnaires et de l\'audio est maintenant manuelle';
  @override
  String get sync_asset_local_audio => 'Local audio databases';
  @override
  String get sync_asset_local_audio_download =>
      'Télécharger les bases audio locales';
  @override
  String get sync_asset_local_audio_upload => 'Envoyer les bases audio locales';
  @override
  String get sync_asset_transfer_hint =>
      'Upload what only this device has, or download what only the remote has';
  @override
  String get sync_asset_transfer_menu => 'Transfer';
  @override
  String get sync_asset_upload_action => 'Envoyer';
  @override
  String get sync_asset_upload_hint =>
      'Envoie ce que cet appareil possède et que le distant n\'a pas. Les paquets peuvent être volumineux.';
  @override
  String get sync_audiobook => 'Synchroniser la position du livre audio';
  @override
  String get sync_audiobook_files =>
      'Synchroniser les fichiers de livres audio';
  @override
  String get sync_audiobook_files_warning =>
      'L\'audio et les sous-titres peuvent être volumineux.';
  @override
  String sync_auth_error({required Object message}) =>
      'Échec de l\'authentification : ${message}';
  @override
  String get sync_auto_sync => 'Sync auto';
  @override
  String get sync_backend => 'Backend de stockage';
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
  String get sync_checking_account => 'Vérification du compte…';
  @override
  String get sync_client_connected => 'Connecté';
  @override
  String get sync_client_token => 'Jeton d\'accès du pair';
  @override
  String get sync_client_token_manual => 'Saisir le jeton manuellement';
  @override
  String get sync_compare => 'Comparer les données';
  @override
  String get sync_compare_all_books => 'Tous les livres';
  @override
  String get sync_compare_all_local => 'Tout → Local';
  @override
  String get sync_compare_all_remote => 'Tout → Distant';
  @override
  String get sync_compare_all_skip => 'Tout → Ignorer';
  @override
  String sync_compare_applied({required Object count}) =>
      '${count} modifications appliquées';
  @override
  String sync_compare_apply({required Object count}) =>
      'Synchroniser maintenant (${count})';
  @override
  String get sync_compare_close => 'Fermer';
  @override
  String get sync_compare_conflicts => 'Conflits';
  @override
  String get sync_compare_days => 'jours';
  @override
  String get sync_compare_delete_audiobook =>
      'Supprimer le livre audio sur le distant';
  @override
  String get sync_compare_delete_book => 'Supprimer le livre sur le distant';
  @override
  String sync_compare_delete_confirm({required Object name}) =>
      'Supprimer « ${name} » du distant ? Les données locales sont conservées. Action irréversible.';
  @override
  String get sync_compare_delete_dict =>
      'Supprimer le dictionnaire sur le distant';
  @override
  String get sync_compare_deleted => 'Supprimé du distant';
  @override
  String get sync_compare_dictionaries => 'Dictionnaires';
  @override
  String get sync_compare_download => 'Télécharger';
  @override
  String get sync_compare_empty => 'Aucun livre trouvé';
  @override
  String get sync_compare_local => 'Local';
  @override
  String get sync_compare_no_content =>
      'Données cloud uniquement — aucun livre à télécharger';
  @override
  String get sync_compare_no_data => 'Aucune donnée';
  @override
  String get sync_compare_only_conflicts => 'Only conflicts';
  @override
  String get sync_compare_remote => 'Distant';
  @override
  String get sync_compare_select_all => 'Tout sélectionner';
  @override
  String get sync_compare_skip => 'Ignorer';
  @override
  String get sync_compare_title => 'Local vs distant';
  @override
  String get sync_compare_unavailable => 'Set up sync first';
  @override
  String get sync_compare_use_local => 'Local';
  @override
  String get sync_compare_use_remote => 'Distant';
  @override
  String get sync_connection_failed => 'Échec de la connexion';
  @override
  String get sync_connection_success => 'Connexion réussie';
  @override
  String get sync_content => 'Synchroniser les fichiers de livres';
  @override
  String get sync_content_warning =>
      'Les fichiers volumineux utiliseront de l\'espace de stockage et des données';
  @override
  String get sync_desktop_oauth_browser_open_failed =>
      'Impossible d\'ouvrir le navigateur. Copiez le lien et ouvrez-le vous-même dans un navigateur.';
  @override
  String get sync_desktop_oauth_browser_reopen => 'Rouvrir le navigateur';
  @override
  String get sync_desktop_oauth_link_copy => 'Copier le lien de connexion';
  @override
  String get sync_desktop_oauth_link_copy_failed =>
      'Impossible de copier le lien. Sélectionnez le texte du lien et copiez-le manuellement.';
  @override
  String get sync_desktop_oauth_waiting_body =>
      'La page de connexion a été ouverte dans votre navigateur par défaut. Si rien ne s\'est ouvert ou si la page affiche une erreur, copiez le lien et ouvrez-le dans un autre navigateur ou une fenêtre privée.';
  @override
  String get sync_desktop_oauth_waiting_title =>
      'En attente de la connexion dans le navigateur';
  @override
  String get sync_err_auth_expired =>
      'Connexion expirée — veuillez vous reconnecter.';
  @override
  String get sync_err_browser_timeout =>
      'Le navigateur n\'a jamais renvoyé l\'autorisation. Réessayez et assurez-vous que votre proxy laisse passer 127.0.0.1.';
  @override
  String get sync_err_forbidden =>
      'Le serveur a refusé cette requête. Votre connexion est valide — vérifiez les paramètres du serveur.';
  @override
  String sync_err_forbidden_detail({required Object reason}) =>
      'Le serveur a refusé cette requête : ${reason} (votre connexion est valide)';
  @override
  String get sync_err_invalid_client =>
      'Les identifiants client sont invalides pour cette version — veuillez mettre l\'application à jour.';
  @override
  String get sync_err_network =>
      'Impossible de joindre le serveur — vérifiez votre réseau ou vos réglages de proxy.';
  @override
  String get sync_err_not_configured =>
      'Les identifiants de synchronisation Google ne sont pas configurés dans cette version.';
  @override
  String get sync_err_peer_unreachable =>
      'Impossible de joindre l\'appareil apparié — il est peut-être hors ligne ou Fushi n\'y est pas lancé.';
  @override
  String get sync_err_quota => 'Le stockage cloud est plein (quota atteint).';
  @override
  String get sync_err_scope_upgrade =>
      'Les permissions de synchronisation ont changé — veuillez vous reconnecter à Google pour continuer la synchronisation.';
  @override
  String get sync_err_sign_in_cancelled => 'Connexion annulée.';
  @override
  String get sync_err_timeout =>
      'Délai de connexion dépassé — le serveur n\'a pas répondu à temps.';
  @override
  String sync_error({required Object message}) =>
      'Erreur de synchronisation : ${message}';
  @override
  String get sync_exit_warning =>
      'La synchronisation est toujours en cours. Quitter maintenant peut entraîner une perte de données.';
  @override
  String get sync_exit_warning_title => 'Sync en cours';
  @override
  String get sync_host => 'Hôte';
  @override
  String get sync_interconnect_service_config_toggle =>
      'Synchroniser la configuration de service depuis l\'hôte';
  @override
  String get sync_interconnect_service_config_toggle_desc =>
      'Recevoir les paramètres de services externes et les clés API (Jimaku, TMDB, Torznab, OpenSubtitles, suivi) de l\'hôte apparié via le canal chiffré Interconnect. Nécessite TLS.';
  @override
  String get sync_lan_discovery => 'Appareils du réseau local';
  @override
  String get sync_lan_no_devices => 'Aucun appareil trouvé';
  @override
  String get sync_lan_scan_failed =>
      'Échec de l\'analyse — vérifiez les autorisations réseau ou le pare-feu.';
  @override
  String get sync_last_auto_disabled =>
      'Dernière synchro : ignorée — synchro auto désactivée';
  @override
  String sync_last_completed({required Object count}) =>
      'Dernière synchro : terminée (${count} canaux)';
  @override
  String get sync_last_cooled_down =>
      'Dernière synchro : ignorée — synchronisé récemment';
  @override
  String get sync_last_failed => 'Dernière synchro : échouée';
  @override
  String get sync_last_no_channels =>
      'Dernière synchro : rien — aucun canal de synchronisation connecté';
  @override
  String get sync_last_nothing => 'Dernière synchro : rien à synchroniser';
  @override
  String get sync_not_signed_in => 'Non connecté';
  @override
  String get sync_now => 'Synchroniser maintenant';
  @override
  String sync_now_audio_in({required Object count}) => '↓${count} livres audio';
  @override
  String sync_now_audio_out({required Object count}) =>
      '↑${count} livres audio';
  @override
  String sync_now_books_in({required Object count}) => '↓${count} livres';
  @override
  String get sync_now_busy => 'Une synchronisation est déjà en cours';
  @override
  String sync_now_dicts_in({required Object count}) =>
      '↓${count} dictionnaires';
  @override
  String sync_now_dicts_out({required Object count}) =>
      '↑${count} dictionnaires';
  @override
  String sync_now_done({required Object detail}) => 'Synchronisé · ${detail}';
  @override
  String sync_now_failed_suffix({required Object count}) =>
      ' · ${count} échec(s)';
  @override
  String get sync_now_hint =>
      'Lancer une synchronisation bidirectionnelle complète avec le cloud maintenant';
  @override
  String sync_now_local_audio_in({required Object count}) =>
      '↓${count} sources audio';
  @override
  String sync_now_local_audio_out({required Object count}) =>
      '↑${count} sources audio';
  @override
  String get sync_now_no_changes => 'aucune modification';
  @override
  String get sync_pair_allow => 'Autoriser';
  @override
  String sync_pair_confirm_identity_body({required Object device}) =>
      'Vous vous appairez avec ${device}. Confirmez qu\'il s\'agit bien de l\'appareil attendu avant de continuer.';
  @override
  String get sync_pair_confirm_identity_title => 'Confirmer l\'appareil';
  @override
  String get sync_pair_continue => 'Continuer';
  @override
  String get sync_pair_denied => 'L\'autre appareil a refusé l\'appairage';
  @override
  String get sync_pair_deny => 'Refuser';
  @override
  String get sync_pair_enter_pin_body =>
      'Entrez le code PIN à 6 chiffres affiché sur l\'autre appareil.';
  @override
  String get sync_pair_enter_pin_title => 'Entrer le code PIN';
  @override
  String get sync_pair_expired =>
      'Délai d\'appairage expiré. Recommencez l\'appairage depuis cet appareil.';
  @override
  String get sync_pair_failed => 'Échec de l\'appairage';
  @override
  String get sync_pair_fingerprint_changed =>
      'Certificat modifié — appairage annulé par sécurité (interception possible).';
  @override
  String get sync_pair_fingerprint_changed_body =>
      'Cette adresse était épinglée à un certificat différent auparavant. Continuez uniquement si vous savez que le pair a réinstallé ou réinitialisé — sinon quelqu\'un pourrait intercepter la connexion.';
  @override
  String get sync_pair_fingerprint_changed_title => 'Certificat modifié';
  @override
  String get sync_pair_fingerprint_label => 'Empreinte du certificat';
  @override
  String get sync_pair_fingerprint_new_label => 'Vu maintenant';
  @override
  String get sync_pair_fingerprint_retrust =>
      'Effacer et faire confiance à nouveau';
  @override
  String get sync_pair_fingerprint_stored_label => 'Épinglé précédemment';
  @override
  String get sync_pair_invalid_url => 'Format d\'adresse invalide';
  @override
  String get sync_pair_not_fushi =>
      'Aucun appareil Fushi trouvé à cette adresse. L\'adresse a été enregistrée.';
  @override
  String get sync_pair_not_fushi_discovered =>
      'Aucun appareil Fushi trouvé à cette adresse.';
  @override
  String get sync_pair_pairing => 'Appairage…';
  @override
  String get sync_pair_peer_not_https =>
      'Le pair n\'utilise pas HTTPS sur ce port. Utilisez une adresse http://.';
  @override
  String get sync_pair_peer_requires_https =>
      'Cet appareil n\'accepte que HTTPS. Utilisez une adresse https://.';
  @override
  String get sync_pair_pin_label => 'Entrez ce code PIN sur l\'autre appareil';
  @override
  String get sync_pair_pin_waiting =>
      'En attente que l\'autre appareil entre ce code PIN…';
  @override
  String get sync_pair_pin_wrong => 'Code PIN incorrect — réessayez';
  @override
  String get sync_pair_rate_limited =>
      'Trop de tentatives. Attendez quelques minutes et réessayez.';
  @override
  String get sync_pair_repair => 'Réappairer';
  @override
  String get sync_pair_request_body =>
      'Un appareil demande à s\'appairer. L\'autoriser à se synchroniser avec cet appareil ?';
  @override
  String get sync_pair_request_title => 'Demande d\'appairage';
  @override
  String get sync_pair_success => 'Appairé — jeton renseigné';
  @override
  String get sync_pair_timeout => 'Le pair n\'a pas répondu à temps.';
  @override
  String get sync_pair_tls_failed =>
      'Vérification du certificat échouée. Le certificat du pair ne correspond pas à celui épinglé.';
  @override
  String get sync_pair_unavailable =>
      'L\'autre appareil n\'est pas prêt ou utilise une version plus ancienne. Mettez-le à jour et activez la sync, puis réessayez.';
  @override
  String get sync_pair_unknown_device => 'Appareil inconnu';
  @override
  String get sync_pair_upgrade_required =>
      'L\'autre appareil exécute une version plus ancienne qui ne peut pas s\'appairer en toute sécurité depuis ce réseau. Mettez-le à jour, puis réappairez.';
  @override
  String get sync_paired_peer_remove => 'Retirer';
  @override
  String get sync_paired_peer_removed => 'Appareil apparié retiré';
  @override
  String get sync_paired_peer_unknown => 'Appareil inconnu';
  @override
  String get sync_paired_peers_empty => 'Aucun appareil apparié';
  @override
  String get sync_paired_peers_title => 'Appareils appariés';
  @override
  String get sync_password => 'Mot de passe';
  @override
  String sync_peer_book_delete_confirm({required Object name}) =>
      'Supprimer « ${name} » de l\'appareil pair ? Ses fichiers et la progression de lecture qui s\'y trouvent seront définitivement supprimés, et cet appareil n\'en a aucune copie. Cette action est irréversible.';
  @override
  String sync_peer_video_delete_confirm({required Object name}) =>
      'Retirer « ${name} » de la bibliothèque de l\'appareil pair ? Le fichier vidéo importé par l\'appareil pair lui-même est conservé. Cette action est irréversible.';
  @override
  String get sync_port => 'Port';
  @override
  String get sync_private_key => 'Clé privée';
  @override
  String get sync_progress_asset_transfer => 'Préparation du transfert';
  @override
  String get sync_progress_audiobooks => 'Synchronisation des livres audio';
  @override
  String get sync_progress_book => 'Synchronisation du livre';
  @override
  String sync_progress_book_titled({required Object title}) =>
      'Synchronisation de ${title}';
  @override
  String get sync_progress_books => 'Importation des livres';
  @override
  String get sync_progress_collections => 'Synchronisation des collections';
  @override
  String get sync_progress_dictionaries => 'Synchronisation des dictionnaires';
  @override
  String get sync_progress_local_audio => 'Synchronisation de l\'audio local';
  @override
  String get sync_progress_preparing => 'Préparation de la synchronisation';
  @override
  String get sync_progress_reading => 'Synchronisation des données de lecture';
  @override
  String get sync_progress_videos => 'Synchronisation des vidéos';
  @override
  String get sync_role_locked_by_client =>
      'Déjà connecté à un autre appareil. Supprimez la connexion avant d\'héberger un serveur.';
  @override
  String get sync_role_locked_by_server =>
      'Cet appareil héberge un serveur. Désactivez le serveur avant de vous connecter à d\'autres appareils.';
  @override
  String get sync_section_actions => 'Actions de sync';
  @override
  String get sync_section_assets => 'Dictionaries & local audio transfer';
  @override
  String get sync_section_backup => 'Sauvegarde locale';
  @override
  String get sync_section_content => 'Quoi synchroniser';
  @override
  String get sync_section_host_server => 'Cet appareil comme serveur de sync';
  @override
  String get sync_section_host_server_footer =>
      'Permet aux autres appareils de se synchroniser depuis cet appareil. Indépendant du backend de sync ci-dessus.';
  @override
  String get sync_section_method => 'Méthode de sync';
  @override
  String get sync_section_when => 'When to sync';
  @override
  String get sync_server_copy_token => 'Copier le jeton';
  @override
  String get sync_server_enable => 'Activer le serveur de sync';
  @override
  String get sync_server_mode_active =>
      'Cet appareil est un serveur de synchronisation';
  @override
  String get sync_server_mode_clients_drive =>
      'Ce sont les clients connectés qui lancent la synchronisation — aucune synchro manuelle ici.';
  @override
  String get sync_server_port => 'Port du serveur';
  @override
  String sync_server_port_in_use({required Object port}) =>
      'Le port ${port} est déjà utilisé — choisissez un autre port.';
  @override
  String get sync_server_regenerate_token => 'Régénérer le jeton';
  @override
  String get sync_server_running => 'Serveur en marche';
  @override
  String get sync_server_settings => 'Server settings';
  @override
  String get sync_server_settings_hint =>
      'Credentials and connection test for the selected sync method';
  @override
  String get sync_server_stopped => 'Serveur arrêté';
  @override
  String get sync_server_tls_enable =>
      'Chiffrement de l\'interconnexion (HTTPS/TLS)';
  @override
  String get sync_server_tls_repair_hint =>
      'Changer ceci nécessite de réappairer les appareils';
  @override
  String get sync_server_token => 'Jeton d\'accès';
  @override
  String get sync_show_remote_entries => 'Afficher les entrées distantes';
  @override
  String get sync_show_remote_entries_warning =>
      'Afficher les livres et vidéos existant sur les appareils appariés ou le cloud comme fiches à télécharger ou diffuser.';
  @override
  String get sync_sign_in => 'Se connecter';
  @override
  String get sync_sign_out => 'Se déconnecter';
  @override
  String get sync_signed_in => 'Connecté';
  @override
  String get sync_statistics => 'Synchroniser les statistiques';
  @override
  String get sync_summary =>
      'Cloud, Fushi Interconnect en réseau local et sauvegarde locale';
  @override
  String get sync_test_connection => 'Tester la connexion';
  @override
  String get sync_use_tls => 'Utiliser TLS';
  @override
  String get sync_username => 'Nom d\'utilisateur';
  @override
  String get sync_video_files => 'Envoyer les fichiers vidéo';
  @override
  String get sync_video_files_warning =>
      'Les fichiers vidéo peuvent être très volumineux.';
  @override
  String get sync_webdav_missing_fields => 'Champs manquants';
  @override
  String sync_webdav_test_failed({required Object message}) =>
      'Échec de la connexion : ${message}';
  @override
  String get sync_webdav_url => 'URL du serveur';
  @override
  String get tag_add_failed =>
      'Impossible d\'ajouter le tag. Veuillez réessayer.';
  @override
  String tag_added_to_book({required Object name}) =>
      'Tag "${name}" ajouté au livre.';
  @override
  String tag_added_to_collection({required Object name}) =>
      'Tag ${name} ajouté à la collection.';
  @override
  String tag_added_to_video({required Object name}) =>
      'Étiquette « ${name} » ajoutée à la vidéo.';
  @override
  String tag_already_on_book({required Object name}) =>
      'Le tag "${name}" est déjà sur ce livre.';
  @override
  String tag_already_on_collection({required Object name}) =>
      'Le tag ${name} est déjà sur cette collection.';
  @override
  String tag_book_count({required Object count}) => '${count} livre(s)';
  @override
  String get tag_clear_filter => 'Effacer le filtre';
  @override
  String get tag_color => 'Couleur';
  @override
  String tag_delete_confirm({required Object name}) =>
      'Supprimer le tag "${name}" ?';
  @override
  String get tag_filter_title => 'Filtrer par tag';
  @override
  String get tag_label => 'Étiquettes';
  @override
  String get tag_manage => 'Gérer les tags';
  @override
  String get tag_manage_title => 'Gérer les tags';
  @override
  String get tag_name_duplicate => 'Un tag avec ce nom existe déjà.';
  @override
  String get tag_name_empty => 'Le nom du tag ne peut pas être vide.';
  @override
  String get tag_name_hint => 'Nom du tag';
  @override
  String get tag_new => 'Nouveau tag';
  @override
  String get tag_no_books_for_filter =>
      'Aucun livre ne correspond aux tags sélectionnés.';
  @override
  String get tag_no_tags_hint =>
      'Aucun tag pour l\'instant. Créez-en un pour commencer.';
  @override
  String get tag_reorder_failed =>
      'Impossible d\'enregistrer le nouvel ordre des tags. Veuillez réessayer.';
  @override
  String get tag_seed_stars => 'Ajouter des tags d\'étoiles';
  @override
  String get tag_seed_stars_added => 'Tags d\'étoiles ajoutés';
  @override
  String get tag_seed_stars_exists => 'Les tags d\'étoiles existent déjà';
  @override
  String get tap_empty_hide_chrome => 'Barre de contrôle flottante';
  @override
  String get text_segmentation => 'Segmentation du texte';
  @override
  String get texthooker => 'Texthooker';
  @override
  String get texthooker_enabled => 'Texthooker (réception de texte)';
  @override
  String get texthooker_enabled_hint =>
      'Se connecter à Textractor/mpv/agent et rechercher le texte reçu';
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
  String get theme_black => 'Noir pur';
  @override
  String get theme_code_copied => 'Code du thème copié dans le presse-papiers';
  @override
  String get theme_dark => 'Sombre profond';
  @override
  String get theme_ecru => 'Écru';
  @override
  String get theme_eyecare => 'Eye Care';
  @override
  String get theme_gray => 'Gris foncé';
  @override
  String get theme_light => 'Blanc';
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
  String get theme_water => 'Bleu eau';
  @override
  String toc_section({required Object n}) => 'Table des matières (${n})';
  @override
  String get top_progress_pos_center => 'Centre';
  @override
  String get top_progress_pos_left => 'Haut-gauche';
  @override
  String get top_progress_pos_right => 'Haut-droite';
  @override
  String get top_progress_position => 'Position de la progression';
  @override
  String get torrent_upload_intro_body =>
      'L\'envoi (seeding) est désactivé par défaut. Activez-le pour partager le contenu téléchargé vers l\'essaim — cela utilise votre bande passante montante. Vous pouvez changer cela à tout moment dans les Paramètres.';
  @override
  String get torrent_upload_intro_confirm => 'Enregistrer';
  @override
  String get torrent_upload_intro_enable => 'Activer l\'envoi / seeding';
  @override
  String get torrent_upload_intro_keep_off => 'Garder désactivé';
  @override
  String get torrent_upload_intro_title => 'Envoi / seeding';
  @override
  String get undo => 'Annuler';
  @override
  String get unit_milliseconds => 'ms';
  @override
  String get unit_pixels => 'px';
  @override
  String untitled_book({required Object id}) => 'Livre ${id}';
  @override
  String get untitled_chapter => '(Sans titre)';
  @override
  String get update_already_latest => 'Vous êtes sur la dernière version';
  @override
  String get update_app_store_open => 'Ouvrir l\'App Store';
  @override
  String get update_auto_install =>
      'Installer automatiquement les mises à jour';
  @override
  String get update_available => 'Mise à jour disponible';
  @override
  String update_cached_newer({required Object version}) =>
      'Mise à jour ${version} disponible (vérification…)';
  @override
  String update_cached_up_to_date({required Object version}) =>
      'Dernière version connue ${version} (vérification…)';
  @override
  String get update_cancel => 'Annuler';
  @override
  String get update_cancelled => 'Téléchargement annulé';
  @override
  String get update_cancelling => 'Annulation…';
  @override
  String get update_channel_beta => 'Bêta';
  @override
  String get update_channel_debug => 'Débogage';
  @override
  String get update_channel_stable => 'Stable';
  @override
  String get update_check_failed => 'échec de la vérification des mises à jour';
  @override
  String get update_checking_now => 'Vérification des mises à jour…';
  @override
  String get update_connecting => 'Connexion…';
  @override
  String get update_debug_channel => 'Canal de mise à jour de débogage';
  @override
  String get update_debug_channel_warning =>
      'Les builds du canal de débogage peuvent être instables. Utilisez-les à vos risques et périls.';
  @override
  String get update_download => 'Télécharger';
  @override
  String get update_download_failed => 'échec du téléchargement';
  @override
  String get update_download_restarted_from_zero => 'redémarré de zéro';
  @override
  String update_download_resume_status({required Object status}) =>
      'Reprise : ${status}';
  @override
  String get update_download_resumed => 'repris';
  @override
  String update_download_size({
    required Object received,
    required Object total,
  }) => 'Téléchargé : ${received} / ${total}';
  @override
  String update_download_source({required Object source}) =>
      'Source : ${source}';
  @override
  String get update_download_source_auto => 'Automatique (recommandé)';
  @override
  String get update_download_source_cloudflare => 'Miroir Cloudflare';
  @override
  String get update_download_source_github => 'GitHub direct';
  @override
  String get update_download_source_preference =>
      'Source de téléchargement préférée';
  @override
  String get update_download_source_preference_hint =>
      'La source sélectionnée est essayée en premier ; les sources indisponibles basculent toujours automatiquement.';
  @override
  String update_download_source_proxy({required Object host}) =>
      'Proxy : ${host}';
  @override
  String update_download_source_unavailable({required Object source}) =>
      '${source} n\'est pas disponible pour ce fichier ; retour à l\'ordre automatique';
  @override
  String update_download_speed({required Object speed}) => 'Vitesse : ${speed}';
  @override
  String get update_downloading => 'Téléchargement de la mise à jour…';
  @override
  String get update_hide => 'Masquer';
  @override
  String update_install_current_executable({required Object path}) =>
      'Exécutable en cours : ${path}';
  @override
  String update_install_deletefile_failure({
    required Object path,
    required Object code,
  }) => 'L\'installateur n\'a pas pu remplacer ${path} (code ${code})';
  @override
  String update_install_detected_location({
    required Object source,
    required Object path,
  }) => 'Emplacement d\'installation détecté (${source}) : ${path}';
  @override
  String update_install_failure_summary({required Object summary}) =>
      'Raison : ${summary}';
  @override
  String update_install_gal_hook_holder({
    required Object pid,
    required Object path,
  }) =>
      'Composant de capture de galgame en cours d\'utilisation : PID ${pid} - ${path} (c\'est le jeu auquel vous jouez, ou son hôte de capture). Fermez le jeu, puis mettez à jour à nouveau.';
  @override
  String get update_install_incomplete_message =>
      'L\'installateur a démarré, mais Fushi est toujours sur la version précédente. Consultez le journal de l\'installateur ci-dessous.';
  @override
  String get update_install_incomplete_title => 'Mise à jour non terminée';
  @override
  String update_install_installer_pid({required Object pid}) =>
      'PID de l\'installateur : ${pid}';
  @override
  String update_install_launch_failed_message({required Object version}) =>
      'Fushi n\'a pas pu démarrer l\'installateur de la version ${version}. Consultez le chemin du journal ci-dessous.';
  @override
  String get update_install_launch_failed_title =>
      'L\'installateur de mise à jour n\'a pas démarré';
  @override
  String update_install_launcher_pid({required Object pid}) =>
      'PID du lanceur de mise à jour : ${pid}';
  @override
  String update_install_libmpv_holder({
    required Object pid,
    required Object path,
  }) => 'Processus détenant libmpv : PID ${pid} - ${path}';
  @override
  String get update_install_log_not_observed =>
      'Le journal de l\'installateur n\'a pas été créé lors de la vérification après lancement.';
  @override
  String get update_install_log_observed =>
      'Le journal de l\'installateur a été créé lors de la vérification après lancement.';
  @override
  String update_install_log_path({required Object path}) =>
      'Journal de l\'installateur : ${path}';
  @override
  String get update_install_manual_close_retry =>
      'Fermez Fushi via le PID/chemin indiqué, puis relancez la mise à jour ou exécutez à nouveau l\'installateur.';
  @override
  String get update_install_parent_exit_not_observed =>
      'Le lanceur de mise à jour n\'a pas constaté la fermeture de Fushi avant le lancement de l\'installateur.';
  @override
  String get update_install_parent_exit_observed =>
      'Fushi s\'est fermé avant le lancement de l\'installateur.';
  @override
  String update_install_path_mismatch({required Object warning}) =>
      'Incohérence du dossier d\'installation : ${warning}';
  @override
  String get update_install_permission_cancel => 'Annuler';
  @override
  String get update_install_permission_message =>
      'Veuillez autoriser Fushi à installer des applications dans les paramètres système, puis réessayez.';
  @override
  String get update_install_permission_retry => 'Réessayer l\'installation';
  @override
  String get update_install_permission_title =>
      'Autoriser l\'installation des mises à jour';
  @override
  String get update_install_restart_windows_hint =>
      'Si les processus indiqués sont fermés mais que libmpv-2.dll reste verrouillé, redémarrez Windows puis réinstallez.';
  @override
  String update_install_running_process({
    required Object pid,
    required Object path,
  }) => 'Processus Fushi en cours : PID ${pid} - ${path}';
  @override
  String update_install_success_message({required Object version}) =>
      'Fushi a été mis à jour vers la version ${version}.';
  @override
  String get update_install_success_title => 'Mise à jour installée';
  @override
  String update_install_target_dir({required Object path}) =>
      'Cible d\'installation : ${path}';
  @override
  String get update_installing => 'Installation…';
  @override
  String get update_mac_install_incomplete_message =>
      'La mise à jour n\'a pas pu être appliquée, Fushi est toujours sur la version précédente. Vous pouvez réessayer la mise à jour ou télécharger la dernière version manuellement.';
  @override
  String update_message({required Object version}) =>
      'La version ${version} est disponible.';
  @override
  String update_network_failure({
    required Object host,
    required Object reason,
  }) => 'Impossible de joindre ${host} : ${reason}';
  @override
  String get update_never_remind => 'Ne plus rappeler';
  @override
  String get update_release_page_open => 'Page des versions';
  @override
  String get update_skip => 'Ignorer';
  @override
  String get update_testflight_open => 'Ouvrir TestFlight';
  @override
  String get url => 'URL';
  @override
  String get video_air_season_autumn => 'Automne';
  @override
  String get video_air_season_spring => 'Printemps';
  @override
  String get video_air_season_summer => 'Été';
  @override
  String get video_air_season_winter => 'Hiver';
  @override
  String get video_ajatt_enabled_hint =>
      'Désactivé : l\'archive AJATT est ignorée lors de la recherche de sous-titres.';
  @override
  String get video_ajatt_settings_hint =>
      'Archive gratuite de sous-titres japonais (miroir kitsunekko). Aucun compte requis ; les fichiers sont téléchargés depuis GitHub.';
  @override
  String get video_all_videos_grid_view => 'Vue en grille';
  @override
  String get video_all_videos_list_view => 'Vue en liste';
  @override
  String get video_anidb_hash_enabled =>
      'Identifier les fichiers avec AniDB ED2K';
  @override
  String get video_anidb_hash_hint =>
      'Nécessite un compte AniDB et un client enregistré. Seuls la taille et le hachage du fichier sont envoyés. La connexion à AniDB par UDP n’est pas chiffrée ; activez cette option uniquement sur un réseau de confiance.';
  @override
  String get video_anidb_password => 'Mot de passe AniDB';
  @override
  String get video_anidb_username => 'Nom d’utilisateur AniDB';
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
  String get video_audio_track => 'Piste audio';
  @override
  String get video_audio_track_empty => 'Aucune piste audio commutable';
  @override
  String video_audio_track_switched({required Object label}) =>
      'Piste audio : ${label}';
  @override
  String get video_auto_play_next_cancel => 'Annuler';
  @override
  String video_auto_play_next_countdown({required Object seconds}) =>
      'Épisode suivant dans ${seconds} s';
  @override
  String get video_black_flash_notice_action => 'Voir les suggestions';
  @override
  String get video_black_flash_notice_dont_show_again => 'Ne plus afficher';
  @override
  String get video_bottom_next_cue =>
      'Sous-titre suivant (avancer un peu s\'il n\'y en a pas)';
  @override
  String get video_bottom_play_pause => 'Lecture / Pause';
  @override
  String get video_bottom_prev_cue =>
      'Sous-titre précédent (reculer un peu s\'il n\'y en a pas)';
  @override
  String get video_bottom_seek_back => 'Reculer de 10 s';
  @override
  String get video_bottom_seek_back_label => '−10s';
  @override
  String get video_bottom_seek_forward => 'Avancer de 10 s';
  @override
  String get video_bottom_seek_forward_label => '+10s';
  @override
  String get video_builtin_apibay_hint =>
      'Films et séries TV. Index public, pas de compte nécessaire.';
  @override
  String get video_builtin_knaben_hint =>
      'Films et séries TV. Agrège plusieurs indexeurs publics.';
  @override
  String get video_builtin_nyaa_hint =>
      'Anime uniquement. Les films et séries TV sont couverts par les deux indexeurs publics ci-dessous.';
  @override
  String get video_builtin_sources_hint =>
      'Fournies avec l\'application : pas de compte, pas de clé API. Désactivez-en une pour l\'exclure des recherches de ressources.';
  @override
  String get video_builtin_sources_title => 'Sources intégrées';
  @override
  String video_chapter_n({required Object n}) => 'Chapitre ${n}';
  @override
  String get video_chapters => 'Chapitres';
  @override
  String get video_chapters_empty => 'Aucun chapitre';
  @override
  String get video_clip_export => 'Export d\'extrait';
  @override
  String get video_clip_export_cancelled => 'Exportation du clip annulée';
  @override
  String video_clip_export_failed({required Object reason}) =>
      'Échec de l\'export de l\'extrait : ${reason}';
  @override
  String get video_clip_export_ffmpeg_failed => 'Échec de ffmpeg';
  @override
  String get video_clip_export_ffmpeg_unavailable => 'ffmpeg est indisponible';
  @override
  String get video_clip_export_input_missing =>
      'La vidéo source est indisponible';
  @override
  String get video_clip_export_invalid_range =>
      'Aucune plage d\'extrait valide';
  @override
  String get video_clip_export_output_missing =>
      'Aucun fichier de sortie n\'a été créé';
  @override
  String get video_clip_export_remote_download_required =>
      'Téléchargez la vidéo distante sur cet appareil avant d\'exporter un extrait';
  @override
  String get video_clip_export_source_changed =>
      'La source vidéo a changé ; export de l\'extrait annulé';
  @override
  String get video_clip_export_start => 'Démarrer l\'export de l\'extrait';
  @override
  String get video_clip_export_stop => 'Arrêter et exporter l\'extrait';
  @override
  String video_clip_exported({required Object path}) =>
      'Extrait exporté : ${path}';
  @override
  String video_clip_exported_with_subtitles({required Object path}) =>
      'Clip exporté avec sous-titres : ${path}';
  @override
  String get video_clip_exporting => 'Export de l\'extrait…';
  @override
  String get video_collection_no_local_member =>
      'Aucune vidéo locale dans cette collection';
  @override
  String get video_continue_watching => 'Continue Watching';
  @override
  String get video_control_audio_track => 'Piste audio';
  @override
  String video_control_custom_action({required Object index}) =>
      'Raccourci ${index}';
  @override
  String get video_control_custom_action_none => 'Non assigné';
  @override
  String get video_control_customize_hint =>
      'Choisissez l\'emplacement de chaque bouton sur le lecteur, ou retirez-le.';
  @override
  String get video_control_episode_list => 'Liste des épisodes';
  @override
  String get video_control_favorite_sentence =>
      'Mettre la phrase actuelle en favori';
  @override
  String get video_control_fullscreen => 'Plein écran';
  @override
  String get video_control_next_cue => 'Sous-titre suivant';
  @override
  String get video_control_palette_hint =>
      'Glissez un bouton dans un emplacement pour l\'ajouter ; un bouton peut occuper plusieurs emplacements.';
  @override
  String get video_control_palette_title => 'Tous les boutons';
  @override
  String get video_control_play_pause => 'Lecture/Pause';
  @override
  String get video_control_previous_cue => 'Sous-titre précédent';
  @override
  String get video_control_reject_required =>
      'Les contrôles obligatoires doivent rester sur le lecteur.';
  @override
  String get video_control_reject_unavailable =>
      'Ce contrôle ne peut pas être placé là.';
  @override
  String get video_control_reject_volume_bottom =>
      'Le volume ne peut être placé que sur la barre du bas.';
  @override
  String get video_control_remove_from_slot => 'Retirer';
  @override
  String get video_control_reset_layout =>
      'Rétablir la disposition des boutons du lecteur';
  @override
  String get video_control_screenshot => 'Capture d\'écran';
  @override
  String get video_control_seek_backward => 'Reculer de 10 s';
  @override
  String get video_control_seek_forward => 'Avancer de 10 s';
  @override
  String get video_control_settings => 'Paramètres du lecteur';
  @override
  String get video_control_slot_bottom_center => 'Barre du bas (centre)';
  @override
  String get video_control_slot_bottom_left => 'Barre du bas (gauche)';
  @override
  String get video_control_slot_bottom_right => 'Barre du bas (droite)';
  @override
  String get video_control_slot_drop_hint => 'Glissez un bouton ici';
  @override
  String get video_control_slot_hidden => 'Retiré du lecteur';
  @override
  String get video_control_slot_screen_left => 'Côté gauche de l\'écran';
  @override
  String get video_control_slot_screen_right => 'Côté droit de l\'écran';
  @override
  String get video_control_slot_top_center => 'Barre du haut (centre)';
  @override
  String get video_control_slot_top_left => 'Barre du haut (gauche)';
  @override
  String get video_control_slot_top_right => 'Barre du haut (droite)';
  @override
  String get video_control_speed => 'Vitesse';
  @override
  String get video_control_subtitle_list => 'Liste des sous-titres';
  @override
  String get video_control_subtitle_track => 'Piste de sous-titres';
  @override
  String get video_control_title => 'Titre de la vidéo';
  @override
  String get video_control_volume => 'Volume';
  @override
  String get video_danmaku_manual_bind_empty =>
      'Pas de danmaku pour cet épisode.';
  @override
  String get video_danmaku_manual_bind_failed =>
      'Impossible de charger les danmaku pour cet épisode. Réessayez plus tard.';
  @override
  String get video_danmaku_manual_bind_server_error =>
      'Le serveur de danmaku a rejeté la requête. Réessayez plus tard.';
  @override
  String get video_danmaku_manual_match_title => 'Associer les danmaku';
  @override
  String get video_danmaku_manual_network_error =>
      'Erreur réseau. Vérifiez votre connexion et réessayez.';
  @override
  String get video_danmaku_manual_no_result =>
      'Aucun anime correspondant trouvé.';
  @override
  String get video_danmaku_manual_search_action => 'Rechercher';
  @override
  String get video_danmaku_manual_search_hint => 'Titre d\'anime';
  @override
  String get video_danmaku_manual_search_prompt =>
      'Recherchez sur Dandanplay par titre d\'anime, puis choisissez un épisode.';
  @override
  String get video_danmaku_manual_server_error =>
      'Recherche échouée. Réessayez plus tard.';
  @override
  String video_delete_confirm({required Object title}) =>
      'Supprimer « ${title} » ? Cette action est irréversible.';
  @override
  String get video_delete_title => 'Supprimer la vidéo';
  @override
  String get video_discovery_all_works => 'Tous les titres';
  @override
  String get video_discovery_anidb_identity_confirm_hint =>
      'AniDB propose plusieurs correspondances possibles. Choisissez la bonne œuvre et le téléchargement importé sera récupéré directement avec cette identité ; en passant, vous pourrez l\'attribuer plus tard depuis la liste des œuvres en attente.';
  @override
  String get video_discovery_anidb_identity_confirm_title =>
      'Confirmer l\'identité de l\'œuvre';
  @override
  String get video_discovery_anidb_identity_not_found =>
      'Impossible d\'identifier cette œuvre sur AniDB. Elle sera téléchargée normalement et attendra dans la liste des œuvres en attente une identification manuelle.';
  @override
  String video_discovery_cancel_downloads_body({required Object n}) =>
      '${n} tâche(s) de téléchargement pour ce titre vont être arrêtées. Les morceaux déjà téléchargés restent sur le disque ; vous pourrez relancer le téléchargement plus tard.';
  @override
  String get video_discovery_cancel_downloads_failed =>
      'Impossible d\'annuler le téléchargement. La tâche est peut-être déjà terminée, ou le backend de téléchargement est indisponible.';
  @override
  String get video_discovery_cancel_downloads_title =>
      'Annuler les téléchargements ?';
  @override
  String get video_discovery_details_load_failed =>
      'Impossible de charger les détails du titre.';
  @override
  String get video_discovery_empty => 'Aucun titre correspondant.';
  @override
  String get video_discovery_hot => 'Populaires maintenant';
  @override
  String get video_discovery_in_library => 'Dans la bibliothèque';
  @override
  String get video_discovery_load_failed =>
      'Impossible de charger les résultats de découverte.';
  @override
  String get video_discovery_manual_identity_hint =>
      'Entrez le titre, l\'ID externe et l\'année ci-dessus pour activer la recherche';
  @override
  String get video_discovery_pipeline_idle =>
      'Non téléchargé → Téléchargement → Organisation → Sous-titres → Récupération → Bibliothèque';
  @override
  String get video_discovery_play => 'Lire';
  @override
  String get video_discovery_provider_warning =>
      'Certains fournisseurs sont indisponibles. Résultats disponibles affichés.';
  @override
  String get video_discovery_resource_search => 'Rechercher des ressources';
  @override
  String get video_discovery_search_hint =>
      'Rechercher des films, séries, anime';
  @override
  String get video_discovery_search_results => 'Résultats de recherche';
  @override
  String get video_discovery_seasonal_anime => 'Anime de la saison';
  @override
  String get video_discovery_sort_popularity => 'Popularité';
  @override
  String get video_discovery_sort_rating => 'Note';
  @override
  String get video_discovery_sort_release => 'Date de sortie';
  @override
  String get video_discovery_subscribe => 'S\'abonner';
  @override
  String get video_discovery_subscription_manage => 'Gérer l\'abonnement';
  @override
  String get video_discovery_subtitle_search => 'Rechercher des sous-titres';
  @override
  String get video_double_tap_next_cue => 'Ligne suivante';
  @override
  String get video_double_tap_prev_cue => 'Ligne précédente';
  @override
  String get video_download_backend_profile_id => 'ID de profil du moteur';
  @override
  String get video_download_local_root => 'Racine locale';
  @override
  String get video_download_path_mapping_add => 'Ajouter un mappage de chemin';
  @override
  String get video_download_path_mapping_invalid =>
      'Entrez un ID de profil, une racine distante et une racine locale absolue.';
  @override
  String get video_download_path_mappings_hint =>
      'Mappez chaque racine distante qBittorrent vers un dossier accessible localement.';
  @override
  String get video_download_path_mappings_title =>
      'Mappages de chemins qBittorrent';
  @override
  String get video_download_remote_root => 'Racine distante';
  @override
  String get video_download_target_source_empty =>
      'Aucune source vidéo accessible localement n\'est disponible. Ajoutez-en une dans l\'onglet Sources d\'abord.';
  @override
  String get video_download_target_source_hint =>
      'Les nouveaux téléchargements sont organisés dans cette source vidéo locale.';
  @override
  String get video_download_target_source_none =>
      'Choisir une source vidéo locale';
  @override
  String get video_download_target_source_title => 'Dossier par défaut';
  @override
  String get video_drop_audio_unsupported =>
      'Déposez les fichiers de sous-titres sur la vidéo en cours. Les fichiers audio ne peuvent pas être joints ici.';
  @override
  String get video_drop_subtitle_only =>
      'Déposez les fichiers de sous-titres sur la vidéo en cours.';
  @override
  String get video_episode_list => 'Épisodes';
  @override
  String get video_episode_list_empty => 'Aucun épisode';
  @override
  String get video_external_api_key => 'Clé API';
  @override
  String get video_external_categories_invalid =>
      'Les catégories doivent être des ID numériques séparés par des virgules.';
  @override
  String get video_external_enabled => 'Activé';
  @override
  String get video_external_endpoint_invalid =>
      'Entrez un point d\'accès valide sans identifiants, paramètres de requête ou fragments.';
  @override
  String get video_external_insecure_http => 'Autoriser HTTP non sécurisé';
  @override
  String get video_external_insecure_http_hint =>
      'À utiliser uniquement pour un point d\'accès de réseau local de confiance.';
  @override
  String get video_external_password_optional => 'Mot de passe (optionnel)';
  @override
  String get video_external_remove => 'Retirer';
  @override
  String get video_external_save_error =>
      'La configuration n\'a pas pu être enregistrée. Vérifiez les champs surlignés.';
  @override
  String get video_external_settings_section =>
      'Fournisseurs de ressources et sous-titres externes';
  @override
  String get video_external_username_optional =>
      'Nom d\'utilisateur (optionnel)';
  @override
  String video_favorite_count({required Object count}) => '${count} favoris';
  @override
  String get video_file_error_content =>
      'Impossible de charger le fichier vidéo. Veuillez vérifier que ce fichier existe et se trouve dans un répertoire accessible par l\'application.';
  @override
  String get video_file_not_found => 'Fichier vidéo introuvable';
  @override
  String get video_filter_series => 'Séries';
  @override
  String get video_filter_series_in => 'Dans une série';
  @override
  String get video_filter_series_standalone => 'Sans série';
  @override
  String get video_filter_watch_status => 'Statut de visionnage';
  @override
  String get video_filter_watch_status_completed => 'Terminé';
  @override
  String get video_filter_watch_status_unwatched => 'Non regardé';
  @override
  String get video_filter_watch_status_watching => 'En cours';
  @override
  String get video_filter_year => 'Année';
  @override
  String get video_filter_year_unknown => 'Année inconnue';
  @override
  String get video_hero_detail_view => 'Détails';
  @override
  String video_hero_episodes_watched({required Object n}) =>
      '${n} épisodes regardés';
  @override
  String video_home_continue_episode_number({required Object n}) =>
      'Lecture de l\'épisode ${n}';
  @override
  String video_home_next_episode_number({required Object n}) =>
      'Suivant · Épisode ${n}';
  @override
  String video_home_recent_episode_number({required Object n}) =>
      'Ajouté récemment · Épisode ${n}';
  @override
  String video_home_remaining_minutes({required Object minutes}) =>
      '${minutes} min restantes';
  @override
  String video_home_subscription_unwatched_episode({
    required Object n,
    required Object count,
  }) => 'Episode ${n} · ${count} unwatched';
  @override
  String get video_home_subscription_updates => 'Updated, not watched';
  @override
  String get video_immersive_locked => 'Mode immersif activé';
  @override
  String get video_immersive_mode_full => 'Tous les contrôles';
  @override
  String get video_immersive_mode_lookup_only => 'Recherche uniquement';
  @override
  String get video_immersive_mode_seek_lookup => 'Raccourci + recherche';
  @override
  String get video_immersive_mode_unlock_only => 'Déverrouillage uniquement';
  @override
  String get video_immersive_unlock => 'Déverrouiller';
  @override
  String get video_immersive_unlocked => 'Mode immersif désactivé';
  @override
  String get video_import_action => 'Importer une vidéo';
  @override
  String get video_import_confirm => 'Importer';
  @override
  String get video_import_folder_as_source_hint =>
      'Scanner continuellement ce dossier pour de nouvelles vidéos';
  @override
  String get video_import_pick_subtitle => 'Choisir un sous-titre';
  @override
  String get video_import_pick_video => 'Choisir le fichier vidéo';
  @override
  String get video_import_stream_advanced => 'Avancé (en-têtes anti-leech)';
  @override
  String get video_import_stream_referer => 'Referer (optionnel)';
  @override
  String get video_import_stream_subtitle_url_field =>
      'URL de sous-titres externes (optionnel)';
  @override
  String get video_import_stream_url_field => 'URL du flux vidéo';
  @override
  String get video_import_stream_url_hint =>
      'Lire un flux HLS/m3u8/mp4 (avec URL de sous-titres externes et Referer/User-Agent anti-leech optionnels)';
  @override
  String get video_import_stream_user_agent => 'User-Agent (optionnel)';
  @override
  String get video_import_subtitle_optional =>
      'Sous-titre externe facultatif (vous pouvez basculer entre sous-titres intégrés et externes à tout moment pendant la lecture)';
  @override
  String get video_import_title => 'Importer une vidéo';
  @override
  String get video_jimaku_anime_match => 'Correspondance anime';
  @override
  String get video_jimaku_api_key => 'Clé API Jimaku';
  @override
  String get video_jimaku_api_key_hint =>
      'Obtenez une clé API gratuite sur jimaku.cc/account';
  @override
  String get video_jimaku_api_key_set => 'Clé API configurée';
  @override
  String get video_jimaku_api_key_settings_hint =>
      'Aussi modifiable dans Paramètres → Vidéo → Sous-titres';
  @override
  String video_jimaku_batch_done({
    required Object done,
    required Object total,
  }) => 'Sous-titres récupérés : ${done}/${total}';
  @override
  String get video_jimaku_batch_download => 'Tout télécharger';
  @override
  String get video_jimaku_batch_title =>
      'Récupérer les sous-titres pour la collection';
  @override
  String get video_jimaku_download_failed => 'Échec du téléchargement';
  @override
  String get video_jimaku_downloaded => 'Sous-titre téléchargé et appliqué';
  @override
  String get video_jimaku_enabled_hint =>
      'Désactivé signifie que Jimaku est ignoré même quand une clé API est enregistrée.';
  @override
  String get video_jimaku_episode => 'Épisode (optionnel)';
  @override
  String video_jimaku_episode_available({
    required Object count,
    required Object languages,
  }) => '${count} sous-titres disponibles · ${languages}';
  @override
  String get video_jimaku_episode_hint => 'Laissez vide pour tout lister';
  @override
  String video_jimaku_episode_unavailable({required Object episode}) =>
      'Aucun sous-titre trouvé pour l\'épisode ${episode}';
  @override
  String video_jimaku_episode_unlabeled({
    required Object episode,
    required Object count,
  }) =>
      'Aucun sous-titre étiqueté épisode ${episode} ; ${count} fichiers non étiquetés peuvent correspondre';
  @override
  String get video_jimaku_fetch => 'Récupérer les sous-titres (Jimaku)';
  @override
  String get video_jimaku_filter => 'Filtrer les résultats (ex. WEBRip, BD)';
  @override
  String get video_jimaku_find_sources => 'Trouver des sous-titres';
  @override
  String get video_jimaku_format => 'Format';
  @override
  String get video_jimaku_format_all => 'Tous';
  @override
  String get video_jimaku_language => 'Langue';
  @override
  String get video_jimaku_language_all => 'Toutes';
  @override
  String get video_jimaku_language_follow_video =>
      'Suivre la langue de la vidéo';
  @override
  String get video_jimaku_language_unknown => 'Langue non étiquetée';
  @override
  String get video_jimaku_no_key => 'Saisissez d\'abord votre clé API Jimaku';
  @override
  String get video_jimaku_no_results => 'Aucun sous-titre trouvé';
  @override
  String get video_jimaku_query => 'Nom de la série';
  @override
  String get video_jimaku_scope_hint =>
      'Sous-titres japonais pour anime et séries live-action japonaises. Une clé API gratuite est requise.';
  @override
  String get video_jimaku_search => 'Rechercher';
  @override
  String get video_jimaku_search_failed =>
      'Échec de la recherche de sous-titres';
  @override
  String get video_jimaku_series => 'Série';
  @override
  String get video_jimaku_series_lookup_degraded =>
      'Impossible de confirmer la série sur AniList cette fois, ces résultats proviennent donc d\'une recherche par titre simple et peuvent mélanger d\'autres saisons de la même série.';
  @override
  String get video_jimaku_show_all_episodes => 'Afficher tous les épisodes';
  @override
  String get video_jimaku_source => 'Source de sous-titres';
  @override
  String get video_jimaku_source_failed =>
      'Impossible de vérifier la disponibilité des sous-titres. Essayez de rechercher à nouveau.';
  @override
  String get video_jimaku_source_hint =>
      'Choisissez une entrée Jimaku. Les packs de saison sont associés par épisode automatiquement.';
  @override
  String get video_jimaku_source_loading =>
      'Vérification de la disponibilité des sous-titres…';
  @override
  String video_jimaku_source_summary({
    required Object files,
    required Object episodes,
    required Object languages,
  }) =>
      '${files} fichiers de sous-titres · ${episodes} épisodes · ${languages}';
  @override
  String video_last_watched({required Object date}) =>
      'Dernière lecture ${date}';
  @override
  String get video_library_all_videos => 'Toutes les vidéos';
  @override
  String get video_library_empty => 'Aucune vidéo importée pour l\'instant';
  @override
  String get video_library_empty_source_hint =>
      'Ajoutez un dossier vidéo depuis les Sources pour construire votre bibliothèque';
  @override
  String get video_library_scrape_auto_backfill =>
      'Compléter automatiquement les infos de série manquantes';
  @override
  String get video_library_scrape_auto_backfill_hint =>
      'À l\'ouverture de la bibliothèque vidéo, les entrées sans identité confirmée sont récupérées. Désactivez pour arrêter tous les téléchargements de métadonnées en arrière-plan.';
  @override
  String video_library_scrape_pending_banner({required Object count}) =>
      '${count} works still need identity confirmation';
  @override
  String get video_library_scrape_pending_banner_action => 'Confirm';
  @override
  String get video_load_failed_back => 'Retour';
  @override
  String get video_load_failed_generic => 'Impossible de charger cette vidéo.';
  @override
  String get video_load_failed_network =>
      'Erreur réseau — vérifiez votre connexion et réessayez.';
  @override
  String get video_load_failed_not_found =>
      'Cet élément n\'a pas été trouvé dans votre bibliothèque.';
  @override
  String get video_load_failed_retry => 'Réessayer';
  @override
  String get video_load_failed_timeout =>
      'Connexion expirée — le réseau est lent ou la source limite le débit. Veuillez réessayer.';
  @override
  String get video_load_failed_title => 'Échec du chargement de la vidéo';
  @override
  String get video_load_failed_unavailable =>
      'Impossible d\'obtenir le flux vidéo — il peut être indisponible, restreint par région ou âge, ou la source a changé.';
  @override
  String get video_loading_buffering => 'Mise en mémoire tampon…';
  @override
  String get video_loading_connecting => 'Connexion au flux…';
  @override
  String get video_loading_preparing => 'Préparation…';
  @override
  String get video_loading_subtitle => 'Téléchargement des sous-titres…';
  @override
  String get video_menu_fullscreen => 'Basculer en plein écran';
  @override
  String get video_menu_lock => 'Mode immersif / verrouillé';
  @override
  String get video_menu_play_pause => 'Lecture / Pause';
  @override
  String get video_menu_subtitle_track => 'Piste de sous-titres';
  @override
  String get video_mining_animated_format =>
      'Format d\'animation de carte vidéo';
  @override
  String get video_mining_image_mode => 'Image de carte vidéo';
  @override
  String get video_mining_image_mode_current_frame =>
      'Capture d\'écran au moment de la création';
  @override
  String get video_mining_image_mode_gif => 'GIF animé (clip de sous-titre)';
  @override
  String get video_mining_image_mode_subtitle_start =>
      'Capture d\'écran au début du sous-titre';
  @override
  String get video_mining_still_format =>
      'Format de capture d\'écran de carte vidéo';
  @override
  String get video_mining_still_format_hint =>
      'Encodage utilisé quand l\'image de carte est une capture d\'écran fixe. JPG est bien plus petit ; PNG est sans perte mais plusieurs fois plus gros. Les couvertures animées ne sont pas affectées — elles suivent le réglage du format d\'animation.';
  @override
  String get video_next_episode => 'Épisode suivant';
  @override
  String get video_online_services_setup_description =>
      'Des comptes et clés API facultatifs améliorent l’identification des vidéos et la recherche de sous-titres. La lecture fonctionne sans eux.';
  @override
  String get video_online_services_setup_dismiss => 'Ne plus afficher';
  @override
  String get video_online_services_setup_register =>
      'Découvrir les services et s’inscrire';
  @override
  String get video_online_services_setup_settings => 'Ouvrir les réglages';
  @override
  String get video_online_services_setup_title =>
      'Configurer les services en ligne facultatifs';
  @override
  String get video_opensubtitles_app_key_hint =>
      'Laissez vide pour utiliser la clé API incluse dans l’application.';
  @override
  String get video_opensubtitles_endpoint => 'Point d\'accès API';
  @override
  String get video_opensubtitles_languages_hint =>
      'Codes de langue séparés par des virgules, par exemple zh-CN,en,ja';
  @override
  String get video_opensubtitles_settings_hint =>
      'Les identifiants API ne sont jamais exportés dans les sauvegardes ; ils peuvent se synchroniser vers les appareils appariés via Interconnect (désactivable dans les paramètres d\'Interconnect).';
  @override
  String get video_opensubtitles_settings_title => 'OpenSubtitles';
  @override
  String get video_opensubtitles_user_agent => 'User-Agent';
  @override
  String video_playlist_episodes({required Object count}) => '${count} ép.';
  @override
  String get video_prev_episode => 'Épisode précédent';
  @override
  String get video_quality => 'Qualité';
  @override
  String get video_quality_auto => 'Auto';
  @override
  String get video_quality_empty =>
      'Pas de qualité commutable pour cette vidéo';
  @override
  String get video_quality_enhancement_hint =>
      'Activez cette option pour affiner l\'image grâce à la mise à l\'échelle haute qualité intégrée de mpv. Fonctionne aussi bien pour l\'animation que pour les films et séries en prise de vue réelle. Pour aller plus loin avec des shaders comme Anime4K, ouvrez « Amélioration de l\'image » pendant la lecture d\'une vidéo et choisissez-y un niveau.';
  @override
  String get video_quality_load_failed =>
      'Impossible de charger les qualités pour cette vidéo.';
  @override
  String get video_quality_loading => 'Chargement des qualités disponibles…';
  @override
  String video_quality_switched({required Object label}) =>
      'Qualité : ${label}';
  @override
  String get video_recently_added_badge => 'NOUVEAU';
  @override
  String get video_rename => 'Renommer';
  @override
  String get video_rename_hint => 'Titre';
  @override
  String get video_render_skia_fix_confirm_action => 'Redémarrer';
  @override
  String get video_render_skia_fix_confirm_body =>
      'Cela désactive le moteur de rendu Impeller et redémarre l\'application.';
  @override
  String get video_render_skia_fix_confirm_title =>
      'Passer à Skia et redémarrer ?';
  @override
  String get video_render_skia_fix_hint =>
      'Utilisez si l\'audio joue mais la vidéo reste noire. Désactive Impeller ; redémarre pour appliquer.';
  @override
  String get video_render_skia_fix_title =>
      'Écran noir ? Changer de moteur de rendu (Skia)';
  @override
  String get video_resource_identity_provider =>
      'Source d\'identité des ressources';
  @override
  String video_resource_missing_message({required Object title}) =>
      'Le fichier pour « ${title} » est introuvable. Son emplacement a peut-être changé, ou le disque n\'est pas connecté. Vous pouvez le réimporter ou retirer cette entrée.';
  @override
  String get video_resource_missing_reimport => 'Réimporter';
  @override
  String get video_resource_missing_title => 'Vidéo indisponible';
  @override
  String get video_resource_no_provider_hint =>
      'Cette recherche n\'avait aucun fournisseur. Réactivez une source intégrée, ou ajoutez un indexeur Torznab, sous Paramètres, Téléchargements, Fournisseurs de ressources et sous-titres externes.';
  @override
  String get video_resource_no_provider_title =>
      'Aucun indexeur de ressources configuré';
  @override
  String get video_resource_relink_success => 'Vidéo reliée';
  @override
  String get video_scrape_collection_rename_body =>
      'L\'entrée correspondante a un nom différent. Le renommage est optionnel : la couverture et les détails sont enregistrés dans tous les cas, et un renommage remplace aussi l\'ancien nom sur vos autres appareils synchronisés.';
  @override
  String video_scrape_collection_rename_from({required Object name}) =>
      'Nom actuel : ${name}';
  @override
  String get video_scrape_collection_rename_keep => 'Garder le nom actuel';
  @override
  String get video_scrape_collection_rename_title =>
      'Renommer cette collection ?';
  @override
  String video_scrape_collection_rename_to({required Object name}) =>
      'Nouveau nom : ${name}';
  @override
  String get video_scrape_diagnostic_confirm_body =>
      'Le paquet inclut les noms relatifs de fichiers et dossiers, les résumés de récupération et le contenu des NFO originaux. Il n\'ajoute pas les vidéos, sous-titres, images, chemins absolus, configuration ou identifiants de l\'application. Les fichiers NFO originaux sont préservés tels quels et peuvent contenir des informations personnelles ; vérifiez le paquet avant de le partager publiquement.';
  @override
  String get video_scrape_diagnostic_confirm_title =>
      'Exporter les diagnostics de récupération ?';
  @override
  String get video_scrape_diagnostic_export =>
      'Exporter les diagnostics de récupération';
  @override
  String video_scrape_diagnostic_failed({required Object reason}) =>
      'Impossible d\'exporter le paquet de diagnostics : ${reason}';
  @override
  String get video_scrape_diagnostic_saved =>
      'Paquet de diagnostics enregistré';
  @override
  String get video_scrape_diagnostic_share_subject =>
      'Diagnostics de récupération vidéo Fushi';
  @override
  String get video_scrape_episodes => 'Épisodes';
  @override
  String get video_scrape_info => 'Infos de la série';
  @override
  String video_scrape_rating_votes({required Object count}) =>
      '${count} évaluations';
  @override
  String get video_scrape_tmdb_key_empty =>
      'Enregistrez une clé API TMDB, puis appuyez sur Rechercher. Les résultats d\'autres sources ne sont pas affichés ici.';
  @override
  String get video_scrape_tmdb_key_hint => 'Entrer la clé API TMDB';
  @override
  String get video_scrape_tmdb_key_required => 'TMDB nécessite une clé API';
  @override
  String get video_scrape_tmdb_key_save => 'Enregistrer';
  @override
  String get video_scrape_view_source => 'Voir les détails de la source';
  @override
  String get video_screenshot => 'Capture d\'écran';
  @override
  String video_screenshot_failed_reason({required Object reason}) =>
      'Échec de la capture d\'écran : ${reason}';
  @override
  String video_screenshot_ready({required Object file}) =>
      'Capture d\'écran prête : ${file}';
  @override
  String video_screenshot_saved_to({required Object path}) =>
      'Capture d\'écran enregistrée : ${path}';
  @override
  String get video_secondary_subtitle_sources => 'Sous-titre secondaire';
  @override
  String get video_setting_auto_play_next =>
      'Lecture auto de l\'épisode suivant';
  @override
  String get video_setting_auto_scrape =>
      'Récupérer automatiquement les infos de série';
  @override
  String get video_setting_auto_scrape_hint =>
      'Identifier et récupérer automatiquement les métadonnées vidéo après les scans de bibliothèque';
  @override
  String get video_setting_av_delay => 'Synchronisation des sous-titres';
  @override
  String get video_setting_av_delay_hint =>
      'Positif = sous-titres en retard (décalés vers l\'arrière) ; négatif = sous-titres en avance. Utilisez le curseur, les boutons +/- ou saisissez une valeur.';
  @override
  String get video_setting_danmaku_area => 'Zone d\'affichage';
  @override
  String get video_setting_danmaku_area_hint =>
      'Fraction de la hauteur d\'écran que les danmaku peuvent occuper, depuis le haut.';
  @override
  String get video_setting_danmaku_block_rules => 'Mots bloqués / regex';
  @override
  String get video_setting_danmaku_block_rules_hint =>
      'Une règle par ligne. Entourez une ligne de barres obliques comme /motif/ pour une expression régulière ; sinon la correspondance est textuelle insensible à la casse.';
  @override
  String get video_setting_danmaku_block_rules_placeholder =>
      'par ex. spoiler ou /motif/';
  @override
  String get video_setting_danmaku_enabled => 'Afficher les danmaku';
  @override
  String get video_setting_danmaku_enabled_hint =>
      'Affiche les danmaku locaux ou appariés par-dessus la vidéo sans bloquer les contrôles.';
  @override
  String get video_setting_danmaku_font_scale => 'Taille de police';
  @override
  String get video_setting_danmaku_font_scale_hint =>
      'Mise à l\'échelle de la taille du texte des danmaku.';
  @override
  String get video_setting_danmaku_manual_match => 'Correspondance manuelle';
  @override
  String get video_setting_danmaku_manual_match_hint =>
      'Recherchez sur Dandanplay par titre et choisissez l\'épisode quand la correspondance automatique échoue ou est incorrecte.';
  @override
  String get video_setting_danmaku_max_active => 'Limite de danmaku actifs';
  @override
  String get video_setting_danmaku_max_active_hint =>
      'Limite le nombre de commentaires affichés par image pour garder la lecture fluide sur les gros fichiers.';
  @override
  String get video_setting_danmaku_online => 'Appariement en ligne Dandanplay';
  @override
  String get video_setting_danmaku_online_hint =>
      'En l\'absence de fichier local utilisable, apparie la vidéo ouverte avec Dandanplay et récupère les commentaires associés.';
  @override
  String get video_setting_danmaku_opacity => 'Opacité';
  @override
  String get video_setting_danmaku_opacity_hint =>
      'Transparence globale des danmaku.';
  @override
  String get video_setting_danmaku_server_url => 'URL du serveur danmaku';
  @override
  String get video_setting_danmaku_speed => 'Vitesse';
  @override
  String get video_setting_danmaku_speed_hint =>
      'Plus élevé est plus rapide ; les danmaku défilants traversent l\'écran plus vite.';
  @override
  String get video_setting_double_tap => 'Avancer/reculer par double-toucher';
  @override
  String get video_setting_double_tap_hint =>
      'Double-touchez le côté gauche ou droit de la vidéo pour reculer/avancer';
  @override
  String get video_setting_double_tap_off => 'Désactivé';
  @override
  String get video_setting_double_tap_subtitle => 'Sous-titre';
  @override
  String get video_setting_drag_seek_sensitivity =>
      'Sensibilité du glisser pour avancer';
  @override
  String get video_setting_drag_seek_sensitivity_high => 'Haut';
  @override
  String get video_setting_drag_seek_sensitivity_hint =>
      'Jusqu\'où un glissement pleine largeur avance sur un écran tactile : Bas environ 45s, Moyen environ 90s, Haut environ 180s. Indépendant de la durée totale de la vidéo. Glissement tactile uniquement ; la recherche à la souris et au clavier n\'est pas affectée.';
  @override
  String get video_setting_drag_seek_sensitivity_low => 'Bas';
  @override
  String get video_setting_drag_seek_sensitivity_medium => 'Moyen';
  @override
  String get video_setting_hdr_auto => 'Auto';
  @override
  String get video_setting_hdr_compute_peak => 'Détection dynamique des pics';
  @override
  String get video_setting_hdr_compute_peak_hint =>
      'Mesure le pic de luminosité réel de chaque image au lieu de se fier aux métadonnées de la source. Meilleures hautes lumières, au prix d\'un peu de GPU.';
  @override
  String get video_setting_hdr_off => 'Désactivé';
  @override
  String get video_setting_hdr_on => 'Activé';
  @override
  String get video_setting_hdr_output => 'Sortie HDR / 10 bits';
  @override
  String get video_setting_hdr_output_always => 'Toujours';
  @override
  String get video_setting_hdr_output_auto => 'Auto';
  @override
  String get video_setting_hdr_output_hint =>
      'Windows uniquement. « Auto » transmet les sources HDR directement à un écran HDR via une fenêtre vidéo native ; « Toujours » utilise cette fenêtre pour toutes les vidéos (sortie 10 bits) ; « Désactivé » conserve le rendu standard.';
  @override
  String get video_setting_hdr_output_off => 'Désactivé';
  @override
  String get video_setting_hdr_tone_mapping => 'Mappage tonal HDR';
  @override
  String get video_setting_hdr_tone_mapping_hint =>
      'Courbe utilisée pour ramener une source HDR sur un écran SDR. « Auto » laisse mpv choisir selon la source.';
  @override
  String get video_setting_immersive_mode => 'Mode immersif';
  @override
  String get video_setting_immersive_mode_hint =>
      'Détermine ce qui reste disponible après l\'appui sur le bouton de verrouillage latéral';
  @override
  String get video_setting_jimaku_default_language =>
      'Langue de sous-titres par défaut';
  @override
  String get video_setting_jimaku_default_language_hint =>
      'Par défaut la langue propre de la vidéo (piste audio / métadonnées récupérées). Choisissez-en une pour toujours préférer cette langue.';
  @override
  String get video_setting_lock_window_aspect =>
      'Verrouiller la fenêtre au format de la vidéo';
  @override
  String get video_setting_long_press_speed => 'Vitesse en appui long';
  @override
  String get video_setting_long_press_speed_hint =>
      'Utiliser temporairement cette vitesse en maintenant la vidéo appuyée.';
  @override
  String get video_setting_mpv_aspect => 'Format d\'image';
  @override
  String get video_setting_mpv_aspect_auto => 'Original';
  @override
  String get video_setting_mpv_brightness => 'Luminosité';
  @override
  String get video_setting_mpv_channels => 'Canaux';
  @override
  String get video_setting_mpv_channels_auto => 'Auto';
  @override
  String get video_setting_mpv_channels_mono => 'Mono';
  @override
  String get video_setting_mpv_channels_stereo => 'Stéréo (downmix)';
  @override
  String get video_setting_mpv_contrast => 'Contraste';
  @override
  String get video_setting_mpv_correct_downscale =>
      'Sous-échantillonnage linéaire';
  @override
  String get video_setting_mpv_deband => 'Anti-banding';
  @override
  String get video_setting_mpv_deinterlace => 'Désentrelacement';
  @override
  String get video_setting_mpv_dither => 'Tramage';
  @override
  String get video_setting_mpv_gamma => 'Gamma';
  @override
  String get video_setting_mpv_group_advanced => 'Avancé';
  @override
  String get video_setting_mpv_group_audio => 'Audio';
  @override
  String get video_setting_mpv_group_color => 'Couleur';
  @override
  String get video_setting_mpv_group_decode => 'Décodage';
  @override
  String get video_setting_mpv_group_geometry => 'Image';
  @override
  String get video_setting_mpv_group_hdr => 'HDR';
  @override
  String get video_setting_mpv_group_playback => 'Lecture';
  @override
  String get video_setting_mpv_group_quality => 'Qualité d\'image';
  @override
  String get video_setting_mpv_hue => 'Teinte';
  @override
  String get video_setting_mpv_hwdec => 'Décodage matériel';
  @override
  String get video_setting_mpv_hwdec_auto => 'Auto (sûr)';
  @override
  String get video_setting_mpv_hwdec_copy => 'Auto (copie)';
  @override
  String get video_setting_mpv_hwdec_off => 'Désactivé';
  @override
  String get video_setting_mpv_interpolation => 'Interpolation de mouvement';
  @override
  String get video_setting_mpv_loop => 'Lecture en boucle du fichier';
  @override
  String get video_setting_mpv_lua_scripts => 'Charger les scripts Lua';
  @override
  String get video_setting_mpv_lua_scripts_dir_copied =>
      'Chemin du dossier copié';
  @override
  String get video_setting_mpv_lua_scripts_dir_copy =>
      'Copier le chemin du dossier de scripts';
  @override
  String get video_setting_mpv_lua_scripts_empty =>
      'Aucun script dans le dossier mpv_scripts pour l\'instant';
  @override
  String get video_setting_mpv_lua_scripts_hint =>
      'Charger tous les fichiers .lua du dossier mpv_scripts dans le lecteur. La désactivation prend effet à la prochaine ouverture d\'une vidéo.';
  @override
  String get video_setting_mpv_lua_scripts_import => 'Importer des scripts Lua';
  @override
  String get video_setting_mpv_lua_scripts_imported => 'Scripts importés';
  @override
  String get video_setting_mpv_lua_scripts_input_note =>
      'Les entrées clavier et souris restent dans l\'application et n\'atteignent jamais mpv : les scripts qui reposent sur des raccourcis ou sur l\'OSC ne peuvent pas être déclenchés. Les scripts pilotés par propriétés/événements et les messages OSD fonctionnent.';
  @override
  String get video_setting_mpv_lua_scripts_status_error => 'Erreur';
  @override
  String get video_setting_mpv_lua_scripts_status_loaded =>
      'Chargé, aucune erreur signalée';
  @override
  String get video_setting_mpv_lua_scripts_status_not_loaded =>
      'Pas encore chargé dans ce lecteur (activez l\'interrupteur ou rouvrez la vidéo)';
  @override
  String get video_setting_mpv_lua_scripts_unavailable =>
      'Le libmpv fourni sur cette plateforme a été compilé sans Lua (-Dlua=disabled) : les scripts ne peuvent pas s\'exécuter ici.';
  @override
  String get video_setting_mpv_normalize => 'Normaliser le volume du downmix';
  @override
  String get video_setting_mpv_panscan => 'Pan & scan (rogner les bords)';
  @override
  String get video_setting_mpv_pitch =>
      'Conserver la hauteur tonale lors de l\'accélération';
  @override
  String get video_setting_mpv_raw =>
      'Options mpv supplémentaires (une par ligne, clé=valeur)';
  @override
  String get video_setting_mpv_raw_hint =>
      'Bureau uniquement ; les options inapplicables à l\'exécution (ex. vo, profile) sont ignorées. SVP/RIFE nécessitent des outils externes et ne sont pas pris en charge.';
  @override
  String get video_setting_mpv_reset => 'Tout réinitialiser';
  @override
  String get video_setting_mpv_rotate => 'Rotation';
  @override
  String get video_setting_mpv_saturation => 'Saturation';
  @override
  String get video_setting_mpv_sigmoid => 'Suréchantillonnage sigmoïde';
  @override
  String get video_setting_mpv_sigmoid_hint =>
      'La mise à l\'échelle par courbe sigmoïde réduit le ringing mais coûte du GPU. Désactivé par défaut pour la performance ; activez pour une mise à l\'échelle plus nette.';
  @override
  String get video_setting_mpv_zoom => 'Zoom';
  @override
  String get video_setting_picture_fit => 'Mise à l\'échelle de l\'image';
  @override
  String get video_setting_picture_fit_contain =>
      'Adapter, garder le ratio, ajouter des bandes noires';
  @override
  String get video_setting_picture_fit_cover =>
      'Remplir, garder le ratio, rogner les bords';
  @override
  String get video_setting_picture_fit_fill => 'Étirer pour remplir';
  @override
  String get video_setting_picture_fit_hint =>
      'Comment l\'image remplit la zone du lecteur';
  @override
  String get video_setting_qb_category => 'Catégorie qBittorrent';
  @override
  String get video_setting_qb_category_hint =>
      'Les téléchargements poussés par Fushi reçoivent cette catégorie ; le suivi de complétion ne surveille que celle-ci.';
  @override
  String get video_setting_qb_password => 'Mot de passe WebUI';
  @override
  String get video_setting_qb_url => 'URL WebUI qBittorrent';
  @override
  String get video_setting_qb_url_hint =>
      'par ex. http://127.0.0.1:8080. Laissez vide pour désactiver le téléchargement d\'anime.';
  @override
  String get video_setting_qb_username => 'Nom d\'utilisateur WebUI';
  @override
  String get video_setting_secondary_av_delay =>
      'Synchronisation du sous-titre secondaire';
  @override
  String get video_setting_secondary_av_delay_hint =>
      'Ajuster le décalage du sous-titre secondaire indépendamment. Il suit le décalage principal tant qu\'il n\'est pas défini ici.';
  @override
  String get video_setting_secondary_delay_follow => 'Suivre le principal';
  @override
  String get video_setting_secondary_subtitle_obscure =>
      'Masquer le sous-titre secondaire';
  @override
  String get video_setting_secondary_subtitle_obscure_hint =>
      'Flouter ou cacher le sous-titre secondaire (traduction)';
  @override
  String get video_setting_seek_seconds => 'Pas d\'avance/recul (secondes)';
  @override
  String get video_setting_speed => 'Vitesse de lecture';
  @override
  String get video_setting_speed_step => 'Pas de vitesse';
  @override
  String get video_setting_subtitle_anchor => 'Ancrage du sous-titre principal';
  @override
  String get video_setting_subtitle_appearance => 'Apparence des sous-titres';
  @override
  String get video_setting_subtitle_backfill =>
      'Récupérer automatiquement les sous-titres après la récupération';
  @override
  String get video_setting_subtitle_backfill_hint =>
      'Quand une récupération se termine, les vidéos sans sous-titre en obtiennent un depuis vos sources en ligne configurées. Ne remplace jamais un sous-titre existant.';
  @override
  String get video_setting_subtitle_bg_color => 'Couleur d\'arrière-plan';
  @override
  String get video_setting_subtitle_bg_opacity => 'Opacité du fond';
  @override
  String get video_setting_subtitle_drag_adjust =>
      'Glisser pour ajuster la position';
  @override
  String get video_setting_subtitle_font_size => 'Taille de police';
  @override
  String get video_setting_subtitle_font_weight => 'Graisse de la police';
  @override
  String get video_setting_subtitle_no_background => 'Sans fond';
  @override
  String get video_setting_subtitle_no_background_hint =>
      'Rend le fond des sous-titres transparent.';
  @override
  String get video_setting_subtitle_obscure => 'Masquer les sous-titres';
  @override
  String get video_setting_subtitle_obscure_blur => 'Flouter';
  @override
  String get video_setting_subtitle_obscure_hide => 'Cacher';
  @override
  String get video_setting_subtitle_obscure_hint =>
      'Choisissez comment les sous-titres sont masqués pour la pratique d\'écoute : désactivé, floutés (survolez ou appuyez pour révéler), ou cachés.';
  @override
  String get video_setting_subtitle_obscure_none => 'Désactivé';
  @override
  String get video_setting_subtitle_obscure_reveal => 'Reveal on hover or tap';
  @override
  String get video_setting_subtitle_obscure_reveal_hint =>
      'While subtitles are blurred or hidden, hovering (desktop) or tapping them reveals them temporarily. Turn this off to keep them obscured no matter what.';
  @override
  String get video_setting_subtitle_position => 'Position verticale';
  @override
  String get video_setting_subtitle_position_secondary =>
      'Position du sous-titre secondaire';
  @override
  String get video_setting_subtitle_reset => 'Rétablir les valeurs par défaut';
  @override
  String get video_setting_subtitle_respect_ass =>
      'Respecter le style des sous-titres';
  @override
  String get video_setting_subtitle_respect_ass_hint =>
      'Utiliser la police, la couleur et le contour intégrés aux sous-titres .ass quand disponibles ; désactivez pour imposer vos paramètres d\'apparence.';
  @override
  String get video_setting_subtitle_shadow => 'Ombre';
  @override
  String get video_setting_subtitle_sources_section =>
      'Sources de sous-titres en ligne';
  @override
  String get video_setting_subtitle_sync_input => 'Décalage (ms)';
  @override
  String get video_setting_subtitle_text_color => 'Couleur du texte';
  @override
  String get video_setting_tap_toggles_playback =>
      'Appuyer sur la vidéo pour lecture/pause';
  @override
  String get video_setting_tap_toggles_playback_hint =>
      'Désactivez pour que l\'appui sur la vidéo ne fasse que révéler les contrôles';
  @override
  String get video_setting_theme => 'Thème';
  @override
  String get video_setting_tmdb_key => 'Clé API TMDB personnalisée';
  @override
  String get video_setting_tmdb_key_hint =>
      'Optionnel. Laissez vide pour utiliser la clé intégrée. Remplissez la vôtre uniquement si la récupération cesse de fonctionner ou si vous voulez utiliser votre propre quota.';
  @override
  String get video_setting_torrent_active_downloads =>
      'Téléchargements actifs max';
  @override
  String get video_setting_torrent_active_seeds => 'Seeds actifs max';
  @override
  String get video_setting_torrent_anonymous => 'Mode anonyme';
  @override
  String get video_setting_torrent_antileech => 'Activer l\'anti-leech';
  @override
  String get video_setting_torrent_backend_embedded => 'Moteur intégré';
  @override
  String get video_setting_torrent_backend_qb => 'qBittorrent externe';
  @override
  String get video_setting_torrent_ban_progress_cheat =>
      'Bannir la triche de progression';
  @override
  String get video_setting_torrent_ban_relative_cheat =>
      'Bannir la triche relative de progression';
  @override
  String get video_setting_torrent_ban_time => 'Durée du bannissement (min)';
  @override
  String get video_setting_torrent_ban_time_hint => '0 = permanent';
  @override
  String get video_setting_torrent_connections_hint => '0 = défaut du moteur';
  @override
  String get video_setting_torrent_dht => 'DHT';
  @override
  String get video_setting_torrent_download_limit =>
      'Limite de téléchargement (Ko/s)';
  @override
  String get video_setting_torrent_encryption_disabled => 'Désactivé';
  @override
  String get video_setting_torrent_encryption_forced => 'Forcé';
  @override
  String get video_setting_torrent_encryption_prefer => 'Préféré';
  @override
  String get video_setting_torrent_limit_hint => '0 = illimité';
  @override
  String get video_setting_torrent_limit_lan =>
      'Appliquer les limites aux pairs LAN';
  @override
  String get video_setting_torrent_limit_lan_hint =>
      'Désactivé par défaut : les transferts avec les pairs sur votre réseau local ignorent les limites ci-dessus.';
  @override
  String get video_setting_torrent_listen_port => 'Port d\'écoute';
  @override
  String get video_setting_torrent_listen_port_hint => '0 = défaut (6881)';
  @override
  String get video_setting_torrent_lsd => 'Découverte locale de pairs (LSD)';
  @override
  String get video_setting_torrent_max_connections => 'Connexions max';
  @override
  String get video_setting_torrent_max_ip_ports => 'Ports max par IP';
  @override
  String get video_setting_torrent_memory_hint =>
      'Limiter la mémoire du moteur. 0 = auto (basé sur la RAM de l\'appareil).';
  @override
  String get video_setting_torrent_memory_limit => 'Limite mémoire (Mo)';
  @override
  String get video_setting_torrent_natpmp => 'Mappage de ports NAT-PMP';
  @override
  String get video_setting_torrent_section_antileech => 'Anti-leech';
  @override
  String get video_setting_torrent_section_session => 'Session';
  @override
  String get video_setting_torrent_seed_ratio_hint =>
      'Arrêter l\'envoi quand le ratio envoyé/téléchargé atteint cette valeur. 0 = illimité.';
  @override
  String get video_setting_torrent_seed_ratio_limit =>
      'Limite de ratio de seed';
  @override
  String get video_setting_torrent_seed_time_hint =>
      'Arrêter l\'envoi après cette durée de seeding. 0 = illimité.';
  @override
  String get video_setting_torrent_seed_time_limit =>
      'Limite de temps de seed (minutes)';
  @override
  String get video_setting_torrent_upload_enabled =>
      'Activer l\'envoi / seeding';
  @override
  String get video_setting_torrent_upload_enabled_hint =>
      'Désactivé par défaut. Partagez en retour après le téléchargement.';
  @override
  String get video_setting_torrent_upload_limit => 'Limite d\'envoi (Ko/s)';
  @override
  String get video_setting_torrent_upload_slots => 'Emplacements d\'envoi max';
  @override
  String get video_setting_torrent_upnp => 'Mappage de ports UPnP';
  @override
  String get video_setting_torrent_zero_default => '0 = défaut';
  @override
  String get video_setting_torrent_zero_off => '0 = désactivé';
  @override
  String get video_setting_youtube_quality => 'Qualité YouTube';
  @override
  String get video_setting_youtube_quality_hint =>
      'Démarrer les flux au niveau le plus élevé jusqu\'à cette cible ; Auto préfère une lecture fluide (codec compatible matériel, jusqu\'à 1080p)';
  @override
  String get video_settings_cat_audio => 'Audio';
  @override
  String get video_settings_cat_controls => 'Contrôles';
  @override
  String get video_settings_cat_danmaku => 'Danmaku';
  @override
  String get video_settings_cat_mpv => 'mpv';
  @override
  String get video_settings_cat_playback => 'Lecture';
  @override
  String get video_settings_cat_shaders => 'Amélioration de l\'image';
  @override
  String get video_settings_cat_subtitle => 'Sous-titres';
  @override
  String get video_settings_title => 'Paramètres vidéo';
  @override
  String get video_shader_anime4k_hint =>
      'Choisissez un préréglage à télécharger. Une fois téléchargé, cochez-le dans la liste pour l\'activer. Bureau uniquement.';
  @override
  String get video_shader_anime4k_title => 'Shaders Anime4K recommandés';
  @override
  String get video_shader_download_anime4k =>
      'Télécharger les préréglages Anime4K';
  @override
  String video_shader_download_done({required Object count}) =>
      '${count} shader(s) téléchargé(s)';
  @override
  String get video_shader_download_failed =>
      'Échec du téléchargement du shader';
  @override
  String video_shader_download_partial({
    required Object ok,
    required Object failed,
  }) => '${ok} shader(s) téléchargé(s), ${failed} échoué(s)';
  @override
  String get video_shader_download_url => 'Télécharger depuis un lien';
  @override
  String get video_shader_downloaded_label => 'Téléchargé';
  @override
  String get video_shader_downloading => 'Téléchargement des shaders…';
  @override
  String get video_shader_first_use_body =>
      '想让动画画面更清晰，可以进入“画质增强”并点击“下载 Anime4K 推荐着色器”。下载后在已安装列表里勾选即可启用。';
  @override
  String get video_shader_first_use_download => 'Télécharger et activer';
  @override
  String get video_shader_first_use_title => '试试 Anime4K 画质增强';
  @override
  String get video_shader_import => 'Importer un shader (.glsl)';
  @override
  String video_shader_import_done({required Object count}) =>
      '${count} shader(s) importé(s)';
  @override
  String get video_shader_import_from_mpv => 'Importer depuis le mpv local';
  @override
  String get video_shader_import_from_mpv_hint =>
      '自动搜索本机 mpv；未找到时可手动选择 mpv 目录。';
  @override
  String get video_shader_mobile_perf_hint =>
      'Sur téléphone, Moyen/Élevé/Ultra utilisent des chaînes Anime4K uniquement de défloutage : les passes d\'agrandissement sont retirées, car l\'écran n\'est pas plus grand que la source — elles coûteraient beaucoup de GPU et ralentiraient toute l\'application. L\'effet dépend encore du GPU de l\'appareil ; descendez d\'un cran en cas de saccades ou de chauffe.';
  @override
  String video_shader_mpv_dir_current({required Object path}) =>
      'Dossier mpv : ${path}';
  @override
  String get video_shader_mpv_dir_empty =>
      'Aucun shader trouvé dans ce dossier';
  @override
  String get video_shader_mpv_not_found => 'Aucun shader mpv local trouvé';
  @override
  String get video_shader_mpv_pick_title => 'Importer des shaders depuis mpv';
  @override
  String get video_shader_pick_mpv_dir => 'Specify mpv folder';
  @override
  String get video_shader_preset_mode_a_fast =>
      'Pour la plupart des animes 1080p. Charge GPU réduite.';
  @override
  String get video_shader_preset_mode_a_hq =>
      'Qualité maximale pour les animes 1080p. Nécessite un GPU puissant.';
  @override
  String get video_shader_preset_mode_b_fast =>
      'Pour les animes 720p anciens avec artefacts de rééchantillonnage.';
  @override
  String get video_shader_preset_mode_b_hq =>
      'Haute qualité pour les animes 720p anciens avec artefacts de rééchantillonnage. Nécessite un GPU puissant.';
  @override
  String get video_shader_preset_mode_c_fast =>
      'Pour les vieux animes SD (480p) avec bavure de compression.';
  @override
  String get video_shader_preset_mode_c_hq =>
      'Haute qualité pour les vieux animes SD (480p) avec bavure de compression. Nécessite un GPU puissant.';
  @override
  String get video_shader_quality_tier => 'Amélioration de la qualité';
  @override
  String get video_shader_section_advanced => 'Avancé (shaders manuels)';
  @override
  String get video_shader_section_installed => 'Shaders installés';
  @override
  String get video_shader_showing_original => 'Shaders désactivés (original)';
  @override
  String get video_shader_showing_shaded => 'Shaders activés';
  @override
  String get video_shader_tier_custom_hint =>
      'Sélection de shaders personnalisée. Choisissez un niveau ci-dessus pour revenir à un préréglage.';
  @override
  String get video_shader_tier_high => 'Élevé';
  @override
  String get video_shader_tier_high_hint =>
      'Anime4K HQ. Plus net ; idéal pour l\'animation, utilisable aussi en prise de vue réelle (gain plus faible). Nécessite un GPU haut milieu de gamme (NVIDIA RTX 4060 / RTX 3070, AMD RX 6700 XT / RX 7700 XT).';
  @override
  String get video_shader_tier_low => 'Faible';
  @override
  String get video_shader_tier_low_hint =>
      'Accentuation intégrée à mpv (ewa_lanczossharp). Fonctionne sur n\'importe quelle vidéo (animation et prise de vue réelle). Aucun téléchargement, charge GPU minimale. Choisissez cette option sur un GPU intégré ou ancien (NVIDIA GTX 1050, AMD RX 560, iGPU Intel).';
  @override
  String get video_shader_tier_medium => 'Moyen';
  @override
  String get video_shader_tier_medium_hint =>
      'Anime4K Fast. Idéal pour l\'animation, fonctionne aussi sur les films/séries en prise de vue réelle (gain plus faible). Tourne sur les GPU milieu de gamme (NVIDIA GTX 1660 / RTX 3050, AMD RX 6600).';
  @override
  String get video_shader_tier_off => 'Aucun';
  @override
  String get video_shader_tier_off_hint =>
      'Aucune amélioration. Lit la vidéo originale telle quelle.';
  @override
  String get video_shader_tier_ultra => 'Ultra';
  @override
  String get video_shader_tier_ultra_hint =>
      'Anime4K Mode A (UL, réseau ultra-large). Reconstruction Anime4K la plus puissante ; utilisable aussi en prise de vue réelle (gain plus faible). Nécessite un GPU haut de gamme (NVIDIA RTX 4080 / RTX 5090, AMD RX 7900 XTX). Choisissez un niveau inférieur si votre GPU est moins puissant.';
  @override
  String get video_shader_url_hint =>
      'Collez un lien de shader .glsl (ex. GitHub)';
  @override
  String get video_shaders_empty => 'Aucun shader importé pour l\'instant';
  @override
  String get video_source_grouping_change_hint =>
      'La prochaine analyse utilisera ce réglage. Les collections et les métadonnées existantes seront conservées.';
  @override
  String get video_source_grouping_folder => 'Par dossier';
  @override
  String get video_source_grouping_folder_hint =>
      'Crée une collection par sous-dossier de premier niveau. Les fichiers placés directement dans le dossier sélectionné partagent une collection. La récupération des métadonnées n’est pas disponible dans ce mode ; passez à « Par œuvre » pour l’utiliser.';
  @override
  String get video_source_grouping_mode => 'Organisation des vidéos';
  @override
  String get video_source_grouping_series => 'Par œuvre';
  @override
  String get video_source_grouping_series_hint =>
      'Identifie les œuvres et les épisodes à partir des noms de fichiers, puis recherche les métadonnées correspondantes.';
  @override
  String get video_source_scrape_action => 'Récupérer cette source';
  @override
  String get video_source_scrape_anidb_client => 'Nom de client AniDB';
  @override
  String get video_source_scrape_anidb_client_hint =>
      'Fushi inclut un client d’application enregistré. Laissez normalement ce champ vide ; indiquez un client enregistré personnalisé uniquement si nécessaire.';
  @override
  String get video_source_scrape_anidb_client_version =>
      'Version du client AniDB';
  @override
  String get video_source_scrape_anidb_client_version_hint =>
      'Seuls les clients personnalisés nécessitent leur propre version enregistrée ici. Fushi gère l’identité par défaut de l’application ; vos identifiants AniDB personnels restent nécessaires.';
  @override
  String get video_source_scrape_auto_after_scan => 'Récupérer après le scan';
  @override
  String get video_source_scrape_auto_after_scan_hint =>
      'Lancer automatiquement la récupération de métadonnées après le scan de cette source';
  @override
  String get video_source_scrape_background_hint =>
      'Les tâches continuent après la fermeture de cette fenêtre.';
  @override
  String get video_source_scrape_background_started =>
      'La récupération s\'exécute en arrière-plan';
  @override
  String get video_source_scrape_clear_all =>
      'Effacer tous les enregistrements de récupération';
  @override
  String get video_source_scrape_clear_all_busy =>
      'Un scan ou une récupération vidéo est encore en cours. Réessayez après la fin.';
  @override
  String get video_source_scrape_clear_all_completed =>
      'Tous les enregistrements de récupération vidéo ont été effacés.';
  @override
  String get video_source_scrape_clear_all_completed_protected =>
      'Enregistrements de récupération effacés. Les fichiers modifiés ou invérifiables ont été conservés.';
  @override
  String get video_source_scrape_clear_all_confirm_action => 'Effacer';
  @override
  String get video_source_scrape_clear_all_confirm_body =>
      'Cela supprime toutes les métadonnées récupérées et les liaisons de source, efface les résultats de Séries, et supprime les couvertures et fichiers NFO non modifiés générés par Fushi. Les fichiers vidéo, entrées de bibliothèque, groupes, progression de visionnage, sous-titres, tags, couvertures sélectionnées manuellement et fichiers associés modifiés par l\'utilisateur sont conservés. Cette action est irréversible.';
  @override
  String get video_source_scrape_clear_all_confirm_title =>
      'Effacer tous les enregistrements de récupération vidéo ?';
  @override
  String get video_source_scrape_clear_all_failed =>
      'Impossible d\'effacer tous les enregistrements de récupération. Aucun fichier utilisateur non vérifié n\'a été supprimé.';
  @override
  String get video_source_scrape_clear_all_hint =>
      'Supprimer toutes les métadonnées de récupération vidéo et les couvertures et fichiers NFO générés par Fushi.';
  @override
  String get video_source_scrape_clear_all_in_progress =>
      'Un nettoyage des enregistrements de récupération est déjà en cours.';
  @override
  String get video_source_scrape_confirmation_hint =>
      'Plusieurs correspondances exactes ont été trouvées. Choisissez l\'œuvre correcte pour enregistrer sa liaison au fournisseur.';
  @override
  String get video_source_scrape_confirmation_skip => 'Ignorer cette œuvre';
  @override
  String get video_source_scrape_confirmation_title =>
      'Confirmer la correspondance de métadonnées';
  @override
  String get video_source_scrape_enabled_toggle =>
      'Activer la récupération pour cette source';
  @override
  String get video_source_scrape_enabled_toggle_hint =>
      'Si désactivé, la récupération manuelle, après scan, après téléchargement et en arrière-plan ignore cette source.';
  @override
  String get video_source_scrape_external_overwrite =>
      'Autoriser l\'écrasement des fichiers protégés';
  @override
  String get video_source_scrape_external_overwrite_confirm_body =>
      'Ce lot peut remplacer des NFO/images tiers ou des fichiers Fushi que vous avez modifiés. Les fichiers média ne sont pas changés. Continuer ?';
  @override
  String get video_source_scrape_external_overwrite_confirm_title =>
      'Écraser les fichiers protégés ?';
  @override
  String get video_source_scrape_external_overwrite_hint =>
      'Les fichiers tiers ou modifiés par l\'utilisateur restent protégés jusqu\'à ce que vous confirmiez chaque lot de récupération manuelle à nouveau.';
  @override
  String get video_source_scrape_image_policy =>
      'Politique d\'écriture d\'images';
  @override
  String video_source_scrape_last_summary({
    required Object status,
    required Object succeeded,
    required Object pending,
    required Object failed,
  }) =>
      'Dernière récupération (${status}) : ${succeeded} réussis, ${pending} en attente, ${failed} échoués';
  @override
  String get video_source_scrape_list_load_failed =>
      'Impossible de charger cette liste. Réessayez.';
  @override
  String get video_source_scrape_list_reload => 'Recharger';
  @override
  String get video_source_scrape_locale => 'Langue des métadonnées';
  @override
  String get video_source_scrape_locale_hint =>
      'Langue préférée pour les données de repli et les détails complémentaires de TMDB. MAL utilise les titres et les textes originaux qu’il fournit.';
  @override
  String get video_source_scrape_manual_ambiguous =>
      'Plusieurs œuvres portent ce titre. Ouvrez l’onglet des œuvres en attente et sélectionnez l’élément précis à associer.';
  @override
  String get video_source_scrape_manual_by_id => 'Identifiant de l’œuvre';
  @override
  String get video_source_scrape_manual_by_title => 'Par titre';
  @override
  String get video_source_scrape_manual_current_work => 'Œuvre actuelle';
  @override
  String get video_source_scrape_manual_id_invalid =>
      'Saisissez un identifiant d’œuvre entier positif ou une URL officielle correspondant à la source et au type sélectionnés.';
  @override
  String get video_source_scrape_manual_query_hint =>
      'Recherchez par titre, ou choisissez MAL, film TMDB ou série TMDB et saisissez un identifiant ou une URL officielle. Sélectionnez un résultat pour l’appliquer à l’œuvre actuelle.';
  @override
  String get video_source_scrape_manual_search_action => 'Rechercher';
  @override
  String get video_source_scrape_manual_search_empty => 'Aucun résultat';
  @override
  String get video_source_scrape_manual_search_hint =>
      'Recherchez le fournisseur de métadonnées par titre, puis choisissez l\'œuvre correcte.';
  @override
  String get video_source_scrape_manual_search_title =>
      'Spécifier l\'œuvre manuellement';
  @override
  String get video_source_scrape_manual_tmdb_movie => 'Film TMDB';
  @override
  String get video_source_scrape_manual_tmdb_tv => 'Série TMDB';
  @override
  String get video_source_scrape_nfo_policy => 'Politique d\'écriture NFO';
  @override
  String get video_source_scrape_pending_empty =>
      'Aucune œuvre ne nécessite de correspondance manuelle.';
  @override
  String get video_source_scrape_pending_tab => 'À associer';
  @override
  String get video_source_scrape_pending_works =>
      'Œuvres en attente d\'identification';
  @override
  String get video_source_scrape_pending_works_hint =>
      'Ces entrées n\'ont pas encore d\'identité confirmée. Recherchez et choisissez la bonne œuvre pour les récupérer.';
  @override
  String get video_source_scrape_phase_applying =>
      'Enregistrement des métadonnées';
  @override
  String get video_source_scrape_phase_fetching =>
      'Récupération des métadonnées';
  @override
  String get video_source_scrape_phase_planning => 'Planification';
  @override
  String get video_source_scrape_phase_recognizing => 'Correspondance';
  @override
  String get video_source_scrape_phase_scanning => 'Scan de la source';
  @override
  String get video_source_scrape_phase_writing_sidecars =>
      'Écriture des fichiers associés';
  @override
  String get video_source_scrape_policy_missing_only =>
      'Uniquement si manquant';
  @override
  String get video_source_scrape_policy_overwrite =>
      'Mettre à jour les fichiers Fushi';
  @override
  String get video_source_scrape_policy_skip => 'Ne pas écrire';
  @override
  String video_source_scrape_progress({
    required Object phase,
    required Object current,
    required Object total,
  }) => '${phase} · ${current}/${total}';
  @override
  String get video_source_scrape_provider_policy =>
      'MAL (via Jikan) est la source principale de métadonnées ; TMDB sert de solution de repli.';
  @override
  String get video_source_scrape_queue_cancel_all =>
      'Annuler toutes les tâches';
  @override
  String get video_source_scrape_queue_remove => 'Retirer de la file';
  @override
  String get video_source_scrape_queue_submitted => 'Envoyée';
  @override
  String get video_source_scrape_queue_waiting => 'En attente';
  @override
  String get video_source_scrape_rescrape_source => 'Rerécupérer cette source';
  @override
  String get video_source_scrape_run_detail_title =>
      'Résultat de la récupération';
  @override
  String get video_source_scrape_run_no_issues =>
      'Aucun avertissement ou erreur n\'a été enregistré.';
  @override
  String get video_source_scrape_settings =>
      'Paramètres de récupération de source';
  @override
  String get video_source_scrape_status_interrupted => 'Interrompu';
  @override
  String get video_source_scrape_tasks_current => 'Tâche actuelle';
  @override
  String get video_source_scrape_tasks_empty => 'Aucune tâche de récupération';
  @override
  String get video_source_scrape_tasks_history => 'Tâches récentes';
  @override
  String get video_source_scrape_tasks_open => 'Tâches en arrière-plan';
  @override
  String get video_source_scrape_waiting_confirmation =>
      'En attente de votre confirmation';
  @override
  String get video_source_scrape_work_missing =>
      'Cette œuvre ne figure plus dans le plan actuel de la source (ses fichiers ont peut-être été renommés, déplacés ou supprimés). Rerécupérez la source pour actualiser la liste des œuvres en attente.';
  @override
  String get video_source_scrape_write_images =>
      'Écrire des fichiers d\'images';
  @override
  String get video_source_scrape_write_nfo => 'Écrire des fichiers NFO';
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
  String get video_stat_by_video => 'Par vidéo';
  @override
  String get video_stat_completed => 'Terminé';
  @override
  String get video_stat_no_data => 'Aucune statistique vidéo pour l\'instant';
  @override
  String get video_statistics => 'Statistiques vidéo';
  @override
  String video_subscription_group_release_count({required Object count}) =>
      '${count} sorties';
  @override
  String get video_subtitle_adjust_collapse => 'Réduire';
  @override
  String get video_subtitle_adjust_expand => 'Développer';
  @override
  String get video_subtitle_adjust_title => 'Réglages des sous-titres';
  @override
  String get video_subtitle_anchor_bottom => 'Bas';
  @override
  String get video_subtitle_anchor_top => 'Haut';
  @override
  String get video_subtitle_attach_book_missing =>
      'Cette vidéo n\'est pas dans votre bibliothèque, le sous-titre n\'a pas été attaché';
  @override
  String get video_subtitle_attach_playlist_hint =>
      'Ouvrez la playlist pour joindre un sous-titre à chaque épisode';
  @override
  String video_subtitle_attached_to_video({
    required Object title,
    required Object count,
  }) => 'Sous-titre joint à ${title} (${count} lignes)';
  @override
  String get video_subtitle_auto_align => 'Aligner les sous-titres';
  @override
  String video_subtitle_auto_align_done({required Object ms}) =>
      'Sous-titres alignés de ${ms} ms';
  @override
  String get video_subtitle_auto_align_low_confidence =>
      'Alignement automatique peu fiable (aucune correspondance vocale claire)';
  @override
  String get video_subtitle_auto_align_running => 'Alignement des sous-titres…';
  @override
  String get video_subtitle_collection_language =>
      'Langue de sous-titres par défaut';
  @override
  String get video_subtitle_collection_language_hint =>
      'S’applique à chaque épisode de cette collection. Vide = suivre la langue de la vidéo.';
  @override
  String get video_subtitle_collection_members_hint =>
      'Les épisodes sont associés par leur numéro dans le nom de fichier ; les packs de saison sont découpés automatiquement.';
  @override
  String get video_subtitle_collection_release_group => 'Version préférée';
  @override
  String get video_subtitle_collection_release_group_any => 'Toute version';
  @override
  String get video_subtitle_collection_release_group_hint =>
      'Les téléchargements groupés choisissent d’abord cette version pour que toute la saison partage la même synchronisation.';
  @override
  String get video_subtitle_collection_settings =>
      'Réglages de sous-titres de la collection';
  @override
  String get video_subtitle_color_note =>
      'Les couleurs des sous-titres se règlent dans le lecteur vidéo.';
  @override
  String video_subtitle_delay_osd({required Object ms}) =>
      'Synchro des sous-titres : ${ms} ms';
  @override
  String get video_subtitle_delete => 'Supprimer le fichier de sous-titres';
  @override
  String video_subtitle_delete_confirm({required Object path}) =>
      'Supprimer ce fichier de sous-titres du disque ? Cette action est irréversible.\n${path}';
  @override
  String video_subtitle_delete_failed({required Object label}) =>
      'Échec de la suppression du fichier de sous-titres : ${label}';
  @override
  String video_subtitle_deleted({required Object label}) =>
      'Fichier de sous-titres supprimé : ${label}';
  @override
  String get video_subtitle_drag_adjust_hint =>
      'Glissez un sous-titre vers le haut ou le bas pour le repositionner';
  @override
  String video_subtitle_error_with_code({
    required Object msg,
    required Object code,
  }) => '${msg} (HTTP ${code})';
  @override
  String get video_subtitle_filter_all => 'Tous';
  @override
  String get video_subtitle_filter_favorites => 'Favoris';
  @override
  String get video_subtitle_filter_favorites_empty =>
      'Aucune ligne mise en favori';
  @override
  String get video_subtitle_graphic_hint =>
      'Sous-titre graphique · affiché sur la vidéo · pas de recherche de mots';
  @override
  String video_subtitle_graphic_shown({required Object label}) =>
      'Sous-titre graphique affiché sur la vidéo (pas de recherche de mots) : ${label}';
  @override
  String get video_subtitle_import_failed => 'Échec de l\'import du sous-titre';
  @override
  String get video_subtitle_import_file =>
      'Importer un fichier de sous-titres…';
  @override
  String get video_subtitle_import_unsupported =>
      'Format de sous-titres non pris en charge';
  @override
  String get video_subtitle_list => 'Liste des sous-titres';
  @override
  String get video_subtitle_list_auto_scroll => 'Défilement automatique';
  @override
  String get video_subtitle_list_empty => 'Aucun sous-titre chargé';
  @override
  String get video_subtitle_list_export_favorites =>
      'Exporter les lignes favorites';
  @override
  String get video_subtitle_list_font_larger => 'Texte plus grand';
  @override
  String get video_subtitle_list_font_smaller => 'Texte plus petit';
  @override
  String get video_subtitle_list_jump => 'Aller à cette ligne';
  @override
  String get video_subtitle_list_loading => 'Chargement des sous-titres...';
  @override
  String get video_subtitle_list_search => 'Rechercher dans les sous-titres';
  @override
  String get video_subtitle_list_search_empty => 'Aucune ligne correspondante';
  @override
  String get video_subtitle_list_search_hint =>
      'Saisissez du texte pour filtrer les lignes';
  @override
  String video_subtitle_load_failed({required Object label}) =>
      'Impossible de charger ce sous-titre (piste graphique ou non prise en charge) : ${label}';
  @override
  String get video_subtitle_next_cue_align =>
      'Aligner la ligne suivante sur maintenant';
  @override
  String get video_subtitle_no_provider_hint =>
      'Entrez une clé API Jimaku ou activez OpenSubtitles sous Paramètres, Téléchargements, Fournisseurs de ressources et sous-titres externes.';
  @override
  String get video_subtitle_no_provider_title =>
      'Aucun fournisseur de sous-titres configuré';
  @override
  String get video_subtitle_no_source_configured =>
      'Aucun sous-titre trouvé · configurez une source de sous-titres en ligne';
  @override
  String get video_subtitle_off => 'Désactiver les sous-titres';
  @override
  String get video_subtitle_prev_cue_align =>
      'Aligner la ligne précédente sur maintenant';
  @override
  String video_subtitle_read_failed({required Object label}) =>
      'Impossible de lire ce fichier de sous-titres (endommagé ou vide) : ${label}';
  @override
  String get video_subtitle_remote_host => 'Sous-titre de l\'appareil appairé';
  @override
  String get video_subtitle_replay => 'Rejouer cette ligne';
  @override
  String get video_subtitle_scope_collection => 'Toute la collection';
  @override
  String get video_subtitle_scope_episode => 'Cet épisode';
  @override
  String get video_subtitle_search_open =>
      'Rechercher des sous-titres en ligne';
  @override
  String get video_subtitle_secondary_delay_follow_osd =>
      'Sync sous-titre secondaire : suit le principal';
  @override
  String video_subtitle_secondary_delay_osd({required Object ms}) =>
      'Sync sous-titre secondaire : ${ms} ms';
  @override
  String get video_subtitle_source_label => 'Source';
  @override
  String get video_subtitle_source_search_hint =>
      'Appuyez sur « Trouver des sous-titres » ci-dessus, puis choisissez une source ici.';
  @override
  String video_subtitle_switched({required Object label}) =>
      'Sous-titre : ${label}';
  @override
  String get video_subtitle_waveform_cue_list => 'Liste des sous-titres';
  @override
  String get video_subtitle_waveform_jump_playhead =>
      'Aller à la tête de lecture';
  @override
  String get video_subtitle_waveform_legend_cue => 'Cue de sous-titre';
  @override
  String get video_subtitle_waveform_legend_energy => 'Volume';
  @override
  String get video_subtitle_waveform_legend_playhead => 'Tête de lecture';
  @override
  String get video_subtitle_waveform_open => 'Alignement de forme d\'onde';
  @override
  String get video_subtitle_waveform_open_hint =>
      'Appuyez pour zoomer et aligner';
  @override
  String get video_subtitle_waveform_scroll_hint =>
      'Glissez pour parcourir la timeline ; utilisez les contrôles ci-dessous pour aligner';
  @override
  String get video_subtitle_waveform_unavailable =>
      'Forme d\'onde indisponible sur cet appareil';
  @override
  String get video_subtitle_waveform_zoom_in => 'Zoom avant';
  @override
  String get video_subtitle_waveform_zoom_out => 'Zoom arrière';
  @override
  String get video_subtitle_workbench_title => 'Sous-titres';
  @override
  String video_subtitle_youtube_auto_generated({required Object lang}) =>
      '${lang} (généré automatiquement)';
  @override
  String get video_subtitle_youtube_empty =>
      'Cette piste de sous-titres n\'a pas de texte';
  @override
  String video_subtitle_youtube_translated({required Object lang}) =>
      '${lang} (traduit)';
  @override
  String get video_torznab_add => 'Ajouter un indexeur';
  @override
  String get video_torznab_api_key => 'Clé API';
  @override
  String get video_torznab_categories => 'Catégories';
  @override
  String get video_torznab_categories_hint =>
      'ID de catégories numériques séparés par des virgules';
  @override
  String get video_torznab_endpoint => 'Point d\'accès';
  @override
  String get video_torznab_endpoint_hint =>
      'HTTPS requis sauf pour les adresses locales.';
  @override
  String get video_torznab_name => 'Nom';
  @override
  String get video_torznab_priority => 'Priorité';
  @override
  String get video_torznab_settings_hint =>
      'Configurez un ou plusieurs points Jackett, Prowlarr ou Torznab compatibles. Les secrets ne sont jamais exportés dans les sauvegardes ; ils peuvent se synchroniser vers les appareils appariés via Interconnect (désactivable dans les paramètres d\'Interconnect).';
  @override
  String get video_torznab_settings_title => 'Indexeurs Torznab';
  @override
  String video_watched_up_to({required Object time}) =>
      'Regardé jusqu\'à ${time}';
  @override
  String get video_windows_black_flash_notice_body =>
      'Sous Windows, la vidéo peut clignoter en noir sous forte charge GPU. Pour réduire la charge, essayez de désactiver l\'amélioration de qualité, la mise à l\'échelle sigmoïde et le debanding ci-dessus, ou passez le décodage matériel en Copy.';
  @override
  String get video_windows_black_flash_notice_title =>
      'Scintillement noir sous Windows ?';
  @override
  String get video_work_cast_crew => 'Distribution et équipe';
  @override
  String get video_work_content_rating => 'Classification';
  @override
  String get video_work_countries => 'Pays';
  @override
  String get video_work_details => 'Détails';
  @override
  String get video_work_external_ids => 'ID externes';
  @override
  String get video_work_extras => 'Extras';
  @override
  String get video_work_genres => 'Genres';
  @override
  String get video_work_keywords => 'Mots-clés';
  @override
  String get video_work_metadata_pending =>
      'Les métadonnées détaillées n\'ont pas encore été récupérées. Relancez cette source depuis les Sources, puis rouvrez l\'œuvre.';
  @override
  String get video_work_studios => 'Studios';
  @override
  String get video_work_trailers => 'Bandes-annonces';
  @override
  String get video_work_voice_roles => 'Doublage et personnages';
  @override
  String get view_illustrations => 'Illustrations';
  @override
  String get volume_button_page_turning =>
      'Tourner les pages avec les boutons de volume';
  @override
  String get volume_key_sentence_nav =>
      'Navigation par phrase avec les touches de volume';
  @override
  String get web_video_hide_native_subtitles =>
      'Masquer les sous-titres du site';
  @override
  String get web_video_hosting_builtin =>
      'Intégré (1080p ; super-résolution, captures et cartes disponibles)';
  @override
  String get web_video_hosting_menu => 'Mode de lecture';
  @override
  String get web_video_hosting_windowed =>
      'Fenêtre native (4K, DRM matériel ; les cartes sont mises en attente)';
  @override
  String get web_video_import_hint =>
      'Il s’agit d’une page web (pas d’un flux direct). Elle s’ouvrira dans le lecteur web intégré.';
  @override
  String get web_video_mine_queue_empty => 'Aucune carte en attente';
  @override
  String web_video_mine_queue_finished({
    required Object ok,
    required Object failed,
  }) => 'Cartes créées : ${ok}, échecs : ${failed}';
  @override
  String get web_video_mine_queue_run => 'Créer les cartes en attente';
  @override
  String web_video_mine_queue_running({
    required Object done,
    required Object total,
  }) => 'Création des cartes ${done}/${total}…';
  @override
  String get web_video_mine_queue_stop => 'Arrêter la création de cartes';
  @override
  String web_video_mine_queued({required Object count}) =>
      'Mis en attente pour la création de cartes (${count} en attente)';
  @override
  String web_video_mine_switch_builtin({required Object count}) =>
      'Passer en mode intégré pour créer ${count} cartes en attente';
  @override
  String get web_video_no_tracks => 'Aucun sous-titre capturé pour l’instant';
  @override
  String get web_video_track_live =>
      'Sous-titres en direct (capturés sur la page)';
  @override
  String get web_video_track_menu => 'Piste de sous-titres';
  @override
  String get wheel_page_turn_interval =>
      'Intervalle de changement de page à la molette';
  @override
  String get word_favorite_added => 'Mot ajouté aux favoris';
  @override
  String get word_favorite_removed => 'Mot retiré des favoris';
  @override
  String get yomitan_api_key => 'Clé API Yomitan (facultatif)';
  @override
  String get yomitan_api_server => 'Serveur API Yomitan';
  @override
  String get yomitan_api_server_hint =>
      'Permet aux clients yomitan-api d\'interroger les dictionnaires de Fushi (port 19633)';
  @override
  String get yomitan_api_server_started => 'Serveur API Yomitan démarré';
  @override
  String get yomitan_port_kill_action => 'Arrêter le processus et réessayer';
  @override
  String get yomitan_port_kill_confirm => 'Arrêter le processus';
  @override
  String yomitan_port_kill_confirm_message({required Object process}) =>
      'Le port est actuellement utilisé par : ${process}';
  @override
  String yomitan_port_kill_confirm_title({required Object port}) =>
      'Arrêter le processus utilisant le port ${port} ?';
  @override
  String yomitan_port_kill_failed({required Object process}) =>
      'Impossible d\'arrêter ${process}. Veuillez l\'arrêter manuellement, puis réessayez.';
  @override
  String yomitan_port_kill_protected({required Object process}) =>
      '${process} est un processus système critique — Fushi ne l\'arrêtera pas. Changez de port à la place.';
  @override
  String get yomitan_port_kill_self_instance =>
      'Ce processus est une autre instance en cours d\'exécution de cette application.';
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
      'Base de données audio indisponible. Sélectionnez à nouveau le fichier DB d’origine.';
  @override
  String get local_audio_file_reselect =>
      'Sélectionner à nouveau la base de données audio';
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
  String get reader_timer_show => 'Afficher le minuteur de lecture';
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
      'L\'appareil associé a refusé les identifiants de cet appareil — associez-le à nouveau pour reprendre la synchronisation.';
  @override
  String get sync_err_not_paired =>
      'Aucun appareil associé pour l\'instant — configurez d\'abord l\'association dans « Fushi Interconnect ».';
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
  String get settings_group_interface => 'Interface';
  @override
  String get settings_group_content => 'Content';
  @override
  String get settings_group_learning => 'Apprentissage';
  @override
  String get settings_group_connections => 'Connexions';
  @override
  String get settings_group_data => 'Data & device';
  @override
  String get settings_group_app => 'Application';
  @override
  String get settings_destination_appearance_interaction =>
      'Apparence et interactions';
  @override
  String get settings_destination_profile_presets => 'Préréglages';
  @override
  String get settings_destination_system_about => 'Système et à propos';
  @override
  String get settings_service_configured => 'Configuré';
  @override
  String get settings_service_not_configured => 'Non configuré';
  @override
  String get settings_service_builtin => 'Configuration intégrée';
  @override
  String get settings_anki_media => 'Médias des cartes';
  @override
  String get settings_downloads_advanced_title => 'Moteur et partage';
  @override
  String get settings_downloads_advanced_hint =>
      'Connexions, mémoire, découverte des pairs et protection';
  @override
  String get settings_downloads_routing_title => 'Téléchargements terminés';
  @override
  String get settings_downloads_routing_hint =>
      'Correspondance des chemins et source vidéo cible';
  @override
  String get settings_downloads_encryption_title => 'Chiffrement entre pairs';
  @override
  String get settings_service_disabled => 'Désactivé';
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
  String get storage_models_components => 'Modèles et composants';
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
  @override
  String get game_lookup_samples_auto_align => 'Align from screenshot';
  @override
  String get game_lookup_samples_auto_failed =>
      'No reliable regular grid was found. Use a complete multiline sample, keep the dialogue inside the frame, and exclude the speaker and buttons. Your draft has not changed.';
  @override
  String get game_lookup_samples_auto_success =>
      'Grid measured. Check that each box contains its character and that subsequent lines match before applying.';
  @override
  String get game_lookup_samples_auto_grid =>
      'Measured grid · no font adjustment required';
  @override
  String get game_lookup_samples_auto_multiline =>
      'Select or capture one complete sample with two or more lines; a short line cannot determine the wrap position.';
  @override
  String get game_lookup_samples_auto_unsupported =>
      'This sample contains character widths that the grid method cannot verify. Use manual layout for now.';
  @override
  String get game_lookup_samples_auto_hint =>
      'Frame the dialogue roughly and automatically measure character spacing, line spacing, and wrapping. Training samples contribute together; validation samples check the result.';
  @override
  String get game_lookup_samples_manual_layout => 'Manual layout (advanced)';
  @override
  String get game_lookup_samples_capture_failed =>
      'Could not capture a sample. Try again; if it still fails, keep this window open and report this message.';
  @override
  String get game_lookup_samples_auto_pending =>
      'Not automatically aligned yet. Let the yellow frame contain each line of dialogue, then select “Align from screenshot”. You do not need to adjust font size, character spacing, or click character centres first.';
  @override
  String get game_lookup_samples_auto_rows_missing =>
      'No clear dialogue lines were found. Check that the yellow frame contains the complete dialogue but not the speaker name or interface buttons.';
  @override
  String get game_lookup_samples_auto_inconsistent =>
      'The samples have inconsistent wrapping or character grids, so one layout cannot be applied. Check whether the highlighted sample captured the complete dialogue.';
  @override
  String get game_lookup_samples_auto_preview_failed =>
      'The automatic measurement did not pass the complete-dialogue check, so this result was not applied.';
  @override
  String game_lookup_samples_auto_sample_failed({
    required Object sample,
    required Object reason,
  }) => 'Sample ${sample}: ${reason}';
  @override
  String get game_lookup_samples_capture_changed =>
      'The dialogue or window changed while capturing. Keep a complete line visible, then capture again.';
  @override
  String get game_lookup_samples_capture_source =>
      'There is no dialogue available to capture. Confirm that the game is attached and dialogue text is being received.';
  @override
  String get game_lookup_samples_capture_window =>
      'Could not get the complete game image. Confirm that the game window is not minimized, then capture again.';
  @override
  String get game_lookup_samples_capture_overlay =>
      'Could not safely hide or restore the lookup layer. Close the calibration window, reattach to the game, and try again.';
  @override
  String get game_lookup_samples_capture_unsupported =>
      'This text contains a ruby format that is not supported yet. Capture a normal dialogue line instead.';
  @override
  String get game_lookup_samples_save_failed =>
      'The draft could not be written to disk. The current samples remain in this window; try saving again.';
}
