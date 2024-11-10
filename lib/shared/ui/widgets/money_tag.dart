import "package:flutter/material.dart";

import "../../data/money.dart";
import "basic/money_text.dart";
import "basic/tag.dart";

class MoneyTag extends StatelessWidget {
  final Money money;

  const MoneyTag({super.key, required this.money});

  @override
  Widget build(BuildContext context) {
    return Tag.icon(
      // TODO(Alex): replace with something more general
      icon: Icon(Icons.euro),
      label: MoneyText(money: money),
    );
  }
}
