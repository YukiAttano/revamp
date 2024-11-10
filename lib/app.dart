import "package:dynamic_color/dynamic_color.dart";
import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "generated/l10n.dart";
import "routing/router.dart";
import "theming.dart";

class Revamp extends ConsumerWidget {
  const Revamp({super.key});

  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey();

  static final Theming _theme = Theming();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DynamicColorBuilder(builder: (lightDynamic, darkDynamic) {
      Theming theme = _theme.regenerateWith(
        lightScheme: lightDynamic,
        darkScheme: darkDynamic,
      );

      return MaterialApp.router(
        themeMode: ThemeMode.light,
        theme: theme.lightTheme,
        darkTheme: theme.darkTheme,
        scaffoldMessengerKey: scaffoldMessengerKey,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerConfig: ref.watch(router),
      );
    });
  }
}
