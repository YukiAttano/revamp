import "package:flutter/material.dart";

import "../../../../../generated/l10n.dart";
import "../localized.dart";
import "../styles/app_button_theme.dart";

enum Emphasis {
  MEDIUM,
  HIGH;
}

class AppButton extends StatelessWidget {
  final Emphasis emphasis;
  final bool destructive;
  final AppButtonTheme? style;
  final void Function()? onPressed;
  final Widget child;

  const AppButton({
    super.key,
    Emphasis? emphasis,
    bool? destructive,
    this.style,
    this.onPressed,
    required this.child,
  })  : emphasis = emphasis ?? Emphasis.MEDIUM,
        destructive = destructive ?? false;

  AppButton.localized({
    Key? key,
    Emphasis? emphasis,
    bool? destructive,
    AppButtonTheme? style,
    void Function()? onPressed,
    required Widget Function(S s) localize,
  }) : this(
          key: key,
          child: Localized(localize: localize),
          emphasis: emphasis,
          destructive: destructive,
          style: style,
          onPressed: onPressed,
        );

  @override
  Widget build(BuildContext context) {
    AppButtonTheme t = AppButtonTheme.of(context, style);

    DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);

    ButtonStyle? s = t.style(emphasis: emphasis, destructive: destructive);

    return DefaultTextStyle(
      style: defaultTextStyle.style,
      maxLines: 1,
      child: FilledButton.tonal(
        style: s,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
