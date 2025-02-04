import "package:flutter/material.dart";

import "../gap.dart";
import "../styles/tag_style.dart";

class Tag extends StatelessWidget {
  final Widget child;
  final TagStyle? style;
  final VoidCallback? onTap;
  final bool enabled;

  const Tag({super.key, required this.child, this.style, this.onTap, bool? enabled})
      : enabled = enabled ?? true;

  static final TagStyle _rectStyle = TagStyle.rect();

  Tag.icon({Key? key, TagStyle? style, VoidCallback? onTap, bool? enabled, required Widget icon, required Widget label})
      : this(
          key: key,
          style: style,
          onTap: onTap,
          enabled: enabled,
          child: _TagIconChild(icon: icon, child: label),
        );

  Tag.rect({Key? key, TagStyle? style, VoidCallback? onTap, bool? enabled, required Widget child})
      : this(
          key: key,
          style: style?.merge(_rectStyle) ?? _rectStyle,
          onTap: onTap,
          enabled: enabled,
          child: child,
        );

  @override
  Widget build(BuildContext context) {
    TagStyle s = TagStyle.of(context, style);

    IconThemeData i = Theme.of(context).iconTheme;

    if (!enabled) s = s.disabled(context);

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
            child: DefaultTextStyle.merge(
              style: s.textStyle,
              child: child,
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
