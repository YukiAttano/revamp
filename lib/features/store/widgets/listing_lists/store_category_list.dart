import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/gap.dart";
import "../../data/store_listing/category_listing.dart";
import "../../data/store_listing/product_listing.dart";
import "../category_box.dart";
import "../product_box.dart";
import "listing_list.dart";

class StoreCategoryList extends StatelessWidget {
  final List<CategoryListing> categories;
  final double? categoryWidth;
  final double? categoryHeight;

  const StoreCategoryList({super.key, required this.categories, this.categoryWidth, this.categoryHeight});

  @override
  Widget build(BuildContext context) {
    return ListingList(
      categoryWidth: categoryWidth,
      categoryHeight: categoryHeight,
      length: categories.length,
      itemBuilder: (index) {
        CategoryListing c = categories[index];

        return CategoryBox(
          category: c,
          categoryWidth: categoryWidth,
          categoryHeight: categoryHeight,
        );
      },
      separatorBuilder: (index) => const Gap.small(),
    );
  }
}
