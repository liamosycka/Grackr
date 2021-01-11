import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';

/// Validación de username
Either<ValueFailure<String>, String> validateUserName(String input) {
  // TODO: Ver si faltan/no se necesitan algunas restricciones en el RegEx
  /*
  const emailRegex =
      r"^(?=.{4,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$";
  if (RegExp(emailRegex).hasMatch(input)) {*/
  if (input.length >= 4) {
    // TODO: Volver a normalizar input
    // return right(transformUpperLetterString(input));
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmployeeID(String input) {
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
Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 3) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validatePermissionLevel(int input) {
  if (input == PermissionLevel.admin ||
      input == PermissionLevel.guard ||
      input == PermissionLevel.noPermissions) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPermissionLevel(failedValue: input));
  }
}

Either<TransformationFailure, int> stringToUnsignedInt(String str) {
  try {
    return Right(int.parse(str));
  } on FormatException {
    return Left(TransformationFailure.invalidStringToInt(failedValue: str));
  }
}

int boolToUnsignedInt({bool value}) {
  if (value) {
    return 1;
  } else {
    return 0;
  }
}
