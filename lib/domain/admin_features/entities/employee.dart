import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';

part 'employee.freezed.dart';

@freezed
abstract class Employee with _$Employee {
  const factory Employee({
    @required Name_Surname name,
    @required Name_Surname surname,
    @required EmployeeID employeeID,
  }) = _Employee;
}
