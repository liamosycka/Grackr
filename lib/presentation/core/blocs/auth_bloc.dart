import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/domain/authentication/usecases/check_if_authenticated.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class Auth_Bloc extends Bloc<AuthEvent, AuthState> {
  final Check_If_Authenticated checkIfAuthenticated;

  Auth_Bloc({@required this.checkIfAuthenticated})
      : super(const AuthState.uninitialized());

/* Ya no es necesario con la nueva version de Bloc, pues se coloca en el super ^
  @override
  AuthState get initialState => const AuthState.uninitialized();
*/
  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(appStart: (e) async* {
      await Future.delayed(const Duration(seconds: 3));
      // TODO Change
      final failureOrUser = await checkIfAuthenticated.call(Params());
      yield failureOrUser.fold(
          (_) => const AuthState.unauthenticated(),
          (user) =>
              AuthState.authenticated(permissionLevel: user.permissionLevel));
    }, loggedOut: (e) async* {
      // TODO Change
      await Future.delayed(const Duration(seconds: 3));
      yield const AuthState.unauthenticated();
    });
  }
}
