import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/chats_usecase/userSendMessage_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'user_send_message_state.dart';

class UserSendMessageCubit extends Cubit<UserSendMessageState> {
  UserSendMessageCubit(this.userSendMessageUseCase) : super(UserSendMessageInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
UserSendMessageUseCase userSendMessageUseCase;
  String message="";

sendMessage(String message,String compId) async{
  String? token = await _shearedPref.getAppToken();
  final userId = await _shearedPref.getUserID();
  (await userSendMessageUseCase.execute(UserSendMessageUseCaseInput(token!,compId,message,userId!))).fold((l) {
    return null;
  }, (r) {
    message = r.chat!.massage;
    return null;
  });
}
}
