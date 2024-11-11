
import "package:flutter/material.dart";

import "../button/app_button.dart";

class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  final ButtonStyle? mediumStyle;
  final ButtonStyle? mediumErrorStyle;
  final ButtonStyle? highStyle;
  final ButtonStyle? highErrorStyle;

  const AppButtonTheme({
    this.mediumStyle,
    this.mediumErrorStyle,
    this.highStyle,
    this.highErrorStyle,
  });

  factory AppButtonTheme.fallback(BuildContext context) {
    ColorScheme scheme = Theme.of(context).colorScheme;

    ButtonStyle? style = FilledButton.styleFrom(backgroundColor: scheme.primary, foregroundColor: scheme.onPrimary);
    ButtonStyle? errorStyle = FilledButton.styleFrom(backgroundColor: scheme.error, foregroundColor: scheme.onError);

    ButtonStyle? tonalStyle = FilledButton.styleFrom(backgroundColor: scheme.secondaryContainer, foregroundColor: scheme.onSecondaryContainer);
    ButtonStyle? errorTonalStyle = FilledButton.styleFrom(backgroundColor: scheme.errorContainer, foregroundColor: scheme.onErrorContainer);

    return AppButtonTheme(
      mediumStyle: tonalStyle,
      mediumErrorStyle: errorTonalStyle,
      highStyle: style,
      highErrorStyle: errorStyle,
    );
  }

  factory AppButtonTheme.of(BuildContext context, AppButtonTheme? style) {
    AppButtonTheme s = AppButtonTheme.fallback(context);
    s = s.merge(Theme.of(context).extension<AppButtonTheme>());
    s = s.merge(style);

    return s;
  }

  ButtonStyle? style({required Emphasis emphasis, required bool destructive}) {

    switch (emphasis) {
      case Emphasis.MEDIUM:
        if (destructive) return mediumErrorStyle;
        return mediumStyle;
      case Emphasis.HIGH:
        if (destructive) return highErrorStyle;
        return highStyle;
    }

  }

  @override
  AppButtonTheme copyWith({
    ButtonStyle? mediumStyle,
    ButtonStyle? mediumErrorStyle,
    ButtonStyle? highStyle,
    ButtonStyle? highErrorStyle,
  }) {
    return AppButtonTheme(
      mediumStyle: mediumStyle ?? this.mediumStyle,
      mediumErrorStyle: mediumErrorStyle ?? this.mediumErrorStyle,
      highStyle: highStyle ?? this.highStyle,
      highErrorStyle: highErrorStyle ?? this.highErrorStyle,
    );
  }

  AppButtonTheme merge(ThemeExtension<AppButtonTheme>? other) {
    if (other is! AppButtonTheme) return this;

    return copyWith(
      mediumStyle: other.mediumStyle?.merge(mediumStyle),
      mediumErrorStyle: other.mediumErrorStyle?.merge(mediumErrorStyle),
      highStyle: other.highStyle?.merge(highStyle),
      highErrorStyle: other.highErrorStyle?.merge(highErrorStyle),
    );
  }

  @override
  ThemeExtension<AppButtonTheme> lerp(covariant ThemeExtension<AppButtonTheme>? other, double t) {
    if (other is! AppButtonTheme) return this;

    return AppButtonTheme(
      mediumStyle: ButtonStyle.lerp(mediumStyle, other.mediumStyle, t),
      mediumErrorStyle: ButtonStyle.lerp(mediumErrorStyle, other.mediumErrorStyle, t),
      highStyle: ButtonStyle.lerp(highStyle, other.highStyle, t),
      highErrorStyle: ButtonStyle.lerp(highErrorStyle, other.highErrorStyle, t),
    );
  }
}
