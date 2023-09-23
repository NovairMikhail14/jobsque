import 'package:json_annotation/json_annotation.dart';
// part 'responses.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class ChatResponse {
  @JsonKey(name: "massage")
  String? massage;
  @JsonKey(name: "user_id")
  String? userId;
  @JsonKey(name: "comp_id")
  String? compId;
  @JsonKey(name: "sender_user")
  String? senderUser;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "id")
  int? id;
  ChatResponse(
    this.massage,
    this.userId,
    this.compId,
    this.senderUser,
    this.updatedAt,
    this.createdAt,
    this.id,
  );
}

@JsonSerializable()
class UserSendMessageResponse extends BaseResponse {
  @JsonKey(name: "data")
  ChatResponse? chatResponse;
  UserSendMessageResponse(this.chatResponse);
}

@JsonSerializable()
class CompanySendMessageResponse extends BaseResponse {
  @JsonKey(name: "data")
  ChatResponse? chatResponse;
  CompanySendMessageResponse(this.chatResponse);
}

@JsonSerializable()
class AllChatResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<ChatResponse>? chatListResponse;
  AllChatResponse(this.chatListResponse);
}
