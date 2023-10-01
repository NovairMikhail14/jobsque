import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/job_usecase/jobID_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'job_id_state.dart';

class JobIdCubit extends Cubit<JobIdState> {
  JobIdCubit(this.jobIDUseCase) : super(JobIdInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  JobIDUseCase jobIDUseCase;
}
