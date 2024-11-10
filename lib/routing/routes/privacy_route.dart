import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../features/settings/privacy/privacy_screen.dart";
import "../../generated/l10n.dart";
import "../basic_route_data.dart";
import "../main_route.dart";
import "../route_transition_page.dart";


class PrivacyRoute extends UiRouteData with RouteTransitionPageBuilder<PrivacyScreen>{
  const PrivacyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PrivacyScreen();
  }

  @override
  IconData get icon => Icons.policy;

  @override
  String get loc => location;

  @override
  String localize(S s) => s.screen_privacy;
}
