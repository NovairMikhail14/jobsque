class Chat {
  String massage;
  String userId;
  String compId;
  String senderUser;
  DateTime createdAt;
  DateTime updatedAt;
  int id;
  Chat(
    this.massage,
    this.userId,
    this.compId,
    this.senderUser,
    this.updatedAt,
    this.createdAt,
    this.id,
  );
}

class UserSendMessage {
  Chat? chat;
  UserSendMessage(this.chat);
}

class CompanySendMessage {
  Chat? chat;
  CompanySendMessage(this.chat);
}

class AllChat {
  List<Chat>? chatList;
  AllChat(this.chatList);
}
