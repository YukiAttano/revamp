import "package:freezed_annotation/freezed_annotation.dart";

import "../../../shared/data/product.dart";
import "store_category.dart";

part "store_item.g.dart";

@JsonSerializable()
class StoreItem {
  final StoreCategory category;
  final List<StoreProduct> products;

  const StoreItem({
    required this.category,
    this.products = const [],
  });

  factory StoreItem.fromJson(Map<String, dynamic> json) => _$StoreItemFromJson(json);

  Map<String, dynamic> toJson() => _$StoreItemToJson(this);
}
