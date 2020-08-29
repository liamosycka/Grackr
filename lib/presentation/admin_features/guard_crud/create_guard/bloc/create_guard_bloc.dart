import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/domain/admin_features/usecases/create_guard.dart';
import 'package:gracker_app/domain/admin_features/value_objects.dart';
import 'package:gracker_app/presentation/admin_features/guard_crud/create_guard/bloc/create_guard_event.dart';
import 'package:gracker_app/presentation/admin_features/guard_crud/create_guard/bloc/create_guard_state.dart';

class Create_Guard_Bloc extends Bloc<CreateGuardEvent, CreateGuardState> {
  Create_Guard createGuard;

  Create_Guard_Bloc({@required this.createGuard})
      : assert(createGuard != null),
        super(CreateGuardState.initial());

  @override
  Stream<CreateGuardState> mapEventToState(CreateGuardEvent event) async* {
    yield* event.map(submit: (e) async* {
      yield state.copyWith(
          isSubmitting: true, adminFeaturesFailureOrSuccess: none());
      //! Para recordar que hay que reiniciar el Option  ^ con un none() siempre (sino, la notifiacion de Success anterior vuelve a saltar ya que se está copiando el estado)
      final failureOrSuccess = await createGuard.call(
        Params(
            name: Name_Surname(e.name),
            surname: Name_Surname(e.surname),
            employeeID: EmployeeID(e.employeeID)),
      );
      yield state.copyWith(
          isSubmitting: false,
          adminFeaturesFailureOrSuccess: optionOf(failureOrSuccess));
    });
  }
}
