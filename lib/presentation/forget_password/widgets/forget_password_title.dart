part of 'widgets.dart';

class ForgetPasswordTitle extends StatelessWidget {
  const ForgetPasswordTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: double.infinity),
          MyText(
            AppStrings.enterEmailWith.tr(context),
            textStyle: TextStyleEnum.poppinsBold,
            fontSize: 25.sp,
            color: Colors.white,
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              MyText(
                AppStrings.account.tr(context),
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
