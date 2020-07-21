import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';

//validacion 1
Either<ValueFailure<String>, String> validateTest1(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.test1(failedValue: input));
  }
}

//validacion 2
Either<ValueFailure<String>, String> validateTest2(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.test2(failedValue: input));
  }
}
