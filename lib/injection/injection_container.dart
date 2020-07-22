import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dbcrypt/dbcrypt.dart';
import 'package:get_it/get_it.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/util/input_converter.dart';
import 'package:gracker_app/data/admin_features/datasources/guard_crud_remote_datasource.dart';
import 'package:gracker_app/data/admin_features/datasources/guard_crud_remote_impl/guard_crud_remote_postgresql.dart';
import 'package:gracker_app/data/admin_features/repositories/guard_crud_repository_impl.dart';
import 'package:gracker_app/data/authentication/datasources/user_local_datasource.dart';
import 'package:gracker_app/data/authentication/datasources/user_local_impl/user_local_sharedpreferences.dart';
import 'package:gracker_app/data/authentication/datasources/user_remote_datasource.dart';
import 'package:gracker_app/data/authentication/datasources/user_remote_impl/user_remote_postgresql.dart';
import 'package:gracker_app/data/authentication/repositories/user_repository_impl.dart';
import 'package:gracker_app/domain/admin_features/repositories/guard_crud_repository.dart';
import 'package:gracker_app/domain/admin_features/usecases/create_guard.dart';
import 'package:gracker_app/domain/authentication/repositories/user_repository.dart';
import 'package:gracker_app/domain/authentication/usecases/check_if_authenticated.dart';
import 'package:gracker_app/domain/authentication/usecases/get_authenticated.dart';
import 'package:gracker_app/presentation/admin_features/guard_crud/create_guard/bloc/create_guard_bloc.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:postgres/postgres.dart';

final GetIt serviceLocator = GetIt.instance;
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
  serviceLocator.registerFactory<Login_Bloc>(() => Login_Bloc(
      getAuthenticated: serviceLocator(),
      inputConverter: serviceLocator(),
      authBloc: serviceLocator()));
  serviceLocator.registerLazySingleton<Auth_Bloc>(
      () => Auth_Bloc(checkIfAuthenticated: serviceLocator()));
  /*serviceLocator.registerFactory<MainGuardiaBloc>(
          () => MainGuardiaBloc());*/
  serviceLocator.registerLazySingleton<Create_Guard_Bloc>(
      () => Create_Guard_Bloc(createGuard: serviceLocator()));
  //! UseCases
  serviceLocator.registerLazySingleton<Get_Authenticated>(() =>
      Get_Authenticated(
          userRepository: serviceLocator(),
          dbCrypt: serviceLocator(),
          networkInfo: serviceLocator()));
  serviceLocator.registerLazySingleton<Check_If_Authenticated>(
      () => Check_If_Authenticated(userRepository: serviceLocator()));

  serviceLocator.registerLazySingleton<Create_Guard>(() => Create_Guard(
      guard_CRUD_Repository: serviceLocator(),
      dbCrypt: serviceLocator(),
      networkInfo: serviceLocator()));
  //! Repository
  serviceLocator.registerLazySingleton<User_Repository>(() =>
      User_Repository_Impl(
          userRemoteDataSource: serviceLocator(),
          userLocalDataSource: serviceLocator()));
  serviceLocator.registerLazySingleton<Guard_CRUD_Repository>(() =>
      Guard_CRUD_Repository_Impl(
          guard_CRUD_RemoteDataSource: serviceLocator()));
  //! Data Sources
  serviceLocator.registerLazySingleton<User_Remote_DataSource>(
      () => User_Remote_PostgreSQL(postgreSQLConnection: serviceLocator()));
  serviceLocator.registerLazySingleton<User_Local_DataSource>(
      () => User_Local_SharedPreferences(sharedPreferences: serviceLocator()));
  serviceLocator.registerLazySingleton<Guard_CRUD_Remote_DataSource>(() =>
      Guard_CRUD_Remote_PostgreSQL(postgreSQLConnection: serviceLocator()));
}

Future<void> _initCore() async {
  // Core - Util
  serviceLocator.registerLazySingleton<InputConverter>(() => InputConverter());

  // Core - Network
  serviceLocator.registerLazySingleton<Network_Info>(
      () => NetworkInfoImpl(dataConnectionChecker: serviceLocator()));
}

Future<void> _initExternal() async {
  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator
      .registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  final dbCrypt = DBCrypt();
  serviceLocator.registerLazySingleton<DBCrypt>(() => dbCrypt);

  // TODO Postgresql Connection
  /*serviceLocator.registerLazySingleton<PostgreSQLConnection>(() =>
      PostgreSQLConnection("ruby.db.elephantsql.com", 5432, "dbpxbgmk",
          username: "dbpxbgmk", password: "L1GhaFDYwqF5wUBpzsXF3VW0G_p1uQWv"));*/
  serviceLocator.registerFactory<PostgreSQLConnection>(() =>
      PostgreSQLConnection("ruby.db.elephantsql.com", 5432, "dbpxbgmk",
          username: "dbpxbgmk", password: "L1GhaFDYwqF5wUBpzsXF3VW0G_p1uQWv"));

  serviceLocator.registerLazySingleton<DataConnectionChecker>(
      () => DataConnectionChecker());
}
