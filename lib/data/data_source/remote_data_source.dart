import 'package:jobsque/data/network/app_api.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/presentation/profile/profile_view.dart';

import '../responses/auth_response/auth_responses.dart';
import '../responses/profile_response/profile_response.dart';


abstract class RemoteDataSource {
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
  Future<ForgetPasswordResponse> forgetPassword(
      ForgetPasswordRequest forgetPasswordRequest);
  Future<RegisterResponse> register(RegisterRequest registerRequest);
  Future<ProfileViewResponse> profilePage(
      ProfileViewRequest profileViewRequest);
  Future<UpdateProfileResponse> udpateProfile(
      UpdateProfileRequest updateProfileRequest);
  Future<EditProfileResponse> editProfile(
      EditProfileRequest editProfileRequest);
  Future<EditProfileLanguageResponse> editProfileLanguage(
      EditProfileLanguageRequest editProfileLanguageRequest);
  Future<EditPortfolioResponse> editPortfolio(
      EditPortfolioRequest editPortfolioRequest);
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
  Future<RegisterResponse> register(RegisteterRequest registeterRequest) async {
    return await appServiceClient.register(registeterRequest.email,
        registeterRequest.name, registeterRequest.password);
  }

  @override
  Future<ProfileViewResponse> profilePage(
      ProfileViewRequest profileViewRequest) async {
    return await appServiceClient.profilePage();
  }

  @override
  Future<EditPortfolioResponse> editPortfolio(
      EditPortfolioRequest editPortfolioRequest) async {
    return await appServiceClient.editPortfolio(editPortfolioRequest.token);
  }

  @override
  Future<EditProfileResponse> editProfile(
      EditProfileRequest editProfileRequest) async {
    return await appServiceClient.editProfile(editProfileRequest.token);
  }

  @override
  Future<EditProfileLanguageResponse> editProfileLanguage(
      EditProfileLanguageRequest editProfileLanguageRequest) async {
    return await appServiceClient
        .editProfileLanguage(editProfileLanguageRequest.token);
  }

  @override
  Future<UpdateProfileResponse> updateProfile(
      UpdateProfileRequest updateProfileRequest) async {
    return await appServiceClient.udpateProfile(updateProfileRequest.token);
  }
}
