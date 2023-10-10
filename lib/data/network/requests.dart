// Auth

import 'dart:io';

class ProfileViewRequest {
  String token;
  ProfileViewRequest(this.token);
}

class LoginRequest {
  String email;
  String password;
  LoginRequest(this.email, this.password);
}

class ForgetPasswordRequest {
  String email;
  ForgetPasswordRequest(this.email);
}

class RegisterRequest {
  String name;
  String email;
  String password;
  RegisterRequest(this.name, this.email, this.password);
}

class UpdateNamePasswordRequest {
  String token;
  String name;
  String email;
  UpdateNamePasswordRequest(this.token, this.email, this.name);
}

// Profile
class AddPortofolioRequest {
  File cv_file;
  File image;
  String token;
  AddPortofolioRequest(this.cv_file, this.image, this.token);
}

class GetAllPortofolioseRequest {
  String token;
  GetAllPortofolioseRequest(this.token);
}

class EditPortfolioRequest {
  String? token;
  String? bio;
  String? address;
  String? mobile;
  String? language;
  String? interested_work;
  String? offline_place;
  String? remote_place;
  String? experience;
  String? personal_detailed;
  String? education;

  EditPortfolioRequest(
      this.token,
      this.bio,
      this.address,
      this.mobile,
      this.language,
      this.interested_work,
      this.offline_place,
      this.remote_place,
      this.experience,
      this.personal_detailed,
      this.education);
}

class DeletePortofoliosRequest {
  int id;
  String token;
  DeletePortofoliosRequest(this.token, this.id);
}

// favorites
class ShowAllFavoriteRequest {
  String token;
  String userId;
  String jobId;
  ShowAllFavoriteRequest(this.token, this.jobId, this.userId);
}

class AddFavoriteRequest {
  String token;
  String userId;
  String jobId;
  AddFavoriteRequest(this.token, this.jobId, this.userId);
}

// education
class ShowAllEducationRequest {
  String token;
  ShowAllEducationRequest(this.token);
}

class AddEducationRequest {
  String token;
  String universty;
  String title;
  String start;
  String userId;
  String end;
  String userIdl;
  String profileId;
  AddEducationRequest(this.token, this.userId, this.start, this.end,
      this.profileId, this.title, this.universty, this.userIdl);
}

// experince
class AddExperienceRequest {
  String token;
  String userId;
  String typeWork;
  String compName;
  String location;
  String postion;
  String start;
  String end;
  AddExperienceRequest(
      this.token,
      this.compName,
      this.postion,
      this.end,
      this.location,
      this.start,
      this.typeWork,
      this.userId,
      );
}

class EndExperienceRequest {
  String token;
  String end;
  EndExperienceRequest(this.token, this.end);
}

// Apply Job
class ApplyRequest {
  String token;
  String name;
  String end;
  String mobile;
  String workType;
  String otherFile;
  String jobsId;
  String userId;
  String reviewed;
  String updatedAt;
  String createdAt;
  String id;
  ApplyRequest(
      this.token,
      this.otherFile,
      this.createdAt,
      this.end,
      this.id,
      this.jobsId,
      this.mobile,
      this.userId,
      this.name,
      this.reviewed,
      this.updatedAt,
      this.workType);
}

class ShowApplyRequest {
  String token;
  ShowApplyRequest(
      this.token,
      );
}

// Company
class GetAllCompanyRequest {
  String token;
  GetAllCompanyRequest(
      this.token,
      );
}

// Chat
class UserSendMessageRequest {
  String token;
  String massage;
  String userId;
  String compId;
  UserSendMessageRequest(this.token, this.compId, this.massage, this.userId);
}

class CompanySendMessageRequest {
  String token;
  String userId;
  String compId;
  String massage;
  CompanySendMessageRequest(this.token, this.compId, this.massage, this.userId);
}

class AllChatRequest {
  String token;
  String userId;
  String compId;
  AllChatRequest(this.token, this.compId, this.userId);
}

// notification
class GetNotificationRequest {
  String token;
  GetNotificationRequest(
      this.token,
      );
}

// Job
class FilterJobRequest {
  String token;
  String name;
  String location;
  String salary;
  FilterJobRequest(this.token, this.location, this.name, this.salary);
}

class JobIDRequest {
  String token;
  String jobId;
  JobIDRequest(
      this.token,this.jobId
      );
}

class GetAllJobRequest {
  String token;
  GetAllJobRequest(
      this.token,
      );
}

class SuggestJobRequest {
  String token;
  SuggestJobRequest(
      this.token,
      );
}

class SearchJobRequest {
  String token;
  String name;
  SearchJobRequest(this.token, this.name);
}
