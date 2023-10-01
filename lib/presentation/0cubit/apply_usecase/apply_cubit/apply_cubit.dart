import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/usecase/apply_usecase/apply_usecase.dart';

part 'apply_state.dart';

class ApplyCubit extends Cubit<ApplyState> {
  ApplyCubit(this.applyUseCase) : super(ApplyInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  ApplyUseCase applyUseCase;
}
