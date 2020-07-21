import 'package:flutter/material.dart';
import 'package:gracker_app/core/error/exceptions.dart';
import 'package:gracker_app/data/authentication/models/user_model.dart';
import 'package:gracker_app/data/guard_crud/datasources/guard_crud_remote_datasource.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:gracker_app/domain/guard_crud/repositories/guard_crud_repository.dart';
import 'package:gracker_app/presentation/guard_crud/guard_crud_failures.dart';

class Guard_CRUD_Repository_Impl implements Guard_CRUD_Repository {
  final Guard_CRUD_Remote_DataSource guard_CRUD_RemoteDataSource;

  Guard_CRUD_Repository_Impl({@required this.guard_CRUD_RemoteDataSource});

  @override
  Future<Either<Guard_CRUD_Failure, Unit>> create_Guard(
      User user, hashedPassword) async {
    try {
      final result = await guard_CRUD_RemoteDataSource.create_guard(
          User_Model.fromUser(user), hashedPassword);
      return Right(result);
    } on OperationFailedException catch (e) {
      return Left(Guard_CRUD_Failure.failedToCreateUser());
    }
  }
}
