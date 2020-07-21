import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:gracker_app/core/util/input_converter.dart';
part 'failures.freezed.dart';
//asd

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.test1({@required String failedValue}) = Test1<T>;
  const factory ValueFailure.test2({@required String failedValue}) = Test2<T>;

  /// De la clase [InputConverter] Failure que sucede en la clase InputConverter
  /// al momento de querer convertir un string a int que contiene al menos una
  /// ocurrencia no numérica
  const factory ValueFailure.invalidStringToInt(
      {@required String failedValue}) = InvalidStringToInt<T>;
}
