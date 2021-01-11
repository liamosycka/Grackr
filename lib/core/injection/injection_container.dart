import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/themes/bloc/theme_bloc.dart';
import 'package:gracker_app/data/admin_features/datasources/employee_remote_impl/employee_remote_grapi.dart';
import 'package:gracker_app/data/admin_features/datasources/i_employee_remote_datasource.dart';
import 'package:gracker_app/data/admin_features/repositories/employee_repository_impl.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_local_datasource.dart';
import 'package:gracker_app/data/authentication/datasources/user_local_impl/user_local_sharedpreferences.dart';
import 'package:gracker_app/data/authentication/datasources/i_user_remote_datasource.dart';
import 'package:gracker_app/data/authentication/datasources/user_remote_impl/user_remote_grapi.dart';
import 'package:gracker_app/data/authentication/repositories/user_repository_impl.dart';
import 'package:gracker_app/data/core/utils/jwt_manager.dart';
import 'package:gracker_app/domain/admin_features/repositories/i_employee_repository.dart';
import 'package:gracker_app/domain/admin_features/usecases/create_employee.dart';
import 'package:gracker_app/domain/admin_features/usecases/delete_employee.dart';
import 'package:gracker_app/domain/admin_features/usecases/get_all_employee_previews.dart';
import 'package:gracker_app/domain/admin_features/usecases/get_employee_info.dart';
import 'package:gracker_app/domain/authentication/repositories/i_user_repository.dart';
import 'package:gracker_app/domain/core/usecases/check_if_authenticated.dart';
import 'package:gracker_app/domain/authentication/usecases/get_authenticated.dart';
import 'package:gracker_app/domain/core/usecases/log_out.dart';
import 'package:gracker_app/presentation/admin_features/admin_employees/bloc/admin_employees_bloc.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/bloc/create_guard_bloc.dart';
import 'package:gracker_app/presentation/admin_features/inspect_employee/bloc/inspect_employee_bloc.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;
/*
  Factories son volatiles. Si una Page pide una instancia de un Factory, se va a generar uno nuevo siempre
  Singleton son persistentes. Si una Page pide una instancia de un Singleton, se devuelve siempre el mismo (Pues se cachea la primera vez que fue creado)
    Por lo general, los Blocs nunca deben ser Singletons
 */
Future<void> initGetItDependencies() async {
  // Features
  await _initBlocs();
  await _initUseCases();
  await _initRepositories();
  await _initDataSources();
  // Core
  await _initCore();
  // External
  await _initExternal();
}

Future<void> _initBlocs() async {
  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(
      getAuthenticated: getIt(),
    ),
  );
  getIt.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      checkIfAuthenticated: getIt(),
      log_out: getIt(),
    ),
  );
  getIt.registerLazySingleton<ThemeBloc>(
    () => ThemeBloc(),
  );
  getIt.registerFactory<CreateEmployeeBloc>(
    () => CreateEmployeeBloc(
      createGuard: getIt(),
    ),
  );
  getIt.registerFactory<AdminEmployeesBloc>(
    () => AdminEmployeesBloc(
      getAllGuardPreviews: getIt(),
    ),
  );
  getIt.registerFactory<InspectEmployeeBloc>(
    () => InspectEmployeeBloc(
      deleteEmployee: getIt(),
      getEmployeeInfo: getIt(),
    ),
  );
}

Future<void> _initUseCases() async {
  getIt.registerLazySingleton<Get_Authenticated>(
    () => Get_Authenticated(
      userRepository: getIt(),
      networkInfo: getIt(),
    ),
  );
  getIt.registerLazySingleton<Check_If_Authenticated>(
    () => Check_If_Authenticated(
      userRepository: getIt(),
    ),
  );
  getIt.registerLazySingleton<Log_Out>(
    () => Log_Out(
      userRepository: getIt(),
    ),
  );
  getIt.registerLazySingleton<Create_Employee>(
    () => Create_Employee(
      employeeRepository: getIt(),
      networkInfo: getIt(),
    ),
  );
  getIt.registerLazySingleton<Delete_Employee>(
    () => Delete_Employee(
      employeeRepository: getIt(),
      networkInfo: getIt(),
    ),
  );
  getIt.registerLazySingleton<Get_All_Employee_Previews>(
    () => Get_All_Employee_Previews(
      employeeRepository: getIt(),
      networkInfo: getIt(),
    ),
  );

  getIt.registerLazySingleton<Get_Employee_Info>(
    () => Get_Employee_Info(
      employeeRepository: getIt(),
      networkInfo: getIt(),
    ),
  );
}

Future<void> _initRepositories() async {
  getIt.registerLazySingleton<IUserRepository>(
    () => User_Repository_Impl(
      userRemoteDataSource: getIt(),
      userLocalDataSource: getIt(),
    ),
  );
  getIt.registerLazySingleton<IEmployeeRepository>(
    () => EmployeeRepositoryImpl(
      employeeRemoteDataSource: getIt(),
    ),
  );
}

Future<void> _initDataSources() async {
  getIt.registerLazySingleton<IUserRemoteDataSource>(
    () => UserRemoteGrAPI(
      baseUrl: 'https://grackr-api.herokuapp.com/api/users/',
      jwtManager: getIt(),
    ),
  );
  getIt.registerLazySingleton<IUserLocalDataSource>(
    () => User_Local_SharedPreferences(
      sharedPreferences: getIt(),
      jwtManager: getIt(),
    ),
  );
  getIt.registerLazySingleton<IEmployeeRemoteDataSource>(
    () => EmployeeRemoteGrAPI(),
  );
}

Future<void> _initCore() async {
  // Core - Network
  getIt.registerLazySingleton<Network_Info>(
    () => NetworkInfoImpl(
      dataConnectionChecker: getIt(),
    ),
  );
  getIt.registerLazySingleton<JWTManager>(
    () => JWTManager(
      sharedPreferences: getIt(),
      tokenProviderEndpoint: 'https://grackr-api.herokuapp.com/api/token/',
    ),
  );
  // getIt.registerLazySingleton<Postgress_Connection_Data>(
  //   () => const Postgress_Connection_Data(
  //     host: "ruby.db.elephantsql.com",
  //     port: 5432,
  //     database: "dbpxbgmk",
  //     username: "dbpxbgmk",
  //     password: "L1GhaFDYwqF5wUBpzsXF3VW0G_p1uQWv",
  //   ),
  // );
}

Future<void> _initExternal() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );

  getIt.registerLazySingleton<DataConnectionChecker>(
    () => DataConnectionChecker(),
  );
}
