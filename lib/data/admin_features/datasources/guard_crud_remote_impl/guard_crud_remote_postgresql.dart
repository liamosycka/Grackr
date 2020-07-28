import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:gracker_app/data/admin_features/datasources/guard_crud_remote_datasource.dart';
import 'package:postgres/postgres.dart';

class Guard_CRUD_Remote_PostgreSQL implements Guard_CRUD_Remote_DataSource {
  final PostgreSQLConnection postgreSQLConnection;

  Guard_CRUD_Remote_PostgreSQL({@required this.postgreSQLConnection});

  @override
  Future<Unit> create_guard(User_Model userModel, String hashedPassword) async {
    try {
      await postgreSQLConnection.open();
      await postgreSQLConnection.query(
          "INSERT INTO users (username,pass,permissions) VALUES ('${userModel.username}', '$hashedPassword' ,0)");

      await postgreSQLConnection.close();
    } on Exception catch (_) {
      rethrow;
    }
    return unit;
  }
}