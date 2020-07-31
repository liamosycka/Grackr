/*
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/domain/admin_features/repositories/guard_crud_repository.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';
import 'package:injectable/injectable.dart';

class Create_Guard implements UseCase<Admin_Features_Failure, Unit, Params> {
  final Guard_CRUD_Repository guard_CRUD_Repository;
  final Network_Info networkInfo;

  Create_Guard({
    @required this.guard_CRUD_Repository,
    @required this.networkInfo,
  });

  @override
  Future<Either<Admin_Features_Failure, Unit>> call(Params params) async {
    // TODO: Método incompleto
    final String username = "${params.surname}_${params.employeeID}";
    final String plainPassword = "123${params.surname}_${params.employeeID}";
    final user = User(
        username: username, plainPassword: plainPassword, permissionLevel: 0);
    if (await networkInfo.isConnected) {
      final result = await guard_CRUD_Repository.delete_Guard(user);
      return result.fold((failure) => Left(failure), (r) => Right(r));
    } else {
      return const Left(Admin_Features_Failure.noInternetConnection());
    }
  }
}

class Params extends Equatable {
  final String name;
  final String surname;
  final String employeeID;

  const Params(
      {@required this.name, @required this.surname, @required this.employeeID});

  @override
  List<Object> get props => [name, surname, employeeID];
}
*/
