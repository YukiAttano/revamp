
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../features/store/store_screen.dart";
import "../../generated/l10n.dart";
import "../basic_route_data.dart";
import "../main_route.dart";
import "../route_transition_page.dart";

class StoreRoute extends UiRouteData with RouteTransitionPageBuilder<StoreScreen>{

  const StoreRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const StoreScreen();
  }

  @override
  IconData get icon => Icons.home;

  @override
  String get loc => location;

  @override
  String localize(S s) => s.screen_home;
}
