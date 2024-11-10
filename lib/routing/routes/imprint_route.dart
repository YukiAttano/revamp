import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../features/settings/imprint/imprint_screen.dart";
import "../../generated/l10n.dart";
import "../basic_route_data.dart";
import "../main_route.dart";
import "../route_transition_page.dart";

class ImprintRoute extends UiRouteData with RouteTransitionPageBuilder<ImprintScreen> {
  const ImprintRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ImprintScreen();
  }

  @override
  IconData get icon => Icons.info;

  @override
  String get loc => location;

  @override
  String localize(S s) => s.screen_imprint;
}
