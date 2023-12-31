import 'package:bloc/bloc.dart';
import 'package:jobsque/app/di.dart';

import '../../../../app/app_pref.dart';
import '../../../../data/network/error_handler.dart';
import '../../../../domain/usecase/auth_usecase/login_usecase.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(LoginInitial());
  LoginUseCase loginUseCase;
  final AppPreferences _shearedPref = instance<AppPreferences>();
  login(String username,String password) async{
    emit(LoginLoading());

    try{
      (await loginUseCase.execute(LoginUseCaseInput(username, password))).fold((l) {
        emit(LoginFailed());
        return l.message;
      }, (r) async {
        await _shearedPref.setAppToken(r.token);
        await _shearedPref.setUserID(r.user!.id.toString());
        await _shearedPref.setAppLoggedIn();
        emit(LoginSuccess());
        return r;
      });
    }
    catch(error){
      return ErrorHandler.handle(error).failure.message;
    }

  }

}
