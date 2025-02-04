import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/gap.dart";
import "../../data/store_listing/product_listing.dart";
import "../product_box.dart";
import "listing_list.dart";

class StoreProductList extends StatelessWidget {
  final List<ProductListing> products;
  final double? categoryWidth;
  final double? categoryHeight;

  const StoreProductList({super.key, required this.products, this.categoryWidth, this.categoryHeight});

  @override
  Widget build(BuildContext context) {
    return ListingList(
      categoryWidth: categoryWidth,
      categoryHeight: categoryHeight,
      length: products.length,
      itemBuilder: (index) {
        ProductListing p = products[index];

        return ProductBox(
          product: p,
          categoryWidth: categoryWidth,
          categoryHeight: categoryHeight,
        );
      },
      separatorBuilder: (_) => const Gap.small(),
    );
  }
}
