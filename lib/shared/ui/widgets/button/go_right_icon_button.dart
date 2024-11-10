import "package:flutter/material.dart";

class GoRightIconButton extends StatelessWidget {
  final void Function()? onPressed;

  const GoRightIconButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_forward_ios),
    );
  }
}
