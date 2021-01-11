// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthExceptionTearOff {
  const _$AuthExceptionTearOff();

// ignore: unused_element
  _NotAuthenticated notAuthenticated() {
    return const _NotAuthenticated();
  }

// ignore: unused_element
  _NoCachedUser noCachedUser() {
    return const _NoCachedUser();
  }
}

// ignore: unused_element
const $AuthException = _$AuthExceptionTearOff();

mixin _$AuthException {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result noCachedUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result noCachedUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result noCachedUser(_NoCachedUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated value),
    Result noCachedUser(_NoCachedUser value),
    @required Result orElse(),
  });
}

abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res>;
}

class _$AuthExceptionCopyWithImpl<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  final AuthException _value;
  // ignore: unused_field
  final $Res Function(AuthException) _then;
}

abstract class _$NotAuthenticatedCopyWith<$Res> {
  factory _$NotAuthenticatedCopyWith(
          _NotAuthenticated value, $Res Function(_NotAuthenticated) then) =
      __$NotAuthenticatedCopyWithImpl<$Res>;
}

class __$NotAuthenticatedCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements _$NotAuthenticatedCopyWith<$Res> {
  __$NotAuthenticatedCopyWithImpl(
      _NotAuthenticated _value, $Res Function(_NotAuthenticated) _then)
      : super(_value, (v) => _then(v as _NotAuthenticated));

  @override
  _NotAuthenticated get _value => super._value as _NotAuthenticated;
}

class _$_NotAuthenticated implements _NotAuthenticated {
  const _$_NotAuthenticated();

  @override
  String toString() {
    return 'AuthException.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result noCachedUser(),
  }) {
    assert(notAuthenticated != null);
    assert(noCachedUser != null);
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result noCachedUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result noCachedUser(_NoCachedUser value),
  }) {
    assert(notAuthenticated != null);
    assert(noCachedUser != null);
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated value),
    Result noCachedUser(_NoCachedUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticated implements AuthException {
  const factory _NotAuthenticated() = _$_NotAuthenticated;
}

abstract class _$NoCachedUserCopyWith<$Res> {
  factory _$NoCachedUserCopyWith(
          _NoCachedUser value, $Res Function(_NoCachedUser) then) =
      __$NoCachedUserCopyWithImpl<$Res>;
}

class __$NoCachedUserCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements _$NoCachedUserCopyWith<$Res> {
  __$NoCachedUserCopyWithImpl(
      _NoCachedUser _value, $Res Function(_NoCachedUser) _then)
      : super(_value, (v) => _then(v as _NoCachedUser));

  @override
  _NoCachedUser get _value => super._value as _NoCachedUser;
}

class _$_NoCachedUser implements _NoCachedUser {
  const _$_NoCachedUser();

  @override
  String toString() {
    return 'AuthException.noCachedUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoCachedUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result noCachedUser(),
  }) {
    assert(notAuthenticated != null);
    assert(noCachedUser != null);
    return noCachedUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result noCachedUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCachedUser != null) {
      return noCachedUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result noCachedUser(_NoCachedUser value),
  }) {
    assert(notAuthenticated != null);
    assert(noCachedUser != null);
    return noCachedUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated value),
    Result noCachedUser(_NoCachedUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCachedUser != null) {
      return noCachedUser(this);
    }
    return orElse();
  }
}

abstract class _NoCachedUser implements AuthException {
  const factory _NoCachedUser() = _$_NoCachedUser;
}
