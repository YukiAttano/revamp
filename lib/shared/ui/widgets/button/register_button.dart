import "package:flutter/material.dart";

import "app_button.dart";


class RegisterButton extends StatelessWidget {
  final void Function()? onRegister;

  const RegisterButton({super.key, this.onRegister});

  @override
  Widget build(BuildContext context) {
    return AppButton.localized(
      emphasis: Emphasis.HIGH,
      onPressed: onRegister,
      localize: (s) => Text(s.register),
    );
  }
}
