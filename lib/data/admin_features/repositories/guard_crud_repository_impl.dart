import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:gracker_app/data/admin_features/datasources/guard_crud_remote_datasource.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:gracker_app/domain/admin_features/repositories/guard_crud_repository.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: Guard_CRUD_Repository)
class Guard_CRUD_Repository_Impl implements Guard_CRUD_Repository {
  final Guard_CRUD_Remote_DataSource guard_CRUD_RemoteDataSource;

  Guard_CRUD_Repository_Impl({@required this.guard_CRUD_RemoteDataSource});

  @override
  Future<Either<Admin_Features_Failure, Unit>> create_Guard(
      User user, String hashedPassword) async {
    try {
      final result = await guard_CRUD_RemoteDataSource.create_guard(
          User_Model.fromUser(user), hashedPassword);
      return Right(result);
    } on OperationFailedException catch (_) {
      return const Left(Admin_Features_Failure.failedToCreateUser());
    }
  }
}
