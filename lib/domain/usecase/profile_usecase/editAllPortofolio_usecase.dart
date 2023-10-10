import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/profile_model.dart';

class EditPortfolioUseCaseInput {
  String? token;
  String? bio;
  String? address;
  String? mobile;
  String? language;
  String? interested_work;
  String? offline_place;
  String? remote_place;
  String? experience;
  String? personal_detailed;
  String? education;

  EditPortfolioUseCaseInput(this.token,
      {this.bio,
      this.address,
      this.mobile,
      this.language,
      this.interested_work,
      this.offline_place,
      this.remote_place,
      this.experience,
      this.personal_detailed,
      this.education});
}

class EditPortfolioUseCase
    extends BaseUsecase<EditPortfolioUseCaseInput, EditPortfolio> {
  Repository repository;

  EditPortfolioUseCase(this.repository);

  @override
  Future<Either<Failure, EditPortfolio>> execute(
      EditPortfolioUseCaseInput input) {
    return repository.editportofolio(EditPortfolioRequest(
      input.token,
      input.bio,
      input.address,
      input.mobile,
      input.experience,
      input.education,
      input.language,
      input.interested_work,
      input.offline_place,
      input.personal_detailed,
      input.remote_place,
    ));
  }
}
