import "package:flutter/material.dart";

import "../../../../generated/l10n.dart";
import "../localized.dart";

class Phone2Field extends StatelessWidget {

  final TextEditingController? controller;
  final bool? enabled;
  final TextInputAction action;

  const Phone2Field({super.key, this.enabled, this.controller, this.action = TextInputAction.next});

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (S s) {
        return TextFormField(
          controller: controller,
          enabled: enabled,
          textInputAction: action,
          decoration: InputDecoration(
            labelText: s.phone_number_2,
            hintText: s.phone_number_2_hint,
          ),
        );
      },
    );
  }
}
