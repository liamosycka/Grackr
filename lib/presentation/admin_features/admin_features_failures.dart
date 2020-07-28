import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'admin_features_failures.freezed.dart';

@freezed
abstract class Admin_Features_Failure with _$Admin_Features_Failure {
  /// De la clase [User_Repository_Impl] cuando no hay un [User] almacenado
  /// en la DB con ese 'username'.
  const factory Admin_Features_Failure.invalidName(
      {@required String failedValue}) = InvalidName;

  const factory Admin_Features_Failure.invalidSurname(
      {@required String failedValue}) = InvalidSurname;

  const factory Admin_Features_Failure.invalidEmployeeID(
      {@required String failedValue}) = InvalidEmployeeID;

  const factory Admin_Features_Failure.noInternetConnection() =
      NoInternetConnection;

  const factory Admin_Features_Failure.failedToCreateUser() =
      FailedToCreateUser;
}
