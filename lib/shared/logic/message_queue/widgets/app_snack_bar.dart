
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class AppSnackBar extends SnackBar {

  const AppSnackBar({
    super.key,
    required super.content,
    super.backgroundColor,
    super.elevation,
    super.margin,
    super.padding,
    super.width,
    super.shape,
    super.hitTestBehavior,
    super.behavior,
    super.action,
    super.actionOverflowThreshold,
    super.showCloseIcon = kIsWeb,
    super.closeIconColor,
    super.duration,
    super.animation,
    super.onVisible,
    super.dismissDirection,
    super.clipBehavior,
});
}
