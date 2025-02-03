import "package:flutter/material.dart";

import "../../../shared/data/product.dart";
import "../../../shared/logic/list/separated_list.dart";
import "../../../shared/ui/widgets/gap.dart";
import "../data/store_listing/product_listing.dart";
import "product_box.dart";

class StoreProductList extends StatelessWidget {
  final List<ProductListing> products;
  final double? categoryWidth;
  final double? categoryHeight;

  const StoreProductList({super.key, required this.products, this.categoryWidth, this.categoryHeight});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: separatedList(
          products.length,
          itemBuilder: (index) {
            ProductListing p = products[index];

            return ProductBox(
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
