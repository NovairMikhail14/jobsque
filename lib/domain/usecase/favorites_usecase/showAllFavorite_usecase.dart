
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/favorite_model.dart';

class ShowAllFavoriteUseCaseInput {
  String token;
  String userId;
  String jobId;
  ShowAllFavoriteUseCaseInput(this.token, this.jobId, this.userId);
}
class ShowAllFavoriteUseCase
    extends BaseUsecase<ShowAllFavoriteUseCaseInput,ShowAllFavorite> {
Repository repository;
ShowAllFavoriteUseCase(this.repository);

  @override
  Future<Either<Failure, ShowAllFavorite>> execute(ShowAllFavoriteUseCaseInput input) {
    return repository.showAllFavorite(ShowAllFavoriteRequest(input.token, input.jobId, input.userId));
  }}