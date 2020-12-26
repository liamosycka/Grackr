import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/authentication/repositories/i_user_repository.dart';
import 'package:gracker_app/presentation/authentication/auth_failures.dart';

class Log_Out extends UseCase<AuthFailure, Unit, Params> {
  final IUserRepository userRepository;
  Log_Out({@required this.userRepository});

  @override
  Future<Either<AuthFailure, Unit>> call(Params params) async {
    final failureOrSuccess = await userRepository.clear_Cached_User();
    return failureOrSuccess.fold(
      (failure) => const Left(AuthFailure.noCachedUser()),
      (_) => const Right(unit),
    );
  }
}

class Params extends Equatable {
  @override
  List<Object> get props => null;
}
