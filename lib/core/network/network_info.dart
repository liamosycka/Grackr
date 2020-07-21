import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';

abstract class Network_Info {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements Network_Info {
  final DataConnectionChecker dataConnectionChecker;

  NetworkInfoImpl({@required this.dataConnectionChecker});

  @override
  Future<bool> get isConnected {
    return dataConnectionChecker.hasConnection;
  }
}