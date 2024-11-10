import "package:flutter/material.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../styles/load_tile_style.dart";
import "advanced_card.dart";

class LoadTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final LoadTileStyle? style;
  final bool loading;
  final void Function()? onPressed;
  final bool small;

  const LoadTile({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.style,
    bool? loading,
    this.onPressed,
    this.small = false,
  }) : loading = loading ?? false;

  @override
  Widget build(BuildContext context) {
    LoadTileStyle s = LoadTileStyle.of(context, style);

    return AdvancedCard(
      elevation: 0,
      childPadding: EdgeInsets.zero,
      shape: s.shape,
      color: s.tileColor,
      onTap: onPressed,
      trailing: FakeloadingWidget.reserve(
        loading: loading,
        replacement: const LinearProgressIndicator(),
      ),
      child: Visibility(
        replacement: IgnorePointer(
          child: IconButton(
            onPressed: onPressed,
            icon: leading ?? trailing ?? const SizedBox.shrink(),
          ),
        ),
        visible: !small,
        child: ListTile(
          leading: leading,
          leadingAndTrailingTextStyle: s.leadingAndTrailingTextStyle,
          title: title,
          titleTextStyle: s.titleStyle,
          subtitle: subtitle,
          trailing: trailing,
        ),
      ),
    );
  }
}
