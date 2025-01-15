import "package:flutter/material.dart";

import "../data/store_product.dart";
import "product_listing.dart";

class StoreProductList extends StatelessWidget {

  final List<StoreProduct> products;
  final double? categoryWidth;
  final double? categoryHeight;

  const StoreProductList({super.key, required this.products, this.categoryWidth, this.categoryHeight});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: List.generate(
          products.length,
              (index) {
            StoreProduct p = products[index];

            return ProductListing(
              product: p,
              categoryWidth: categoryWidth,
              categoryHeight: categoryHeight,
            );
          },
        ),
      ),
    );
  }
}
