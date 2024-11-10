import "package:flutter/material.dart";

import "../../../../generated/l10n.dart";
import "../localized.dart";

class UsernameField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? enabled;
  final TextInputAction action;

  const UsernameField({super.key, this.enabled, this.controller, this.action = TextInputAction.next});

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (S s) {
        return TextFormField(
          controller: controller,
          enabled: enabled,
          textAlign: TextAlign.center,
          textInputAction: action,
          decoration: InputDecoration(
            label: Center(child: Text(s.username)),
            border: const UnderlineInputBorder(),
            floatingLabelAlignment: FloatingLabelAlignment.center,
          ),
        );
      },
    );
  }
}
