import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_local_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User_Local_SharedPreferences implements IUserLocalDataSource {
  final SharedPreferences sharedPreferences;
  static const String cachedUser = "cachedUser";

  User_Local_SharedPreferences({@required this.sharedPreferences});
  @override
  Future<void> cache_User(UserDto userDto) async {
    sharedPreferences.setString(cachedUser, json.encode(userDto.toJson()));
  }

  @override
  Future<UserDto> get_Cached_User() async {
    final result = sharedPreferences.getString(cachedUser);
    if (result != null) {
      return UserDto.fromJson(json.decode(result) as Map<String, dynamic>);
    } else {
      throw NoCachedAuthException();
    }
  }

  @override
  Future<void> clear_Cached_User() async {
    final result = sharedPreferences.remove(cachedUser);
  }
}
