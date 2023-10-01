
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/profile_model.dart';
class GetAllPortofolioseUseCaseInput {
  String token;
  GetAllPortofolioseUseCaseInput(this.token);
}
class GetAllPortofolioseUseCase
    extends BaseUsecase<GetAllPortofolioseUseCaseInput,GetPortfolios> {
Repository repository;
GetAllPortofolioseUseCase(this.repository);

  @override
  Future<Either<Failure, GetPortfolios>> execute(GetAllPortofolioseUseCaseInput input) {
    return repository.getAllPortofolios(GetAllPortofolioseRequest(input.token));
  }}