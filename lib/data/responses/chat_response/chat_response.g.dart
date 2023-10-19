// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
  ..status = json['status'] as bool?
  ..message = json['message'] as String?;

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) => ChatResponse(
      json['massage'] as String?,
      json['user_id'] as int?,
      json['comp_id'] as int?,
      json['sender_user'] as String?,
      json['updated_at'] as String?,
      json['created_at'] as String?,
      json['id'] as int?,
    );

Map<String, dynamic> _$ChatResponseToJson(ChatResponse instance) =>
    <String, dynamic>{
      'massage': instance.massage,
      'user_id': instance.userId,
      'comp_id': instance.compId,
      'sender_user': instance.senderUser,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'id': instance.id,
    };

UserSendMessageResponse _$UserSendMessageResponseFromJson(
        Map<String, dynamic> json) =>
    UserSendMessageResponse(
      json['data'] == null
          ? null
          : ChatResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$UserSendMessageResponseToJson(
        UserSendMessageResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.chatResponse,
    };

CompanySendMessageResponse _$CompanySendMessageResponseFromJson(
        Map<String, dynamic> json) =>
    CompanySendMessageResponse(
      json['data'] == null
          ? null
          : ChatResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$CompanySendMessageResponseToJson(
        CompanySendMessageResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.chatResponse,
    };

AllChatResponse _$AllChatResponseFromJson(Map<String, dynamic> json) =>
    AllChatResponse(
      (json['data'] as List<dynamic>?)
          ?.map((e) => ChatResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$AllChatResponseToJson(AllChatResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.chatListResponse,
    };
