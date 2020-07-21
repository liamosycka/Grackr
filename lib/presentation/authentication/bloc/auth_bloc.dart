import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/domain/authentication/usecases/check_if_authenticated.dart';
import 'package:gracker_app/presentation/authentication/bloc/auth_event.dart';
import 'package:gracker_app/presentation/authentication/bloc/auth_state.dart';

class Auth_Bloc extends Bloc<AuthEvent, AuthState> {
  final Check_If_Authenticated checkIfAuthenticated;

  Auth_Bloc({@required this.checkIfAuthenticated});

  @override
  AuthState get initialState => AuthState.uninitialized();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(appStart: (e) async* {
      yield AuthState.loading();
      await Future.delayed(Duration(seconds: 3));
      // TODO Change
      final failureOrUser = await checkIfAuthenticated.call(Params());
      yield failureOrUser.fold(
          (_) => AuthState.unauthenticated(),
          (user) =>
              AuthState.authenticated(permissionLevel: user.permissionLevel));
    }, loggedIn: (e) async* {
      yield AuthState.authenticated(permissionLevel: null);
    }, loggedOut: (e) async* {
      // TODO Change
      yield AuthState.loading();
      await Future.delayed(Duration(seconds: 3));
      yield AuthState.unauthenticated();
    });
  }
}
