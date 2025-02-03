import "package:freezed_annotation/freezed_annotation.dart";

import "store_listing.dart";

part "category_listing.g.dart";

@JsonSerializable()
class CategoryListing implements StoreListing {
  @override
  StoreListingType get type => StoreListingType.CATEGORY;

  final String title;
  final String imageUrl;

  const CategoryListing({
    this.title = "",
    this.imageUrl = "",
  });

  factory CategoryListing.fromJson(Map<String, dynamic> json) => _$CategoryListingFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryListingToJson(this);
}
