import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/authentication/repositories/user_repository.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/presentation/authentication/auth_failures.dart';

class Check_If_Authenticated extends UseCase<AuthFailure, User, Params> {
  final User_Repository userRepository;
  Check_If_Authenticated({@required this.userRepository});

  @override
  Future<Either<AuthFailure, User>> call(Params params) async {
    final failureOrUser = await userRepository.get_Cached_User();
    return failureOrUser.fold(
      (failure) => Left(failure),
      (user) => Right(user),
    );
    // TODO Agregar timer para la validez del user cacheado
  }
}

class Params extends Equatable {
  @override
  List<Object> get props => null;
}
