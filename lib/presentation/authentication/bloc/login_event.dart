import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_event.freezed.dart';

//asd
@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.submittedLogin({
    @required String username,
    @required String plainPassword,
    @required bool adminPermissions,
  }) = SubmittedLogin;
  const factory LoginEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
  const factory LoginEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory LoginEvent.permissionsChanged(
      {@required bool adminPermissions}) = PermissionsChanged;
}
