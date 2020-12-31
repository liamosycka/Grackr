import 'package:gracker_app/domain/authentication/value_objects.dart';

/// Transformar un String a una forma Aaaaaa. Por ejemplo, PEDRO -> Pedro
String transformUpperLetterString(String str) {
  return "${str.substring(0, 1).toUpperCase()}${str.substring(1).toLowerCase()}";
}

/// Crear un nombre de usuario válido a partir de la información envidada
/// por parámetro
UserName transformIntoUsername(String surname, String id) {
  final username = '${surname}_$id';

  return UserName(username);
}

/// Crear una contraseña válida a partir de la información envidada
/// por parámetro
Password transformIntoPassword(String surname) {
  final pass = '123$surname';

  return Password(pass);
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
