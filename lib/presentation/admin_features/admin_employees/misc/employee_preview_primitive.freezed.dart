// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'employee_preview_primitive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EmployeePreviewPrimitiveTearOff {
  const _$EmployeePreviewPrimitiveTearOff();

// ignore: unused_element
  _EmployeePreviewPrimitive call(
      {@required String fullName,
      @required String employeeId,
      @required String permissionLevel,
      @required Option<IconData> icon}) {
    return _EmployeePreviewPrimitive(
      fullName: fullName,
      employeeId: employeeId,
      permissionLevel: permissionLevel,
      icon: icon,
    );
  }
}

// ignore: unused_element
const $EmployeePreviewPrimitive = _$EmployeePreviewPrimitiveTearOff();

mixin _$EmployeePreviewPrimitive {
  String get fullName;
  String get employeeId;
  String get permissionLevel;
  Option<IconData> get icon;

  $EmployeePreviewPrimitiveCopyWith<EmployeePreviewPrimitive> get copyWith;
}

abstract class $EmployeePreviewPrimitiveCopyWith<$Res> {
  factory $EmployeePreviewPrimitiveCopyWith(EmployeePreviewPrimitive value,
          $Res Function(EmployeePreviewPrimitive) then) =
      _$EmployeePreviewPrimitiveCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String employeeId,
      String permissionLevel,
      Option<IconData> icon});
}

class _$EmployeePreviewPrimitiveCopyWithImpl<$Res>
    implements $EmployeePreviewPrimitiveCopyWith<$Res> {
  _$EmployeePreviewPrimitiveCopyWithImpl(this._value, this._then);

  final EmployeePreviewPrimitive _value;
  // ignore: unused_field
  final $Res Function(EmployeePreviewPrimitive) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object employeeId = freezed,
    Object permissionLevel = freezed,
    Object icon = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      employeeId:
          employeeId == freezed ? _value.employeeId : employeeId as String,
      permissionLevel: permissionLevel == freezed
          ? _value.permissionLevel
          : permissionLevel as String,
      icon: icon == freezed ? _value.icon : icon as Option<IconData>,
    ));
  }
}

abstract class _$EmployeePreviewPrimitiveCopyWith<$Res>
    implements $EmployeePreviewPrimitiveCopyWith<$Res> {
  factory _$EmployeePreviewPrimitiveCopyWith(_EmployeePreviewPrimitive value,
          $Res Function(_EmployeePreviewPrimitive) then) =
      __$EmployeePreviewPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String employeeId,
      String permissionLevel,
      Option<IconData> icon});
}

class __$EmployeePreviewPrimitiveCopyWithImpl<$Res>
    extends _$EmployeePreviewPrimitiveCopyWithImpl<$Res>
    implements _$EmployeePreviewPrimitiveCopyWith<$Res> {
  __$EmployeePreviewPrimitiveCopyWithImpl(_EmployeePreviewPrimitive _value,
      $Res Function(_EmployeePreviewPrimitive) _then)
      : super(_value, (v) => _then(v as _EmployeePreviewPrimitive));

  @override
  _EmployeePreviewPrimitive get _value =>
      super._value as _EmployeePreviewPrimitive;

  @override
  $Res call({
    Object fullName = freezed,
    Object employeeId = freezed,
    Object permissionLevel = freezed,
    Object icon = freezed,
  }) {
    return _then(_EmployeePreviewPrimitive(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      employeeId:
          employeeId == freezed ? _value.employeeId : employeeId as String,
      permissionLevel: permissionLevel == freezed
          ? _value.permissionLevel
          : permissionLevel as String,
      icon: icon == freezed ? _value.icon : icon as Option<IconData>,
    ));
  }
}

class _$_EmployeePreviewPrimitive extends _EmployeePreviewPrimitive {
  const _$_EmployeePreviewPrimitive(
      {@required this.fullName,
      @required this.employeeId,
      @required this.permissionLevel,
      @required this.icon})
      : assert(fullName != null),
        assert(employeeId != null),
        assert(permissionLevel != null),
        assert(icon != null),
        super._();

  @override
  final String fullName;
  @override
  final String employeeId;
  @override
  final String permissionLevel;
  @override
  final Option<IconData> icon;

  @override
  String toString() {
    return 'EmployeePreviewPrimitive(fullName: $fullName, employeeId: $employeeId, permissionLevel: $permissionLevel, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmployeePreviewPrimitive &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
            (identical(other.permissionLevel, permissionLevel) ||
                const DeepCollectionEquality()
                    .equals(other.permissionLevel, permissionLevel)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(permissionLevel) ^
      const DeepCollectionEquality().hash(icon);

  @override
  _$EmployeePreviewPrimitiveCopyWith<_EmployeePreviewPrimitive> get copyWith =>
      __$EmployeePreviewPrimitiveCopyWithImpl<_EmployeePreviewPrimitive>(
          this, _$identity);
}

abstract class _EmployeePreviewPrimitive extends EmployeePreviewPrimitive {
  const _EmployeePreviewPrimitive._() : super._();
  const factory _EmployeePreviewPrimitive(
      {@required String fullName,
      @required String employeeId,
      @required String permissionLevel,
      @required Option<IconData> icon}) = _$_EmployeePreviewPrimitive;

  @override
  String get fullName;
  @override
  String get employeeId;
  @override
  String get permissionLevel;
  @override
  Option<IconData> get icon;
  @override
  _$EmployeePreviewPrimitiveCopyWith<_EmployeePreviewPrimitive> get copyWith;
}
