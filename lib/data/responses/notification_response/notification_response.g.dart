// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

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

NotificationResponse _$NotificationResponseFromJson(
        Map<String, dynamic> json) =>
    NotificationResponse(
      json['id'] as int?,
      json['user_id'] as String?,
      json['comp_id'] as String?,
      json['comp_name'] as String?,
      json['user_name'] as String?,
      json['last_massage'] as String?,
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$NotificationResponseToJson(
        NotificationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'comp_id': instance.compId,
      'comp_name': instance.compName,
      'user_name': instance.userName,
      'last_massage': instance.lastMassage,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

GetNotificationResponse _$GetNotificationResponseFromJson(
        Map<String, dynamic> json) =>
    GetNotificationResponse(
      json['data'] == null
          ? null
          : NotificationResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetNotificationResponseToJson(
        GetNotificationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.notificationResponse,
    };
