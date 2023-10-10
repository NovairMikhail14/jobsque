import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/auth_usecase/register_usecase.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../data/network/error_handler.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerUseCase) : super(RegisterInitial());
  RegisterUseCase registerUseCase;
  final AppPreferences _shearedPref = instance<AppPreferences>();
  String? massagePassword;
  String? massageEmail;

  register(String email, String name, String password) async {
    // emit(RegisterLoading());
      (await registerUseCase
              .execute(RegisterUseCaseInput(email, name, password)))
          .fold((l) {
        Map message = l.dioMessage?["massege"];
        massagePassword = message["password"]?[0].toString();
        massageEmail = message["email"]?[0].toString();
        print("object-----${l.dioMessage}");
        print("object-----${l.message}");
        print("object-----${massagePassword}");
        print("object-----${massageEmail}");
        emit(RegisterFailed());
        return l;
      }, (r) {
        _shearedPref.setAppToken(r.token);
        print("Token--------------> ${r.token}");
        emit(RegisterSuccess());
        return r;
      });

  }
  resetValidation(){
    massagePassword="";
    massageEmail="";
  }
}
