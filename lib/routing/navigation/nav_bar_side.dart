import "package:flutter/material.dart";

import "../../generated/l10n.dart";
import "../basic_route_data.dart";

class NavBarSide extends StatelessWidget {
  final int selectedIndex;
  final bool extended;

  final Widget? leading;
  final Widget? trailing;
  final List<UiRouteData> routes;

  final void Function(int index)? onNavigate;

  const NavBarSide({super.key, required this.selectedIndex, this.extended = false, this.leading, this.trailing, required this.routes, this.onNavigate});

  @override
  Widget build(BuildContext context) {
    S s = S.of(context);

    var items = _getItems(s);

    return NavigationRail(
      leading: leading,
      trailing: trailing,
      extended: extended,
      destinations: items,
      selectedIndex: selectedIndex,
      onDestinationSelected: onNavigate,
    );
  }

  List<NavigationRailDestination> _getItems(S s) {
    List<NavigationRailDestination> list = <NavigationRailDestination>[];

    for (UiRouteData i in routes) {
      list.add(_getItem(s, i));
    }

    return list;
  }

  static NavigationRailDestination _getItem(S s, UiRouteData route) {
    return NavigationRailDestination(
      icon: Icon(route.icon),
      label: Text(route.localize(s)),
    );
  }
}
