import 'package:dartz/dartz.dart';
import 'package:gracker_app/core/error/failures.dart';

abstract class UseCase<Failure, Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
