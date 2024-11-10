import "package:flutter/material.dart";

import "../../../../generated/l10n.dart";
import "../localized.dart";

class PasswordField extends StatelessWidget {
  final TextEditingController? controller;

  final TextInputAction action;
  final bool obscureText;

  const PasswordField({
    super.key,
    this.controller,
    this.obscureText = true,
    this.action = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) {
    return Localized(localize: (S s) {
      return TextField(
        controller: controller,
        textInputAction: action,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: s.password,
          hintText: s.message_enter_secure_password,
        ),
      );
    },);
  }
}
