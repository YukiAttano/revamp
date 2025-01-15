import "package:freezed_annotation/freezed_annotation.dart";

part "store_category.freezed.dart";
part "store_category.g.dart";

@freezed
class StoreCategory with _$StoreCategory {
  const factory StoreCategory({
    required String id,
    @Default("") String name,
    double? width,
    double? height,
  }) = _StoreCategory;

  factory StoreCategory.fromJson(Map<String, dynamic> json) => _$StoreCategoryFromJson(json);
}
