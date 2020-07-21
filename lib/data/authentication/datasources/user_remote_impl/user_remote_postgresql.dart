import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/datasources/user_remote_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:postgres/postgres.dart';

class User_Remote_PostgreSQL implements User_Remote_DataSource {
  final PostgreSQLConnection postgreSQLConnection;

  User_Remote_PostgreSQL({@required this.postgreSQLConnection});
  @override
  Future<String> get_Hashed_Password_If_Exists(User_Model userModel) async {
    try {
      await postgreSQLConnection.open();
      final result = await postgreSQLConnection.mappedResultsQuery(
          "SELECT pass FROM users WHERE username='" +
              userModel.username +
              "' AND permissions='" +
              userModel.permissionLevel.toString() +
              "';");
      await postgreSQLConnection.close();
      if (result.isEmpty) {
        throw DataBaseException();
      } else {
        return (result.removeAt(0).remove("users").remove("pass")).toString();
      }
    } on Exception catch (e) {
      throw e;
    }
  }
}
