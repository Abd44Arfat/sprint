part of 'widgets.dart';

class LoginForgotPasswordAndStaySignIn extends StatefulWidget {
  const LoginForgotPasswordAndStaySignIn({Key? key}) : super(key: key);

  @override
  State<LoginForgotPasswordAndStaySignIn> createState() =>
      _LoginForgotPasswordAndStaySignInState();
}

class _LoginForgotPasswordAndStaySignInState
    extends State<LoginForgotPasswordAndStaySignIn> {
  bool isStaySignIn = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox.square(
          dimension: 24.r,
          child: Transform.scale(
            scale: 1.2,
            child: Checkbox(
              side: const BorderSide(
                width: 1,
                color: AppColors.primaryColor,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.r),
              ),
              value: isStaySignIn,
              activeColor: AppColors.primaryColor,
              onChanged: (val) {
                setState(() {
                  isStaySignIn = val ?? false;
                });
              },
            ),
          ),
        ),
        SizedBox(width: 8.w),
        MyText(
          'Stay Sign In',
          textStyle: TextStyleEnum.poppinsRegualr,
          fontSize: 14.sp,
          color: AppColors.grey,
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            context.router.push(const ForgetPasswordRoute());
          },
          child: Align(
            alignment: Alignment.centerRight,
            child: MyText(
              AppStrings.forgetMyPassword.tr(context),
              textStyle: TextStyleEnum.poppinsBold,
              fontSize: 14.sp,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
