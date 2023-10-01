import 'package:jobsque/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import '../../model/auth_models.dart';
import '../../repository/repository.dart';

class RegisterUseCase implements BaseUsecase<RegisterUseCaseInput, Register> {
  Repository repository;
  RegisterUseCase(this.repository);
  @override
  Future<Either<Failure, Register>> execute(RegisterUseCaseInput input) async {
    return await repository
        .register(RegisterRequest(input.email, input.password, input.name));
  }
}

class RegisterUseCaseInput {
  String name;
  String email;
  String password;
  RegisterUseCaseInput(this.email, this.name, this.password);
}
