// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerListing _$BannerListingFromJson(Map<String, dynamic> json) =>
    BannerListing(
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      action: json['action'] as String? ?? "",
    );

Map<String, dynamic> _$BannerListingToJson(BannerListing instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'action': instance.action,
    };
