import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/education_usecase/showEducation_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'show_education_state.dart';

class ShowEducationCubit extends Cubit<ShowEducationState> {
  ShowEducationCubit(this.showAllEducationUseCase) : super(ShowEducationInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
ShowAllEducationUseCase showAllEducationUseCase;
}
