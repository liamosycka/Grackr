import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStart() = AppStart;
  const factory AuthEvent.loggedIn() = LoggedIn;
  const factory AuthEvent.loggedOut() = LoggedOut;
}
