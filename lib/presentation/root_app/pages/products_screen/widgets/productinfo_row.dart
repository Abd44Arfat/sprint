import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/components/widgets/my_text.dart';
import '../../../../../core/resources/colors_manager.dart';

class ProductInfoRow  extends StatelessWidget {
  const ProductInfoRow ({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Row(


        children: [
          MyText(
            title ,
            textStyle: TextStyleEnum.poppinsBold,
            fontSize: 18.sp,
            color: AppColors.hintColor,
          ),

        Spacer(),
          MyText(
            'See all',
            textStyle: TextStyleEnum.poppinsRegualr,
            fontSize: 16.sp,
            color: AppColors.primaryColor,
          ),

        ],


      ),
    );
  }
}
