import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'guard_crud_failures.freezed.dart';

@freezed
abstract class Guard_CRUD_Failure with _$Guard_CRUD_Failure {
  /// De la clase [User_Repository_Impl] cuando no hay un [User] almacenado
  /// en la DB con ese 'username'.
  const factory Guard_CRUD_Failure.invalidName({@required String failedValue}) =
      InvalidName;

  const factory Guard_CRUD_Failure.invalidSurname(
      {@required String failedValue}) = InvalidSurname;

  const factory Guard_CRUD_Failure.invalidEmployeeID(
      {@required String failedValue}) = InvalidEmployeeID;

  const factory Guard_CRUD_Failure.noInternetConnection() =
      NoInternetConnection;

  const factory Guard_CRUD_Failure.failedToCreateUser() = FailedToCreateUser;
}
