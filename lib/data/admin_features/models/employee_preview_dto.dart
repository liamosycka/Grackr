import 'package:flutter/material.dart';
import 'package:gracker_app/core/value_objects.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_preview.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';

/// Data Transfer Object para el objeto [EmployeePreview]
class EmployeePreviewDto {
  static const String jsonKeyId = 'id';
  static const String jsonKeyName = 'name';
  static const String jsonKeySurname = 'surname';
  static const String jsonKeyEmployeeId = 'employee_id';
  static const String jsonKeyPermissions = 'role';

  final int id;
  final String name;
  final String surname;
  final String employeeId;
  final int permissions;

  EmployeePreviewDto({
    @required this.id,
    @required this.name,
    @required this.surname,
    @required this.employeeId,
    @required this.permissions,
  });

  factory EmployeePreviewDto.fromJson(Map<String, dynamic> json) {
    return EmployeePreviewDto(
      id: int.parse(json[jsonKeyId].toString()),
      name: json[jsonKeyName].toString(),
      surname: json[jsonKeySurname].toString(),
      employeeId: json[jsonKeyEmployeeId].toString(),
      permissions: int.parse(json[jsonKeyPermissions].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      jsonKeyId: id,
      jsonKeyName: name,
      jsonKeySurname: surname,
      jsonKeyEmployeeId: employeeId,
      jsonKeyPermissions: permissions.toString(),
    };
  }

  factory EmployeePreviewDto.fromEmployeePreview(
      EmployeePreview employeePreview) {
    return EmployeePreviewDto(
      id: employeePreview.id.getOrCrash(),
      name: employeePreview.name.getOrCrash(),
      surname: employeePreview.surname.getOrCrash(),
      employeeId: employeePreview.employeeID.getOrCrash(),
      permissions: employeePreview.permissionLevel.getOrCrash(),
    );
  }

  EmployeePreview toEmployeePreview() {
    return EmployeePreview(
      id: ID(id),
      employeeID: EmployeeID(employeeId),
      name: Name_Surname(name),
      surname: Name_Surname(surname),
      permissionLevel: PermissionLevel(permissions),
    );
  }
}
