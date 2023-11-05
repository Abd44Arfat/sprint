import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/core/resources/localization/app_localizations_setup.dart';
import 'package:actvex/core/resources/strings_manager.dart';
import 'package:actvex/presentation/onboarding/models/onboarding_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/common/components/widgets/progress_border.dart';
import '../../core/resources/routes/app_router.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      color: AppColors.background
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: TextButton(
                        onPressed: () {
                          context.router.replace(const LoginRoute());
                        },
                        child: MyText(
                          AppStrings.skip.tr(context),
                          textStyle: TextStyleEnum.latoRegualr,
                          fontSize: 16.sp,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: _controller,
                      itemCount: 3,
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      itemBuilder: (context, i) {
                        final model = onboardingModels[i];
                        return Stack(
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 120.h),
                                Image.asset(model.image,width: double.infinity,),
                                const Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.w),
                                  child: Column(
                                    children: [
                                      MyText(
                                        model.title,
                                        textStyle: TextStyleEnum.poppinsSemiBold,
                                        fontSize: 32.sp,
                                        textAlign: TextAlign.center,
                                        color: AppColors.white,
                                      ),
                                      MyText(
                                        model.description,
                                        textStyle: TextStyleEnum.poppinsRegualr,
                                        fontSize: 16.sp,
                                        color: AppColors.grey,
                                        textAlign: TextAlign.center,

                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: WormEffect(
                          dotWidth: 12.h,
                          dotHeight: 12.h,
                          dotColor: AppColors.primaryColor.withOpacity(0.25),
                          activeDotColor: AppColors.primaryColor,
                        ), // your preferred effect
                        onDotClicked: (index) {},
                      ),
                    ),
                    SizedBox(height: 44.h),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {
                          if (_currentIndex == onboardingModels.length - 1) {
                            context.router.replace(const LoginRoute());
                            return;
                          }
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 900),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ProgressBorder(
                            stepEnum: (() {
                              if (_controller.hasClients) {
                                if (_currentIndex == 0) {
                                  return StepEnum.step1;
                                }
                                if (_currentIndex == 1) {
                                  return StepEnum.step2;
                                }
                                if (_currentIndex == 2) {
                                  return StepEnum.step3;
                                }
                              }
                              return StepEnum.step1;
                            })(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
