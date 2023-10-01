import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/auth_usecase/profile_view_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'profile_view_state.dart';

class ProfileViewCubit extends Cubit<ProfileViewState> {
  ProfileViewCubit(this.profileUseCase) : super(ProfileViewInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
ProfileUseCase profileUseCase;
}
