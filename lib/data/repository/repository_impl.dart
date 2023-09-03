import 'package:dartz/dartz.dart';

import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/network_info.dart';

import 'package:jobsque/data/network/requests.dart';

import 'package:jobsque/domain/model/models.dart';

import '../../domain/repository/repository.dart';
import '../data_source/remote_data_source.dart';

class RepositoryImpl extends Repository{
  RemoteDataSource remoteDataSource;
  NetworkInfo networkInfo;

  RepositoryImpl(this.remoteDataSource, this.networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest) async{
    if(await networkInfo.isConnected){
      final response = await remoteDataSource.login(loginRequest);
      if(response.status == 0){

      }else{

      }
    }else{

    }
  }
  
}