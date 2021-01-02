part of 'admin_employees_bloc.dart';

@freezed
abstract class AdminEmployeesEvent with _$AdminEmployeesEvent {
  const factory AdminEmployeesEvent.getPreviews() = GetPreviews;
}
