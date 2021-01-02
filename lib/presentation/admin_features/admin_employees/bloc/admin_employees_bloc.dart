import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_preview.dart';
import 'package:gracker_app/domain/admin_features/usecases/get_all_employee_previews.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';

part 'admin_employees_state.dart';
part 'admin_employees_event.dart';
part 'admin_employees_bloc.freezed.dart';

class AdminEmployeesBloc
    extends Bloc<AdminEmployeesEvent, AdminEmployeesState> {
  AdminEmployeesBloc({@required this.getAllGuardPreviews})
      : super(AdminEmployeesState.initial());

  final Get_All_Employee_Previews getAllGuardPreviews;

  @override
  Stream<AdminEmployeesState> mapEventToState(
      AdminEmployeesEvent event) async* {
    yield* event.map(
      getPreviews: (e) async* {
        yield state.copyWith(
          isLoadingPreviews: true,
        );

        final failureOrPreviews =
            await getAllGuardPreviews.call(const Params());

        yield state.copyWith(
          isLoadingPreviews: false,
          failureOrPreviews: optionOf(failureOrPreviews),
        );
      },
    );
  }
}
