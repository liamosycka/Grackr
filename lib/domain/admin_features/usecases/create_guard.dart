import 'package:dartz/dartz.dart';
import 'package:dbcrypt/dbcrypt.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/domain/admin_features/repositories/guard_crud_repository.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';

class Create_Guard implements UseCase<Admin_Features_Failure, Unit, Params> {
  final Guard_CRUD_Repository guard_CRUD_Repository;
  final Network_Info networkInfo;
  final DBCrypt dbCrypt;

  Create_Guard({
    @required this.guard_CRUD_Repository,
    @required this.networkInfo,
    @required this.dbCrypt,
  });

  @override
  Future<Either<Admin_Features_Failure, Unit>> call(Params params) async {
    if (params.name.isValid() &&
        params.surname.isValid() &&
        params.employeeID.isValid()) {
      if (await networkInfo.isConnected) {
        // TODO rework
        final String username =
            "${params.surname.getOrCrash()}_${params.employeeID.getOrCrash()}";
        final String plainPassword =
            "123${params.surname.getOrCrash()}_${params.employeeID.getOrCrash()}";
        final user = User(
          username: UserName(username),
          password: Password(plainPassword),
          permissionLevel: PermissionLevel(PermissionLevel.guard),
        );

        final String hashedPass =
            dbCrypt.hashpw(plainPassword, dbCrypt.gensalt());

        final failureOrSuccess =
            await guard_CRUD_Repository.create_Guard(user, hashedPass);

        return failureOrSuccess.fold(
          (failure) => Left(failure),
          (r) => Right(r),
        );
      } else {
        return const Left(Admin_Features_Failure.noInternetConnection());
      }
    } else {
      return const Left(Admin_Features_Failure.failedDomainVerification());
    }
  }
}

/*
void _generateStart_End_random(List<String> list) {
  String startPass = "";
  String endPass = "";
  for (var i = 0; i <= 4; i++) {
    // ignore: use_string_buffers
    startPass += Random().nextInt(100).toString();
    // ignore: use_string_buffers
    endPass += Random().nextInt(100).toString();
  }
  list[0] = startPass;
  list[1] = endPass;
}*/

class Params extends Equatable {
  final Name_Surname name;
  final Name_Surname surname;
  final EmployeeID employeeID;

  const Params(
      {@required this.name, @required this.surname, @required this.employeeID});

  @override
  List<Object> get props => [name, surname, employeeID];
}
