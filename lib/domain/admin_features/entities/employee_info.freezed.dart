// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'employee_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EmployeeInfoTearOff {
  const _$EmployeeInfoTearOff();

// ignore: unused_element
  _EmployeeInfo call(
      {@required UserName username,
      @required DateTime creationDateTime,
      @required UserName creatorUsername}) {
    return _EmployeeInfo(
      username: username,
      creationDateTime: creationDateTime,
      creatorUsername: creatorUsername,
    );
  }
}

// ignore: unused_element
const $EmployeeInfo = _$EmployeeInfoTearOff();

mixin _$EmployeeInfo {
  UserName get username;
  DateTime get creationDateTime;
  UserName get creatorUsername;

  $EmployeeInfoCopyWith<EmployeeInfo> get copyWith;
}

abstract class $EmployeeInfoCopyWith<$Res> {
  factory $EmployeeInfoCopyWith(
          EmployeeInfo value, $Res Function(EmployeeInfo) then) =
      _$EmployeeInfoCopyWithImpl<$Res>;
  $Res call(
      {UserName username, DateTime creationDateTime, UserName creatorUsername});
}

class _$EmployeeInfoCopyWithImpl<$Res> implements $EmployeeInfoCopyWith<$Res> {
  _$EmployeeInfoCopyWithImpl(this._value, this._then);

  final EmployeeInfo _value;
  // ignore: unused_field
  final $Res Function(EmployeeInfo) _then;

  @override
  $Res call({
    Object username = freezed,
    Object creationDateTime = freezed,
    Object creatorUsername = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as UserName,
      creationDateTime: creationDateTime == freezed
          ? _value.creationDateTime
          : creationDateTime as DateTime,
      creatorUsername: creatorUsername == freezed
          ? _value.creatorUsername
          : creatorUsername as UserName,
    ));
  }
}

abstract class _$EmployeeInfoCopyWith<$Res>
    implements $EmployeeInfoCopyWith<$Res> {
  factory _$EmployeeInfoCopyWith(
          _EmployeeInfo value, $Res Function(_EmployeeInfo) then) =
      __$EmployeeInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserName username, DateTime creationDateTime, UserName creatorUsername});
}

class __$EmployeeInfoCopyWithImpl<$Res> extends _$EmployeeInfoCopyWithImpl<$Res>
    implements _$EmployeeInfoCopyWith<$Res> {
  __$EmployeeInfoCopyWithImpl(
      _EmployeeInfo _value, $Res Function(_EmployeeInfo) _then)
      : super(_value, (v) => _then(v as _EmployeeInfo));

  @override
  _EmployeeInfo get _value => super._value as _EmployeeInfo;

  @override
  $Res call({
    Object username = freezed,
    Object creationDateTime = freezed,
    Object creatorUsername = freezed,
  }) {
    return _then(_EmployeeInfo(
      username: username == freezed ? _value.username : username as UserName,
      creationDateTime: creationDateTime == freezed
          ? _value.creationDateTime
          : creationDateTime as DateTime,
      creatorUsername: creatorUsername == freezed
          ? _value.creatorUsername
          : creatorUsername as UserName,
    ));
  }
}

class _$_EmployeeInfo implements _EmployeeInfo {
  const _$_EmployeeInfo(
      {@required this.username,
      @required this.creationDateTime,
      @required this.creatorUsername})
      : assert(username != null),
        assert(creationDateTime != null),
        assert(creatorUsername != null);

  @override
  final UserName username;
  @override
  final DateTime creationDateTime;
  @override
  final UserName creatorUsername;

  @override
  String toString() {
    return 'EmployeeInfo(username: $username, creationDateTime: $creationDateTime, creatorUsername: $creatorUsername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmployeeInfo &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.creationDateTime, creationDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationDateTime, creationDateTime)) &&
            (identical(other.creatorUsername, creatorUsername) ||
                const DeepCollectionEquality()
                    .equals(other.creatorUsername, creatorUsername)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(creationDateTime) ^
      const DeepCollectionEquality().hash(creatorUsername);

  @override
  _$EmployeeInfoCopyWith<_EmployeeInfo> get copyWith =>
      __$EmployeeInfoCopyWithImpl<_EmployeeInfo>(this, _$identity);
}

abstract class _EmployeeInfo implements EmployeeInfo {
  const factory _EmployeeInfo(
      {@required UserName username,
      @required DateTime creationDateTime,
      @required UserName creatorUsername}) = _$_EmployeeInfo;

  @override
  UserName get username;
  @override
  DateTime get creationDateTime;
  @override
  UserName get creatorUsername;
  @override
  _$EmployeeInfoCopyWith<_EmployeeInfo> get copyWith;
}
