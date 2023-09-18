import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:jobsque/app/app_pref.dart';
import 'package:jobsque/app/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// const String APPLICTION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFULT_LANGUAGE = "language";

class DioFactory {
  final AppPreferances _appPreferances;
  DioFactory(this._appPreferances);

  Future<Dio> getDio() async {
    String language = await _appPreferances.getAppLanguage();
    Dio dio = Dio();
    // Map<String, String> header = {
    //   // APPLICTION_JSON: APPLICTION_JSON,
    //   CONTENT_TYPE: APPLICTION_JSON,
    //   ACCEPT: APPLICTION_JSON,
    //   AUTHORIZATION: Constants.token,
    //   DEFULT_LANGUAGE: language // todo get language from app pref,
    // };
    dio.options = BaseOptions(
        baseUrl: Constants.baseURL,
        // headers: header,
        receiveTimeout: Constants.API_TIME_OUT,
        sendTimeout: Constants.API_TIME_OUT);

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }
    return dio;
  }
}
