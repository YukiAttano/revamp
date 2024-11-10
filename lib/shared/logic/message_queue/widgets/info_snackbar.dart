import "package:flutter/material.dart";

import "../../../ui/widgets/localized.dart";
import "../../localizable.dart";
import "app_snack_bar.dart";

class InfoSnackbar extends AppSnackBar {
  InfoSnackbar({super.key, required String message})
      : super(
          content: _SnackbarContent(child: Text(message)),
        );

  InfoSnackbar.localize({super.key, required Localizable<String> message})
      : super(
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
    return child;
  }
}
