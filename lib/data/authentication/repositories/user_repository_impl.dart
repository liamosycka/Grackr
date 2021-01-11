import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_local_datasource.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_remote_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';
import 'package:gracker_app/domain/authentication/auth_exceptions.dart';
import 'package:gracker_app/domain/authentication/repositories/i_user_repository.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/domain/authentication/auth_failures.dart';

class User_Repository_Impl implements IUserRepository {
  final IUserLocalDataSource userLocalDataSource;
  final IUserRemoteDataSource userRemoteDataSource;

  User_Repository_Impl({
    @required this.userLocalDataSource,
    @required this.userRemoteDataSource,
  });

  @override
  Future<Either<AuthFailure, User>> getCachedUser() async {
    try {
      final cached_usermodel = await userLocalDataSource.getCachedUser();
      //? JWT
      return Right(cached_usermodel.toUser());
    } on AuthException catch (e) {
      return e.maybeMap(
        orElse: () => Left(
          AuthFailure.noCachedUser(failedValue: "Failure: ${e.toString()}"),
        ),
        noCachedUser: (e) => const Left(AuthFailure.noCachedUser()),
      );
    } on Exception catch (e) {
      return Left(AuthFailure.cacheFailure(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure<String>, Unit>> logOut() async {
    try {
      await userLocalDataSource.clearCachedUser();
      return const Right(unit);
    } on AuthException catch (e) {
      return Left(AuthFailure.operationFailed(failedValue: e.toString()));
    } on Exception catch (e) {
      return Left(AuthFailure.cacheFailure(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> authenticate(
    User user,
    Password plainPassword,
  ) async {
    try {
      final userDto = UserDto.fromUserAndPassword(user, plainPassword);
      await userRemoteDataSource.authenticate(userDto);
      _cache_User(userDto);
      return const Right(unit);
    } on AuthException catch (e) {
      return e.maybeMap(
        orElse: () => Left(
          AuthFailure.operationFailed(
              failedValue:
                  "Username: ${user.username.getOrCrash()}, Exception: ${e.toString()}"),
        ),
      );
    } on Exception catch (e) {
      return Left(
        AuthFailure.cacheFailure(
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
        AuthFailure.operationFailed(failedValue: " Exception: ${e.toString()}"),
      );
    }
  }

  /// Se verifica si hubo al menos una sesión en algún momento.
  /// - Si la hay, se recupera la información.
  /// - Si no la hay, se considera que no hay una sesión activa en el momento.
  ///
  @override
  Future<Either<AuthFailure, User>> checkIfAuthenticated() async {
    try {
      final cachedUserDto = await userLocalDataSource.getCachedUser();
      final user = cachedUserDto.toUser();
      //? Verificar JWT
      if (await userLocalDataSource.checkIfAuthenticated()) {
        return Right(user);
      } else {
        return Left(AuthFailure.sessionExpired(user: user));
      }
    } on AuthException catch (e) {
      return e.maybeMap(
        orElse: () => Left(
          AuthFailure.operationFailed(
              failedValue: "Exception: ${e.toString()}"),
        ),
        noCachedUser: (e) => const Left(AuthFailure.noCachedUser()),
      );
    } on Exception catch (e) {
      return Left(AuthFailure.cacheFailure(failedValue: e.toString()));
    }
  }

  /// Método privado
  ///! PUEDE tirar excepciones
  Future<Unit> _cache_User(UserDto userDto) async {
    userLocalDataSource.cacheUser(userDto);
    return unit;
  }
}
