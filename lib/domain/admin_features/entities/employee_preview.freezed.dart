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
      {@required ID id,
      @required Name_Surname name,
      @required Name_Surname surname,
      @required EmployeeID employeeID,
      @required PermissionLevel permissionLevel}) {
    return _EmployeePreview(
      id: id,
      name: name,
      surname: surname,
      employeeID: employeeID,
      permissionLevel: permissionLevel,
    );
  }
}

// ignore: unused_element
const $EmployeePreview = _$EmployeePreviewTearOff();

mixin _$EmployeePreview {
  ID get id;
  Name_Surname get name;
  Name_Surname get surname;
  EmployeeID get employeeID;
  PermissionLevel get permissionLevel;

  $EmployeePreviewCopyWith<EmployeePreview> get copyWith;
}

abstract class $EmployeePreviewCopyWith<$Res> {
  factory $EmployeePreviewCopyWith(
          EmployeePreview value, $Res Function(EmployeePreview) then) =
      _$EmployeePreviewCopyWithImpl<$Res>;
  $Res call(
      {ID id,
      Name_Surname name,
      Name_Surname surname,
      EmployeeID employeeID,
      PermissionLevel permissionLevel});
}

class _$EmployeePreviewCopyWithImpl<$Res>
    implements $EmployeePreviewCopyWith<$Res> {
  _$EmployeePreviewCopyWithImpl(this._value, this._then);

  final EmployeePreview _value;
  // ignore: unused_field
  final $Res Function(EmployeePreview) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object surname = freezed,
    Object employeeID = freezed,
    Object permissionLevel = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as ID,
      name: name == freezed ? _value.name : name as Name_Surname,
      surname: surname == freezed ? _value.surname : surname as Name_Surname,
      employeeID:
          employeeID == freezed ? _value.employeeID : employeeID as EmployeeID,
      permissionLevel: permissionLevel == freezed
          ? _value.permissionLevel
          : permissionLevel as PermissionLevel,
    ));
  }
}

abstract class _$EmployeePreviewCopyWith<$Res>
    implements $EmployeePreviewCopyWith<$Res> {
  factory _$EmployeePreviewCopyWith(
          _EmployeePreview value, $Res Function(_EmployeePreview) then) =
      __$EmployeePreviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {ID id,
      Name_Surname name,
      Name_Surname surname,
      EmployeeID employeeID,
      PermissionLevel permissionLevel});
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
    Object id = freezed,
    Object name = freezed,
    Object surname = freezed,
    Object employeeID = freezed,
    Object permissionLevel = freezed,
  }) {
    return _then(_EmployeePreview(
      id: id == freezed ? _value.id : id as ID,
      name: name == freezed ? _value.name : name as Name_Surname,
      surname: surname == freezed ? _value.surname : surname as Name_Surname,
      employeeID:
          employeeID == freezed ? _value.employeeID : employeeID as EmployeeID,
      permissionLevel: permissionLevel == freezed
          ? _value.permissionLevel
          : permissionLevel as PermissionLevel,
    ));
  }
}

class _$_EmployeePreview implements _EmployeePreview {
  const _$_EmployeePreview(
      {@required this.id,
      @required this.name,
      @required this.surname,
      @required this.employeeID,
      @required this.permissionLevel})
      : assert(id != null),
        assert(name != null),
        assert(surname != null),
        assert(employeeID != null),
        assert(permissionLevel != null);

  @override
  final ID id;
  @override
  final Name_Surname name;
  @override
  final Name_Surname surname;
  @override
  final EmployeeID employeeID;
  @override
  final PermissionLevel permissionLevel;

  @override
  String toString() {
    return 'EmployeePreview(id: $id, name: $name, surname: $surname, employeeID: $employeeID, permissionLevel: $permissionLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmployeePreview &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.employeeID, employeeID) ||
                const DeepCollectionEquality()
                    .equals(other.employeeID, employeeID)) &&
            (identical(other.permissionLevel, permissionLevel) ||
                const DeepCollectionEquality()
                    .equals(other.permissionLevel, permissionLevel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(employeeID) ^
      const DeepCollectionEquality().hash(permissionLevel);

  @override
  _$EmployeePreviewCopyWith<_EmployeePreview> get copyWith =>
      __$EmployeePreviewCopyWithImpl<_EmployeePreview>(this, _$identity);
}

abstract class _EmployeePreview implements EmployeePreview {
  const factory _EmployeePreview(
      {@required ID id,
      @required Name_Surname name,
      @required Name_Surname surname,
      @required EmployeeID employeeID,
      @required PermissionLevel permissionLevel}) = _$_EmployeePreview;

  @override
  ID get id;
  @override
  Name_Surname get name;
  @override
  Name_Surname get surname;
  @override
  EmployeeID get employeeID;
  @override
  PermissionLevel get permissionLevel;
  @override
  _$EmployeePreviewCopyWith<_EmployeePreview> get copyWith;
}
