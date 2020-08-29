import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/injection/injection_container.dart';
import 'package:gracker_app/core/routes/router.dart';
import 'package:gracker_app/core/themes/bloc/theme_bloc.dart';
import 'package:gracker_app/core/themes/bloc/theme_state.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';

class MainAppWidget extends StatelessWidget {
  final GlobalKey<NavigatorState> navKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()..add(const AuthEvent.appStart()),
        ),
        BlocProvider<ThemeBloc>(
          create: (_) => getIt<ThemeBloc>(),
        ),
      ],
      child: _ThemedMaterialApp(
        navKey: navKey,
      ),
    );
  }
}

class _ThemedMaterialApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navKey;
  const _ThemedMaterialApp({
    Key key,
    this.navKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          navigatorKey: navKey,
          debugShowCheckedModeBanner:
              false, // Para no mostrar el banner de debug
          theme: state.themeData,
          onGenerateRoute: Router.onGenerateRoute,
          initialRoute: Routes.splash,
        );
      },
    );
  }
}
