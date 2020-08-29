// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

// ignore: unused_element
  _ThemeState call(
      {@required ThemeData themeData, @required AppTheme appTheme}) {
    return _ThemeState(
      themeData: themeData,
      appTheme: appTheme,
    );
  }
}

// ignore: unused_element
const $ThemeState = _$ThemeStateTearOff();

mixin _$ThemeState {
  ThemeData get themeData;
  AppTheme get appTheme;

  $ThemeStateCopyWith<ThemeState> get copyWith;
}

abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeData themeData, AppTheme appTheme});
}

class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object themeData = freezed,
    Object appTheme = freezed,
  }) {
    return _then(_value.copyWith(
      themeData:
          themeData == freezed ? _value.themeData : themeData as ThemeData,
      appTheme: appTheme == freezed ? _value.appTheme : appTheme as AppTheme,
    ));
  }
}

abstract class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(
          _ThemeState value, $Res Function(_ThemeState) then) =
      __$ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeData themeData, AppTheme appTheme});
}

class __$ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(
      _ThemeState _value, $Res Function(_ThemeState) _then)
      : super(_value, (v) => _then(v as _ThemeState));

  @override
  _ThemeState get _value => super._value as _ThemeState;

  @override
  $Res call({
    Object themeData = freezed,
    Object appTheme = freezed,
  }) {
    return _then(_ThemeState(
      themeData:
          themeData == freezed ? _value.themeData : themeData as ThemeData,
      appTheme: appTheme == freezed ? _value.appTheme : appTheme as AppTheme,
    ));
  }
}

class _$_ThemeState implements _ThemeState {
  const _$_ThemeState({@required this.themeData, @required this.appTheme})
      : assert(themeData != null),
        assert(appTheme != null);

  @override
  final ThemeData themeData;
  @override
  final AppTheme appTheme;

  @override
  String toString() {
    return 'ThemeState(themeData: $themeData, appTheme: $appTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeState &&
            (identical(other.themeData, themeData) ||
                const DeepCollectionEquality()
                    .equals(other.themeData, themeData)) &&
            (identical(other.appTheme, appTheme) ||
                const DeepCollectionEquality()
                    .equals(other.appTheme, appTheme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(themeData) ^
      const DeepCollectionEquality().hash(appTheme);

  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState(
      {@required ThemeData themeData,
      @required AppTheme appTheme}) = _$_ThemeState;

  @override
  ThemeData get themeData;
  @override
  AppTheme get appTheme;
  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith;
}
