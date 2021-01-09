// Pueden expandirse con atributos (ej, mensajes de error) para más información

import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/failures.dart';

class DataBaseException implements Exception {}

class NoCachedAuthException implements Exception {}

class UnimplementedError implements Exception {}

class JWTException implements Exception {
  final String explanation;

  JWTException({@required this.explanation});

  @override
  String toString() {
    return Error.safeToString(explanation);
  }
}

class JWTRefreshTokenExpired implements Exception {}

class CacheException implements Exception {}

class OperationFailedException implements Exception {
  final String explanation;

  OperationFailedException(this.explanation);

  @override
  String toString() {
    return Error.safeToString(explanation);
  }
}

/*
Error and its subclasses are for programmatic errors. If one of those occurs, your code is bad and you should fix your code.

Non-Error exception classes are for runtime errors. Sometimes you can prevent them from being thrown, but often you cannot.

Except in a few special circumstances, idiomatic Dart should throw Errors, but never catch them. They exists specifically to not be caught so that they take down the app and alert the programmer to the location of the bug.
*/

class NotAuthenticatedError extends Error {}

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
