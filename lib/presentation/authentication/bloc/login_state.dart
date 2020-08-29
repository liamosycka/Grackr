import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/presentation/authentication/auth_failures.dart';

part 'login_state.freezed.dart';
/*
@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.failure() = Failure;
  const factory LoginState.success() = Success;
}
*/
// TODO

//https://github.com/ResoCoder/finished-flutter-firebase-ddd-course/blob/master/lib/application/auth/sign_in_form/sign_in_form_state.dart
@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @required UserName username,
    @required Password password,
    @required PermissionLevel permissions,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailrueOrSuccess,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        username: UserName(''),
        password: Password(''),
        // TODO Obtener el permiso del usuario cacheado, si lo hay ??
        permissions: PermissionLevel(PermissionLevel.guard),
        showErrorMessages: false,
        isSubmitting: false,
        authFailrueOrSuccess: none(),
      );
}
//a
