import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/usecase/chats_usecase/companySendMesssage_usecase.dart';
part 'company_send_messsage_state.dart';

class CompanySendMesssageCubit extends Cubit<CompanySendMesssageState> {
  CompanySendMesssageCubit(this.companySendMessageUseCase) : super(CompanySendMesssageInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  CompanySendMessageUseCase companySendMessageUseCase ;
}
