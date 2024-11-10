import "package:flutter/material.dart";
import "package:flutter/services.dart";

import "../../../../generated/l10n.dart";
import "../localized.dart";

class GenderField extends StatelessWidget {

  final TextEditingController? controller;
  final bool? enabled;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final TextInputAction action;

  const GenderField({super.key, this.enabled, this.controller, this.maxLength, this.maxLengthEnforcement, this.action = TextInputAction.next});

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (S s) {
        return TextFormField(
          controller: controller,
          maxLength: maxLength,
          maxLengthEnforcement: maxLengthEnforcement,
          enabled: enabled,
          textInputAction: action,
          decoration: InputDecoration(
            labelText: s.gender,
          ),
        );
      },
    );
  }
}
