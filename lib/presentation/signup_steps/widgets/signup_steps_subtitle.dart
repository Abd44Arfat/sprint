part of 'widgets.dart';

class SignupStepsSubTitle extends StatelessWidget {
  const SignupStepsSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return MyText(
      AppStrings.helpUsSetupYourSite,
      textStyle: TextStyleEnum.poppinsRegualr,
      fontSize: 14.sp,
      textAlign: TextAlign.center,
      color: Colors.white,
    );
  }
}
