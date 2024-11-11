import "dart:ui";

import "package:flutter/material.dart";

import "../../../logic/theme_data_surface_tint_extension.dart";

class TagStyle extends ThemeExtension<TagStyle> {
  final EdgeInsets? padding;
  final Color? color;
  final double? elevation;
  final TextStyle? textStyle;
  final Color? iconColor;
  final ShapeBorder? shape;

  const TagStyle({
    this.padding,
    this.color,
    this.elevation,
    this.textStyle,
    this.iconColor,
    this.shape,
  });

  factory TagStyle.fallback(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;

    const EdgeInsets padding = EdgeInsets.all(4);
    ShapeBorder? shape = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(24)));
    double? elevation = 0;

    DefaultTextStyle defaultStyle = DefaultTextStyle.of(context);

    Color color = scheme.primaryContainer;
    Color textColor = scheme.onPrimaryContainer;
    Color iconColor = scheme.onPrimaryContainer;

    TextStyle textStyle = defaultStyle.style.copyWith(color: textColor);

    return TagStyle(
      elevation: elevation,
      color: color,
      textStyle: textStyle,
      padding: padding,
      iconColor: iconColor,
      shape: shape,
    );
  }

  factory TagStyle.error(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;

    DefaultTextStyle defaultStyle = DefaultTextStyle.of(context);

    Color color = scheme.errorContainer;
    Color textColor = scheme.onErrorContainer;
    Color iconColor = scheme.onErrorContainer;

    TextStyle textStyle = defaultStyle.style.copyWith(color: textColor);

    return TagStyle(
      color: color,
      textStyle: textStyle,
      iconColor: iconColor,
    );
  }

  factory TagStyle.rect() {
    const EdgeInsets padding = EdgeInsets.all(6);
    ShapeBorder? shape = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)));

    return TagStyle(
      padding: padding,
      shape: shape,
    );
  }

  factory TagStyle.of(BuildContext context, TagStyle? style) {
    TagStyle s = TagStyle.fallback(context);
    s = s.merge(Theme.of(context).extension<TagStyle>());
    s = s.merge(style);

    return s;
  }

  TagStyle disabled(BuildContext context) {
    assert(textStyle != null, "A textStyle must exist as lerping does only work with TextThemes from ThemeData");
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;

    Color? color = scheme.onSurface.withOpacity(0.12);
    Color? textColor = theme.disabledColor;
    Color? iconColor = theme.disabledColor;

    return copyWith(
      color: color,
      textStyle: textStyle!.copyWith(color: textColor),
      iconColor: iconColor,
    );
  }

  @override
  TagStyle copyWith({
    EdgeInsets? padding,
    Color? color,
    double? elevation,
    TextStyle? textStyle,
    Color? iconColor,
    ShapeBorder? shape,
  }) {
    return TagStyle(
      padding: padding ?? this.padding,
      color: color ?? this.color,
      elevation: elevation ?? this.elevation,
      textStyle: textStyle ?? this.textStyle,
      iconColor: iconColor ?? this.iconColor,
      shape: shape ?? this.shape,
    );
  }

  TagStyle merge(ThemeExtension<TagStyle>? other) {
    if (other is! TagStyle) return this;

    return copyWith(
      padding: other.padding,
      color: other.color,
      elevation: other.elevation,
      textStyle: other.textStyle,
      iconColor: other.iconColor,
      shape: other.shape,
    );
  }

  @override
  TagStyle lerp(covariant ThemeExtension<TagStyle>? other, double t) {
    if (other is! TagStyle) return this;

    return TagStyle(
      padding: EdgeInsets.lerp(padding, other.padding, t),
      color: Color.lerp(color, other.color, t),
      elevation: lerpDouble(elevation, other.elevation, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      iconColor: Color.lerp(iconColor, other.iconColor, t),
      shape: ShapeBorder.lerp(shape, other.shape, t),
    );
  }
}
