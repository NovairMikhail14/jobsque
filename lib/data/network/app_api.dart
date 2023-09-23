import 'package:dio/dio.dart';
import 'package:jobsque/app/constants.dart';
import 'package:jobsque/data/network/dio_factory.dart';
import 'package:retrofit/http.dart';

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

part 'app_api.g.dart';
//flutter packages pub run build_runner build --delete-conflicting-outputs

@RestApi(baseUrl: Constants.baseURL)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  // Auth
  @GET("/auth/profile/")
  Future<ProfileViewResponse> profilePage();

  @POST("/auth/login")
  Future<AuthenticationResponse> login(
      @Field("email") String email, @Field("password") String password);

  @POST("/auth/otp/")
  Future<ForgetPasswordResponse> forgetPassword(
    @Field("email") String email,
  );

  @POST("/auth/register")
  Future<RegisterResponse> register(@Field("name") String name,
      @Field("email") String email, @Field("password") String password);

  @POST("/auth/user/update/")
  Future<ForgetPasswordResponse> updateNamePassword(
    @Field("name") String name,
    @Field("email") String email,
  );

  // Profile
  @PUT("/user/profile/update/")
  Future<UpdateProfileResponse> updateProfile(@AUTHORIZATION String token);

  @PUT("user/profile/edit/")
  Future<EditProfileResponse> editProfile(@AUTHORIZATION String token);

  @PUT("/user/profile/update/")
  Future<EditProfileLanguageResponse> editProfileLanguage(
      @AUTHORIZATION String token);

  @PUT("/user/profile/update/")
  Future<EditPortfolioResponse> editPortfolio(@AUTHORIZATION String token);


// favorites
  @PUT("/favorites/")
  Future<AddFavoriteResponse> addFavorite(
      @AUTHORIZATION String token,
      @Field("user_id") String userId,
      @Field("job_id") String jobId,
      );

  @GET("/favorites/")
  Future<ShowAllFavoriteResponse> showAllFavorite(
      @AUTHORIZATION String token,
      @Field("user_id") String userId,
      @Field("job_id") String jobId,
      );

  // education
  @GET("/education/")
  Future<ShowAllEducationResponse> showEducation(
      @AUTHORIZATION String token,
      );

  @POST("/education/")
  Future<AddEducationResponse> addEducation(
      @AUTHORIZATION String token,
      @Field("universty") String universty,
      @Field("title") String title,
      @Field("start") String start,
      @Field("end") String end,
      @Field("user_id") String userId,
      @Field("profile_id") String profileId,
      );
// experince
  @POST("/experince/")
  Future<AddExperienceResponse> addExperience(
      @AUTHORIZATION String token,
      @Field("user_id") String userId,
      @Field("postion") String postion,
      @Field("type_work") String typeWork,
      @Field("comp_name") String compName,
      @Field("location") String location,
      @Field("start") String start,
      @Field("end") String end,
      );
  @PUT("/education/")
  Future<EndExperienceResponse> endEducation(
      @AUTHORIZATION String token,
      @Field("end") String end,
      );

  // Apply Job
  @POST("/apply/")
  Future<ApplyResponse> apply(
      @AUTHORIZATION String token,
      @Field("name") String name,
      @Field("email") String end,
      @Field("mobile") String mobile,
      @Field("work_type") String workType,
      @Field("other_file") String otherFile,
      @Field("jobs_id") String jobsId,
      @Field("user_id") String userId,
      @Field("reviewed") String reviewed,
      @Field("updated_at") String updatedAt,
      @Field("created_at") String createdAt,
      @Field("id") String id,
      );

  @GET("/apply/")
  Future<ShowApplyResponse> showApply(
      @AUTHORIZATION String token,
      );

  // Company
  @GET("/showCompany/")
  Future<GetAllCompanyResponse> getAllCompany(
      @AUTHORIZATION String token,
      );

  // Chat
  @POST("/chat/user")
  Future<UserSendMessageResponse> userSendMessage(
      @AUTHORIZATION String token,
      @Field("massage") String massage,
      @Field("user_id") String userId,
      @Field("comp_id") String compId,
      );
  @POST("/chat/company")
  Future<CompanySendMessageResponse> companySendMessage(
      @AUTHORIZATION String token,
      @Field("massage") String massage,
      @Field("user_id") String userId,
      @Field("comp_id") String compId,
      );
  @GET("/chat/")
  Future<AllChatResponse> allChat(
      @AUTHORIZATION String token,
      @Field("user_id") String userId,
      @Field("comp_id") String compId,
      );

  // notification
  @GET("/notification/")
  Future<GetNotificationResponse> getNotification(
      @AUTHORIZATION String token,
      );



// Job
  @POST("/jobs/filter")
  Future<FilterJobResponse> filterJobR(
      @AUTHORIZATION String token,
      @Field("name") String name,
      @Field("location") String location,
      @Field("salary") String salary,
      );

  @POST("/jobs/search")
  Future<SearchJobResponse> searchJobR(
      @AUTHORIZATION String token,
      @Field("name") String name,
      );

  @GET("/jobs/")
  Future<GetAllJobResponse> getAllJob(
      @AUTHORIZATION String token,
      );
  @GET("/jobs/sugest/")
  Future<SuggestJobResponse> suggestJob(
      @AUTHORIZATION String token,
      );
  @GET("/jobs/")
  Future<JobIDResponse> jobID(
      @AUTHORIZATION String token,
      );
}


