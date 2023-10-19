class ApplyData {
  String cvFile;
  String name;
  String email;
  String mobile;
  String workType;
  String otherFile;
  int jobsId;
  int userId;
  int reviewed;
  String accepted;
  String updatedAt;
  String createdAt;
  int id;

  ApplyData(
    this.cvFile,
    this.name,
    this.email,
    this.mobile,
    this.workType,
    this.otherFile,
    this.jobsId,
    this.userId,
    this.reviewed,
    this.accepted,
    this.updatedAt,
    this.createdAt,
    this.id,
  );
}

class Apply {
  ApplyData? applyData;
  Apply(this.applyData);
}

class ShowApply {
  List<ApplyData> applyListData;
  ShowApply(this.applyListData);
}
