class Profile {
  String bio;
  String address;
  String mobile;
  String language;
  String interestedWork;
  String offlinePlace;
  String remotePlace;
  String experience;
  String personalDetailed;
  String education;
  Profile(
    this.bio,
    this.address,
    this.mobile,
    this.language,
    this.interestedWork,
    this.offlinePlace,
    this.remotePlace,
    this.experience,
    this.personalDetailed,
    this.education,
  );
}

class ProfileData {
  int id;
  int userId;
  String name;
  String email;
  dynamic mobile;
  dynamic address;
  dynamic language;
  dynamic interestedWork;
  dynamic offlinePlace;
  dynamic remotePlace;
  dynamic bio;
  dynamic education;
  dynamic experience;
  dynamic personalDetailed;
  DateTime createdAt;
  DateTime updatedAt;
  ProfileData(
    this.id,
    this.userId,
    this.name,
    this.email,
    this.mobile,
    this.address,
    this.language,
    this.interestedWork,
    this.offlinePlace,
    this.remotePlace,
    this.bio,
    this.education,
    this.experience,
    this.personalDetailed,
    this.createdAt,
    this.updatedAt,
  );
}

class Portfolio {
  String name;
  String image;
  int userId;
  DateTime updatedAt;
  DateTime createdAt;
  int id;
  Portfolio(
    this.name,
    this.image,
    this.userId,
    this.updatedAt,
    this.createdAt,
    this.id,
  );
}

class PortfolioData {
  int id;
  int cv;
  String name;
  String image;
  int userId;
  DateTime updatedAt;
  DateTime createdAt;
  PortfolioData(
    this.name,
    this.cv,
    this.image,
    this.userId,
    this.updatedAt,
    this.createdAt,
    this.id,
  );
}

class UpdateProfile {
  Profile? profile;
  UpdateProfile(this.profile);
}

class EditProfile {
  Profile? profile;
  EditProfile(this.profile);
}

class EditProfileLanguage {
  Profile? profile;
  EditProfileLanguage(this.profile);
}

class GetDataPortfolios {
  ProfileData? profileData;
  List<PortfolioData>? portfolioDataList;
  GetDataPortfolios(this.profileData, this.portfolioDataList);
}

class GetPortfolios {
  GetDataPortfolios? getDataPortfolios;
  GetPortfolios(this.getDataPortfolios);
}

class EditPortfolio {
  Profile? profile;
  EditPortfolio(this.profile);
}

class DeletePortfolio {
  PortfolioData? portfolioData;
  DeletePortfolio(this.portfolioData);
}
