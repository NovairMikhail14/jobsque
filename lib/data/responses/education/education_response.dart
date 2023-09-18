
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BaseResponse{
  @JsonKey(name: "status")
  bool? status;
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
}

class EducationResponse extends BaseResponse {
  @JsonKey(name: "data")
  EducationDataResponse? educationDataResponse;
}