import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/localization/app_localizations_setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/colors_manager.dart';
import '../../../resources/strings_manager.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: AppColors.dividerColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: MyText(
              AppStrings.or.tr(context),
              textStyle: TextStyleEnum.poppinsRegualr,
              color: AppColors.grey,
              fontSize: 17.sp,
            ),
          ),
          const Expanded(
            child: Divider(
              color: AppColors.dividerColor,
            ),
          ),
        ],
      ),
    );
  }
}
