
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/apply_model.dart';


class ApplyUseCaseInput {
  String token;
  String name;
  String end;
  String mobile;
  String workType;
  String otherFile;
  String jobsId;
  String userId;
  String reviewed;
  String updatedAt;
  String createdAt;
  String id;
  ApplyUseCaseInput(
      this.token,
      this.otherFile,
      this.createdAt,
      this.end,
      this.id,
      this.jobsId,
      this.mobile,
      this.userId,
      this.name,
      this.reviewed,
      this.updatedAt,
      this.workType);
}

class ApplyUseCase
    extends BaseUsecase<ApplyUseCaseInput,Apply> {
  Repository repository;
  ApplyUseCase(this.repository);

  @override
  Future<Either<Failure, Apply>> execute(ApplyUseCaseInput input) {
    return repository.apply(ApplyRequest(input.token, input.otherFile, input.createdAt, input.end, input.id, input.jobsId, input.mobile, input.userId, input.name, input.reviewed, input.updatedAt, input.workType));
  }}