// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return UserDto(
    username: json['username'] as String,
    permissionLevel: json['permissionLevel'] as int,
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
  );
}

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'username': instance.username,
      'permissionLevel': instance.permissionLevel,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
