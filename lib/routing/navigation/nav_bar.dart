import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../basic_route_data.dart";
import "../routes/doom_route.dart";
import "../routes/store_route.dart";
import "../routes/settings_route.dart";
import "nav_bar_bottom.dart";
import "nav_bar_side.dart";

GlobalKey<ScaffoldState> _state = GlobalKey();

class NavBar extends StatelessWidget {
  final String currentRoute;
  final Widget child;

  final bool ignoreLandscape;

  const NavBar({super.key, required this.currentRoute, required this.child, this.ignoreLandscape = false});

  static final List<UiRouteData> routes = [
    const StoreRoute(),
    const DoomRoute(),
    const SettingsRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    int index = _getIndex();

    return WindowSizedBox(
      builder: (context, width, height, child) {
        bool isCompact = false;
        bool isExpanded = false;

        switch (width) {
          case WindowSizes.compact:
            isCompact = true;
          case WindowSizes.medium:
            break;
          case WindowSizes.expanded:
          case WindowSizes.large:
          case WindowSizes.extraLarge:
            isExpanded = true;
        }

        Widget? bottomNavBar;

        if (isCompact) {
          bottomNavBar = NavBarBottom(
            selectedIndex: index,
            routes: routes,
            onNavigate: (index) => _onNavigate(context, index),
          );
        } else {
          child = Row(
            children: [
              NavBarSide(
                extended: isExpanded,
                selectedIndex: index,
                routes: routes,
                onNavigate: (index) => _onNavigate(context, index),
              ),
              Expanded(
                // The Flutter NavigationBars honor the 'safe areas' for the system ui.
                // unfortunately, iOS system areas (for touch movements and camera cutouts) are reported in every direction
                // even if they are not used by the system (e.g. rotating the device to horizontal mode will still report that the bottom (now left side) should be preserved for the system).
                // (iPhone 14)
                child: SafeArea(
                  top: false,
                  left: false,
                  child: child!,
                ),
              ),
            ],
          );
        }

        return Scaffold(
          key: _state,
          body: child,
          bottomNavigationBar: bottomNavBar,
        );
      },
      child: child,
    );
  }

  void _onNavigate(BuildContext context, int index) {
    GoRouter.of(context).go(routes[index].loc);
  }

  int _getIndex() {
    UiRouteData item;

    int maxZaehler = routes.length;
    for (int zaehler = 0; zaehler < maxZaehler; zaehler++) {
      item = routes[zaehler];
      if (item.loc == currentRoute) {
        return zaehler;
      }
    }

    for (int zaehler = 0; zaehler < maxZaehler; zaehler++) {
      item = routes[zaehler];
      if (currentRoute.startsWith(item.loc)) {
        return zaehler;
      }
    }

    return 0;
  }
}
