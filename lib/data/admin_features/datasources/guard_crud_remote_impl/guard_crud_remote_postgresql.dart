import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/admin_features/models/employee_dto.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';
import 'package:gracker_app/data/admin_features/datasources/i_guard_remote_datasource.dart';
import 'package:gracker_app/data/core/models/postgres_connection_data.dart';

class GuardRemotePostgreSQL implements IGuardRemoteDataSource {
  final Postgress_Connection_Data postgress_connection_data;

  const GuardRemotePostgreSQL({@required this.postgress_connection_data});

  @override
  Future<Unit> create_guard(UserDto userDto, EmployeeDto employeeDto,
      String hashedPassword, String creatorUsername) async {
    final postgreSQLConnection =
        postgress_connection_data.toPostgreSQLConnection();

    try {
      await postgreSQLConnection.open();

      // await postgreSQLConnection.query(
      //     "INSERT INTO users (username,pass,permissions) VALUES ('${userDto.username}', '$hashedPassword' ,${userDto.permissionLevel.toString()})");
      // ctx.query(
      //     "UPDATE test_table SET arg2 = 'BNuevo arg' WHERE arg1 = 'chao';");
      // ctx.query(
      //     "INSERT INTO test_table(arg1, arg3) VALUES ('chao','Arg3');");
      await postgreSQLConnection.transaction(
        (ctx) async {
          var legajo;
          //? Agregar usuario a tabla de Users
          ctx.query(
              "INSERT INTO users (username,pass,permissions) VALUES ('${userDto.username}', '$hashedPassword' ,${userDto.permissionLevel.toString()})");
          //? Agregar empleado a la tabla de Employee
          ctx.query(
              "INSERT INTO employee(employee_id,name,surname,username) VALUES ('${employeeDto.employeeId}'," +
                  "'${employeeDto.name}','${employeeDto.surname}','${userDto.username}'); ");
          //? Buscar el legajo de el usuario creador
          final List<List<dynamic>> result = await ctx.query(
              "SELECT employee_id FROM employee WHERE username = '$creatorUsername';");
          for (final row in result) {
            legajo = row[0];
          }
          //? Registar la creación del usuario en la relación Creates_user
          ctx.query(
              "INSERT INTO creates_user(employee_id, username, date) VALUES " +
                  "('$legajo','${userDto.username}', current_date); ");
        },
      );
    } on Exception catch (e) {
      throw OperationFailedException(e.toString());
    } finally {
      await postgreSQLConnection.close();
    }
    return unit;
  }
}
