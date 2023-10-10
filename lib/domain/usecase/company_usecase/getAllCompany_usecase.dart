
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';
import '../../model/company_model.dart';
class GetAllCompanyUseCaseInput {
  String token;
  GetAllCompanyUseCaseInput(
    this.token,
  );
}class GetAllCompanyUseCase
    extends BaseUsecase<GetAllCompanyUseCaseInput,GetAllCompany> {
Repository repository;
GetAllCompanyUseCase(this.repository);

  @override
  Future<Either<Failure, GetAllCompany>> execute(GetAllCompanyUseCaseInput input) {
    return repository.getAllCompany(GetAllCompanyRequest(input.token));
  }}
