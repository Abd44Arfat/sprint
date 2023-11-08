// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:actvex/presentation/root_app/pages/productDetails/product_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../presentation/create_new_password/create_new_password_screen.dart';
import '../../../presentation/forget_password/forget_password_screen.dart';
import '../../../presentation/login/login_screen.dart';
import '../../../presentation/onboarding/onboarding_screen.dart';
import '../../../presentation/root_app/main_screen.dart';
import '../../../presentation/signup/signup_screen.dart';
import '../../../presentation/signup_steps/signup_steps_screen.dart';
import '../../../presentation/splash/splash_screen.dart';
import '../../../presentation/verification_code/verification_code_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  final GlobalKey<NavigatorState> navigationKey;
  AppRouter(
    this.navigationKey,
  ) : super(navigatorKey: navigationKey);

  @override
  List<AutoRoute> get routes => [
        MaterialRoute(page: SplashRoute.page, initial: true),
        MaterialRoute(page: LoginRoute.page),
        MaterialRoute(page: SignupRoute.page),
        MaterialRoute(page: ForgetPasswordRoute.page),
        MaterialRoute(page: CreateNewPasswordRoute.page),

        MaterialRoute(page: BottomNavbarRoute.page),
        MaterialRoute(page: ProductDescriptionRoute.page),

        MaterialRoute(page: VerificationCodeRoute.page),
        MaterialRoute(page: ClientProfileRoute.page),

        MaterialRoute(page: OnBoardingRoute.page),
        MaterialRoute(page: BottomNavbarRoute.page),
        MaterialRoute(page: VerificationCodeRoute.page),
        MaterialRoute(page: VerificationCodeRoute.page),
        MaterialRoute(page: SignupStepsRoute.page),
      ];
}
