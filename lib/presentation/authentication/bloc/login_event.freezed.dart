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
  Submit submit(
      {@required String username,
      @required String plainPassword,
      @required bool adminCheck,
      bool permissions}) {
    return Submit(
      username: username,
      plainPassword: plainPassword,
      adminCheck: adminCheck,
      permissions: permissions,
    );
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  String get username;
  String get plainPassword;
  bool get adminCheck;
  bool get permissions;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result submit(String username, String plainPassword, bool adminCheck,
            bool permissions),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(String username, String plainPassword, bool adminCheck,
        bool permissions),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
    @required Result orElse(),
  });

  $LoginEventCopyWith<LoginEvent> get copyWith;
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String plainPassword,
      bool adminCheck,
      bool permissions});
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object username = freezed,
    Object plainPassword = freezed,
    Object adminCheck = freezed,
    Object permissions = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      plainPassword: plainPassword == freezed
          ? _value.plainPassword
          : plainPassword as String,
      adminCheck:
          adminCheck == freezed ? _value.adminCheck : adminCheck as bool,
      permissions:
          permissions == freezed ? _value.permissions : permissions as bool,
    ));
  }
}

abstract class $SubmitCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String plainPassword,
      bool adminCheck,
      bool permissions});
}

class _$SubmitCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(Submit _value, $Res Function(Submit) _then)
      : super(_value, (v) => _then(v as Submit));

  @override
  Submit get _value => super._value as Submit;

  @override
  $Res call({
    Object username = freezed,
    Object plainPassword = freezed,
    Object adminCheck = freezed,
    Object permissions = freezed,
  }) {
    return _then(Submit(
      username: username == freezed ? _value.username : username as String,
      plainPassword: plainPassword == freezed
          ? _value.plainPassword
          : plainPassword as String,
      adminCheck:
          adminCheck == freezed ? _value.adminCheck : adminCheck as bool,
      permissions:
          permissions == freezed ? _value.permissions : permissions as bool,
    ));
  }
}

class _$Submit with DiagnosticableTreeMixin implements Submit {
  const _$Submit(
      {@required this.username,
      @required this.plainPassword,
      @required this.adminCheck,
      this.permissions})
      : assert(username != null),
        assert(plainPassword != null),
        assert(adminCheck != null);

  @override
  final String username;
  @override
  final String plainPassword;
  @override
  final bool adminCheck;
  @override
  final bool permissions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.submit(username: $username, plainPassword: $plainPassword, adminCheck: $adminCheck, permissions: $permissions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.submit'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('plainPassword', plainPassword))
      ..add(DiagnosticsProperty('adminCheck', adminCheck))
      ..add(DiagnosticsProperty('permissions', permissions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Submit &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.plainPassword, plainPassword) ||
                const DeepCollectionEquality()
                    .equals(other.plainPassword, plainPassword)) &&
            (identical(other.adminCheck, adminCheck) ||
                const DeepCollectionEquality()
                    .equals(other.adminCheck, adminCheck)) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(plainPassword) ^
      const DeepCollectionEquality().hash(adminCheck) ^
      const DeepCollectionEquality().hash(permissions);

  @override
  $SubmitCopyWith<Submit> get copyWith =>
      _$SubmitCopyWithImpl<Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result submit(String username, String plainPassword, bool adminCheck,
            bool permissions),
  }) {
    assert(submit != null);
    return submit(username, plainPassword, adminCheck, permissions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(String username, String plainPassword, bool adminCheck,
        bool permissions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(username, plainPassword, adminCheck, permissions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
  }) {
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements LoginEvent {
  const factory Submit(
      {@required String username,
      @required String plainPassword,
      @required bool adminCheck,
      bool permissions}) = _$Submit;

  @override
  String get username;
  @override
  String get plainPassword;
  @override
  bool get adminCheck;
  @override
  bool get permissions;
  @override
  $SubmitCopyWith<Submit> get copyWith;
}
