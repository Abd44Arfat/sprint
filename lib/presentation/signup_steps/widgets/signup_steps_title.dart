part of 'widgets.dart';

class SignupStepsTitle extends StatelessWidget {
  const SignupStepsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return MyText(
      AppStrings.personalizeYourSite,
      textStyle: TextStyleEnum.poppinsBold,
      fontSize: 25.sp,
      color: Colors.white,
    );
  }
}
