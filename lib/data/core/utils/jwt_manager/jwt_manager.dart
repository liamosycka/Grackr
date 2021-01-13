import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'jwt_exceptions.dart';

/// Manager encargado de la administración de JWT de la sesión del usuario actual.
///
/// Realiza peticiones, agregando los datos de Autentificación necesarios para sistemas
/// que hacen uso de JWT como modelo de autentificación.
///
/// La expiración del Access Token genera una petición automática al endpoint para
/// ser refrescado. Sin embargo, la expiración del Refresh token no puede ser refrescada
/// autmáticamente, por lo que [JWTException.notAuthenticated] es lanzado.
/// - Throws:
///   - [JWTException.unexpectedStatus] Falla más genérica. No es un error crítico, sino
/// un HttpStatus no discriminado.
///   - [JWTException.notAuthenticated] Cuando el request no se puede llevar a cabo a causa de
/// tokens/credenciales inválidos. Normalmente, porque Refresh token se encuentra expirado.
///   - [JWTException.forbidden] El request no se puede realizar por falta de permisos
/// para el usuario actual.
///   - [JWTException.notFound] La información pedida no fue encontrada en el servidor.
///   - [JWTException.httpService] Falla en el HttpRequest de Dart.
///   - [JWTException.internal] Falla crítica en la implementación de JWT.
class JWTManager {
  JWTManager({
    @required this.sharedPreferences,
    @required this.tokenProviderEndpoint,
  })  : _accessToken = none(),
        _refreshToken = none();

  final SharedPreferences sharedPreferences;
  final String tokenProviderEndpoint;

  Option<String> _accessToken;
  Option<String> _refreshToken;

  static const _accessKey = 'access';
  static const _refreshKey = 'refresh';
  static const String refreshEndpoint = 'refresh/';
  static const String verifyEndpoint = 'verify/';

  /// Conecta con el endpoint enviando los datos [username] y [password] como
  /// parametros de autentificación, reciviendo JWTs expirables para su sesión.
  /// - En caso de [HttpStatus.ok], retorna la información contenida en el token.
  /// - Puede lanzar [JWTException] ante otros HttpStatus. Ver doc de [JWTManager].
  Future<Map<String, dynamic>> authenticateFromUserAndPassword({
    @required String username,
    @required String password,
  }) async {
    http.Response response;
    try {
      response = await http.post(
        tokenProviderEndpoint,
        headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
        body: json.encode({"username": username, "password": password}),
      );
    } on SocketException catch (e) {
      throw JWTException.httpService(e.toString());
    } // Rethrow cualquier otra excepcion

    // Puede lanzar JWTExceptions segun el status
    final jsonBody = _returnJsonResponse(response) as Map<String, dynamic>;
    if (jsonBody.containsKey("access") && jsonBody.containsKey("refresh")) {
      final accessToken = jsonBody["access"] as String;
      final refreshToken = jsonBody["refresh"] as String;
      _cacheAndUpdateTokens(access: accessToken, refresh: refreshToken);
      return JwtDecoder.decode(refreshToken);
    } else {
      throw JWTException.invalidFormat(response.body);
    }
  }

