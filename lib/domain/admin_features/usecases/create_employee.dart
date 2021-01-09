import 'package:dartz/dartz.dart';
import 'package:dbcrypt/dbcrypt.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/core/value_transformers.dart';
import 'package:gracker_app/domain/admin_features/entities/employee.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/domain/admin_features/repositories/i_employee_repository.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';

class Create_Employee implements UseCase<Admin_Features_Failure, Unit, Params> {
  final IEmployeeRepository employeeRepository;
  final Network_Info networkInfo;
  final DBCrypt dbCrypt;

  Create_Employee({
    @required this.employeeRepository,
    @required this.networkInfo,
    @required this.dbCrypt,
  });

  @override
  Future<Either<Admin_Features_Failure, Unit>> call(Params params) async {
    if (await networkInfo.isConnected) {
      final UserName username = transformIntoUsername(
        params.surname.getOrCrash(),
        params.employeeID.getOrCrash(),
      );
      final Password password = transformIntoPassword(
        params.surname.getOrCrash(),
      );

      if (username.isValid() && password.isValid()) {
        final user = User(
          username: username,
          permissionLevel: params.permissionLevel,
        );

        final employee = Employee(
          name: params.name,
          surname: params.surname,
          employeeID: params.employeeID,
        );

        final String hashedPass = dbCrypt.hashpw(
          password.getOrCrash(),
          dbCrypt.gensalt(),
        );

        final failureOrSuccess = await employeeRepository.createEmployee(
            user, employee, hashedPass, params.creatorUsername);

        return failureOrSuccess.fold(
          (failure) => Left(failure),
          (r) => Right(r),
        );
      } else {
        return const Left(Admin_Features_Failure.failedDomainVerification());
      }
    } else {
      return const Left(Admin_Features_Failure.noInternetConnection());
    }
  }
}

class Params extends Equatable {
  final Name_Surname name;
  final Name_Surname surname;
  final EmployeeID employeeID;
  final PermissionLevel permissionLevel;
  final UserName creatorUsername;

  const Params({
    @required this.permissionLevel,
    @required this.creatorUsername,
    @required this.name,
    @required this.surname,
    @required this.employeeID,
  });

  @override
  List<Object> get props => [name, surname, employeeID];
}
