import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:gracker_app/data/admin_features/datasources/guard_crud_remote_datasource.dart';
import 'package:gracker_app/data/core/models/postgres_connection_data.dart';

class Guard_CRUD_Remote_PostgreSQL implements Guard_CRUD_Remote_DataSource {
  final Postgress_Connection_Data postgress_connection_data;

  const Guard_CRUD_Remote_PostgreSQL(
      {@required this.postgress_connection_data});

  @override
  Future<Unit> create_guard(User_Model userModel, String hashedPassword) async {
    final postgreSQLConnection =
        postgress_connection_data.toPostgreSQLConnection();

    try {
      await postgreSQLConnection.open();

      await postgreSQLConnection.query(
          "INSERT INTO users (username,pass,permissions) VALUES ('${userModel.username.getOrCrash()}', '$hashedPassword' ,${userModel.permissionLevel.getOrCrash().toString()})");
      // TODO: Esto es una prueba solamente. Eliminar
      // await postgreSQLConnection.query(
      //     "INSERT INTO users (username,pass,permissions) VALUES ('${userModel.username.getOrCrash()}', '$hashedPassword' ,${userModel.permissionLevel.toString()})");
    } on Exception catch (e) {
      throw OperationFailedException(e.toString());
    } finally {
      await postgreSQLConnection.close();
    }
    return unit;
  }
}
