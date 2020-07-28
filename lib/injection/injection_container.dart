import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dbcrypt/dbcrypt.dart';
import 'package:get_it/get_it.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/util/input_converter.dart';
import 'package:gracker_app/data/authentication/datasources/user_local_datasource.dart';
import 'package:gracker_app/data/authentication/datasources/user_local_impl/user_local_sharedpreferences.dart';
import 'package:gracker_app/data/authentication/datasources/user_remote_datasource.dart';
import 'package:gracker_app/data/authentication/datasources/user_remote_impl/user_remote_postgresql.dart';
import 'package:gracker_app/data/authentication/repositories/user_repository_impl.dart';
import 'package:gracker_app/domain/authentication/repositories/user_repository.dart';
import 'package:gracker_app/domain/authentication/usecases/check_if_authenticated.dart';
import 'package:gracker_app/domain/authentication/usecases/get_authenticated.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:postgres/postgres.dart';

final GetIt getIt = GetIt.instance;
/*
  Factories son volatiles. Si una Page pide una instancia de un Factory, se va a generar uno nuevo siempre
  Singleton son persistentes. Si una Page pide una instancia de un Singleton, se devuelve siempre el mismo (Pues se cachea la primera vez que fue creado)
    Por lo general, los Blocs nunca deben ser Singletons
 */
Future<void> init() async {
  // Features
  await _initFeatures();
  // Core
  await _initCore();
  // External
  await _initExternal();
}

Future<void> _initFeatures() async {
  // Feature - Auth
  // Bloc
  getIt.registerFactory<Login_Bloc>(() => Login_Bloc(
      getAuthenticated: getIt(), inputConverter: getIt(), authBloc: getIt()));
  getIt.registerLazySingleton<Auth_Bloc>(
      () => Auth_Bloc(checkIfAuthenticated: getIt()));
  /*getIt.registerFactory<MainGuardiaBloc>(
          () => MainGuardiaBloc());*/
  //! UseCases
  getIt.registerLazySingleton<Get_Authenticated>(() => Get_Authenticated(
      userRepository: getIt(), dbCrypt: getIt(), networkInfo: getIt()));
  getIt.registerLazySingleton<Check_If_Authenticated>(
      () => Check_If_Authenticated(userRepository: getIt()));
  //! Repository
  getIt.registerLazySingleton<User_Repository>(() => User_Repository_Impl(
      userRemoteDataSource: getIt(), userLocalDataSource: getIt()));
  //! Data Sources
  getIt.registerLazySingleton<User_Remote_DataSource>(
      () => User_Remote_PostgreSQL(postgreSQLConnection: getIt()));
  getIt.registerLazySingleton<User_Local_DataSource>(
      () => User_Local_SharedPreferences(sharedPreferences: getIt()));
}

Future<void> _initCore() async {
  // Core - Util
  getIt.registerLazySingleton<InputConverter>(() => InputConverter());

  // Core - Network
  getIt.registerLazySingleton<Network_Info>(
      () => NetworkInfoImpl(dataConnectionChecker: getIt()));
}

Future<void> _initExternal() async {
  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  final dbCrypt = DBCrypt();
  getIt.registerLazySingleton<DBCrypt>(() => dbCrypt);

  // TODO Postgresql Connection
  getIt.registerLazySingleton<PostgreSQLConnection>(() => PostgreSQLConnection(
      "ruby.db.elephantsql.com", 5432, "dbpxbgmk",
      username: "dbpxbgmk", password: "L1GhaFDYwqF5wUBpzsXF3VW0G_p1uQWv"));

  getIt.registerLazySingleton<DataConnectionChecker>(
      () => DataConnectionChecker());
}
