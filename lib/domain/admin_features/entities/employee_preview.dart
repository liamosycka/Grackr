import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gracker_app/core/value_objects.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
part 'employee_preview.freezed.dart';

@freezed
abstract class EmployeePreview with _$EmployeePreview {
  const factory EmployeePreview({
    @required ID id,
    @required Name_Surname name,
    @required Name_Surname surname,
    @required EmployeeID employeeID,
    @required PermissionLevel permissionLevel,
  }) = _EmployeePreview;
}
