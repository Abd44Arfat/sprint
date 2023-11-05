import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:actvex/app/constants.dart';
import 'package:actvex/di.dart';

import 'app_api.dart';

@module
abstract class InjectableAppServiceClientModule {
  @lazySingleton
  AppServiceClient get appServiceClient =>
      AppServiceClient(getIt<Dio>(), baseUrl: Constants.baseUrl);
}
