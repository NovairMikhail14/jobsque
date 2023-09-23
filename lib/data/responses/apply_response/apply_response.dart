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
  String? jobsId;
  @JsonKey(name: "user_id")
  String? userId;
  @JsonKey(name: "reviewed")
  bool? reviewed;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
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
    this.updatedAt,
    this.createdAt,
    this.id,
  );
}

@JsonSerializable()
class ApplyResponse extends BaseResponse {
  @JsonKey(name: "data")
  ApplyDataResponse applyDataResponse;
  ApplyResponse(this.applyDataResponse);
}

@JsonSerializable()
class ShowApplyResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<ApplyDataResponse> applyDataListResponse;
  ShowApplyResponse(this.applyDataListResponse);
}
