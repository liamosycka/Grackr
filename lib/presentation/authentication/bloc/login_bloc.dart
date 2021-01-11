import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:gracker_app/domain/authentication/usecases/get_authenticated.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/authentication/auth_failures.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_event.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class LoginBloc extends HydratedBloc<LoginEvent, LoginState> {
  Get_Authenticated getAuthenticated;

  LoginBloc({
    @required this.getAuthenticated,
  })  : assert(getAuthenticated != null),
        super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(
      submittedLogin: (SubmittedLogin e) async* {
        final isUsernameValid = state.username.isValid();
        final isPasswordValid = state.password.isValid();
        final isPermissionValid = state.permissions.isValid();

        Either<AuthFailure, Unit> failureOrSuccess;

        if (isUsernameValid && isPasswordValid && isPermissionValid) {
          yield state.copyWith(
            isSubmitting: true,
          );

          failureOrSuccess = await getAuthenticated.call(
            Params(
              username: state.username,
              plainPassword: state.password,
              permissionLevel: state.permissions,
            ),
          );
        } else {
          failureOrSuccess = const Left(AuthFailure.failedDomainVerification());
        }
        //? Esto se hace para 'bloquear' la pantalla tras haber sido autenticado
        //? De esta forma el usuario no puede interactuar mientras se realiza
        //? la transición de pantallas
        final submittingCondition = failureOrSuccess.isRight();

        yield state.copyWith(
          isSubmitting: submittingCondition,
          showErrorMessages: true,
          authFailureOrSuccess: optionOf(failureOrSuccess),
        );
        yield state.copyWith(
          isSubmitting: submittingCondition,
          showErrorMessages: true,
          authFailureOrSuccess: none(),
        );
      },
      usernameChanged: (UsernameChanged e) async* {
        yield state.copyWith(
          username: UserName(e.usernameStr),
        );
      },
      passwordChanged: (PasswordChanged e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
        );
      },
      permissionsChanged: (PermissionsChanged e) async* {
        yield state.copyWith(
          permissions: PermissionLevel(
            e.permissions,
          ),
        );
      },
    );
  }

  @override
  LoginState fromJson(Map<String, dynamic> json) {
    final permissionLevel = json['permissionLevel'] as int;
    return LoginState.initial()
        .copyWith(permissions: PermissionLevel(permissionLevel));
  }

  @override
  Map<String, int> toJson(LoginState state) {
    final permissionLevel = state.permissions.getOrCrash();
    return {'permissionLevel': permissionLevel};
  }
}
