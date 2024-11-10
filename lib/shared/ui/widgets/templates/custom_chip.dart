import "package:flutter/material.dart";

import "../styles/custom_chip_style.dart";

class CustomChip extends StatelessWidget {
  final Widget child;
  final CustomChipStyle? style;
  final bool opaque;

  const CustomChip({super.key, required this.child, this.style, bool? opaque}) : opaque = opaque ?? false;

  @override
  Widget build(BuildContext context) {
    CustomChipStyle s = CustomChipStyle.of(context, style: style, opaque: opaque);

    DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
    TextStyle textStyle = s.textStyle ?? defaultTextStyle.style;

    return AnimatedPhysicalModel(
      duration: kThemeChangeDuration,
      color: Colors.transparent,
      elevation: s.elevation ?? 0,
      shadowColor: Colors.black,
      borderRadius: s.borderRadius,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: s.border,
          color: s.color,
          borderRadius: s.borderRadius,
        ),
        child: Padding(
          padding: s.padding ?? EdgeInsets.zero,
          child: DefaultTextStyle(
            style: textStyle,
            child: child,
          ),
        ),
      ),
    );
  }
}
