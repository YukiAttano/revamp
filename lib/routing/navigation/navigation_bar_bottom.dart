import "package:flutter/material.dart";

import "../../generated/l10n.dart";
import "../basic_route_data.dart";

class NavigationBarBottom extends StatelessWidget {
  final int selectedIndex;

  final List<UiRouteData> routes;

  final void Function(int index)? onNavigate;

  const NavigationBarBottom({
    super.key,
    required this.selectedIndex,
    required this.routes,
    this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    S s = S.of(context);

    return BottomNavigationBar(
      onTap: onNavigate,
      items: _getItems(s),
      currentIndex: selectedIndex,
    );
  }

  List<BottomNavigationBarItem> _getItems(S s) {
    List<BottomNavigationBarItem> list = <BottomNavigationBarItem>[];

    for (var route in routes) {
      list.add(_getItem(s, route));
    }

    return list;
  }

  static BottomNavigationBarItem _getItem(S s, UiRouteData route) {
    return BottomNavigationBarItem(
      icon: Icon(route.icon),
      label: route.localize(s),
    );
  }
}
