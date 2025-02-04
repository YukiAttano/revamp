import "package:flutter/material.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../../shared/ui/widgets/basic/tag.dart";
import "../../../shared/ui/widgets/product_tag.dart";
import "../../../shared/ui/widgets/styles/tag_style.dart";
import "../data/store_listing/brand_listing.dart";
import "../data/store_listing/category_listing.dart";

class BrandBox extends StatelessWidget {
  static const double _fallbackWidth = 120;
  static const double _fallbackHeight = 80;

  final BrandListing brands;
  final double categoryWidth;
  final double categoryHeight;

  const BrandBox({super.key, required this.brands, double? categoryWidth, double? categoryHeight})
      : categoryWidth = categoryWidth ?? _fallbackWidth,
        categoryHeight = categoryHeight ?? _fallbackHeight;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;
    TextTheme textTheme = theme.textTheme;

    const BorderRadius radius = BorderRadius.all(Radius.circular(8));

    return SizedBox(
      height: brands.height ?? categoryHeight,
      width: brands.width ?? categoryWidth,
      child: ClipRRect(
        borderRadius: radius,
        child: Stack(
          children: [
            Positioned.fill(
              child: ColoredBox(color: Colors.grey.shade300),
            ),
            // TODO(Alex): Fix tag exceeding max width
            Positioned(
              left: 4,
              bottom: 4,
              child: Tag(
                style: TagStyle.lowEmphasis(context, brightForeground: true),
                child: Text(
                  brands.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
