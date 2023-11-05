part of 'widgets.dart';

class VerificationCodeResendCodeButton extends StatelessWidget {
  const VerificationCodeResendCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: MyText(
        AppStrings.resendCode,
        textStyle: TextStyleEnum.poppinsRegualr,
        fontSize: 14.sp,
        color: AppColors.primaryColor,
        textDecoration: TextDecoration.underline,
      ),
    );
  }
}
