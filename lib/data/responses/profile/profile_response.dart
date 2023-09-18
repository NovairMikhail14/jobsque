import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BaseResponse{
  @JsonKey(name: "status")
  bool? status;
}

@JsonSerializable()
class DataProfileResponse{
  @JsonKey(name: "bio")
  String? bio;
  @JsonKey(name: "address")
  String? address;
  @JsonKey(name: "mobile")
  String? mobile;
  @JsonKey(name: "language")
  String? language;
  @JsonKey(name: "interested_work")
  String? interestedWork;
  @JsonKey(name: "offline_place")
  String? offlinePlace;
  @JsonKey(name: "remote_place")
  String? remotePlace;
  @JsonKey(name: "experience")
  String? experience;
  @JsonKey(name: "personal_detailed")
  String? personalDetailed;
  @JsonKey(name: "education")
  String? education;
}
@JsonSerializable()
class PortfolioDataResponse{
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "mobile")
  String? mobile;
  @JsonKey(name: "address")
  String? address;
  @JsonKey(name: "language")
  String? language;
  @JsonKey(name: "interested_work")
  String? interestedWork;
  @JsonKey(name: "offline_place")
  String? offlinePlace;
  @JsonKey(name: "remote_place")
  String? remotePlace;
  @JsonKey(name: "bio")
  String? bio;
  @JsonKey(name: "education")
  String? education;
  @JsonKey(name: "experience")
  String? experience;
  @JsonKey(name: "personal_detailed")
  String? personalDetailed;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
}

@JsonSerializable()
class UpdateProfileResponse extends BaseResponse {
  @JsonKey(name: "data")
  DataProfileResponse? dataProfileResponse;
}
@JsonSerializable()
class EditProfileResponse extends BaseResponse {
  @JsonKey(name: "data")
  DataProfileResponse? dataProfileResponse;
}
@JsonSerializable()
class EditProfileLanguageResponse extends BaseResponse {
  @JsonKey(name: "data")
  DataProfileResponse? dataProfileResponse;
}
@JsonSerializable()
class EditPortfolioResponse extends BaseResponse {
  @JsonKey(name: "data")
  DataProfileResponse? dataProfileResponse;
}
@JsonSerializable()
class PortfolioResponse extends BaseResponse {
  @JsonKey(name: "profile")
  PortfolioDataResponse? portfolioDataResponse;
  @JsonKey(name: "portfolio")
  List? portfolio;
}

