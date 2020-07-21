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
  Test1<T> test1<T>({@required String failedValue}) {
    return Test1<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  Test2<T> test2<T>({@required String failedValue}) {
    return Test2<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidStringToInt<T> invalidStringToInt<T>({@required String failedValue}) {
    return InvalidStringToInt<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  String get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result test1(String failedValue),
    @required Result test2(String failedValue),
    @required Result invalidStringToInt(String failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result test1(String failedValue),
    Result test2(String failedValue),
    Result invalidStringToInt(String failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result test1(Test1<T> value),
    @required Result test2(Test2<T> value),
    @required Result invalidStringToInt(InvalidStringToInt<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result test1(Test1<T> value),
    Result test2(Test2<T> value),
    Result invalidStringToInt(InvalidStringToInt<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
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
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

abstract class $Test1CopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $Test1CopyWith(Test1<T> value, $Res Function(Test1<T>) then) =
      _$Test1CopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

class _$Test1CopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $Test1CopyWith<T, $Res> {
  _$Test1CopyWithImpl(Test1<T> _value, $Res Function(Test1<T>) _then)
      : super(_value, (v) => _then(v as Test1<T>));

  @override
  Test1<T> get _value => super._value as Test1<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Test1<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$Test1<T> with DiagnosticableTreeMixin implements Test1<T> {
  const _$Test1({@required this.failedValue}) : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.test1(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.test1'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test1<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $Test1CopyWith<T, Test1<T>> get copyWith =>
      _$Test1CopyWithImpl<T, Test1<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result test1(String failedValue),
    @required Result test2(String failedValue),
    @required Result invalidStringToInt(String failedValue),
  }) {
    assert(test1 != null);
    assert(test2 != null);
    assert(invalidStringToInt != null);
    return test1(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result test1(String failedValue),
    Result test2(String failedValue),
    Result invalidStringToInt(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (test1 != null) {
      return test1(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result test1(Test1<T> value),
    @required Result test2(Test2<T> value),
    @required Result invalidStringToInt(InvalidStringToInt<T> value),
  }) {
    assert(test1 != null);
    assert(test2 != null);
    assert(invalidStringToInt != null);
    return test1(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result test1(Test1<T> value),
    Result test2(Test2<T> value),
    Result invalidStringToInt(InvalidStringToInt<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (test1 != null) {
      return test1(this);
    }
    return orElse();
  }
}

abstract class Test1<T> implements ValueFailure<T> {
  const factory Test1({@required String failedValue}) = _$Test1<T>;

  @override
  String get failedValue;
  @override
  $Test1CopyWith<T, Test1<T>> get copyWith;
}

abstract class $Test2CopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $Test2CopyWith(Test2<T> value, $Res Function(Test2<T>) then) =
      _$Test2CopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

class _$Test2CopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $Test2CopyWith<T, $Res> {
  _$Test2CopyWithImpl(Test2<T> _value, $Res Function(Test2<T>) _then)
      : super(_value, (v) => _then(v as Test2<T>));

  @override
  Test2<T> get _value => super._value as Test2<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Test2<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$Test2<T> with DiagnosticableTreeMixin implements Test2<T> {
  const _$Test2({@required this.failedValue}) : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.test2(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.test2'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test2<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $Test2CopyWith<T, Test2<T>> get copyWith =>
      _$Test2CopyWithImpl<T, Test2<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result test1(String failedValue),
    @required Result test2(String failedValue),
    @required Result invalidStringToInt(String failedValue),
  }) {
    assert(test1 != null);
    assert(test2 != null);
    assert(invalidStringToInt != null);
    return test2(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result test1(String failedValue),
    Result test2(String failedValue),
    Result invalidStringToInt(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (test2 != null) {
      return test2(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result test1(Test1<T> value),
    @required Result test2(Test2<T> value),
    @required Result invalidStringToInt(InvalidStringToInt<T> value),
  }) {
    assert(test1 != null);
    assert(test2 != null);
    assert(invalidStringToInt != null);
    return test2(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result test1(Test1<T> value),
    Result test2(Test2<T> value),
    Result invalidStringToInt(InvalidStringToInt<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (test2 != null) {
      return test2(this);
    }
    return orElse();
  }
}

abstract class Test2<T> implements ValueFailure<T> {
  const factory Test2({@required String failedValue}) = _$Test2<T>;

  @override
  String get failedValue;
  @override
  $Test2CopyWith<T, Test2<T>> get copyWith;
}

abstract class $InvalidStringToIntCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidStringToIntCopyWith(InvalidStringToInt<T> value,
          $Res Function(InvalidStringToInt<T>) then) =
      _$InvalidStringToIntCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
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
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidStringToInt<T>
    with DiagnosticableTreeMixin
    implements InvalidStringToInt<T> {
  const _$InvalidStringToInt({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidStringToInt(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidStringToInt'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
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
    @required Result test1(String failedValue),
    @required Result test2(String failedValue),
    @required Result invalidStringToInt(String failedValue),
  }) {
    assert(test1 != null);
    assert(test2 != null);
    assert(invalidStringToInt != null);
    return invalidStringToInt(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result test1(String failedValue),
    Result test2(String failedValue),
    Result invalidStringToInt(String failedValue),
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
    @required Result test1(Test1<T> value),
    @required Result test2(Test2<T> value),
    @required Result invalidStringToInt(InvalidStringToInt<T> value),
  }) {
    assert(test1 != null);
    assert(test2 != null);
    assert(invalidStringToInt != null);
    return invalidStringToInt(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result test1(Test1<T> value),
    Result test2(Test2<T> value),
    Result invalidStringToInt(InvalidStringToInt<T> value),
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
  const factory InvalidStringToInt({@required String failedValue}) =
      _$InvalidStringToInt<T>;

  @override
  String get failedValue;
  @override
  $InvalidStringToIntCopyWith<T, InvalidStringToInt<T>> get copyWith;
}
