
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/education_model.dart';
class ShowAllEducationUseCaseInput {
  String token;
  ShowAllEducationUseCaseInput(this.token);
}
class ShowAllEducationUseCase
    extends BaseUsecase<ShowAllEducationUseCaseInput,ShowAllEducation> {
Repository repository;
ShowAllEducationUseCase(this.repository);

  @override
  Future<Either<Failure, ShowAllEducation>> execute(ShowAllEducationUseCaseInput input) {
    return repository.showEducation(ShowAllEducationRequest(input.token));
  }}