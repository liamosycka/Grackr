import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class User extends Equatable {
  final String username;
  final String plainPassword;
  final int permissionLevel;

  const User(
      {@required this.username,
      @required this.plainPassword,
      @required this.permissionLevel});

  @override
  List<Object> get props => [username, plainPassword, permissionLevel];
}
