import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/domain/core/entities/user.dart';

part 'auth_failures.freezed.dart';

/// Failures que pueden generarse en el feature the Auth
@freezed
abstract class AuthFailure<T> with _$AuthFailure<T> {
  //* ----------------------------------------------------
  //* Failures Comunes
  //* ----------------------------------------------------
  /// Cuando una operación no se logra llevar a cabo a causa de que la sesión
  /// actual se encuentre expirada
  const factory AuthFailure.notAuthenticated() = _NotAuthenticated;

  /// Cuando la operación falla. Es el caso más genérico de falla.
  /// !Priorizar utilizar failures más específicos que este
  const factory AuthFailure.operationFailed({@required T failedValue}) =
      _OperationFailed;

  /// Cuando no se puede realizar una acción a causa de falta de internet
  const factory AuthFailure.noInternetConnection() = _NoInternetConnection<T>;

  /// Cuando parámetros ingresados por el usuario fallan la verificación de
  /// dominio en cuanto a sus valores
  const factory AuthFailure.failedDomainVerification() =
      _FailedDomainVerification<T>;

  //* ----------------------------------------------------
  //* Failures Particulares
  //* ----------------------------------------------------

  /// Cuando existe un usuario cacheado pero su sesión ha expirado
  /// Contiene el [User] buscado
  const factory AuthFailure.sessionExpired({@required User user}) =
      _SessionExpired<T>;

  /// Cuando se accede al cache por el usuario y éste no existe
  const factory AuthFailure.noCachedUser({T failedValue}) = _NoCachedUser<T>;

  /// Error genérico generado tras interactuar con el cache y éste lanzando una
  /// excepción. Contiene un [failedValue] con más información
  const factory AuthFailure.cacheFailure({@required T failedValue}) =
      _CacheFailure<T>;
}
