part of 'widgets.dart';

class SignupAlreadyHaveAccount extends StatelessWidget {
  const SignupAlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.replace(const LoginRoute());
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            AppStrings.alreadyHaveAccount.tr(context),
            textStyle: TextStyleEnum.poppinsLight,
            fontSize: 16.sp,
          ),
          MyText(
            " ${AppStrings.signIn.tr(context)}",
            textStyle: TextStyleEnum.poppinsBold,
            fontSize: 16.sp,
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
