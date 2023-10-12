// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_response.dart';

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

EducationDataResponse _$EducationDataResponseFromJson(
        Map<String, dynamic> json) =>
    EducationDataResponse(
      json['created_at'] as String?,
      json['end'] as String?,
      json['id'] as String?,
      json['profile_id'] as String?,
      json['start'] as String?,
      json['title'] as String?,
      json['universty'] as String?,
      json['updated_at'] as String?,
      json['user_id'] as int?,
    );

Map<String, dynamic> _$EducationDataResponseToJson(
        EducationDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'universty': instance.universty,
      'title': instance.title,
      'start': instance.start,
      'end': instance.end,
      'user_id': instance.userId,
      'profile_id': instance.profileId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

AddEducationResponse _$AddEducationResponseFromJson(
        Map<String, dynamic> json) =>
    AddEducationResponse(
      json['data'] == null
          ? null
          : EducationDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$AddEducationResponseToJson(
        AddEducationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.educationDataResponse,
    };

ShowAllEducationResponse _$ShowAllEducationResponseFromJson(
        Map<String, dynamic> json) =>
    ShowAllEducationResponse(
      (json['data'] as List<dynamic>?)
          ?.map(
              (e) => EducationDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$ShowAllEducationResponseToJson(
        ShowAllEducationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.showAllEducationDataResponse,
    };
