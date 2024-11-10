import "package:flutter/material.dart";

import "../styles/information_card_style.dart";

class InformationCard extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final InformationCardStyle? style;

  const InformationCard({super.key, required this.child, this.onTap, this.style});

  @override
  Widget build(BuildContext context) {
    InformationCardStyle? s = InformationCardStyle.of(context, style);

    return Card(
      clipBehavior: Clip.hardEdge,
      color: s.color,
      elevation: s.elevation,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: s.padding ?? EdgeInsets.zero,
          child: DefaultTextStyle(
            style: s.textStyle ?? DefaultTextStyle.of(context).style,
            child: child,
          ),
        ),
      ),
    );
  }
}
