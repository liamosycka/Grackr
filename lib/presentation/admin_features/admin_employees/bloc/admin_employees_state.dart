part of 'admin_employees_bloc.dart';

@freezed
abstract class AdminEmployeesState with _$AdminEmployeesState {
  const factory AdminEmployeesState({
    @required bool isLoadingPreviews,
    @required
        Option<Either<AdminFeaturesFailure, List<EmployeePreview>>>
            failureOrPreviews,
  }) = _AdminEmployeesState;

  factory AdminEmployeesState.initial() => AdminEmployeesState(
        isLoadingPreviews: false,
        failureOrPreviews: none(),
      );
}
