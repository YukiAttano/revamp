import "package:flutter/material.dart";

class AdvancedCard extends StatelessWidget {
  final EdgeInsets childPadding;
  final Widget child;
  final Widget icon;
  final Widget trailing;
  final double? elevation;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final ImageProvider? backgroundImage;
  final double backgroundOpacity;
  final Color? color;
  final ShapeBorder? shape;
  final BoxDecoration decoration;
  final EdgeInsets? margin;

  const AdvancedCard({
    super.key,
    EdgeInsets? childPadding,
    required this.child,
    Widget? icon,
    Widget? trailing,
    this.elevation,
    this.onTap,
    this.onLongPress,
    this.backgroundImage,
    double? backgroundOpacity,
    this.color,
    this.shape,
    BoxDecoration? decoration,
    this.margin,
  })  : childPadding = childPadding ?? const EdgeInsets.all(12),
        icon = icon ?? const SizedBox.shrink(),
        trailing = trailing ?? const SizedBox.shrink(),
        backgroundOpacity = backgroundOpacity ?? 0.3,
        decoration = decoration ?? const BoxDecoration();

  @override
  Widget build(BuildContext context) {
    const BoxFit backgroundFit = BoxFit.fill;

    return Card(
      color: color,
      elevation: elevation,
      shape: shape,
      margin: margin,
      clipBehavior: Clip.hardEdge,
      child: Ink(
        decoration: backgroundImage != null
            ? decoration.copyWith(
                image: DecorationImage(
                  onError: _onImageError,
                  image: backgroundImage!,
                  opacity: backgroundOpacity,
                  fit: backgroundFit,
                ),
              )
            : decoration,
        child: InkWell(
          onTap: onTap,
          onLongPress: onLongPress,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: icon,
              ),
              Padding(
                padding: childPadding,
                child: child,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: trailing,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void _onImageError(Object e, StackTrace? s) {
    assert(() {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return true;
    }(), "Debug Print Image Exception");
  }
}
