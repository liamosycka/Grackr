import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/presentation/authentication/bloc/auth_event.dart';
import 'package:gracker_app/presentation/authentication/bloc/auth_state.dart';
import 'package:gracker_app/presentation/authentication/pages/landing_page.dart';
//import 'package:gracker_app/features/authentication/presentation/pages/landing_page.dart';
//import 'package:gracker_app/features/main_guardia/presentation/pages/main_page_guardia.dart';
import 'package:gracker_app/router.dart';
import 'package:provider/provider.dart';
import 'presentation/authentication/bloc/auth_bloc.dart';
import 'package:bloc/bloc.dart';
import 'injection_container.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}

void main() async {
  // Inyectar todas las dependencias antes de iniciar el UI
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(
    BlocProvider<Auth_Bloc>(
        create: (_) {
          return serviceLocator<Auth_Bloc>()..add(AuthEvent.appStart());
        },
        //child: MultiProvider(
        //  providers: [
        // TODO Agregar providers
        //],
        child: MyApp()),
    //),
  );
}

class MyApp extends StatelessWidget {
  //final LoginStateRepo loginState;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Router.generateRoute,
      home: BlocBuilder<Auth_Bloc, AuthState>(
        builder: (context, AuthState state) {
          return state.map(
              uninitialized: (s) => Center(
                    child: Text("Estado inicial de AuthBloc"),
                  ),
              authenticated: (s) {
                // TODO Cambiar
                //return MainHomeGuardia();
                if (s.permissionLevel == 1) {
                  return Center(
                    child: Text("Admin"),
                  );
                } else {
                  return Center(
                    child: Text("Guardia"),
                  );
                }
              },
              unauthenticated: (s) => Landing_Home(),
              loading: (s) => Center(child: Text("Laoding")));
        },
      ),
    );
  }
}
