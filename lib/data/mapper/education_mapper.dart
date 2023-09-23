import 'package:jobsque/app/constants.dart';
import 'package:jobsque/app/extensions.dart';
import '../../domain/model/education_model.dart';
import '../responses/education_response/education_response.dart';


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
  Education toDomain (){ return
  Education(this?.educationDataResponse.toDomain());
  }

}