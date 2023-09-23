import 'package:dartz/dartz.dart';
import 'package:jobsque/data/mapper/auth_mapper.dart';
import 'package:jobsque/data/mapper/profile_mapper.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/network_info.dart';
import 'package:jobsque/data/network/requests.dart';
import '../../domain/model/auth_models.dart';
import '../../domain/model/profile_model.dart';
import '../../domain/repository/repository.dart';
import '../data_source/remote_data_source.dart';
import '../network/error_handler.dart';

class RepositoryImpl extends Repository {
  RemoteDataSource remoteDataSource;
  NetworkInfo networkInfo;

  RepositoryImpl(this.remoteDataSource, this.networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.login(loginRequest);
        if (response.status == ApiInternalStatus.success) {
          // Success
          return Right(response.toDomain());
        } else {
          return left(Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
      // safe to call api
    } else {
      // return internet connection failure
      return left(Failure(ResponseCode.NO_INTERNET_CONNECTON,
          ResponseMessage.NO_INTERNET_CONNECTON));
    }
  }

  forgetPasswordasd() {}
  @override
  Future<Either<Failure, ForgetPassword>> forgetPassword(
      ForgetPasswordRequest forgetPasswordRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await remoteDataSource.forgetPassword(forgetPasswordRequest);
        if (response.status == ApiInternalStatus.success) {
          // Success
          return Right(response.toDomain());
        } else {
          return left(Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
      // safe to call api
    } else {
      // return internet connection failure
      return left(Failure(ResponseCode.NO_INTERNET_CONNECTON,
          ResponseMessage.NO_INTERNET_CONNECTON));
    }
  }

  @override
  Future<Either<Failure, Register>> register(
      RegisteterRequest registeterRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.register(registeterRequest);
        if (response.status == ApiInternalStatus.success) {
          // Success
          return Right(response.toDomain());
        } else {
          return left(Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
      // safe to call api
    } else {
      // return internet connection failure
      return left(Failure(ResponseCode.NO_INTERNET_CONNECTON,
          ResponseMessage.NO_INTERNET_CONNECTON));
    }
  }

  @override
  Future<Either<Failure, ProfilePage>> profilePage(
      ProfileViewRequest profileViewRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.profilePage(profileViewRequest);
        if (response.status == ApiInternalStatus.success) {
          // Success
          return Right(response.toDomain());
        } else {
          return left(Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
      // safe to call api
    } else {
      // return internet connection failure
      return left(Failure(ResponseCode.NO_INTERNET_CONNECTON,
          ResponseMessage.NO_INTERNET_CONNECTON));
    }
  }

  @override
  Future<Either<Failure, EditPortfolio>> editPortfolio(
      EditPortfolioRequest editPortfolioRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await remoteDataSource.editPortfolio(editPortfolioRequest);
        if (response.status == ApiInternalStatus.success) {
          // Success
          return Right(response.toDomain());
        } else {
          return left(Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
      // safe to call api
    } else {
      // return internet connection failure
      return left(Failure(ResponseCode.NO_INTERNET_CONNECTON,
          ResponseMessage.NO_INTERNET_CONNECTON));
    }
  }

  @override
  Future<Either<Failure, EditProfile>> editProfile(
      EditProfileRequest editProfileRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.editProfile(editProfileRequest);
        if (response.status == ApiInternalStatus.success) {
          // Success
          return Right(response.toDomain());
        } else {
          return left(Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
      // safe to call api
    } else {
      // return internet connection failure
      return left(Failure(ResponseCode.NO_INTERNET_CONNECTON,
          ResponseMessage.NO_INTERNET_CONNECTON));
    }
  }

  @override
  Future<Either<Failure, EditProfileLanguage>> editProfileLanguage(
      EditProfileLanguageRequest editProfileLanguageRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource
            .editProfileLanguage(editProfileLanguageRequest);
        if (response.status == ApiInternalStatus.success) {
          // Success
          return Right(response.toDomain());
        } else {
          return left(Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
      // safe to call api
    } else {
      // return internet connection failure
      return left(Failure(ResponseCode.NO_INTERNET_CONNECTON,
          ResponseMessage.NO_INTERNET_CONNECTON));
    }
  }

  @override
  Future<Either<Failure, UpdateProfile>> updateProfile(
      UpdateProfileRequest updateProfileRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await remoteDataSource.udpateProfile(updateProfileRequest);
        if (response.status == ApiInternalStatus.success) {
          // Success
          return Right(response.toDomain());
        } else {
          return left(Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
      // safe to call api
    } else {
      // return internet connection failure
      return left(Failure(ResponseCode.NO_INTERNET_CONNECTON,
          ResponseMessage.NO_INTERNET_CONNECTON));
    }
  }
}
