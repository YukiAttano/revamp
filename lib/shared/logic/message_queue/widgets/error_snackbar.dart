import "package:flutter/material.dart";

import "../../../ui/widgets/localized.dart";
import "../../localizable.dart";
import "app_snack_bar.dart";

class ErrorSnackbar extends AppSnackBar {
  ErrorSnackbar({super.key, required BuildContext context, required String message})
      : super(
          backgroundColor: Theme.of(context).colorScheme.error,
          content: _SnackbarContent(child: Text(message)),
        );

  ErrorSnackbar.localize({
    super.key,
    required BuildContext context,
    required Localizable<String> message,
  }) : super(
          backgroundColor: Theme.of(context).colorScheme.error,
          content: _SnackbarContent(
            child: Localized(localize: (s) => Text(message.localize(s))),
          ),
        );
}

class _SnackbarContent extends StatelessWidget {
  final Widget child;

  const _SnackbarContent({required this.child});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle? style = theme.textTheme.bodyMedium;
    style = style?.copyWith(color: theme.colorScheme.onError);

    return DefaultTextStyle(
      style: style ?? DefaultTextStyle.of(context).style,
      child: child,
    );
  }
}
