import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/authentication/repositories/i_user_repository.dart';
import 'package:gracker_app/domain/authentication/auth_failures.dart';

class Log_Out extends UseCase<AuthFailure, Unit, Params> {
  final IUserRepository userRepository;
  Log_Out({@required this.userRepository});

  /// Se intenta desloguear al usuario.
  ///
  /// - En caso de fallar, se devuelve [AuthFailure.operationFailed]
  ///
  @override
  Future<Either<AuthFailure, Unit>> call(Params params) async {
    final failureOrSuccess = await userRepository.logOut();
    return failureOrSuccess.fold(
      (failure) => Left(
        AuthFailure.operationFailed(
          failedValue: failure.toString(),
        ),
      ),
      (_) => const Right(unit),
    );
  }
}

class Params extends Equatable {
  @override
  List<Object> get props => null;
}
