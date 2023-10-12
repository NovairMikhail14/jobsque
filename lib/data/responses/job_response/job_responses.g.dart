// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_responses.dart';

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

JobResponse _$JobResponseFromJson(Map<String, dynamic> json) => JobResponse(
      json['id'] as int?,
      json['name'] as String?,
      json['image'] as String?,
      json['job_time_type'] as String?,
      json['job_type'] as String?,
      json['job_level'] as String?,
      json['job_description'] as String?,
      json['job_skill'] as String?,
      json['comp_name'] as String?,
      json['comp_email'] as String?,
      json['comp_website'] as String?,
      json['about_comp'] as String?,
      json['location'] as String?,
      json['salary'] as String?,
      json['favorites'] as int?,
      json['expired'] as int?,
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$JobResponseToJson(JobResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'job_time_type': instance.jobTimeType,
      'job_type': instance.jobType,
      'job_level': instance.jobLevel,
      'job_description': instance.jobDescription,
      'job_skill': instance.jobSkill,
      'comp_name': instance.compName,
      'comp_email': instance.compEmail,
      'comp_website': instance.compWebsite,
      'about_comp': instance.aboutComp,
      'location': instance.location,
      'salary': instance.salary,
      'favorites': instance.favorites,
      'expired': instance.expired,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

FilterJobResponse _$FilterJobResponseFromJson(Map<String, dynamic> json) =>
    FilterJobResponse(
      (json['data'] as List<dynamic>?)
          ?.map((e) => JobResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$FilterJobResponseToJson(FilterJobResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.jobResponse,
    };

SearchJobResponse _$SearchJobResponseFromJson(Map<String, dynamic> json) =>
    SearchJobResponse(
      (json['data'] as List<dynamic>?)
          ?.map((e) => JobResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$SearchJobResponseToJson(SearchJobResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.jobListResponse,
    };

GetAllJobResponse _$GetAllJobResponseFromJson(Map<String, dynamic> json) =>
    GetAllJobResponse(
      (json['data'] as List<dynamic>?)
          ?.map((e) => JobResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetAllJobResponseToJson(GetAllJobResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.jobListResponse,
    };

SuggestJobResponse _$SuggestJobResponseFromJson(Map<String, dynamic> json) =>
    SuggestJobResponse(
      json['data'] == null
          ? null
          : JobResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$SuggestJobResponseToJson(SuggestJobResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.jobResponse,
    };

JobIDResponse _$JobIDResponseFromJson(Map<String, dynamic> json) =>
    JobIDResponse(
      json['data'] == null
          ? null
          : JobResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$JobIDResponseToJson(JobIDResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.jobResponse,
    };
