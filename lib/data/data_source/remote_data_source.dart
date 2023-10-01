import 'package:jobsque/data/network/app_api.dart';

import '../network/requests.dart';
import '../responses/apply_response/apply_response.dart';
import '../responses/auth_response/auth_responses.dart';
import '../responses/chat_response/chat_response.dart';
import '../responses/company_response/company_response.dart';
import '../responses/education_response/education_response.dart';
import '../responses/experiance_response/experince_responce.dart';
import '../responses/favorite_response/favorite_response.dart';
import '../responses/job_response/job_responses.dart';
import '../responses/notification_response/notification_response.dart';
import '../responses/profile_response/profile_response.dart';

abstract class RemoteDataSource {
  // Auth
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
  Future<ForgetPasswordResponse> forgetPassword(
      ForgetPasswordRequest forgetPasswordRequest);
  Future<RegisterResponse> register(RegisterRequest registerRequest);
  Future<ProfileDataViewResponse> profileDataView(
      ProfileViewRequest profileViewRequest);
  Future<UpdateNamePasswordResponse> updateNamePassword(
      UpdateNamePasswordRequest updateProfileRequest);

// Profile
  Future<AddPortfolioResponse> addPortofolio(
      AddPortofolioRequest addPortofolioRequest);
  Future<GetPortfoliosResponse> getAllPortofolios(
      GetAllPortofolioseRequest allPortofolioseRequest);
  Future<EditPortfolioResponse> editportofolio(
      EditPortfolioRequest editPortfolioRequest);
  Future<DeletePortfolioResponse> deletePortofolios(
      DeletePortofoliosRequest deletePortofoliosRequest);

// favorites
  Future<AddFavoriteResponse> addFavorite(
      AddFavoriteRequest addFavoriteRequest);

  Future<ShowAllFavoriteResponse> showAllFavorite(
      ShowAllFavoriteRequest showAllFavoriteRequest);

  // education
  Future<ShowAllEducationResponse> showEducation(
      ShowAllEducationRequest showEducationRequest);

  Future<AddEducationResponse> addEducation(
      AddEducationRequest addEducationRequest);

// experince
  Future<AddExperienceResponse> addExperience(
      AddExperienceRequest addExperienceRequest);

  Future<EndExperienceResponse> endExperience(
      EndExperienceRequest endExperienceRequest);

  // Apply Job
  Future<ApplyResponse> apply(ApplyRequest applyRequest);

  Future<ShowApplyResponse> showApply(ShowApplyRequest showApplyRequest);

// Company
  Future<GetAllCompanyResponse> getAllCompany(
      GetAllCompanyRequest getAllCompanyRequest);

// Chat
  Future<UserSendMessageResponse> userSendMessage(
      UserSendMessageRequest userSendMessageRequest);

  Future<CompanySendMessageResponse> companySendMessage(
      CompanySendMessageRequest companySendMessageRequest);

  Future<AllChatResponse> allChat(AllChatRequest allChatRequest);

// notification
  Future<GetNotificationResponse> getNotification(
      GetNotificationRequest getNotificationRequest);

  // Job
  Future<FilterJobResponse> filterJob(FilterJobRequest filterJobRequest);

  Future<SearchJobResponse> searchJob(SearchJobRequest searchJobRequest);

  Future<GetAllJobResponse> getAllJob(GetAllJobRequest getAllJobRequest);

  Future<SuggestJobResponse> suggestJob(SuggestJobRequest suggestJobRequest);

  Future<JobIDResponse> jobID(JobIDRequest jobIDRequest);
}

class RemoteDataSourceImp implements RemoteDataSource {
  AppServiceClient appServiceClient;
  RemoteDataSourceImp(this.appServiceClient);

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async {
    return await appServiceClient.login(
        loginRequest.email, loginRequest.password);
  }

  @override
  Future<ForgetPasswordResponse> forgetPassword(
      ForgetPasswordRequest forgetPasswordRequest) async {
    return await appServiceClient.forgetPassword(forgetPasswordRequest.email);
  }

  @override
  Future<RegisterResponse> register(RegisterRequest registeterRequest) async {
    return await appServiceClient.register(registeterRequest.email,
        registeterRequest.name, registeterRequest.password);
  }

  @override
  Future<AddEducationResponse> addEducation(
      AddEducationRequest addEducationRequest) async {
    return await appServiceClient.addEducation(
        addEducationRequest.token,
        addEducationRequest.universty,
        addEducationRequest.title,
        addEducationRequest.start,
        addEducationRequest.end,
        addEducationRequest.userId,
        addEducationRequest.profileId);
  }

  @override
  Future<AddExperienceResponse> addExperience(
      AddExperienceRequest addExperienceRequest) async {
    return await appServiceClient.addExperience(
        addExperienceRequest.token,
        addExperienceRequest.userId,
        addExperienceRequest.postion,
        addExperienceRequest.typeWork,
        addExperienceRequest.compName,
        addExperienceRequest.location,
        addExperienceRequest.start,
        addExperienceRequest.end);
  }

  @override
  Future<AddFavoriteResponse> addFavorite(
      AddFavoriteRequest addFavoriteRequest) async {
    return await appServiceClient.addFavorite(addFavoriteRequest.token,
        addFavoriteRequest.userId, addFavoriteRequest.jobId);
  }

