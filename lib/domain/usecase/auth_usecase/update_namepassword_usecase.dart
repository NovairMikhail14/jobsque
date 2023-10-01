import 'package:jobsque/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/model/auth_models.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';

import '../../repository/repository.dart';

class UpdateNamePasswordUseCase
    extends BaseUsecase<UpdateNamePasswordUseCaseInput, UpdateNamePassword> {
  Repository repository;
  UpdateNamePasswordUseCase(this.repository);
  @override
  Future<Either<Failure, UpdateNamePassword>> execute(
      UpdateNamePasswordUseCaseInput input) {
    return repository.updateNamePassword(
        UpdateNamePasswordRequest(input.token, input.email, input.name));
  }
}

class UpdateNamePasswordUseCaseInput {
  String token;
  String name;
  String email;
  UpdateNamePasswordUseCaseInput(this.token, this.email, this.name);
}
