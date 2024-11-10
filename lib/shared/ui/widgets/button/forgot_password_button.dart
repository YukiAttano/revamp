import "package:flutter/material.dart";
import "../../../../../generated/l10n.dart";
import "../localized.dart";


class ForgotPasswordButton extends StatelessWidget {
  final void Function()? onForgotPassword;

  const ForgotPasswordButton({super.key, this.onForgotPassword});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onForgotPassword,
      child: Localized(
        localize: (S s) {
          return Text(s.forgot_password);
        },
      ),
    );
  }
}
