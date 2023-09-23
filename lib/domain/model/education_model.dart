class EducationData {
  String id;
  String universty;
  String title;
  String start;
  String end;
  int userId;
  String profileId;
  String createdAt;
  String updatedAt;
  EducationData(
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

class Education {
  EducationData? educationData;
  Education(this.educationData);
}
