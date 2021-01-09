import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_local_datasource.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_remote_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';
import 'package:gracker_app/domain/authentication/repositories/i_user_repository.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/presentation/authentication/auth_failures.dart';

class User_Repository_Impl implements IUserRepository {
  final IUserLocalDataSource userLocalDataSource;
  final IUserRemoteDataSource userRemoteDataSource;

  User_Repository_Impl({
    @required this.userLocalDataSource,
    @required this.userRemoteDataSource,
  });

  Future<Either<AuthFailure, Unit>> _cache_User(User user) async {
    try {
      userLocalDataSource.cacheUser(UserDto.fromUser(user));
      return const Right(unit);
    } on NoCachedAuthException catch (_) {
      // TODO: Failure mas especifico
      return const Left(AuthFailure.noCachedUser());
    }
  }

  @override
  Future<Either<AuthFailure, User>> getCachedUser() async {
    try {
      final cached_usermodel = await userLocalDataSource.getCachedUser();
      return Right(cached_usermodel.toUser());
    } on NoCachedAuthException catch (_) {
      return const Left(AuthFailure.noCachedUser());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> clearCachedUser() async {
    try {
      await userLocalDataSource.clearCachedUser();
      return const Right(unit);
    } on Exception catch (_) {
      // TODO: Failure mas especifico
      return const Left(AuthFailure.noCachedUser());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> authenticate(
    User user,
    Password plainPassword,
  ) async {
    try {
      final userWithTokens = await userRemoteDataSource
          .authenticate(UserDto.fromUserAndPassword(user, plainPassword));
      return const Right(unit);
    } on Exception catch (e) {
      return Left(
        AuthFailure.authenticationFailed(
            failedValue:
                "Username: ${user.username.getOrCrash()}, Exception: ${e.toString()}"),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> getUsers() async {
    try {
      await userRemoteDataSource.getUsers();
      return const Right(unit);
    } on Exception catch (e) {
      return Left(
        AuthFailure.authenticationFailed(
            failedValue: " Exception: ${e.toString()}"),
      );
    }
  }
}

// @override
// Future<Either<AuthFailure, String>> get_Hashed_Password_If_Exists(
//     User user) async {
//   try {
//     final hashedPassword = await userRemoteDataSource
//         .get_Hashed_Password_If_Exists(UserDto.fromUser(user));
//     return Right(hashedPassword);
//   } on Exception catch (e) {
//     return Left(
//       AuthFailure.noUserFoundInDB(
//           failedValue:
//               "Username: ${user.username.getOrCrash()}, Exception: ${e.toString()}"),
//     );
//   }
// }
