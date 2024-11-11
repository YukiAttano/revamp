import "dart:ui";

import "package:flutter/material.dart";

import "../../../../shared/data/money.dart";
import "../../../../shared/ui/widgets/basic/tag.dart";
import "../../../../shared/ui/widgets/button/ask_button.dart";
import "../../../../shared/ui/widgets/button/buy_button.dart";
import "../../../../shared/ui/widgets/gap.dart";
import "../../../../shared/ui/widgets/money_tag.dart";
import "../../../../shared/ui/widgets/styles/tag_style.dart";
import "condition_tag.dart";

class DoomProductBottomline extends StatelessWidget {
  final String description;
  final String subDescription;
  final Money costs;
  final String condition;
  final void Function()? onAsk;
  final void Function()? onBuy;

  const DoomProductBottomline({
    super.key,
    this.description = "",
    this.subDescription = "",
    required this.costs,
    this.condition = "",
    this.onAsk,
    this.onBuy,
  });

  @override
  Widget build(BuildContext context) {
    // TODO(Alex): Styling

    return ClipRect(
      child: Stack(
        children: [
          const Positioned.fill(
            child: _BackgroundBlur(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  MoneyTag(money: costs),
                  ConditionTag(condition: condition),
                ],
              ),
              Row(
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
            ],
          ),
        ],
      ),
    );
  }
}

class _BackgroundBlur extends StatelessWidget {
  final bool enabled;

  const _BackgroundBlur({super.key, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      enabled: false,
      imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0, 0.5, 0.8],
            colors: [
              Colors.grey,
              Colors.grey.withOpacity(0.2),
              Colors.transparent,
            ],
          ),
        ),
      ),
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
