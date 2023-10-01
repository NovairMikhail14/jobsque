import 'package:jobsque/app/extensions.dart';
import 'package:jobsque/app/constants.dart';
import '../../domain/model/profile_model.dart';
import '../responses/profile_response/profile_response.dart';



extension ProfileResponseMapper on ProfileResponse? {
  Profile toDomain() {
    return Profile(
      this?.bio.orEmpty() ?? Constants.empty,
      this?.address.orEmpty() ?? Constants.empty,
      this?.mobile.orEmpty() ?? Constants.empty,
      this?.language.orEmpty() ?? Constants.empty,
      this?.interestedWork.orEmpty() ?? Constants.empty,
      this?.offlinePlace.orEmpty() ?? Constants.empty,
      this?.remotePlace.orEmpty() ?? Constants.empty,
      this?.experience.orEmpty() ?? Constants.empty,
      this?.personalDetailed.orEmpty() ?? Constants.empty,
      this?.education.orEmpty() ?? Constants.empty,
    );
  }
}

extension ProfileDataResponseMapper on ProfileDataResponse? {
  ProfileData toDomain() {
    return ProfileData(
      this?.id.orZero() ?? Constants.zero,
      this?.userId.orZero() ?? Constants.zero,
      this?.name.orEmpty() ?? Constants.empty,
      this?.email.orEmpty() ?? Constants.empty,
      this?.mobile.orEmpty() ?? Constants.empty,
      this?.address.orEmpty() ?? Constants.empty,
      this?.language.orEmpty() ?? Constants.empty,
      this?.interestedWork.orEmpty() ?? Constants.empty,
      this?.offlinePlace.orEmpty() ?? Constants.empty,
      this?.remotePlace.orEmpty() ?? Constants.empty,
      this?.bio.orEmpty() ?? Constants.empty,
      this?.education.orEmpty() ?? Constants.empty,
      this?.experience.orEmpty() ?? Constants.empty,
      this?.personalDetailed.orEmpty() ?? Constants.empty,
      this?.createdAt.orDefultDate() ?? Constants.defultDate,
      this?.updatedAt.orDefultDate() ?? Constants.defultDate,
    );
  }
}

extension PortfolioDataMapper on PortfolioData? {
  Portfolio toDomain() {
    return Portfolio(
      this?.name.orEmpty() ?? Constants.empty,
      this?.image.orEmpty() ?? Constants.empty,
      this?.userId.orZero() ?? Constants.zero,
      this?.updatedAt.orDefultDate() ?? Constants.defultDate,
      this?.createdAt.orDefultDate() ?? Constants.defultDate,
      this?.id.orZero() ?? Constants.zero,
    );
  }
}

extension PortfolioDataResponseMapper on PortfolioDataResponse? {
  PortfolioData toDomain() {
    return PortfolioData(
      this?.name.orEmpty() ?? Constants.empty,
      this?.cv.orZero() ?? Constants.zero,
      this?.image.orEmpty() ?? Constants.empty,
      this?.userId.orZero() ?? Constants.zero,
      this?.updatedAt.orDefultDate() ?? Constants.defultDate,
      this?.createdAt.orDefultDate() ?? Constants.defultDate,
      this?.id.orZero() ?? Constants.zero,
    );
  }
}

// extension UpdateProfileResponseMapper on UpdateProfileResponse? {
//   UpdateProfile toDomain() {
//     return UpdateProfile(this?.profileResponse.toDomain());
//   }
// }

// extension EditProfileResponse on EditPortfolioResponse? {
//   EditProfile toDomain() {
//     return EditProfile(this?.profileResponse.toDomain());
//   }
// }

// extension EditProfileLanguageResponseMapper on EditProfileLanguageResponse? {
//   EditProfileLanguage toDomain() {
//     return EditProfileLanguage(this?.profileResponse.toDomain());
//   }
// }

extension NonNulllist on List<PortfolioDataResponse>? {
  List<PortfolioData> toDomain() {
    if (this == null) {
      return [];
    } else {
      return this!.map((e) => e.toDomain()).toList();
    }
  }
}

extension GetDataPortfoliosResponseMapper on GetDataPortfoliosResponse? {
  GetDataPortfolios toDomain() {
    return GetDataPortfolios(this?.profileDataResponse.toDomain(),
        this?.portfolioDataListResponse.toDomain()??[]);
  }
}

extension GetPortfoliosResponseMapper on GetPortfoliosResponse? {
  GetPortfolios toDomain() {
    return GetPortfolios(this?.getDataPortfoliosResponse.toDomain());
  }
}

extension EditPortfolioResponseMapper on EditPortfolioResponse? {
  EditPortfolio toDomain() {
    return EditPortfolio(this?.profileResponse.toDomain());
  }
}

extension DeletePortfolioResponseMapper on DeletePortfolioResponse? {
  DeletePortfolio toDomain() {
    return DeletePortfolio(this?.portfolioDataResponse.toDomain());
  }
}

extension AddPortfolioResponseMapper on AddPortfolioResponse? {
  AddPortfolio toDomain() {
    return AddPortfolio(this?.portfolioDataResponse.toDomain());
  }
}
