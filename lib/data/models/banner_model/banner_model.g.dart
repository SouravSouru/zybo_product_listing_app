// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      id: (json['id'] as num?)?.toInt(),
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      category: json['category'],
      name: json['name'] as String?,
      image: json['image'] as String?,
      showingOrder: (json['showing_order'] as num?)?.toInt(),
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'category': instance.category,
      'name': instance.name,
      'image': instance.image,
      'showing_order': instance.showingOrder,
      'is_active': instance.isActive,
    };
