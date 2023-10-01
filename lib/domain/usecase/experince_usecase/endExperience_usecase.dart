
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/experiance_model.dart';

class EndExperienceUseCaseInput {
  String token;
  String end;
  EndExperienceUseCaseInput(this.token, this.end);
}
class EndExperienceUseCase
    extends BaseUsecase<EndExperienceUseCaseInput,EndExperience> {
Repository repository;
EndExperienceUseCase(this.repository);

  @override
  Future<Either<Failure, EndExperience>> execute(EndExperienceUseCaseInput input) {
    return repository.endExperience(EndExperienceRequest(input.token, input.end));
  }}