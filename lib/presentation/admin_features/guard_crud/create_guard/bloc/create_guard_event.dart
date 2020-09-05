import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_guard_event.freezed.dart';

@freezed
abstract class CreateGuardEvent with _$CreateGuardEvent {
  const factory CreateGuardEvent.submit({
    @required String name,
    @required String surname,
    @required String employeeID,
  }) = Submit;
}
