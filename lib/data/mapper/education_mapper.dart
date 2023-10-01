import 'package:jobsque/app/constants.dart';

import '../../domain/model/education_model.dart';
import '../responses/education_response/education_response.dart';
import 'package:jobsque/app/extensions.dart';

extension EducationDataResponseMapper on EducationDataResponse? {
  EducationData toDomain() {
    return EducationData(
      this?.createdAt.orEmpty() ?? Constants.empty,
      this?.end.orEmpty() ?? Constants.empty,
      this?.id.orEmpty() ?? Constants.empty,
      this?.profileId.orEmpty() ?? Constants.empty,
      this?.start.orEmpty() ?? Constants.empty,
      this?.title.orEmpty() ?? Constants.empty,
      this?.universty.orEmpty() ?? Constants.empty,
      this?.updatedAt.orEmpty() ?? Constants.empty,
      this?.userId.orZero() ?? Constants.zero,
    );
  }
}

extension AddEducationResponseMapper on AddEducationResponse? {
  AddEducation toDomain() {
    return AddEducation(this?.educationDataResponse.toDomain());
  }
}

extension NonNulllist on List<EducationDataResponse?>? {
  List<EducationData> toDomain() {
    if (this == null) {
      return [];
    } else {
      return this!.map((e) => e.toDomain()).toList();
    }
  }
}

extension ShowAllEducationResponseMapper on ShowAllEducationResponse? {
  ShowAllEducation toDomain() {
    return ShowAllEducation(this?.showAllEducationDataResponse.toDomain()??[]);
  }
}
