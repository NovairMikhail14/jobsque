import 'package:json_annotation/json_annotation.dart';
// part 'responses.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class JobResponse {
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

  JobResponse(
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
class FilterJobResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<JobResponse>? jobResponse;
  FilterJobResponse(this.jobResponse);
}

@JsonSerializable()
class SearchJobResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<JobResponse>? jobResponse;
  SearchJobResponse(this.jobResponse);
}

@JsonSerializable()
class GetAllJobResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<JobResponse>? jobResponse;
  GetAllJobResponse(this.jobResponse);
}

@JsonSerializable()
class SuggestJobResponse extends BaseResponse {
  @JsonKey(name: "data")
  JobResponse? jobResponse;
  SuggestJobResponse(this.jobResponse);
}
@JsonSerializable()
class JobIDResponse extends BaseResponse {
  @JsonKey(name: "data")
  JobResponse? jobResponse;
  JobIDResponse(this.jobResponse);
}