import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dbcrypt/dbcrypt.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/network/network_info.dart';
import 'package:gracker_app/core/usecases/usecase.dart';
import 'package:gracker_app/domain/core/entities/user.dart';
import 'package:gracker_app/domain/admin_features/repositories/guard_crud_repository.dart';
import 'package:gracker_app/presentation/admin_features/admin_features_failures.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class Create_Guard implements UseCase<Admin_Features_Failure, Unit, Params> {
  final Guard_CRUD_Repository guard_CRUD_Repository;
  final Network_Info networkInfo;
  final DBCrypt dbCrypt;

  Create_Guard(
      {@required this.guard_CRUD_Repository,
      @required this.networkInfo,
      @required this.dbCrypt});

  @override
  Future<Either<Admin_Features_Failure, Unit>> call(Params params) async {
    final String username = "${params.surname}_${params.employeeID}";
    //final list = List(2) as List<String>;
    //_generateStart_End_random(list);
    final String plainPassword =
        // ignore: prefer_interpolation_to_compose_strings
        "123" + params.surname + "_" + params.employeeID;
    //final String plainPassword =
    //   "${list[0]}${params.surname}_${params.employeeID}${list[1]}";
    final user = User(
        username: username, plainPassword: plainPassword, permissionLevel: 0);
    if (await networkInfo.isConnected) {
      final String hashedPass =
          dbCrypt.hashpw(plainPassword, dbCrypt.gensalt());
      final result = await guard_CRUD_Repository.create_Guard(user, hashedPass);
      return result.fold((failure) => Left(failure), (r) => Right(r));
    } else {
      return const Left(Admin_Features_Failure.noInternetConnection());
    }
  }
}

void _generateStart_End_random(List<String> list) {
  String startPass = "";
  String endPass = "";
  for (var i = 0; i <= 4; i++) {
    // ignore: use_string_buffers
    startPass += Random().nextInt(100).toString();
    // ignore: use_string_buffers
    endPass += Random().nextInt(100).toString();
  }
  list[0] = startPass;
  list[1] = endPass;
}

class Params extends Equatable {
  final String name;
  final String surname;
  final String employeeID;

  const Params(
      {@required this.name, @required this.surname, @required this.employeeID});

  @override
  List<Object> get props => [name, surname, employeeID];
}
