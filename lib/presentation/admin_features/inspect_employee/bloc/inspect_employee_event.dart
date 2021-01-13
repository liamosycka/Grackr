part of 'inspect_employee_bloc.dart';

@freezed
abstract class InspectEmployeeEvent with _$InspectEmployeeEvent {
  const factory InspectEmployeeEvent.initialize({@required int id}) =
      Initialize;
  const factory InspectEmployeeEvent.delete() = Delete;
}
