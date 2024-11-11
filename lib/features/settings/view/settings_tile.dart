import "package:flutter/material.dart";

import "../../../shared/ui/widgets/basic/tag.dart";

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final void Function()? onPressed;

  const SettingsTile({super.key, required this.icon, required this.label, this.onPressed});

  //SettingsTile.fromRoute({Key? key, required UiRouteData route, void Function()? onPressed})
  //    : this(key: key, label: route.label, icon: route.icon, onPressed: onPressed);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Tag(child: Icon(icon)),
      title: Text(label),
      onTap: onPressed,
    );
  }
}
