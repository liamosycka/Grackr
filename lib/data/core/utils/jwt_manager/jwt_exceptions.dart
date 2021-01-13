import 'package:freezed_annotation/freezed_annotation.dart';
part 'jwt_exceptions.freezed.dart';

@freezed
abstract class JWTException with _$JWTException implements Exception {
  /// Fallo crítico en la implementacion de JWT al acceder a los tokens que tiene
  /// almacenado en memoria o disco
  const factory JWTException.internal(String responseBody) = _Internal;

  /// Para cuando HttpRequest lanza una excepción
  const factory JWTException.httpService(String responseBody) = _HttpService;

  //? BEGIN STATUS EXCEPTIONS ----------------------
  /// La más generica de todas. Priorizar usar las otras
  const factory JWTException.unexpectedStatus(String responseBody) =
      _UnexpectedStatus;

  const factory JWTException.notFound(String responseBody) = _NotFound;

  const factory JWTException.notAuthenticated(String responseBody) =
      _NotAuthenticated;

  const factory JWTException.forbidden(String responseBody) = _Forbiddden;

  const factory JWTException.invalidFormat(String responseBody) =
      _InvalidFormat;

  //? END STATUS EXCEPTIONS -------------------------

  //! Agregar en [JWTException] la documentacion de cualquier excepcion adicional
  //! que sea agregada aqui :)
}
