import 'package:flutter/material.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final String username;
  @JsonKey(ignore: true)
  final String password;
  final int permissionLevel;
  final String accessToken;
  final String refreshToken;

  UserDto({
    @required this.username,
    this.password = '',
    @required this.permissionLevel,
    this.accessToken = '',
    this.refreshToken = '',
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  factory UserDto.fromUserAndPassword(User user, Password password) {
    return UserDto(
      username: user.username.getOrCrash(),
      password: password.getOrCrash(),
      permissionLevel: user.permissionLevel.getOrCrash(),
    );
  }

  factory UserDto.fromUser(User user) {
    return UserDto(
      username: user.username.getOrCrash(),
      permissionLevel: user.permissionLevel.getOrCrash(),
    );
  }

  User toUser() {
    return User(
      username: UserName(username),
      permissionLevel: PermissionLevel(permissionLevel),
    );
  }
}
