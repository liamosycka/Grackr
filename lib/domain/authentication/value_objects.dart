import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';
import 'package:gracker_app/core/value_objects.dart';
import 'package:gracker_app/core/value_validators.dart';

class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory UserName(String input) {
    assert(input != null);
    return UserName._(
      validate_UserName(input),
    );
  }
  const UserName._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    assert(input != null);
    return Password._(
      validate_Password(input),
    );
  }
  const Password._(this.value);
}

class PermissionLevel extends ValueObject<int> {
  static const int noPermissions = -1;
  static const int guard = 0;
  static const int admin = 1;

  static String mapPermissionToString(int permission) {
    var string = 'Rol no identificado';
    switch (permission) {
      case guard:
        string = 'Guardia';
        break;
      case admin:
        string = 'Admin';
        break;
    }
    return string;
  }

  @override
  final Either<ValueFailure<int>, int> value;

  factory PermissionLevel(int input) {
    return PermissionLevel._(
      validate_PermissionLevel(input),
    );
  }
  const PermissionLevel._(this.value);
}
