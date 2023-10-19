import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/chats_usecase/allChats_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/model/chat_model.dart';
part 'all_chats_state.dart';

class AllChatsCubit extends Cubit<AllChatsState> {
  AllChatsCubit(this.allChatUseCase) : super(AllChatsInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  AllChatUseCase allChatUseCase;
getAllChats(int compID) async {
  String? token = await _shearedPref.getAppToken();
  final userId = await _shearedPref.getUserID();
  print("$token ---------- $userId");
  (await allChatUseCase.execute(AllChatUseCaseInput(token!,compID.toString(),userId!))).fold((l) => null, (r) {

    emit(AllChatsSuccess(r.chatList));
    return r.chatList;
  });
}
}
