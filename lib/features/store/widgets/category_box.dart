import "package:flutter/material.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../../shared/ui/widgets/basic/tag.dart";
import "../../../shared/ui/widgets/product_tag.dart";
import "../../../shared/ui/widgets/styles/tag_style.dart";
import "../data/store_listing/category_listing.dart";

class CategoryBox extends StatelessWidget {
  static const double _fallbackWidth = 140;
  static const double _fallbackHeight = 180;

  final CategoryListing category;
  final double categoryWidth;
  final double categoryHeight;

  const CategoryBox({super.key, required this.category, double? categoryWidth, double? categoryHeight})
      : categoryWidth = categoryWidth ?? _fallbackWidth,
        categoryHeight = categoryHeight ?? _fallbackHeight;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme scheme = theme.colorScheme;
    TextTheme textTheme = theme.textTheme;

    const BorderRadius radius = BorderRadius.all(Radius.circular(18));

    return SizedBox(
      height: category.height ?? categoryHeight,
      width: category.width ?? categoryWidth,
      child: ClipRRect(
        borderRadius: radius,
        child: Stack(
          children: [
            Positioned.fill(
              child: ColoredBox(color: Colors.grey.shade300),
            ),
            // TODO(Alex): constrain size of tag to not reach outside of the box
            Positioned(
              left: 8,
              bottom: 8,
              child: Tag(
                style: TagStyle.lowEmphasis(context, brightForeground: true),
                child: Text(
                  category.title,
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
