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
      this?.jobsId.orEmpty() ?? Constants.empty,
      this?.userId.orEmpty() ?? Constants.empty,
      this?.reviewed ?? false,
      this?.updatedAt.orDefultDate() ?? Constants.defultDate,
      this?.createdAt.orDefultDate() ?? Constants.defultDate,
      this?.id.orZero() ?? Constants.zero,
    );
  }
}

extension ApplyResponseMapper on ApplyResponse {
  Apply toDomain() {
    return Apply(this?.applyDataResponse.toDomain());
  }
}

extension NonNulllist on List<ApplyDataResponse>? {
  List<ApplyData> toDomain() {
    if (this == null) {
      return [];
    } else {
      return this!.map((e) => e.toDomain()).toList();
    }
  }
}

extension ShowApplyResponseMapper on ShowApplyResponse? {
  ShowApply toDomain() {
    return ShowApply(this?.applyDataListResponse.toDomain());
  }
}
