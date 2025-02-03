import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/gap.dart";
import "../../data/store_listing/brand_listing.dart";
import "../../data/store_listing/category_listing.dart";
import "../../data/store_listing/product_listing.dart";
import "../brand_box.dart";
import "../category_box.dart";
import "../product_box.dart";
import "listing_list.dart";

class StoreBrandList extends StatelessWidget {
  final List<BrandListing> brands;
  final double? categoryWidth;
  final double? categoryHeight;

  const StoreBrandList({super.key, required this.brands, this.categoryWidth, this.categoryHeight});

  @override
  Widget build(BuildContext context) {
    return ListingList(
      categoryWidth: categoryWidth,
      categoryHeight: categoryHeight,
      length: brands.length,
      itemBuilder: (index) {
        BrandListing b = brands[index];

        return BrandBox(
          brands: b,
          categoryWidth: categoryWidth,
          categoryHeight: categoryHeight,
        );
      },
      separatorBuilder: (index) => const Gap.small(),
    );
  }
}
