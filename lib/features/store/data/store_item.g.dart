// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreItem _$StoreItemFromJson(Map<String, dynamic> json) => StoreItem(
      category:
          StoreCategory.fromJson(json['category'] as Map<String, dynamic>),
      listings: (json['listings'] as List<dynamic>?)
              ?.map((e) => StoreListing.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StoreItemToJson(StoreItem instance) => <String, dynamic>{
      'category': instance.category,
      'listings': instance.listings,
    };
