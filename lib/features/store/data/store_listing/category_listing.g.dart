// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryListing _$CategoryListingFromJson(Map<String, dynamic> json) =>
    CategoryListing(
      title: json['title'] as String? ?? "",
      imageUrl: json['imageUrl'] as String? ?? "",
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CategoryListingToJson(CategoryListing instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'height': instance.height,
      'width': instance.width,
    };
