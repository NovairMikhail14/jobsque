part of 'user_send_message_cubit.dart';

@immutable
abstract class UserSendMessageState {}

class UserSendMessageInitial extends UserSendMessageState {}
class UserSendMessageSuccess extends UserSendMessageState {
  String message;
  UserSendMessageSuccess(this.message);
}
class UserSendMessageFailed extends UserSendMessageState {}
