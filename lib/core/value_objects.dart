import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:uuid/uuid.dart';

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

class UniqueID extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  /// Se busca garantizar que el ID sea único, por lo que el constructor genera el ID único haciendo uso de UUID RFC4122
  factory UniqueID() {
    return UniqueID._(
      // Usando UUID, se garantiza un ID único. Se usa el v1() para que sea basado en tiempo, mientras que v4() es random
      Right(Uuid().v1()),
    );
  }

  /// El String DEBE SER UN ID ÚNICO. Se confía en que nunca se use este factory con parametro no único
  factory UniqueID.fromUniqueString(String uniqueID) {
    assert(uniqueID != null);
    return UniqueID._(
      Right(uniqueID),
    );
  }

  const UniqueID._(this.value);
}
