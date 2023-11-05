import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/components/widgets/cached_image.dart';
import '../../../../../core/common/components/widgets/my_text.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../../../core/resources/routes/app_router.dart';

class ClientInfoRow extends StatelessWidget {
  const ClientInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
            width: MediaQuery.sizeOf(context).width / 1.54,
            child: Row(children: [
              CachedImage(
                url:
                    'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
                borderRadius: BorderRadius.circular(50.r),
                height: 50.r,
                width: 50.r,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 8.w),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        MyText(
                          'Hellow , ',
                          textStyle: TextStyleEnum.poppinsMedium,
                          fontSize: 20.sp,
                          color: AppColors.grey,
                        ),
                        MyText(
                          'Abdelrahman!',
                          textStyle: TextStyleEnum.poppinsSemiBold,
                          fontSize: 20.sp,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                    MyText(
                      'what are you looking',
                      textStyle: TextStyleEnum.poppinsRegualr,
                      fontSize: 18.sp,
                      color: AppColors.white,
                    ),
                  ])
            ]))
      ]),
    );
  }
}
