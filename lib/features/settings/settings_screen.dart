import "package:flutter/material.dart";

import "../../shared/ui/widgets/button/logout_button.dart";
import "../../shared/ui/widgets/layout/screen_view.dart";
import "../../shared/ui/widgets/localized.dart";
import "view/settings_view.dart";

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenView(
      viewPaddingAsListPadding: true,
      title: Localized(
        localize: (s) => Text(s.settings),
      ),
      actions: const <Widget>[
        LogoutButton(),
      ],
      child: const SettingsView(),
    );
  }
}
