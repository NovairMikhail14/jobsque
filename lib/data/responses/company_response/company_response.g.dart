// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_response.dart';

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

CompanyResponse _$CompanyResponseFromJson(Map<String, dynamic> json) =>
    CompanyResponse(
      json['id'] as int?,
      json['name'] as String?,
      json['image'],
      json['email'] as String?,
      json['website'] as String?,
      json['about'] as String?,
      json['location'] as String?,
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CompanyResponseToJson(CompanyResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'email': instance.email,
      'website': instance.website,
      'about': instance.about,
      'location': instance.location,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

GetAllCompanyResponse _$GetAllCompanyResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllCompanyResponse(
      (json['data'] as List<dynamic>?)
          ?.map((e) => CompanyResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetAllCompanyResponseToJson(
        GetAllCompanyResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.companyListResponce,
    };
