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
  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidUsername<T> invalidUsername<T>({@required T failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidPermissionLevel<T> invalidPermissionLevel<T>(
      {@required T failedValue}) {
    return InvalidPermissionLevel<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidStringToInt<T> invalidStringToInt<T>({@required T failedValue}) {
    return InvalidStringToInt<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  TransformationFailed<T> transformationFailed<T>({@required T failedValue}) {
    return TransformationFailed<T>(
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
    @required Result invalidStringToInt(T failedValue),
    @required Result transformationFailed(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result invalidPermissionLevel(T failedValue),
    Result invalidStringToInt(T failedValue),
    Result transformationFailed(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    @required Result invalidStringToInt(InvalidStringToInt<T> value),
    @required Result transformationFailed(TransformationFailed<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortPassword(ShortPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    Result invalidStringToInt(InvalidStringToInt<T> value),
    Result transformationFailed(TransformationFailed<T> value),
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

abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
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
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result invalidPermissionLevel(T failedValue),
    @required Result invalidStringToInt(T failedValue),
    @required Result transformationFailed(T failedValue),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result invalidPermissionLevel(T failedValue),
    Result invalidStringToInt(T failedValue),
    Result transformationFailed(T failedValue),
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
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    @required Result invalidStringToInt(InvalidStringToInt<T> value),
    @required Result transformationFailed(TransformationFailed<T> value),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortPassword(ShortPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    Result invalidStringToInt(InvalidStringToInt<T> value),
    Result transformationFailed(TransformationFailed<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

abstract class $InvalidUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername<T> _value, $Res Function(InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsername<T>));

  @override
  InvalidUsername<T> get _value => super._value as InvalidUsername<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidUsername<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidUsername<T> implements InvalidUsername<T> {
  const _$InvalidUsername({@required this.failedValue})
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
        (other is InvalidUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result invalidPermissionLevel(T failedValue),
    @required Result invalidStringToInt(T failedValue),
    @required Result transformationFailed(T failedValue),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result invalidPermissionLevel(T failedValue),
    Result invalidStringToInt(T failedValue),
    Result transformationFailed(T failedValue),
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
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    @required Result invalidStringToInt(InvalidStringToInt<T> value),
    @required Result transformationFailed(TransformationFailed<T> value),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortPassword(ShortPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    Result invalidStringToInt(InvalidStringToInt<T> value),
    Result transformationFailed(TransformationFailed<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername<T> implements ValueFailure<T> {
  const factory InvalidUsername({@required T failedValue}) =
      _$InvalidUsername<T>;

  @override
  T get failedValue;
  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith;
}

abstract class $InvalidPermissionLevelCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPermissionLevelCopyWith(InvalidPermissionLevel<T> value,
          $Res Function(InvalidPermissionLevel<T>) then) =
      _$InvalidPermissionLevelCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidPermissionLevelCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPermissionLevelCopyWith<T, $Res> {
  _$InvalidPermissionLevelCopyWithImpl(InvalidPermissionLevel<T> _value,
      $Res Function(InvalidPermissionLevel<T>) _then)
      : super(_value, (v) => _then(v as InvalidPermissionLevel<T>));

  @override
  InvalidPermissionLevel<T> get _value =>
      super._value as InvalidPermissionLevel<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPermissionLevel<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidPermissionLevel<T> implements InvalidPermissionLevel<T> {
  const _$InvalidPermissionLevel({@required this.failedValue})
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
        (other is InvalidPermissionLevel<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPermissionLevelCopyWith<T, InvalidPermissionLevel<T>> get copyWith =>
      _$InvalidPermissionLevelCopyWithImpl<T, InvalidPermissionLevel<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result invalidPermissionLevel(T failedValue),
    @required Result invalidStringToInt(T failedValue),
    @required Result transformationFailed(T failedValue),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return invalidPermissionLevel(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result invalidPermissionLevel(T failedValue),
    Result invalidStringToInt(T failedValue),
    Result transformationFailed(T failedValue),
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
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    @required Result invalidStringToInt(InvalidStringToInt<T> value),
    @required Result transformationFailed(TransformationFailed<T> value),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return invalidPermissionLevel(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortPassword(ShortPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    Result invalidStringToInt(InvalidStringToInt<T> value),
    Result transformationFailed(TransformationFailed<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPermissionLevel != null) {
      return invalidPermissionLevel(this);
    }
    return orElse();
  }
}

abstract class InvalidPermissionLevel<T> implements ValueFailure<T> {
  const factory InvalidPermissionLevel({@required T failedValue}) =
      _$InvalidPermissionLevel<T>;

  @override
  T get failedValue;
  @override
  $InvalidPermissionLevelCopyWith<T, InvalidPermissionLevel<T>> get copyWith;
}

abstract class $InvalidStringToIntCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidStringToIntCopyWith(InvalidStringToInt<T> value,
          $Res Function(InvalidStringToInt<T>) then) =
      _$InvalidStringToIntCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidStringToIntCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidStringToIntCopyWith<T, $Res> {
  _$InvalidStringToIntCopyWithImpl(
      InvalidStringToInt<T> _value, $Res Function(InvalidStringToInt<T>) _then)
      : super(_value, (v) => _then(v as InvalidStringToInt<T>));

  @override
  InvalidStringToInt<T> get _value => super._value as InvalidStringToInt<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidStringToInt<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidStringToInt<T> implements InvalidStringToInt<T> {
  const _$InvalidStringToInt({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidStringToInt(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidStringToInt<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidStringToIntCopyWith<T, InvalidStringToInt<T>> get copyWith =>
      _$InvalidStringToIntCopyWithImpl<T, InvalidStringToInt<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result invalidPermissionLevel(T failedValue),
    @required Result invalidStringToInt(T failedValue),
    @required Result transformationFailed(T failedValue),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return invalidStringToInt(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result invalidPermissionLevel(T failedValue),
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
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    @required Result invalidStringToInt(InvalidStringToInt<T> value),
    @required Result transformationFailed(TransformationFailed<T> value),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return invalidStringToInt(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortPassword(ShortPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    Result invalidStringToInt(InvalidStringToInt<T> value),
    Result transformationFailed(TransformationFailed<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidStringToInt != null) {
      return invalidStringToInt(this);
    }
    return orElse();
  }
}

abstract class InvalidStringToInt<T> implements ValueFailure<T> {
  const factory InvalidStringToInt({@required T failedValue}) =
      _$InvalidStringToInt<T>;

  @override
  T get failedValue;
  @override
  $InvalidStringToIntCopyWith<T, InvalidStringToInt<T>> get copyWith;
}

abstract class $TransformationFailedCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $TransformationFailedCopyWith(TransformationFailed<T> value,
          $Res Function(TransformationFailed<T>) then) =
      _$TransformationFailedCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$TransformationFailedCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $TransformationFailedCopyWith<T, $Res> {
  _$TransformationFailedCopyWithImpl(TransformationFailed<T> _value,
      $Res Function(TransformationFailed<T>) _then)
      : super(_value, (v) => _then(v as TransformationFailed<T>));

  @override
  TransformationFailed<T> get _value => super._value as TransformationFailed<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(TransformationFailed<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$TransformationFailed<T> implements TransformationFailed<T> {
  const _$TransformationFailed({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.transformationFailed(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransformationFailed<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $TransformationFailedCopyWith<T, TransformationFailed<T>> get copyWith =>
      _$TransformationFailedCopyWithImpl<T, TransformationFailed<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result invalidPermissionLevel(T failedValue),
    @required Result invalidStringToInt(T failedValue),
    @required Result transformationFailed(T failedValue),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return transformationFailed(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result invalidPermissionLevel(T failedValue),
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
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    @required Result invalidStringToInt(InvalidStringToInt<T> value),
    @required Result transformationFailed(TransformationFailed<T> value),
  }) {
    assert(shortPassword != null);
    assert(invalidUsername != null);
    assert(invalidPermissionLevel != null);
    assert(invalidStringToInt != null);
    assert(transformationFailed != null);
    return transformationFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortPassword(ShortPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidPermissionLevel(InvalidPermissionLevel<T> value),
    Result invalidStringToInt(InvalidStringToInt<T> value),
    Result transformationFailed(TransformationFailed<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (transformationFailed != null) {
      return transformationFailed(this);
    }
    return orElse();
  }
}

abstract class TransformationFailed<T> implements ValueFailure<T> {
  const factory TransformationFailed({@required T failedValue}) =
      _$TransformationFailed<T>;

  @override
  T get failedValue;
  @override
  $TransformationFailedCopyWith<T, TransformationFailed<T>> get copyWith;
}
