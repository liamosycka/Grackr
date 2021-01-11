import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/injection/injection_container.dart';
import 'package:gracker_app/core/routes/router.dart';
import 'package:gracker_app/core/themes/bloc/theme_bloc.dart';
import 'package:gracker_app/core/themes/bloc/theme_state.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';
import 'package:gracker_app/core/routes/router.dart' as my_router;
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';

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
      child: _GlobalBlocConsumers(
        navKey: navKey,
      ),
    );
  }
}

class _GlobalBlocConsumers extends StatelessWidget {
  final GlobalKey<NavigatorState> navKey;
  const _GlobalBlocConsumers({
    Key key,
    this.navKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              authenticated: (state) {
                return navKey.currentState.pushReplacementNamed(
                  state.permissionLevel.getOrCrash() == PermissionLevel.admin
                      ? Routes.homeAdmin
                      : Routes.homeGuard,
                );
              },
              unauthenticated: (_) =>
                  navKey.currentState.pushReplacementNamed(Routes.landing),
            );
          },
          child: _MainMaterialApp(navKey: navKey, theme: state.themeData),
        );
      },
    );
  }
}

class _MainMaterialApp extends StatelessWidget {
  const _MainMaterialApp({
    Key key,
    @required this.navKey,
    @required this.theme,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navKey;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navKey,
      debugShowCheckedModeBanner: false, // Para no mostrar el banner de debug
      theme: theme,
      onGenerateRoute: my_router.Router.onGenerateRoute,
      initialRoute: Routes.splash,
    );
  }
}
