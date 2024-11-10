import "package:flutter/material.dart";

import "../../../shared/ui/widgets/layout/screen_view.dart";

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Datenschutzbestimmungen")),
      body: ScreenView(
        child: SingleChildScrollView(
          child: Text(
            _loremIpsum,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }

  static const String _loremIpsum = "";
}
