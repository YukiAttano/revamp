import "package:flutter/cupertino.dart";

import "app_button.dart";

class AskButton extends StatelessWidget {
  final void Function()? onPressed;

  const AskButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: onPressed,
      child: Text("Ask"),
    );
  }
}
