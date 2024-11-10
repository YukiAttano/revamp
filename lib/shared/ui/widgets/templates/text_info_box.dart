import "package:flutter/material.dart";
import "../../../logic/theme_data_surface_tint_extension.dart";

class TextInfoBox extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final bool _isPressable;

  const TextInfoBox({super.key, required this.text, this.onPressed}) : _isPressable = onPressed != null;

  static const EdgeInsets _padding = EdgeInsets.all(12);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;

    Color? color = scheme.secondaryContainer;
    double? elevation;
    Color? disabledColor = theme.disabledColor;

    if (!_isPressable) {
      color = theme.applyCardSurfaceTint(surfaceTint: disabledColor);
      elevation = 0;
    }

    return Card(
      elevation: elevation,
      clipBehavior: _isPressable ? Clip.hardEdge : null,
      color: color,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: _padding,
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
