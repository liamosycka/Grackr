import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/domain/core/usecases/check_if_authenticated.dart'
    as cia;
import 'package:gracker_app/domain/core/usecases/log_out.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final cia.Check_If_Authenticated checkIfAuthenticated;
  final Log_Out log_out;

  AuthBloc({
    @required this.log_out,
    @required this.checkIfAuthenticated,
  }) : super(const AuthState.uninitialized());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      appStart: (e) async* {
        // TODO Remove Future.delayed
        await Future.delayed(const Duration(seconds: 3));
        // await Future.delayed(const Duration(hours: 1));

        final failureOrUser = await checkIfAuthenticated.call(cia.Params());
        yield failureOrUser.fold(
          (_) => const AuthState.unauthenticated(),
          (user) {
            // print(user.username.getOrCrash());
            // print(user.password.getOrCrash());
            return AuthState.authenticated(
                permissionLevel: user.permissionLevel);
          },
        );
      },
      loggedOut: (e) async* {
        final failureOrSuccess = await log_out.call(Params());
        yield failureOrSuccess.fold(
          (failure) => state,
          (_) => const AuthState.unauthenticated(),
        );
      },
      loggedIn: (e) async* {
        yield AuthState.authenticated(permissionLevel: e.permissionLevel);
      },
    );
  }
}
