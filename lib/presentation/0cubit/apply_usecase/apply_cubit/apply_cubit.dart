import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/usecase/apply_usecase/apply_usecase.dart';

part 'apply_state.dart';

class ApplyCubit extends Cubit<ApplyState> {
  ApplyCubit(this.applyUseCase) : super(ApplyInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  ApplyUseCase applyUseCase;
  
  applyJob(String name,String cvFile,String email,String mobile,String otherFile,String jobsId,String userId ) async {
    final token = await _shearedPref.getAppToken();
    (await applyUseCase.execute(ApplyUseCaseInput(token!, name, cvFile, email, mobile, otherFile, jobsId, userId))).fold((l) {
      return null;
    }, (r) {
      return null;
    });
  }
}
