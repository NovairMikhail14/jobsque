import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/favorites_usecase/showAllFavorite_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/model/favorite_model.dart';
part 'show_all_favorite_state.dart';

class ShowAllFavoriteCubit extends Cubit<ShowAllFavoriteState> {
  ShowAllFavoriteCubit(this.showAllFavoriteUseCase) : super(ShowAllFavoriteInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
 ShowAllFavoriteUseCase showAllFavoriteUseCase;
  addFavorite(String userId, String jobId) async {
    final token = await _shearedPref.getAppToken();
    (await showAllFavoriteUseCase.execute(ShowAllFavoriteUseCaseInput(token!)))
        .fold((l) {
      return null;
    }, (r) {
      emit(ShowAllFavoriteSucess(r.jobList));
      return null;
    });
  }
}
