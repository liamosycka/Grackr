import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/datasources/user_local_datasource.dart';
import 'package:gracker_app/data/authentication/datasources/user_remote_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:gracker_app/domain/authentication/repositories/user_repository.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/presentation/authentication/auth_failures.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: User_Repository)
class User_Repository_Impl implements User_Repository {
  final User_Local_DataSource userLocalDataSource;
  final User_Remote_DataSource userRemoteDataSource;

  User_Repository_Impl(
      {@required this.userLocalDataSource,
      @required this.userRemoteDataSource});

  @override
  Future<Either<AuthFailure, void>> cache_User(User user) async {
    userLocalDataSource.cache_User(User_Model.fromUser(user));
    return null;
  }

  @override
  Future<Either<AuthFailure, User>> get_Cached_User() async {
    try {
      final cached_usermodel = await userLocalDataSource.get_Cached_User();
      return Right(cached_usermodel.toUser());
    } on NoCachedAuthException catch (_) {
      return const Left(AuthFailure.noCachedUser());
    }
  }

  @override
  Future<Either<AuthFailure, String>> get_Hashed_Password_If_Exists(
      User user) async {
    try {
      final hashedPassword = await userRemoteDataSource
          .get_Hashed_Password_If_Exists(User_Model.fromUser(user));
      return Future.value(Right(hashedPassword));
    } on Exception catch (e) {
      return Future.value(Left(AuthFailure.noUserFoundInDB(
          failedValue:
              "Username: ${user.username.getOrCrash()}, Exception: ${e.toString()}")));
    }
  }
}
