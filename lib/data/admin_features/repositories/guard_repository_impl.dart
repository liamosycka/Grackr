import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/admin_features/models/employee_dto.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';
import 'package:gracker_app/data/admin_features/datasources/i_guard_remote_datasource.dart';
import 'package:gracker_app/domain/admin_features/entities/employee.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:gracker_app/domain/admin_features/repositories/i_guard_repository.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';

class GuardRepositoryImpl implements IGuardRepository {
  final IGuardRemoteDataSource guardRemoteDataSource;

  GuardRepositoryImpl({@required this.guardRemoteDataSource});

  @override
  Future<Either<Admin_Features_Failure, Unit>> create_Guard(
    User user,
    Employee employee,
    String hashedPassword,
    UserName creatorUsername,
  ) async {
    try {
      final result = await guardRemoteDataSource.create_guard(
        UserDto.fromUser(user),
        EmployeeDto.fromEmployee(employee),
        hashedPassword,
        creatorUsername.getOrCrash(),
      );
      return Right(result);
    } on OperationFailedException catch (e) {
      return Left(
        Admin_Features_Failure.failedToCreateUser(failedValue: e.toString()),
      );
    }
  }
}
