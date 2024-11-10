
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../features/home/home_screen.dart";
import "../../generated/l10n.dart";
import "../basic_route_data.dart";
import "../main_route.dart";
import "../route_transition_page.dart";

class HomeRoute extends UiRouteData with RouteTransitionPageBuilder<HomeScreen>{

  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }

  @override
  IconData get icon => Icons.home;

  @override
  String get loc => location;

  @override
  String localize(S s) => s.screen_home;
}
