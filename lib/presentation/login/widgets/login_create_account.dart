part of 'widgets.dart';

class LoginCreateAccount extends StatelessWidget {
  const LoginCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: MyText(
        AppStrings.dontHaveAcount.tr(context),
        textStyle: TextStyleEnum.poppinsMedium,
        fontSize: 18.sp,
        color: AppColors.primaryColor,
      ),
    );
  }
}
