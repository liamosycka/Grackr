import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/routes/router.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          authenticated: (state) {
            return Navigator.of(context).pushReplacementNamed(
              state.permissionLevel.getOrCrash() == PermissionLevel.admin
                  ? Routes.homeAdmin
                  : Routes.homeGuard,
            );
          },
          unauthenticated: (_) =>
              Navigator.of(context).pushReplacementNamed(Routes.landing),
        );
      },
      child: _SplashPageWidget(),
    );
  }
}

class _SplashPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Grackr',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onBackground,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: SizedBox(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  backgroundColor: colorScheme.onBackground,
                  strokeWidth: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
