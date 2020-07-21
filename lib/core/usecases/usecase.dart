import 'package:dartz/dartz.dart';

abstract class UseCase<Failure, Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
