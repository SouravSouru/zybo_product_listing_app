import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'banner_model.g.dart';

@JsonSerializable()
class BannerModel {
  int? id;
  Product? product;
  dynamic category;
  String? name;
  String? image;
  @JsonKey(name: 'showing_order')
  int? showingOrder;
  @JsonKey(name: 'is_active')
  bool? isActive;

  BannerModel({
    this.id,
    this.product,
    this.category,
    this.name,
    this.image,
    this.showingOrder,
    this.isActive,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return _$BannerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
