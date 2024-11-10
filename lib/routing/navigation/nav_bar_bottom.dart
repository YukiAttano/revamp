import "package:flutter/material.dart";

import "../../generated/l10n.dart";
import "../basic_route_data.dart";

class NavBarBottom extends StatelessWidget {
  final int selectedIndex;

  final List<UiRouteData> routes;

  final void Function(int index)? onNavigate;

  const NavBarBottom({
    super.key,
    required this.selectedIndex,
    required this.routes,
    this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    S s = S.of(context);

    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onNavigate,
      destinations: _getItems(s),
    );
  }

  List<Widget> _getItems(S s) {
    List<Widget> list = [];

    for (var route in routes) {
      list.add(_getItem(s, route));
    }

    return list;
  }

  static NavigationDestination _getItem(S s, UiRouteData route) {
    return NavigationDestination(
      icon: Icon(route.icon),
      label: route.localize(s),
    );
  }
}
