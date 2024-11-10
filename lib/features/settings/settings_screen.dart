import "package:flutter/material.dart";

import "../../shared/ui/widgets/button/logout_button.dart";
import "../../shared/ui/widgets/localized.dart";
import "view/settings_view.dart";

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Localized(
          localize: (s) => Text(s.settings),
        ),
        actions: const <Widget>[
          LogoutButton(),
        ],
      ),
      body: const SettingsView(),
    );
  }
}
