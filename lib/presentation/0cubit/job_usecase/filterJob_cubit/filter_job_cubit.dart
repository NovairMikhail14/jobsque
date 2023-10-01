import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/job_usecase/filterJob_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'filter_job_state.dart';

class FilterJobCubit extends Cubit<FilterJobState> {
  FilterJobCubit(this.filterJobUseCase) : super(FilterJobInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  FilterJobUseCase filterJobUseCase;
}
