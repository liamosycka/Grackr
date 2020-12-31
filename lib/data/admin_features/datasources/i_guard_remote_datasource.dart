import 'package:dartz/dartz.dart';
import 'package:gracker_app/data/admin_features/models/employee_dto.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';

abstract class IGuardRemoteDataSource {
  Future<Unit> create_guard(UserDto userDto, EmployeeDto employeeDto,
      String hashedPassword, String creatorUsername);
}
