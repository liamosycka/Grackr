import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/admin_features/admin_features_failures.dart';

part 'create_guard_state.freezed.dart';

@freezed
abstract class CreateEmployeeState with _$CreateEmployeeState {
  const factory CreateEmployeeState({
    @required Name_Surname name,
    @required Name_Surname surname,
    @required EmployeeID employeeID,
    @required PermissionLevel employeePermissions,
    @required Option<UserName> currentUser,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<AdminFeaturesFailure, Unit>>
            adminFeaturesFailureOrSuccess,
  }) = _CreateGuardState;

  factory CreateEmployeeState.initial() => CreateEmployeeState(
        name: Name_Surname(''),
        surname: Name_Surname(''),
        employeeID: EmployeeID(''),
        showErrorMessages: false,
        isSubmitting: false,
        adminFeaturesFailureOrSuccess: none(),
        employeePermissions: PermissionLevel(PermissionLevel.guard),
        currentUser: none(),
      );
}
