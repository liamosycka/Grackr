import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/admin_features/repositories/i_employee_repository.dart';
import 'package:gracker_app/domain/admin_features/admin_features_failures.dart';

class Delete_Employee implements UseCase<AdminFeaturesFailure, Unit, Params> {
  final IEmployeeRepository employeeRepository;
  final Network_Info networkInfo;

  Delete_Employee({
    @required this.employeeRepository,
    @required this.networkInfo,
  });

  @override
  Future<Either<AdminFeaturesFailure, Unit>> call(Params params) async {
    if (await networkInfo.isConnected) {
      final failureOrSuccess =
          await employeeRepository.deleteEmployee(params.employeeID);

      return failureOrSuccess.fold(
        (failure) => Left(failure),
        (r) => Right(r),
      );
    } else {
      return const Left(AdminFeaturesFailure.noInternetConnection());
    }
  }
}

class Params extends Equatable {
  final EmployeeID employeeID;

  const Params({
    @required this.employeeID,
  });

  @override
  List<Object> get props => [employeeID];
}
