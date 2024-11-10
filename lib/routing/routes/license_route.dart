import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "../../features/settings/imprint/imprint_screen.dart";
import "../../features/settings/license/license_screen.dart";
import "../../generated/l10n.dart";
import "../basic_route_data.dart";
import "../main_route.dart";
import "../route_transition_page.dart";


class LicenseRoute extends UiRouteData with RouteTransitionPageBuilder<ImprintScreen> {
  const LicenseRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LicenseScreen();
  }

  @override
  IconData get icon => Icons.library_books;

  @override
  String get loc => location;

  @override
  String localize(S s) => s.screen_license;
}
