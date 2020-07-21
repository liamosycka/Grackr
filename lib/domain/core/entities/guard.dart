import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Guard extends Equatable {
  final String name;
  final String surname;
  final String employeeID;

  const Guard(
      {@required this.name, @required this.surname, @required this.employeeID});

  @override
  List<Object> get props => [name, surname, employeeID];
}
