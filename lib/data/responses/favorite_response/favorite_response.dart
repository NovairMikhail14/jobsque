import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobsque/domain/model/auth_models.dart';
part 'favorite_response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class FavoriteJobResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "job_time_type")
  String? jobTimeType;
  @JsonKey(name: "job_type")
  String? jobType;
  @JsonKey(name: "job_level")
  String? jobLevel;
  @JsonKey(name: "job_description")
  String? jobDescription;
  @JsonKey(name: "job_skill")
  String? jobSkill;
  @JsonKey(name: "comp_name")
  String? compName;
  @JsonKey(name: "comp_email")
  String? compEmail;
  @JsonKey(name: "comp_website")
  String? compWebsite;
  @JsonKey(name: "about_comp")
  String? aboutComp;
  @JsonKey(name: "location")
  String? location;
  @JsonKey(name: "salary")
  String? salary;
  @JsonKey(name: "favorites")
  int? favorites;
  @JsonKey(name: "expired")
  int? expired;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;

  FavoriteJobResponse(
    this.id,
    this.name,
    this.image,
    this.jobTimeType,
    this.jobType,
    this.jobLevel,
    this.jobDescription,
    this.jobSkill,
    this.compName,
    this.compEmail,
    this.compWebsite,
    this.aboutComp,
    this.location,
    this.salary,
    this.favorites,
    this.expired,
    this.createdAt,
    this.updatedAt,
  );
  factory FavoriteJobResponse.fromJson(Map<String,dynamic> json) => _$FavoriteJobResponseFromJson(json);
  Map<String,dynamic> toJson() => _$FavoriteJobResponseToJson(this);
}

@JsonSerializable()
class FavoriteUserResponse {

  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "user_id")
  int userId;
  @JsonKey(name: "like")
  int like;
  @JsonKey(name: "job_id")
  int jobId;
  @JsonKey(name: "image")
  String imageJob;
  @JsonKey(name: "name")
  String userName;
  @JsonKey(name: "location")
  String location;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "jobs")
  FavoriteJobResponse? job;

  FavoriteUserResponse(
      this.id,
      this.userId,
      this.like,
      this.jobId,
      this.imageJob,
      this.userName,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.job);

  factory FavoriteUserResponse.fromJson(Map<String,dynamic> json) => _$FavoriteUserResponseFromJson(json);
  Map<String,dynamic> toJson() => _$FavoriteUserResponseToJson(this);
}

@JsonSerializable()
class DataResponse {
  @JsonKey(name: "user")
  FavoriteUserResponse? userResponse;
  @JsonKey(name: "job")
  FavoriteJobResponse? jobResponse;
  DataResponse(this.jobResponse, this.userResponse);
  factory DataResponse.fromJson(Map<String,dynamic> json) => _$DataResponseFromJson(json);
  Map<String,dynamic> toJson() => _$DataResponseToJson(this);
}

@JsonSerializable()
class AddFavoriteResponse extends BaseResponse {
  @JsonKey(name: "data")
  DataResponse? dataResponse;
  AddFavoriteResponse(this.dataResponse);
  factory AddFavoriteResponse.fromJson(Map<String,dynamic> json) => _$AddFavoriteResponseFromJson(json);
  Map<String,dynamic> toJson() => _$AddFavoriteResponseToJson(this);
}

@JsonSerializable()
class ShowAllFavoriteResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<FavoriteUserResponse>? jobListResponse;
  ShowAllFavoriteResponse(this.jobListResponse);
  factory ShowAllFavoriteResponse.fromJson(Map<String,dynamic> json) => _$ShowAllFavoriteResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ShowAllFavoriteResponseToJson(this);
}
@JsonSerializable()
class deleteFavoriteResponse extends BaseResponse {
  deleteFavoriteResponse();
  factory deleteFavoriteResponse.fromJson(Map<String,dynamic> json) => _$deleteFavoriteResponseFromJson(json);
  Map<String,dynamic> toJson() => _$deleteFavoriteResponseToJson(this);
}
