import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/errors.dart';
import 'package:gracker_app/data/admin_features/datasources/i_employee_remote_datasource.dart';
import 'package:gracker_app/data/admin_features/models/employee_preview_dto.dart';
import 'package:gracker_app/data/admin_features/models/employee_info_dto.dart';
import 'package:gracker_app/data/admin_features/models/employee_dto.dart';
import 'package:gracker_app/data/core/models/user_dto.dart';
import 'package:gracker_app/data/core/utils/jwt_manager/jwt_exceptions.dart';
import 'package:gracker_app/data/core/utils/jwt_manager/jwt_manager.dart';
import 'package:gracker_app/domain/admin_features/admin_features_exceptions.dart';

class EmployeeRemoteGrAPI implements IEmployeeRemoteDataSource {
  const EmployeeRemoteGrAPI(
      {@required this.baseUrl, @required this.jwtManager});

  final String baseUrl; // .../api/
  final JWTManager jwtManager;
  //
  static const String endpoint = 'employees/';

  @override
  Future<Unit> createEmployee(UserDto userDto, EmployeeDto employeeDto,
      String hashedPassword, String creatorUsername) {
    // TODO: implement createEmployee
    throw UnimplementedError();
  }

  @override
  Future<Unit> deleteEmployee(int id) {
    // TODO: implement deleteEmployee
    throw UnimplementedError();
  }

  @override
  Future<List<EmployeePreviewDto>> getAllEmployeePreviews() async {
    List<dynamic> jsonResponse;
    try {
      jsonResponse = await jwtManager.get('$baseUrl$endpoint') as List<dynamic>;
    } on JWTException catch (e) {
      throw e.maybeMap(
        orElse: () =>
            AdminFeaturesException.operationFailed(failedValue: e.toString()),
        notAuthenticated: (e) =>
            const AdminFeaturesException.notAuthenticated(),
        forbidden: (e) => const AdminFeaturesException.notEnoughPermissions(),
      );
    }
    final isResponseEmpty = jsonResponse.isEmpty;
    if (isResponseEmpty) {
      return List<EmployeePreviewDto>.empty();
    } else {
      final firstJson = jsonResponse[0] as Map<String, dynamic>;
      final isResponseValid =
          firstJson.containsKey(EmployeePreviewDto.jsonKeyName) &&
              firstJson.containsKey(EmployeePreviewDto.jsonKeySurname) &&
              firstJson.containsKey(EmployeePreviewDto.jsonKeyEmployeeId) &&
              firstJson.containsKey(EmployeePreviewDto.jsonKeyId) &&
              firstJson.containsKey(EmployeePreviewDto.jsonKeyPermissions);
      if (isResponseValid) {
        return jsonResponse
            .map(
              (dic) => EmployeePreviewDto.fromJson(dic as Map<String, dynamic>),
            )
            .toList();
      } else {
        throw const AdminFeaturesException.operationFailed(
          failedValue: 'Formato de respuesta no esperado.',
        );
      }
    }
  }

  @override
  Future<EmployeeInfoDto> getEmployeeInfo(int id) async {
    Map<String, dynamic> jsonResponse;
    try {
      jsonResponse =
          await jwtManager.get('$baseUrl$endpoint$id/') as Map<String, dynamic>;
    } on JWTException catch (e) {
      throw e.maybeMap(
        orElse: () =>
            AdminFeaturesException.operationFailed(failedValue: e.toString()),
        notAuthenticated: (e) =>
            const AdminFeaturesException.notAuthenticated(),
        forbidden: (e) => const AdminFeaturesException.notEnoughPermissions(),
      );
    }
    final isResponseValid = jsonResponse.containsKey("user");
    if (isResponseValid) {
      final userUrl = jsonResponse["user"];
      try {
        jsonResponse = await jwtManager.get('$userUrl') as Map<String, dynamic>;
      } on JWTException catch (e) {
        throw e.maybeMap(
          orElse: () =>
              AdminFeaturesException.operationFailed(failedValue: e.toString()),
          notAuthenticated: (e) =>
              const AdminFeaturesException.notAuthenticated(),
          forbidden: (e) => const AdminFeaturesException.notEnoughPermissions(),
        );
      }

      final isResponseValid = jsonResponse
              .containsKey(EmployeeInfoDto.jsonKeyUsername) &&
          jsonResponse.containsKey(EmployeeInfoDto.jsonKeyCreationDateTime) &&
          jsonResponse.containsKey(EmployeeInfoDto.jsonKeyCreatorUsername);
      if (isResponseValid) {
        return EmployeeInfoDto.fromJson(jsonResponse);
      } else {
        throw const AdminFeaturesException.operationFailed(
          failedValue: 'Formato de respuesta no esperado.',
        );
      }
    } else {
      throw const AdminFeaturesException.operationFailed(
        failedValue: 'Formato de respuesta no esperado.',
      );
    }
  }
}
