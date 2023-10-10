import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/job_usecase/getAllJob_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/model/job_model.dart';
part 'get_all_job_state.dart';

class GetAllJobCubit extends Cubit<GetAllJobState> {
  GetAllJobCubit(this.getAllJobUseCase) : super(GetAllJobInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  GetAllJobUseCase getAllJobUseCase;
  List<Job> jobList=[];

  getAllJobs() async {
    String? token = await _shearedPref.getAppToken();
    (await getAllJobUseCase.execute(GetAllJobUseCaseInput(token!))).fold((l) {
      emit(GetAllJobFailed());
      return l;
    }, (r) {
      jobList = r.jobList;
      emit(GetAllJobSuccess());
      return r.jobList;
    });
  }
}
