import 'package:dio/dio.dart';
import 'package:actvex/app/constants.dart';
import 'package:retrofit/retrofit.dart';
// ignore: unused_import
import '../../../core/models/responses.dart';
// ignore: unused_import
import '../../requests/requests.dart';
part "app_api.g.dart";

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;
  @POST(Constants.signupPath)
  Future<HttpResponse<SignupSuccessResponse>> signup(
    @Body() SignupRequest signupRequest,
  );
  @POST(Constants.verifyEmailPath)
  Future<HttpResponse<OtpVerificationSuccessResponse>> verifyEmail(
    @Body() VerifyEmailRequest verifyEmailRequest,
  );
  @POST(Constants.resendEmailVerificationPath)
  Future<HttpResponse<ResendEmailVerificationSuccessResponse>>
      resendEmailVerification(
    @Body() ResendEmailVerificationRequest resendEmailVerificationRequest,
  );
}
