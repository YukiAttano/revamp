import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:go_router/go_router.dart";

import "../../features/authentication/ui/login/login_screen.dart";
import "../route_transition_page.dart";

class LoginRoute extends GoRouteData with RouteTransitionPageBuilder<LoginScreen> {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}