  @override
  Future<AddPortfolioResponse> addPortofolio(
      AddPortofolioRequest addPortofolioRequest) async {
    return await appServiceClient.addPortofolio(addPortofolioRequest.token);
  }

  @override
  Future<AllChatResponse> allChat(AllChatRequest allChatRequest) async {
    return await appServiceClient.allChat(
        allChatRequest.token, allChatRequest.userId, allChatRequest.compId);
  }

  @override
  Future<ApplyResponse> apply(ApplyRequest applyRequest) async {
    return await appServiceClient.apply(
        applyRequest.token,
        applyRequest.name,
        applyRequest.end,
        applyRequest.mobile,
        applyRequest.workType,
        applyRequest.otherFile,
        applyRequest.jobsId,
        applyRequest.userId,
        applyRequest.reviewed,
        applyRequest.updatedAt,
        applyRequest.createdAt,
        applyRequest.id);
  }

  @override
  Future<CompanySendMessageResponse> companySendMessage(
      CompanySendMessageRequest companySendMessageRequest) async {
    return await appServiceClient.companySendMessage(
        companySendMessageRequest.token,
        companySendMessageRequest.massage,
        companySendMessageRequest.userId,
        companySendMessageRequest.compId);
  }

  @override
  Future<DeletePortfolioResponse> deletePortofolios(
      DeletePortofoliosRequest deletePortofoliosRequest) async {
    return await appServiceClient
        .deletePortofolios(deletePortofoliosRequest.token);
  }

  @override
  Future<EditPortfolioResponse> editportofolio(
      EditPortfolioRequest editPortfolioRequest) async {
    return await appServiceClient.editportofolio(editPortfolioRequest.token);
  }

  @override
  Future<EndExperienceResponse> endExperience(
      EndExperienceRequest endExperienceRequest) async {
    return await appServiceClient.endExperience(
        endExperienceRequest.token, endExperienceRequest.end);
  }

  @override
  Future<FilterJobResponse> filterJob(FilterJobRequest filterJobRequest) async {
    return await appServiceClient.filterJob(
        filterJobRequest.token,
        filterJobRequest.name,
        filterJobRequest.location,
        filterJobRequest.salary);
  }

  @override
  Future<GetAllCompanyResponse> getAllCompany(
      GetAllCompanyRequest getAllCompanyRequest) async {
    return await appServiceClient.getAllCompany(getAllCompanyRequest.token);
  }

  @override
  Future<GetAllJobResponse> getAllJob(GetAllJobRequest getAllJobRequest) async {
    return await appServiceClient.getAllJob(getAllJobRequest.token);
  }

  @override
  Future<GetPortfoliosResponse> getAllPortofolios(
      GetAllPortofolioseRequest allPortofolioseRequest) async {
    return await appServiceClient
        .getAllPortofolios(allPortofolioseRequest.token);
  }

  @override
  Future<GetNotificationResponse> getNotification(
      GetNotificationRequest getNotificationRequest) async {
    return await appServiceClient.getNotification(getNotificationRequest.token);
  }

  @override
  Future<ProfileDataViewResponse> profileDataView(
      ProfileViewRequest profileViewRequest) async {
    return await appServiceClient.profilePage(profileViewRequest.token);
  }

  @override
  Future<SearchJobResponse> searchJob(SearchJobRequest searchJobRequest) async {
    return await appServiceClient.searchJob(
        searchJobRequest.token, searchJobRequest.name);
  }

  @override
  Future<ShowAllFavoriteResponse> showAllFavorite(
      ShowAllFavoriteRequest showAllFavoriteRequest) async {
    return await appServiceClient.showAllFavorite(showAllFavoriteRequest.token,
        showAllFavoriteRequest.userId, showAllFavoriteRequest.jobId);
  }

  @override
  Future<ShowApplyResponse> showApply(ShowApplyRequest showApplyRequest) async {
    return await appServiceClient.showApply(showApplyRequest.token);
  }

  @override
  Future<ShowAllEducationResponse> showEducation(
      ShowAllEducationRequest showEducationRequest) async {
    return await appServiceClient.showEducation(showEducationRequest.token);
  }

  @override
  Future<SuggestJobResponse> suggestJob(
      SuggestJobRequest suggestJobRequest) async {
    return await appServiceClient.suggestJob(suggestJobRequest.token);
  }

  @override
  Future<UpdateNamePasswordResponse> updateNamePassword(
      UpdateNamePasswordRequest updateNamePasswordRequest) async {
    return await appServiceClient.updateNamePassword(
        updateNamePasswordRequest.token,
        updateNamePasswordRequest.name,
        updateNamePasswordRequest.email);
  }

  @override
  Future<UserSendMessageResponse> userSendMessage(
      UserSendMessageRequest userSendMessageRequest) async {
    return await appServiceClient.userSendMessage(
        userSendMessageRequest.token,
        userSendMessageRequest.massage,
        userSendMessageRequest.userId,
        userSendMessageRequest.compId);
  }

  @override
  Future<JobIDResponse> jobID(JobIDRequest jobIDRequest) async {
    return await appServiceClient.jobID(jobIDRequest.token);
  }
}
