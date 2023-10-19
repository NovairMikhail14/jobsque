import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';
import '../../model/auth_models.dart';

class ForgetBPasswordUseCase
    extends BaseUsecase<ForgetPasswordUseCaseInput, ForgetPassword> {
  Repository repository;
  ForgetBPasswordUseCase(this.repository);
  @override
  Future<Either<Failure, ForgetPassword>> execute(
      ForgetPasswordUseCaseInput input) async {
    return await repository.forgetPassword(ForgetPasswordRequest(input.token, input.email));
  }
}

class ForgetPasswordUseCaseInput {
  String token;
  String email;
  ForgetPasswordUseCaseInput(this.token, this.email);
}
