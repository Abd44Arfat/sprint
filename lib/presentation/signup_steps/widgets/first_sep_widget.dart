part of 'widgets.dart';

class FirstSepWidget extends StatelessWidget {
  const FirstSepWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          '${AppStrings.whatTimeZone}*',
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
          '${AppStrings.whatBestDescribesYou}*',
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
          '${AppStrings.whatBestDescribeYourBussiness}*',
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
        // DefaultTextFormField(
        //   inputType: TextInputType.emailAddress,
        //   title: AppStrings.enterPhoneNumber.tr(context),
        //   textInputAction: TextInputAction.next,
        //   padding: EdgeInsets.symmetric(
        //     vertical: 0,
        //     horizontal: 16.w,
        //   ),
        // ),
      ],
    );
  }
}
