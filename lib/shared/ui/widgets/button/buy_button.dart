import "package:flutter/cupertino.dart";

import "app_button.dart";

class BuyButton extends StatelessWidget {
  final void Function()? onPressed;

  const BuyButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: onPressed,
      child: Text("Buy"),
    );
  }
}
