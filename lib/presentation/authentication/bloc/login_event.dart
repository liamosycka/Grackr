import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_event.freezed.dart';

//asd
@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.submit(
      {@required String username,
      @required String plainPassword,
      @required bool adminCheck,
      bool permissions}) = Submit;
}
