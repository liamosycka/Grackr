// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'employee_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EmployeePreviewTearOff {
  const _$EmployeePreviewTearOff();

// ignore: unused_element
  _EmployeePreview call(
      {@required Employee employeeData,
      @required PermissionLevel permissionLevel}) {
    return _EmployeePreview(
      employeeData: employeeData,
      permissionLevel: permissionLevel,
    );
  }
}

// ignore: unused_element
const $EmployeePreview = _$EmployeePreviewTearOff();

mixin _$EmployeePreview {
  Employee get employeeData;
  PermissionLevel get permissionLevel;

  $EmployeePreviewCopyWith<EmployeePreview> get copyWith;
}

abstract class $EmployeePreviewCopyWith<$Res> {
  factory $EmployeePreviewCopyWith(
          EmployeePreview value, $Res Function(EmployeePreview) then) =
      _$EmployeePreviewCopyWithImpl<$Res>;
  $Res call({Employee employeeData, PermissionLevel permissionLevel});

  $EmployeeCopyWith<$Res> get employeeData;
}

class _$EmployeePreviewCopyWithImpl<$Res>
    implements $EmployeePreviewCopyWith<$Res> {
  _$EmployeePreviewCopyWithImpl(this._value, this._then);

  final EmployeePreview _value;
  // ignore: unused_field
  final $Res Function(EmployeePreview) _then;

  @override
  $Res call({
    Object employeeData = freezed,
    Object permissionLevel = freezed,
  }) {
    return _then(_value.copyWith(
      employeeData: employeeData == freezed
          ? _value.employeeData
          : employeeData as Employee,
      permissionLevel: permissionLevel == freezed
          ? _value.permissionLevel
          : permissionLevel as PermissionLevel,
    ));
  }

  @override
  $EmployeeCopyWith<$Res> get employeeData {
    if (_value.employeeData == null) {
      return null;
    }
    return $EmployeeCopyWith<$Res>(_value.employeeData, (value) {
      return _then(_value.copyWith(employeeData: value));
    });
  }
}

abstract class _$EmployeePreviewCopyWith<$Res>
    implements $EmployeePreviewCopyWith<$Res> {
  factory _$EmployeePreviewCopyWith(
          _EmployeePreview value, $Res Function(_EmployeePreview) then) =
      __$EmployeePreviewCopyWithImpl<$Res>;
  @override
  $Res call({Employee employeeData, PermissionLevel permissionLevel});

  @override
  $EmployeeCopyWith<$Res> get employeeData;
}

class __$EmployeePreviewCopyWithImpl<$Res>
    extends _$EmployeePreviewCopyWithImpl<$Res>
    implements _$EmployeePreviewCopyWith<$Res> {
  __$EmployeePreviewCopyWithImpl(
      _EmployeePreview _value, $Res Function(_EmployeePreview) _then)
      : super(_value, (v) => _then(v as _EmployeePreview));

  @override
  _EmployeePreview get _value => super._value as _EmployeePreview;

  @override
  $Res call({
    Object employeeData = freezed,
    Object permissionLevel = freezed,
  }) {
    return _then(_EmployeePreview(
      employeeData: employeeData == freezed
          ? _value.employeeData
          : employeeData as Employee,
      permissionLevel: permissionLevel == freezed
          ? _value.permissionLevel
          : permissionLevel as PermissionLevel,
    ));
  }
}

class _$_EmployeePreview implements _EmployeePreview {
  const _$_EmployeePreview(
      {@required this.employeeData, @required this.permissionLevel})
      : assert(employeeData != null),
        assert(permissionLevel != null);

  @override
  final Employee employeeData;
  @override
  final PermissionLevel permissionLevel;

  @override
  String toString() {
    return 'EmployeePreview(employeeData: $employeeData, permissionLevel: $permissionLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmployeePreview &&
            (identical(other.employeeData, employeeData) ||
                const DeepCollectionEquality()
                    .equals(other.employeeData, employeeData)) &&
            (identical(other.permissionLevel, permissionLevel) ||
                const DeepCollectionEquality()
                    .equals(other.permissionLevel, permissionLevel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(employeeData) ^
      const DeepCollectionEquality().hash(permissionLevel);

  @override
  _$EmployeePreviewCopyWith<_EmployeePreview> get copyWith =>
      __$EmployeePreviewCopyWithImpl<_EmployeePreview>(this, _$identity);
}

abstract class _EmployeePreview implements EmployeePreview {
  const factory _EmployeePreview(
      {@required Employee employeeData,
      @required PermissionLevel permissionLevel}) = _$_EmployeePreview;

  @override
  Employee get employeeData;
  @override
  PermissionLevel get permissionLevel;
  @override
  _$EmployeePreviewCopyWith<_EmployeePreview> get copyWith;
}
