import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  /// De la clase [User_Repository_Impl] cuando no hay un [User] almacenado
  /// en la DB con ese 'username'.
  const factory AuthFailure.noUserFoundInDB({@required String failedValue}) =
      NoUserFoundInDB;

  /// De la clase [User_Repository_Impl] cuando no hay un [User] cacheado
  const factory AuthFailure.noCachedUser() = NoCachedUser;

  /// De la clase [Get_Authenticated] cuando la contraseña ingresada
  /// no es correcta
  const factory AuthFailure.noPasswordMatch() = NoPasswordMatch;

  /// De la clase [Get_Authenticated] cuando no se puede establecer la conexión a internet
  /// al momento de tratar de hacer login
  const factory AuthFailure.noInternetConnection() = NoInternetConnection;
}
