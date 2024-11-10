import "package:flutter/material.dart";
import "../../../../../generated/l10n.dart";
import "../localized.dart";


class CreateAccountButton extends StatelessWidget {
  final void Function()? onCreateAccount;

  const CreateAccountButton({super.key, this.onCreateAccount});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onCreateAccount,
      child: Localized(
        localize: (S s) {
          return Text(s.create_account);
        },
      ),
    );
  }
}
