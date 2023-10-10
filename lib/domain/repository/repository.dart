import 'package:jobsque/data/network/requests.dart';
import 'package:dartz/dartz.dart';
import '../../data/network/failure.dart';
import '../model/apply_model.dart';
import '../model/auth_models.dart';
import '../model/chat_model.dart';
import '../model/company_model.dart';
import '../model/education_model.dart';
import '../model/experiance_model.dart';
import '../model/favorite_model.dart';
import '../model/job_model.dart';
import '../model/notification_model.dart';
import '../model/profile_model.dart';

abstract class Repository {
  // Auth
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
  Future<Either<Failure, ForgetPassword>> forgetPassword(
      ForgetPasswordRequest forgetPasswordRequest);
  Future<Either<Failure, Register>> register(RegisterRequest registeterRequest);
  Future<Either<Failure, ProfileDataView>> profileDataView(
      ProfileViewRequest profileViewRequest);
  Future<Either<Failure, UpdateNamePassword>> updateNamePassword(
      UpdateNamePasswordRequest updateProfileRequest);

// Profile
  Future<Either<Failure, AddPortfolio>> addPortofolio(
      AddPortofolioRequest addPortofolioRequest);
  Future<Either<Failure, GetPortfolios>> getAllPortofolios(
      GetAllPortofolioseRequest getAllPortofolioseRequest);
  Future<Either<Failure, EditPortfolio>> editportofolio(
      EditPortfolioRequest editPortfolioRequest);
  Future<Either<Failure, DeletePortfolio>> deletePortofolios(
      DeletePortofoliosRequest deletePortofoliosRequest);

// favorites
  Future<Either<Failure, AddFavorite>> addFavorite(
      AddFavoriteRequest addFavoriteRequest);

  Future<Either<Failure, ShowAllFavorite>> showAllFavorite(
      ShowAllFavoriteRequest showAllFavoriteRequest);

  // education
  Future<Either<Failure, ShowAllEducation>> showEducation(
      ShowAllEducationRequest showallEducationRequest);

  Future<Either<Failure, AddEducation>> addEducation(
      AddEducationRequest addEducationRequest);

// experince
  Future<Either<Failure, AddExperience>> addExperience(
      AddExperienceRequest addExperienceRequest);

  Future<Either<Failure, EndExperience>> endExperience(
      EndExperienceRequest endExperienceRequest);

  // Apply Job
  Future<Either<Failure, Apply>> apply(ApplyRequest applyRequest);

  Future<Either<Failure, ShowApply>> showApply(
      ShowApplyRequest showApplyRequest);

// Company
  Future<Either<Failure, GetAllCompany>> getAllCompany(
      GetAllCompanyRequest getAllCompanyRequest);

// Chat
  Future<Either<Failure, UserSendMessage>> userSendMessage(
      UserSendMessageRequest userSendMessageRequest);

  Future<Either<Failure, CompanySendMessage>> companySendMessage(
      CompanySendMessageRequest companySendMessageRequest);

  Future<Either<Failure, AllChat>> allChat(AllChatRequest allChatRequest);

// notification
  Future<Either<Failure, GetNotification>> getNotification(
      GetNotificationRequest getNotificationRequest);

  // Job
  Future<Either<Failure, FilterJob>> filterJob(
      FilterJobRequest filterJobRequest);

  Future<Either<Failure, SearchJob>> searchJob(
      SearchJobRequest searchJobRequest);

  Future<Either<Failure, GetAllJob>> getAllJob(
      GetAllJobRequest getAllJobRequest);

  Future<Either<Failure, SuggestJob>> suggestJob(
      SuggestJobRequest suggestJobRequest);

  Future<Either<Failure, JobID>> jobID(JobIDRequest jobIDRequest);
}
