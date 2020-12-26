import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_local_datasource.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_remote_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:gracker_app/domain/authentication/repositories/i_user_repository.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/presentation/authentication/auth_failures.dart';

class User_Repository_Impl implements IUserRepository {
  final IUserLocalDataSource userLocalDataSource;
  final IUserRemoteDataSource userRemoteDataSource;

  User_Repository_Impl({
    @required this.userLocalDataSource,
    @required this.userRemoteDataSource,
  });

  @override
  Future<Either<AuthFailure, Unit>> cache_User(User user) async {
    userLocalDataSource.cache_User(User_Model.fromUser(user));
    return const Right(unit);
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
      return Right(hashedPassword);
    } on Exception catch (e) {
      return Left(
        AuthFailure.noUserFoundInDB(
            failedValue:
                "Username: ${user.username.getOrCrash()}, Exception: ${e.toString()}"),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> clear_Cached_User() async {
    try {
      await userLocalDataSource.clear_Cached_User();
      return const Right(unit);
    } on Exception catch (_) {
      return const Left(AuthFailure.noCachedUser());
    }
  }
}
