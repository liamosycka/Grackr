import 'package:dartz/dartz.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/presentation/authentication/auth_failures.dart';

abstract class User_Repository {
  Future<Either<AuthFailure, String>> get_Hashed_Password_If_Exists(User user);

  Future<Either<AuthFailure, User>> get_Cached_User();

  //TODO cambiar void por unit
  Future<Either<AuthFailure, void>> cache_User(User user);
}
