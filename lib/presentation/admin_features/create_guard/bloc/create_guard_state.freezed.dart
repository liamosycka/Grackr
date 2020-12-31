// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_guard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreateGuardStateTearOff {
  const _$CreateGuardStateTearOff();

// ignore: unused_element
  _CreateGuardState call(
      {@required
          Name_Surname name,
      @required
          Name_Surname surname,
      @required
          EmployeeID employeeID,
      @required
          PermissionLevel employeePermissions,
      @required
          Option<UserName> currentUser,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<Admin_Features_Failure, Unit>>
              adminFeaturesFailureOrSuccess}) {
    return _CreateGuardState(
      name: name,
      surname: surname,
      employeeID: employeeID,
      employeePermissions: employeePermissions,
      currentUser: currentUser,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      adminFeaturesFailureOrSuccess: adminFeaturesFailureOrSuccess,
    );
  }
}

// ignore: unused_element
const $CreateGuardState = _$CreateGuardStateTearOff();

mixin _$CreateGuardState {
  Name_Surname get name;
  Name_Surname get surname;
  EmployeeID get employeeID;
  PermissionLevel get employeePermissions;
  Option<UserName> get currentUser;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Admin_Features_Failure, Unit>>
      get adminFeaturesFailureOrSuccess;

  $CreateGuardStateCopyWith<CreateGuardState> get copyWith;
}

abstract class $CreateGuardStateCopyWith<$Res> {
  factory $CreateGuardStateCopyWith(
          CreateGuardState value, $Res Function(CreateGuardState) then) =
      _$CreateGuardStateCopyWithImpl<$Res>;
  $Res call(
      {Name_Surname name,
      Name_Surname surname,
      EmployeeID employeeID,
      PermissionLevel employeePermissions,
      Option<UserName> currentUser,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Admin_Features_Failure, Unit>>
          adminFeaturesFailureOrSuccess});
}

class _$CreateGuardStateCopyWithImpl<$Res>
    implements $CreateGuardStateCopyWith<$Res> {
  _$CreateGuardStateCopyWithImpl(this._value, this._then);

  final CreateGuardState _value;
  // ignore: unused_field
  final $Res Function(CreateGuardState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
    Object employeeID = freezed,
    Object employeePermissions = freezed,
    Object currentUser = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object adminFeaturesFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Name_Surname,
      surname: surname == freezed ? _value.surname : surname as Name_Surname,
      employeeID:
          employeeID == freezed ? _value.employeeID : employeeID as EmployeeID,
      employeePermissions: employeePermissions == freezed
          ? _value.employeePermissions
          : employeePermissions as PermissionLevel,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser as Option<UserName>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      adminFeaturesFailureOrSuccess: adminFeaturesFailureOrSuccess == freezed
          ? _value.adminFeaturesFailureOrSuccess
          : adminFeaturesFailureOrSuccess
              as Option<Either<Admin_Features_Failure, Unit>>,
    ));
  }
}

abstract class _$CreateGuardStateCopyWith<$Res>
    implements $CreateGuardStateCopyWith<$Res> {
  factory _$CreateGuardStateCopyWith(
          _CreateGuardState value, $Res Function(_CreateGuardState) then) =
      __$CreateGuardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name_Surname name,
      Name_Surname surname,
      EmployeeID employeeID,
      PermissionLevel employeePermissions,
      Option<UserName> currentUser,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Admin_Features_Failure, Unit>>
          adminFeaturesFailureOrSuccess});
}

