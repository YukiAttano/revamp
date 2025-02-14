import "package:flutter/material.dart";

import "../../../../generated/l10n.dart";
import "../localized.dart";

class CountryField extends StatelessWidget {

  final TextEditingController? controller;
  final bool? enabled;
  final TextInputAction action;

  const CountryField({super.key, this.controller, this.enabled, this.action = TextInputAction.next});

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (S s) {
        return TextFormField(
          controller: controller,
          textInputAction: action,
          enabled: enabled,
          decoration: InputDecoration(
            labelText: s.country,
          ),
        );
      },
    );
  }
}
