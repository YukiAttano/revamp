import "package:freezed_annotation/freezed_annotation.dart";

import "store_category.dart";
import "store_listing/product_listing.dart";
import "store_listing/store_listing.dart";

part "store_item.g.dart";

@JsonSerializable()
class StoreItem {
  final StoreCategory category;
  final List<StoreListing> listings;

  const StoreItem({
    required this.category,
    this.listings = const [],
  });

  factory StoreItem.fromJson(Map<String, dynamic> json) => _$StoreItemFromJson(json);

  Map<String, dynamic> toJson() => _$StoreItemToJson(this);
}
