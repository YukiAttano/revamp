import "package:flutter/material.dart";

import "../../../shared/ui/widgets/button/app_button.dart";
import "../data/store_listing/banner_listing.dart";

class BannerBox extends StatelessWidget {
  static const double fallbackHeight = 160;

  final BannerListing banner;
  final Widget child;
  final double height;

  const BannerBox({super.key, required this.banner, this.child = const SizedBox.shrink(), double? height})
      : height = height ?? fallbackHeight;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;

    const EdgeInsets margin = EdgeInsets.zero;
    const double elevation = 0;
    const EdgeInsets padding = EdgeInsets.symmetric(horizontal: 24, vertical: 12);

    TextStyle? titleStyle = textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold);
    TextStyle? descriptionStyle = textTheme.bodySmall;

    return SizedBox(
      height: height,
      width: double.infinity,
      child: Card(
        margin: margin,
        elevation: elevation,
        child: Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                banner.title,
                style: titleStyle,
              ),
              Text(
                banner.description,
                style: descriptionStyle,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // TODO(Alex): call action
                  AppButton(
                    emphasis: Emphasis.HIGH,
                    onPressed: () {},
                    child: Text(banner.action),
                  ),
                  child,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
