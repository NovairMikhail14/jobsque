// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_response.dart';

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

FavoriteJobResponse _$FavoriteJobResponseFromJson(Map<String, dynamic> json) =>
    FavoriteJobResponse(
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

Map<String, dynamic> _$FavoriteJobResponseToJson(
        FavoriteJobResponse instance) =>
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

FavoriteUserResponse _$FavoriteUserResponseFromJson(
        Map<String, dynamic> json) =>
    FavoriteUserResponse(
      json['id'] as int,
      json['user_id'] as int,
      json['like'] as int,
      json['job_id'] as int,
      json['image'] as String,
      json['name'] as String,
      json['location'] as String,
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      json['jobs'] == null
          ? null
          : FavoriteJobResponse.fromJson(json['jobs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FavoriteUserResponseToJson(
        FavoriteUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'like': instance.like,
      'job_id': instance.jobId,
      'image': instance.imageJob,
      'name': instance.userName,
      'location': instance.location,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'jobs': instance.job,
    };

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) => DataResponse(
      json['job'] == null
          ? null
          : FavoriteJobResponse.fromJson(json['job'] as Map<String, dynamic>),
      json['user'] == null
          ? null
          : FavoriteUserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataResponseToJson(DataResponse instance) =>
    <String, dynamic>{
      'user': instance.userResponse,
      'job': instance.jobResponse,
    };

AddFavoriteResponse _$AddFavoriteResponseFromJson(Map<String, dynamic> json) =>
    AddFavoriteResponse(
      json['data'] == null
          ? null
          : DataResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$AddFavoriteResponseToJson(
        AddFavoriteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.dataResponse,
    };

ShowAllFavoriteResponse _$ShowAllFavoriteResponseFromJson(
        Map<String, dynamic> json) =>
    ShowAllFavoriteResponse(
      (json['data'] as List<dynamic>?)
          ?.map((e) => FavoriteUserResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$ShowAllFavoriteResponseToJson(
        ShowAllFavoriteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.jobListResponse,
    };

deleteFavoriteResponse _$deleteFavoriteResponseFromJson(
        Map<String, dynamic> json) =>
    deleteFavoriteResponse()
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$deleteFavoriteResponseToJson(
        deleteFavoriteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
