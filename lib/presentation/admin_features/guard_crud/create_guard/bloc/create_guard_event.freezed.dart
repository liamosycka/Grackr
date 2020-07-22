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
  Submit submit(
      {@required String name,
      @required String surname,
      @required String employeeID}) {
    return Submit(
      name: name,
      surname: surname,
      employeeID: employeeID,
    );
  }
}

// ignore: unused_element
const $CreateGuardEvent = _$CreateGuardEventTearOff();

mixin _$CreateGuardEvent {
  String get name;
  String get surname;
  String get employeeID;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submit(String name, String surname, String employeeID),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(String name, String surname, String employeeID),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
    @required Result orElse(),
  });

  $CreateGuardEventCopyWith<CreateGuardEvent> get copyWith;
}

abstract class $CreateGuardEventCopyWith<$Res> {
  factory $CreateGuardEventCopyWith(
          CreateGuardEvent value, $Res Function(CreateGuardEvent) then) =
      _$CreateGuardEventCopyWithImpl<$Res>;
  $Res call({String name, String surname, String employeeID});
}

class _$CreateGuardEventCopyWithImpl<$Res>
    implements $CreateGuardEventCopyWith<$Res> {
  _$CreateGuardEventCopyWithImpl(this._value, this._then);

  final CreateGuardEvent _value;
  // ignore: unused_field
  final $Res Function(CreateGuardEvent) _then;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
    Object employeeID = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      surname: surname == freezed ? _value.surname : surname as String,
      employeeID:
          employeeID == freezed ? _value.employeeID : employeeID as String,
    ));
  }
}

abstract class $SubmitCopyWith<$Res>
    implements $CreateGuardEventCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
  @override
  $Res call({String name, String surname, String employeeID});
}

class _$SubmitCopyWithImpl<$Res> extends _$CreateGuardEventCopyWithImpl<$Res>
    implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(Submit _value, $Res Function(Submit) _then)
      : super(_value, (v) => _then(v as Submit));

  @override
  Submit get _value => super._value as Submit;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
    Object employeeID = freezed,
  }) {
    return _then(Submit(
      name: name == freezed ? _value.name : name as String,
      surname: surname == freezed ? _value.surname : surname as String,
      employeeID:
          employeeID == freezed ? _value.employeeID : employeeID as String,
    ));
  }
}

class _$Submit with DiagnosticableTreeMixin implements Submit {
  const _$Submit(
      {@required this.name, @required this.surname, @required this.employeeID})
      : assert(name != null),
        assert(surname != null),
        assert(employeeID != null);

  @override
  final String name;
  @override
  final String surname;
  @override
  final String employeeID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateGuardEvent.submit(name: $name, surname: $surname, employeeID: $employeeID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateGuardEvent.submit'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('surname', surname))
      ..add(DiagnosticsProperty('employeeID', employeeID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Submit &&
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
  $SubmitCopyWith<Submit> get copyWith =>
      _$SubmitCopyWithImpl<Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submit(String name, String surname, String employeeID),
  }) {
    assert(submit != null);
    return submit(name, surname, employeeID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submit(String name, String surname, String employeeID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(name, surname, employeeID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submit(Submit value),
  }) {
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submit(Submit value),
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
  const factory Submit(
      {@required String name,
      @required String surname,
      @required String employeeID}) = _$Submit;

  @override
  String get name;
  @override
  String get surname;
  @override
  String get employeeID;
  @override
  $SubmitCopyWith<Submit> get copyWith;
}
