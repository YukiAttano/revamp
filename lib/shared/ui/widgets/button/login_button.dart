import "package:flutter/material.dart";
import "app_button.dart";

class LoginButton extends StatelessWidget {
  final void Function()? onLogin;

  const LoginButton({super.key, this.onLogin});

  @override
  Widget build(BuildContext context) {
    return AppButton.localized(
      emphasis: Emphasis.HIGH,
      onPressed: onLogin,
      localize: (s) => Text(s.login),
    );
  }
}
