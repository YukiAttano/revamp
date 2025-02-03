import "package:flutter/material.dart";

import "../data/store_item.dart";
import "store_listing_list.dart";
import "store_listing_title.dart";

class StoreEntry extends StatelessWidget {
  final StoreItem entry;

  const StoreEntry({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    var category = entry.category;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StoreListingTitle(category: category),
        StoreListingList(
          listings: entry.listings,
          categoryWidth: category.width,
          categoryHeight: category.height,
        ),
      ],
    );
  }
}
