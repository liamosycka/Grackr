import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_guard_event.freezed.dart';

@freezed
abstract class CreateGuardEvent with _$CreateGuardEvent {
  const factory CreateGuardEvent.submit() = Submit;
  const factory CreateGuardEvent.nameChanged({@required String name}) =
      NameChanged;
  const factory CreateGuardEvent.surnameChanged({@required String surname}) =
      SurnameChanged;
  const factory CreateGuardEvent.idChanged({@required String id}) = IdChanged;
  const factory CreateGuardEvent.employeePermissionsChanged(
      {@required int permissions}) = EmployeePermissionsChanged;
  const factory CreateGuardEvent.initialize({@required String currentUser}) =
      Initialize;
}
//
