import 'package:gracker_app/core/error/failures.dart';

/*
Error and its subclasses are for programmatic errors. If one of those occurs, your code is bad and you should fix your code.

Non-Error exception classes are for runtime errors. Sometimes you can prevent them from being thrown, but often you cannot.

Except in a few special circumstances, idiomatic Dart should throw Errors, but never catch them. They exists specifically to not be caught so that they take down the app and alert the programmer to the location of the bug.
*/

/// Error que crashea la aplicación. El uso de este error es para situaciones
/// críticas donde sucede algo que ES CULPA DEL PROGRAMADOR y por lo tanto necesita
/// ser arreglado. NO es una excepción convencional.
class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure fue: $valueFailure');
  }
}

class NotAuthenticatedError extends Error {}

/// Utilizada de forma global para denotar que un método no se ha implementado
class UnimplementedError implements Exception {}
