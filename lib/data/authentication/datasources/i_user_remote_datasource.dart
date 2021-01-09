import 'package:dartz/dartz.dart';
import 'package:gracker_app/data/authentication/models/user_dto.dart';

abstract class IUserRemoteDataSource {
  // Future<String> get_Hashed_Password_If_Exists(UserDto userModel);

  Future<Unit> authenticate(UserDto userDto);

  Future<Unit> getUsers();
}
