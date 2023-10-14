
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/apply_model.dart';


class ApplyUseCaseInput {
  String token;
  String name;
  String cvFile;
  String email;
  String mobile;
  String otherFile;
  String jobsId;
  String userId;

  ApplyUseCaseInput(this.token, this.name, this.cvFile, this.email, this.mobile,
      this.otherFile, this.jobsId, this.userId);
}

class ApplyUseCase
    extends BaseUsecase<ApplyUseCaseInput,Apply> {
  Repository repository;
  ApplyUseCase(this.repository);

  @override
  Future<Either<Failure, Apply>> execute(ApplyUseCaseInput input) {
    return repository.apply(ApplyRequest(input.token, input.name, input.cvFile, input.email, input.mobile, input.otherFile, input.jobsId, input.userId));
  }}