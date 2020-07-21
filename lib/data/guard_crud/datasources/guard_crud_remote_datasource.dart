import 'package:dartz/dartz.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:gracker_app/presentation/guard_crud/guard_crud_failures.dart';

abstract class Guard_CRUD_Remote_DataSource {
  Future<Unit> create_guard(User_Model userModel, String hashedPassword);
}
