import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/profile_usecase/editAllPortofolio_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'edit_all_portofolio_state.dart';

class EditAllPortofolioCubit extends Cubit<EditAllPortofolioState> {
  EditAllPortofolioCubit(this.editPortfolioUseCase) : super(EditAllPortofolioInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
EditPortfolioUseCase editPortfolioUseCase;
  editPortofoliosData(String bio,String address,String mobile) async{
    String? token = await _shearedPref.getAppToken();
    (await editPortfolioUseCase.execute(EditPortfolioUseCaseInput(token!,bio: bio,address: address,mobile: mobile,))).fold((l) {
      print(l.message);
      emit(EditAllPortofoliofailed());
      return l.message;
    }, (r) {
      emit(EditAllPortofoliosSuccess());
      return null;
    });
  }

}
