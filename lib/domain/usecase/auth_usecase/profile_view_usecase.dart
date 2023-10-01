import 'package:jobsque/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import '../../model/auth_models.dart';
import '../../repository/repository.dart';

class ProfileUseCase
    implements BaseUsecase<ProfileViewUseCaseInput, ProfileDataView> {
  Repository repository;
  ProfileUseCase(this.repository);
  @override
  Future<Either<Failure, ProfileDataView>> execute(
      ProfileViewUseCaseInput input) {
    return repository.profileDataView(ProfileViewRequest(input.token));
  }
}

class ProfileViewUseCaseInput {
  String token;
  ProfileViewUseCaseInput(this.token);
}
