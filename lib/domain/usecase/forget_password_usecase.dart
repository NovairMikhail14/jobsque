import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../model/models.dart';

class ForgetBPasswordUseCase extends BaseUsecase<ForgetPasswordUseCaseInput,ForgetPassword>{
  Repository repository;
  ForgetBPasswordUseCase(this.repository);
  @override
  Future<Either<Failure, ForgetPassword>> execute(ForgetPasswordUseCaseInput input) async{
    return await repository.forgetPassword(ForgetPasswordRequest(input.email));
  }
}

class ForgetPasswordUseCaseInput {
  String email;
  ForgetPasswordUseCaseInput(this.email);
}