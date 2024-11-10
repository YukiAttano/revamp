import "package:flutter/material.dart";

class InfoIconButton extends StatelessWidget {

  final void Function()? onPressed;

  const InfoIconButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.info_outline),
    );
  }
}
