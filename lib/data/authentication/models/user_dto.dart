import 'package:flutter/material.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';

class UserDto {
  static const String _USERNAME = 'username';
  static const String _PASSWORD = 'plainPassword';
  static const String _PERMISSIONS = 'permissionLevel';

  final String username;
  final String password;
  final int permissionLevel;

  UserDto({
    @required this.username,
    @required this.password,
    @required this.permissionLevel,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      username: json[_USERNAME].toString(),
      password: json[_PASSWORD].toString(),
      permissionLevel: int.parse(json[_PERMISSIONS].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _USERNAME: username,
      _PASSWORD: password,
      _PERMISSIONS: permissionLevel.toString()
    };
  }

  factory UserDto.fromUser(User user) {
    return UserDto(
      username: user.username.getOrCrash(),
      password: user.password.getOrCrash(),
      permissionLevel: user.permissionLevel.getOrCrash(),
    );
  }

  User toUser() {
    return User(
      username: UserName(username),
      password: Password(password),
      permissionLevel: PermissionLevel(permissionLevel),
    );
  }
}
