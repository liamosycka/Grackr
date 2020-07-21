import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:gracker_app/data/guard_crud/datasources/guard_crud_remote_datasource.dart';
import 'package:postgres/postgres.dart';

class Guard_CRUD_Remote_PostgreSQL implements Guard_CRUD_Remote_DataSource {
  final PostgreSQLConnection postgreSQLConnection;

  Guard_CRUD_Remote_PostgreSQL({@required this.postgreSQLConnection});

  @override
  Future<Unit> create_guard(User_Model userModel, String hashedPassword) async {
    try {
      await postgreSQLConnection.open();
      final result = await postgreSQLConnection.query(
          "INSERT INTO users (username,pass,permissions) VALUES ('" +
              userModel.username +
              "','" +
              hashedPassword +
              ",0)");
      print(result);
      await postgreSQLConnection.close();
    } on Exception catch (e) {
      throw e;
    }
    return null;
  }
}
