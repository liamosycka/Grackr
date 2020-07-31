import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
part 'user.freezed.dart';

/*
class User extends Equatable {
  final String username;
  final String plainPassword;
  final int permissionLevel;

  const User({
    @required this.username,
    @required this.plainPassword,
    @required this.permissionLevel,
  });

  @override
  List<Object> get props => [username, plainPassword, permissionLevel];
}*/
@freezed
abstract class User with _$User {
  const factory User({
    //@required UniqueID id,
    @required UserName username,
    @required Password password,
    @required int permissionLevel,
  }) = _User;
}
