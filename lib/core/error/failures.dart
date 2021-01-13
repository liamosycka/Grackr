import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
part 'failures.freezed.dart';

/**
 * Definicion abstracta de ValueFailure
 * ! Definir en este archivo solo Failures a nivel CORE
 */

/// Utilizados para las clases ValueObject
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.shortPassword({@required T failedValue}) =
      _ShortPassword<T>;
  const factory ValueFailure.invalidUsername({@required T failedValue}) =
      _InvalidUsername<T>;
  const factory ValueFailure.invalidPermissionLevel({@required T failedValue}) =
      _InvalidPermissionLevel<T>;
  const factory ValueFailure.invalidID({@required T failedValue}) =
      _InvalidID<T>;
}

/// Utilizados para los métodos encontrados en [value_transformers.dart]
@freezed
abstract class TransformationFailure<T> with _$TransformationFailure<T> {
  const factory TransformationFailure.invalidStringToInt(
      {@required T failedValue}) = _InvalidStringToInt<T>;

  const factory TransformationFailure.transformationFailed(
      {@required T failedValue}) = _TransformationFailed<T>;
}
