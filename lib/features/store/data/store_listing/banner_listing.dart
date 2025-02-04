
import "package:freezed_annotation/freezed_annotation.dart";

import "store_listing.dart";

part "banner_listing.g.dart";

@JsonSerializable()
class BannerListing implements StoreListing {

  @override
  StoreListingType get type => StoreListingType.BRAND;

  final String title;
  final String description;

  // TODO(Alex): change this to an object
  final String action;

  const BannerListing({
    this.title = "",
    this.description = "",
    this.action = "",
  });

  factory BannerListing.fromJson(Map<String, dynamic> json) => _$BannerListingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BannerListingToJson(this);
}

