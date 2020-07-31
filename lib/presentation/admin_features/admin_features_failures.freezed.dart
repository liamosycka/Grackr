// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'admin_features_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$Admin_Features_FailureTearOff {
  const _$Admin_Features_FailureTearOff();

// ignore: unused_element
  InvalidName invalidName({@required String failedValue}) {
    return InvalidName(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidSurname invalidSurname({@required String failedValue}) {
    return InvalidSurname(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidEmployeeID invalidEmployeeID({@required String failedValue}) {
    return InvalidEmployeeID(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  FailedDomainVerification failedDomainVerification() {
    return const FailedDomainVerification();
  }

// ignore: unused_element
  NoInternetConnection noInternetConnection() {
    return const NoInternetConnection();
  }

// ignore: unused_element
  FailedToCreateUser failedToCreateUser({@required String failedValue}) {
    return FailedToCreateUser(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $Admin_Features_Failure = _$Admin_Features_FailureTearOff();

mixin _$Admin_Features_Failure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidName(String failedValue),
    @required Result invalidSurname(String failedValue),
    @required Result invalidEmployeeID(String failedValue),
    @required Result failedDomainVerification(),
    @required Result noInternetConnection(),
    @required Result failedToCreateUser(String failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidName(String failedValue),
    Result invalidSurname(String failedValue),
    Result invalidEmployeeID(String failedValue),
    Result failedDomainVerification(),
    Result noInternetConnection(),
    Result failedToCreateUser(String failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidName(InvalidName value),
    @required Result invalidSurname(InvalidSurname value),
    @required Result invalidEmployeeID(InvalidEmployeeID value),
    @required Result failedDomainVerification(FailedDomainVerification value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedToCreateUser(FailedToCreateUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidName(InvalidName value),
    Result invalidSurname(InvalidSurname value),
    Result invalidEmployeeID(InvalidEmployeeID value),
    Result failedDomainVerification(FailedDomainVerification value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedToCreateUser(FailedToCreateUser value),
    @required Result orElse(),
  });
}

abstract class $Admin_Features_FailureCopyWith<$Res> {
  factory $Admin_Features_FailureCopyWith(Admin_Features_Failure value,
          $Res Function(Admin_Features_Failure) then) =
      _$Admin_Features_FailureCopyWithImpl<$Res>;
}

class _$Admin_Features_FailureCopyWithImpl<$Res>
    implements $Admin_Features_FailureCopyWith<$Res> {
  _$Admin_Features_FailureCopyWithImpl(this._value, this._then);

  final Admin_Features_Failure _value;
  // ignore: unused_field
  final $Res Function(Admin_Features_Failure) _then;
}

abstract class $InvalidNameCopyWith<$Res> {
  factory $InvalidNameCopyWith(
          InvalidName value, $Res Function(InvalidName) then) =
      _$InvalidNameCopyWithImpl<$Res>;
  $Res call({String failedValue});
}

class _$InvalidNameCopyWithImpl<$Res>
    extends _$Admin_Features_FailureCopyWithImpl<$Res>
    implements $InvalidNameCopyWith<$Res> {
  _$InvalidNameCopyWithImpl(
      InvalidName _value, $Res Function(InvalidName) _then)
      : super(_value, (v) => _then(v as InvalidName));

  @override
  InvalidName get _value => super._value as InvalidName;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidName(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidName with DiagnosticableTreeMixin implements InvalidName {
  const _$InvalidName({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Admin_Features_Failure.invalidName(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Admin_Features_Failure.invalidName'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidName &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidNameCopyWith<InvalidName> get copyWith =>
      _$InvalidNameCopyWithImpl<InvalidName>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidName(String failedValue),
    @required Result invalidSurname(String failedValue),
    @required Result invalidEmployeeID(String failedValue),
    @required Result failedDomainVerification(),
    @required Result noInternetConnection(),
    @required Result failedToCreateUser(String failedValue),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return invalidName(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidName(String failedValue),
    Result invalidSurname(String failedValue),
    Result invalidEmployeeID(String failedValue),
    Result failedDomainVerification(),
    Result noInternetConnection(),
    Result failedToCreateUser(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidName != null) {
      return invalidName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidName(InvalidName value),
    @required Result invalidSurname(InvalidSurname value),
    @required Result invalidEmployeeID(InvalidEmployeeID value),
    @required Result failedDomainVerification(FailedDomainVerification value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedToCreateUser(FailedToCreateUser value),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return invalidName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidName(InvalidName value),
    Result invalidSurname(InvalidSurname value),
    Result invalidEmployeeID(InvalidEmployeeID value),
    Result failedDomainVerification(FailedDomainVerification value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedToCreateUser(FailedToCreateUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidName != null) {
      return invalidName(this);
    }
    return orElse();
  }
}

abstract class InvalidName implements Admin_Features_Failure {
  const factory InvalidName({@required String failedValue}) = _$InvalidName;

  String get failedValue;
  $InvalidNameCopyWith<InvalidName> get copyWith;
}

abstract class $InvalidSurnameCopyWith<$Res> {
  factory $InvalidSurnameCopyWith(
          InvalidSurname value, $Res Function(InvalidSurname) then) =
      _$InvalidSurnameCopyWithImpl<$Res>;
  $Res call({String failedValue});
}

class _$InvalidSurnameCopyWithImpl<$Res>
    extends _$Admin_Features_FailureCopyWithImpl<$Res>
    implements $InvalidSurnameCopyWith<$Res> {
  _$InvalidSurnameCopyWithImpl(
      InvalidSurname _value, $Res Function(InvalidSurname) _then)
      : super(_value, (v) => _then(v as InvalidSurname));

  @override
  InvalidSurname get _value => super._value as InvalidSurname;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidSurname(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidSurname with DiagnosticableTreeMixin implements InvalidSurname {
  const _$InvalidSurname({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Admin_Features_Failure.invalidSurname(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'Admin_Features_Failure.invalidSurname'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidSurname &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidSurnameCopyWith<InvalidSurname> get copyWith =>
      _$InvalidSurnameCopyWithImpl<InvalidSurname>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidName(String failedValue),
    @required Result invalidSurname(String failedValue),
    @required Result invalidEmployeeID(String failedValue),
    @required Result failedDomainVerification(),
    @required Result noInternetConnection(),
    @required Result failedToCreateUser(String failedValue),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return invalidSurname(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidName(String failedValue),
    Result invalidSurname(String failedValue),
    Result invalidEmployeeID(String failedValue),
    Result failedDomainVerification(),
    Result noInternetConnection(),
    Result failedToCreateUser(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidSurname != null) {
      return invalidSurname(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidName(InvalidName value),
    @required Result invalidSurname(InvalidSurname value),
    @required Result invalidEmployeeID(InvalidEmployeeID value),
    @required Result failedDomainVerification(FailedDomainVerification value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedToCreateUser(FailedToCreateUser value),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return invalidSurname(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidName(InvalidName value),
    Result invalidSurname(InvalidSurname value),
    Result invalidEmployeeID(InvalidEmployeeID value),
    Result failedDomainVerification(FailedDomainVerification value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedToCreateUser(FailedToCreateUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidSurname != null) {
      return invalidSurname(this);
    }
    return orElse();
  }
}

abstract class InvalidSurname implements Admin_Features_Failure {
  const factory InvalidSurname({@required String failedValue}) =
      _$InvalidSurname;

  String get failedValue;
  $InvalidSurnameCopyWith<InvalidSurname> get copyWith;
}

abstract class $InvalidEmployeeIDCopyWith<$Res> {
  factory $InvalidEmployeeIDCopyWith(
          InvalidEmployeeID value, $Res Function(InvalidEmployeeID) then) =
      _$InvalidEmployeeIDCopyWithImpl<$Res>;
  $Res call({String failedValue});
}

class _$InvalidEmployeeIDCopyWithImpl<$Res>
    extends _$Admin_Features_FailureCopyWithImpl<$Res>
    implements $InvalidEmployeeIDCopyWith<$Res> {
  _$InvalidEmployeeIDCopyWithImpl(
      InvalidEmployeeID _value, $Res Function(InvalidEmployeeID) _then)
      : super(_value, (v) => _then(v as InvalidEmployeeID));

  @override
  InvalidEmployeeID get _value => super._value as InvalidEmployeeID;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmployeeID(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidEmployeeID
    with DiagnosticableTreeMixin
    implements InvalidEmployeeID {
  const _$InvalidEmployeeID({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Admin_Features_Failure.invalidEmployeeID(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'Admin_Features_Failure.invalidEmployeeID'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmployeeID &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmployeeIDCopyWith<InvalidEmployeeID> get copyWith =>
      _$InvalidEmployeeIDCopyWithImpl<InvalidEmployeeID>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidName(String failedValue),
    @required Result invalidSurname(String failedValue),
    @required Result invalidEmployeeID(String failedValue),
    @required Result failedDomainVerification(),
    @required Result noInternetConnection(),
    @required Result failedToCreateUser(String failedValue),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return invalidEmployeeID(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidName(String failedValue),
    Result invalidSurname(String failedValue),
    Result invalidEmployeeID(String failedValue),
    Result failedDomainVerification(),
    Result noInternetConnection(),
    Result failedToCreateUser(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmployeeID != null) {
      return invalidEmployeeID(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidName(InvalidName value),
    @required Result invalidSurname(InvalidSurname value),
    @required Result invalidEmployeeID(InvalidEmployeeID value),
    @required Result failedDomainVerification(FailedDomainVerification value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedToCreateUser(FailedToCreateUser value),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return invalidEmployeeID(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidName(InvalidName value),
    Result invalidSurname(InvalidSurname value),
    Result invalidEmployeeID(InvalidEmployeeID value),
    Result failedDomainVerification(FailedDomainVerification value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedToCreateUser(FailedToCreateUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmployeeID != null) {
      return invalidEmployeeID(this);
    }
    return orElse();
  }
}

abstract class InvalidEmployeeID implements Admin_Features_Failure {
  const factory InvalidEmployeeID({@required String failedValue}) =
      _$InvalidEmployeeID;

  String get failedValue;
  $InvalidEmployeeIDCopyWith<InvalidEmployeeID> get copyWith;
}

abstract class $FailedDomainVerificationCopyWith<$Res> {
  factory $FailedDomainVerificationCopyWith(FailedDomainVerification value,
          $Res Function(FailedDomainVerification) then) =
      _$FailedDomainVerificationCopyWithImpl<$Res>;
}

class _$FailedDomainVerificationCopyWithImpl<$Res>
    extends _$Admin_Features_FailureCopyWithImpl<$Res>
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
    return 'Admin_Features_Failure.failedDomainVerification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'Admin_Features_Failure.failedDomainVerification'));
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
    @required Result invalidName(String failedValue),
    @required Result invalidSurname(String failedValue),
    @required Result invalidEmployeeID(String failedValue),
    @required Result failedDomainVerification(),
    @required Result noInternetConnection(),
    @required Result failedToCreateUser(String failedValue),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return failedDomainVerification();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidName(String failedValue),
    Result invalidSurname(String failedValue),
    Result invalidEmployeeID(String failedValue),
    Result failedDomainVerification(),
    Result noInternetConnection(),
    Result failedToCreateUser(String failedValue),
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
    @required Result invalidName(InvalidName value),
    @required Result invalidSurname(InvalidSurname value),
    @required Result invalidEmployeeID(InvalidEmployeeID value),
    @required Result failedDomainVerification(FailedDomainVerification value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedToCreateUser(FailedToCreateUser value),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return failedDomainVerification(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidName(InvalidName value),
    Result invalidSurname(InvalidSurname value),
    Result invalidEmployeeID(InvalidEmployeeID value),
    Result failedDomainVerification(FailedDomainVerification value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedToCreateUser(FailedToCreateUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedDomainVerification != null) {
      return failedDomainVerification(this);
    }
    return orElse();
  }
}

abstract class FailedDomainVerification implements Admin_Features_Failure {
  const factory FailedDomainVerification() = _$FailedDomainVerification;
}

abstract class $NoInternetConnectionCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value,
          $Res Function(NoInternetConnection) then) =
      _$NoInternetConnectionCopyWithImpl<$Res>;
}

class _$NoInternetConnectionCopyWithImpl<$Res>
    extends _$Admin_Features_FailureCopyWithImpl<$Res>
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
    return 'Admin_Features_Failure.noInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'Admin_Features_Failure.noInternetConnection'));
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
    @required Result invalidName(String failedValue),
    @required Result invalidSurname(String failedValue),
    @required Result invalidEmployeeID(String failedValue),
    @required Result failedDomainVerification(),
    @required Result noInternetConnection(),
    @required Result failedToCreateUser(String failedValue),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidName(String failedValue),
    Result invalidSurname(String failedValue),
    Result invalidEmployeeID(String failedValue),
    Result failedDomainVerification(),
    Result noInternetConnection(),
    Result failedToCreateUser(String failedValue),
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
    @required Result invalidName(InvalidName value),
    @required Result invalidSurname(InvalidSurname value),
    @required Result invalidEmployeeID(InvalidEmployeeID value),
    @required Result failedDomainVerification(FailedDomainVerification value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedToCreateUser(FailedToCreateUser value),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidName(InvalidName value),
    Result invalidSurname(InvalidSurname value),
    Result invalidEmployeeID(InvalidEmployeeID value),
    Result failedDomainVerification(FailedDomainVerification value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedToCreateUser(FailedToCreateUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements Admin_Features_Failure {
  const factory NoInternetConnection() = _$NoInternetConnection;
}

abstract class $FailedToCreateUserCopyWith<$Res> {
  factory $FailedToCreateUserCopyWith(
          FailedToCreateUser value, $Res Function(FailedToCreateUser) then) =
      _$FailedToCreateUserCopyWithImpl<$Res>;
  $Res call({String failedValue});
}

class _$FailedToCreateUserCopyWithImpl<$Res>
    extends _$Admin_Features_FailureCopyWithImpl<$Res>
    implements $FailedToCreateUserCopyWith<$Res> {
  _$FailedToCreateUserCopyWithImpl(
      FailedToCreateUser _value, $Res Function(FailedToCreateUser) _then)
      : super(_value, (v) => _then(v as FailedToCreateUser));

  @override
  FailedToCreateUser get _value => super._value as FailedToCreateUser;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(FailedToCreateUser(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$FailedToCreateUser
    with DiagnosticableTreeMixin
    implements FailedToCreateUser {
  const _$FailedToCreateUser({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Admin_Features_Failure.failedToCreateUser(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'Admin_Features_Failure.failedToCreateUser'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailedToCreateUser &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $FailedToCreateUserCopyWith<FailedToCreateUser> get copyWith =>
      _$FailedToCreateUserCopyWithImpl<FailedToCreateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidName(String failedValue),
    @required Result invalidSurname(String failedValue),
    @required Result invalidEmployeeID(String failedValue),
    @required Result failedDomainVerification(),
    @required Result noInternetConnection(),
    @required Result failedToCreateUser(String failedValue),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return failedToCreateUser(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidName(String failedValue),
    Result invalidSurname(String failedValue),
    Result invalidEmployeeID(String failedValue),
    Result failedDomainVerification(),
    Result noInternetConnection(),
    Result failedToCreateUser(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedToCreateUser != null) {
      return failedToCreateUser(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidName(InvalidName value),
    @required Result invalidSurname(InvalidSurname value),
    @required Result invalidEmployeeID(InvalidEmployeeID value),
    @required Result failedDomainVerification(FailedDomainVerification value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result failedToCreateUser(FailedToCreateUser value),
  }) {
    assert(invalidName != null);
    assert(invalidSurname != null);
    assert(invalidEmployeeID != null);
    assert(failedDomainVerification != null);
    assert(noInternetConnection != null);
    assert(failedToCreateUser != null);
    return failedToCreateUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidName(InvalidName value),
    Result invalidSurname(InvalidSurname value),
    Result invalidEmployeeID(InvalidEmployeeID value),
    Result failedDomainVerification(FailedDomainVerification value),
    Result noInternetConnection(NoInternetConnection value),
    Result failedToCreateUser(FailedToCreateUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedToCreateUser != null) {
      return failedToCreateUser(this);
    }
    return orElse();
  }
}

abstract class FailedToCreateUser implements Admin_Features_Failure {
  const factory FailedToCreateUser({@required String failedValue}) =
      _$FailedToCreateUser;

  String get failedValue;
  $FailedToCreateUserCopyWith<FailedToCreateUser> get copyWith;
}
