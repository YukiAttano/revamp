import "package:flutter/material.dart";

import "../localized.dart";
import "app_button.dart";

class AbortButton extends StatelessWidget {
  final void Function()? onPressed;

  const AbortButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      emphasis: Emphasis.HIGH,
      onPressed: onPressed,
      child: Localized(
        localize: (s) => Text(s.abort),
      ),
    );
  }
}
