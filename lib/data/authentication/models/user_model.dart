import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';

class User_Model {
  static const String _USERNAME = 'username';
  static const String _PASSWORD = 'plainPassword';
  static const String _PERMISSIONS = 'permissionLevel';

  final UserName username;
  final Password password;
  final int permissionLevel;

  User_Model({
    this.username,
    this.password,
    this.permissionLevel,
  });

  factory User_Model.fromJson(Map<String, dynamic> json) {
    return User_Model(
        username: UserName(json[_USERNAME].toString()),
        password: Password(json[_PASSWORD].toString()),
        permissionLevel: int.parse(json[_PERMISSIONS].toString()));
  }

  Map<String, dynamic> toJson() {
    return {
      _USERNAME: username.getOrCrash(),
      _PASSWORD: password.getOrCrash(),
      _PERMISSIONS: permissionLevel.toString()
    };
  }

  factory User_Model.fromUser(User user) {
    return User_Model(
        username: user.username,
        password: user.password,
        permissionLevel: user.permissionLevel);
  }

  User toUser() {
    return User(
        username: username,
        password: password,
        permissionLevel: permissionLevel);
  }
}
