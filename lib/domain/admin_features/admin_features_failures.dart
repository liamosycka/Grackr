import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'admin_features_failures.freezed.dart';

@freezed
abstract class AdminFeaturesFailure<T> with _$AdminFeaturesFailure<T> {
  //* ----------------------------------------------------
  //* Failures Comunes
  //* ----------------------------------------------------
  /// Cuando una operación no se logra llevar a cabo a causa de que la sesión
  /// actual se encuentre expirada
  const factory AdminFeaturesFailure.notAuthenticated() = _NotAuthenticated;

  /// Cuando la operación falla. Es el caso más genérico de falla.
  /// !Priorizar utilizar failures más específicos que este
  const factory AdminFeaturesFailure.operationFailed(
      {@required T failedValue}) = _OperationFailed;

  /// Cuando no se puede realizar una acción a causa de falta de internet
  const factory AdminFeaturesFailure.noInternetConnection() =
      _NoInternetConnection<T>;

  /// Cuando parámetros ingresados por el usuario fallan la verificación de
  /// dominio en cuanto a sus valores
  const factory AdminFeaturesFailure.failedDomainVerification() =
      _FailedDomainVerification<T>;

  //* ----------------------------------------------------
  //* Failures Particulares
  //* ----------------------------------------------------

  const factory AdminFeaturesFailure.noUsersFound() = NoUsersFound;
}
