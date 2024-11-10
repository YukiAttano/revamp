import "package:flutter/material.dart";

import "app_button.dart";

class ResetPasswordButton extends StatelessWidget {
  final void Function()? onResetPassword;

  const ResetPasswordButton({super.key, this.onResetPassword});

  @override
  Widget build(BuildContext context) {
    return AppButton.localized(
      onPressed: onResetPassword,
      localize: (s) => Text(s.request_password),
    );
  }
}
