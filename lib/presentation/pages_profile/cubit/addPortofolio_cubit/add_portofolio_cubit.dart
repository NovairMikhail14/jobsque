import 'dart:io';

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
  uploadFiles(File cv_file,File image)async {
    final token = await _shearedPref.getAppToken();
    (await addPortofolioUseCase.execute(AddPortofolioUseCaseInput(token!, cv_file, image))).fold((l) {
      return null;
    }, (r) {
      return null;
    });
  }
}
