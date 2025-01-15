import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "routes/doom_route.dart";
import "routes/forgot_route.dart";
import "routes/store_route.dart";
import "routes/imprint_route.dart";
import "routes/license_route.dart";
import "routes/login_route.dart";
import "routes/privacy_route.dart";
import "routes/product_route.dart";
import "routes/register_route.dart";
import "routes/settings_route.dart";
import "shell/navigation_shell.dart";

part "main_route.g.dart";

@TypedShellRoute<MainRoute>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<LoginRoute>(path: "/login"),
    TypedGoRoute<RegisterRoute>(path: "/register"),
    TypedGoRoute<ForgotRoute>(path: "/forgot"),
    TypedShellRoute<NavigationShell>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<StoreRoute>(path: "/store"),
        TypedGoRoute<DoomRoute>(path: "/doom"),
        TypedGoRoute<ProductRoute>(path: "/product"),
        TypedGoRoute<SettingsRoute>(
          path: "/settings",
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<PrivacyRoute>(path: "privacy"),
            TypedGoRoute<ImprintRoute>(path: "imprint"),
            TypedGoRoute<LicenseRoute>(path: "license"),
          ],
        ),
      ],
    ),
  ],
)
class MainRoute extends ShellRouteData {
  const MainRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return navigator;
  }
}
