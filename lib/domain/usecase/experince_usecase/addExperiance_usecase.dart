
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/experiance_model.dart';
class AddExperienceUseCaseInput {
  String token;
  String userId;
  String typeWork;
  String compName;
  String location;
  String postion;
  String start;
  String end;
  AddExperienceUseCaseInput(
    this.token,
    this.compName,
    this.postion,
    this.end,
    this.location,
    this.start,
    this.typeWork,
    this.userId,
  );
}
class AddExperienceUseCase
    extends BaseUsecase<AddExperienceUseCaseInput,AddExperience> {
Repository repository;
AddExperienceUseCase(this.repository);

  @override
  Future<Either<Failure, AddExperience>> execute(AddExperienceUseCaseInput input) {
    return repository.addExperience(AddExperienceRequest(input.token, input.compName, input.postion, input.end, input.location, input.start, input.typeWork, input.userId));
  }}