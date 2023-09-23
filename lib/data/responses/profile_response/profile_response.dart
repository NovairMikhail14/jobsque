import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class ProfileResponse {
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
  ProfileResponse(
    this.bio,
    this.address,
    this.mobile,
    this.language,
    this.interestedWork,
    this.offlinePlace,
    this.remotePlace,
    this.experience,
    this.personalDetailed,
    this.education,
  );
}

@JsonSerializable()
class ProfileDataResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "mobile")
  dynamic? mobile;
  @JsonKey(name: "address")
  dynamic? address;
  @JsonKey(name: "language")
  dynamic? language;
  @JsonKey(name: "interested_work")
  dynamic? interestedWork;
  @JsonKey(name: "offline_place")
  dynamic? offlinePlace;
  @JsonKey(name: "remote_place")
  dynamic? remotePlace;
  @JsonKey(name: "bio")
  dynamic? bio;
  @JsonKey(name: "education")
  dynamic? education;
  @JsonKey(name: "experience")
  dynamic? experience;
  @JsonKey(name: "personal_detailed")
  dynamic? personalDetailed;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  ProfileDataResponse(
    this.id,
    this.userId,
    this.name,
    this.email,
    this.mobile,
    this.address,
    this.language,
    this.interestedWork,
    this.offlinePlace,
    this.remotePlace,
    this.bio,
    this.education,
    this.experience,
    this.personalDetailed,
    this.createdAt,
    this.updatedAt,
  );
}

@JsonSerializable()
class PortfolioResponse {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "id")
  int? id;
  PortfolioResponse(
    this.name,
    this.image,
    this.userId,
    this.updatedAt,
    this.createdAt,
    this.id,
  );
}

@JsonSerializable()
class PortfolioDataResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "cv_file")
  int? cv;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "created_at")
  DateTime? createdAt;

  PortfolioDataResponse(
    this.name,
    this.image,
    this.userId,
    this.cv,
    this.updatedAt,
    this.createdAt,
    this.id,
  );
}

@JsonSerializable()
class UpdateProfileResponse extends BaseResponse {
  @JsonKey(name: "data")
  ProfileResponse? profileResponse;
  UpdateProfileResponse(this.profileResponse);
}

@JsonSerializable()
class EditProfileResponse extends BaseResponse {
  @JsonKey(name: "data")
  ProfileResponse? profileResponse;
  EditProfileResponse(this.profileResponse);
}

@JsonSerializable()
class EditProfileLanguageResponse extends BaseResponse {
  @JsonKey(name: "data")
  ProfileResponse? profileResponse;
  EditProfileLanguageResponse(this.profileResponse);
}

@JsonSerializable()
class GetDataPortfoliosResponse extends BaseResponse {
  @JsonKey(name: "profile")
  ProfileDataResponse? profileDataResponse;
  @JsonKey(name: "portfolio")
  List<PortfolioDataResponse>? portfolioDataListResponse;
  GetDataPortfoliosResponse(
      this.portfolioDataListResponse, this.profileDataResponse);
}

@JsonSerializable()
class GetPortfoliosResponse extends BaseResponse {
  @JsonKey(name: "data")
  GetDataPortfoliosResponse? getDataPortfoliosResponse;
  GetPortfoliosResponse(this.getDataPortfoliosResponse);
}

@JsonSerializable()
class EditPortfolioResponse extends BaseResponse {
  @JsonKey(name: "data")
  ProfileResponse? profileResponse;
  EditPortfolioResponse(this.profileResponse);
}

@JsonSerializable()
class DeletePortfolioResponse extends BaseResponse {
  @JsonKey(name: "data")
  PortfolioDataResponse? portfolioDataResponse;
  DeletePortfolioResponse(this.portfolioDataResponse);
}
