// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  _ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return _ShortPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _InvalidUsername<T> invalidUsername<T>({@required T failedValue}) {
    return _InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _InvalidPermissionLevel<T> invalidPermissionLevel<T>(
      {@required T failedValue}) {
    return _InvalidPermissionLevel<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result invalidPermissionLevel(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result invalidPermissionLevel(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidUsername(_InvalidUsername<T> value),
    @required Result invalidPermissionLevel(_InvalidPermissionLevel<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortPassword(_ShortPassword<T> value),
    Result invalidUsername(_InvalidUsername<T> value),
    Result invalidPermissionLevel(_InvalidPermissionLevel<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

abstract class _$ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword<T> value, $Res Function(_ShortPassword<T>) then) =
      __$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class __$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword<T> _value, $Res Function(_ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _ShortPassword<T>));

  @override
  _ShortPassword<T> get _value => super._value as _ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$_ShortPassword<T> implements _ShortPassword<T> {
  const _$_ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      __$ShortPasswordCopyWithImpl<T, _ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result invalidPermissionLevel(T failedValue),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result invalidPermissionLevel(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidUsername(_InvalidUsername<T> value),
    @required Result invalidPermissionLevel(_InvalidPermissionLevel<T> value),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortPassword(_ShortPassword<T> value),
    Result invalidUsername(_InvalidUsername<T> value),
    Result invalidPermissionLevel(_InvalidPermissionLevel<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailure<T> {
  const factory _ShortPassword({@required T failedValue}) = _$_ShortPassword<T>;

  @override
  T get failedValue;
  @override
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith;
}

abstract class _$InvalidUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidUsernameCopyWith(
          _InvalidUsername<T> value, $Res Function(_InvalidUsername<T>) then) =
      __$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class __$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidUsernameCopyWith<T, $Res> {
  __$InvalidUsernameCopyWithImpl(
      _InvalidUsername<T> _value, $Res Function(_InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as _InvalidUsername<T>));

  @override
  _InvalidUsername<T> get _value => super._value as _InvalidUsername<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidUsername<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$_InvalidUsername<T> implements _InvalidUsername<T> {
  const _$_InvalidUsername({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidUsernameCopyWith<T, _InvalidUsername<T>> get copyWith =>
      __$InvalidUsernameCopyWithImpl<T, _InvalidUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result invalidPermissionLevel(T failedValue),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result invalidPermissionLevel(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidUsername(_InvalidUsername<T> value),
    @required Result invalidPermissionLevel(_InvalidPermissionLevel<T> value),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortPassword(_ShortPassword<T> value),
    Result invalidUsername(_InvalidUsername<T> value),
    Result invalidPermissionLevel(_InvalidPermissionLevel<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class _InvalidUsername<T> implements ValueFailure<T> {
  const factory _InvalidUsername({@required T failedValue}) =
      _$_InvalidUsername<T>;

  @override
  T get failedValue;
  @override
  _$InvalidUsernameCopyWith<T, _InvalidUsername<T>> get copyWith;
}

abstract class _$InvalidPermissionLevelCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidPermissionLevelCopyWith(_InvalidPermissionLevel<T> value,
          $Res Function(_InvalidPermissionLevel<T>) then) =
      __$InvalidPermissionLevelCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class __$InvalidPermissionLevelCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidPermissionLevelCopyWith<T, $Res> {
  __$InvalidPermissionLevelCopyWithImpl(_InvalidPermissionLevel<T> _value,
      $Res Function(_InvalidPermissionLevel<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPermissionLevel<T>));

  @override
  _InvalidPermissionLevel<T> get _value =>
      super._value as _InvalidPermissionLevel<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidPermissionLevel<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$_InvalidPermissionLevel<T> implements _InvalidPermissionLevel<T> {
  const _$_InvalidPermissionLevel({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPermissionLevel(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPermissionLevel<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidPermissionLevelCopyWith<T, _InvalidPermissionLevel<T>>
      get copyWith =>
          __$InvalidPermissionLevelCopyWithImpl<T, _InvalidPermissionLevel<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result invalidPermissionLevel(T failedValue),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    return invalidPermissionLevel(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result invalidPermissionLevel(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPermissionLevel != null) {
      return invalidPermissionLevel(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidUsername(_InvalidUsername<T> value),
    @required Result invalidPermissionLevel(_InvalidPermissionLevel<T> value),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    return invalidPermissionLevel(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortPassword(_ShortPassword<T> value),
    Result invalidUsername(_InvalidUsername<T> value),
    Result invalidPermissionLevel(_InvalidPermissionLevel<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPermissionLevel != null) {
      return invalidPermissionLevel(this);
    }
    return orElse();
  }
}

abstract class _InvalidPermissionLevel<T> implements ValueFailure<T> {
  const factory _InvalidPermissionLevel({@required T failedValue}) =
      _$_InvalidPermissionLevel<T>;

  @override
  T get failedValue;
  @override
  _$InvalidPermissionLevelCopyWith<T, _InvalidPermissionLevel<T>> get copyWith;
}

class _$TransformationFailureTearOff {
  const _$TransformationFailureTearOff();

// ignore: unused_element
  _InvalidStringToInt<T> invalidStringToInt<T>({@required T failedValue}) {
    return _InvalidStringToInt<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  _TransformationFailed<T> transformationFailed<T>({@required T failedValue}) {
    return _TransformationFailed<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $TransformationFailure = _$TransformationFailureTearOff();

mixin _$TransformationFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidStringToInt(T failedValue),
    @required Result transformationFailed(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidStringToInt(T failedValue),
    Result transformationFailed(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidStringToInt(_InvalidStringToInt<T> value),
    @required Result transformationFailed(_TransformationFailed<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidStringToInt(_InvalidStringToInt<T> value),
    Result transformationFailed(_TransformationFailed<T> value),
    @required Result orElse(),
  });

  $TransformationFailureCopyWith<T, TransformationFailure<T>> get copyWith;
}

abstract class $TransformationFailureCopyWith<T, $Res> {
  factory $TransformationFailureCopyWith(TransformationFailure<T> value,
          $Res Function(TransformationFailure<T>) then) =
      _$TransformationFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$TransformationFailureCopyWithImpl<T, $Res>
    implements $TransformationFailureCopyWith<T, $Res> {
  _$TransformationFailureCopyWithImpl(this._value, this._then);

  final TransformationFailure<T> _value;
  // ignore: unused_field
  final $Res Function(TransformationFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

abstract class _$InvalidStringToIntCopyWith<T, $Res>
    implements $TransformationFailureCopyWith<T, $Res> {
  factory _$InvalidStringToIntCopyWith(_InvalidStringToInt<T> value,
          $Res Function(_InvalidStringToInt<T>) then) =
      __$InvalidStringToIntCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class __$InvalidStringToIntCopyWithImpl<T, $Res>
    extends _$TransformationFailureCopyWithImpl<T, $Res>
    implements _$InvalidStringToIntCopyWith<T, $Res> {
  __$InvalidStringToIntCopyWithImpl(_InvalidStringToInt<T> _value,
      $Res Function(_InvalidStringToInt<T>) _then)
      : super(_value, (v) => _then(v as _InvalidStringToInt<T>));

  @override
  _InvalidStringToInt<T> get _value => super._value as _InvalidStringToInt<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidStringToInt<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$_InvalidStringToInt<T> implements _InvalidStringToInt<T> {
  const _$_InvalidStringToInt({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'TransformationFailure<$T>.invalidStringToInt(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidStringToInt<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidStringToIntCopyWith<T, _InvalidStringToInt<T>> get copyWith =>
      __$InvalidStringToIntCopyWithImpl<T, _InvalidStringToInt<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidStringToInt(T failedValue),
    @required Result transformationFailed(T failedValue),
  }) {
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return invalidStringToInt(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidStringToInt(T failedValue),
    Result transformationFailed(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidStringToInt != null) {
      return invalidStringToInt(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidStringToInt(_InvalidStringToInt<T> value),
    @required Result transformationFailed(_TransformationFailed<T> value),
  }) {
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return invalidStringToInt(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidStringToInt(_InvalidStringToInt<T> value),
    Result transformationFailed(_TransformationFailed<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidStringToInt != null) {
      return invalidStringToInt(this);
    }
    return orElse();
  }
}

abstract class _InvalidStringToInt<T> implements TransformationFailure<T> {
  const factory _InvalidStringToInt({@required T failedValue}) =
      _$_InvalidStringToInt<T>;

  @override
  T get failedValue;
  @override
  _$InvalidStringToIntCopyWith<T, _InvalidStringToInt<T>> get copyWith;
}

abstract class _$TransformationFailedCopyWith<T, $Res>
    implements $TransformationFailureCopyWith<T, $Res> {
  factory _$TransformationFailedCopyWith(_TransformationFailed<T> value,
          $Res Function(_TransformationFailed<T>) then) =
      __$TransformationFailedCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class __$TransformationFailedCopyWithImpl<T, $Res>
    extends _$TransformationFailureCopyWithImpl<T, $Res>
    implements _$TransformationFailedCopyWith<T, $Res> {
  __$TransformationFailedCopyWithImpl(_TransformationFailed<T> _value,
      $Res Function(_TransformationFailed<T>) _then)
      : super(_value, (v) => _then(v as _TransformationFailed<T>));

  @override
  _TransformationFailed<T> get _value =>
      super._value as _TransformationFailed<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_TransformationFailed<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$_TransformationFailed<T> implements _TransformationFailed<T> {
  const _$_TransformationFailed({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'TransformationFailure<$T>.transformationFailed(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransformationFailed<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$TransformationFailedCopyWith<T, _TransformationFailed<T>> get copyWith =>
      __$TransformationFailedCopyWithImpl<T, _TransformationFailed<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidStringToInt(T failedValue),
    @required Result transformationFailed(T failedValue),
  }) {
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return transformationFailed(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidStringToInt(T failedValue),
    Result transformationFailed(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (transformationFailed != null) {
      return transformationFailed(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidStringToInt(_InvalidStringToInt<T> value),
    @required Result transformationFailed(_TransformationFailed<T> value),
  }) {
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return transformationFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidStringToInt(_InvalidStringToInt<T> value),
    Result transformationFailed(_TransformationFailed<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (transformationFailed != null) {
      return transformationFailed(this);
    }
    return orElse();
  }
}

abstract class _TransformationFailed<T> implements TransformationFailure<T> {
  const factory _TransformationFailed({@required T failedValue}) =
      _$_TransformationFailed<T>;

  @override
  T get failedValue;
  @override
  _$TransformationFailedCopyWith<T, _TransformationFailed<T>> get copyWith;
}
