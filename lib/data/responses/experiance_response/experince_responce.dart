import 'package:json_annotation/json_annotation.dart';
part 'experince_responce.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class ExperienceResponse {
  @JsonKey(name: "user_id")
  String? userId;
  @JsonKey(name: "postion")
  String? position;
  @JsonKey(name: "type_work")
  String? typeWork;
  @JsonKey(name: "comp_name")
  String? compName;
  @JsonKey(name: "location")
  String? location;
  @JsonKey(name: "start")
  String? start;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "end")
  DateTime? end;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "id")
  int? id;

  ExperienceResponse(
    this.userId,
    this.position,
    this.typeWork,
    this.end,
    this.compName,
    this.location,
    this.start,
    this.updatedAt,
    this.createdAt,
    this.id,
  );
  factory ExperienceResponse.fromJson(Map<String,dynamic> json) => _$ExperienceResponseFromJson(json);
  Map<String,dynamic> toJson() => _$ExperienceResponseToJson(this);
}

@JsonSerializable()
class AddExperienceResponse extends BaseResponse {
  @JsonKey(name: "data")
  ExperienceResponse? experienceResponse;
  AddExperienceResponse(this.experienceResponse);
  factory AddExperienceResponse.fromJson(Map<String,dynamic> json) => _$AddExperienceResponseFromJson(json);
  Map<String,dynamic> toJson() => _$AddExperienceResponseToJson(this);
}

@JsonSerializable()
class EndExperienceResponse extends BaseResponse {
  @JsonKey(name: "data")
  ExperienceResponse? experienceResponse;
  EndExperienceResponse(this.experienceResponse);
  factory EndExperienceResponse.fromJson(Map<String,dynamic> json) => _$EndExperienceResponseFromJson(json);
  Map<String,dynamic> toJson() => _$EndExperienceResponseToJson(this);
}
