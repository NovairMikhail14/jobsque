import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';

abstract class BaseUsecase<Input, Output> {
  Future<Either<Failure, Output>> execute(Input input);
}
