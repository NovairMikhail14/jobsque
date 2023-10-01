import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/experince_usecase/addExperiance_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'add_experiance_state.dart';

class AddExperianceCubit extends Cubit<AddExperianceState> {
  AddExperianceCubit(this.addExperienceUseCase) : super(AddExperianceInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  AddExperienceUseCase addExperienceUseCase;
}
