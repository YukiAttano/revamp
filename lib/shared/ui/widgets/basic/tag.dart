import "package:flutter/material.dart";

import "../gap.dart";
import "../styles/tag_style.dart";

class Tag extends StatelessWidget {
  final Widget label;
  final TagStyle? style;
  final VoidCallback? onTap;

  const Tag({super.key, required this.label, this.style, this.onTap});

  Tag.icon({Key? key, TagStyle? style, VoidCallback? onTap, required Widget icon, required Widget label})
      : this(
          key: key,
          style: style,
          onTap: onTap,
          label: _TagIconChild(icon: icon, child: label),
        );

  @override
  Widget build(BuildContext context) {
    TagStyle s = TagStyle.of(context, style);

    IconThemeData i = Theme.of(context).iconTheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      color: s.color,
      elevation: s.elevation,
      shape: s.shape,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: s.padding ?? EdgeInsets.zero,
          child: IconTheme(
            data: i.merge(IconThemeData(color: s.iconColor)),
            child: DefaultTextStyle(
              style: s.textStyle ?? DefaultTextStyle.of(context).style,
              child: label,
            ),
          ),
        ),
      ),
    );
  }
}

class _TagIconChild extends StatelessWidget {
  final Widget icon;
  final Widget child;

  const _TagIconChild({super.key, required this.icon, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        const Gap.tiny(),
        child,
      ],
    );
  }
}
