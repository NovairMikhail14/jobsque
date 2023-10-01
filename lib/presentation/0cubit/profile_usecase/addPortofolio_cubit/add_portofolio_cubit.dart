import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/profile_usecase/addPortofolio_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'add_portofolio_state.dart';

class AddPortofolioCubit extends Cubit<AddPortofolioState> {
  AddPortofolioCubit(this.addPortofolioUseCase) : super(AddPortofolioInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  AddPortofolioUseCase addPortofolioUseCase;
}
