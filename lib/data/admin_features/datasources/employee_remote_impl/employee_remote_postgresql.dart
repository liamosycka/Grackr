// import 'package:dartz/dartz.dart';
// import 'package:flutter/material.dart';
// import 'package:gracker_app/data/admin_features/models/employee_dto.dart';
// import 'package:gracker_app/data/admin_features/models/employee_info_dto.dart';
// import 'package:gracker_app/data/admin_features/models/employee_preview_dto.dart';
// import 'package:gracker_app/data/authentication/models/user_dto.dart';
// import 'package:gracker_app/data/admin_features/datasources/i_employee_remote_datasource.dart';
// import 'package:gracker_app/data/core/utils/postgres_connection_data.dart';
// import 'package:gracker_app/domain/admin_features/admin_features_failures.dart';

// class EmployeeRemotePostgreSQL implements IEmployeeRemoteDataSource {
//   final Postgress_Connection_Data postgress_connection_data;

//   const EmployeeRemotePostgreSQL({@required this.postgress_connection_data});

//   @override
//   Future<Unit> createEmployee(UserDto userDto, EmployeeDto employeeDto,
//       String hashedPassword, String creatorUsername) async {
//     final postgreSQLConnection =
//         postgress_connection_data.toPostgreSQLConnection();

//     try {
//       await postgreSQLConnection.open();

//       // await postgreSQLConnection.query(
//       //     "INSERT INTO users (username,pass,permissions) VALUES ('${userDto.username}', '$hashedPassword' ,${userDto.permissionLevel.toString()})");
//       // ctx.query(
//       //     "UPDATE test_table SET arg2 = 'BNuevo arg' WHERE arg1 = 'chao';");
//       // ctx.query(
//       //     "INSERT INTO test_table(arg1, arg3) VALUES ('chao','Arg3');");
//       await postgreSQLConnection.transaction(
//         (ctx) async {
//           var legajo;
//           //? Agregar usuario a tabla de Users
//           ctx.query(
//               "INSERT INTO users (username,pass,permissions) VALUES ('${userDto.username}', '$hashedPassword' ,${userDto.permissionLevel.toString()})");
//           //? Agregar empleado a la tabla de Employee
//           ctx.query(
//               "INSERT INTO employee(employee_id,name,surname,username) VALUES ('${employeeDto.employeeId}'," +
//                   "'${employeeDto.name}','${employeeDto.surname}','${userDto.username}'); ");
//           //? Buscar el legajo de el usuario creador
//           final List<List<dynamic>> result = await ctx.query(
//               "SELECT employee_id FROM employee WHERE username = '$creatorUsername';");
//           // TODO: Revisar si hay sintax distinto para ahcer esto:
//           for (final row in result) {
//             legajo = row[0];
//           }
//           //? Registar la creación del usuario en la relación Creates_user
//           ctx.query(
//               "INSERT INTO creates_user(employee_id, username, date) VALUES " +
//                   "('$legajo','${userDto.username}', '${DateTime.now().toIso8601String()}'); ");
//         },
//       );
//     } on Exception catch (e) {
//       throw AdminFeaturesFailure.operationFailed(failedValue: e.toString());
//     } finally {
//       await postgreSQLConnection.close();
//     }
//     return unit;
//   }

//   @override
//   Future<List<EmployeePreviewDto>> getAllEmployeePreviews() async {
//     final postgreSQLConnection =
//         postgress_connection_data.toPostgreSQLConnection();
//     final List<EmployeePreviewDto> resultList = List.empty(growable: true);

//     try {
//       await postgreSQLConnection.open();
//       final result = await postgreSQLConnection
//           .query("SELECT employee_id, name, surname, permissions "
//               "FROM employee NATURAL JOIN users;");
//       //? Parse de la query a Dto
//       for (final row in result) {
//         resultList.add(
//           EmployeePreviewDto(
//             employeeData: EmployeeDto(
//               employeeId: row[0].toString(),
//               name: row[1].toString(),
//               surname: row[2].toString(),
//             ),
//             permissions: int.parse(row[3].toString()),
//           ),
//         );
//       }
//     } on Exception catch (e) {
//       throw AdminFeaturesFailure.operationFailed(failedValue: e.toString());
//     } finally {
//       await postgreSQLConnection.close();
//     }
//     return resultList;
//   }

//   @override
//   Future<Unit> deleteEmployee(String employeeID) async {
//     final postgreSQLConnection =
//         postgress_connection_data.toPostgreSQLConnection();

//     try {
//       await postgreSQLConnection.open();
//       await postgreSQLConnection.transaction(
//         (ctx) async {
//           final resultUsername = await ctx.query(
//               "SELECT username FROM employee NATURAL JOIN users WHERE employee_id = '$employeeID';");
//           final username = resultUsername.first;
//           //? Eliminar al employee
//           ctx.query("DELETE FROM employee WHERE employee_id = '$employeeID';");
//           ctx.query("DELETE FROM creates_user WHERE username = '$username';");
//           ctx.query("DELETE FROM users WHERE username = '$username';");
//         },
//       );
//     } on Exception catch (e) {
//       throw AdminFeaturesFailure.operationFailed(failedValue: e.toString());
//     } finally {
//       await postgreSQLConnection.close();
//     }
//     return unit;
//   }

//   @override
//   Future<EmployeeInfoDto> getEmployeeInfo(String employeeID) async {
//     final postgreSQLConnection =
//         postgress_connection_data.toPostgreSQLConnection();
//     String username = '';
//     String creatorUsername = '';
//     String dateTimeString = '';
//     try {
//       await postgreSQLConnection.open();
//       await postgreSQLConnection.transaction(
//         (ctx) async {
//           final resultUsername = await ctx.query(
//               "SELECT username FROM employee NATURAL JOIN users WHERE employee_id = '$employeeID';");
//           username = resultUsername.first.first.toString();
//           final resultCreation = await ctx.query(
//               "SELECT employee_id, date FROM creates_user WHERE username = '$username';");

//           final creatorId = resultCreation.first[0].toString();
//           dateTimeString = resultCreation.first[1].toString();

//           final resultCreator = await ctx.query(
//               "SELECT username FROM employee WHERE employee_id = '$creatorId';");

//           creatorUsername = resultCreator.first[0].toString();
//         },
//       );
//     } on Exception catch (e) {
//       throw AdminFeaturesFailure.operationFailed(failedValue: e.toString());
//     } finally {
//       await postgreSQLConnection.close();
//     }
//     return EmployeeInfoDto(
//       username: username,
//       creationDateTime: dateTimeString,
//       creatorUsername: creatorUsername,
//     );
//   }
// }
