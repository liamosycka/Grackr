import 'package:flutter/material.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_info.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';

/// Data Transfer Object para el objeto [EmployeeInfo]
class EmployeeInfoDto {
  static const String jsonKeyUsername = 'username';
  static const String jsonKeyCreationDateTime = 'date_joined';
  static const String jsonKeyCreatorUsername = 'created_by';

  final String username;
  final String creationDateTime;
  final String creatorUsername;

  EmployeeInfoDto({
    @required this.username,
    @required this.creationDateTime,
    @required this.creatorUsername,
  });

  factory EmployeeInfoDto.fromJson(Map<String, dynamic> json) {
    return EmployeeInfoDto(
      username: json[jsonKeyUsername].toString(),
      creationDateTime: json[jsonKeyCreationDateTime].toString(),
      creatorUsername: json[jsonKeyCreatorUsername].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      jsonKeyUsername: username,
      jsonKeyCreationDateTime: creationDateTime,
      jsonKeyCreatorUsername: creatorUsername,
    };
  }

  factory EmployeeInfoDto.fromEmployeeInfo(EmployeeInfo employeeInfo) {
    return EmployeeInfoDto(
      username: employeeInfo.username.getOrCrash(),
      creationDateTime: employeeInfo.creationDateTime.toIso8601String(),
      creatorUsername: employeeInfo.creatorUsername.getOrCrash(),
    );
  }

  EmployeeInfo toEmployeeInfo() {
    return EmployeeInfo(
      username: UserName(username),
      creationDateTime: DateTime.parse(creationDateTime),
      creatorUsername: UserName(creatorUsername),
    );
  }
}
