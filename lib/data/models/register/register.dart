import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'register.g.dart';

@JsonSerializable()
class Register {
  Token? token;
  @JsonKey(name: 'user_id')
  String? userId;
  String? message;

  Register({this.token, this.userId, this.message});

  factory Register.fromJson(Map<String, dynamic> json) {
    return _$RegisterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegisterToJson(this);
}
