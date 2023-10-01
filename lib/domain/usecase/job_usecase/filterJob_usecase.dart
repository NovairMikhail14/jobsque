
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/job_model.dart';
class FilterJobUseCaseInput {
  String token;
  String name;
  String location;
  String salary;
  FilterJobUseCaseInput(this.token, this.location, this.name, this.salary);
}
class FilterJobUseCase
    extends BaseUsecase<FilterJobUseCaseInput,FilterJob> {
Repository repository;
FilterJobUseCase(this.repository);

  @override
  Future<Either<Failure, FilterJob>> execute(FilterJobUseCaseInput input) {
    return repository.filterJob(FilterJobRequest(input.token, input.location, input.name, input.salary));
  }}