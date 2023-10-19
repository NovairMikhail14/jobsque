import 'package:json_annotation/json_annotation.dart';
part 'auth_responses.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class AuthUserResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  AuthUserResponse(
      this.id, this.name, this.email, this.createdAt, this.updatedAt);
  factory AuthUserResponse.fromJson(Map<String,dynamic> json) => _$AuthUserResponseFromJson(json);
  Map<String,dynamic> toJson() => _$AuthUserResponseToJson(this);
}

@JsonSerializable()
class AuthProfileResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  AuthProfileResponse(
    this.createdAt,
    this.email,
    this.id,
    this.name,
    this.updatedAt,
    this.userId,
  );
  factory AuthProfileResponse.fromJson(Map<String,dynamic> json) => _$AuthProfileResponseFromJson(json);
  Map<String,dynamic> toJson() => _$AuthProfileResponseToJson(this);
}

@JsonSerializable()
class DataResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "otp")
  int? otp;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  DataResponse(
      this.createdAt, this.email, this.id, this.name, this.otp, this.updatedAt);
  factory DataResponse.fromJson(Map<String,dynamic> json) => _$DataResponseFromJson(json);
  Map<String,dynamic> toJson() => _$DataResponseToJson(this);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: "user")
  AuthUserResponse? user;
  @JsonKey(name: "token")
  String? token;

  AuthenticationResponse(this.user, this.token);
  factory AuthenticationResponse.fromJson(Map<String,dynamic> json) => _$AuthenticationResponseFromJson(json);
  Map<String,dynamic> toJson() => _$AuthenticationResponseToJson(this);
}

@JsonSerializable()
class ForgetPasswordResponse extends BaseResponse {
  ForgetPasswordResponse();
  factory ForgetPasswordResponse.fromJson(Map<String,dynamic> json) => _$ForgetPasswordResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ForgetPasswordResponseToJson(this);
}

@JsonSerializable()
class RegisterResponse extends BaseResponse {
  @JsonKey(name: "token")
  String? token;
  @JsonKey(name: "data")
  DataResponse? dataResponse;
  @JsonKey(name: "profile")
  AuthProfileResponse? profileResponse;
  RegisterResponse(
    this.dataResponse,
    this.profileResponse,
    this.token,
  );
  factory RegisterResponse.fromJson(Map<String,dynamic> json) => _$RegisterResponseFromJson(json);
  Map<String,dynamic> toJson() => _$RegisterResponseToJson(this);
}

@JsonSerializable()
class ProfileDataViewResponse extends BaseResponse {
  @JsonKey(name: "data")
  DataResponse? user;
  ProfileDataViewResponse(this.user);
  factory ProfileDataViewResponse.fromJson(Map<String,dynamic> json) => _$ProfileDataViewResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ProfileDataViewResponseToJson(this);
}

@JsonSerializable()
class UpdateNamePasswordResponse extends BaseResponse {
  @JsonKey(name: "data")
  DataResponse? user;
  UpdateNamePasswordResponse(this.user);
  factory UpdateNamePasswordResponse.fromJson(Map<String,dynamic> json) => _$UpdateNamePasswordResponseFromJson(json);
  Map<String,dynamic> toJson() => _$UpdateNamePasswordResponseToJson(this);
}
