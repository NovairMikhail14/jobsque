import 'package:dio/dio.dart';
import 'package:jobsque/app/constants.dart';
import 'package:retrofit/http.dart';

import '../responses/auth_response/responses.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseURL)
abstract class AppServiceClient{
  factory AppServiceClient(Dio dio,{String baseUrl}) = _AppServiceClient;

  @POST("/auth/login")
  Future<AuthenticationResponse> login(
      @Field("email")  String email,
      @Field("password") String password
      );
}