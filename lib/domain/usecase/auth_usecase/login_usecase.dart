import 'package:jobsque/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/repository/repository.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import '../../model/auth_models.dart';

class LoginUseCase implements BaseUsecase<LoginUseCaseInput, Authentication> {
  Repository repository;
  LoginUseCase(this.repository);
  @override
  Future<Either<Failure, Authentication>> execute(
      LoginUseCaseInput input) async {
    return await repository.login(LoginRequest(input.email, input.password));
  }
}

class LoginUseCaseInput {
  String email;
  String password;
  LoginUseCaseInput(this.email, this.password);
}
