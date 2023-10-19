import 'package:dartz/dartz.dart';
import 'package:jobsque/data/mapper/apply_mapper.dart';
import 'package:jobsque/data/mapper/auth_mapper.dart';
import 'package:jobsque/data/mapper/chat_mapper.dart';
import 'package:jobsque/data/mapper/company_mapper.dart';
import 'package:jobsque/data/mapper/education_mapper.dart';
import 'package:jobsque/data/mapper/experiance_mapper.dart';
import 'package:jobsque/data/mapper/favorite_mapper.dart';
import 'package:jobsque/data/mapper/job_mapper.dart';
import 'package:jobsque/data/mapper/notification_mapper.dart';
import 'package:jobsque/data/mapper/profile_mapper.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/network_info.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/model/notification_model.dart';
import 'package:jobsque/domain/model/job_model.dart';
import 'package:jobsque/domain/model/favorite_model.dart';
import 'package:jobsque/domain/model/experiance_model.dart';
import 'package:jobsque/domain/model/education_model.dart';
import 'package:jobsque/domain/model/company_model.dart';
import 'package:jobsque/domain/model/chat_model.dart';
import 'package:jobsque/domain/model/apply_model.dart';
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
      RegisterRequest registeterRequest) async {
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
  Future<Either<Failure, AddEducation>> addEducation(
      AddEducationRequest addEducationRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.addEducation(addEducationRequest);
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
  Future<Either<Failure, AddExperience>> addExperience(
      AddExperienceRequest addExperienceRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.addExperience(addExperienceRequest);
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
  Future<Either<Failure, AddFavorite>> addFavorite(
      AddFavoriteRequest addFavoriteRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.addFavorite(addFavoriteRequest);
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
  Future<Either<Failure, AddPortfolio>> addPortofolio(
      AddPortofolioRequest addPortofolioRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.addPortofolio(addPortofolioRequest);
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
  Future<Either<Failure, AllChat>> allChat(
      AllChatRequest allChatRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.allChat(allChatRequest);
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
  Future<Either<Failure, Apply>> apply(ApplyRequest applyRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.apply(applyRequest);
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
  Future<Either<Failure, CompanySendMessage>> companySendMessage(
      CompanySendMessageRequest companySendMessageRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource
            .companySendMessage(companySendMessageRequest);
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
  Future<Either<Failure, DeletePortfolio>> deletePortofolios(
      DeletePortofoliosRequest deletePortofoliosRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.deletePortofolios(deletePortofoliosRequest);
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
  Future<Either<Failure, EditPortfolio>> editportofolio(
      EditPortfolioRequest editPortfolioRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.editportofolio(editPortfolioRequest);
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
  Future<Either<Failure, EndExperience>> endExperience(
      EndExperienceRequest endExperienceRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.endExperience(endExperienceRequest);
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
  Future<Either<Failure, FilterJob>> filterJob(
      FilterJobRequest filterJobRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.filterJob(filterJobRequest);
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
  Future<Either<Failure, GetAllCompany>> getAllCompany(
      GetAllCompanyRequest getAllCompanyRequest) async {
    if (await networkInfo.isConnected) {
      print(await networkInfo.isConnected);
      try {
        final response =
        await remoteDataSource.getAllCompany(getAllCompanyRequest);
        if (response.companyListResponce!=[]) {
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
  Future<Either<Failure, GetAllJob>> getAllJob(
      GetAllJobRequest getAllJobRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getAllJob(getAllJobRequest);
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
  Future<Either<Failure, GetPortfolios>> getAllPortofolios(
      GetAllPortofolioseRequest allPortofolioseRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.getAllPortofolios(allPortofolioseRequest);
        if (response.status == true) {
          // Success
          print("-----AAA${response.status == true}");
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
  Future<Either<Failure, GetNotification>> getNotification(
      GetNotificationRequest getNotificationRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.getNotification(getNotificationRequest);
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
  Future<Either<Failure, JobID>> jobID(JobIDRequest jobIDRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.jobID(jobIDRequest);
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
  Future<Either<Failure, ProfileDataView>> profileDataView(
      ProfileViewRequest profileViewRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.profileDataView(profileViewRequest);
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
  Future<Either<Failure, SearchJob>> searchJob(
      SearchJobRequest searchJobRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.searchJob(searchJobRequest);
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
  Future<Either<Failure, ShowAllFavorite>> showAllFavorite(
      ShowAllFavoriteRequest showAllFavoriteRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.showAllFavorite(showAllFavoriteRequest);
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
  Future<Either<Failure, ShowApply>> showApply(
      ShowApplyRequest showApplyRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.showApply(showApplyRequest);
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
  Future<Either<Failure, ShowAllEducation>> showEducation(
      ShowAllEducationRequest showEducationRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.showEducation(showEducationRequest);
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
  Future<Either<Failure, SuggestJob>> suggestJob(
      SuggestJobRequest suggestJobRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.suggestJob(suggestJobRequest);
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
  Future<Either<Failure, UpdateNamePassword>> updateNamePassword(
      UpdateNamePasswordRequest updateProfileRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.updateNamePassword(updateProfileRequest);
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
  Future<Either<Failure, UserSendMessage>> userSendMessage(
      UserSendMessageRequest userSendMessageRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
        await remoteDataSource.userSendMessage(userSendMessageRequest);
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
  Future<Either<Failure, DeleteFavorite>> deleteFavorite(DeleteFavoriteRequest deleteFavoriteRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await remoteDataSource.deleteFavorite(deleteFavoriteRequest);
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
