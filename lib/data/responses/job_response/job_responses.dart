import 'package:json_annotation/json_annotation.dart';
part 'job_responses.g.dart';

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
  factory JobResponse.fromJson(Map<String,dynamic> json) => _$JobResponseFromJson(json);
  Map<String,dynamic> toJson() => _$JobResponseToJson(this);
}

@JsonSerializable()
class FilterJobResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<JobResponse>? jobResponse;
  FilterJobResponse(this.jobResponse);
  factory FilterJobResponse.fromJson(Map<String,dynamic> json) => _$FilterJobResponseFromJson(json);
  Map<String,dynamic> toJson() => _$FilterJobResponseToJson(this);
}

@JsonSerializable()
class SearchJobResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<JobResponse>? jobListResponse;
  SearchJobResponse(this.jobListResponse);
  factory SearchJobResponse.fromJson(Map<String,dynamic> json) => _$SearchJobResponseFromJson(json);
  Map<String,dynamic> toJson() => _$SearchJobResponseToJson(this);
}

@JsonSerializable()
class GetAllJobResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<JobResponse>? jobListResponse;
  GetAllJobResponse(this.jobListResponse);
  factory GetAllJobResponse.fromJson(Map<String,dynamic> json) => _$GetAllJobResponseFromJson(json);
  Map<String,dynamic> toJson() => _$GetAllJobResponseToJson(this);
}

@JsonSerializable()
class SuggestJobResponse extends BaseResponse {
  @JsonKey(name: "data")
  JobResponse? jobResponse;
  SuggestJobResponse(this.jobResponse);
  factory SuggestJobResponse.fromJson(Map<String,dynamic> json) => _$SuggestJobResponseFromJson(json);
  Map<String,dynamic> toJson() => _$SuggestJobResponseToJson(this);
}

@JsonSerializable()
class JobIDResponse extends BaseResponse {
  @JsonKey(name: "data")
  JobResponse? jobResponse;
  JobIDResponse(this.jobResponse);
  factory JobIDResponse.fromJson(Map<String,dynamic> json) => _$JobIDResponseFromJson(json);
  Map<String,dynamic> toJson() => _$JobIDResponseToJson(this);
}
