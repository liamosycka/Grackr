import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class InputConverter {
  Either<ValueFailure, int> stringToUnsignedInt(String str) {
    try {
      return Right(int.parse(str));
    } on FormatException {
      return Left(ValueFailure.invalidStringToInt(failedValue: str));
    }
  }

  int boolToUnsignedInt({bool value}) {
    if (value) {
      return 1;
    } else {
      return 0;
    }
  }
}
