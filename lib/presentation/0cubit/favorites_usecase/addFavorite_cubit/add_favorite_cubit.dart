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

}
