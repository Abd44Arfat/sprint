part of 'widgets.dart';

class DontHaveAccountSignup extends StatelessWidget {
  const DontHaveAccountSignup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.popAndPush(const SignupRoute());
      },
      child: RichText(
        text: TextSpan(
            style: getLightStyle(
              color: Colors.white60,
              fontSize: 16.sp,
            ),
            text: AppStrings.dontHaveAcount,
            children: [
              TextSpan(
                style: getBoldStyle(
                  color: AppColors.white,
                  fontSize: 16.sp,
                ),
                text: ' ${AppStrings.signUp}',
              )
            ]),
      ),
    );
  }
}