  Future<dynamic> get(String url) async {
    http.Response response;
    final aToken = await _getAccessToken();
    try {
      response = await http.get(
        url,
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
          HttpHeaders.authorizationHeader: "Bearer $aToken"
        },
      );
    } on SocketException catch (e) {
      throw JWTException.httpService(e.toString());
    }
    // Puede lanzar JWTExceptions segun el status
    return _returnJsonResponse(response);
  }

  // Future<http.Response> delete(String url,
  //     {Map<String, String> headers}) async {
  //   // TODO: implement delete
  //   throw UnimplementedError();
  // }
  // Future<http.Response> post(
  //   String url, {
  //   Map<String, String> headers,
  //   dynamic body,
  //   Encoding encoding,
  // }) async {
  //   // TODO: implement post
  //   throw UnimplementedError();
  // }

  // Future<http.Response> put(
  //   String url, {
  //   Map<String, String> headers,
  //   dynamic body,
  //   Encoding encoding,
  // }) async {
  //   // TODO: implement put
  //   throw UnimplementedError();
  // }

  Future<bool> verifyTokenLocally() async {
    try {
      return !JwtDecoder.isExpired(await _getRefreshToken());
    } on JWTException catch (e) {
      return e.maybeMap(
        orElse: () {
          throw e;
        },
        notAuthenticated: (e) => false,
      );
    }
  }

  void clearTokens() {
    try {
      sharedPreferences.remove(_accessKey);
      sharedPreferences.remove(_refreshKey);
      _accessToken = none();
      _refreshToken = none();
    } catch (e) {
      throw const JWTException.internal(
        'Exception eliminando los tokens de la sesión actual.',
      );
    }
  }

  Future<Unit> _cacheAndUpdateTokens({String access, String refresh}) async {
    // TODO: Verificar si importa no hacer await aqui
    try {
      if (access != null) {
        sharedPreferences.setString(_accessKey, access);
        _accessToken = optionOf(access);
      }
      if (refresh != null) {
        sharedPreferences.setString(_refreshKey, refresh);
        _refreshToken = optionOf(refresh);
      }
      return unit;
    } catch (e) {
      throw const JWTException.internal(
        'Exception cacheando los tokens de la sesión actual.',
      );
    }
  }

  /// Busca el Token en la memoria.
  /// - Si no está en memoria, lo busca en el disco.
  /// - Si no está en el disco, no existe una sesión, por lo que se produce [JWTException.notAuthenticated]
  ///   - Si se falla en la obtención del token, se produce [JWTException.internal]
  ///
  /// Al obtener el token, si está expirado, se intenta pedir uno nuevo.
  /// - Si el Refresh token está expirado, o no existe, se produce [JWTException.notAuthenticated]
  ///   - Si se falla en la obtención del token, se produce [JWTException.internal]
  Future<String> _getAccessToken() async {
    final currentAccessToken = _accessTokenLookup();
    return await currentAccessToken.fold(
      () async {
        throw const JWTException.notAuthenticated(
          "No se encontró un Access Token en memoria o disco."
          " Es necesario volver a autenticar al usuario.",
        );
      },
      (token) async {
        if (JwtDecoder.isExpired(token)) {
          return _requestNewAccessToken();
        } else {
          return token;
        }
      },
    );
  }

  /// Busca el Token de la memoria.
  /// - Si no está en memoria, lo busca en el disco.
  /// - Si no está en el disco, no existe una sesión, por lo que se produce [JWTException.notAuthenticated]
  ///   - Si se falla en la obtención del token, se produce [JWTException.internal]
  ///
  /// Al obtener el token, si está expirado, se intenta pedir uno nuevo.
  /// - Si el Refresh token está expirado, o no existe, se produce [JWTException.notAuthenticated]
  ///   - Si se falla en la obtención del token, se produce [JWTException.internal]
  Future<String> _getRefreshToken() async {
    final currentRefreshToken = _refreshTokenLookup();

    return await currentRefreshToken.fold(
      () async {
        throw const JWTException.notAuthenticated(
          "No se encontró un Refresh Token en memoria o disco."
          " Es necesario volver a autenticar al usuario.",
        );
      },
      (token) async {
        if (JwtDecoder.isExpired(token)) {
          throw const JWTException.notAuthenticated(
            "Sesión del Reresh token expirada."
            " Es necesario volver a autenticar al usuario.",
          );
        } else {
          return token;
        }
      },
    );
  }

  /// Busca el Token en la memoria.
  /// - Si no está en memoria, lo busca en el disco.
  /// - Si no está en el disco, colocando none() en memoria en caso de no estar.
  ///   - Si se falla en la obtención del token, se produce [JWTException.internal]
  Option<String> _accessTokenLookup() {
    return _accessToken.fold(
      () {
        try {
          final token = sharedPreferences.getString(_accessKey);
          return (token == null) ? none() : _accessToken = optionOf(token);
        } catch (e) {
          throw JWTException.internal(
              "Exception al acceder al access token en disco: ${e.toString()}");
        }
      },
      (token) => optionOf(token),
    );
  }

  /// Busca el Token en la memoria.
  /// - Si no está en memoria, lo busca en el disco.
  /// - Si no está en el disco, colocando none() en memoria en caso de no estar.
  ///   - Si se falla en la obtención del token, se produce [JWTException.internal]
  Option<String> _refreshTokenLookup() {
    return _refreshToken.fold(
      () {
        try {
          final token = sharedPreferences.getString(_refreshKey);
          return (token == null) ? none() : _refreshToken = optionOf(token);
        } catch (e) {
          throw JWTException.internal(
              "Exception al acceder al refresh token en disco: ${e.toString()}");
        }
      },
      (token) => optionOf(token),
    );
  }

  /// Pide un nuevo access token, haciendo uso del refresh token.
  /// Si se logra, restorna el nuevo access token.
  ///
  /// Si el refresh token:
  ///   - Es expirado o no existe: [JWTException.notAuthenticated]
  ///   - Hay problemas en el accesso: [JWTException.internal]
  Future<String> _requestNewAccessToken() async {
    final currentRefreshToken = await _getRefreshToken();

    http.Response response;
    try {
      response = await http.post(
        '$tokenProviderEndpoint$refreshEndpoint',
        headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
        body: json.encode({"refresh": currentRefreshToken}),
      );
    } on SocketException catch (e) {
      throw JWTException.httpService(e.toString());
    }

    final jsonBody = _returnJsonResponse(response) as Map<String, dynamic>;
    if (jsonBody.containsKey("access")) {
      final newAccessToken = jsonBody["access"] as String;
      _cacheAndUpdateTokens(access: newAccessToken);
      return newAccessToken;
    } else {
      throw JWTException.invalidFormat(response.body);
    }
  }

  /// Retorna el response decodificado como Json si HttpStatus es 2xx
  /// - Throws diversas [JWTException] dependiendo del HttpStatus del response en
  /// caso contrario. Documentar en la descripción de [JWTManager] para mejor acceso
  dynamic _returnJsonResponse(http.Response response) {
    switch (response.statusCode) {
      case HttpStatus.ok: // 200
      case HttpStatus.created: // 201
      case HttpStatus.accepted: // 202
      case HttpStatus.noContent: // 204
        return json.decode(response.body);
      case HttpStatus.notFound: // 404
        throw JWTException.notFound(response.body);
      case HttpStatus.unauthorized: // 401
        throw JWTException.notAuthenticated(response.body);
      case HttpStatus.forbidden: // 403
        throw JWTException.forbidden(response.body);
      case HttpStatus.internalServerError: // 500
      default:
        throw JWTException.unexpectedStatus(
            'Unexpected status communicating with Server. StatusCode: ${response.statusCode}'
            ' Body: ${response.body}');
    }
  }
}
