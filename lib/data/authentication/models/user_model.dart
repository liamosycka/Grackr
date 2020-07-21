import 'package:flutter/material.dart';
import 'package:gracker_app/domain/core/entities/user.dart';

class User_Model extends User {
  static const String _USERNAME = 'username';
  static const String _PASSWORD = 'plainPassword';
  static const String _PERMISSIONS = 'permissionLevel';

  const User_Model(
      {@required String username,
      @required String plainPassword,
      @required int permissionLevel})
      : super(
            username: username,
            plainPassword: plainPassword,
            permissionLevel: permissionLevel);

  factory User_Model.fromJson(Map<String, dynamic> json) {
    return User_Model(
        username: json[_USERNAME].toString(),
        plainPassword: json[_PASSWORD].toString(),
        permissionLevel: int.parse(json[_PERMISSIONS].toString()));
  }

  Map<String, dynamic> toJson() {
    return {
      _USERNAME: username,
      _PASSWORD: plainPassword,
      _PERMISSIONS: permissionLevel.toString()
    };
  }

  factory User_Model.fromUser(User user) {
    return User_Model(
        username: user.username,
        plainPassword: user.plainPassword,
        permissionLevel: user.permissionLevel);
  }
}
