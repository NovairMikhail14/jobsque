import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/favorites_usecase/deleteFavorite_usecase.dart';
import 'package:meta/meta.dart';

import '../../../../../app/app_pref.dart';
import '../../../../../app/di.dart';


part 'delete_favorite_state.dart';

class DeleteFavoriteCubit extends Cubit<DeleteFavoriteState> {
  DeleteFavoriteCubit(this.deleteFavoriteUseCase) : super(DeleteFavoriteInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  DeleteFavoriteUseCase deleteFavoriteUseCase;
  deleteFavorite( String jobId) async {
    final token = await _shearedPref.getAppToken();
    (await deleteFavoriteUseCase.execute(DeleteFavoriteCaseInput(token!,jobId,)))
        .fold((l) {
      return null;
    }, (r) {
      emit(DeleteFavoriteSucess());
      return null;
    });
  }
}
