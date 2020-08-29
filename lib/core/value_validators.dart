import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';
import 'package:gracker_app/core/value_transformers.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';

// Validación de username
Either<ValueFailure<String>, String> validate_UserName(String input) {
  // TODO: Ver si faltan/no se necesitan algunas restricciones en el RegEx
  /*
  const emailRegex =
      r"^(?=.{4,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$";
  if (RegExp(emailRegex).hasMatch(input)) {*/
  if (input.length >= 4) {
    return right(Value_Transformer.transform_String(input));
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validate_EmployeeID(String input) {
  // TODO: Ver si faltan/no se necesitan algunas restricciones en el RegEx
  /*const emailRegex = r"^([A-Za-z]{2,}-\d+;)+$"; // Expresion de tipo ab-1234...
  if (RegExp(emailRegex).hasMatch(input)) {*/
  if (input.length >= 4) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

// Validación de contraseña
Either<ValueFailure<String>, String> validate_Password(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validate_PermissionLevel(int input) {
  if (input == PermissionLevel.admin || input == PermissionLevel.guard) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPermissionLevel(failedValue: input));
  }
}
