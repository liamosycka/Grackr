import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gracker_app/domain/admin_features/entities/employee.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
part 'employee_preview.freezed.dart';

@freezed
abstract class EmployeePreview with _$EmployeePreview {
  const factory EmployeePreview({
    @required Employee employeeData,
    @required PermissionLevel permissionLevel,
  }) = _EmployeePreview;
}
