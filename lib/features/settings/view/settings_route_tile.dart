import "package:flutter/material.dart";

import "../../../routing/basic_route_data.dart";
import "../../../shared/ui/widgets/localized.dart";
import "settings_tile.dart";

class SettingsRouteTile extends StatelessWidget {
  final UiRouteData route;

  final void Function()? onPressed;

  const SettingsRouteTile({super.key, required this.route, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (s) {
        return SettingsTile(
          icon: route.icon,
          label: route.localize(s),
          onPressed: onPressed,
        );
      },
    );
  }
}
