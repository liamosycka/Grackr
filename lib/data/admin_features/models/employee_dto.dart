import 'package:flutter/material.dart';
import 'package:gracker_app/domain/admin_features/entities/employee.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';

/// Data Transfer Object para el objeto [Employee]
class EmployeeDto {
  static const String _name = 'name';
  static const String _surname = 'surname';
  static const String _employeeId = 'employeeId';

  final String name;
  final String surname;
  final String employeeId;

  EmployeeDto({
    @required this.name,
    @required this.surname,
    @required this.employeeId,
  });

  factory EmployeeDto.fromJson(Map<String, dynamic> json) {
    return EmployeeDto(
      name: json[_name].toString(),
      surname: json[_surname].toString(),
      employeeId: json[_employeeId].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _name: name,
      _surname: surname,
      _employeeId: employeeId,
    };
  }

  factory EmployeeDto.fromEmployee(Employee employee) {
    return EmployeeDto(
      name: employee.name.getOrCrash(),
      surname: employee.surname.getOrCrash(),
      employeeId: employee.employeeID.getOrCrash(),
    );
  }

  Employee toEmployee() {
    return Employee(
      name: Name_Surname(name),
      surname: Name_Surname(surname),
      employeeID: EmployeeID(employeeId),
    );
  }
}
