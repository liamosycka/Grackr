import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/errors.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  Future<Map<String, dynamic>> authenticateFromUserAndPassword({
    @required String username,
    @required String password,
  }) async {
    try {
      final http.Response response = await http.post(
        tokenProviderEndpoint,
        headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
        body: json.encode({"username": username, "password": password}),
      );
      if (response.statusCode == HttpStatus.ok) {
        final jsonBody = json.decode(response.body) as Map<String, dynamic>;
        final accessToken = jsonBody["access"] as String;
        final refreshToken = jsonBody["refresh"] as String;
        _cacheAndUpdateTokens(access: accessToken, refresh: refreshToken);
        return JwtDecoder.decode(refreshToken);
      } else {
        throw JWTException(
            explanation:
                'Error autenticando el usuario. Status: ${response.statusCode}');
      }
    } on Exception {
      rethrow;
    }
  }

  Future<http.Response> delete(String url,
      {Map<String, String> headers}) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  Future<http.Response> get(String url, {Map<String, String> headers}) async {
    try {
      final aToken = await _getAccessToken();
      final http.Response response = await http.get(
        url,
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
          HttpHeaders.authorizationHeader: "Bearer $aToken"
        },
      );
      if (response.statusCode == HttpStatus.ok) {
        return response;
      } else {
        throw JWTException(
            explanation: 'Error en el request. ${response.reasonPhrase}');
      }
    } on Exception {
      rethrow;
    }
  }

  Future<http.Response> post(
    String url, {
    Map<String, String> headers,
    dynamic body,
    Encoding encoding,
  }) async {
    // TODO: implement post
    throw UnimplementedError();
  }

  Future<http.Response> put(
    String url, {
    Map<String, String> headers,
    dynamic body,
    Encoding encoding,
  }) async {
    // TODO: implement put
    throw UnimplementedError();
  }

  Future<bool> verifyTokenLocally() async {
    try {
      JwtDecoder.isExpired(await _getRefreshToken());
      return true;
    } on JWTRefreshTokenExpired {
      return false;
    }
  }

  Future<bool> verifyTokenRemotely() async {
    String rToken;
    try {
      try {
        rToken = await _getRefreshToken();
      } on JWTRefreshTokenExpired {
        return false;
      }
      final http.Response response = await http.post(
        '$tokenProviderEndpoint$verifyEndpoint',
        headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
        body: json.encode({"token": rToken}),
      );
      return response.statusCode == HttpStatus.ok;
    } on Exception {
      return false;
    }
  }

  void clearTokens() {
    sharedPreferences.remove(_accessKey);
    sharedPreferences.remove(_refreshKey);
    _accessToken = none();
    _refreshToken = none();
  }

  Future<Unit> _cacheAndUpdateTokens({String access, String refresh}) async {
    // TODO: Verificar si importa no hacer await aqui
    if (access != null) {
      sharedPreferences.setString(_accessKey, access);
      _accessToken = optionOf(access);
      print('Cacheado Access: $access');
    }
    if (refresh != null) {
      sharedPreferences.setString(_refreshKey, refresh);
      _refreshToken = optionOf(refresh);
      print('Cacheado Refresh: $refresh');
    }
    return unit;
  }

  Future<String> _getAccessToken() async {
    print('Accedido Access');
    try {
      final currentToken = _accessTokenLookup();
      return await currentToken.fold(
        () async {
          return _requestNewAccessToken();
        },
        (token) async {
          if (JwtDecoder.isExpired(token)) {
            return _requestNewAccessToken();
          } else {
            return token;
          }
        },
      );
    } on JWTRefreshTokenExpired {
      rethrow;
    } on Exception catch (e) {
      throw JWTException(explanation: "Exception en JWT: ${e.toString()}");
    }
  }

  Future<String> _getRefreshToken() async {
    print('Accedido Refresh');
    try {
      final currentToken = _refreshTokenLookup();
      return await currentToken.fold(
        () async {
          throw JWTRefreshTokenExpired();
        },
        (token) async {
          if (JwtDecoder.isExpired(token)) {
            print('EXPIRADISIMO');
            throw JWTRefreshTokenExpired();
          } else {
            return token;
          }
        },
      );
    } on JWTRefreshTokenExpired {
      rethrow;
    } on Exception catch (e) {
      throw JWTException(explanation: "Exception en JWT: ${e.toString()}");
    }
  }

  Option<String> _accessTokenLookup() {
    return _accessToken.fold(
      () {
        // Busca el token en la cache
        try {
          final token = sharedPreferences.getString(_accessKey);
          print('Access tomado desde disco');
          return (token == null) ? none() : _accessToken = optionOf(token);
        } on Exception catch (e) {
          throw JWTException(explanation: "Exception en JWT: ${e.toString()}");
        }
      },
      (token) {
        print('Access tomado desde memoria');
        return optionOf(token);
      },
    );
  }

  Option<String> _refreshTokenLookup() {
    return _refreshToken.fold(
      () {
        // Busca el token en la cache
        try {
          final token = sharedPreferences.getString(_refreshKey);
          return (token == null) ? none() : _refreshToken = optionOf(token);
        } on Exception catch (e) {
          throw JWTException(explanation: "Exception en JWT: ${e.toString()}");
        }
      },
      (token) => optionOf(token),
    );
  }

  Future<String> _requestNewAccessToken() async {
    final rToken = await _getRefreshToken();
    print('Se pide un nuevo Access');

    final http.Response response = await http.post(
      '$tokenProviderEndpoint$refreshEndpoint',
      headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
      body: json.encode({"refresh": rToken}),
    );
    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonBody = json.decode(response.body) as Map<String, dynamic>;
        final aToken = jsonBody["access"] as String;
        _cacheAndUpdateTokens(access: aToken);
        return aToken;
        break;
      default:
        throw JWTException(explanation: 'Token invalido');
    }
  }
}
