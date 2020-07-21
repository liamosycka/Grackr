import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/injection/injection_container.dart';
import 'package:gracker_app/presentation/core/main_app_widget.dart';
import 'package:bloc/bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  //configureInjection(env: Environment.prod);
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

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    // ignore: avoid_print
    print(error);
  }
}
