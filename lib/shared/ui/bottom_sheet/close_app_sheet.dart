import "dart:io";

import "package:flutter/material.dart";

import "../widgets/button/close_app_button.dart";

Future<void> showCloseModalSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return const CloseAppSheet();
    },
  );
}

class CloseAppSheet extends StatelessWidget {
  const CloseAppSheet({super.key});

  static const EdgeInsets _modalPadding = EdgeInsets.only(top: 12, bottom: 12);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      showDragHandle: false,
      enableDrag: false,
      onClosing: _emptyFunction,
      builder: (BuildContext context) {
        return const Padding(
          padding: _modalPadding,
          child: CloseAppButton(
            onClose: _closeApp,
          ),
        );
      },
    );
  }

  static void _emptyFunction() {}

  static Never _closeApp() {
    exit(0);
  }
}
