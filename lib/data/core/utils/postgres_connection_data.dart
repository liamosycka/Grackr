import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';

class Postgress_Connection_Data {
  final String host;
  final int port;
  final String database;
  final String username;
  final String password;

  const Postgress_Connection_Data({
    @required this.host,
    @required this.port,
    @required this.database,
    @required this.username,
    @required this.password,
  });

  PostgreSQLConnection toPostgreSQLConnection() {
    return PostgreSQLConnection(host, port, database,
        username: username, password: password);
  }
}
