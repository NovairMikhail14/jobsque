import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/usecase/apply_usecase/showApply_usecase.dart';
part 'show_apply_state.dart';

class ShowApplyCubit extends Cubit<ShowApplyState> {
  ShowApplyCubit(this.showApplyUseCase) : super(ShowApplyInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  ShowApplyUseCase showApplyUseCase;

  fetAllApplied() async{
    final token = await _shearedPref.getAppToken();
    (await showApplyUseCase.execute(ShowApplyUseCaseInput(token!))).fold((l) => null, (r) => null);
}
}
