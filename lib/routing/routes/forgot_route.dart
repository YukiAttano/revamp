import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../features/authentication/ui/forgot/forgot_screen.dart";
import "../route_transition_page.dart";

class ForgotRoute extends GoRouteData with RouteTransitionPageBuilder<ForgotScreen> {
  const ForgotRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ForgotScreen();
  }
}
