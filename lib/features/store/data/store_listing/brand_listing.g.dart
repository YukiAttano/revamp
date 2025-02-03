// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandListing _$BrandListingFromJson(Map<String, dynamic> json) => BrandListing(
      title: json['title'] as String? ?? "",
      imageUrl: json['imageUrl'] as String? ?? "",
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BrandListingToJson(BrandListing instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'height': instance.height,
      'width': instance.width,
    };
