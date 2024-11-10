import "package:flutter/material.dart";

import "../styles/menu_tile_style.dart";

class MenuTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final MenuTileStyle? style;
  final bool enabled;
  final void Function()? onPressed;

  const MenuTile({
    super.key,
    required this.icon,
    required this.label,
    bool? selected,
    this.style,
    bool? enabled,
    this.onPressed,
  })  : selected = selected ?? false,
        enabled = enabled ?? true;

  @override
  Widget build(BuildContext context) {
    MenuTileStyle s = MenuTileStyle.fallback(context);
    s = s.merge(Theme.of(context).extension<MenuTileStyle>());
    s = s.merge(style);

    return ListTile(
      enabled: enabled,
      selected: selected,
      shape: s.shape,
      tileColor: s.tileColor,
      leading: Icon(icon),
      title: Text(
        label,
        maxLines: s.maxLines,
        overflow: s.overflow,
        style: s.titleStyle,
      ),
      onTap: onPressed,
    );
  }
}
