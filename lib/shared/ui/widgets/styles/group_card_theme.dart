
import "package:flutter/material.dart";
import "group_card_style.dart";

class GroupCardTheme extends ThemeExtension<GroupCardTheme> {
  final GroupCardStyle? focusedStyle;
  final GroupCardStyle? unfocusedStyle;

  const GroupCardTheme({
    this.focusedStyle,
    this.unfocusedStyle,
  });

  factory GroupCardTheme.fallback(BuildContext context) {

    ColorScheme scheme = Theme.of(context).colorScheme;

    GroupCardStyle unfocused = GroupCardStyle.fallback(context);
    GroupCardStyle focused = unfocused.merge(
      GroupCardStyle(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: scheme.inverseSurface),
        ),
        elevation: 4,
        color: scheme.surfaceContainer,
      ),
    );

    return GroupCardTheme(unfocusedStyle: unfocused, focusedStyle: focused);
  }

  @override
  GroupCardTheme copyWith({
    GroupCardStyle? unfocusedStyle,
    GroupCardStyle? focusedStyle,
  }) {
    return GroupCardTheme(
      focusedStyle: focusedStyle ?? this.focusedStyle,
      unfocusedStyle: unfocusedStyle ?? this.unfocusedStyle,
    );
  }

  GroupCardTheme merge(ThemeExtension<GroupCardTheme>? other) {
    if (other is! GroupCardTheme) return this;

    return copyWith(
      focusedStyle: focusedStyle?.merge(other.focusedStyle) ?? other.focusedStyle,
      unfocusedStyle: unfocusedStyle?.merge(other.unfocusedStyle) ?? other.unfocusedStyle,
    );
  }

  @override
  GroupCardTheme lerp(covariant ThemeExtension<GroupCardTheme>? other, double t) {
    if (other is! GroupCardTheme) return this;

    return GroupCardTheme(
      focusedStyle: focusedStyle?.lerp(other.focusedStyle, t),
      unfocusedStyle: unfocusedStyle?.lerp(other.unfocusedStyle, t),
    );
  }
}