class __$CreateGuardStateCopyWithImpl<$Res>
    extends _$CreateGuardStateCopyWithImpl<$Res>
    implements _$CreateGuardStateCopyWith<$Res> {
  __$CreateGuardStateCopyWithImpl(
      _CreateGuardState _value, $Res Function(_CreateGuardState) _then)
      : super(_value, (v) => _then(v as _CreateGuardState));

  @override
  _CreateGuardState get _value => super._value as _CreateGuardState;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
    Object employeeID = freezed,
    Object employeePermissions = freezed,
    Object currentUser = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object adminFeaturesFailureOrSuccess = freezed,
  }) {
    return _then(_CreateGuardState(
      name: name == freezed ? _value.name : name as Name_Surname,
      surname: surname == freezed ? _value.surname : surname as Name_Surname,
      employeeID:
          employeeID == freezed ? _value.employeeID : employeeID as EmployeeID,
      employeePermissions: employeePermissions == freezed
          ? _value.employeePermissions
          : employeePermissions as PermissionLevel,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser as Option<UserName>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      adminFeaturesFailureOrSuccess: adminFeaturesFailureOrSuccess == freezed
          ? _value.adminFeaturesFailureOrSuccess
          : adminFeaturesFailureOrSuccess
              as Option<Either<Admin_Features_Failure, Unit>>,
    ));
  }
}

class _$_CreateGuardState
    with DiagnosticableTreeMixin
    implements _CreateGuardState {
  const _$_CreateGuardState(
      {@required this.name,
      @required this.surname,
      @required this.employeeID,
      @required this.employeePermissions,
      @required this.currentUser,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.adminFeaturesFailureOrSuccess})
      : assert(name != null),
        assert(surname != null),
        assert(employeeID != null),
        assert(employeePermissions != null),
        assert(currentUser != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(adminFeaturesFailureOrSuccess != null);

  @override
  final Name_Surname name;
  @override
  final Name_Surname surname;
  @override
  final EmployeeID employeeID;
  @override
  final PermissionLevel employeePermissions;
  @override
  final Option<UserName> currentUser;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Admin_Features_Failure, Unit>>
      adminFeaturesFailureOrSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateGuardState(name: $name, surname: $surname, employeeID: $employeeID, employeePermissions: $employeePermissions, currentUser: $currentUser, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, adminFeaturesFailureOrSuccess: $adminFeaturesFailureOrSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateGuardState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('surname', surname))
      ..add(DiagnosticsProperty('employeeID', employeeID))
      ..add(DiagnosticsProperty('employeePermissions', employeePermissions))
      ..add(DiagnosticsProperty('currentUser', currentUser))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'adminFeaturesFailureOrSuccess', adminFeaturesFailureOrSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateGuardState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.employeeID, employeeID) ||
                const DeepCollectionEquality()
                    .equals(other.employeeID, employeeID)) &&
            (identical(other.employeePermissions, employeePermissions) ||
                const DeepCollectionEquality()
                    .equals(other.employeePermissions, employeePermissions)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.adminFeaturesFailureOrSuccess,
                    adminFeaturesFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.adminFeaturesFailureOrSuccess,
                    adminFeaturesFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(employeeID) ^
      const DeepCollectionEquality().hash(employeePermissions) ^
      const DeepCollectionEquality().hash(currentUser) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(adminFeaturesFailureOrSuccess);

  @override
  _$CreateGuardStateCopyWith<_CreateGuardState> get copyWith =>
      __$CreateGuardStateCopyWithImpl<_CreateGuardState>(this, _$identity);
}

abstract class _CreateGuardState implements CreateGuardState {
  const factory _CreateGuardState(
      {@required
          Name_Surname name,
      @required
          Name_Surname surname,
      @required
          EmployeeID employeeID,
      @required
          PermissionLevel employeePermissions,
      @required
          Option<UserName> currentUser,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<Admin_Features_Failure, Unit>>
              adminFeaturesFailureOrSuccess}) = _$_CreateGuardState;

  @override
  Name_Surname get name;
  @override
  Name_Surname get surname;
  @override
  EmployeeID get employeeID;
  @override
  PermissionLevel get employeePermissions;
  @override
  Option<UserName> get currentUser;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Admin_Features_Failure, Unit>>
      get adminFeaturesFailureOrSuccess;
  @override
  _$CreateGuardStateCopyWith<_CreateGuardState> get copyWith;
}
