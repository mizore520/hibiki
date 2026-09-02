import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/i18n/strings.g.dart';
import 'package:fushi/src/pages/implementations/shortcut_settings_page.dart';
import 'package:fushi/src/shortcuts/input_binding.dart';
import 'package:fushi/src/shortcuts/shortcut_action.dart';
import 'package:fushi/src/shortcuts/shortcut_registry.dart';
import 'package:fushi/src/utils/misc/show_app_dialog.dart';

// TODO-1088: capturing and binding a mouse button in the shortcut assignment
// dialog. Exercises the real ShortcutBindingEditDialog capture region and the
// write-through path (updateBindingWithReassignments) via a host button, plus
// the mobile degradation (no capture entry, no crash).
void main() {
  setUp(() {
    LocaleSettings.setLocale(AppLocale.en);
  });

  // Sets the platform override for a testWidgets body. The caller MUST call
  // resetPlatform() before the body returns: testWidgets checks the foundation
  // debug vars are unset BEFORE addTearDown runs, so an addTearDown reset is too
  // late (throws "a foundation debug variable was changed by the test").
  void usePlatform(TargetPlatform platform) {
    debugDefaultTargetPlatformOverride = platform;
  }

  void resetPlatform() {
    debugDefaultTargetPlatformOverride = null;
  }

  FushiShortcutRegistry buildRegistry(TargetPlatform platform) =>
      FushiShortcutRegistry()..loadDefaults(platform);

  Future<void> pumpDialog(
    WidgetTester tester,
    FushiShortcutRegistry registry, {
    required ShortcutAction action,
    ShortcutBindingSet initial = const ShortcutBindingSet(),
  }) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          home: Scaffold(
            body: Center(
              child: ShortcutBindingEditDialog(
                action: action,
                registry: registry,
                initial: initial,
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> pumpDialogHost(
    WidgetTester tester,
    FushiShortcutRegistry registry, {
    required ShortcutAction action,
    ShortcutBindingSet initial = const ShortcutBindingSet(),
  }) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (BuildContext context) => ElevatedButton(
                onPressed: () async {
                  final ShortcutBindingEditResult? result =
                      await showAppDialog<ShortcutBindingEditResult>(
                        context: context,
                        builder: (BuildContext ctx) =>
                            ShortcutBindingEditDialog(
                              action: action,
                              registry: registry,
                              initial: initial,
                            ),
                      );
                  if (result == null) return;
                  registry.updateBindingWithReassignments(
                    action,
                    result.bindings,
                    removeKeyboardConflicts: result.keyboardReassignments,
                    removeGamepadConflicts: result.gamepadReassignments,
                    removeMouseConflicts: result.mouseReassignments,
                  );
                },
                child: const Text('open'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();
  }

  Future<void> pressMouseButton(WidgetTester tester, int buttons) async {
    final Offset center = tester.getCenter(
      find.byKey(const Key('shortcut_mouse_capture_region')),
    );
    final TestGesture gesture = await tester.startGesture(
      center,
      buttons: buttons,
      kind: PointerDeviceKind.mouse,
    );
    await tester.pumpAndSettle();
    await gesture.up();
    await tester.pumpAndSettle();
  }

  // 捕获用例统一挂在 readerDismissDict 上：reader 的 WebView mousedown 会经
  // `onPointerSeek` 解析 `resolveMouse`。首页、视频页和漫画页也有对应的 Flutter /
  // WebView 指针入口，因此它们的鼠标通道会在设置页真实开放。
  //
  // 按键选右键(2)/后退键(3)：reader 与 audiobook 同属一个 co-active 组，而
  // audiobookSeekToClickedSentence 默认占着中键(1)，中键会走冲突改绑流程而非直接
  // 落 chip。
  testWidgets(
    'desktop: capturing the right button records a MouseBinding(2) chip',
    (WidgetTester tester) async {
      usePlatform(TargetPlatform.windows);
      final FushiShortcutRegistry registry = buildRegistry(
        TargetPlatform.windows,
      );
      await pumpDialog(
        tester,
        registry,
        action: ShortcutAction.readerDismissDict,
      );

      await tester.tap(find.byKey(const Key('shortcut_add_mouse')));
      await tester.pumpAndSettle();
      expect(find.text(t.shortcut_press_mouse_button), findsOneWidget);

      await pressMouseButton(tester, kSecondaryMouseButton);

      expect(find.text(t.shortcut_mouse_right), findsOneWidget);
      expect(find.text(t.shortcut_press_mouse_button), findsNothing);

      resetPlatform();
    },
  );

  testWidgets('desktop: the primary (left) button records a MouseBinding(0)', (
    WidgetTester tester,
  ) async {
    usePlatform(TargetPlatform.windows);
    final FushiShortcutRegistry registry = buildRegistry(
      TargetPlatform.windows,
    );
    await pumpDialog(
      tester,
      registry,
      action: ShortcutAction.readerDismissDict,
    );

    await tester.tap(find.byKey(const Key('shortcut_add_mouse')));
    await tester.pumpAndSettle();

    await pressMouseButton(tester, kPrimaryMouseButton);

    expect(find.text(t.shortcut_mouse_left), findsOneWidget);
    expect(find.text(t.shortcut_press_mouse_button), findsNothing);

    resetPlatform();
  });

  testWidgets(
    'desktop: captured mouse binding is written through the registry',
    (WidgetTester tester) async {
      usePlatform(TargetPlatform.windows);
      final FushiShortcutRegistry registry = buildRegistry(
        TargetPlatform.windows,
      );
      await pumpDialogHost(
        tester,
        registry,
        action: ShortcutAction.readerDismissDict,
      );

      await tester.tap(find.byKey(const Key('shortcut_add_mouse')));
      await tester.pumpAndSettle();
      await pressMouseButton(tester, kBackMouseButton); // DOM button 3 = back

      await tester.tap(find.text('OK').last);
      await tester.pumpAndSettle();

      expect(
        registry.bindingsFor(ShortcutAction.readerDismissDict).mouseBindings,
        contains(const MouseBinding(3)),
      );

      resetPlatform();
    },
  );

  // 首页现在有真实的 Flutter Listener 消费 mouse 通道，历史绑定继续显示，同时允许
  // 用户直接补录其它鼠标按钮。
  testWidgets('desktop: home scope 显示历史鼠标绑定并保留捕获入口', (
    WidgetTester tester,
  ) async {
    usePlatform(TargetPlatform.windows);
    final FushiShortcutRegistry registry = buildRegistry(
      TargetPlatform.windows,
    );
    await pumpDialogHost(
      tester,
      registry,
      action: ShortcutAction.homeFocusSearch,
      initial: const ShortcutBindingSet(
        mouseBindings: <MouseBinding>[MouseBinding(2)],
      ),
    );

    expect(find.text(t.shortcut_mouse_right), findsOneWidget);
    expect(find.byKey(const Key('shortcut_add_mouse')), findsOneWidget);
    await tester.tap(find.byIcon(Icons.close).first);
    await tester.pumpAndSettle();

    await tester.tap(find.text('OK').last);
    await tester.pumpAndSettle();

    expect(
      registry.bindingsFor(ShortcutAction.homeFocusSearch).mouseBindings,
      isEmpty,
    );

    resetPlatform();
  });

  testWidgets(
    'mobile: no mouse capture entry and inherited bindings still render',
    (WidgetTester tester) async {
      usePlatform(TargetPlatform.android);
      final FushiShortcutRegistry registry = buildRegistry(
        TargetPlatform.android,
      );
      await pumpDialog(
        tester,
        registry,
        action: ShortcutAction.audiobookSeekToClickedSentence,
        initial: const ShortcutBindingSet(
          mouseBindings: <MouseBinding>[MouseBinding(1)],
        ),
      );

      expect(find.text(t.shortcut_mouse_middle), findsOneWidget);
      expect(find.byKey(const Key('shortcut_add_mouse')), findsNothing);
      expect(
        find.byKey(const Key('shortcut_mouse_capture_region')),
        findsNothing,
      );

      resetPlatform();
    },
  );
}
