// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'admin_features_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AdminFeaturesExceptionTearOff {
  const _$AdminFeaturesExceptionTearOff();

// ignore: unused_element
  _NotAuthenticated notAuthenticated() {
    return const _NotAuthenticated();
  }

// ignore: unused_element
  _NotEnoughPermissions notEnoughPermissions() {
    return const _NotEnoughPermissions();
  }

// ignore: unused_element
  _OperationFailed operationFailed({@required String failedValue}) {
    return _OperationFailed(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $AdminFeaturesException = _$AdminFeaturesExceptionTearOff();

mixin _$AdminFeaturesException {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result notEnoughPermissions(),
    @required Result operationFailed(String failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result notEnoughPermissions(),
    Result operationFailed(String failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result notEnoughPermissions(_NotEnoughPermissions value),
    @required Result operationFailed(_OperationFailed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated value),
    Result notEnoughPermissions(_NotEnoughPermissions value),
    Result operationFailed(_OperationFailed value),
    @required Result orElse(),
  });
}

abstract class $AdminFeaturesExceptionCopyWith<$Res> {
  factory $AdminFeaturesExceptionCopyWith(AdminFeaturesException value,
          $Res Function(AdminFeaturesException) then) =
      _$AdminFeaturesExceptionCopyWithImpl<$Res>;
}

class _$AdminFeaturesExceptionCopyWithImpl<$Res>
    implements $AdminFeaturesExceptionCopyWith<$Res> {
  _$AdminFeaturesExceptionCopyWithImpl(this._value, this._then);

  final AdminFeaturesException _value;
  // ignore: unused_field
  final $Res Function(AdminFeaturesException) _then;
}

abstract class _$NotAuthenticatedCopyWith<$Res> {
  factory _$NotAuthenticatedCopyWith(
          _NotAuthenticated value, $Res Function(_NotAuthenticated) then) =
      __$NotAuthenticatedCopyWithImpl<$Res>;
}

class __$NotAuthenticatedCopyWithImpl<$Res>
    extends _$AdminFeaturesExceptionCopyWithImpl<$Res>
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
    return 'AdminFeaturesException.notAuthenticated()';
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
    @required Result notEnoughPermissions(),
    @required Result operationFailed(String failedValue),
  }) {
    assert(notAuthenticated != null);
    assert(notEnoughPermissions != null);
    assert(operationFailed != null);
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result notEnoughPermissions(),
    Result operationFailed(String failedValue),
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
    @required Result notEnoughPermissions(_NotEnoughPermissions value),
    @required Result operationFailed(_OperationFailed value),
  }) {
    assert(notAuthenticated != null);
    assert(notEnoughPermissions != null);
    assert(operationFailed != null);
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated value),
    Result notEnoughPermissions(_NotEnoughPermissions value),
    Result operationFailed(_OperationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticated implements AdminFeaturesException {
  const factory _NotAuthenticated() = _$_NotAuthenticated;
}

abstract class _$NotEnoughPermissionsCopyWith<$Res> {
  factory _$NotEnoughPermissionsCopyWith(_NotEnoughPermissions value,
          $Res Function(_NotEnoughPermissions) then) =
      __$NotEnoughPermissionsCopyWithImpl<$Res>;
}

class __$NotEnoughPermissionsCopyWithImpl<$Res>
    extends _$AdminFeaturesExceptionCopyWithImpl<$Res>
    implements _$NotEnoughPermissionsCopyWith<$Res> {
  __$NotEnoughPermissionsCopyWithImpl(
      _NotEnoughPermissions _value, $Res Function(_NotEnoughPermissions) _then)
      : super(_value, (v) => _then(v as _NotEnoughPermissions));

  @override
  _NotEnoughPermissions get _value => super._value as _NotEnoughPermissions;
}

class _$_NotEnoughPermissions implements _NotEnoughPermissions {
  const _$_NotEnoughPermissions();

  @override
  String toString() {
    return 'AdminFeaturesException.notEnoughPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotEnoughPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result notEnoughPermissions(),
    @required Result operationFailed(String failedValue),
  }) {
    assert(notAuthenticated != null);
    assert(notEnoughPermissions != null);
    assert(operationFailed != null);
    return notEnoughPermissions();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result notEnoughPermissions(),
    Result operationFailed(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notEnoughPermissions != null) {
      return notEnoughPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result notEnoughPermissions(_NotEnoughPermissions value),
    @required Result operationFailed(_OperationFailed value),
  }) {
    assert(notAuthenticated != null);
    assert(notEnoughPermissions != null);
    assert(operationFailed != null);
    return notEnoughPermissions(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated value),
    Result notEnoughPermissions(_NotEnoughPermissions value),
    Result operationFailed(_OperationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notEnoughPermissions != null) {
      return notEnoughPermissions(this);
    }
    return orElse();
  }
}

abstract class _NotEnoughPermissions implements AdminFeaturesException {
  const factory _NotEnoughPermissions() = _$_NotEnoughPermissions;
}

abstract class _$OperationFailedCopyWith<$Res> {
  factory _$OperationFailedCopyWith(
          _OperationFailed value, $Res Function(_OperationFailed) then) =
      __$OperationFailedCopyWithImpl<$Res>;
  $Res call({String failedValue});
}

class __$OperationFailedCopyWithImpl<$Res>
    extends _$AdminFeaturesExceptionCopyWithImpl<$Res>
    implements _$OperationFailedCopyWith<$Res> {
  __$OperationFailedCopyWithImpl(
      _OperationFailed _value, $Res Function(_OperationFailed) _then)
      : super(_value, (v) => _then(v as _OperationFailed));

  @override
  _OperationFailed get _value => super._value as _OperationFailed;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_OperationFailed(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$_OperationFailed implements _OperationFailed {
  const _$_OperationFailed({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AdminFeaturesException.operationFailed(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OperationFailed &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$OperationFailedCopyWith<_OperationFailed> get copyWith =>
      __$OperationFailedCopyWithImpl<_OperationFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notAuthenticated(),
    @required Result notEnoughPermissions(),
    @required Result operationFailed(String failedValue),
  }) {
    assert(notAuthenticated != null);
    assert(notEnoughPermissions != null);
    assert(operationFailed != null);
    return operationFailed(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notAuthenticated(),
    Result notEnoughPermissions(),
    Result operationFailed(String failedValue),
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
    @required Result notAuthenticated(_NotAuthenticated value),
    @required Result notEnoughPermissions(_NotEnoughPermissions value),
    @required Result operationFailed(_OperationFailed value),
  }) {
    assert(notAuthenticated != null);
    assert(notEnoughPermissions != null);
    assert(operationFailed != null);
    return operationFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notAuthenticated(_NotAuthenticated value),
    Result notEnoughPermissions(_NotEnoughPermissions value),
    Result operationFailed(_OperationFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (operationFailed != null) {
      return operationFailed(this);
    }
    return orElse();
  }
}

abstract class _OperationFailed implements AdminFeaturesException {
  const factory _OperationFailed({@required String failedValue}) =
      _$_OperationFailed;

  String get failedValue;
  _$OperationFailedCopyWith<_OperationFailed> get copyWith;
}
