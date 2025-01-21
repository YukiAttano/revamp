import "package:flutter/material.dart";

import "../../../shared/data/product.dart";
import "../../../shared/logic/list/separated_list.dart";
import "../../../shared/ui/widgets/gap.dart";
import "product_listing.dart";

class StoreProductList extends StatelessWidget {
  final List<StoreProduct> products;
  final double? categoryWidth;
  final double? categoryHeight;

  const StoreProductList({super.key, required this.products, this.categoryWidth, this.categoryHeight});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: separatedList(
          products.length,
          itemBuilder: (index) {
            StoreProduct p = products[index];

            return ProductListing(
              product: p,
              categoryWidth: categoryWidth,
              categoryHeight: categoryHeight,
            );
          },
          separatorBuilder: (index) => const Gap.small(),
        ),
      ),
    );
  }
}
