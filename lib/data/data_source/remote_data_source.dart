import 'package:jobsque/data/network/app_api.dart';
import 'package:jobsque/data/network/requests.dart';

import '../responses/auth_response/responses.dart';

abstract class RemoteDataSource{
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
  Future<ForgetPasswordResponse> forgetPassword(ForgetPasswordRequest forgetPasswordRequest);
}

class RemoteDataSourceImp implements RemoteDataSource{
  AppServiceClient appServiceClient;
  RemoteDataSourceImp(this.appServiceClient);

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async{
    return await  appServiceClient.login(loginRequest.email,loginRequest.password);
  }

  @override
  Future<ForgetPasswordResponse> forgetPassword(ForgetPasswordRequest forgetPasswordRequest) async{
    return await  appServiceClient.forgetPassword(forgetPasswordRequest.email);
  }
}