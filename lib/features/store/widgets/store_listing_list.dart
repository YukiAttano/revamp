import "package:flutter/material.dart";

import "../data/store_listing/banner_listing.dart";
import "../data/store_listing/brand_listing.dart";
import "../data/store_listing/category_listing.dart";
import "../data/store_listing/product_listing.dart";
import "../data/store_listing/store_listing.dart";
import "store_product_list.dart";

class StoreListingList extends StatelessWidget {
  final List<StoreListing> listings;

  const StoreListingList({super.key, required this.listings});

  @override
  Widget build(BuildContext context) {
    var l = listings;

    switch (l) {
      case List<ProductListing>():
        return StoreProductList(products: l);
      case List<BannerListing>():
      case List<BrandListing>():
      case List<CategoryListing>():
        return Placeholder(fallbackHeight: 120);
    }

    return const SizedBox.shrink();
  }
}
