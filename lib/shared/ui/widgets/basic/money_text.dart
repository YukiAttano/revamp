import "package:flutter/material.dart";
import "../../../data/money.dart";

class MoneyText extends StatelessWidget {
  final String leading;
  final Money money;
  final TextStyle? style;
  final TextAlign? textAlign;
  final bool showCurrency;

  const MoneyText({
    super.key,
    this.leading = "",
    required this.money,
    this.style,
    this.textAlign,
    this.showCurrency = true,
  });

  @override
  Widget build(BuildContext context) {
    String text = "$leading${money.value.toStringAsFixed(2)}";
    if (showCurrency) text += " ${money.currency}";

    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}
