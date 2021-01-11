import 'package:dartz/dartz.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';

abstract class IUserLocalDataSource {
  /// Throws [NoCachedAuthException] cuando no hay nada almacenado en el SharedPreferences.
  Future<UserDto> getCachedUser();
  Future<Unit> cacheUser(UserDto userDto);
  Future<Unit> clearCachedUser();

  /// Hace una verificación a nivel *Local* de los JWTs actualmente cacheados.
  Future<bool> checkIfAuthenticated();
}
