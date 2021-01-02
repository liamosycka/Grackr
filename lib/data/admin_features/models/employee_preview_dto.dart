import 'package:flutter/material.dart';
import 'package:gracker_app/data/admin_features/models/employee_dto.dart';
import 'package:gracker_app/domain/admin_features/entities/employee.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_preview.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';

/// Data Transfer Object para el objeto [EmployeePreview]
class EmployeePreviewDto {
  static const String _name = 'name';
  static const String _surname = 'surname';
  static const String _employeeId = 'employeeId';
  static const String _permissions = 'permissions';

  final EmployeeDto employeeData;
  final int permissions;

  EmployeePreviewDto({
    @required this.employeeData,
    @required this.permissions,
  });

  factory EmployeePreviewDto.fromJson(Map<String, dynamic> json) {
    return EmployeePreviewDto(
      employeeData: EmployeeDto(
        name: json[_name].toString(),
        surname: json[_surname].toString(),
        employeeId: json[_employeeId].toString(),
      ),
      permissions: int.parse(json[_permissions].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _name: employeeData.name,
      _surname: employeeData.surname,
      _employeeId: employeeData.employeeId,
      _permissions: permissions.toString(),
    };
  }

  factory EmployeePreviewDto.fromEmployeePreview(
      EmployeePreview employeePreview) {
    return EmployeePreviewDto(
      employeeData: EmployeeDto.fromEmployee(employeePreview.employeeData),
      permissions: employeePreview.permissionLevel.getOrCrash(),
    );
  }

  EmployeePreview toEmployeePreview() {
    return EmployeePreview(
      employeeData: Employee(
        employeeID: EmployeeID(employeeData.employeeId),
        name: Name_Surname(employeeData.name),
        surname: Name_Surname(employeeData.surname),
      ),
      permissionLevel: PermissionLevel(permissions),
    );
  }
}
