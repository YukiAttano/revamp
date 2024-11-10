import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../features/settings/settings_screen.dart";
import "../../generated/l10n.dart";
import "../basic_route_data.dart";
import "../main_route.dart";
import "../route_transition_page.dart";

class SettingsRoute extends UiRouteData with RouteTransitionPageBuilder<SettingsScreen> {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsScreen();
  }

  @override
  String get loc => location;

  @override
  IconData get icon => Icons.settings;

  @override
  String localize(S s) => s.screen_settings;
}
