import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';

part 'create_guard_state.freezed.dart';

@freezed
abstract class CreateGuardState with _$CreateGuardState {
  const factory CreateGuardState({
    @required Name_Surname name,
    @required Name_Surname surname,
    @required EmployeeID employeeID,
    @required PermissionLevel employeePermissions,
    @required Option<UserName> currentUser,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<Admin_Features_Failure, Unit>>
            adminFeaturesFailureOrSuccess,
  }) = _CreateGuardState;

  factory CreateGuardState.initial() => CreateGuardState(
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
