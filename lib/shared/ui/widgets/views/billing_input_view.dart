import "package:flutter/material.dart";

import "../layout/gap.dart";
import "../text_field/account_name_field.dart";
import "../text_field/account_number_field.dart";
import "../text_field/bankname_field.dart";
import "../text_field/swift_code_field.dart";

class BillingInputView extends StatelessWidget {
  final bool? enabled;
  final TextEditingController? bankNameController;
  final TextEditingController? swiftCodeController;
  final TextEditingController? accountNumberController;
  final TextEditingController? accountNameController;

  const BillingInputView({
    super.key,
    this.enabled,
    this.bankNameController,
    this.swiftCodeController,
    this.accountNumberController,
    this.accountNameController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BanknameField(
          controller: bankNameController,
          enabled: enabled,
        ),
        const Gap.small(),
        AccountNumberField(
          controller: accountNumberController,
          enabled: enabled,
        ),
        const Gap.small(),
        SwiftCodeField(
          controller: swiftCodeController,
          enabled: enabled,
        ),
        const Gap.small(),
        AccountNameField(
          controller: accountNameController,
          enabled: enabled,
          action: TextInputAction.done,
        ),
      ],
    );
  }
}
