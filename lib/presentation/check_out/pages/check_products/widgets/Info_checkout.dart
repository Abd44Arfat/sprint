import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoCheckout extends StatelessWidget {
  const InfoCheckout({super.key, required this.productPrice, required this.shipment, required this.tax, required this.total});
  final String productPrice;
  final String shipment;
  final String tax;
  final String total;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MyText(
              'Product',
              textStyle: TextStyleEnum.poppinsMedium,
              fontSize: 22.sp,
              color: AppColors.grey,
            ),
            Spacer(),
            MyText(
              productPrice,
              textStyle: TextStyleEnum.poppinsMedium,
              fontSize: 22.sp,
              color: AppColors.grey,
            ),
          ],
        ),
        SizedBox(height: 10.h,),
            Row(
          children: [
            MyText(
              'Shipment',
              textStyle: TextStyleEnum.poppinsMedium,
              fontSize: 22.sp,
              color: AppColors.grey,
            ),
            Spacer(),
            MyText(
              shipment,
              textStyle: TextStyleEnum.poppinsMedium,
              fontSize: 22.sp,
              color: AppColors.grey,
            ),
          ],
        ),
        SizedBox(height: 10.h,),

            Row(
          children: [
            MyText(
              'Tax 10%',
              textStyle: TextStyleEnum.poppinsMedium,
              fontSize: 22.sp,
              color: AppColors.grey,
            ),
            Spacer(),
            MyText(
              tax,
              textStyle: TextStyleEnum.poppinsMedium,
              fontSize: 22.sp,
              color: AppColors.grey,
            ),
          ],
        ), 
        SizedBox(height: 10.h,),
         Row(
          children: [
            MyText(
              'Total',
              textStyle: TextStyleEnum.poppinsSemiBold,
              fontSize: 25.sp,
              color: AppColors.primaryColor,
            ),
            Spacer(),
            MyText(
              total,
              textStyle: TextStyleEnum.poppinsSemiBold,
              fontSize: 25.sp,
              color: AppColors.primaryColor,
            ),
          ],
        ),
      ],
    );
  }
}
