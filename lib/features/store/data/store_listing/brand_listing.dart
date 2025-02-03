import "package:freezed_annotation/freezed_annotation.dart";

import "store_listing.dart";

part "brand_listing.g.dart";

@JsonSerializable()
class BrandListing implements StoreListing {
  @override
  StoreListingType get type => StoreListingType.BRAND;

  final String title;
  final String imageUrl;
  final double? height;
  final double? width;

  const BrandListing({
    this.title = "",
    this.imageUrl = "",
    this.height,
    this.width,
  });

  factory BrandListing.fromJson(Map<String, dynamic> json) => _$BrandListingFromJson(json);

  Map<String, dynamic> toJson() => _$BrandListingToJson(this);
}
