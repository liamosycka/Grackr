// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_guard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreateGuardEventTearOff {
  const _$CreateGuardEventTearOff();

// ignore: unused_element
  Submit submit() {
    return const Submit();
  }

// ignore: unused_element
  NameChanged nameChanged({@required String name}) {
    return NameChanged(
      name: name,
    );
  }

// ignore: unused_element
  SurnameChanged surnameChanged({@required String surname}) {
    return SurnameChanged(
      surname: surname,
    );
  }

// ignore: unused_element
  IdChanged idChanged({@required String id}) {
    return IdChanged(
      id: id,
    );
  }

// ignore: unused_element
  EmployeePermissionsChanged employeePermissionsChanged(
      {@required int permissions}) {
    return EmployeePermissionsChanged(
      permissions: permissions,
    );
  }

// ignore: unused_element
  Initialize initialize({@required String currentUser}) {
    return Initialize(
      currentUser: currentUser,
    );
  }
}

// ignore: unused_element
const $CreateGuardEvent = _$CreateGuardEventTearOff();

mixin _$CreateGuardEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submit(),
    @required Result nameChanged(String name),
    @required Result surnameChanged(String surname),
    @required Result idChanged(String id),
    @required Result employeePermissionsChanged(int permissions),
    @required Result initialize(String currentUser),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(),
    Result nameChanged(String name),
    Result surnameChanged(String surname),
    Result idChanged(String id),
    Result employeePermissionsChanged(int permissions),
    Result initialize(String currentUser),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
    @required Result nameChanged(NameChanged value),
    @required Result surnameChanged(SurnameChanged value),
    @required Result idChanged(IdChanged value),
    @required
        Result employeePermissionsChanged(EmployeePermissionsChanged value),
    @required Result initialize(Initialize value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
    Result nameChanged(NameChanged value),
    Result surnameChanged(SurnameChanged value),
    Result idChanged(IdChanged value),
    Result employeePermissionsChanged(EmployeePermissionsChanged value),
    Result initialize(Initialize value),
    @required Result orElse(),
  });
}

abstract class $CreateGuardEventCopyWith<$Res> {
  factory $CreateGuardEventCopyWith(
          CreateGuardEvent value, $Res Function(CreateGuardEvent) then) =
      _$CreateGuardEventCopyWithImpl<$Res>;
}

class _$CreateGuardEventCopyWithImpl<$Res>
    implements $CreateGuardEventCopyWith<$Res> {
  _$CreateGuardEventCopyWithImpl(this._value, this._then);

  final CreateGuardEvent _value;
  // ignore: unused_field
  final $Res Function(CreateGuardEvent) _then;
}

abstract class $SubmitCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
}

class _$SubmitCopyWithImpl<$Res> extends _$CreateGuardEventCopyWithImpl<$Res>
    implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(Submit _value, $Res Function(Submit) _then)
      : super(_value, (v) => _then(v as Submit));

  @override
  Submit get _value => super._value as Submit;
}

