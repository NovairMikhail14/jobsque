import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/education_usecase/addEducation_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'add_education_state.dart';

class AddEducationCubit extends Cubit<AddEducationState> {
  AddEducationCubit(this.addEducationUseCase) : super(AddEducationInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  AddEducationUseCase addEducationUseCase;

}
