import 'package:jobsque/app/constants.dart';
import '../../domain/model/favorite_model.dart';
import '../responses/favorite_response/favorite_response.dart';
import 'package:jobsque/app/extensions.dart';

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
      this?.like ?? false,
      this?.imageJob.orEmpty() ?? Constants.empty,
      this?.userName.orEmpty() ?? Constants.empty,
      this?.location.orEmpty() ?? Constants.empty,
      this?.userId.orZero() ?? Constants.zero,
      this?.jobId.orEmpty() ?? Constants.empty,
    );
  }
}

extension DataResponseMapper on DataResponse? {
  Data toDomain() {
    return Data(this?.jobResponse.toDomain(), this?.userResponse.toDomain());
  }
}

extension FavoriteResponseMapper on AddFavoriteResponse? {
  Favorite toDomain() {
    return Favorite(this?.dataResponse.toDomain());
  }
}

extension NonNulllist on List<FavoriteJobResponse>? {
  List<Job> toDomain() {
    if (this == null) {
      return [];
    } else {
      return this!.map((e) => e.toDomain()).toList();
    }
  }
}

extension ShowAllFavoriteResponseMapper on ShowAllFavoriteResponse? {
  ShowAllFavorite toDomain() {
    return ShowAllFavorite(this?.jobListResponse.toDomain());
  }
}
