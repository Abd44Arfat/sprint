import 'package:actvex/core/resources/assets_manager.dart';
import 'package:actvex/core/resources/strings_manager.dart';

class OnBoardingModel {
  final String title;
  final String description;
  final String image;

  const OnBoardingModel({
    required this.title,
    required this.description,
    required this.image,
  });
}



const List<OnBoardingModel> onboardingModels = [
  OnBoardingModel(
    title: AppStrings.onboardingTitle_1,
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
    image: ImageAssets.easyAnalytics,


  ),
  OnBoardingModel(
    title: AppStrings.onboardingTitle_2,
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
    image: ImageAssets.easyContact,

  ),
  OnBoardingModel(
    title: AppStrings.onboardingTitle_3,
    description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
    image: ImageAssets.easyPayment,
  ),
];
