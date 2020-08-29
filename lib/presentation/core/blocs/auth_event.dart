import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStart() = AppStart;
  const factory AuthEvent.loggedIn({final PermissionLevel permissionLevel}) =
      LoggedIn;
  const factory AuthEvent.loggedOut() = LoggedOut;
}
