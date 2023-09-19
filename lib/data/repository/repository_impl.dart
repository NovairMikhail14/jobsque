import 'package:dartz/dartz.dart';
import 'package:jobsque/data/mapper/mapper.dart';

import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/network_info.dart';

import 'package:jobsque/data/network/requests.dart';

import 'package:jobsque/domain/model/models.dart';

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
  forgetPasswordasd(){}
  @override
  Future<Either<Failure, ForgetPassword>> forgetPassword(ForgetPasswordRequest forgetPasswordRequest) async{
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.forgetPassword(forgetPasswordRequest);
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