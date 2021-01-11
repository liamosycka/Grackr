// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  _NotAuthenticated<T> notAuthenticated<T>() {
    return _NotAuthenticated<T>();
  }

// ignore: unused_element
  _OperationFailed<T> operationFailed<T>({@required T failedValue}) {
    return _OperationFailed<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _NoInternetConnection<T> noInternetConnection<T>() {
    return _NoInternetConnection<T>();
  }

// ignore: unused_element
  _FailedDomainVerification<T> failedDomainVerification<T>() {
    return _FailedDomainVerification<T>();
  }

// ignore: unused_element
  _SessionExpired<T> sessionExpired<T>({@required User user}) {
    return _SessionExpired<T>(
      user: user,
    );
  }

// ignore: unused_element
  _NoCachedUser<T> noCachedUser<T>({T failedValue}) {
    return _NoCachedUser<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _CacheFailure<T> cacheFailure<T>({@required T failedValue}) {
    return _CacheFailure<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result operationFailed(T failedValue),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
    @required Result sessionExpired(User user),
    @required Result noCachedUser(T failedValue),
    @required Result cacheFailure(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result operationFailed(T failedValue),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    Result sessionExpired(User user),
    Result noCachedUser(T failedValue),
    Result cacheFailure(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated<T> value),
    @required Result operationFailed(_OperationFailed<T> value),
    @required Result noInternetConnection(_NoInternetConnection<T> value),
    @required
        Result failedDomainVerification(_FailedDomainVerification<T> value),
    @required Result sessionExpired(_SessionExpired<T> value),
    @required Result noCachedUser(_NoCachedUser<T> value),
    @required Result cacheFailure(_CacheFailure<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated<T> value),
    Result operationFailed(_OperationFailed<T> value),
    Result noInternetConnection(_NoInternetConnection<T> value),
    Result failedDomainVerification(_FailedDomainVerification<T> value),
    Result sessionExpired(_SessionExpired<T> value),
    Result noCachedUser(_NoCachedUser<T> value),
    Result cacheFailure(_CacheFailure<T> value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<T, $Res> {
  factory $AuthFailureCopyWith(
          AuthFailure<T> value, $Res Function(AuthFailure<T>) then) =
      _$AuthFailureCopyWithImpl<T, $Res>;
}

class _$AuthFailureCopyWithImpl<T, $Res>
    implements $AuthFailureCopyWith<T, $Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthFailure<T>) _then;
}

abstract class _$NotAuthenticatedCopyWith<T, $Res> {
  factory _$NotAuthenticatedCopyWith(_NotAuthenticated<T> value,
          $Res Function(_NotAuthenticated<T>) then) =
      __$NotAuthenticatedCopyWithImpl<T, $Res>;
}

class __$NotAuthenticatedCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements _$NotAuthenticatedCopyWith<T, $Res> {
  __$NotAuthenticatedCopyWithImpl(
      _NotAuthenticated<T> _value, $Res Function(_NotAuthenticated<T>) _then)
      : super(_value, (v) => _then(v as _NotAuthenticated<T>));

  @override
  _NotAuthenticated<T> get _value => super._value as _NotAuthenticated<T>;
}

class _$_NotAuthenticated<T> implements _NotAuthenticated<T> {
  const _$_NotAuthenticated();

  @override
  String toString() {
    return 'AuthFailure<$T>.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotAuthenticated<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result operationFailed(T failedValue),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
    @required Result sessionExpired(User user),
    @required Result noCachedUser(T failedValue),
    @required Result cacheFailure(T failedValue),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result operationFailed(T failedValue),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    Result sessionExpired(User user),
    Result noCachedUser(T failedValue),
    Result cacheFailure(T failedValue),
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
    @required Result notAuthenticated(_NotAuthenticated<T> value),
    @required Result operationFailed(_OperationFailed<T> value),
    @required Result noInternetConnection(_NoInternetConnection<T> value),
    @required
        Result failedDomainVerification(_FailedDomainVerification<T> value),
    @required Result sessionExpired(_SessionExpired<T> value),
    @required Result noCachedUser(_NoCachedUser<T> value),
    @required Result cacheFailure(_CacheFailure<T> value),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated<T> value),
    Result operationFailed(_OperationFailed<T> value),
    Result noInternetConnection(_NoInternetConnection<T> value),
    Result failedDomainVerification(_FailedDomainVerification<T> value),
    Result sessionExpired(_SessionExpired<T> value),
    Result noCachedUser(_NoCachedUser<T> value),
    Result cacheFailure(_CacheFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticated<T> implements AuthFailure<T> {
  const factory _NotAuthenticated() = _$_NotAuthenticated<T>;
}

abstract class _$OperationFailedCopyWith<T, $Res> {
  factory _$OperationFailedCopyWith(
          _OperationFailed<T> value, $Res Function(_OperationFailed<T>) then) =
      __$OperationFailedCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class __$OperationFailedCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements _$OperationFailedCopyWith<T, $Res> {
  __$OperationFailedCopyWithImpl(
      _OperationFailed<T> _value, $Res Function(_OperationFailed<T>) _then)
      : super(_value, (v) => _then(v as _OperationFailed<T>));

  @override
  _OperationFailed<T> get _value => super._value as _OperationFailed<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_OperationFailed<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$_OperationFailed<T> implements _OperationFailed<T> {
  const _$_OperationFailed({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthFailure<$T>.operationFailed(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OperationFailed<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$OperationFailedCopyWith<T, _OperationFailed<T>> get copyWith =>
      __$OperationFailedCopyWithImpl<T, _OperationFailed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result operationFailed(T failedValue),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
    @required Result sessionExpired(User user),
    @required Result noCachedUser(T failedValue),
    @required Result cacheFailure(T failedValue),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return operationFailed(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result operationFailed(T failedValue),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    Result sessionExpired(User user),
    Result noCachedUser(T failedValue),
    Result cacheFailure(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (operationFailed != null) {
      return operationFailed(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated<T> value),
    @required Result operationFailed(_OperationFailed<T> value),
    @required Result noInternetConnection(_NoInternetConnection<T> value),
    @required
        Result failedDomainVerification(_FailedDomainVerification<T> value),
    @required Result sessionExpired(_SessionExpired<T> value),
    @required Result noCachedUser(_NoCachedUser<T> value),
    @required Result cacheFailure(_CacheFailure<T> value),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return operationFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated<T> value),
    Result operationFailed(_OperationFailed<T> value),
    Result noInternetConnection(_NoInternetConnection<T> value),
    Result failedDomainVerification(_FailedDomainVerification<T> value),
    Result sessionExpired(_SessionExpired<T> value),
    Result noCachedUser(_NoCachedUser<T> value),
    Result cacheFailure(_CacheFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (operationFailed != null) {
      return operationFailed(this);
    }
    return orElse();
  }
}

abstract class _OperationFailed<T> implements AuthFailure<T> {
  const factory _OperationFailed({@required T failedValue}) =
      _$_OperationFailed<T>;

  T get failedValue;
  _$OperationFailedCopyWith<T, _OperationFailed<T>> get copyWith;
}

abstract class _$NoInternetConnectionCopyWith<T, $Res> {
  factory _$NoInternetConnectionCopyWith(_NoInternetConnection<T> value,
          $Res Function(_NoInternetConnection<T>) then) =
      __$NoInternetConnectionCopyWithImpl<T, $Res>;
}

class __$NoInternetConnectionCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements _$NoInternetConnectionCopyWith<T, $Res> {
  __$NoInternetConnectionCopyWithImpl(_NoInternetConnection<T> _value,
      $Res Function(_NoInternetConnection<T>) _then)
      : super(_value, (v) => _then(v as _NoInternetConnection<T>));

  @override
  _NoInternetConnection<T> get _value =>
      super._value as _NoInternetConnection<T>;
}

class _$_NoInternetConnection<T> implements _NoInternetConnection<T> {
  const _$_NoInternetConnection();

  @override
  String toString() {
    return 'AuthFailure<$T>.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoInternetConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result operationFailed(T failedValue),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
    @required Result sessionExpired(User user),
    @required Result noCachedUser(T failedValue),
    @required Result cacheFailure(T failedValue),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result operationFailed(T failedValue),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    Result sessionExpired(User user),
    Result noCachedUser(T failedValue),
    Result cacheFailure(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated<T> value),
    @required Result operationFailed(_OperationFailed<T> value),
    @required Result noInternetConnection(_NoInternetConnection<T> value),
    @required
        Result failedDomainVerification(_FailedDomainVerification<T> value),
    @required Result sessionExpired(_SessionExpired<T> value),
    @required Result noCachedUser(_NoCachedUser<T> value),
    @required Result cacheFailure(_CacheFailure<T> value),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated<T> value),
    Result operationFailed(_OperationFailed<T> value),
    Result noInternetConnection(_NoInternetConnection<T> value),
    Result failedDomainVerification(_FailedDomainVerification<T> value),
    Result sessionExpired(_SessionExpired<T> value),
    Result noCachedUser(_NoCachedUser<T> value),
    Result cacheFailure(_CacheFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection<T> implements AuthFailure<T> {
  const factory _NoInternetConnection() = _$_NoInternetConnection<T>;
}

abstract class _$FailedDomainVerificationCopyWith<T, $Res> {
  factory _$FailedDomainVerificationCopyWith(_FailedDomainVerification<T> value,
          $Res Function(_FailedDomainVerification<T>) then) =
      __$FailedDomainVerificationCopyWithImpl<T, $Res>;
}

class __$FailedDomainVerificationCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements _$FailedDomainVerificationCopyWith<T, $Res> {
  __$FailedDomainVerificationCopyWithImpl(_FailedDomainVerification<T> _value,
      $Res Function(_FailedDomainVerification<T>) _then)
      : super(_value, (v) => _then(v as _FailedDomainVerification<T>));

  @override
  _FailedDomainVerification<T> get _value =>
      super._value as _FailedDomainVerification<T>;
}

class _$_FailedDomainVerification<T> implements _FailedDomainVerification<T> {
  const _$_FailedDomainVerification();

  @override
  String toString() {
    return 'AuthFailure<$T>.failedDomainVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FailedDomainVerification<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result operationFailed(T failedValue),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
    @required Result sessionExpired(User user),
    @required Result noCachedUser(T failedValue),
    @required Result cacheFailure(T failedValue),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return failedDomainVerification();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result operationFailed(T failedValue),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    Result sessionExpired(User user),
    Result noCachedUser(T failedValue),
    Result cacheFailure(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedDomainVerification != null) {
      return failedDomainVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated<T> value),
    @required Result operationFailed(_OperationFailed<T> value),
    @required Result noInternetConnection(_NoInternetConnection<T> value),
    @required
        Result failedDomainVerification(_FailedDomainVerification<T> value),
    @required Result sessionExpired(_SessionExpired<T> value),
    @required Result noCachedUser(_NoCachedUser<T> value),
    @required Result cacheFailure(_CacheFailure<T> value),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return failedDomainVerification(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated<T> value),
    Result operationFailed(_OperationFailed<T> value),
    Result noInternetConnection(_NoInternetConnection<T> value),
    Result failedDomainVerification(_FailedDomainVerification<T> value),
    Result sessionExpired(_SessionExpired<T> value),
    Result noCachedUser(_NoCachedUser<T> value),
    Result cacheFailure(_CacheFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedDomainVerification != null) {
      return failedDomainVerification(this);
    }
    return orElse();
  }
}

abstract class _FailedDomainVerification<T> implements AuthFailure<T> {
  const factory _FailedDomainVerification() = _$_FailedDomainVerification<T>;
}

abstract class _$SessionExpiredCopyWith<T, $Res> {
  factory _$SessionExpiredCopyWith(
          _SessionExpired<T> value, $Res Function(_SessionExpired<T>) then) =
      __$SessionExpiredCopyWithImpl<T, $Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class __$SessionExpiredCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements _$SessionExpiredCopyWith<T, $Res> {
  __$SessionExpiredCopyWithImpl(
      _SessionExpired<T> _value, $Res Function(_SessionExpired<T>) _then)
      : super(_value, (v) => _then(v as _SessionExpired<T>));

  @override
  _SessionExpired<T> get _value => super._value as _SessionExpired<T>;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_SessionExpired<T>(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$_SessionExpired<T> implements _SessionExpired<T> {
  const _$_SessionExpired({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthFailure<$T>.sessionExpired(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionExpired<T> &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$SessionExpiredCopyWith<T, _SessionExpired<T>> get copyWith =>
      __$SessionExpiredCopyWithImpl<T, _SessionExpired<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result operationFailed(T failedValue),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
    @required Result sessionExpired(User user),
    @required Result noCachedUser(T failedValue),
    @required Result cacheFailure(T failedValue),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return sessionExpired(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result operationFailed(T failedValue),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    Result sessionExpired(User user),
    Result noCachedUser(T failedValue),
    Result cacheFailure(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sessionExpired != null) {
      return sessionExpired(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated<T> value),
    @required Result operationFailed(_OperationFailed<T> value),
    @required Result noInternetConnection(_NoInternetConnection<T> value),
    @required
        Result failedDomainVerification(_FailedDomainVerification<T> value),
    @required Result sessionExpired(_SessionExpired<T> value),
    @required Result noCachedUser(_NoCachedUser<T> value),
    @required Result cacheFailure(_CacheFailure<T> value),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return sessionExpired(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated<T> value),
    Result operationFailed(_OperationFailed<T> value),
    Result noInternetConnection(_NoInternetConnection<T> value),
    Result failedDomainVerification(_FailedDomainVerification<T> value),
    Result sessionExpired(_SessionExpired<T> value),
    Result noCachedUser(_NoCachedUser<T> value),
    Result cacheFailure(_CacheFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sessionExpired != null) {
      return sessionExpired(this);
    }
    return orElse();
  }
}

abstract class _SessionExpired<T> implements AuthFailure<T> {
  const factory _SessionExpired({@required User user}) = _$_SessionExpired<T>;

  User get user;
  _$SessionExpiredCopyWith<T, _SessionExpired<T>> get copyWith;
}

abstract class _$NoCachedUserCopyWith<T, $Res> {
  factory _$NoCachedUserCopyWith(
          _NoCachedUser<T> value, $Res Function(_NoCachedUser<T>) then) =
      __$NoCachedUserCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class __$NoCachedUserCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements _$NoCachedUserCopyWith<T, $Res> {
  __$NoCachedUserCopyWithImpl(
      _NoCachedUser<T> _value, $Res Function(_NoCachedUser<T>) _then)
      : super(_value, (v) => _then(v as _NoCachedUser<T>));

  @override
  _NoCachedUser<T> get _value => super._value as _NoCachedUser<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_NoCachedUser<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$_NoCachedUser<T> implements _NoCachedUser<T> {
  const _$_NoCachedUser({this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthFailure<$T>.noCachedUser(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoCachedUser<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$NoCachedUserCopyWith<T, _NoCachedUser<T>> get copyWith =>
      __$NoCachedUserCopyWithImpl<T, _NoCachedUser<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result operationFailed(T failedValue),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
    @required Result sessionExpired(User user),
    @required Result noCachedUser(T failedValue),
    @required Result cacheFailure(T failedValue),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return noCachedUser(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result operationFailed(T failedValue),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    Result sessionExpired(User user),
    Result noCachedUser(T failedValue),
    Result cacheFailure(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCachedUser != null) {
      return noCachedUser(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated<T> value),
    @required Result operationFailed(_OperationFailed<T> value),
    @required Result noInternetConnection(_NoInternetConnection<T> value),
    @required
        Result failedDomainVerification(_FailedDomainVerification<T> value),
    @required Result sessionExpired(_SessionExpired<T> value),
    @required Result noCachedUser(_NoCachedUser<T> value),
    @required Result cacheFailure(_CacheFailure<T> value),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return noCachedUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated<T> value),
    Result operationFailed(_OperationFailed<T> value),
    Result noInternetConnection(_NoInternetConnection<T> value),
    Result failedDomainVerification(_FailedDomainVerification<T> value),
    Result sessionExpired(_SessionExpired<T> value),
    Result noCachedUser(_NoCachedUser<T> value),
    Result cacheFailure(_CacheFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCachedUser != null) {
      return noCachedUser(this);
    }
    return orElse();
  }
}

abstract class _NoCachedUser<T> implements AuthFailure<T> {
  const factory _NoCachedUser({T failedValue}) = _$_NoCachedUser<T>;

  T get failedValue;
  _$NoCachedUserCopyWith<T, _NoCachedUser<T>> get copyWith;
}

abstract class _$CacheFailureCopyWith<T, $Res> {
  factory _$CacheFailureCopyWith(
          _CacheFailure<T> value, $Res Function(_CacheFailure<T>) then) =
      __$CacheFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class __$CacheFailureCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements _$CacheFailureCopyWith<T, $Res> {
  __$CacheFailureCopyWithImpl(
      _CacheFailure<T> _value, $Res Function(_CacheFailure<T>) _then)
      : super(_value, (v) => _then(v as _CacheFailure<T>));

  @override
  _CacheFailure<T> get _value => super._value as _CacheFailure<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_CacheFailure<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$_CacheFailure<T> implements _CacheFailure<T> {
  const _$_CacheFailure({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthFailure<$T>.cacheFailure(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CacheFailure<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$CacheFailureCopyWith<T, _CacheFailure<T>> get copyWith =>
      __$CacheFailureCopyWithImpl<T, _CacheFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result operationFailed(T failedValue),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
    @required Result sessionExpired(User user),
    @required Result noCachedUser(T failedValue),
    @required Result cacheFailure(T failedValue),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return cacheFailure(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result operationFailed(T failedValue),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    Result sessionExpired(User user),
    Result noCachedUser(T failedValue),
    Result cacheFailure(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated<T> value),
    @required Result operationFailed(_OperationFailed<T> value),
    @required Result noInternetConnection(_NoInternetConnection<T> value),
    @required
        Result failedDomainVerification(_FailedDomainVerification<T> value),
    @required Result sessionExpired(_SessionExpired<T> value),
    @required Result noCachedUser(_NoCachedUser<T> value),
    @required Result cacheFailure(_CacheFailure<T> value),
  }) {
    assert(notAuthenticated != null);
    assert(operationFailed != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    assert(sessionExpired != null);
    assert(noCachedUser != null);
    assert(cacheFailure != null);
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated<T> value),
    Result operationFailed(_OperationFailed<T> value),
    Result noInternetConnection(_NoInternetConnection<T> value),
    Result failedDomainVerification(_FailedDomainVerification<T> value),
    Result sessionExpired(_SessionExpired<T> value),
    Result noCachedUser(_NoCachedUser<T> value),
    Result cacheFailure(_CacheFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class _CacheFailure<T> implements AuthFailure<T> {
  const factory _CacheFailure({@required T failedValue}) = _$_CacheFailure<T>;

  T get failedValue;
  _$CacheFailureCopyWith<T, _CacheFailure<T>> get copyWith;
}
