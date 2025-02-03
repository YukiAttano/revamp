import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../shared/data/money.dart";
import "../../../../shared/data/product.dart";
import "store_listing.dart";

part "product_listing.g.dart";

@JsonSerializable()
class ProductListing extends Product implements StoreListing {
  @override
  StoreListingType get type => StoreListingType.BRAND;

  final String term;
  final String imageUrl;
  final double? width;
  final double? height;

  const ProductListing({
    required super.id,
    super.title,
    super.size,
    super.likes,
    required super.costs,
    super.condition,
    super.properties,
    this.term = "",
    this.imageUrl = "",
    this.width,
    this.height,
  });

  factory ProductListing.fromJson(Map<String, dynamic> json) => _$ProductListingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProductListingToJson(this);
}
