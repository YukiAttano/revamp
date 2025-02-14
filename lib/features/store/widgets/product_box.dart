import "package:flutter/material.dart";

import "../../../shared/ui/widgets/basic/money_text.dart";
import "../../../shared/ui/widgets/product_tag.dart";
import "../data/store_listing/product_listing.dart";
import "../data/store_listing/store_listing.dart";

class ProductBox extends StatelessWidget {
  static const double _fallbackWidth = 110;
  static const double _fallbackHeight = 110;

  final ProductListing product;
  final double categoryWidth;
  final double categoryHeight;

  const ProductBox({super.key, required this.product, double? categoryWidth, double? categoryHeight})
      : categoryWidth = categoryWidth ?? _fallbackWidth,
        categoryHeight = categoryHeight ?? _fallbackHeight;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;

    const BorderRadius radius = BorderRadius.all(Radius.circular(4));

    TextStyle? titleStyle = textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold);
    TextStyle? termStyle = textTheme.bodySmall;
    TextStyle? costStyle = textTheme.labelSmall;

    return SizedBox(
      width: product.width ?? categoryWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: product.height ?? categoryHeight,
            width: product.width ?? categoryWidth,
            child: ClipRRect(
              borderRadius: radius,
              child: ColoredBox(color: Colors.grey.shade300),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: titleStyle,
              ),
              Visibility(
                visible: product.condition.trim().isNotEmpty,
                child: ProductTag(
                  child: Text(product.condition),
                ),
              ),
            ],
          ),
          Text(
            product.term,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: termStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MoneyText(
                money: product.costs,
                style: costStyle,
              ),
              Visibility(
                visible: product.size.trim().isNotEmpty,
                child: ProductTag(
                  child: Text(product.size),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
