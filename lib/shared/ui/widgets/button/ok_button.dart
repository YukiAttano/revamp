import "package:flutter/material.dart";

import "app_button.dart";

class OkButton extends StatelessWidget {
  final void Function()? onPressed;

  const OkButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppButton.localized(
      emphasis: Emphasis.HIGH,
      onPressed: onPressed,
      localize: (s) => Text(s.ok),
    );
  }
}
