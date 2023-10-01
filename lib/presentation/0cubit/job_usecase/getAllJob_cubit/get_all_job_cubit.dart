import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/job_usecase/getAllJob_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'get_all_job_state.dart';

class GetAllJobCubit extends Cubit<GetAllJobState> {
  GetAllJobCubit(this.getAllJobUseCase) : super(GetAllJobInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  GetAllJobUseCase getAllJobUseCase;
}
