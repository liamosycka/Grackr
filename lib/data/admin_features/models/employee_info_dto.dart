import 'package:flutter/material.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_info.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';

/// Data Transfer Object para el objeto [EmployeeInfo]
class EmployeeInfoDto {
  static const String _username = 'username';
  static const String _creationDateTime = 'creationDateTime';
  static const String _creatorUsername = 'creatorUsername';

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
      username: json[_username].toString(),
      creationDateTime: json[_creationDateTime].toString(),
      creatorUsername: json[_creatorUsername].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _username: username,
      _creationDateTime: creationDateTime,
      _creatorUsername: creatorUsername,
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
