// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experince_responce.dart';

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

ExperienceResponse _$ExperienceResponseFromJson(Map<String, dynamic> json) =>
    ExperienceResponse(
      json['user_id'] as String?,
      json['postion'] as String?,
      json['type_work'] as String?,
      json['end'] == null ? null : DateTime.parse(json['end'] as String),
      json['comp_name'] as String?,
      json['location'] as String?,
      json['start'] as String?,
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      json['id'] as int?,
    );

Map<String, dynamic> _$ExperienceResponseToJson(ExperienceResponse instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'postion': instance.position,
      'type_work': instance.typeWork,
      'comp_name': instance.compName,
      'location': instance.location,
      'start': instance.start,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'id': instance.id,
    };

AddExperienceResponse _$AddExperienceResponseFromJson(
        Map<String, dynamic> json) =>
    AddExperienceResponse(
      json['data'] == null
          ? null
          : ExperienceResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$AddExperienceResponseToJson(
        AddExperienceResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.experienceResponse,
    };

EndExperienceResponse _$EndExperienceResponseFromJson(
        Map<String, dynamic> json) =>
    EndExperienceResponse(
      json['data'] == null
          ? null
          : ExperienceResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$EndExperienceResponseToJson(
        EndExperienceResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.experienceResponse,
    };
