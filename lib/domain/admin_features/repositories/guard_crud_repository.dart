import 'package:dartz/dartz.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';

abstract class Guard_CRUD_Repository {
  //TODO aca en realidad habria que devolver el username y la plainpassword generada.
  //TODO Devolver una lista con 2 elementos?
  Future<Either<Admin_Features_Failure, Unit>> create_Guard(
      User user, String hashedPassword);
}
