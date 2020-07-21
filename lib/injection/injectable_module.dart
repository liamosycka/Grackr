import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dbcrypt/dbcrypt.dart';
import 'package:injectable/injectable.dart';
import 'package:postgres/postgres.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Para las third-party dependencies
@module
abstract class InjectableModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  DBCrypt get db => DBCrypt();

  @lazySingleton
  DataConnectionChecker get checker => DataConnectionChecker();

  @lazySingleton
  PostgreSQLConnection get connection =>
      PostgreSQLConnection("ruby.db.elephantsql.com", 5432, "dbpxbgmk",
          username: "dbpxbgmk", password: "L1GhaFDYwqF5wUBpzsXF3VW0G_p1uQWv");
}
