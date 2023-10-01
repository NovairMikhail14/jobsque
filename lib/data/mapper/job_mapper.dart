import 'package:jobsque/app/constants.dart';
import 'package:jobsque/app/extensions.dart';
import 'package:jobsque/data/responses/job_response/job_responses.dart';
import 'package:jobsque/domain/model/job_model.dart';

extension JobResponseMapper on JobResponse? {
  Job toDomain() {
    return Job(
      this?.id.orZero() ?? Constants.zero,
      this?.name.orEmpty() ?? Constants.empty,
      this?.image.orEmpty() ?? Constants.empty,
      this?.jobTimeType.orEmpty() ?? Constants.empty,
      this?.jobType.orEmpty() ?? Constants.empty,
      this?.jobLevel.orEmpty() ?? Constants.empty,
      this?.jobDescription.orEmpty() ?? Constants.empty,
      this?.jobSkill.orEmpty() ?? Constants.empty,
      this?.compName.orEmpty() ?? Constants.empty,
      this?.compEmail.orEmpty() ?? Constants.empty,
      this?.compWebsite.orEmpty() ?? Constants.empty,
      this?.aboutComp.orEmpty() ?? Constants.empty,
      this?.location.orEmpty() ?? Constants.empty,
      this?.salary.orEmpty() ?? Constants.empty,
      this?.favorites.orZero() ?? Constants.zero,
      this?.expired.orZero() ?? Constants.zero,
      this?.createdAt.orDefultDate() ?? Constants.defultDate,
      this?.updatedAt.orDefultDate() ?? Constants.defultDate,
    );
  }
}

extension NonNulllist on List<JobResponse>? {
  List<Job> toDomain() {
    if (this == null) {
      return [];
    } else {
      return this!.map((e) => e.toDomain()).toList();
    }
  }
}

extension FilterJobResponseMapper on FilterJobResponse? {
  FilterJob toDomain() {
    return FilterJob(this?.jobResponse.toDomain());
  }
}

extension GetAllJobResponseMapper on GetAllJobResponse? {
  GetAllJob toDomain() {
    return GetAllJob(this?.jobListResponse.toDomain()??[]);
  }
}

extension SearchJobResponseMapper on SearchJobResponse? {
  SearchJob toDomain() {
    return SearchJob(this?.jobListResponse.toDomain()??[]);
  }
}

extension SuggestJobResponseMapper on SuggestJobResponse? {
  SuggestJob toDomain() {
    return SuggestJob(this?.jobResponse.toDomain());
  }
}

extension JobIDResponseMapper on JobIDResponse? {
  JobID toDomain() {
    return JobID(this?.jobResponse.toDomain());
  }
}
