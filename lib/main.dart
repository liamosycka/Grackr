import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/injection/injection_container.dart';
import 'package:gracker_app/presentation/core/main_app_widget.dart';
import 'package:bloc/bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

// TODO: Agregar el paquete https://pub.dev/packages/google_fonts :D :D :D :D <3 <3 <3
//? Admin_1234 123Admin_1234

// ignore: avoid_void_async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //? Inicializar el storage (default) de HydratedBloc. Puede usarse uno distinto
  HydratedBloc.storage = await HydratedStorage.build();
  //? Inicializar las dependencias con GetIt
  await initGetItDependencies();
  //! DEBUG
  Bloc.observer = SimpleBlocDelegate();

  runApp(MainAppWidget());
}

// TODO Remover Prints. Posiblemente mover este SimpleBlocDelegate a un archivo distinto también
class SimpleBlocDelegate extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    // ignore: avoid_print
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    // ignore: avoid_print
    print(transition);
  }
}
