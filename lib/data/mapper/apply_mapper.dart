import 'package:jobsque/app/constants.dart';
import 'package:jobsque/data/responses/apply_response/apply_response.dart';
import 'package:jobsque/app/extensions.dart';

import '../../domain/model/apply_model.dart';


extension ApplyDataResponseMapper on ApplyDataResponse? {
  ApplyData toDomain() {
    return ApplyData(
      this?.cvFile.orEmpty() ?? Constants.empty,
      this?.name.orEmpty() ?? Constants.empty,
      this?.email.orEmpty() ?? Constants.empty,
      this?.mobile.orEmpty() ?? Constants.empty,
      this?.workType.orEmpty() ?? Constants.empty,
      this?.otherFile.orEmpty() ?? Constants.empty,
      this?.jobsId.orZero() ?? Constants.zero,
      this?.userId.orZero() ?? Constants.zero,
      this?.reviewed.orZero() ?? Constants.zero,
      this?.accept.orEmpty() ?? Constants.empty,
      this?.updatedAt.orEmpty() ?? Constants.empty,
      this?.createdAt.orEmpty() ?? Constants.empty,
      this?.id.orZero() ?? Constants.zero,
    );
  }
}

extension ApplyResponseMapper on ApplyResponse? {
  Apply toDomain() {
    return Apply(this?.applyDataResponse.toDomain());
  }
}

extension NonNulllist on List<ApplyDataResponse>? {
  List<ApplyData> toDomain() {
    if (this == null) {
      return [];
    } else {
      return (this?.map((e) => e.toDomain())?? const Iterable.empty()).cast<ApplyData>().toList();
    }
  }
}

extension ShowApplyResponseMapper on ShowApplyResponse? {

  // List<ApplyData> data = (this?.applyDataListResponse?.map((e) => e.toDomain())?? const Iterable.empty()).cast<ApplyData>().toList();
  ShowApply toDomain() {
    return ShowApply((this?.applyDataListResponse.toDomain()??const Iterable.empty()).cast<ApplyData>().toList());
  }
}
