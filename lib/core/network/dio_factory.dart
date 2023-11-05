import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../app/constants.dart';
import 'interceptors/app_interceptors.dart';

const String contentType = "content-type";
const String applicationJson = "application/json";
const String accept = "accept";
const String authorization = "authorization";
const String defaultLanguage = "language";

@module
abstract class InjectableDioModule {
  @lazySingleton
  Dio get dio => DioFactory().getDio();
}

class DioFactory {
  Dio getDio() {
    Dio dio = Dio();
    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
    };
    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      receiveTimeout: Constants.apiTimeOut,
      sendTimeout: Constants.apiTimeOut,
      connectTimeout: Constants.apiTimeOut,
      headers: headers,
      followRedirects: true,
    );
    if (kDebugMode) {
      dio.interceptors.addAll([
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
        AppInterceptors(
          client: dio,
        ),
      ]);
    }
    return dio;
  }
}
