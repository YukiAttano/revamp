import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

/// This is the default Transition for pages in our App.
/// Used to centralize the animations for every screen page.
///
/// For changing the transition behavior for every platform separately, see [PageTransitionsTheme]
class RouteTransitionPage<T> extends MaterialPage<T> {
  const RouteTransitionPage({
    required super.child,
    super.maintainState,
    super.fullscreenDialog,
    super.allowSnapshotting,
    super.name,
    super.arguments,
    super.restorationId,
    super.key,
  });
}

/// Implements the [RouteTransitionPage]
/// [T] can be [void] as long as [GoRouteData.buildPage] is typed as [void]
mixin RouteTransitionPageBuilder<T> on GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (kIsWeb) return NoTransitionPage(child: build(context, state));

    return RouteTransitionPage<T>(child: build(context, state));
  }
}
