// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

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

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      json['bio'] as String?,
      json['address'] as String?,
      json['mobile'] as String?,
      json['language'] as String?,
      json['interested_work'] as String?,
      json['offline_place'] as String?,
      json['remote_place'] as String?,
      json['experience'] as String?,
      json['personal_detailed'] as String?,
      json['education'] as String?,
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'bio': instance.bio,
      'address': instance.address,
      'mobile': instance.mobile,
      'language': instance.language,
      'interested_work': instance.interestedWork,
      'offline_place': instance.offlinePlace,
      'remote_place': instance.remotePlace,
      'experience': instance.experience,
      'personal_detailed': instance.personalDetailed,
      'education': instance.education,
    };

ProfileDataResponse _$ProfileDataResponseFromJson(Map<String, dynamic> json) =>
    ProfileDataResponse(
      json['id'] as int?,
      json['user_id'] as int?,
      json['name'] as String?,
      json['email'] as String?,
      json['mobile'] as String?,
      json['address'] as String?,
      json['language'] as String?,
      json['interested_work'] as String?,
      json['offline_place'] as String?,
      json['remote_place'] as String?,
      json['bio'] as String?,
      json['education'] as String?,
      json['experience'] as String?,
      json['personal_detailed'] as String?,
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ProfileDataResponseToJson(
        ProfileDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'address': instance.address,
      'language': instance.language,
      'interested_work': instance.interestedWork,
      'offline_place': instance.offlinePlace,
      'remote_place': instance.remotePlace,
      'bio': instance.bio,
      'education': instance.education,
      'experience': instance.experience,
      'personal_detailed': instance.personalDetailed,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

PortfolioDataResponse _$PortfolioDataResponseFromJson(
        Map<String, dynamic> json) =>
    PortfolioDataResponse(
      json['name'] as String?,
      json['image'] as String?,
      json['user_id'] as int?,
      json['cv_file'] as int?,
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      json['id'] as int?,
    );

Map<String, dynamic> _$PortfolioDataResponseToJson(
        PortfolioDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cv_file': instance.cv,
      'name': instance.name,
      'image': instance.image,
      'user_id': instance.userId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
    };

GetDataPortfoliosResponse _$GetDataPortfoliosResponseFromJson(
        Map<String, dynamic> json) =>
    GetDataPortfoliosResponse(
      (json['portfolio'] as List<dynamic>?)
          ?.map(
              (e) => PortfolioDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['profile'] == null
          ? null
          : ProfileDataResponse.fromJson(
              json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetDataPortfoliosResponseToJson(
        GetDataPortfoliosResponse instance) =>
    <String, dynamic>{
      'profile': instance.profileDataResponse,
      'portfolio': instance.portfolioDataListResponse,
    };

GetPortfoliosResponse _$GetPortfoliosResponseFromJson(
        Map<String, dynamic> json) =>
    GetPortfoliosResponse(
      json['data'] == null
          ? null
          : GetDataPortfoliosResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$GetPortfoliosResponseToJson(
        GetPortfoliosResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.getDataPortfoliosResponse,
    };

EditPortfolioResponse _$EditPortfolioResponseFromJson(
        Map<String, dynamic> json) =>
    EditPortfolioResponse(
      json['data'] == null
          ? null
          : ProfileResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$EditPortfolioResponseToJson(
        EditPortfolioResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.profileResponse,
    };

AddPortfolioResponse _$AddPortfolioResponseFromJson(
        Map<String, dynamic> json) =>
    AddPortfolioResponse(
      json['data'] == null
          ? null
          : PortfolioDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$AddPortfolioResponseToJson(
        AddPortfolioResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.portfolioDataResponse,
    };

DeletePortfolioResponse _$DeletePortfolioResponseFromJson(
        Map<String, dynamic> json) =>
    DeletePortfolioResponse(
      json['data'] == null
          ? null
          : PortfolioDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$DeletePortfolioResponseToJson(
        DeletePortfolioResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.portfolioDataResponse,
    };
