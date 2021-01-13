import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:gracker_app/core/error/errors.dart';
import 'package:gracker_app/core/value_validators.dart';
import 'error/failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] con el [ValueFailure] correspondiente
  /// La excepción NUNCA debería suceder. Si sucede, entonces hay problemas de verificación en capa de dominio
  T getOrCrash() {
    // id = identity - es lo mismo que escribir (right) => right
    return value.fold((failure) => throw UnexpectedValueError(failure), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'value($value)';
}

class ID extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
  factory ID(int input) {
    assert(input != null);
    return ID._(
      validateID(input),
    );
  }
  const ID._(this.value);
}
