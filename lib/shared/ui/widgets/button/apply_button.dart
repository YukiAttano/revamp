import "package:flutter/material.dart";

import "../localized.dart";
import "app_button.dart";

class ApplyButton extends StatelessWidget {
  final void Function()? onPressed;

  const ApplyButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: onPressed,
      child: Localized(
        localize: (s) => Text(s.apply),
      ),
    );
  }
}
