import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    //@required UniqueID id,
    @required UserName username,
    @required Password password,
    @required PermissionLevel permissionLevel,
  }) = _User;
}
