import "package:flutter/material.dart";

import "../../../routing/main_route.dart";
import "../../../routing/routes/imprint_route.dart";
import "../../../routing/routes/license_route.dart";
import "../../../routing/routes/privacy_route.dart";
import "settings_route_tile.dart";
import "settings_tile.dart";

class SettingsList extends StatelessWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        SettingsTile(
          icon: Icons.notifications,
          label: "Benachrichtigungen",
          onPressed: _onOpenNotifications,
        ),
        SettingsRouteTile(
          route: const PrivacyRoute(),
          onPressed: () => const PrivacyRoute().go(context),
        ),
        SettingsRouteTile(
          route: const ImprintRoute(),
          onPressed: () => const ImprintRoute().go(context),
        ),
        SettingsRouteTile(
          route: const LicenseRoute(),
          onPressed: () => const LicenseRoute().go(context),
        ),
      ],
    );
  }

  Future<void> _onOpenNotifications() async {}
}
