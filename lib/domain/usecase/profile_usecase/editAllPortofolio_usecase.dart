
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/profile_model.dart';
class EditPortfolioUseCaseInput {
  String token;
  EditPortfolioUseCaseInput(this.token);
}
class EditPortfolioUseCase
    extends BaseUsecase<EditPortfolioUseCaseInput,EditPortfolio> {
Repository repository;
EditPortfolioUseCase(this.repository);

  @override
  Future<Either<Failure, EditPortfolio>> execute(EditPortfolioUseCaseInput input) {
    return repository.editportofolio(EditPortfolioRequest(input.token));
  }}