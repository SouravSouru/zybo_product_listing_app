import 'package:json_annotation/json_annotation.dart';

part 'update_wishlist_response_model.g.dart';

@JsonSerializable()
class UpdateWishlistResponseModel {
  String? message;

  UpdateWishlistResponseModel({this.message});

  factory UpdateWishlistResponseModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateWishlistResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateWishlistResponseModelToJson(this);
}
