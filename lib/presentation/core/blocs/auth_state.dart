import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';

part 'auth_state.freezed.dart';
//asd

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.uninitialized() = Uninitialized;
  const factory AuthState.authenticated(
      {@required PermissionLevel permissionLevel,
      @required UserName username}) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
