
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../features/doom/ui/doom_screen.dart";
import "../../features/home/store_screen.dart";
import "../../generated/l10n.dart";
import "../basic_route_data.dart";
import "../main_route.dart";
import "../route_transition_page.dart";

class DoomRoute extends UiRouteData with RouteTransitionPageBuilder<DoomScreen>{

  const DoomRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DoomScreen();
  }

  @override
  IconData get icon => Icons.shopping_bag_outlined;

  @override
  String get loc => location;

  @override
  String localize(S s) => s.screen_doom;
}
