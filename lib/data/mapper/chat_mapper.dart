import 'package:jobsque/app/extensions.dart';
import '../../app/constants.dart';
import '../../domain/model/chat_model.dart';
import '../responses/chat_response/chat_response.dart';

extension ChatResponseMapper on ChatResponse? {
  Chat toDomain() {
    return Chat(
      this?.massage.orEmpty() ?? Constants.empty,
      this?.userId.orZero() ?? Constants.zero,
      this?.compId.orZero() ?? Constants.zero,
      this?.senderUser.orEmpty() ?? Constants.empty,
      this?.updatedAt.orEmpty() ?? Constants.empty,
      this?.createdAt.orEmpty() ?? Constants.empty,
      this?.id.orZero() ?? Constants.zero,
    );
  }
}

extension UserSendMessageResponseMapper on UserSendMessageResponse? {
  UserSendMessage toDomain() {
    return UserSendMessage(this?.chatResponse.toDomain());
  }
}

extension CompanySendMessageResponseMapper on CompanySendMessageResponse? {
  CompanySendMessage toDomain() {
    return CompanySendMessage(this?.chatResponse.toDomain());
  }
}

extension NonNulllist on List<ChatResponse>? {
  List<Chat> toDomain() {
    if (this == null) {
      return [];
    } else {
      return this!.map((e) => e.toDomain()).toList();
    }
  }
}

extension AllChatResponseMapper on AllChatResponse? {
  AllChat toDomain() {
    return AllChat(this?.chatListResponse.toDomain().toList()??[]);
  }
}
