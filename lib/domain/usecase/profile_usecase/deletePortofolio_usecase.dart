
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/profile_model.dart';
class DeletePortofoliosUseCaseInput {
  int id;
  String token;
  DeletePortofoliosUseCaseInput(this.token, this.id);
}
class DeletePortofoliosUseCase
    extends BaseUsecase<DeletePortofoliosUseCaseInput,DeletePortfolio> {
Repository repository;
DeletePortofoliosUseCase(this.repository);

  @override
  Future<Either<Failure, DeletePortfolio>> execute(DeletePortofoliosUseCaseInput input) {
    return repository.deletePortofolios(DeletePortofoliosRequest(input.token, input.id));
  }}