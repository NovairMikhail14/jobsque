import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/profile_usecase/deletePortofolio_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'delete_portofolio_state.dart';

class DeletePortofolioCubit extends Cubit<DeletePortofolioState> {
  DeletePortofolioCubit(this.deletePortofoliosUseCase) : super(DeletePortofolioInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
DeletePortofoliosUseCase deletePortofoliosUseCase;
}
