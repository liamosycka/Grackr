import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';

class InputConverter {
  Either<ValueFailure, int> stringToUnsignedInt(String str) {
    try {
      return Right(int.parse(str));
    } on FormatException {
      return Left(ValueFailure.invalidStringToInt(failedValue: str));
    }
  }

  int boolToUnsignedInt(bool boolean) {
    if (boolean) {
      return 1;
    } else {
      return 0;
    }
  }
}
