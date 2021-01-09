import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_remote_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';
import 'package:gracker_app/data/core/models/jwt_manager.dart';
// import 'package:http/http.dart' as http;

class UserRemoteGrAPI implements IUserRemoteDataSource {
  const UserRemoteGrAPI({@required this.baseUrl, @required this.jwtManager});

  final String baseUrl;
  final JWTManager jwtManager;

  @override
  Future<Unit> authenticate(UserDto userDto) async {
    try {
      await jwtManager.authenticateFromUserAndPassword(
        username: userDto.username,
        password: userDto.password,
      );
    } on Exception {
      rethrow;
    }
    return unit;
  }

  @override
  Future<Unit> getUsers() async {
    try {
      final response = await jwtManager.get(
        'https://grackr-api.herokuapp.com/api/users/',
      );
      response.statusCode == HttpStatus.ok
          ? print('NICE. EL RESULTADO FUE: ${json.decode(response.body)}')
          : print('Hubo un error :( :( :( :( :( :( :(');
    } on Exception {
      rethrow;
    }
    return unit;
  }
}
