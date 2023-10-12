// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_responses.dart';

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

AuthUserResponse _$AuthUserResponseFromJson(Map<String, dynamic> json) =>
    AuthUserResponse(
      json['id'] as int?,
      json['name'] as String?,
      json['email'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
    );

Map<String, dynamic> _$AuthUserResponseToJson(AuthUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

AuthProfileResponse _$AuthProfileResponseFromJson(Map<String, dynamic> json) =>
    AuthProfileResponse(
      json['created_at'] as String?,
      json['email'] as String?,
      json['id'] as int?,
      json['name'] as String?,
      json['updated_at'] as String?,
      json['user_id'] as int?,
    )..image = json['image'] as String?;

Map<String, dynamic> _$AuthProfileResponseToJson(
        AuthProfileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'email': instance.email,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) => DataResponse(
      json['created_at'] as String?,
      json['email'] as String?,
      json['id'] as int?,
      json['name'] as String?,
      json['otp'] as int?,
      json['updated_at'] as String?,
    );

Map<String, dynamic> _$DataResponseToJson(DataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'otp': instance.otp,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

AuthenticationResponse _$AuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    AuthenticationResponse(
      json['user'] == null
          ? null
          : AuthUserResponse.fromJson(json['user'] as Map<String, dynamic>),
      json['token'] as String?,
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$AuthenticationResponseToJson(
        AuthenticationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user': instance.user,
      'token': instance.token,
    };

ForgetPasswordResponse _$ForgetPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    ForgetPasswordResponse(
      json['user'] == null
          ? null
          : AuthUserResponse.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$ForgetPasswordResponseToJson(
        ForgetPasswordResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user': instance.user,
    };

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      json['data'] == null
          ? null
          : DataResponse.fromJson(json['data'] as Map<String, dynamic>),
      json['profile'] == null
          ? null
          : AuthProfileResponse.fromJson(
              json['profile'] as Map<String, dynamic>),
      json['token'] as String?,
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'data': instance.dataResponse,
      'profile': instance.profileResponse,
    };

ProfileDataViewResponse _$ProfileDataViewResponseFromJson(
        Map<String, dynamic> json) =>
    ProfileDataViewResponse(
      json['data'] == null
          ? null
          : DataResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$ProfileDataViewResponseToJson(
        ProfileDataViewResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.user,
    };

UpdateNamePasswordResponse _$UpdateNamePasswordResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateNamePasswordResponse(
      json['data'] == null
          ? null
          : DataResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$UpdateNamePasswordResponseToJson(
        UpdateNamePasswordResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.user,
    };
