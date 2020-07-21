import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/datasources/user_local_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:convert/convert.dart';

class User_Local_SharedPreferences implements User_Local_DataSource {
  final SharedPreferences sharedPreferences;
  static const String CACHED_USER = "CACHED_USER";

  User_Local_SharedPreferences({@required this.sharedPreferences});
  @override
  Future<void> cache_User(User_Model userModel) async {
    sharedPreferences.setString(CACHED_USER, json.encode(userModel.toJson()));
  }

  @override
  Future<User_Model> get_Cached_User() async {
    final result = sharedPreferences.getString(CACHED_USER);
    if (result != null) {
      return User_Model.fromJson(json.decode(result) as Map<String, dynamic>);
    } else {
      throw NoCachedAuthException();
    }
  }
}
