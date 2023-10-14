
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/favorite_model.dart';
class DeleteFavoriteCaseInput {
  String token;
  String idJob;
  DeleteFavoriteCaseInput(this.token, this.idJob,);
}
class DeleteFavoriteUseCase
    extends BaseUsecase<DeleteFavoriteCaseInput,DeleteFavorite> {
Repository repository;
DeleteFavoriteUseCase(this.repository);

  @override
  Future<Either<Failure, DeleteFavorite>> execute(DeleteCaseInput input) {
    return repository.deleteFavorite(DeleteFavoriteRequest(input.token, input.idJob));
  }}