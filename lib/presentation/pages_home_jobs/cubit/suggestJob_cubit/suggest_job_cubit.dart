import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/job_usecase/suggestJob_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'suggest_job_state.dart';

class SuggestJobCubit extends Cubit<SuggestJobState> {
  SuggestJobCubit(this.suggestJobUseCase) : super(SuggestJobInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  SuggestJobUseCase suggestJobUseCase;
}
