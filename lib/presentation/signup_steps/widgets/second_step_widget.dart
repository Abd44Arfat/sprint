part of 'widgets.dart';

class SecondStepWidget extends StatelessWidget {
  const SecondStepWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 44.r,
                backgroundColor: AppColors.grey2,
              ),
              Positioned(
                bottom: -5,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  ImageAssets.person,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        MyText(
          '${AppStrings.firstName}*',
          textStyle: TextStyleEnum.poppinsSemiBold,
          fontSize: 16.sp,
        ),
        SizedBox(height: 16.h),
        DropdownButtonFormField(
          items: const [],
          decoration: AppTheme.of(context).inputDecoration(
            context,
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 16.w,
            ),
          ),
          onChanged: (value) {},
        ),
        SizedBox(height: 16.h),
        MyText(
          '${AppStrings.lastName}*',
          textStyle: TextStyleEnum.poppinsSemiBold,
          fontSize: 16.sp,
        ),
        SizedBox(height: 16.h),
        DropdownButtonFormField(
          items: const [],
          decoration: AppTheme.of(context).inputDecoration(
            context,
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 16.w,
            ),
          ),
          onChanged: (value) {},
        ),
        SizedBox(height: 16.h),
        MyText(
          '${AppStrings.country}*',
          textStyle: TextStyleEnum.poppinsSemiBold,
          fontSize: 16.sp,
        ),
        SizedBox(height: 16.h),
        DropdownButtonFormField(
          items: const [],
          decoration: AppTheme.of(context).inputDecoration(
            context,
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 16.w,
            ),
          ),
          onChanged: (value) {},
        ),
        SizedBox(height: 16.h),
        MyText(
          '${AppStrings.city}*',
          textStyle: TextStyleEnum.poppinsSemiBold,
          fontSize: 16.sp,
        ),
        SizedBox(height: 16.h),
        DropdownButtonFormField(
          items: const [],
          decoration: AppTheme.of(context).inputDecoration(
            context,
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 16.w,
            ),
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
