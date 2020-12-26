import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:gracker_app/data/admin_features/datasources/i_guard_remote_datasource.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:gracker_app/domain/admin_features/repositories/i_guard_repository.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';

class Guard_CRUD_Repository_Impl implements IGuardRepository {
  final IGuardRemoteDataSource guard_CRUD_RemoteDataSource;

  Guard_CRUD_Repository_Impl({@required this.guard_CRUD_RemoteDataSource});

  @override
  Future<Either<Admin_Features_Failure, Unit>> create_Guard(
      User user, String hashedPassword) async {
    try {
      final result = await guard_CRUD_RemoteDataSource.create_guard(
        User_Model.fromUser(user),
        hashedPassword,
      );
      return Right(result);
    } on OperationFailedException catch (e) {
      return Left(
        Admin_Features_Failure.failedToCreateUser(failedValue: e.toString()),
      );
    }
  }
}
