import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/authentication/repositories/i_user_repository.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/domain/authentication/auth_failures.dart';

class Check_If_Authenticated extends UseCase<AuthFailure, User, Params> {
  final IUserRepository userRepository;
  Check_If_Authenticated({@required this.userRepository});

  /// Se verifica si existe una sesión (previamente auntenticada) cacheada en
  /// el dispositivo.
  ///
  /// - Devuelve [AuthFailure.operationFailed] si no se logra autenticar.
  ///
  /// - Se permite dar un resultado positivo cuando se obtiene un [AuthFailure.sessionExpired()]
  /// porque es logica del dominio. La expiración de la sesión no debe prevenir
  /// la entrada del empleado a la aplicación, y por lo tanto no pueda marcar
  /// su ingreso, reportar, etc...
  @override
  Future<Either<AuthFailure, User>> call(Params params) async {
    final failureOrUser = await userRepository.checkIfAuthenticated();
    return failureOrUser.fold(
      (failure) => failure.maybeMap(
        orElse: () =>
            Left(AuthFailure.operationFailed(failedValue: failure.toString())),
        sessionExpired: (f) => Right(f.user),
      ),
      (user) => Right(user),
    );
  }
}

class Params extends Equatable {
  @override
  List<Object> get props => null;
}
