import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';

/// Transformar un String a una forma Aaaaaa. Por ejemplo, PEDRO -> Pedro
Either<TransformationFailure, String> transformUpperLetterString(String str) {
  try {
    final newStr =
        "${str.substring(0, 1).toUpperCase()}${str.substring(1).toLowerCase()}";
    return Right(newStr);
  } on Exception {
    return Left(
      TransformationFailure.transformationFailed(failedValue: 'param1: $str'),
    );
  }
}

/// Crear un nombre de usuario válido a partir de la información envidada
/// por parámetro
Either<TransformationFailure, UserName> transformIntoUsername(
    String surname, String id) {
  try {
    final username = '${surname}_$id';
    return Right(
      UserName(username),
    );
  } on Exception {
    return Left(
      TransformationFailure.transformationFailed(
          failedValue: 'param1: $surname, param2: $id'),
    );
  }
}

/// Crear una contraseña válida a partir de la información envidada
/// por parámetro
Either<TransformationFailure, Password> transformIntoPassword(String surname) {
  try {
    final pass = '123$surname';
    return Right(
      Password(pass),
    );
  } on Exception {
    return Left(
      TransformationFailure.transformationFailed(
          failedValue: 'param1: $surname'),
    );
  }
}

/// Crear un nombre de usuario válido a partir de la informacióm envidada
/// por parámetro
// Either<ValueFailure<String>, UserName> transformIntoUsername(
//     Name_Surname name, Name_Surname surname, EmployeeID id) {
//   Either<ValueFailure<String>, UserName> failureOrUsername;

//   if (name.isValid() && surname.isValid() && id.isValid()) {
//     final String username = '${surname.getOrCrash()}_${id.getOrCrash()}';
//     failureOrUsername = Right(
//       UserName(username),
//     );
//   } else {
//     failureOrUsername = Left(
//       ValueFailure.transformationFailed(
//         failedValue:
//             'Name: ${name.isValid()} Surname: ${surname.isValid()} EmployeeID: ${id.isValid()}',
//       ),
//     );
//   }

//   return failureOrUsername;
// }
