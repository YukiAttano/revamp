
import "package:flutter/material.dart";

import "gap.dart";

class LeadedWidget extends StatelessWidget {
  final Widget leading;
  final Widget child;

  const LeadedWidget({super.key, required this.leading, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leading,
        const Gap(),
        Flexible(child: child),
      ],
    );
  }
}
