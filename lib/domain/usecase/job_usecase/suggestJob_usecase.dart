
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/job_model.dart';

class SuggestJobUseCaseInput {
  String token;
  SuggestJobUseCaseInput(
    this.token,
  );
}
class SuggestJobUseCase
    extends BaseUsecase<SuggestJobUseCaseInput,SuggestJob> {
Repository repository;
SuggestJobUseCase(this.repository);

  @override
  Future<Either<Failure, SuggestJob>> execute(SuggestJobUseCaseInput input) {
    return repository.suggestJob(SuggestJobRequest(input.token));
  }}