import 'package:dartz/dartz.dart';
import 'package:gracker_app/data/admin_features/datasources/i_employee_remote_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';
import 'package:gracker_app/data/admin_features/models/employee_preview_dto.dart';
import 'package:gracker_app/data/admin_features/models/employee_info_dto.dart';
import 'package:gracker_app/data/admin_features/models/employee_dto.dart';

class EmployeeRemoteGrAPI implements IEmployeeRemoteDataSource {
  @override
  Future<Unit> createEmployee(UserDto userDto, EmployeeDto employeeDto,
      String hashedPassword, String creatorUsername) {
    // TODO: implement createEmployee
    throw UnimplementedError();
  }

  @override
  Future<Unit> deleteEmployee(String employeeID) {
    // TODO: implement deleteEmployee
    throw UnimplementedError();
  }

  @override
  Future<List<EmployeePreviewDto>> getAllEmployeePreviews() {
    // TODO: implement getAllEmployeePreviews
    throw UnimplementedError();
  }

  @override
  Future<EmployeeInfoDto> getEmployeeInfo(String employeeID) {
    // TODO: implement getEmployeeInfo
    throw UnimplementedError();
  }
}
