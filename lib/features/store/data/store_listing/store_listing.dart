import "../../../../shared/logic/exceptions/parse_exception.dart";
import "../store_category.dart";
import "banner_listing.dart";
import "brand_listing.dart";
import "category_listing.dart";
import "product_listing.dart";

enum StoreListingType {
  BANNER,
  PRODUCT,
  BRAND,
  CATEGORY;

  const StoreListingType();

  static StoreListingType? fromIdentifier(String value) {
    // ignore: parameter_assignments .
    value = value.toUpperCase();

    for (var v in values) {
      if (v.name.toUpperCase() == value) {
        return v;
      }
    }

    return null;
  }
}

/// Listings that are visible on the home screen
abstract class StoreListing {
  StoreListingType get type;

  factory StoreListing.fromJson(Map<String, Object?> json) {
    String typeIdentifier = json["type"].toString();

    StoreListingType? type = StoreListingType.fromIdentifier(typeIdentifier);

    switch (type) {

      case null:

      case StoreListingType.BANNER:
        return BannerListing.fromJson(json);
      case StoreListingType.PRODUCT:
        return ProductListing.fromJson(json);
      case StoreListingType.BRAND:
        return BrandListing.fromJson(json);
      case StoreListingType.CATEGORY:
        return CategoryListing.fromJson(json);
    }
  }

  Map<String, Object?> toJson();
}
