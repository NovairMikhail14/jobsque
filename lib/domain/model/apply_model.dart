class ApplyData {
  String cvFile;
  String name;
  String email;
  String mobile;
  String workType;
  String otherFile;
  String jobsId;
  String userId;
  bool reviewed;
  DateTime updatedAt;
  DateTime createdAt;
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
