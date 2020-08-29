// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

// ignore: unused_element
  Changed changed({@required AppTheme theme}) {
    return Changed(
      theme: theme,
    );
  }
}

// ignore: unused_element
const $ThemeEvent = _$ThemeEventTearOff();

mixin _$ThemeEvent {
  AppTheme get theme;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changed(AppTheme theme),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changed(AppTheme theme),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changed(Changed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changed(Changed value),
    @required Result orElse(),
  });

  $ThemeEventCopyWith<ThemeEvent> get copyWith;
}

abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
  $Res call({AppTheme theme});
}

class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;

  @override
  $Res call({
    Object theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed ? _value.theme : theme as AppTheme,
    ));
  }
}

abstract class $ChangedCopyWith<$Res> implements $ThemeEventCopyWith<$Res> {
  factory $ChangedCopyWith(Changed value, $Res Function(Changed) then) =
      _$ChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppTheme theme});
}

class _$ChangedCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements $ChangedCopyWith<$Res> {
  _$ChangedCopyWithImpl(Changed _value, $Res Function(Changed) _then)
      : super(_value, (v) => _then(v as Changed));

  @override
  Changed get _value => super._value as Changed;

  @override
  $Res call({
    Object theme = freezed,
  }) {
    return _then(Changed(
      theme: theme == freezed ? _value.theme : theme as AppTheme,
    ));
  }
}

class _$Changed implements Changed {
  const _$Changed({@required this.theme}) : assert(theme != null);

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'ThemeEvent.changed(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Changed &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(theme);

  @override
  $ChangedCopyWith<Changed> get copyWith =>
      _$ChangedCopyWithImpl<Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changed(AppTheme theme),
  }) {
    assert(changed != null);
    return changed(theme);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changed(AppTheme theme),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changed != null) {
      return changed(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changed(Changed value),
  }) {
    assert(changed != null);
    return changed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changed(Changed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class Changed implements ThemeEvent {
  const factory Changed({@required AppTheme theme}) = _$Changed;

  @override
  AppTheme get theme;
  @override
  $ChangedCopyWith<Changed> get copyWith;
}
