import 'package:jobsque/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/presentation/profile/profile_view.dart';

import '../model/auth_models.dart';
import '../repository/repository.dart';

class ProfileUseCase
    implements BaseUsecase<ProfileViewUseCaseInput, ProfilePage> {
  Repository repository;
  ProfileUseCase(this.repository);

  @override
  Future<Either<Failure, ProfilePage>> execute(ProfileViewUseCaseInput input) {
    return repository.profilePage(ProfileViewRequest());
  }
}

class ProfileViewUseCaseInput {}
