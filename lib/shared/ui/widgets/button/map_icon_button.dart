import "package:flutter/material.dart";

class MapIconButton extends StatelessWidget {

  final void Function()? onPressed;

  const MapIconButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.location_on),
    );
  }
}
