part of 'inspect_employee_bloc.dart';

@freezed
abstract class InspectEmployeeState with _$InspectEmployeeState {
  const factory InspectEmployeeState({
    @required ID id,
    @required UserName username,
    @required Option<DateTime> creationDateTime,
    @required UserName creatorUsername,
    @required bool isLoading,
    @required Option<Either<AdminFeaturesFailure, Unit>> failureOrSuccess,
  }) = _InspectEmployeeState;

  factory InspectEmployeeState.initial() => InspectEmployeeState(
        id: ID(-1),
        isLoading: false,
        username: UserName(''),
        creationDateTime: none(),
        creatorUsername: UserName(''),
        failureOrSuccess: none(),
      );
}
