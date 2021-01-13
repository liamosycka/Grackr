import 'package:dartz/dartz.dart';
import 'package:gracker_app/data/core/models/user_dto.dart';

abstract class IUserRemoteDataSource {
  // Future<String> get_Hashed_Password_If_Exists(UserDto userModel);

  Future<Unit> authenticate(UserDto userDto);

  /// Hace una verificación *Remota* con el servidor para verificar
  /// si la sesión actual es válida
  Future<bool> checkIfAuthenticated();
}
