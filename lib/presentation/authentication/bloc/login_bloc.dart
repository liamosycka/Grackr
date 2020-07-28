import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/util/input_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:gracker_app/domain/authentication/usecases/get_authenticated.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_event.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_state.dart';
import 'package:injectable/injectable.dart';
import '../../core/blocs/auth_bloc.dart';

@injectable
class Login_Bloc extends Bloc<LoginEvent, LoginState> {
  Get_Authenticated getAuthenticated;
  InputConverter inputConverter;
  Auth_Bloc authBloc;

  Login_Bloc(
      {@required this.getAuthenticated,
      @required this.inputConverter,
      @required this.authBloc})
      : assert(getAuthenticated != null),
        assert(inputConverter != null),
        assert(authBloc != null),
        super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(submit: (e) async* {
      yield state.copyWith(isSubmitting: true);
      final permissionLevel =
          inputConverter.boolToUnsignedInt(value: e.adminCheck);
      final failureOrSuccess = await getAuthenticated.call(
        Params(
          username: e.username,
          plainPassword: e.plainPassword,
          permissionLevel: permissionLevel,
        ),
      );

      yield state.copyWith(
          isSubmitting: false,
          //TODO change name: Failrue => Failure
          authFailrueOrSuccess: optionOf(failureOrSuccess));
    });
  }
}
