import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_local_datasource.dart';
import 'package:gracker_app/data/core/models/user_dto.dart';
import 'package:gracker_app/data/core/utils/jwt_manager/jwt_manager.dart';
import 'package:gracker_app/domain/authentication/auth_exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User_Local_SharedPreferences implements IUserLocalDataSource {
  final SharedPreferences sharedPreferences;
  final JWTManager jwtManager;
  static const String _cachedUser = "cachedUser";

  User_Local_SharedPreferences({
    @required this.sharedPreferences,
    @required this.jwtManager,
  });

  @override
  Future<Unit> cacheUser(UserDto userDto) async {
    sharedPreferences.setString(_cachedUser, json.encode(userDto.toJson()));
    return unit;
  }

  @override
  Future<UserDto> getCachedUser() async {
    final resultJson = sharedPreferences.getString(_cachedUser);
    if (resultJson != null) {
      return UserDto.fromJson(json.decode(resultJson) as Map<String, dynamic>);
    } else {
      throw const AuthException.noCachedUser();
    }
  }

  @override
  Future<Unit> clearCachedUser() async {
    sharedPreferences.remove(_cachedUser);
    jwtManager.clearTokens();
    return unit;
  }

  @override
  Future<bool> checkIfAuthenticated() async {
    return jwtManager.verifyTokenLocally();
  }
}
