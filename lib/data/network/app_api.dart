import 'package:dio/dio.dart';
import 'package:jobsque/app/constants.dart';
import 'package:retrofit/http.dart';

import '../responses/auth_response/responses.dart';
part 'app_api.g.dart';
//flutter packages pub run build_runner build --delete-conflicting-outputs

@RestApi(baseUrl: Constants.baseURL)
abstract class AppServiceClient{
  factory AppServiceClient(Dio dio,{String baseUrl}) = _AppServiceClient;

  @POST("/auth/login")
  Future<AuthenticationResponse> login(
      @Field("email")  String email,
      @Field("password") String password
      );

  @POST("/auth/otp/")
  Future<ForgetPasswordResponse> forgetPassword(
      @Field("email")  String email,
      );
  // @POST("/auth/register")
  // Future<AuthenticationResponse> register(
  //     @Field("name")  String name,
  //     @Field("email")  String email,
  //     @Field("password") String password
  //     );
}