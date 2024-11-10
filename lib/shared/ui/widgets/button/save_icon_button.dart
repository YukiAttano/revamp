import "package:flutter/material.dart";

import "../localized.dart";

class SaveIconButton extends StatelessWidget {
  final void Function()? onPressed;

  const SaveIconButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (s) {
        return Tooltip(
          message: s.save,
          child: IconButton.filledTonal(
            onPressed: onPressed,
            icon: const Icon(Icons.save),
          ),
        );
      },
    );
  }
}
