import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_local_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User_Local_SharedPreferences implements IUserLocalDataSource {
  final SharedPreferences sharedPreferences;
  static const String _cachedUser = "cachedUser";

  User_Local_SharedPreferences({@required this.sharedPreferences});

  @override
  Future<void> cacheUser(UserDto userDto) async {
    sharedPreferences.setString(_cachedUser, json.encode(userDto.toJson()));
  }

  @override
  Future<UserDto> getCachedUser() async {
    final resultJson = sharedPreferences.getString(_cachedUser);
    if (resultJson != null) {
      return UserDto.fromJson(json.decode(resultJson) as Map<String, dynamic>);
    } else {
      throw NoCachedAuthException();
    }
  }

  @override
  Future<void> clearCachedUser() async {
    sharedPreferences.remove(_cachedUser);
  }
}
