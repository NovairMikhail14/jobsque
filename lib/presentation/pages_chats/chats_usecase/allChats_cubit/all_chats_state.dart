part of 'all_chats_cubit.dart';

@immutable
abstract class AllChatsState {}

class AllChatsInitial extends AllChatsState {}
class AllChatsSuccess extends AllChatsState {
  List<Chat> chatsList;
  AllChatsSuccess(this.chatsList);
}
class AllChatsFailed extends AllChatsState {}
