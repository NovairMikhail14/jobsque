import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/auth_usecase/forget_password_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this.forgetBPasswordUseCase) : super(ForgetPasswordInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
ForgetBPasswordUseCase forgetBPasswordUseCase;
}
