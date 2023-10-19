import 'package:jobsque/app/constants.dart';
import 'package:jobsque/data/responses/favorite_response/favorite_response.dart';

import 'package:jobsque/app/extensions.dart';

import '../../domain/model/favorite_model.dart';

extension JobResponseMapper on FavoriteJobResponse? {
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

extension UserResponseMapper on FavoriteUserResponse? {
  User toDomain() {
    return User(
        this?.id.orZero() ?? Constants.zero,
        this?.userId.orZero() ?? Constants.zero,
        this?.like.orZero() ?? Constants.zero,
        this?.jobId.orZero() ?? Constants.zero,
        this?.imageJob.orEmpty() ?? Constants.empty,
        this?.userName.orEmpty() ?? Constants.empty,
        this?.location.orEmpty() ?? Constants.empty,
        this?.createdAt.orDefultDate() ?? Constants.defultDate,
        this?.updatedAt.orDefultDate() ?? Constants.defultDate,
        this?.job.toDomain());
  }
}

extension DataResponseMapper on DataResponse? {
  Data toDomain() {
    return Data(this?.jobResponse.toDomain(), this?.userResponse.toDomain());
  }
}

extension FavoriteResponseMapper on AddFavoriteResponse? {
  AddFavorite toDomain() {
    return AddFavorite(this?.dataResponse.toDomain());
  }
}

extension NonNulllist on List<FavoriteUserResponse>? {
  List<User> toDomain() {
    if (this == null) {
      return [];
    } else {
      return this!.map((e) => e.toDomain()).toList();
    }
  }
}

extension ShowAllFavoriteResponseMapper on ShowAllFavoriteResponse? {
  ShowAllFavorite toDomain() {
    return ShowAllFavorite(this?.jobListResponse.toDomain() ?? []);
  }
}

extension DeleteFavoriteResponseMapper on deleteFavoriteResponse? {
  DeleteFavorite toDomain() {
    return DeleteFavorite();
  }
}