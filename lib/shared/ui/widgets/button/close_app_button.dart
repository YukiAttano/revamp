import "package:flutter/material.dart";

import "../../../../../generated/l10n.dart";
import "../localized.dart";
import "app_button.dart";

class CloseAppButton extends StatelessWidget {
  final void Function()? onClose;

  const CloseAppButton({super.key, this.onClose});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      emphasis: Emphasis.HIGH,
      onPressed: onClose,
      child: Localized(
        localize: (S s) {
          return Text(s.close_app);
        },
      ),
    );
  }
}
