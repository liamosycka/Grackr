import 'package:dartz/dartz.dart';
import 'package:dbcrypt/dbcrypt.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/authentication/repositories/user_repository.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:injectable/injectable.dart';
import '../../../presentation/authentication/auth_failures.dart';

@lazySingleton
class Get_Authenticated implements UseCase<AuthFailure, Unit, Params> {
  final User_Repository userRepository;
  final Network_Info networkInfo;
  final DBCrypt dbCrypt;

  Get_Authenticated(
      {@required this.userRepository,
      @required this.networkInfo,
      @required this.dbCrypt});

  @override
  Future<Either<AuthFailure, Unit>> call(Params params) async {
    if (await networkInfo.isConnected) {
      // Primero se verifican los valores pasados
      if (params.username.isValid() && params.plainPassword.isValid()) {
        final user = User(
            username: params.username,
            password: params.plainPassword,
            permissionLevel: params.permissionLevel);

        final failureOrHashedPassword =
            await userRepository.get_Hashed_Password_If_Exists(user);

        return failureOrHashedPassword.fold((failure) => Left(failure),
            (hashedPassword) {
          if (dbCrypt.checkpw(
              params.plainPassword.getOrCrash(), hashedPassword)) {
            userRepository.cache_User(user);
            return Right(unit);
          } else {
            return const Left(AuthFailure.noPasswordMatch());
          }
        });
      } else {
        return const Left(AuthFailure.failedDomainVerification());
      }
    } else {
      return const Left(AuthFailure.noInternetConnection());
    }
  }
}

class Params extends Equatable {
  final UserName username;
  final Password plainPassword;
  final int permissionLevel;

  const Params(
      {@required this.username,
      @required this.plainPassword,
      @required this.permissionLevel});

  @override
  List<Object> get props => [username, plainPassword, permissionLevel];
}
