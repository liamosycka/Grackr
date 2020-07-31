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
  NoUserFoundInDB noUserFoundInDB({@required String failedValue}) {
    return NoUserFoundInDB(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NoCachedUser noCachedUser() {
    return const NoCachedUser();
  }

// ignore: unused_element
  NoPasswordMatch noPasswordMatch() {
    return const NoPasswordMatch();
  }

// ignore: unused_element
  NoInternetConnection noInternetConnection() {
    return const NoInternetConnection();
  }

// ignore: unused_element
  FailedDomainVerification failedDomainVerification() {
    return const FailedDomainVerification();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noUserFoundInDB(String failedValue),
    @required Result noCachedUser(),
    @required Result noPasswordMatch(),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noUserFoundInDB(String failedValue),
    Result noCachedUser(),
    Result noPasswordMatch(),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noUserFoundInDB(NoUserFoundInDB value),
    @required Result noCachedUser(NoCachedUser value),
    @required Result noPasswordMatch(NoPasswordMatch value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedDomainVerification(FailedDomainVerification value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noUserFoundInDB(NoUserFoundInDB value),
    Result noCachedUser(NoCachedUser value),
    Result noPasswordMatch(NoPasswordMatch value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedDomainVerification(FailedDomainVerification value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $NoUserFoundInDBCopyWith<$Res> {
  factory $NoUserFoundInDBCopyWith(
          NoUserFoundInDB value, $Res Function(NoUserFoundInDB) then) =
      _$NoUserFoundInDBCopyWithImpl<$Res>;
  $Res call({String failedValue});
}

class _$NoUserFoundInDBCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $NoUserFoundInDBCopyWith<$Res> {
  _$NoUserFoundInDBCopyWithImpl(
      NoUserFoundInDB _value, $Res Function(NoUserFoundInDB) _then)
      : super(_value, (v) => _then(v as NoUserFoundInDB));

  @override
  NoUserFoundInDB get _value => super._value as NoUserFoundInDB;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NoUserFoundInDB(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$NoUserFoundInDB
    with DiagnosticableTreeMixin
    implements NoUserFoundInDB {
  const _$NoUserFoundInDB({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.noUserFoundInDB(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.noUserFoundInDB'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoUserFoundInDB &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NoUserFoundInDBCopyWith<NoUserFoundInDB> get copyWith =>
      _$NoUserFoundInDBCopyWithImpl<NoUserFoundInDB>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noUserFoundInDB(String failedValue),
    @required Result noCachedUser(),
    @required Result noPasswordMatch(),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
  }) {
    assert(noUserFoundInDB != null);
    assert(noCachedUser != null);
    assert(noPasswordMatch != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    return noUserFoundInDB(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noUserFoundInDB(String failedValue),
    Result noCachedUser(),
    Result noPasswordMatch(),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noUserFoundInDB != null) {
      return noUserFoundInDB(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noUserFoundInDB(NoUserFoundInDB value),
    @required Result noCachedUser(NoCachedUser value),
    @required Result noPasswordMatch(NoPasswordMatch value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedDomainVerification(FailedDomainVerification value),
  }) {
    assert(noUserFoundInDB != null);
    assert(noCachedUser != null);
    assert(noPasswordMatch != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    return noUserFoundInDB(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noUserFoundInDB(NoUserFoundInDB value),
    Result noCachedUser(NoCachedUser value),
    Result noPasswordMatch(NoPasswordMatch value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedDomainVerification(FailedDomainVerification value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noUserFoundInDB != null) {
      return noUserFoundInDB(this);
    }
    return orElse();
  }
}

abstract class NoUserFoundInDB implements AuthFailure {
  const factory NoUserFoundInDB({@required String failedValue}) =
      _$NoUserFoundInDB;

  String get failedValue;
  $NoUserFoundInDBCopyWith<NoUserFoundInDB> get copyWith;
}

abstract class $NoCachedUserCopyWith<$Res> {
  factory $NoCachedUserCopyWith(
          NoCachedUser value, $Res Function(NoCachedUser) then) =
      _$NoCachedUserCopyWithImpl<$Res>;
}

class _$NoCachedUserCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $NoCachedUserCopyWith<$Res> {
  _$NoCachedUserCopyWithImpl(
      NoCachedUser _value, $Res Function(NoCachedUser) _then)
      : super(_value, (v) => _then(v as NoCachedUser));

  @override
  NoCachedUser get _value => super._value as NoCachedUser;
}

class _$NoCachedUser with DiagnosticableTreeMixin implements NoCachedUser {
  const _$NoCachedUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.noCachedUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.noCachedUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoCachedUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noUserFoundInDB(String failedValue),
    @required Result noCachedUser(),
    @required Result noPasswordMatch(),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
  }) {
    assert(noUserFoundInDB != null);
    assert(noCachedUser != null);
    assert(noPasswordMatch != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    return noCachedUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noUserFoundInDB(String failedValue),
    Result noCachedUser(),
    Result noPasswordMatch(),
    Result noInternetConnection(),
    Result failedDomainVerification(),
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
    @required Result noUserFoundInDB(NoUserFoundInDB value),
    @required Result noCachedUser(NoCachedUser value),
    @required Result noPasswordMatch(NoPasswordMatch value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedDomainVerification(FailedDomainVerification value),
  }) {
    assert(noUserFoundInDB != null);
    assert(noCachedUser != null);
    assert(noPasswordMatch != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    return noCachedUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noUserFoundInDB(NoUserFoundInDB value),
    Result noCachedUser(NoCachedUser value),
    Result noPasswordMatch(NoPasswordMatch value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedDomainVerification(FailedDomainVerification value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCachedUser != null) {
      return noCachedUser(this);
    }
    return orElse();
  }
}

abstract class NoCachedUser implements AuthFailure {
  const factory NoCachedUser() = _$NoCachedUser;
}

abstract class $NoPasswordMatchCopyWith<$Res> {
  factory $NoPasswordMatchCopyWith(
          NoPasswordMatch value, $Res Function(NoPasswordMatch) then) =
      _$NoPasswordMatchCopyWithImpl<$Res>;
}

class _$NoPasswordMatchCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $NoPasswordMatchCopyWith<$Res> {
  _$NoPasswordMatchCopyWithImpl(
      NoPasswordMatch _value, $Res Function(NoPasswordMatch) _then)
      : super(_value, (v) => _then(v as NoPasswordMatch));

  @override
  NoPasswordMatch get _value => super._value as NoPasswordMatch;
}

class _$NoPasswordMatch
    with DiagnosticableTreeMixin
    implements NoPasswordMatch {
  const _$NoPasswordMatch();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.noPasswordMatch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.noPasswordMatch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoPasswordMatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noUserFoundInDB(String failedValue),
    @required Result noCachedUser(),
    @required Result noPasswordMatch(),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
  }) {
    assert(noUserFoundInDB != null);
    assert(noCachedUser != null);
    assert(noPasswordMatch != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    return noPasswordMatch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noUserFoundInDB(String failedValue),
    Result noCachedUser(),
    Result noPasswordMatch(),
    Result noInternetConnection(),
    Result failedDomainVerification(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noPasswordMatch != null) {
      return noPasswordMatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noUserFoundInDB(NoUserFoundInDB value),
    @required Result noCachedUser(NoCachedUser value),
    @required Result noPasswordMatch(NoPasswordMatch value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedDomainVerification(FailedDomainVerification value),
  }) {
    assert(noUserFoundInDB != null);
    assert(noCachedUser != null);
    assert(noPasswordMatch != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    return noPasswordMatch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noUserFoundInDB(NoUserFoundInDB value),
    Result noCachedUser(NoCachedUser value),
    Result noPasswordMatch(NoPasswordMatch value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedDomainVerification(FailedDomainVerification value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noPasswordMatch != null) {
      return noPasswordMatch(this);
    }
    return orElse();
  }
}

abstract class NoPasswordMatch implements AuthFailure {
  const factory NoPasswordMatch() = _$NoPasswordMatch;
}

abstract class $NoInternetConnectionCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value,
          $Res Function(NoInternetConnection) then) =
      _$NoInternetConnectionCopyWithImpl<$Res>;
}

class _$NoInternetConnectionCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $NoInternetConnectionCopyWith<$Res> {
  _$NoInternetConnectionCopyWithImpl(
      NoInternetConnection _value, $Res Function(NoInternetConnection) _then)
      : super(_value, (v) => _then(v as NoInternetConnection));

  @override
  NoInternetConnection get _value => super._value as NoInternetConnection;
}

class _$NoInternetConnection
    with DiagnosticableTreeMixin
    implements NoInternetConnection {
  const _$NoInternetConnection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.noInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.noInternetConnection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noUserFoundInDB(String failedValue),
    @required Result noCachedUser(),
    @required Result noPasswordMatch(),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
  }) {
    assert(noUserFoundInDB != null);
    assert(noCachedUser != null);
    assert(noPasswordMatch != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noUserFoundInDB(String failedValue),
    Result noCachedUser(),
    Result noPasswordMatch(),
    Result noInternetConnection(),
    Result failedDomainVerification(),
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
    @required Result noUserFoundInDB(NoUserFoundInDB value),
    @required Result noCachedUser(NoCachedUser value),
    @required Result noPasswordMatch(NoPasswordMatch value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedDomainVerification(FailedDomainVerification value),
  }) {
    assert(noUserFoundInDB != null);
    assert(noCachedUser != null);
    assert(noPasswordMatch != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noUserFoundInDB(NoUserFoundInDB value),
    Result noCachedUser(NoCachedUser value),
    Result noPasswordMatch(NoPasswordMatch value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedDomainVerification(FailedDomainVerification value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements AuthFailure {
  const factory NoInternetConnection() = _$NoInternetConnection;
}

abstract class $FailedDomainVerificationCopyWith<$Res> {
  factory $FailedDomainVerificationCopyWith(FailedDomainVerification value,
          $Res Function(FailedDomainVerification) then) =
      _$FailedDomainVerificationCopyWithImpl<$Res>;
}

class _$FailedDomainVerificationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $FailedDomainVerificationCopyWith<$Res> {
  _$FailedDomainVerificationCopyWithImpl(FailedDomainVerification _value,
      $Res Function(FailedDomainVerification) _then)
      : super(_value, (v) => _then(v as FailedDomainVerification));

  @override
  FailedDomainVerification get _value =>
      super._value as FailedDomainVerification;
}

class _$FailedDomainVerification
    with DiagnosticableTreeMixin
    implements FailedDomainVerification {
  const _$FailedDomainVerification();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.failedDomainVerification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthFailure.failedDomainVerification'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FailedDomainVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noUserFoundInDB(String failedValue),
    @required Result noCachedUser(),
    @required Result noPasswordMatch(),
    @required Result noInternetConnection(),
    @required Result failedDomainVerification(),
  }) {
    assert(noUserFoundInDB != null);
    assert(noCachedUser != null);
    assert(noPasswordMatch != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    return failedDomainVerification();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noUserFoundInDB(String failedValue),
    Result noCachedUser(),
    Result noPasswordMatch(),
    Result noInternetConnection(),
    Result failedDomainVerification(),
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
    @required Result noUserFoundInDB(NoUserFoundInDB value),
    @required Result noCachedUser(NoCachedUser value),
    @required Result noPasswordMatch(NoPasswordMatch value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedDomainVerification(FailedDomainVerification value),
  }) {
    assert(noUserFoundInDB != null);
    assert(noCachedUser != null);
    assert(noPasswordMatch != null);
    assert(noInternetConnection != null);
    assert(failedDomainVerification != null);
    return failedDomainVerification(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noUserFoundInDB(NoUserFoundInDB value),
    Result noCachedUser(NoCachedUser value),
    Result noPasswordMatch(NoPasswordMatch value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedDomainVerification(FailedDomainVerification value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedDomainVerification != null) {
      return failedDomainVerification(this);
    }
    return orElse();
  }
}

abstract class FailedDomainVerification implements AuthFailure {
  const factory FailedDomainVerification() = _$FailedDomainVerification;
}
