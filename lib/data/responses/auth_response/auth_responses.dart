import 'package:json_annotation/json_annotation.dart';

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
  AuthUserResponse(this.id, this.name, this.email, this.createdAt, this.updatedAt);
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
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: "user")
  AuthUserResponse? user;
  @JsonKey(name: "token")
  String? token;

  AuthenticationResponse(this.user, this.token);
}

@JsonSerializable()
class ForgetPasswordResponse extends BaseResponse {
  @JsonKey(name: "user")
  String? user;
  ForgetPasswordResponse(this.user);
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
}

@JsonSerializable()
class ProfileViewResponse extends BaseResponse {
  @JsonKey(name: "data")
  DataResponse? user;
  ProfileViewResponse(this.user);
}
