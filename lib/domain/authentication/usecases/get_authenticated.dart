import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/authentication/repositories/i_user_repository.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/domain/authentication/auth_failures.dart';

class Get_Authenticated implements UseCase<AuthFailure, Unit, Params> {
  final IUserRepository userRepository;
  final Network_Info networkInfo;

  Get_Authenticated({
    @required this.userRepository,
    @required this.networkInfo,
  });

  /// Se verifican los datos ingresados, cacheando la sesión en caso positivo.
  ///
  ///- Devuelve [AuthFailure.operationFailed] si no se logra autenticar.
  ///
  ///- Devuelve [AuthFailure.noInternetConnection] si no hay internet.
  @override
  Future<Either<AuthFailure, Unit>> call(Params params) async {
    if (await networkInfo.isConnected) {
      final user = User(
        username: params.username,
        permissionLevel: params.permissionLevel,
      );

      final failureOrSuccess = await userRepository.authenticate(
        user,
        params.plainPassword,
      );

      return failureOrSuccess.fold(
        (failure) => Left(
          AuthFailure.operationFailed(failedValue: failure.toString()),
        ),
        (_) => const Right(unit),
      );
    } else {
      return const Left(AuthFailure.noInternetConnection());
    }
  }
}

class Params extends Equatable {
  final UserName username;
  final Password plainPassword;
  final PermissionLevel permissionLevel;

  const Params(
      {@required this.username,
      @required this.plainPassword,
      @required this.permissionLevel});

  @override
  List<Object> get props => [username, plainPassword, permissionLevel];
}
