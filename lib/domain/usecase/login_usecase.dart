import 'package:jobsque/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/model/models.dart';
import 'package:jobsque/domain/repository/repository.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';

class LoginUsecase implements BaseUsecase<LoginUsecaseInput, Authentication> {
  Repository repository;
  LoginUsecase(this.repository);
  @override
  Future<Either<Failure, Authentication>> execute(
      LoginUsecaseInput input) async {
    return await repository.login(LoginRequest(input.email, input.password));
  }
}

class LoginUsecaseInput {
  String email;
  String password;
  LoginUsecaseInput(this.email, this.password);
}
