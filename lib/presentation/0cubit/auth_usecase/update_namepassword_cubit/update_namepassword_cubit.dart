import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/auth_usecase/update_namepassword_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'update_namepassword_state.dart';

class UpdateNamepasswordCubit extends Cubit<UpdateNamepasswordState> {
  UpdateNamepasswordCubit(this.updateNamePasswordUseCase) : super(UpdateNamepasswordInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
UpdateNamePasswordUseCase updateNamePasswordUseCase;

}
