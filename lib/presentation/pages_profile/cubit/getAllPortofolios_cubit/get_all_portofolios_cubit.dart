import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/profile_usecase/getAllPortofolios_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../data/network/error_handler.dart';
import '../../../../domain/model/profile_model.dart';
part 'get_all_portofolios_state.dart';

class GetAllPortofoliosCubit extends Cubit<GetAllPortofoliosState> {
  GetAllPortofoliosCubit(this.getAllPortofolioseUseCase) : super(GetAllPortofoliosInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
GetAllPortofolioseUseCase getAllPortofolioseUseCase;

  getPortofoliosData() async{
    String? token = await _shearedPref.getAppToken();
    (await getAllPortofolioseUseCase.execute(GetAllPortofolioseUseCaseInput(token!))).fold((l) {
      print(l.message);
      emit(GetAllPortofoliosFailed());
      return l.message;
    }, (r) {
      emit(GetAllPortofoliosSuccess(r.getDataPortfolios?.portfolioDataList,r.getDataPortfolios?.profileData));
      return null;
    });
  }
}

