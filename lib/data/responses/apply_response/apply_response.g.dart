// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_response.dart';

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

ApplyDataResponse _$ApplyDataResponseFromJson(Map<String, dynamic> json) =>
    ApplyDataResponse(
      json['cv_file'] as String?,
      json['name'] as String?,
      json['email'] as String?,
      json['mobile'] as String?,
      json['work_type'] as String?,
      json['other_file'] as String?,
      json['jobs_id'] as int?,
      json['user_id'] as int?,
      json['reviewed'] as int?,
      json['accept'] as String?,
      json['updated_at'] as String?,
      json['created_at'] as String?,
      json['id'] as int?,
    );

Map<String, dynamic> _$ApplyDataResponseToJson(ApplyDataResponse instance) =>
    <String, dynamic>{
      'cv_file': instance.cvFile,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'work_type': instance.workType,
      'other_file': instance.otherFile,
      'jobs_id': instance.jobsId,
      'user_id': instance.userId,
      'reviewed': instance.reviewed,
      'accept': instance.accept,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };

ApplyResponse _$ApplyResponseFromJson(Map<String, dynamic> json) =>
    ApplyResponse(
      json['data'] == null
          ? null
          : ApplyDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$ApplyResponseToJson(ApplyResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.applyDataResponse,
    };

ShowApplyResponse _$ShowApplyResponseFromJson(Map<String, dynamic> json) =>
    ShowApplyResponse(
      (json['data'] as List<dynamic>?)
          ?.map((e) => ApplyDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$ShowApplyResponseToJson(ShowApplyResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.applyDataListResponse,
    };
