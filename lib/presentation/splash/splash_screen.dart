import 'package:actvex/core/resources/assets_manager.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/core/resources/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_svg/svg.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  void goToNextScreen() {
    PageRouteInfo<void> route;
    Timer(
      const Duration(seconds: 1),
      () async {
        context.router.push(const OnBoardingRoute());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBgColor,
      body: Center(child: SvgPicture.asset(ImageAssets.splash)),
    );
  }
}
