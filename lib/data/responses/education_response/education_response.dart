import 'package:json_annotation/json_annotation.dart';
part 'education_response.g.dart';


@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}
@JsonSerializable()
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
  factory EducationDataResponse.fromJson(Map<String,dynamic> json) => _$EducationDataResponseFromJson(json);
  Map<String,dynamic> toJson() => _$EducationDataResponseToJson(this);
}
@JsonSerializable()
class AddEducationResponse extends BaseResponse {
  @JsonKey(name: "data")
  EducationDataResponse? educationDataResponse;
  AddEducationResponse(this.educationDataResponse);
  factory AddEducationResponse.fromJson(Map<String,dynamic> json) => _$AddEducationResponseFromJson(json);
  Map<String,dynamic> toJson() => _$AddEducationResponseToJson(this);
}
@JsonSerializable()
class ShowAllEducationResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<EducationDataResponse>? showAllEducationDataResponse;
  ShowAllEducationResponse(this.showAllEducationDataResponse);
  factory ShowAllEducationResponse.fromJson(Map<String,dynamic> json) => _$ShowAllEducationResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ShowAllEducationResponseToJson(this);
}