import "package:flutter/material.dart";

import "../../../../generated/l10n.dart";
import "../localized.dart";

class AccountNameField extends StatelessWidget {

  final TextEditingController? controller;
  final bool? enabled;
  final TextInputAction action;

  const AccountNameField({super.key, this.controller, this.enabled, this.action = TextInputAction.next});

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (S s) {
        return TextFormField(
          controller: controller,
          enabled: enabled,
          textInputAction: action,
          decoration: InputDecoration(
            labelText: s.account_name,
          ),
        );
      },
    );
  }
}
