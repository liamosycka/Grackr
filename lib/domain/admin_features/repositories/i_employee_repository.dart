import 'package:dartz/dartz.dart';
import 'package:gracker_app/domain/admin_features/entities/employee.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_info.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_preview.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';

abstract class IEmployeeRepository {
  //TODO aca en realidad habria que devolver el username y la plainpassword generada.
  //TODO Devolver una lista con 2 elementos?
  Future<Either<Admin_Features_Failure, Unit>> createEmployee(User user,
      Employee employee, String hashedPassword, UserName creatorUsername);

  Future<Either<Admin_Features_Failure, Unit>> deleteEmployee(
      EmployeeID employeeID);

  Future<Either<Admin_Features_Failure, List<EmployeePreview>>>
      getAllEmployeePreviews();

  Future<Either<Admin_Features_Failure, EmployeeInfo>> getEmployeeInfo(
      EmployeeID employeeID);
}
