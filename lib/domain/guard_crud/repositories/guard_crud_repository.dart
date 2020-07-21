import 'package:dartz/dartz.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/presentation/authentication/auth_failures.dart';
import 'package:gracker_app/presentation/guard_crud/guard_crud_failures.dart';

abstract class Guard_CRUD_Repository {
  Future<Either<Guard_CRUD_Failure, Unit>> create_Guard(
      User user, String hashedPassword);
}
