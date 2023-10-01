import 'package:json_annotation/json_annotation.dart';
part 'notification_response.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class NotificationResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "user_id")
  String? userId;
  @JsonKey(name: "comp_id")
  String? compId;
  @JsonKey(name: "comp_name")
  String? compName;
  @JsonKey(name: "user_name")
  String? userName;
  @JsonKey(name: "last_massage")
  String? lastMassage;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;

  NotificationResponse(
    this.id,
    this.userId,
    this.compId,
    this.compName,
    this.userName,
    this.lastMassage,
    this.createdAt,
    this.updatedAt,
  );
  factory NotificationResponse.fromJson(Map<String,dynamic> json) => _$NotificationResponseFromJson(json);
  Map<String,dynamic> toJson() => _$NotificationResponseToJson(this);
}

@JsonSerializable()
class GetNotificationResponse extends BaseResponse {
  @JsonKey(name: "data")
  NotificationResponse? notificationResponse;
  GetNotificationResponse(this.notificationResponse);
  factory GetNotificationResponse.fromJson(Map<String,dynamic> json) => _$GetNotificationResponseFromJson(json);
  Map<String,dynamic> toJson() => _$GetNotificationResponseToJson(this);
}
