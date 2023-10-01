import 'package:json_annotation/json_annotation.dart';
part 'profile_response.g.dart';

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
  factory ProfileResponse.fromJson(Map<String,dynamic> json) => _$ProfileResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ProfileResponseToJson(this);
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
  factory ProfileDataResponse.fromJson(Map<String,dynamic> json) => _$ProfileDataResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ProfileDataResponseToJson(this);
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
  factory PortfolioDataResponse.fromJson(Map<String,dynamic> json) => _$PortfolioDataResponseFromJson(json);
  Map<String,dynamic> toJson() => _$PortfolioDataResponseToJson(this);
}

// @JsonSerializable()
// class UpdateProfileResponse extends BaseResponse {
//   @JsonKey(name: "data")
//   ProfileResponse? profileResponse;
//   UpdateProfileResponse(this.profileResponse);
// }

// @JsonSerializable()
// class EditProfileResponse extends BaseResponse {
//   @JsonKey(name: "data")
//   ProfileResponse? profileResponse;
//   EditProfileResponse(this.profileResponse);
// }

// @JsonSerializable()
// class EditProfileLanguageResponse extends BaseResponse {
//   @JsonKey(name: "data")
//   ProfileResponse? profileResponse;
//   EditProfileLanguageResponse(this.profileResponse);
// }

@JsonSerializable()
class GetDataPortfoliosResponse {
  @JsonKey(name: "profile")
  ProfileDataResponse? profileDataResponse;
  @JsonKey(name: "portfolio")
  List<PortfolioDataResponse>? portfolioDataListResponse;
  GetDataPortfoliosResponse(
      this.portfolioDataListResponse, this.profileDataResponse);
  factory GetDataPortfoliosResponse.fromJson(Map<String,dynamic> json) => _$GetDataPortfoliosResponseFromJson(json);
  Map<String,dynamic> toJson() => _$GetDataPortfoliosResponseToJson(this);
}

@JsonSerializable()
class GetPortfoliosResponse extends BaseResponse {
  @JsonKey(name: "data")
  GetDataPortfoliosResponse? getDataPortfoliosResponse;
  GetPortfoliosResponse(this.getDataPortfoliosResponse);
  factory GetPortfoliosResponse.fromJson(Map<String,dynamic> json) => _$GetPortfoliosResponseFromJson(json);
  Map<String,dynamic> toJson() => _$GetPortfoliosResponseToJson(this);
}

@JsonSerializable()
class EditPortfolioResponse extends BaseResponse {
  @JsonKey(name: "data")
  ProfileResponse? profileResponse;
  EditPortfolioResponse(this.profileResponse);
  factory EditPortfolioResponse.fromJson(Map<String,dynamic> json) => _$EditPortfolioResponseFromJson(json);
  Map<String,dynamic> toJson() => _$EditPortfolioResponseToJson(this);
}

@JsonSerializable()
class AddPortfolioResponse extends BaseResponse {
  @JsonKey(name: "data")
  PortfolioDataResponse? portfolioDataResponse;
  AddPortfolioResponse(this.portfolioDataResponse);
  factory AddPortfolioResponse.fromJson(Map<String,dynamic> json) => _$AddPortfolioResponseFromJson(json);
  Map<String,dynamic> toJson() => _$AddPortfolioResponseToJson(this);
}

@JsonSerializable()
class DeletePortfolioResponse extends BaseResponse {
  @JsonKey(name: "data")
  PortfolioDataResponse? portfolioDataResponse;
  DeletePortfolioResponse(this.portfolioDataResponse);
  factory DeletePortfolioResponse.fromJson(Map<String,dynamic> json) => _$DeletePortfolioResponseFromJson(json);
  Map<String,dynamic> toJson() => _$DeletePortfolioResponseToJson(this);
}
