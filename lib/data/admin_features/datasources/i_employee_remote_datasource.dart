import 'package:dartz/dartz.dart';
import 'package:gracker_app/data/admin_features/models/employee_dto.dart';
import 'package:gracker_app/data/admin_features/models/employee_info_dto.dart';
import 'package:gracker_app/data/admin_features/models/employee_preview_dto.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';

abstract class IEmployeeRemoteDataSource {
  Future<Unit> createEmployee(UserDto userDto, EmployeeDto employeeDto,
      String hashedPassword, String creatorUsername);

  Future<Unit> deleteEmployee(String employeeID);

  Future<List<EmployeePreviewDto>> getAllEmployeePreviews();

  Future<EmployeeInfoDto> getEmployeeInfo(String employeeID);
}
