import "package:flutter/material.dart";

import "app_button.dart";


class SaveButton extends StatelessWidget {
  final void Function()? onPressed;

  const SaveButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppButton.localized(
      onPressed: onPressed,
      localize: (s) => Text(s.save),
    );
  }
}
