import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/favorites_usecase/addFavorite_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'add_favorite_state.dart';

class AddFavoriteCubit extends Cubit<AddFavoriteState> {
  AddFavoriteCubit(this.addFavoriteUseCase) : super(AddFavoriteInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  AddFavoriteUseCase addFavoriteUseCase;
  addFavorite(String userId, String jobId) async {
    final token = await _shearedPref.getAppToken();
    (await addFavoriteUseCase.execute(AddFavoriteUseCaseInput(token!,userId, jobId)))
        .fold((l) {
      return null;
    }, (r) {
      emit(AddFavoriteSucess(r.data?.job?.name, r.data?.job?.image,
          r.data?.job?.jobType, r.data?.job?.expired));
      return null;
    });
  }
}
