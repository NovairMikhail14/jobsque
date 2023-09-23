import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

class EducationDataResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "universty")
  String? universty;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "start")
  String? start;
  @JsonKey(name: "end")
  String? end;
  @JsonKey(name: "user_id")
  int? userId;
  @JsonKey(name: "profile_id")
  String? profileId;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  EducationDataResponse(
    this.createdAt,
    this.end,
    this.id,
    this.profileId,
    this.start,
    this.title,
    this.universty,
    this.updatedAt,
    this.userId,
  );
}

class AddEducationResponse extends BaseResponse {
  @JsonKey(name: "data")
  EducationDataResponse? educationDataResponse;
  AddEducationResponse(this.educationDataResponse);
}
class ShowAllEducationResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<EducationDataResponse?> showAllEducationDataResponse;
  ShowAllEducationResponse(this.showAllEducationDataResponse);
}