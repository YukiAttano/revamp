import "dart:ui";

import "package:flutter/material.dart";

class GroupCardStyle extends ThemeExtension<GroupCardStyle> {
  final EdgeInsets? padding;
  final EdgeInsets? titlePadding;
  final Color? color;
  final double? elevation;
  final TextStyle? titleStyle;
  final ShapeBorder? shape;

  const GroupCardStyle({
    this.padding,
    this.titlePadding,
    this.color,
    this.elevation,
    this.titleStyle,
    this.shape,
  });

  factory GroupCardStyle.fallback(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;
    TextTheme textTheme = theme.textTheme;

    ShapeBorder? shape;

    EdgeInsets padding = const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 12);
    EdgeInsets? titlePadding;

    TextStyle? titleStyle = textTheme.labelLarge;
    Color? color = scheme.surface;

    double? elevation = 0;

    return GroupCardStyle(
      padding: padding,
      titlePadding: titlePadding,
      color: color,
      elevation: elevation,
      titleStyle: titleStyle,
      shape: shape,
    );
  }

  @override
  GroupCardStyle copyWith({
    EdgeInsets? padding,
    EdgeInsets? titlePadding,
    Color? color,
    double? elevation,
    TextStyle? titleStyle,
    ShapeBorder? shape,
  }) {
    return GroupCardStyle(
      padding: padding ?? this.padding,
      titlePadding: titlePadding ?? this.titlePadding,
      color: color ?? this.color,
      elevation: elevation ?? this.elevation,
      titleStyle: titleStyle ?? this.titleStyle,
      shape: shape ?? this.shape,
    );
  }

  GroupCardStyle merge(ThemeExtension<GroupCardStyle>? other) {
    if (other is! GroupCardStyle) return this;

    return copyWith(
      padding: other.padding,
      titlePadding: other.titlePadding,
      color: other.color,
      elevation: other.elevation,
      titleStyle: other.titleStyle,
      shape: other.shape,
    );
  }

  @override
  GroupCardStyle lerp(covariant ThemeExtension<GroupCardStyle>? other, double t) {
    if (other is! GroupCardStyle) return this;

    return GroupCardStyle(
      padding: EdgeInsets.lerp(padding, other.padding, t),
      titlePadding: EdgeInsets.lerp(titlePadding, other.titlePadding, t),
      color: Color.lerp(color, other.color, t),
      elevation: lerpDouble(elevation, other.elevation, t),
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t),
      shape: ShapeBorder.lerp(shape, other.shape, t),
    );
  }
}
