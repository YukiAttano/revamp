import "package:freezed_annotation/freezed_annotation.dart";

import "store_listing.dart";

part "brand_listing.g.dart";

@JsonSerializable()
class BrandListing implements StoreListing {
  @override
  StoreListingType get type => StoreListingType.BRAND;

  final String title;
  final String imageUrl;

  const BrandListing({
    this.title = "",
    this.imageUrl = "",
  });

  factory BrandListing.fromJson(Map<String, dynamic> json) => _$BrandListingFromJson(json);

  Map<String, dynamic> toJson() => _$BrandListingToJson(this);
}
