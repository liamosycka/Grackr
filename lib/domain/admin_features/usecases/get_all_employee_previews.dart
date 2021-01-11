import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_preview.dart';
import 'package:gracker_app/domain/admin_features/repositories/i_employee_repository.dart';
import 'package:gracker_app/domain/admin_features/admin_features_failures.dart';

class Get_All_Employee_Previews
    implements UseCase<AdminFeaturesFailure, List<EmployeePreview>, Params> {
  final IEmployeeRepository employeeRepository;
  final Network_Info networkInfo;

  Get_All_Employee_Previews({
    @required this.employeeRepository,
    @required this.networkInfo,
  });

  @override
  Future<Either<AdminFeaturesFailure, List<EmployeePreview>>> call(
      Params params) async {
    if (await networkInfo.isConnected) {
      final failureOrList = await employeeRepository.getAllEmployeePreviews();
      return failureOrList.fold(
        (failure) => Left(failure),
        (list) => Right(list),
      );
    } else {
      return const Left(AdminFeaturesFailure.noInternetConnection());
    }
  }
}

class Params extends Equatable {
  const Params();

  @override
  List<Object> get props => [];
}
