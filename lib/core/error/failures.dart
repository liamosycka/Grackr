import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/util/input_converter.dart';
part 'failures.freezed.dart';
//asd

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.shortPassword({@required T failedValue}) =
      ShortPassword<T>;
  const factory ValueFailure.invalidUsername({@required T failedValue}) =
      InvalidUsername<T>;
  const factory ValueFailure.invalidPermissionLevel({@required T failedValue}) =
      InvalidPermissionLevel<T>;

  /// De la clase [InputConverter] Failure que sucede en la clase InputConverter
  /// al momento de querer convertir un string a int que contiene al menos una
  /// ocurrencia no numérica
  const factory ValueFailure.invalidStringToInt({@required T failedValue}) =
      InvalidStringToInt<T>;

  const factory ValueFailure.transformationFailed({@required T failedValue}) =
      TransformationFailed<T>;
}
