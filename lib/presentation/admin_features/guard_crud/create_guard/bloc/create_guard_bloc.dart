import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/domain/admin_features/usecases/create_guard.dart';
import 'package:gracker_app/presentation/admin_features/guard_crud/create_guard/bloc/create_guard_event.dart';
import 'package:gracker_app/presentation/admin_features/guard_crud/create_guard/bloc/create_guard_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class Create_Guard_Bloc extends Bloc<CreateGuardEvent, CreateGuardState> {
  Create_Guard createGuard;

  Create_Guard_Bloc({@required this.createGuard})
      : assert(createGuard != null),
        super(CreateGuardState.initial());

  @override
  Stream<CreateGuardState> mapEventToState(CreateGuardEvent event) async* {
    yield* event.map(submit: (e) async* {
      yield state.copyWith(isSubmitting: true);
      final failureOrSuccess = await createGuard.call(
        Params(name: e.name, surname: e.surname, employeeID: e.employeeID),
      );
      yield state.copyWith(
          isSubmitting: false,
          adminFeaturesFailureOrSuccess: optionOf(failureOrSuccess));
    });
  }
}
