import "package:flutter/material.dart";

import "../data/store_listing/banner_listing.dart";
import "../data/store_listing/brand_listing.dart";
import "../data/store_listing/category_listing.dart";
import "../data/store_listing/product_listing.dart";
import "../data/store_listing/store_listing.dart";
import "listing_lists/store_banner_list.dart";
import "listing_lists/store_brand_list.dart";
import "listing_lists/store_category_list.dart";
import "listing_lists/store_product_list.dart";

class StoreListingList extends StatelessWidget {
  final List<StoreListing> listings;
  final double? categoryHeight;
  final double? categoryWidth;

  const StoreListingList({
    super.key,
    required this.listings,
    this.categoryHeight,
    this.categoryWidth,
  });

  @override
  Widget build(BuildContext context) {
    var l = listings;

    // TODO(Alex): check if switch case detects subtype of list properly if .fromJson is used to generate lists
    switch (l) {
      case List<ProductListing>():
        return StoreProductList(
          products: l,
          categoryHeight: categoryHeight,
          categoryWidth: categoryWidth,
        );

      case List<CategoryListing>():
        return StoreCategoryList(
          categories: l,
          categoryHeight: categoryHeight,
          categoryWidth: categoryWidth,
        );

      case List<BrandListing>():
        return StoreBrandList(
          brands: l,
          categoryHeight: categoryHeight,
          categoryWidth: categoryWidth,
        );
      case List<BannerListing>():
        return StoreBannerList(
          banner: l,
          categoryHeight: categoryHeight,
        );
    }

    return const SizedBox.shrink();
  }
}
