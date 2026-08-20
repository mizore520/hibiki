import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fushi/src/lookup/gal_hook_text_overlay_controller.dart';
import 'package:fushi/src/platform/gal_hook_text_overlay_channel.dart';
import 'package:fushi/src/settings/settings_context.dart';
import 'package:fushi/utils.dart';

/// Settings row for the Windows Galgame Hook caption font.
///
/// The list is supplied by DirectWrite rather than a Dart-maintained allowlist;
/// the dialog adds a search field because a normal Windows installation can
/// contain hundreds of family names.
class GalHookTextFontFamilySetting extends StatefulWidget {
  const GalHookTextFontFamilySetting({
    required this.settingsContext,
    super.key,
  });

  final SettingsContext settingsContext;

  @override
  State<GalHookTextFontFamilySetting> createState() =>
      _GalHookTextFontFamilySettingState();
}

class _GalHookTextFontFamilySettingState
    extends State<GalHookTextFontFamilySetting> {
  List<String> _families = const <String>[];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    unawaited(_loadFamilies());
  }

  Future<void> _loadFamilies() async {
    try {
      final List<String> families =
          await GalHookTextOverlayChannel.getInstalledFontFamilies();
      if (!mounted) return;
      setState(() {
        _families = families;
        _loading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _loading = false);
    }
  }

  Future<void> _pickFamily() async {
    final SettingsContext settingsContext = widget.settingsContext;
    final String current = settingsContext.appModel.galHookTextFontFamily;
    final String? selected = await showAppDialog<String>(
      context: settingsContext.context,
      builder: (BuildContext context) => _GalHookTextFontFamilyDialog(
        families: _families,
        selected: current,
        loading: _loading,
      ),
    );
    if (selected == null || !mounted) return;
    await settingsContext.appModel.setGalHookTextFontFamily(selected);
    await GalHookTextOverlayController.instance
        .applyFontFamilyFromPreferences();
    if (!mounted) return;
    settingsContext.refresh();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final String family = widget.settingsContext.appModel.galHookTextFontFamily;
    return AdaptiveSettingsNavigationRow(
      title: t.gal_hook_text_font_family,
      subtitle: family.isEmpty ? t.icon_default : family,
      icon: Icons.font_download_outlined,
      showIcon: true,
      onTap: _pickFamily,
    );
  }
}

class _GalHookTextFontFamilyDialog extends StatefulWidget {
  const _GalHookTextFontFamilyDialog({
    required this.families,
    required this.selected,
    required this.loading,
  });

  final List<String> families;
  final String selected;
  final bool loading;

  @override
  State<_GalHookTextFontFamilyDialog> createState() =>
      _GalHookTextFontFamilyDialogState();
}

class _GalHookTextFontFamilyDialogState
    extends State<_GalHookTextFontFamilyDialog> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String normalizedQuery = _query.trim().toLowerCase();
    final List<String> families = widget.families
        .where(
          (String family) =>
              normalizedQuery.isEmpty ||
              family.toLowerCase().contains(normalizedQuery),
        )
        .toList(growable: false);
    return AlertDialog(
      title: Text(t.gal_hook_text_font_family),
      content: SizedBox(
        width: 520,
        height: 560,
        child: Column(
          children: <Widget>[
            TextField(
              controller: _searchController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: t.search_ellipsis,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _query.isEmpty
                    ? null
                    : IconButton(
                        tooltip: t.clear,
                        onPressed: () {
                          _searchController.clear();
                          setState(() => _query = '');
                        },
                        icon: const Icon(Icons.clear),
                      ),
              ),
              onChanged: (String value) => setState(() => _query = value),
            ),
            const SizedBox(height: 12),
            if (widget.loading && widget.families.isEmpty)
              const Expanded(
                child: Center(child: CircularProgressIndicator()),
              )
            else if (families.isEmpty)
              Expanded(child: Center(child: Text(t.no_results_found)))
            else
              Expanded(
                child: ListView.builder(
                  itemCount: families.length + 1,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0 && normalizedQuery.isEmpty) {
                      return FushiListItem(
                        selected: widget.selected.isEmpty,
                        leading: const Icon(Icons.settings_backup_restore),
                        title: Text(t.icon_default),
                        subtitle: const Text('Yu Gothic UI'),
                        onTap: () => Navigator.of(context).pop(''),
                      );
                    }
                    final int familyIndex =
                        normalizedQuery.isEmpty ? index - 1 : index;
                    if (familyIndex < 0 || familyIndex >= families.length) {
                      return const SizedBox.shrink();
                    }
                    final String family = families[familyIndex];
                    return FushiListItem(
                      selected: widget.selected == family,
                      title: Text(
                        family,
                        style: TextStyle(fontFamily: family),
                      ),
                      subtitle: Text(
                        'あいうえお かな漢字 ABC 123',
                        style: TextStyle(fontFamily: family),
                      ),
                      onTap: () => Navigator.of(context).pop(family),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(t.cancel),
        ),
      ],
    );
  }
}
