import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gracker_app/domain/admin_features/usecases/delete_employee.dart'
    as uc_delete;
import 'package:gracker_app/domain/admin_features/usecases/get_employee_info.dart'
    as uc_get;
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/domain/admin_features/admin_features_failures.dart';

part 'inspect_employee_state.dart';
part 'inspect_employee_event.dart';
part 'inspect_employee_bloc.freezed.dart';

class InspectEmployeeBloc
    extends Bloc<InspectEmployeeEvent, InspectEmployeeState> {
  InspectEmployeeBloc(
      {@required this.deleteEmployee, @required this.getEmployeeInfo})
      : super(InspectEmployeeState.initial());

  final uc_delete.Delete_Employee deleteEmployee;
  final uc_get.Get_Employee_Info getEmployeeInfo;

  @override
  Stream<InspectEmployeeState> mapEventToState(
      InspectEmployeeEvent event) async* {
    yield* event.map(
      delete: (e) async* {
        Either<AdminFeaturesFailure, Unit> failureOrSuccess;
        final isIdValid = state.employeeID.isValid();
        if (isIdValid) {
          yield state.copyWith(
            isLoading: true,
          );
          failureOrSuccess = await deleteEmployee(
              uc_delete.Params(employeeID: state.employeeID));
        } else {
          failureOrSuccess =
              const Left(AdminFeaturesFailure.failedDomainVerification());
        }

        yield state.copyWith(
          isLoading: false,
          failureOrSuccess: optionOf(failureOrSuccess),
        );

        yield state.copyWith(
          failureOrSuccess: none(),
        );
      },
      initialize: (e) async* {
        // TODO: Considerar casos de error. Reworkear el estado y qué hace la UI
        final id = EmployeeID(e.employeeId);
        final isIdValid = id.isValid();

        if (isIdValid) {
          final failureOrInfo =
              await getEmployeeInfo.call(uc_get.Params(employeeID: id));
          yield failureOrInfo.fold(
              (_) => state,
              (info) => state.copyWith(
                    employeeID: id,
                    username: info.username,
                    creationDateTime: optionOf(info.creationDateTime),
                    creatorUsername: info.creatorUsername,
                  ));
        }
      },
    );
  }
}
