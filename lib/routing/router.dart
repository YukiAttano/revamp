import "package:flutter/widgets.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

import "../features/authentication/logic/provider/auth_provider.dart";
import "main_route.dart";
import "routes/forgot_route.dart";
import "routes/store_route.dart";
import "routes/login_route.dart";
import "routes/register_route.dart";

final _initialRoute = const LoginRoute().location;
final initialLoggedInRoute = const StoreRoute().location;

final List<String> _loggedOutRoutes = [
  const LoginRoute().location,
  const RegisterRoute().location,
  const ForgotRoute().location,
];

final Provider<GoRouter> router = Provider<GoRouter>(
  (ref) {
    bool isLoggedIn = ref.watch(authProvider.select((value) => value.state.loggedIn));

    String initialLocation = isLoggedIn ? initialLoggedInRoute : _initialRoute;

    return GoRouter(
      routes: $appRoutes,
      initialLocation: initialLocation,
      redirect: (BuildContext context, GoRouterState state) {
        if (state.fullPath == "/") return initialLocation;

        return null;
      },
    );
  },
);


void goBack(BuildContext context) {
  GoRouter router = GoRouter.of(context);

  if (router.canPop()) {
    router.pop();
  } else {
    const StoreRoute().go(context);
  }
}

extension GoRouterStateExtension on GoRouterState {
  bool isOnInitialRoute() {
    return uri.path == initialLoggedInRoute;
  }
}
