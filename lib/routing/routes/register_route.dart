import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../features/authentication/ui/register/register_screen.dart";
import "../route_transition_page.dart";


class RegisterRoute extends GoRouteData with RouteTransitionPageBuilder<RegisterScreen>{
  const RegisterRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RegisterScreen();
  }
}
