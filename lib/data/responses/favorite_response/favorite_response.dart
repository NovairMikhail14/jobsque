import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobsque/domain/model/auth_models.dart';

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
}

@JsonSerializable()
class FavoriteUserResponse {
  @JsonKey(name: "like")
  bool like;
  @JsonKey(name: "image_job")
  String imageJob;
  @JsonKey(name: "user_name")
  String userName;
  @JsonKey(name: "location")
  String location;
  @JsonKey(name: "user_id")
  int userId;
  @JsonKey(name: "job_id")
  String jobId;

  FavoriteUserResponse(
    this.like,
    this.imageJob,
    this.userName,
    this.location,
    this.userId,
    this.jobId,
  );
}

@JsonSerializable()
class DataResponse {
  @JsonKey(name: "user")
  FavoriteUserResponse? userResponse;
  @JsonKey(name: "job")
  FavoriteJobResponse? jobResponse;
  DataResponse(this.jobResponse, this.userResponse);
}

@JsonSerializable()
class AddFavoriteResponse extends BaseResponse {
  @JsonKey(name: "data")
  DataResponse? dataResponse;
  AddFavoriteResponse(this.dataResponse);
}

@JsonSerializable()
class ShowAllFavoriteResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<FavoriteJobResponse>? jobListResponse;
  ShowAllFavoriteResponse(this.jobListResponse);
}
