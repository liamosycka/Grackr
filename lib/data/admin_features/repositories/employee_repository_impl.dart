import 'package:flutter/material.dart';
import 'package:gracker_app/data/admin_features/models/employee_dto.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';
import 'package:gracker_app/data/admin_features/datasources/i_employee_remote_datasource.dart';
import 'package:gracker_app/domain/admin_features/admin_features_exceptions.dart';
import 'package:gracker_app/domain/admin_features/entities/employee.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_info.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_preview.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:gracker_app/domain/admin_features/repositories/i_employee_repository.dart';
import 'package:gracker_app/domain/admin_features/admin_features_failures.dart';

class EmployeeRepositoryImpl implements IEmployeeRepository {
  final IEmployeeRemoteDataSource employeeRemoteDataSource;

  EmployeeRepositoryImpl({@required this.employeeRemoteDataSource});

  @override
  Future<Either<AdminFeaturesFailure, Unit>> createEmployee(
    User user,
    Employee employee,
    String hashedPassword,
    UserName creatorUsername,
  ) async {
    try {
      final result = await employeeRemoteDataSource.createEmployee(
        UserDto.fromUser(user),
        EmployeeDto.fromEmployee(employee),
        hashedPassword,
        creatorUsername.getOrCrash(),
      );
      return Right(result);
    } on AdminFeaturesException catch (e) {
      return Left(
        e.maybeMap(
          orElse: () =>
              AdminFeaturesFailure.operationFailed(failedValue: e.toString()),
          notAuthenticated: (value) =>
              const AdminFeaturesFailure.notAuthenticated(),
        ),
      );
    } on Exception catch (e) {
      return Left(
        AdminFeaturesFailure.operationFailed(failedValue: e.toString()),
      );
    }
  }

  @override
  Future<Either<AdminFeaturesFailure, List<EmployeePreview>>>
      getAllEmployeePreviews() async {
    try {
      final list = await employeeRemoteDataSource.getAllEmployeePreviews();
      return list.isEmpty
          ? const Left(AdminFeaturesFailure.noUsersFound())
          : Right(
              list
                  .map(
                    (previewDto) => previewDto.toEmployeePreview(),
                  )
                  .toList(),
            );
    } on AdminFeaturesException catch (e) {
      return Left(
        e.maybeMap(
          orElse: () =>
              AdminFeaturesFailure.operationFailed(failedValue: e.toString()),
          notAuthenticated: (value) =>
              const AdminFeaturesFailure.notAuthenticated(),
        ),
      );
    } on Exception catch (e) {
      return Left(
        AdminFeaturesFailure.operationFailed(failedValue: e.toString()),
      );
    }
  }

  @override
  Future<Either<AdminFeaturesFailure, Unit>> deleteEmployee(
      EmployeeID employeeID) async {
    try {
      final result = await employeeRemoteDataSource
          .deleteEmployee(employeeID.getOrCrash());
      return Right(result);
    } on AdminFeaturesException catch (e) {
      return Left(
        e.maybeMap(
          orElse: () =>
              AdminFeaturesFailure.operationFailed(failedValue: e.toString()),
          notAuthenticated: (value) =>
              const AdminFeaturesFailure.notAuthenticated(),
        ),
      );
    } on Exception catch (e) {
      return Left(
        AdminFeaturesFailure.operationFailed(failedValue: e.toString()),
      );
    }
  }

  @override
  Future<Either<AdminFeaturesFailure, EmployeeInfo>> getEmployeeInfo(
      EmployeeID employeeID) async {
    try {
      final result = await employeeRemoteDataSource
          .getEmployeeInfo(employeeID.getOrCrash());
      return Right(result.toEmployeeInfo());
    } on AdminFeaturesException catch (e) {
      return Left(
        e.maybeMap(
          orElse: () =>
              AdminFeaturesFailure.operationFailed(failedValue: e.toString()),
          notAuthenticated: (value) =>
              const AdminFeaturesFailure.notAuthenticated(),
        ),
      );
    } on Exception catch (e) {
      return Left(
        AdminFeaturesFailure.operationFailed(failedValue: e.toString()),
      );
    }
  }
}
