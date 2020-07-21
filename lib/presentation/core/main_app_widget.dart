import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/injection/injection_container.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';
import 'package:gracker_app/presentation/core/routes/router.gr.dart';

class MainAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<Auth_Bloc>(
            create: (_) =>
                serviceLocator<Auth_Bloc>()..add(const AuthEvent.appStart()),
          ),
          //* Agregar mas providers aqui de ser necesario
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner:
              false, // Para no mostrar el banner de debug
          theme: ThemeData.dark(),
          builder: ExtendedNavigator(router: Router()),
        ));
  }
}

/*

home: BlocBuilder<Auth_Bloc, AuthState>(
            builder: (context, AuthState state) {
              return state.map(
                  uninitialized: (s) => const Center(
                        child: Text("Estado inicial de AuthBloc"),
                      ),
                  authenticated: (s) {
                    // TODO Cambiar
                    //return MainHomeGuardia();
                    if (s.permissionLevel == 1) {
                      return const Center(
                        child: Text("Admin"),
                      );
                    } else {
                      return const Center(
                        child: Text("Guardia"),
                      );
                    }
                  },
                  unauthenticated: (s) => const Landing_Home(),
                  loading: (s) => const Center(child: Text("Laoding")));
            },
          ),

*/
