import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';

abstract class IUserLocalDataSource {
  /// Throws [NoCachedAuthException] cuando no hay nada almacenado en el SharedPreferences.
  Future<UserDto> getCachedUser();
  Future<void> cacheUser(UserDto userDto);
  Future<void> clearCachedUser();
}
