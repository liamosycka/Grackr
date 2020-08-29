import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';

abstract class User_Local_DataSource {
  /// Throws [NoCachedAuthException] cuando no hay nada almacenado en el SharedPreferences.
  Future<User_Model> get_Cached_User();
  Future<void> cache_User(User_Model userModel);
  Future<void> clear_Cached_User();
}
