// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  fullName: json['fullName'] as String,
  email: json['email'] as String,
  authStatus:
      $enumDecodeNullable(_$UserAuthStatusEnumMap, json['authStatus']) ??
      UserAuthStatus.logout,
  imageURL: json['imageURL'] as String? ?? '',
  fcmToken: json['fcmToken'] as String? ?? '',
  userId: json['userId'] as String? ?? '',
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'authStatus': _$UserAuthStatusEnumMap[instance.authStatus],
      'imageURL': instance.imageURL,
      'fcmToken': instance.fcmToken,
      'userId': instance.userId,
    };

const _$UserAuthStatusEnumMap = {
  UserAuthStatus.login: 'login',
  UserAuthStatus.logout: 'logout',
};
