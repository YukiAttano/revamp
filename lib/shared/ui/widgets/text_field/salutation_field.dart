import "package:flutter/material.dart";

import "../../../../generated/l10n.dart";
import "../localized.dart";

class SalutationField extends StatelessWidget {

  final TextEditingController? controller;
  final bool? enabled;
  final TextInputAction action;

  const SalutationField({super.key, this.enabled, this.controller, this.action = TextInputAction.next});

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (S s) {
        return TextFormField(
          controller: controller,
          enabled: enabled,
          textInputAction: action,
          decoration: InputDecoration(
            labelText: s.salutation,
          ),
        );
      },
    );
  }
}