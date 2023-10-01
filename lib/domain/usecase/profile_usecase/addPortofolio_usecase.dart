
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/profile_model.dart';
class AddPortofolioUseCaseInput {
  String token;
  AddPortofolioUseCaseInput(this.token);
}
class AddPortofolioUseCase
    extends BaseUsecase<AddPortofolioUseCaseInput,AddPortfolio> {
Repository repository;
AddPortofolioUseCase(this.repository);

  @override
  Future<Either<Failure, AddPortfolio>> execute(AddPortofolioUseCaseInput input) {
    return repository.addPortofolio(AddPortofolioRequest(input.token));
  }}