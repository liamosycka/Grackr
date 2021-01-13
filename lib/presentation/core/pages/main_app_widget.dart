import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/injection/injection_container.dart';
import 'package:gracker_app/core/routes/router.dart';
import 'package:gracker_app/core/themes/bloc/theme_bloc.dart';
import 'package:gracker_app/core/themes/bloc/theme_state.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/core/routes/router.dart' as my_router;
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';

class MainAppWidget extends StatelessWidget {
  final GlobalKey<NavigatorState> navKey = my_router.Router.navKey;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>(),
        ),
        BlocProvider<ThemeBloc>(
          create: (_) => getIt<ThemeBloc>(),
        ),
      ],
      //! Asegurarse de usar [GlobalBlocConsumers] como padre para las
      //! páginas principales
      child: _MainMaterialApp(
        navKey: navKey,
      ),
    );
  }
}

class _MainMaterialApp extends StatelessWidget {
  const _MainMaterialApp({
    Key key,
    @required this.navKey,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navKey;

  @override
  Widget build(BuildContext context) {
    final theme =
        BlocProvider.of<ThemeBloc>(context, listen: true).state.themeData;
    return MaterialApp(
      navigatorKey: navKey,
      debugShowCheckedModeBanner: false, // Para no mostrar el banner de debug
      theme: theme,
      onGenerateRoute: my_router.Router.onGenerateRoute,
      initialRoute: Routes.splash,
    );
  }
}

/// Creo este Widget separado para poder ser usado en conjunto con el Router.
/// Este Widget solo se coloca detras de una ruta que va a una página principal.
/// Es una manera "automática" de agregar los Listeners o Consumers necesarios que
/// son comunes a muchas páginas.
///
/// Hay ciertas páginas que pueden llegar a querer un comportamiento diferente,
/// como por ejemplo el Splash Page. Por eso, al estar separado, es tan simple como
/// no incluir este Widget en la ruta (Dentro de Router) y hacer la definición
/// de los listeners dentro de Splash Page en si.
class GlobalBlocConsumers extends StatelessWidget {
  const GlobalBlocConsumers({
    Key key,
    @required this.child,
    @required this.navKey,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navKey;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            navKey.currentState.pushReplacementNamed(
              my_router.Router.namedRouteFromAuth(state),
            );
          },
          child: child,
        );
      },
    );
  }
}
