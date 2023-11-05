part of 'widgets.dart';

class SignupTitle extends StatelessWidget {
  const SignupTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: double.infinity),
          SizedBox(
            child: MyText(
              AppStrings.startYour30Day.tr(context),
              textStyle: TextStyleEnum.poppinsBold,
              fontSize: 25.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              MyText(
                AppStrings.trial.tr(context),
                textStyle: TextStyleEnum.poppinsBold,
                fontSize: 25.sp,
                color: Colors.white,
              ),
              SizedBox(width: 5.w),
              SvgPicture.asset(
                ImageAssets.star,
              )
            ],
          ),
        ],
      ),
    );
  }
}
