import 'dart:io';

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
  Future<ProfileDataViewResponse> profilePage(
      @Header('Authorization') String token);

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
  Future<UpdateNamePasswordResponse> updateNamePassword(
    @Header('Authorization') String token,
    @Field("name") String name,
    @Field("email") String email,
  );

  // Profile
  @POST("/user/profile/portofolios")
  Future<AddPortfolioResponse> addPortofolio(
      @Part(name: "cv_file", ) File cv_file,
      @Part(name: "image",) File image,
      @Header('Authorization') String token);

  @PUT("/user/profile/edit/")
  Future<EditPortfolioResponse> editportofolio(
      @Query("bio")String? bio,
      @Query("address") String? address,
      @Query("mobile") String? mobile,
      @Query("language") String? language,
      @Query("interested_work") String? interested_work,
      @Query("offline_place") String? offline_place,
      @Query("remote_place") String? remote_place,
      @Query("experience") String? experience,
      @Query("personal_detailed") String? personal_detailed,
      @Query("education") String? education,
      @Header('Authorization') String? token);

  @GET("/user/profile/portofolios")
  Future<GetPortfoliosResponse> getAllPortofolios(
      @Header('Authorization') String token);

  @DELETE("/user/profile/portofolios")
  Future<DeletePortfolioResponse> deletePortofolios(

  @Header('Authorization') String token);

//   @PUT("/user/profile/update/")
//   Future<UpdateProfileResponse> updateProfile( @Header('Authorization') String token);

//   @PUT("user/profile/edit/")
//   Future<EditProfileResponse> editProfile( @Header('Authorization') String token);

//   @PUT("/user/profile/update/")
//   Future<EditProfileLanguageResponse> editProfileLanguage(
//        @Header('Authorization') String token);

//   @PUT("/user/profile/update/")
//   Future<EditPortfolioResponse> editPortfolio( @Header('Authorization') String token);

// favorites
  @PUT("/favorites/")
  Future<AddFavoriteResponse> addFavorite(
    @Header('Authorization') String token,
    @Field("user_id") String userId,
    @Field("job_id") String jobId,
  );

  @GET("/favorites/")
  Future<ShowAllFavoriteResponse> showAllFavorite(
    @Header('Authorization') String token,
    @Field("user_id") String userId,
    @Field("job_id") String jobId,
  );

  // education
  @GET("/education/")
  Future<ShowAllEducationResponse> showEducation(
    @Header('Authorization') String token,
  );

  @POST("/education/")
  Future<AddEducationResponse> addEducation(
    @Header('Authorization') String token,
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
    @Header('Authorization') String token,
    @Field("user_id") String userId,
    @Field("postion") String postion,
    @Field("type_work") String typeWork,
    @Field("comp_name") String compName,
    @Field("location") String location,
    @Field("start") String start,
    @Field("end") String end,
  );

  @PUT("/experince/")
  Future<EndExperienceResponse> endExperience(
    @Header('Authorization') String token,
    @Field("end") String end,
  );

  // Apply Job
  @POST("/apply/")
  Future<ApplyResponse> apply(
    @Header('Authorization') String token,
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
    @Header('Authorization') String token,
  );

  // Company
  @GET("/showCompany/")
  Future<GetAllCompanyResponse> getAllCompany(
    @Header('Authorization') token,
  );

  // Chat
  @POST("/chat/user")
  Future<UserSendMessageResponse> userSendMessage(
    @Header('Authorization') String token,
    @Field("massage") String massage,
    @Field("user_id") String userId,
    @Field("comp_id") String compId,
  );

  @POST("/chat/company")
  Future<CompanySendMessageResponse> companySendMessage(
    @Header('Authorization') String token,
    @Field("massage") String massage,
    @Field("user_id") String userId,
    @Field("comp_id") String compId,
  );

  @GET("/chat/")
  Future<AllChatResponse> allChat(
    @Header('Authorization') String token,
    @Field("user_id") String userId,
    @Field("comp_id") String compId,
  );

  // notification
  @GET("/notification/")
  Future<GetNotificationResponse> getNotification(
    @Header('Authorization') String token,
  );

// Job
  @POST("/jobs/filter")
  Future<FilterJobResponse> filterJob(
    @Header('Authorization') String token,
    @Field("name") String name,
    @Field("location") String location,
    @Field("salary") String salary,
  );

  @POST("/jobs/search")
  Future<SearchJobResponse> searchJob(
    @Header('Authorization') String token,
    @Field("name") String name,
  );

  @GET("/jobs/")
  Future<GetAllJobResponse> getAllJob(
    @Header('Authorization') String token,
  );

  @GET("/jobs/sugest/")
  Future<SuggestJobResponse> suggestJob(
    @Header('Authorization') String token,
  );

  @GET("/jobs/{jobIdl}")
  Future<JobIDResponse> jobID(
      @Header('Authorization') String token, @Path() String jobIdl);
}
