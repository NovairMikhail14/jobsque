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
        "Bearer ${addEducationRequest.token}",
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
        "Bearer ${addExperienceRequest.token}",
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
    return await appServiceClient.addFavorite(
        "Bearer ${addFavoriteRequest.token}",
        addFavoriteRequest.userId,
        addFavoriteRequest.jobId);
  }

  @override
  Future<AddPortfolioResponse> addPortofolio(
      AddPortofolioRequest addPortofolioRequest) async {
    return await appServiceClient
        .addPortofolio(addPortofolioRequest.cv_file,addPortofolioRequest.image,"Bearer ${addPortofolioRequest.token}" );
  }

  @override
  Future<AllChatResponse> allChat(AllChatRequest allChatRequest) async {
    return await appServiceClient.allChat("Bearer ${allChatRequest.token}",
        allChatRequest.userId, allChatRequest.compId);
  }

  @override
  Future<ApplyResponse> apply(ApplyRequest applyRequest) async {
    return await appServiceClient.apply(
        "Bearer ${applyRequest.token}",
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
        "Bearer ${companySendMessageRequest.token}",
        companySendMessageRequest.massage,
        companySendMessageRequest.userId,
        companySendMessageRequest.compId);
  }

  @override
  Future<DeletePortfolioResponse> deletePortofolios(
      DeletePortofoliosRequest deletePortofoliosRequest) async {
    return await appServiceClient.deletePortofolios(
      "Bearer ${deletePortofoliosRequest.token}",
    );
  }

  @override
  Future<EditPortfolioResponse> editportofolio(
      EditPortfolioRequest editPortfolioRequest) async {
    return await appServiceClient.editportofolio(
        editPortfolioRequest.bio,
        editPortfolioRequest.address,
        editPortfolioRequest.mobile,
        editPortfolioRequest.language,
        editPortfolioRequest.interested_work,
        editPortfolioRequest.remote_place,
        editPortfolioRequest.offline_place,
        editPortfolioRequest.experience,
        editPortfolioRequest.personal_detailed,
        editPortfolioRequest.education,
      "Bearer ${editPortfolioRequest.token}",
    );
  }

  @override
  Future<EndExperienceResponse> endExperience(
      EndExperienceRequest endExperienceRequest) async {
    return await appServiceClient.endExperience(
        "Bearer ${endExperienceRequest.token}", endExperienceRequest.end);
  }

  @override
  Future<FilterJobResponse> filterJob(FilterJobRequest filterJobRequest) async {
    return await appServiceClient.filterJob(
        "Bearer ${filterJobRequest.token}",
        filterJobRequest.name,
        filterJobRequest.location,
        filterJobRequest.salary);
  }

  @override
  Future<GetAllCompanyResponse> getAllCompany(
      GetAllCompanyRequest getAllCompanyRequest) async {
    return await appServiceClient
        .getAllCompany("Bearer ${getAllCompanyRequest.token}");
  }

  @override
  Future<GetAllJobResponse> getAllJob(GetAllJobRequest getAllJobRequest) async {
    return await appServiceClient.getAllJob("Bearer ${getAllJobRequest.token}");
  }

  @override
  Future<GetPortfoliosResponse> getAllPortofolios(
      GetAllPortofolioseRequest allPortofolioseRequest) async {
    return await appServiceClient
        .getAllPortofolios("Bearer ${allPortofolioseRequest.token}");
  }

  @override
  Future<GetNotificationResponse> getNotification(
      GetNotificationRequest getNotificationRequest) async {
    return await appServiceClient
        .getNotification("Bearer ${getNotificationRequest.token}");
  }

  @override
  Future<ProfileDataViewResponse> profileDataView(
      ProfileViewRequest profileViewRequest) async {
    return await appServiceClient
        .profilePage("Bearer ${profileViewRequest.token}");
  }

  @override
  Future<SearchJobResponse> searchJob(SearchJobRequest searchJobRequest) async {
    return await appServiceClient.searchJob(
        "Bearer ${searchJobRequest.token}", searchJobRequest.name);
  }

  @override
  Future<ShowAllFavoriteResponse> showAllFavorite(
      ShowAllFavoriteRequest showAllFavoriteRequest) async {
    return await appServiceClient.showAllFavorite(
        "Bearer ${showAllFavoriteRequest.token}",
        showAllFavoriteRequest.userId,
        showAllFavoriteRequest.jobId);
  }

  @override
  Future<ShowApplyResponse> showApply(ShowApplyRequest showApplyRequest) async {
    return await appServiceClient.showApply("Bearer ${showApplyRequest.token}");
  }

  @override
  Future<ShowAllEducationResponse> showEducation(
      ShowAllEducationRequest showEducationRequest) async {
    return await appServiceClient
        .showEducation("Bearer ${showEducationRequest.token}");
  }

  @override
  Future<SuggestJobResponse> suggestJob(
      SuggestJobRequest suggestJobRequest) async {
    return await appServiceClient
        .suggestJob("Bearer ${suggestJobRequest.token}");
  }

  @override
  Future<UpdateNamePasswordResponse> updateNamePassword(
      UpdateNamePasswordRequest updateNamePasswordRequest) async {
    return await appServiceClient.updateNamePassword(
        "Bearer ${updateNamePasswordRequest.token}",
        updateNamePasswordRequest.name,
        updateNamePasswordRequest.email);
  }

  @override
  Future<UserSendMessageResponse> userSendMessage(
      UserSendMessageRequest userSendMessageRequest) async {
    return await appServiceClient.userSendMessage(
        "Bearer ${userSendMessageRequest.token}",
        userSendMessageRequest.massage,
        userSendMessageRequest.userId,
        userSendMessageRequest.compId);
  }

  @override
  Future<JobIDResponse> jobID(JobIDRequest jobIDRequest) async {
    return await appServiceClient.jobID(
        "Bearer ${jobIDRequest.token}", jobIDRequest.jobId);
  }
}
