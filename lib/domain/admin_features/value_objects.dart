import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';
import 'package:gracker_app/core/value_objects.dart';
import 'package:gracker_app/core/value_validators.dart';

class Name_Surname extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Name_Surname(String input) {
    assert(input != null);
    return Name_Surname._(
      validateTest1(input),
    );
  }
  const Name_Surname._(this.value);
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
