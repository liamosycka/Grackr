import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_remote_datasource.dart';
import 'package:gracker_app/data/core/models/user_dto.dart';
import 'package:gracker_app/data/core/utils/jwt_manager/jwt_manager.dart';
import 'package:gracker_app/domain/authentication/auth_exceptions.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';

class UserRemoteGrAPI implements IUserRemoteDataSource {
  const UserRemoteGrAPI({@required this.baseUrl, @required this.jwtManager});

  final String baseUrl; // .../api/
  final JWTManager jwtManager;

  @override
  Future<Unit> authenticate(UserDto userDto) async {
    final userInfoJson = await jwtManager.authenticateFromUserAndPassword(
      username: userDto.username,
      password: userDto.password,
    );
    // Para asegurarnos  de estar trabajando con la API esperada
    bool isPermissionValid = userInfoJson.containsKey("role") &&
        userInfoJson.containsKey("is_staff");
    if (isPermissionValid) {
      isPermissionValid &=
          (userInfoJson["role"] as int) == userDto.permissionLevel;
      if (userDto.permissionLevel == PermissionLevel.admin) {
        isPermissionValid &= userInfoJson["is_staff"] as bool;
      }
    }
    if (!isPermissionValid) {
      throw const AuthException.notAuthenticated();
    }
    return unit;
  }

  @override
  Future<bool> checkIfAuthenticated() async {
    return jwtManager.verifyTokenLocally();
  }
}
