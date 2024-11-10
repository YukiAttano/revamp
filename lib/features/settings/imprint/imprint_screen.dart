import "package:flutter/material.dart";

import "../../../shared/ui/widgets/layout/screen_view.dart";

class ImprintScreen extends StatelessWidget {
  const ImprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Impressum")),
      body: ScreenView(
        child: SingleChildScrollView(
          child: Text(
            _imprintText,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }

  static const String _imprintText = "";
}
