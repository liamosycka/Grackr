import 'package:gracker_app/data/authentication/models/user_model.dart';

abstract class IUserRemoteDataSource {
  Future<String> get_Hashed_Password_If_Exists(User_Model userModel);
}