class _$Submit with DiagnosticableTreeMixin implements Submit {
  const _$Submit();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateGuardEvent.submit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CreateGuardEvent.submit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submit(),
    @required Result nameChanged(String name),
    @required Result surnameChanged(String surname),
    @required Result idChanged(String id),
    @required Result employeePermissionsChanged(int permissions),
    @required Result initialize(String currentUser),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(),
    Result nameChanged(String name),
    Result surnameChanged(String surname),
    Result idChanged(String id),
    Result employeePermissionsChanged(int permissions),
    Result initialize(String currentUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
    @required Result nameChanged(NameChanged value),
    @required Result surnameChanged(SurnameChanged value),
    @required Result idChanged(IdChanged value),
    @required
        Result employeePermissionsChanged(EmployeePermissionsChanged value),
    @required Result initialize(Initialize value),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
    Result nameChanged(NameChanged value),
    Result surnameChanged(SurnameChanged value),
    Result idChanged(IdChanged value),
    Result employeePermissionsChanged(EmployeePermissionsChanged value),
    Result initialize(Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements CreateGuardEvent {
  const factory Submit() = _$Submit;
}

abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$NameChangedCopyWithImpl<$Res>
    extends _$CreateGuardEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameChanged(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$NameChanged with DiagnosticableTreeMixin implements NameChanged {
  const _$NameChanged({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateGuardEvent.nameChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateGuardEvent.nameChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submit(),
    @required Result nameChanged(String name),
    @required Result surnameChanged(String surname),
    @required Result idChanged(String id),
    @required Result employeePermissionsChanged(int permissions),
    @required Result initialize(String currentUser),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(),
    Result nameChanged(String name),
    Result surnameChanged(String surname),
    Result idChanged(String id),
    Result employeePermissionsChanged(int permissions),
    Result initialize(String currentUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
    @required Result nameChanged(NameChanged value),
    @required Result surnameChanged(SurnameChanged value),
    @required Result idChanged(IdChanged value),
    @required
        Result employeePermissionsChanged(EmployeePermissionsChanged value),
    @required Result initialize(Initialize value),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
    Result nameChanged(NameChanged value),
    Result surnameChanged(SurnameChanged value),
    Result idChanged(IdChanged value),
    Result employeePermissionsChanged(EmployeePermissionsChanged value),
    Result initialize(Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements CreateGuardEvent {
  const factory NameChanged({@required String name}) = _$NameChanged;

  String get name;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

abstract class $SurnameChangedCopyWith<$Res> {
  factory $SurnameChangedCopyWith(
          SurnameChanged value, $Res Function(SurnameChanged) then) =
      _$SurnameChangedCopyWithImpl<$Res>;
  $Res call({String surname});
}

class _$SurnameChangedCopyWithImpl<$Res>
    extends _$CreateGuardEventCopyWithImpl<$Res>
    implements $SurnameChangedCopyWith<$Res> {
  _$SurnameChangedCopyWithImpl(
      SurnameChanged _value, $Res Function(SurnameChanged) _then)
      : super(_value, (v) => _then(v as SurnameChanged));

  @override
  SurnameChanged get _value => super._value as SurnameChanged;

  @override
  $Res call({
    Object surname = freezed,
  }) {
    return _then(SurnameChanged(
      surname: surname == freezed ? _value.surname : surname as String,
    ));
  }
}

class _$SurnameChanged with DiagnosticableTreeMixin implements SurnameChanged {
  const _$SurnameChanged({@required this.surname}) : assert(surname != null);

  @override
  final String surname;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateGuardEvent.surnameChanged(surname: $surname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateGuardEvent.surnameChanged'))
      ..add(DiagnosticsProperty('surname', surname));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurnameChanged &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality().equals(other.surname, surname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(surname);

  @override
  $SurnameChangedCopyWith<SurnameChanged> get copyWith =>
      _$SurnameChangedCopyWithImpl<SurnameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submit(),
    @required Result nameChanged(String name),
    @required Result surnameChanged(String surname),
    @required Result idChanged(String id),
    @required Result employeePermissionsChanged(int permissions),
    @required Result initialize(String currentUser),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return surnameChanged(surname);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(),
    Result nameChanged(String name),
    Result surnameChanged(String surname),
    Result idChanged(String id),
    Result employeePermissionsChanged(int permissions),
    Result initialize(String currentUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (surnameChanged != null) {
      return surnameChanged(surname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
    @required Result nameChanged(NameChanged value),
    @required Result surnameChanged(SurnameChanged value),
    @required Result idChanged(IdChanged value),
    @required
        Result employeePermissionsChanged(EmployeePermissionsChanged value),
    @required Result initialize(Initialize value),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return surnameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
    Result nameChanged(NameChanged value),
    Result surnameChanged(SurnameChanged value),
    Result idChanged(IdChanged value),
    Result employeePermissionsChanged(EmployeePermissionsChanged value),
    Result initialize(Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (surnameChanged != null) {
      return surnameChanged(this);
    }
    return orElse();
  }
}

abstract class SurnameChanged implements CreateGuardEvent {
  const factory SurnameChanged({@required String surname}) = _$SurnameChanged;

  String get surname;
  $SurnameChangedCopyWith<SurnameChanged> get copyWith;
}

abstract class $IdChangedCopyWith<$Res> {
  factory $IdChangedCopyWith(IdChanged value, $Res Function(IdChanged) then) =
      _$IdChangedCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$IdChangedCopyWithImpl<$Res> extends _$CreateGuardEventCopyWithImpl<$Res>
    implements $IdChangedCopyWith<$Res> {
  _$IdChangedCopyWithImpl(IdChanged _value, $Res Function(IdChanged) _then)
      : super(_value, (v) => _then(v as IdChanged));

  @override
  IdChanged get _value => super._value as IdChanged;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(IdChanged(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

class _$IdChanged with DiagnosticableTreeMixin implements IdChanged {
  const _$IdChanged({@required this.id}) : assert(id != null);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateGuardEvent.idChanged(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateGuardEvent.idChanged'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IdChanged &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $IdChangedCopyWith<IdChanged> get copyWith =>
      _$IdChangedCopyWithImpl<IdChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submit(),
    @required Result nameChanged(String name),
    @required Result surnameChanged(String surname),
    @required Result idChanged(String id),
    @required Result employeePermissionsChanged(int permissions),
    @required Result initialize(String currentUser),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return idChanged(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(),
    Result nameChanged(String name),
    Result surnameChanged(String surname),
    Result idChanged(String id),
    Result employeePermissionsChanged(int permissions),
    Result initialize(String currentUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idChanged != null) {
      return idChanged(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
    @required Result nameChanged(NameChanged value),
    @required Result surnameChanged(SurnameChanged value),
    @required Result idChanged(IdChanged value),
    @required
        Result employeePermissionsChanged(EmployeePermissionsChanged value),
    @required Result initialize(Initialize value),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return idChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
    Result nameChanged(NameChanged value),
    Result surnameChanged(SurnameChanged value),
    Result idChanged(IdChanged value),
    Result employeePermissionsChanged(EmployeePermissionsChanged value),
    Result initialize(Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idChanged != null) {
      return idChanged(this);
    }
    return orElse();
  }
}

abstract class IdChanged implements CreateGuardEvent {
  const factory IdChanged({@required String id}) = _$IdChanged;

  String get id;
  $IdChangedCopyWith<IdChanged> get copyWith;
}

abstract class $EmployeePermissionsChangedCopyWith<$Res> {
  factory $EmployeePermissionsChangedCopyWith(EmployeePermissionsChanged value,
          $Res Function(EmployeePermissionsChanged) then) =
      _$EmployeePermissionsChangedCopyWithImpl<$Res>;
  $Res call({int permissions});
}

class _$EmployeePermissionsChangedCopyWithImpl<$Res>
    extends _$CreateGuardEventCopyWithImpl<$Res>
    implements $EmployeePermissionsChangedCopyWith<$Res> {
  _$EmployeePermissionsChangedCopyWithImpl(EmployeePermissionsChanged _value,
      $Res Function(EmployeePermissionsChanged) _then)
      : super(_value, (v) => _then(v as EmployeePermissionsChanged));

  @override
  EmployeePermissionsChanged get _value =>
      super._value as EmployeePermissionsChanged;

  @override
  $Res call({
    Object permissions = freezed,
  }) {
    return _then(EmployeePermissionsChanged(
      permissions:
          permissions == freezed ? _value.permissions : permissions as int,
    ));
  }
}

class _$EmployeePermissionsChanged
    with DiagnosticableTreeMixin
    implements EmployeePermissionsChanged {
  const _$EmployeePermissionsChanged({@required this.permissions})
      : assert(permissions != null);

  @override
  final int permissions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateGuardEvent.employeePermissionsChanged(permissions: $permissions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CreateGuardEvent.employeePermissionsChanged'))
      ..add(DiagnosticsProperty('permissions', permissions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeePermissionsChanged &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(permissions);

  @override
  $EmployeePermissionsChangedCopyWith<EmployeePermissionsChanged>
      get copyWith =>
          _$EmployeePermissionsChangedCopyWithImpl<EmployeePermissionsChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submit(),
    @required Result nameChanged(String name),
    @required Result surnameChanged(String surname),
    @required Result idChanged(String id),
    @required Result employeePermissionsChanged(int permissions),
    @required Result initialize(String currentUser),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return employeePermissionsChanged(permissions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(),
    Result nameChanged(String name),
    Result surnameChanged(String surname),
    Result idChanged(String id),
    Result employeePermissionsChanged(int permissions),
    Result initialize(String currentUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (employeePermissionsChanged != null) {
      return employeePermissionsChanged(permissions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
    @required Result nameChanged(NameChanged value),
    @required Result surnameChanged(SurnameChanged value),
    @required Result idChanged(IdChanged value),
    @required
        Result employeePermissionsChanged(EmployeePermissionsChanged value),
    @required Result initialize(Initialize value),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return employeePermissionsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
    Result nameChanged(NameChanged value),
    Result surnameChanged(SurnameChanged value),
    Result idChanged(IdChanged value),
    Result employeePermissionsChanged(EmployeePermissionsChanged value),
    Result initialize(Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (employeePermissionsChanged != null) {
      return employeePermissionsChanged(this);
    }
    return orElse();
  }
}

abstract class EmployeePermissionsChanged implements CreateGuardEvent {
  const factory EmployeePermissionsChanged({@required int permissions}) =
      _$EmployeePermissionsChanged;

  int get permissions;
  $EmployeePermissionsChangedCopyWith<EmployeePermissionsChanged> get copyWith;
}

abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
  $Res call({String currentUser});
}

class _$InitializeCopyWithImpl<$Res>
    extends _$CreateGuardEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;

  @override
  $Res call({
    Object currentUser = freezed,
  }) {
    return _then(Initialize(
      currentUser:
          currentUser == freezed ? _value.currentUser : currentUser as String,
    ));
  }
}

class _$Initialize with DiagnosticableTreeMixin implements Initialize {
  const _$Initialize({@required this.currentUser})
      : assert(currentUser != null);

  @override
  final String currentUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateGuardEvent.initialize(currentUser: $currentUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateGuardEvent.initialize'))
      ..add(DiagnosticsProperty('currentUser', currentUser));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initialize &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUser);

  @override
  $InitializeCopyWith<Initialize> get copyWith =>
      _$InitializeCopyWithImpl<Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submit(),
    @required Result nameChanged(String name),
    @required Result surnameChanged(String surname),
    @required Result idChanged(String id),
    @required Result employeePermissionsChanged(int permissions),
    @required Result initialize(String currentUser),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return initialize(currentUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(),
    Result nameChanged(String name),
    Result surnameChanged(String surname),
    Result idChanged(String id),
    Result employeePermissionsChanged(int permissions),
    Result initialize(String currentUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
    @required Result nameChanged(NameChanged value),
    @required Result surnameChanged(SurnameChanged value),
    @required Result idChanged(IdChanged value),
    @required
        Result employeePermissionsChanged(EmployeePermissionsChanged value),
    @required Result initialize(Initialize value),
  }) {
    assert(submit != null);
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(idChanged != null);
    assert(employeePermissionsChanged != null);
    assert(initialize != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
    Result nameChanged(NameChanged value),
    Result surnameChanged(SurnameChanged value),
    Result idChanged(IdChanged value),
    Result employeePermissionsChanged(EmployeePermissionsChanged value),
    Result initialize(Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements CreateGuardEvent {
  const factory Initialize({@required String currentUser}) = _$Initialize;

  String get currentUser;
  $InitializeCopyWith<Initialize> get copyWith;
}
