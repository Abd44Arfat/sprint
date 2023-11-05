import 'dart:io';
import 'package:dio/dio.dart';
import 'package:actvex/core/user_secure_storage.dart';
import 'package:actvex/di.dart';

import '../../resources/strings_manager.dart';

class AppInterceptors extends Interceptor {
  final Dio client;
  // final AuthLocalDataSource authLocalDataSource;
  AppInterceptors({required this.client});

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers[HttpHeaders.acceptHeader] = ContentType.json;

    String? userToken = await getIt<UserSecureStorage>().getUserToken();

    if (userToken != null) {
      options.headers[HttpHeaders.authorizationHeader] =
          AppStrings.bearer + userToken;
    }
    super.onRequest(options, handler);
  }

  // @override
  // void onResponse(Response response, ResponseInterceptorHandler handler) {
  //   debugPrint(
  //       'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
  //   super.onResponse(response, handler);
  // }

  // @override
  // Future<void> onError(
  //     DioException err, ErrorInterceptorHandler handler) async {
  //   debugPrint(
  //       'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
  //   if (err.response?.statusCode == 401) {
  //     String? userToken = await getIt<UserSecureStorage>().getUserToken();
  //     String? userRefreshToken =
  //         await getIt<UserSecureStorage>().getUserRefreshToken();
  //     if (userToken != null && userRefreshToken != null) {
  //       if (await _refreshToken(
  //         userToken,
  //         userRefreshToken,
  //       )) {
  //         return handler.resolve(await _retry(err.requestOptions));
  //       }
  //     }
  //   }
  //   super.onError(err, handler);
  // }

  // Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
  //   final options = Options(
  //     method: requestOptions.method,
  //     headers: requestOptions.headers,
  //   );
  //   return client.request<dynamic>(requestOptions.path,
  //       data: requestOptions.data,
  //       queryParameters: requestOptions.queryParameters,
  //       options: options);
  // }

  // Future<bool> _refreshToken(String userToken, String userRefreshToken) async {
  //   final response = await client.post(EndPoints.refreshToken, data: {
  //     AppStrings.token: userToken,
  //     AppStrings.refreshToken: userRefreshToken,
  //   });
  //   final jsonResponse = Commons.decodeJson(response);
  //   BaseResponseModel baseResponse = BaseResponseModel.fromJson(jsonResponse);
  //   if (baseResponse.isSuccess!) {
  //     userToken = baseResponse.data["token"];
  //     userRefreshToken = baseResponse.data["refreshToken"];
  //     getIt<UserSecureStorage>().upsertUserInfo(username: username, email: email);
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
