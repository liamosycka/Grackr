import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/domain/admin_features/usecases/create_guard.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/bloc/create_guard_event.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/bloc/create_guard_state.dart';

class CreateGuardBloc extends Bloc<CreateGuardEvent, CreateGuardState> {
  Create_Guard createGuard;

  CreateGuardBloc({@required this.createGuard})
      : assert(createGuard != null),
        super(
          CreateGuardState.initial(),
        );

  @override
  Stream<CreateGuardState> mapEventToState(CreateGuardEvent event) async* {
    yield* event.map(
      submit: (e) async* {
        UserName currentUser;
        final isNameValid = state.name.isValid();
        final isSurnameValid = state.surname.isValid();
        final isIDValid = state.employeeID.isValid();
        final isPermissionValid = state.employeePermissions.isValid();
        final isCurrentUserValid = state.currentUser.fold(
          () => false,
          (username) {
            currentUser = username;
            return username.isValid();
          },
        );
        Either<Admin_Features_Failure, Unit> failureOrSuccess;
        if (isNameValid &&
            isSurnameValid &&
            isIDValid &&
            isPermissionValid &&
            isCurrentUserValid) {
          yield state.copyWith(
            isSubmitting: true,
          );
          //! Para recordar que hay que reiniciar el Option  ^ con un none() siempre (sino, la notifiacion de Success anterior vuelve a saltar ya que se está copiando el estado)
          failureOrSuccess = await createGuard.call(
            Params(
              name: state.name,
              surname: state.surname,
              employeeID: state.employeeID,
              permissionLevel: state.employeePermissions,
              creatorUsername: currentUser,
            ),
          );
        } else {
          failureOrSuccess =
              const Left(Admin_Features_Failure.failedDomainVerification());
        }
        // TODO: Quitar
        // yield state.copyWith(
        //   isSubmitting: true,
        //   adminFeaturesFailureOrSuccess: none(),
        // );
        // await Future.delayed(Duration(seconds: 3));

        yield state.copyWith(
          isSubmitting: false,
          adminFeaturesFailureOrSuccess: optionOf(failureOrSuccess),
        );
        yield state.copyWith(
          adminFeaturesFailureOrSuccess: none(),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          name: Name_Surname(e.name),
        );
      },
      surnameChanged: (e) async* {
        yield state.copyWith(
          surname: Name_Surname(e.surname),
        );
      },
      idChanged: (e) async* {
        yield state.copyWith(
          employeeID: EmployeeID(e.id),
        );
      },
      employeePermissionsChanged: (e) async* {
        yield state.copyWith(
          employeePermissions: PermissionLevel(e.permissions),
        );
      },
      initialize: (e) async* {
        yield state.copyWith(
          currentUser: some(UserName(e.currentUser)),
        );
      },
    );
  }
}
