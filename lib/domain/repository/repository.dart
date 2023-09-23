import 'package:jobsque/data/network/requests.dart';
import 'package:dartz/dartz.dart';
import '../../data/network/failure.dart';
import '../model/auth_models.dart';
import '../model/profile_model.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
  Future<Either<Failure, ForgetPassword>> forgetPassword(
      ForgetPasswordRequest forgetPasswordRequest);
  Future<Either<Failure, Register>> register(
      RegisterRequest registeterRequest);
  Future<Either<Failure, ProfilePage>> profilePage(
      ProfileViewRequest profileViewRequest);
  Future<Either<Failure, UpdateProfile>> updateProfile(
      UpdateProfileRequest updateProfileRequest);
  Future<Either<Failure, EditProfile>> editProfile(
      EditProfileRequest editProfileRequest);
  Future<Either<Failure, EditProfileLanguage>> editProfileLanguage(
      EditProfileLanguageRequest editProfileLanguageRequest);
  Future<Either<Failure, EditPortfolio>> editPortfolio(
      EditPortfolioRequest editPortfolioRequest);
}
