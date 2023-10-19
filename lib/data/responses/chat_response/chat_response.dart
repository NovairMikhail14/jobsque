import 'package:json_annotation/json_annotation.dart';
part 'chat_response.g.dart';


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
  int? userId;
  @JsonKey(name: "comp_id")
  int? compId;
  @JsonKey(name: "sender_user")
  String? senderUser;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
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
  factory ChatResponse.fromJson(Map<String,dynamic> json) => _$ChatResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ChatResponseToJson(this);
}

@JsonSerializable()
class UserSendMessageResponse extends BaseResponse {
  @JsonKey(name: "data")
  ChatResponse? chatResponse;
  UserSendMessageResponse(this.chatResponse);
  factory UserSendMessageResponse.fromJson(Map<String,dynamic> json) => _$UserSendMessageResponseFromJson(json);
  Map<String,dynamic> toJson() => _$UserSendMessageResponseToJson(this);
}

@JsonSerializable()
class CompanySendMessageResponse extends BaseResponse {
  @JsonKey(name: "data")
  ChatResponse? chatResponse;
  CompanySendMessageResponse(this.chatResponse);
  factory CompanySendMessageResponse.fromJson(Map<String,dynamic> json) => _$CompanySendMessageResponseFromJson(json);
  Map<String,dynamic> toJson() => _$CompanySendMessageResponseToJson(this);
}

@JsonSerializable()
class AllChatResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<ChatResponse>? chatListResponse;
  AllChatResponse(this.chatListResponse);
  factory AllChatResponse.fromJson(Map<String,dynamic> json) => _$AllChatResponseFromJson(json);
  Map<String,dynamic> toJson() => _$AllChatResponseToJson(this);
}
