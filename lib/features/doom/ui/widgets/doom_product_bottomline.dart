import "dart:ui";

import "package:flutter/material.dart";

import "../../../../shared/data/money.dart";
import "../../../../shared/ui/widgets/button/ask_button.dart";
import "../../../../shared/ui/widgets/button/buy_button.dart";
import "../../../../shared/ui/widgets/gap.dart";
import "../../../../shared/ui/widgets/money_tag.dart";

class DoomProductBottomline extends StatelessWidget {
  final String description;
  final String subDescription;
  final Money costs;
  final void Function()? onAsk;
  final void Function()? onBuy;

  const DoomProductBottomline({
    super.key,
    this.description = "",
    this.subDescription = "",
    required this.costs,
    this.onAsk,
    this.onBuy,
  });

  @override
  Widget build(BuildContext context) {
    // TODO(Alex): Styling

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MoneyTag(money: costs),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0, 0.9, 1],
              colors: [
                Colors.grey,
                Colors.grey.withOpacity(0.2),
                Colors.transparent,
              ],
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _Description(description: description),
                      Text(subDescription, maxLines: 1, overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ),
              const Gap(),
              AskButton(onPressed: onAsk),
              const Gap(),
              BuyButton(onPressed: onBuy),
            ],
          ),
        ),
      ],
    );
  }
}

class _Description extends StatelessWidget {
  final String description;

  const _Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;

    return Text(
      description,
      style: textTheme.titleLarge,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
