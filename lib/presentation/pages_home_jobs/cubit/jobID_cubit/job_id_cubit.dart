import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/job_usecase/jobID_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/model/job_model.dart';
part 'job_id_state.dart';

class JobIdCubit extends Cubit<JobIdState> {
  JobIdCubit(this.jobIDUseCase) : super(JobIdInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  JobIDUseCase jobIDUseCase;
  int index = 0;

  getJobById(String id) async {
    String? token = await _shearedPref.getAppToken();
    (await jobIDUseCase.execute(JobIDUseCaseInput(token!,id))).fold((l) {
      emit(JobIdFailed());
      return l;
    }, (r) {
      emit(JobIdSuccess(r.job!,index));
      return r;
    });
  }
}
