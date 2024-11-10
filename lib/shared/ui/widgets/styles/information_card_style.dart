import "dart:ui";

import "package:flutter/material.dart";

class InformationCardStyle extends ThemeExtension<InformationCardStyle> {
  final EdgeInsets? padding;
  final Color? color;
  final double? elevation;
  final TextStyle? textStyle;

  const InformationCardStyle({
    this.padding,
    this.color,
    this.elevation,
    this.textStyle,
  });

  factory InformationCardStyle.fallback(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;

    const EdgeInsets padding = EdgeInsets.all(12);
    double? elevation = 0;

    DefaultTextStyle defaultStyle = DefaultTextStyle.of(context);

    Color color = scheme.secondaryContainer;
    Color textColor = scheme.onSecondaryContainer;

    TextStyle textStyle = defaultStyle.style.copyWith(color: textColor);

    return InformationCardStyle(
      elevation: elevation,
      color: color,
      textStyle: textStyle,
      padding: padding,
    );
  }

  factory InformationCardStyle.error(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;

    DefaultTextStyle defaultStyle = DefaultTextStyle.of(context);

    Color color = scheme.errorContainer;
    Color textColor = scheme.onErrorContainer;

    TextStyle textStyle = defaultStyle.style.copyWith(color: textColor);

    return InformationCardStyle(
      color: color,
      textStyle: textStyle,
    );
  }

  factory InformationCardStyle.of(BuildContext context, InformationCardStyle? style) {
    InformationCardStyle s = InformationCardStyle.fallback(context);
    s = s.merge(Theme.of(context).extension<InformationCardStyle>());
    s = s.merge(style);

    return s;
  }

  @override
  InformationCardStyle copyWith({
    EdgeInsets? padding,
    EdgeInsets? titlePadding,
    Color? color,
    double? elevation,
    TextStyle? textStyle,
    ShapeBorder? shape,
  }) {
    return InformationCardStyle(
      padding: padding ?? this.padding,
      color: color ?? this.color,
      elevation: elevation ?? this.elevation,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  InformationCardStyle merge(ThemeExtension<InformationCardStyle>? other) {
    if (other is! InformationCardStyle) return this;

    return copyWith(
      padding: other.padding,
      color: other.color,
      elevation: other.elevation,
      textStyle: other.textStyle,
    );
  }

  @override
  InformationCardStyle lerp(covariant ThemeExtension<InformationCardStyle>? other, double t) {
    if (other is! InformationCardStyle) return this;

    return InformationCardStyle(
      padding: EdgeInsets.lerp(padding, other.padding, t),
      color: Color.lerp(color, other.color, t),
      elevation: lerpDouble(elevation, other.elevation, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }
}
