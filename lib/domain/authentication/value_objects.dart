import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';
import 'package:gracker_app/core/value_objects.dart';
import 'package:gracker_app/core/value_validators.dart';

class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory UserName(String input) {
    assert(input != null);
    return UserName._(
      validateTest1(input),
    );
  }
  const UserName._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    assert(input != null);
    return Password._(
      validateTest2(input),
    );
  }
  const Password._(this.value);
}
