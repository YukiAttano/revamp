// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductListing _$ProductListingFromJson(Map<String, dynamic> json) =>
    ProductListing(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? "",
      size: json['size'] as String? ?? "",
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      costs: Money.fromJson(json['costs'] as Map<String, dynamic>),
      condition: json['condition'] as String? ?? "",
      properties: json['properties'] as String? ?? "",
      term: json['term'] as String? ?? "",
      imageUrl: json['imageUrl'] as String? ?? "",
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductListingToJson(ProductListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'size': instance.size,
      'likes': instance.likes,
      'costs': instance.costs,
      'condition': instance.condition,
      'properties': instance.properties,
      'term': instance.term,
      'imageUrl': instance.imageUrl,
      'width': instance.width,
      'height': instance.height,
    };
