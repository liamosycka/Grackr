import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/datasources/user_remote_datasource.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:gracker_app/data/core/models/postgres_connection_data.dart';

class User_Remote_PostgreSQL implements User_Remote_DataSource {
  final Postgress_Connection_Data postgress_connection_data;

  const User_Remote_PostgreSQL({@required this.postgress_connection_data});

  @override
  Future<String> get_Hashed_Password_If_Exists(User_Model userModel) async {
    final postgreSQLConnection =
        postgress_connection_data.toPostgreSQLConnection();

    try {
      await postgreSQLConnection.open();
      final result = await postgreSQLConnection.mappedResultsQuery(
          "SELECT pass FROM users WHERE username='${userModel.username.getOrCrash()}' AND permissions='${userModel.permissionLevel.getOrCrash().toString()}';");

      if (result.isEmpty) {
        throw DataBaseException();
      } else {
        return (result.removeAt(0).remove("users").remove("pass")).toString();
      }
    } on Exception catch (_) {
      rethrow;
    } finally {
      await postgreSQLConnection.close();
    }
  }
}
