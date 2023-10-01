
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/favorite_model.dart';
class AddFavoriteUseCaseInput {
  String token;
  String userId;
  String jobId;
  AddFavoriteUseCaseInput(this.token, this.jobId, this.userId);
}
class AddFavoriteUseCase
    extends BaseUsecase<AddFavoriteUseCaseInput,AddFavorite> {
Repository repository;
AddFavoriteUseCase(this.repository);

  @override
  Future<Either<Failure, AddFavorite>> execute(AddFavoriteUseCaseInput input) {
    return repository.addFavorite(AddFavoriteRequest(input.token, input.jobId, input.userId));
  }}