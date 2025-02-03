import "package:flutter/material.dart";

import "../../../shared/ui/widgets/button/app_button.dart";
import "../data/store_listing/banner_listing.dart";

class BannerBox extends StatelessWidget {
  static const double fallbackHeight = 160;

  final BannerListing banner;
  final double height;

  const BannerBox({super.key, required this.banner, double? height}) : height = height ?? fallbackHeight;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;

    return SizedBox(
      height: height,
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(banner.title, style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
              Text(banner.description, style: textTheme.bodySmall),
              const Spacer(),
              AppButton(
                emphasis: Emphasis.HIGH,
                onPressed: () {},
                child: Text(banner.action),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
