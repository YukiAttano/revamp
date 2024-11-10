import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../shared/ui/bottom_sheet/close_app_sheet.dart";
import "../../shared/ui/widgets/inherited_list_padding.dart";
import "../navigation/nav_bar.dart";
import "../router.dart";

class NavigationShell extends ShellRouteData {
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    //print('FullPath: ${state.fullPath}');
    //print('Name: ${state.name}');
    ////print("Path: ${state.path}");
    //print('Uri: ${state.uri}');
    //print('MatchedLocation: ${state.matchedLocation}');

    // After Predictive Back Gestures are enabled, it might be necessary to replace "false" with a check whether the user has enabled the gesture or not.
    // If that feature is not enabled, for example the user uses navigation buttons instead of gestures, canPop should be false to not close the app without user consent.
    // The Function _onPopInvoked might also know about that feature, to not show the close modal if the user aborts the gesture
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async => _onPopInvoked(context, didPop),
      child: BackButtonListener(
        onBackButtonPressed: () async => _onBackButton(context, state),
        child: NavBar(
          currentRoute: state.uri.path,
          child: InheritedListPadding(
            child: navigator,
          ),
        ),
      ),
    );
  }

  Future<bool> _onBackButton(BuildContext context, GoRouterState state) async {
    // also check if this fallback navigation is senseful as it changes navigation logic
    // https://github.com/flutter/flutter/issues/138737
    // https://github.com/flutter/flutter/issues/140869
    GoRouter router = GoRouter.of(context);

    if (router.canPop()) {
      router.pop();
      return SynchronousFuture(true);
    } else {
      if (!state.isOnInitialRoute()) {
        router.go(initialLoggedInRoute);
      } else {
        await _onPopInvoked(context, false);
      }
    }

    return true;
  }

  Future<void> _onPopInvoked(BuildContext context, bool didPop) async {
    if (!didPop) {
      await showCloseModalSheet(context);
    } else {
      return SynchronousFuture(null);
    }
  }
}
