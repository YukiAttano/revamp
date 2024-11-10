import "dart:ui";

import "package:flutter/material.dart";
import "../../../logic/theme_data_surface_tint_extension.dart";

class CustomChipStyle extends ThemeExtension<CustomChipStyle> {
  final Color? color;
  final EdgeInsets? padding;
  final BoxBorder? border;
  final BorderRadius? borderRadius;
  final TextStyle? textStyle;
  final double? elevation;
  final Color? shadowColor;

  const CustomChipStyle({
    this.color,
    this.padding,
    this.border,
    this.borderRadius,
    this.textStyle,
    this.elevation,
    this.shadowColor,
  });

  factory CustomChipStyle.fallback(BuildContext context, {bool opaque = false}) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;

    Color? color = opaque ? scheme.surface : null;
    BoxBorder? border; //Border.all(color: scheme.secondaryFixedDim);
    BorderRadius? borderRadius = BorderRadius.circular(8);

    const EdgeInsets padding = EdgeInsets.all(2);
    TextStyle? textStyle = theme.textTheme.labelSmall?.copyWith(color: scheme.secondary);

    return CustomChipStyle(
      color: color,
      padding: padding,
      border: border,
      borderRadius: borderRadius,
      textStyle: textStyle,
      elevation: 0,
      shadowColor: Colors.black,
    );
  }

  factory CustomChipStyle.tinted(BuildContext context, {Color? color, required Color surfaceTint, double? elevation}) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;

    elevation ??= 0;

    Color c = color ?? scheme.surface;
    c = theme.applyCardSurfaceTint(surfaceTint: surfaceTint, color: c, elevation: elevation);

    return CustomChipStyle(
      color: c,
      elevation: elevation,
    );
  }

  factory CustomChipStyle.of(BuildContext context, {CustomChipStyle? style, bool opaque = false}) {
    CustomChipStyle s = CustomChipStyle.fallback(context, opaque: opaque);
    s = s.merge(Theme.of(context).extension<CustomChipStyle>());
    s = s.merge(style);

    return s;
  }

  @override
  CustomChipStyle copyWith({
    Color? color,
    EdgeInsets? padding,
    BoxBorder? border,
    BorderRadius? borderRadius,
    TextStyle? textStyle,
    double? elevation,
    Color? shadowColor,
  }) {
    return CustomChipStyle(
      color: color ?? this.color,
      padding: padding ?? this.padding,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      textStyle: textStyle ?? this.textStyle,
      elevation: elevation ?? this.elevation,
      shadowColor: shadowColor ?? this.shadowColor,
    );
  }

  CustomChipStyle merge(ThemeExtension<CustomChipStyle>? other) {
    if (other is! CustomChipStyle) return this;

    return copyWith(
      color: other.color,
      padding: other.padding,
      border: other.border,
      borderRadius: other.borderRadius,
      textStyle: other.textStyle,
      elevation: other.elevation,
      shadowColor: other.shadowColor,
    );
  }

  @override
  CustomChipStyle lerp(covariant ThemeExtension<CustomChipStyle>? other, double t) {
    if (other is! CustomChipStyle) return this;

    return CustomChipStyle(
      color: Color.lerp(color, other.color, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      border: BoxBorder.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      elevation: lerpDouble(elevation, other.elevation, t),
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t),
    );
  }
}
