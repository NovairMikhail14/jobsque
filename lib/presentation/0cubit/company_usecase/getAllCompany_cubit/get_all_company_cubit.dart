import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/company_usecase/getAllCompany_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'get_all_company_state.dart';

class GetAllCompanyCubit extends Cubit<GetAllCompanyState> {
  GetAllCompanyCubit(this.getAllCompanyUseCase) : super(GetAllCompanyInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
GetAllCompanyUseCase getAllCompanyUseCase;
}
