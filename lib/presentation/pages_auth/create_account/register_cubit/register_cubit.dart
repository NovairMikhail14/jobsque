import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/auth_usecase/register_usecase.dart';
import 'package:meta/meta.dart';

import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerUseCase) : super(RegisterInitial());
  RegisterUseCase registerUseCase;
  final AppPreferences _shearedPref = instance<AppPreferences>();

  register(String email, String name, String password) async {
    (await registerUseCase.execute(RegisterUseCaseInput(email, name, password)))
        .fold((l) => null, (r) => null);
  }
}
