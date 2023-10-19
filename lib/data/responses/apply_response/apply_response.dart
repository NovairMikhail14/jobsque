import 'package:json_annotation/json_annotation.dart';
part 'apply_response.g.dart';


//flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class ApplyDataResponse {
  @JsonKey(name: "cv_file")
  String? cvFile;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "mobile")
  String? mobile;
  @JsonKey(name: "work_type")
  String? workType;
  @JsonKey(name: "other_file")
  String? otherFile;
  @JsonKey(name: "jobs_id")
  int? jobsId;
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "reviewed")
  int? reviewed;
  @JsonKey(name: "accept")
  String? accept;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "id")
  int? id;

  ApplyDataResponse(
    this.cvFile,
    this.name,
    this.email,
    this.mobile,
    this.workType,
    this.otherFile,
    this.jobsId,
    this.userId,
    this.reviewed,
      this.accept,
      this.updatedAt,
    this.createdAt,
    this.id,
  );
  factory ApplyDataResponse.fromJson(Map<String,dynamic> json) => _$ApplyDataResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ApplyDataResponseToJson(this);
}

@JsonSerializable()
class ApplyResponse extends BaseResponse {
  @JsonKey(name: "data")
  ApplyDataResponse? applyDataResponse;
  ApplyResponse(this.applyDataResponse);
  factory ApplyResponse.fromJson(Map<String,dynamic> json) => _$ApplyResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ApplyResponseToJson(this);
}

@JsonSerializable()
class ShowApplyResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<ApplyDataResponse>? applyDataListResponse;
  ShowApplyResponse(this.applyDataListResponse);
  factory ShowApplyResponse.fromJson(Map<String,dynamic> json) => _$ShowApplyResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ShowApplyResponseToJson(this);
}
