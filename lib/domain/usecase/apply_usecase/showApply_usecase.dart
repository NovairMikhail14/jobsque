import 'package:jobsque/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/model/apply_model.dart';

import '../../repository/repository.dart';
import '../base_usecase.dart';

class ShowApplyUseCaseInput {
  String token;
  String userID;
  ShowApplyUseCaseInput(
    this.token,this.userID
  );
}

class ShowApplyUseCase extends BaseUsecase<ShowApplyUseCaseInput, ShowApply> {
  Repository repository;
  ShowApplyUseCase(this.repository);

  @override
  Future<Either<Failure, ShowApply>> execute(ShowApplyUseCaseInput input) {
    return repository.showApply(ShowApplyRequest(input.token,input.userID));
  }
}
