
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/education_model.dart';
class AddEducationUseCaseInput {
  String token;
  String universty;
  String title;
  String start;
  String userId;
  String end;
  String userIdl;
  String profileId;
  AddEducationUseCaseInput(this.token, this.userId, this.start, this.end,
      this.profileId, this.title, this.universty, this.userIdl);
}
class AddEducationUseCase
    extends BaseUsecase<AddEducationUseCaseInput,AddEducation> {
Repository repository;
AddEducationUseCase(this.repository);

  @override
  Future<Either<Failure, AddEducation>> execute(AddEducationUseCaseInput input) {
 return repository.addEducation(AddEducationRequest(input.token, input.userId, input.start, input.end, input.profileId, input.title, input.universty, input.userIdl));
  }}