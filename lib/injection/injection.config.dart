// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async';

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dbcrypt/dbcrypt.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';
import 'package:postgres/postgres.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/network_info.dart';
import '../core/util/input_converter.dart';
import '../data/admin_features/datasources/guard_crud_remote_datasource.dart';
import '../data/admin_features/repositories/guard_crud_repository_impl.dart';
import '../data/authentication/datasources/user_local_datasource.dart';
import '../data/authentication/datasources/user_local_impl/user_local_sharedpreferences.dart';
import '../data/authentication/datasources/user_remote_datasource.dart';
import '../data/authentication/datasources/user_remote_impl/user_remote_postgresql.dart';
import '../data/authentication/repositories/user_repository_impl.dart';
import '../domain/admin_features/repositories/guard_crud_repository.dart';
import '../domain/admin_features/usecases/create_guard.dart';
import '../domain/authentication/repositories/user_repository.dart';
import '../domain/authentication/usecases/check_if_authenticated.dart';
import '../domain/authentication/usecases/get_authenticated.dart';
import '../presentation/admin_features/guard_crud/create_guard/bloc/create_guard_bloc.dart';
import '../presentation/authentication/bloc/login_bloc.dart';
import '../presentation/core/blocs/auth_bloc.dart';
import 'injectable_module.dart';

/// Environment names
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final gh = GetItHelper(g, environment);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<DBCrypt>(() => injectableModule.db);
  gh.lazySingleton<DataConnectionChecker>(() => injectableModule.checker);
  gh.lazySingleton<Guard_CRUD_Repository>(
      () => Guard_CRUD_Repository_Impl(
          guard_CRUD_RemoteDataSource: g<Guard_CRUD_Remote_DataSource>()),
      registerFor: {_prod});
  gh.lazySingleton<InputConverter>(() => InputConverter());
  gh.lazySingleton<Network_Info>(
      () => NetworkInfoImpl(dataConnectionChecker: g<DataConnectionChecker>()));
  gh.lazySingleton<PostgreSQLConnection>(() => injectableModule.connection);
  final sharedPreferences = await injectableModule.prefs;
  gh.lazySingleton<SharedPreferences>(() => sharedPreferences);
  gh.lazySingleton<User_Local_DataSource>(() =>
      User_Local_SharedPreferences(sharedPreferences: g<SharedPreferences>()));
  gh.lazySingleton<User_Remote_DataSource>(() =>
      User_Remote_PostgreSQL(postgreSQLConnection: g<PostgreSQLConnection>()));
  gh.lazySingleton<User_Repository>(
      () => User_Repository_Impl(
          userLocalDataSource: g<User_Local_DataSource>(),
          userRemoteDataSource: g<User_Remote_DataSource>()),
      registerFor: {_prod});
  gh.lazySingleton<Check_If_Authenticated>(
      () => Check_If_Authenticated(userRepository: g<User_Repository>()));
  gh.lazySingleton<Create_Guard>(() => Create_Guard(
        guard_CRUD_Repository: g<Guard_CRUD_Repository>(),
        networkInfo: g<Network_Info>(),
        dbCrypt: g<DBCrypt>(),
      ));
  gh.factory<Create_Guard_Bloc>(
      () => Create_Guard_Bloc(createGuard: g<Create_Guard>()));
  gh.lazySingleton<Get_Authenticated>(() => Get_Authenticated(
        userRepository: g<User_Repository>(),
        networkInfo: g<Network_Info>(),
        dbCrypt: g<DBCrypt>(),
      ));
  gh.factory<Auth_Bloc>(
      () => Auth_Bloc(checkIfAuthenticated: g<Check_If_Authenticated>()));
  gh.factory<Login_Bloc>(() => Login_Bloc(
        getAuthenticated: g<Get_Authenticated>(),
        inputConverter: g<InputConverter>(),
        authBloc: g<Auth_Bloc>(),
      ));
}

class _$InjectableModule extends InjectableModule {}
