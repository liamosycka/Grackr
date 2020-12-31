// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EmployeeTearOff {
  const _$EmployeeTearOff();

// ignore: unused_element
  _Employee call(
      {@required Name_Surname name,
      @required Name_Surname surname,
      @required EmployeeID employeeID}) {
    return _Employee(
      name: name,
      surname: surname,
      employeeID: employeeID,
    );
  }
}

// ignore: unused_element
const $Employee = _$EmployeeTearOff();

mixin _$Employee {
  Name_Surname get name;
  Name_Surname get surname;
  EmployeeID get employeeID;

  $EmployeeCopyWith<Employee> get copyWith;
}

abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res>;
  $Res call({Name_Surname name, Name_Surname surname, EmployeeID employeeID});
}

class _$EmployeeCopyWithImpl<$Res> implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  final Employee _value;
  // ignore: unused_field
  final $Res Function(Employee) _then;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
    Object employeeID = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Name_Surname,
      surname: surname == freezed ? _value.surname : surname as Name_Surname,
      employeeID:
          employeeID == freezed ? _value.employeeID : employeeID as EmployeeID,
    ));
  }
}

abstract class _$EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$EmployeeCopyWith(_Employee value, $Res Function(_Employee) then) =
      __$EmployeeCopyWithImpl<$Res>;
  @override
  $Res call({Name_Surname name, Name_Surname surname, EmployeeID employeeID});
}

class __$EmployeeCopyWithImpl<$Res> extends _$EmployeeCopyWithImpl<$Res>
    implements _$EmployeeCopyWith<$Res> {
  __$EmployeeCopyWithImpl(_Employee _value, $Res Function(_Employee) _then)
      : super(_value, (v) => _then(v as _Employee));

  @override
  _Employee get _value => super._value as _Employee;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
    Object employeeID = freezed,
  }) {
    return _then(_Employee(
      name: name == freezed ? _value.name : name as Name_Surname,
      surname: surname == freezed ? _value.surname : surname as Name_Surname,
      employeeID:
          employeeID == freezed ? _value.employeeID : employeeID as EmployeeID,
    ));
  }
}

class _$_Employee implements _Employee {
  const _$_Employee(
      {@required this.name, @required this.surname, @required this.employeeID})
      : assert(name != null),
        assert(surname != null),
        assert(employeeID != null);

  @override
  final Name_Surname name;
  @override
  final Name_Surname surname;
  @override
  final EmployeeID employeeID;

  @override
  String toString() {
    return 'Employee(name: $name, surname: $surname, employeeID: $employeeID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Employee &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.employeeID, employeeID) ||
                const DeepCollectionEquality()
                    .equals(other.employeeID, employeeID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(employeeID);

  @override
  _$EmployeeCopyWith<_Employee> get copyWith =>
      __$EmployeeCopyWithImpl<_Employee>(this, _$identity);
}

abstract class _Employee implements Employee {
  const factory _Employee(
      {@required Name_Surname name,
      @required Name_Surname surname,
      @required EmployeeID employeeID}) = _$_Employee;

  @override
  Name_Surname get name;
  @override
  Name_Surname get surname;
  @override
  EmployeeID get employeeID;
  @override
  _$EmployeeCopyWith<_Employee> get copyWith;
}
