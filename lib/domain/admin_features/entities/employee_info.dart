import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
part 'employee_info.freezed.dart';

@freezed
abstract class EmployeeInfo with _$EmployeeInfo {
  const factory EmployeeInfo({
    @required UserName username,
    @required DateTime creationDateTime,
    @required UserName creatorUsername,
  }) = _EmployeeInfo;
}
