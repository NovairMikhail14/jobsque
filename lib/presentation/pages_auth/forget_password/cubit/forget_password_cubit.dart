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
String? message;
resetPassword(String? email) async{
  String? token = await _shearedPref.getAppToken();
  (await forgetBPasswordUseCase.execute(ForgetPasswordUseCaseInput("1484|CVjbaQCke7leNvS6iqd8Q1N34VEiA9uHlvxzdKj7",email!))).fold((l)  {
  message = l.message;
    emit(ForgetPasswordFailed(l.message));
  return null;
  }, (r) {
    emit(ForgetPasswordSuccess(r.message));
    return null;
  });

}
}
