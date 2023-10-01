import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/experince_usecase/endExperience_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'end_experience_state.dart';

class EndExperienceCubit extends Cubit<EndExperienceState> {
  EndExperienceCubit(this.endExperienceUseCase) : super(EndExperienceInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
EndExperienceUseCase endExperienceUseCase;
}
