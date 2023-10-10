
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/job_model.dart';
class JobIDUseCaseInput {
  String token;
  String jobId;
  JobIDUseCaseInput(
    this.token,
  this.jobId
  );
}
class JobIDUseCase
    extends BaseUsecase<JobIDUseCaseInput,JobID> {
Repository repository;
JobIDUseCase(this.repository);

  @override
  Future<Either<Failure, JobID>> execute(JobIDUseCaseInput input) {
    return repository.jobID(JobIDRequest(input.token,input.jobId));
  }}