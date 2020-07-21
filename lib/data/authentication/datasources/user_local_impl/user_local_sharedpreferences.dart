import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/datasources/user_local_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: User_Local_DataSource)
class User_Local_SharedPreferences implements User_Local_DataSource {
  final SharedPreferences sharedPreferences;
  static const String cachedUser = "cachedUser";

  User_Local_SharedPreferences({@required this.sharedPreferences});
  @override
  Future<void> cache_User(User_Model userModel) async {
    sharedPreferences.setString(cachedUser, json.encode(userModel.toJson()));
  }

  @override
  Future<User_Model> get_Cached_User() async {
    final result = sharedPreferences.getString(cachedUser);
    if (result != null) {
      return User_Model.fromJson(json.decode(result) as Map<String, dynamic>);
    } else {
      throw NoCachedAuthException();
    }
  }
}
