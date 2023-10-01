
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/job_model.dart';
class GetAllJobUseCaseInput {
  String token;
  GetAllJobUseCaseInput(
    this.token,
  );
}
class GetAllJobUseCase
    extends BaseUsecase<GetAllJobUseCaseInput,GetAllJob> {
Repository repository;
GetAllJobUseCase(this.repository);

  @override
  Future<Either<Failure, GetAllJob>> execute(GetAllJobUseCaseInput input) {
    return repository.getAllJob(GetAllJobRequest(input.token));
  }}