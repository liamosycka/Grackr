import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_guard_event.freezed.dart';

@freezed
abstract class CreateEmployeeEvent with _$CreateEmployeeEvent {
  const factory CreateEmployeeEvent.submit() = Submit;
  const factory CreateEmployeeEvent.nameChanged({@required String name}) =
      NameChanged;
  const factory CreateEmployeeEvent.surnameChanged({@required String surname}) =
      SurnameChanged;
  const factory CreateEmployeeEvent.idChanged({@required String id}) =
      IdChanged;
  const factory CreateEmployeeEvent.employeePermissionsChanged(
      {@required int permissions}) = EmployeePermissionsChanged;
  const factory CreateEmployeeEvent.initialize({@required String currentUser}) =
      Initialize;
}
//
