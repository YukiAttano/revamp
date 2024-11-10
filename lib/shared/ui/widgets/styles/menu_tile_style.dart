import "dart:ui";

import "package:flutter/material.dart";

class MenuTileStyle extends ThemeExtension<MenuTileStyle> {
  final TextOverflow? overflow;
  
  final Color? tileColor;
  final ShapeBorder? shape;
  final int? maxLines;
  final TextStyle? titleStyle;

  const MenuTileStyle({
    this.overflow,
    this.tileColor,
    this.maxLines,
    this.titleStyle,
    this.shape,
  });

  factory MenuTileStyle.fallback(BuildContext context) {
    //ThemeData theme = Theme.of(context);
    //ColorScheme scheme = theme.colorScheme;
    //TextTheme textTheme = theme.textTheme;

    TextOverflow overflow = TextOverflow.ellipsis;
    ShapeBorder? shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(12));

    TextStyle? titleStyle;
    Color? color;

    int? maxLines = 2;

    return MenuTileStyle(
      overflow: overflow,
      tileColor: color,
      maxLines: maxLines,
      titleStyle: titleStyle,
      shape: shape,
    );
  }

  factory MenuTileStyle.primary(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;

    return MenuTileStyle(
      tileColor: scheme.primaryContainer,
      titleStyle: TextStyle(color: scheme.primary),
    );
  }

  @override
  MenuTileStyle copyWith({
    TextOverflow? overflow,
    EdgeInsets? titlePadding,
    Color? tileColor,
    int? maxLines,
    TextStyle? titleStyle,
    ShapeBorder? shape,
  }) {
    return MenuTileStyle(
      overflow: overflow ?? this.overflow,
      tileColor: tileColor ?? this.tileColor,
      maxLines: maxLines ?? this.maxLines,
      titleStyle: titleStyle ?? this.titleStyle,
      shape: shape ?? this.shape,
    );
  }

  MenuTileStyle merge(ThemeExtension<MenuTileStyle>? other) {
    if (other is! MenuTileStyle) return this;

    return copyWith(
      overflow: other.overflow,
      tileColor: other.tileColor,
      maxLines: other.maxLines,
      titleStyle: other.titleStyle,
      shape: other.shape,
    );
  }

  @override
  ThemeExtension<MenuTileStyle> lerp(covariant ThemeExtension<MenuTileStyle>? other, double t) {
    if (other is! MenuTileStyle) return this;

    return MenuTileStyle(
      overflow: other.overflow,
      tileColor: Color.lerp(tileColor, other.tileColor, t),
      maxLines: lerpDouble(maxLines, other.maxLines, t)?.toInt(),
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t),
      shape: ShapeBorder.lerp(shape, other.shape, t),
    );
  }

}
