import 'package:bloc/bloc.dart';
import 'package:jobsque/presentation/common/freezed_data_classes.dart';

import '../../../domain/usecase/login_usecase.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(LoginInitial());
  LoginUseCase loginUseCase;
  login(String username,String password) async{
    emit(LoginLoading());
    (await loginUseCase.execute(LoginUseCaseInput(username, password))).fold((l) {
      emit(LoginFailed());
      return l.message;
    }, (r) {
      emit(LoginSuccess());
      return r;
    });
  }

}
