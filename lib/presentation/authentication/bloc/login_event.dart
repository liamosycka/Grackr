import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_event.freezed.dart';

//asd
@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.submittedLogin() = SubmittedLogin;
  const factory LoginEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
  const factory LoginEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory LoginEvent.permissionsChanged({@required int permissions}) =
      PermissionsChanged;
}
