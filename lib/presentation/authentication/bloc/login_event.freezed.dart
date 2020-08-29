// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginEventTearOff {
  const _$LoginEventTearOff();

// ignore: unused_element
  SubmittedLogin submittedLogin(
      {@required String username,
      @required String plainPassword,
      @required bool adminPermissions}) {
    return SubmittedLogin(
      username: username,
      plainPassword: plainPassword,
      adminPermissions: adminPermissions,
    );
  }

// ignore: unused_element
  UsernameChanged usernameChanged(String usernameStr) {
    return UsernameChanged(
      usernameStr,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  PermissionsChanged permissionsChanged({@required bool adminPermissions}) {
    return PermissionsChanged(
      adminPermissions: adminPermissions,
    );
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result submittedLogin(
            String username, String plainPassword, bool adminPermissions),
    @required Result usernameChanged(String usernameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result permissionsChanged(bool adminPermissions),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submittedLogin(
        String username, String plainPassword, bool adminPermissions),
    Result usernameChanged(String usernameStr),
    Result passwordChanged(String passwordStr),
    Result permissionsChanged(bool adminPermissions),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submittedLogin(SubmittedLogin value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result permissionsChanged(PermissionsChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submittedLogin(SubmittedLogin value),
    Result usernameChanged(UsernameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result permissionsChanged(PermissionsChanged value),
    @required Result orElse(),
  });
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

abstract class $SubmittedLoginCopyWith<$Res> {
  factory $SubmittedLoginCopyWith(
          SubmittedLogin value, $Res Function(SubmittedLogin) then) =
      _$SubmittedLoginCopyWithImpl<$Res>;
  $Res call({String username, String plainPassword, bool adminPermissions});
}

class _$SubmittedLoginCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $SubmittedLoginCopyWith<$Res> {
  _$SubmittedLoginCopyWithImpl(
      SubmittedLogin _value, $Res Function(SubmittedLogin) _then)
      : super(_value, (v) => _then(v as SubmittedLogin));

  @override
  SubmittedLogin get _value => super._value as SubmittedLogin;

  @override
  $Res call({
    Object username = freezed,
    Object plainPassword = freezed,
    Object adminPermissions = freezed,
  }) {
    return _then(SubmittedLogin(
      username: username == freezed ? _value.username : username as String,
      plainPassword: plainPassword == freezed
          ? _value.plainPassword
          : plainPassword as String,
      adminPermissions: adminPermissions == freezed
          ? _value.adminPermissions
          : adminPermissions as bool,
    ));
  }
}

class _$SubmittedLogin with DiagnosticableTreeMixin implements SubmittedLogin {
  const _$SubmittedLogin(
      {@required this.username,
      @required this.plainPassword,
      @required this.adminPermissions})
      : assert(username != null),
        assert(plainPassword != null),
        assert(adminPermissions != null);

  @override
  final String username;
  @override
  final String plainPassword;
  @override
  final bool adminPermissions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.submittedLogin(username: $username, plainPassword: $plainPassword, adminPermissions: $adminPermissions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.submittedLogin'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('plainPassword', plainPassword))
      ..add(DiagnosticsProperty('adminPermissions', adminPermissions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubmittedLogin &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.plainPassword, plainPassword) ||
                const DeepCollectionEquality()
                    .equals(other.plainPassword, plainPassword)) &&
            (identical(other.adminPermissions, adminPermissions) ||
                const DeepCollectionEquality()
                    .equals(other.adminPermissions, adminPermissions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(plainPassword) ^
      const DeepCollectionEquality().hash(adminPermissions);

  @override
  $SubmittedLoginCopyWith<SubmittedLogin> get copyWith =>
      _$SubmittedLoginCopyWithImpl<SubmittedLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result submittedLogin(
            String username, String plainPassword, bool adminPermissions),
    @required Result usernameChanged(String usernameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result permissionsChanged(bool adminPermissions),
  }) {
    assert(submittedLogin != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(permissionsChanged != null);
    return submittedLogin(username, plainPassword, adminPermissions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submittedLogin(
        String username, String plainPassword, bool adminPermissions),
    Result usernameChanged(String usernameStr),
    Result passwordChanged(String passwordStr),
    Result permissionsChanged(bool adminPermissions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submittedLogin != null) {
      return submittedLogin(username, plainPassword, adminPermissions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submittedLogin(SubmittedLogin value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result permissionsChanged(PermissionsChanged value),
  }) {
    assert(submittedLogin != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(permissionsChanged != null);
    return submittedLogin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submittedLogin(SubmittedLogin value),
    Result usernameChanged(UsernameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result permissionsChanged(PermissionsChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submittedLogin != null) {
      return submittedLogin(this);
    }
    return orElse();
  }
}

abstract class SubmittedLogin implements LoginEvent {
  const factory SubmittedLogin(
      {@required String username,
      @required String plainPassword,
      @required bool adminPermissions}) = _$SubmittedLogin;

  String get username;
  String get plainPassword;
  bool get adminPermissions;
  $SubmittedLoginCopyWith<SubmittedLogin> get copyWith;
}

abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

class _$UsernameChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(UsernameChanged(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

class _$UsernameChanged
    with DiagnosticableTreeMixin
    implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.usernameChanged'))
      ..add(DiagnosticsProperty('usernameStr', usernameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result submittedLogin(
            String username, String plainPassword, bool adminPermissions),
    @required Result usernameChanged(String usernameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result permissionsChanged(bool adminPermissions),
  }) {
    assert(submittedLogin != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(permissionsChanged != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submittedLogin(
        String username, String plainPassword, bool adminPermissions),
    Result usernameChanged(String usernameStr),
    Result passwordChanged(String passwordStr),
    Result permissionsChanged(bool adminPermissions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submittedLogin(SubmittedLogin value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result permissionsChanged(PermissionsChanged value),
  }) {
    assert(submittedLogin != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(permissionsChanged != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submittedLogin(SubmittedLogin value),
    Result usernameChanged(UsernameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result permissionsChanged(PermissionsChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements LoginEvent {
  const factory UsernameChanged(String usernameStr) = _$UsernameChanged;

  String get usernameStr;
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.passwordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result submittedLogin(
            String username, String plainPassword, bool adminPermissions),
    @required Result usernameChanged(String usernameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result permissionsChanged(bool adminPermissions),
  }) {
    assert(submittedLogin != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(permissionsChanged != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submittedLogin(
        String username, String plainPassword, bool adminPermissions),
    Result usernameChanged(String usernameStr),
    Result passwordChanged(String passwordStr),
    Result permissionsChanged(bool adminPermissions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submittedLogin(SubmittedLogin value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result permissionsChanged(PermissionsChanged value),
  }) {
    assert(submittedLogin != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(permissionsChanged != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submittedLogin(SubmittedLogin value),
    Result usernameChanged(UsernameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result permissionsChanged(PermissionsChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $PermissionsChangedCopyWith<$Res> {
  factory $PermissionsChangedCopyWith(
          PermissionsChanged value, $Res Function(PermissionsChanged) then) =
      _$PermissionsChangedCopyWithImpl<$Res>;
  $Res call({bool adminPermissions});
}

class _$PermissionsChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $PermissionsChangedCopyWith<$Res> {
  _$PermissionsChangedCopyWithImpl(
      PermissionsChanged _value, $Res Function(PermissionsChanged) _then)
      : super(_value, (v) => _then(v as PermissionsChanged));

  @override
  PermissionsChanged get _value => super._value as PermissionsChanged;

  @override
  $Res call({
    Object adminPermissions = freezed,
  }) {
    return _then(PermissionsChanged(
      adminPermissions: adminPermissions == freezed
          ? _value.adminPermissions
          : adminPermissions as bool,
    ));
  }
}

class _$PermissionsChanged
    with DiagnosticableTreeMixin
    implements PermissionsChanged {
  const _$PermissionsChanged({@required this.adminPermissions})
      : assert(adminPermissions != null);

  @override
  final bool adminPermissions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.permissionsChanged(adminPermissions: $adminPermissions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.permissionsChanged'))
      ..add(DiagnosticsProperty('adminPermissions', adminPermissions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PermissionsChanged &&
            (identical(other.adminPermissions, adminPermissions) ||
                const DeepCollectionEquality()
                    .equals(other.adminPermissions, adminPermissions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(adminPermissions);

  @override
  $PermissionsChangedCopyWith<PermissionsChanged> get copyWith =>
      _$PermissionsChangedCopyWithImpl<PermissionsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result submittedLogin(
            String username, String plainPassword, bool adminPermissions),
    @required Result usernameChanged(String usernameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result permissionsChanged(bool adminPermissions),
  }) {
    assert(submittedLogin != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(permissionsChanged != null);
    return permissionsChanged(adminPermissions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submittedLogin(
        String username, String plainPassword, bool adminPermissions),
    Result usernameChanged(String usernameStr),
    Result passwordChanged(String passwordStr),
    Result permissionsChanged(bool adminPermissions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (permissionsChanged != null) {
      return permissionsChanged(adminPermissions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submittedLogin(SubmittedLogin value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result permissionsChanged(PermissionsChanged value),
  }) {
    assert(submittedLogin != null);
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(permissionsChanged != null);
    return permissionsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submittedLogin(SubmittedLogin value),
    Result usernameChanged(UsernameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result permissionsChanged(PermissionsChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (permissionsChanged != null) {
      return permissionsChanged(this);
    }
    return orElse();
  }
}

abstract class PermissionsChanged implements LoginEvent {
  const factory PermissionsChanged({@required bool adminPermissions}) =
      _$PermissionsChanged;

  bool get adminPermissions;
  $PermissionsChangedCopyWith<PermissionsChanged> get copyWith;
}
