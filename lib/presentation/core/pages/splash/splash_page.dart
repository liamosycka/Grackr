import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';
import 'package:gracker_app/presentation/core/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<Auth_Bloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          // TODO Rutas
          authenticated: (_) => ExtendedNavigator.of(context).pushTestPage(),
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).pushLandingPage(),
        );
      },
      child: _SplashPageWidget(),
    );
  }
}

class _SplashPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
