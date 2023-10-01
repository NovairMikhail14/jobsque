import 'package:json_annotation/json_annotation.dart';
part 'company_response.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class CompanyResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "image")
  dynamic? image;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "website")
  String? website;
  @JsonKey(name: "about")
  String? about;
  @JsonKey(name: "location")
  String? location;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;

  CompanyResponse(
    this.id,
    this.name,
    this.image,
    this.email,
    this.website,
    this.about,
    this.location,
    this.createdAt,
    this.updatedAt,
  );
  factory CompanyResponse.fromJson(Map<String,dynamic> json) => _$CompanyResponseFromJson(json);
  Map<String,dynamic> toJson() => _$CompanyResponseToJson(this);
}

@JsonSerializable()
class GetAllCompanyResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<CompanyResponse>? companyListResponce;
  GetAllCompanyResponse(this.companyListResponce);
  factory GetAllCompanyResponse.fromJson(Map<String,dynamic> json) => _$GetAllCompanyResponseFromJson(json);
  Map<String,dynamic> toJson() => _$GetAllCompanyResponseToJson(this);
}
