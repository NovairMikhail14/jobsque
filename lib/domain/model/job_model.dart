

class Job {
  int id;
  String name;
  String image;
  String jobTimeType;
  String jobType;
  String jobLevel;
  String jobDescription;
  String jobSkill;
  String compName;
  String compEmail;
  String compWebsite;
  String aboutComp;
  String location;
  String salary;
  int favorites;
  int expired;
  DateTime createdAt;
  DateTime updatedAt;

  Job(
    this.id,
    this.name,
    this.image,
    this.jobTimeType,
    this.jobType,
    this.jobLevel,
    this.jobDescription,
    this.jobSkill,
    this.compName,
    this.compEmail,
    this.compWebsite,
    this.aboutComp,
    this.location,
    this.salary,
    this.favorites,
    this.expired,
    this.createdAt,
    this.updatedAt,
  );
}

class FilterJob {
  List<Job>? jobResponse;
  FilterJob(this.jobResponse);
}

class GetAllJob {
  List<Job>? jobResponse;
  GetAllJob(this.jobResponse);
}
