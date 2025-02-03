import "package:flutter/material.dart";

import "../data/store_item.dart";
import "store_listing_list.dart";
import "store_listing_title.dart";
import "store_product_list.dart";

class StoreEntry extends StatelessWidget {
  final StoreItem entry;

  const StoreEntry({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StoreListingTitle(category: entry.category),
        StoreListingList(listings: entry.products),
      ],
    );
  }
}
