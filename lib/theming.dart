import "package:animations/animations.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class Theming {
  static const Color _fallbackColor = Colors.green;

  late final ThemeData lightTheme = _getTheme(lightScheme);

  late final ThemeData darkTheme = _getTheme(darkScheme);

  final ColorScheme lightScheme;
  final ColorScheme darkScheme;

  Theming.fromScheme({required this.lightScheme, required this.darkScheme});

  Theming({Color primaryColor = _fallbackColor})
      : this.fromScheme(
          lightScheme: _getColorScheme(primaryColor, Brightness.light),
          darkScheme: _getColorScheme(primaryColor, Brightness.dark),
        );

  static ColorScheme _getColorScheme(Color primary, Brightness brightness) {
    return ColorScheme.fromSeed(
      seedColor: primary,
      brightness: brightness,
    );
  }

  ThemeData _getTheme(ColorScheme scheme) {
    return ThemeData(
      colorScheme: scheme,
      inputDecorationTheme: _getInputDecorationTheme(),
      navigationRailTheme: _getNavigationRailThemeData(scheme),
      navigationBarTheme: _getNavigationBarThemeData(scheme),
      //bottomNavigationBarTheme: _getBottomNavigationBarThemeData(scheme),
      tooltipTheme: _getTooltipThemeData(),
      appBarTheme: _getAppBarTheme(scheme),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: FadeThroughPageTransitionsBuilder(),
      }),
    );
  }

  InputDecorationTheme _getInputDecorationTheme() {
    return const InputDecorationTheme(
      border: OutlineInputBorder(),
    );
  }

  NavigationRailThemeData _getNavigationRailThemeData(ColorScheme scheme) {
    return NavigationRailThemeData(
      minExtendedWidth: 150,
      backgroundColor: scheme.secondaryContainer,
      indicatorColor: scheme.onSecondary,
    );
  }

  NavigationBarThemeData _getNavigationBarThemeData(ColorScheme scheme) {
    return NavigationBarThemeData(
      backgroundColor: scheme.secondaryContainer,
      indicatorColor: scheme.onSecondary,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      height: 50,
    );
  }

  BottomNavigationBarThemeData _getBottomNavigationBarThemeData(ColorScheme scheme) {
    return BottomNavigationBarThemeData(
      backgroundColor: scheme.secondaryContainer,
      selectedItemColor: scheme.onSecondaryContainer,
    );
  }

  TooltipThemeData _getTooltipThemeData() {
    return const TooltipThemeData(
      margin: EdgeInsets.symmetric(horizontal: 24),
    );
  }

  AppBarTheme _getAppBarTheme(ColorScheme scheme) {
    return AppBarTheme(
      // TabViews don't propagate the scroll-event to AppBar, so we disable the scrolled-under-effects and color
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle:
          scheme.brightness == Brightness.light ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
    );
  }

  Theming regenerateWith({ColorScheme? lightScheme, ColorScheme? darkScheme}) {
    return Theming.fromScheme(
      lightScheme: lightScheme ?? this.lightScheme,
      darkScheme: darkScheme ?? this.darkScheme,
    );
  }
}

/// resolves all necessary states with [color]
///
/// allows null just for convenience but should only be used with non-null values
WidgetStateProperty<Color?> resolveOpaqueColor(Color? color) {
  return WidgetStateProperty.resolveWith(
    (states) {
      if (states.isEmpty || states.contains(WidgetState.pressed)) {
        return color;
      }
      return null;
    },
  );
}
