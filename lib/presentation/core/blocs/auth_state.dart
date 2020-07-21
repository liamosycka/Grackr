import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_state.freezed.dart';
//asd

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.uninitialized() = Uninitialized;
  const factory AuthState.authenticated({@required int permissionLevel}) =
      Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
