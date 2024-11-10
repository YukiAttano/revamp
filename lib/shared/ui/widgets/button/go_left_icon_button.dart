import "package:flutter/material.dart";

class GoLeftIconButton extends StatelessWidget {
  final void Function()? onPressed;

  const GoLeftIconButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }
}
