import "dart:ui";

import "package:flutter/material.dart";

class LoadTileStyle extends ThemeExtension<LoadTileStyle> {
  final ShapeBorder? shape;
  final Color? tileColor;
  final double? elevation;
  final TextStyle? titleStyle;
  final TextStyle? leadingAndTrailingTextStyle;

  const LoadTileStyle({
    this.shape,
    this.tileColor,
    this.elevation,
    this.titleStyle,
    this.leadingAndTrailingTextStyle,
  });

  factory LoadTileStyle.fallback(BuildContext context) {
    //ThemeData theme = Theme.of(context);
    //ColorScheme scheme = theme.colorScheme;
    //TextTheme textTheme = theme.textTheme;

    ShapeBorder? shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(12));

    TextStyle? titleStyle;
    Color? color;
    double? elevation;

    return LoadTileStyle(
      shape: shape,
      tileColor: color,
      elevation: elevation,
      titleStyle: titleStyle,
    );
  }

  factory LoadTileStyle.primary(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;
    TextTheme textTheme = theme.textTheme;

    return LoadTileStyle(
      tileColor: scheme.primaryContainer,
      titleStyle: textTheme.bodyLarge?.copyWith(color: scheme.primary),
      leadingAndTrailingTextStyle: textTheme.labelSmall?.copyWith(color: scheme.primary),
    );
  }

  factory LoadTileStyle.of(BuildContext context, LoadTileStyle? style) {
    LoadTileStyle s = LoadTileStyle.fallback(context);
    s = s.merge(Theme.of(context).extension<LoadTileStyle>());
    s = s.merge(style);

    return s;
  }

  @override
  LoadTileStyle copyWith({
    ShapeBorder? shape,
    Color? tileColor,
    double? elevation,
    TextStyle? titleStyle,
    TextStyle? leadingAndTrailingTextStyle,
  }) {
    return LoadTileStyle(
      shape: shape ?? this.shape,
      tileColor: tileColor ?? this.tileColor,
      elevation: elevation ?? this.elevation,
      titleStyle: titleStyle ?? this.titleStyle,
      leadingAndTrailingTextStyle: leadingAndTrailingTextStyle ?? this.leadingAndTrailingTextStyle,
    );
  }

  LoadTileStyle merge(ThemeExtension<LoadTileStyle>? other) {
    if (other is! LoadTileStyle) return this;

    return copyWith(
      shape: other.shape,
      tileColor: other.tileColor,
      elevation: other.elevation,
      titleStyle: other.titleStyle,
      leadingAndTrailingTextStyle: other.leadingAndTrailingTextStyle,
    );
  }

  @override
  ThemeExtension<LoadTileStyle> lerp(covariant ThemeExtension<LoadTileStyle>? other, double t) {
    if (other is! LoadTileStyle) return this;

    return LoadTileStyle(
      shape: ShapeBorder.lerp(shape, other.shape, t),
      tileColor: Color.lerp(tileColor, other.tileColor, t),
      elevation: lerpDouble(elevation, other.elevation, t),
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t),
      leadingAndTrailingTextStyle: TextStyle.lerp(leadingAndTrailingTextStyle, other.leadingAndTrailingTextStyle, t),
    );
  }
}
