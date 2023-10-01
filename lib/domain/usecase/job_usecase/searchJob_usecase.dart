
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/job_model.dart';
class SearchJobUseCaseInput {
  String token;
  String name;
  SearchJobUseCaseInput(this.token, this.name);
}
class SearchJobUseCase
    extends BaseUsecase<SearchJobUseCaseInput,SearchJob> {
Repository repository;
SearchJobUseCase(this.repository);

  @override
  Future<Either<Failure, SearchJob>> execute(SearchJobUseCaseInput input) {
    return repository.searchJob(SearchJobRequest(input.token, input.name));
  }}