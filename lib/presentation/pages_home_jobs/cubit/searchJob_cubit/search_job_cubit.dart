import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/job_usecase/searchJob_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/model/job_model.dart';
part 'search_job_state.dart';

class SearchJobCubit extends Cubit<SearchJobState> {
  SearchJobCubit(this.searchJobUseCase) : super(SearchJobInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  SearchJobUseCase searchJobUseCase;
  List<Job> listJobs=[];
  searchJob(String name ) async{
    String? token = await _shearedPref.getAppToken();
    (await searchJobUseCase.execute(SearchJobUseCaseInput(token!, name))).fold((l) {
      emit(SearchJobFailed());
      return null;
    }, (r) {
      emit(SearchJobSuccess(r.job));
      listJobs = r.job;
      return r.job;
    });
  }
}
