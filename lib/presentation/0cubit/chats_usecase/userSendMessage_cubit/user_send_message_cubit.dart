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
}
