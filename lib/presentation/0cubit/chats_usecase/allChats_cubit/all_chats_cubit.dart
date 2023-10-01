import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/chats_usecase/allChats_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'all_chats_state.dart';

class AllChatsCubit extends Cubit<AllChatsState> {
  AllChatsCubit(this.allChatUseCase) : super(AllChatsInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
  AllChatUseCase allChatUseCase;

}
