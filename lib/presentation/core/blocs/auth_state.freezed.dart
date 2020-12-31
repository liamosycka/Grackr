// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  Uninitialized uninitialized() {
    return const Uninitialized();
  }

// ignore: unused_element
  Authenticated authenticated(
      {@required PermissionLevel permissionLevel,
      @required UserName username}) {
    return Authenticated(
      permissionLevel: permissionLevel,
      username: username,
    );
  }

// ignore: unused_element
  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required
        Result authenticated(
            PermissionLevel permissionLevel, UserName username),
    @required Result unauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result authenticated(PermissionLevel permissionLevel, UserName username),
    Result unauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(Uninitialized value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(Uninitialized value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $UninitializedCopyWith<$Res> {
  factory $UninitializedCopyWith(
          Uninitialized value, $Res Function(Uninitialized) then) =
      _$UninitializedCopyWithImpl<$Res>;
}

class _$UninitializedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UninitializedCopyWith<$Res> {
  _$UninitializedCopyWithImpl(
      Uninitialized _value, $Res Function(Uninitialized) _then)
      : super(_value, (v) => _then(v as Uninitialized));

  @override
  Uninitialized get _value => super._value as Uninitialized;
}

class _$Uninitialized with DiagnosticableTreeMixin implements Uninitialized {
  const _$Uninitialized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.uninitialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.uninitialized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Uninitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required
        Result authenticated(
            PermissionLevel permissionLevel, UserName username),
    @required Result unauthenticated(),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result authenticated(PermissionLevel permissionLevel, UserName username),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(Uninitialized value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(Uninitialized value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class Uninitialized implements AuthState {
  const factory Uninitialized() = _$Uninitialized;
}

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({PermissionLevel permissionLevel, UserName username});
}

class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object permissionLevel = freezed,
    Object username = freezed,
  }) {
    return _then(Authenticated(
      permissionLevel: permissionLevel == freezed
          ? _value.permissionLevel
          : permissionLevel as PermissionLevel,
      username: username == freezed ? _value.username : username as UserName,
    ));
  }
}

class _$Authenticated with DiagnosticableTreeMixin implements Authenticated {
  const _$Authenticated(
      {@required this.permissionLevel, @required this.username})
      : assert(permissionLevel != null),
        assert(username != null);

  @override
  final PermissionLevel permissionLevel;
  @override
  final UserName username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authenticated(permissionLevel: $permissionLevel, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authenticated'))
      ..add(DiagnosticsProperty('permissionLevel', permissionLevel))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.permissionLevel, permissionLevel) ||
                const DeepCollectionEquality()
                    .equals(other.permissionLevel, permissionLevel)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(permissionLevel) ^
      const DeepCollectionEquality().hash(username);

  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required
        Result authenticated(
            PermissionLevel permissionLevel, UserName username),
    @required Result unauthenticated(),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(permissionLevel, username);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result authenticated(PermissionLevel permissionLevel, UserName username),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(permissionLevel, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(Uninitialized value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(Uninitialized value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(
      {@required PermissionLevel permissionLevel,
      @required UserName username}) = _$Authenticated;

  PermissionLevel get permissionLevel;
  UserName get username;
  $AuthenticatedCopyWith<Authenticated> get copyWith;
}

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

class _$Unauthenticated
    with DiagnosticableTreeMixin
    implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.unauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required
        Result authenticated(
            PermissionLevel permissionLevel, UserName username),
    @required Result unauthenticated(),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result authenticated(PermissionLevel permissionLevel, UserName username),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(Uninitialized value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(Uninitialized value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}
