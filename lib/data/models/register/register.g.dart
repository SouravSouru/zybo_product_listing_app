// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Register _$RegisterFromJson(Map<String, dynamic> json) => Register(
      token: json['token'] == null
          ? null
          : Token.fromJson(json['token'] as Map<String, dynamic>),
      userId: json['user_id'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$RegisterToJson(Register instance) => <String, dynamic>{
      'token': instance.token,
      'user_id': instance.userId,
      'message': instance.message,
    };
