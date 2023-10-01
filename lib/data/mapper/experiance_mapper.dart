import 'package:jobsque/app/constants.dart';
import 'package:jobsque/app/extensions.dart';
import 'package:jobsque/data/responses/experiance_response/experince_responce.dart';

import '../../domain/model/experiance_model.dart';


extension ExperienceResponseMapper on ExperienceResponse? {
  Experience toDomain() {
    return Experience(
      this?.userId.orEmpty() ?? Constants.empty,
      this?.position.orEmpty() ?? Constants.empty,
      this?.typeWork.orEmpty() ?? Constants.empty,
      this?.end.orDefultDate() ?? Constants.defultDate,
      this?.compName.orEmpty() ?? Constants.empty,
      this?.location.orEmpty() ?? Constants.empty,
      this?.start.orEmpty() ?? Constants.empty,
      this?.updatedAt.orDefultDate() ?? Constants.defultDate,
      this?.createdAt.orDefultDate() ?? Constants.defultDate,
      this?.id.orZero() ?? Constants.zero,
    );
  }
}

extension AddExperienceResponseMapper on AddExperienceResponse? {
  AddExperience toDomain() {
    return AddExperience(this?.experienceResponse.toDomain());
  }
}

extension EndExperienceResponseMapper on EndExperienceResponse? {
  EndExperience toDomain() {
    return EndExperience(this?.experienceResponse.toDomain());
  }
}
