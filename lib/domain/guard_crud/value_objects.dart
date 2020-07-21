import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';
import 'package:gracker_app/core/value_objects.dart';
import 'package:gracker_app/core/value_validators.dart';

class Nombre_Apellido extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Nombre_Apellido(String input) {
    assert(input != null);
    return Nombre_Apellido._(
      validateTest1(input),
    );
  }
  const Nombre_Apellido._(this.value);
}

class EmployeeID extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmployeeID(String input) {
    assert(input != null);
    return EmployeeID._(
      validateTest1(input),
    );
  }
  const EmployeeID._(this.value);
}
