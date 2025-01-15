import "package:flutter/material.dart";

import "../../../shared/ui/widgets/basic/money_text.dart";
import "../data/store_product.dart";

class ProductListing extends StatelessWidget {
  static const double _fallbackWidth = 80;
  static const double _fallbackHeight = 80;

  final StoreProduct product;
  final double categoryWidth;
  final double categoryHeight;

  const ProductListing({super.key, required this.product, double? categoryWidth, double? categoryHeight})
      : categoryWidth = categoryWidth ?? _fallbackWidth,
        categoryHeight = categoryHeight ?? _fallbackHeight;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: product.height ?? categoryHeight,
        width: product.width ?? categoryWidth,
        child: ColoredBox(color: Colors.grey),
      ),
      Text(product.title),
      MoneyText(money: product.costs),
    ]);
  }
}
