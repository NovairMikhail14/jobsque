import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/model/job_model.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/model/apply_model.dart';
import '../../../../domain/usecase/apply_usecase/showApply_usecase.dart';
part 'show_apply_state.dart';

class ShowApplyCubit extends Cubit<ShowApplyState> {
  ShowApplyCubit(this.showApplyUseCase) : super(ShowApplyInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  ShowApplyUseCase showApplyUseCase;

  getAllApplied() async{
    final token = await _shearedPref.getAppToken();
    final userId = await _shearedPref.getUserID();
    (await showApplyUseCase.execute(ShowApplyUseCaseInput(token!,userId!))).fold((l) {
      emit(ShowApplyFailed());
      return l.message;
    }, (r) {
      emit(ShowApplySuccess(r.applyListData));
      return null;
    });
}
}
