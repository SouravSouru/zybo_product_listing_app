import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  String? otp;
  Token? token;
  bool? user;

  LoginModel({this.otp, this.token, this.user});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return _$LoginModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
