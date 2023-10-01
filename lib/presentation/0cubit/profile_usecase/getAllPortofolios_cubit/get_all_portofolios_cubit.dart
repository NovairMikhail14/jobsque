import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/profile_usecase/getAllPortofolios_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'get_all_portofolios_state.dart';

class GetAllPortofoliosCubit extends Cubit<GetAllPortofoliosState> {
  GetAllPortofoliosCubit(this.getAllPortofolioseUseCase) : super(GetAllPortofoliosInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
GetAllPortofolioseUseCase getAllPortofolioseUseCase;
}
