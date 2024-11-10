import "package:flutter/material.dart";

import "app_button.dart";


class ResetButton extends StatelessWidget {
  final void Function()? onPressed;

  const ResetButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppButton.localized(
      destructive: true,
      onPressed: onPressed,
      localize: (s) => Text(s.reset),
    );
  }
}
