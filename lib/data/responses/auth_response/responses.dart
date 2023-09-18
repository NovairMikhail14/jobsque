import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class BaseResponse{
  @JsonKey(name: "status")
  bool? status;
}
@JsonSerializable()
class UserResponse{
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

  UserResponse(this.id, this.name, this.email, this.createdAt, this.updatedAt);

  factory UserResponse.fromJson(Map<String,dynamic> json) => _$UserResponseFromJson(json);
  Map<String,dynamic> toJson() => _$UserResponseToJson(this);
}
@JsonSerializable()
class ProfileResponse{
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "otp")
  String? otp;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: "user")
  UserResponse? user;
  @JsonKey(name: "token")
  String? token;

  AuthenticationResponse(this.user);

  factory AuthenticationResponse.fromJson(Map<String,dynamic> json) => _$AuthenticationResponseFromJson(json);
  Map<String,dynamic> toJson() => _$AuthenticationResponseToJson(this);
}

// @JsonSerializable()
// class ProfileViewResponse extends BaseResponse{
//   @JsonKey(name: "data")
//   UserResponse? user;
// }
//
// @JsonSerializable()
// class GetOTPResponse extends BaseResponse{
//   @JsonKey(name: "data")
//   String? data;
// }
// @JsonSerializable()
// class RegisterResponse extends BaseResponse{
//   @JsonKey(name: "data")
//   UserResponse? user;
//   @JsonKey(name: "profile")
//   ProfileResponse? profileResponse;
//   @JsonKey(name: "token")
//   String? token;
// }


